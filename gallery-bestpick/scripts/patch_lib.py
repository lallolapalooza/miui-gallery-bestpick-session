#!/usr/bin/env python3
"""Patch Xiaomi's libiqa.so so it can run under a generic aarch64 loader.

The library targets Android/bionic.  Three things must be adjusted to run it
under qemu-aarch64 + glibc:

  1. symbol version requirements (`LIBC`, ...) are removed
  2. the unconditional `std::cout << std::endl` debug write in
     ImageEsthectis::Forward is patched out (bionic's `__sF` layout is not
     compatible with glibc's FILE)

Only the exact library build is supported (SHA-1 checked).
"""

from __future__ import annotations

import hashlib
import struct
import sys
from pathlib import Path

EXPECTED_SHA1 = "32673d6bdd62e80b3e6b1cd16048eeea1931321e"

# ImageEsthectis::Forward: debug newline block
DEBUG_START = 0x69624
DEBUG_END = 0x69680


def sha1(data: bytes) -> str:
    return hashlib.sha1(data).hexdigest()


def section_headers(d: bytearray):
    shoff = struct.unpack_from("<Q", d, 0x28)[0]
    shentsize = struct.unpack_from("<H", d, 0x3A)[0]
    shnum = struct.unpack_from("<H", d, 0x3C)[0]
    shstrndx = struct.unpack_from("<H", d, 0x3E)[0]
    strtab = struct.unpack_from("<Q", d, shoff + shstrndx * shentsize + 0x18)[0]

    def name_at(off: int) -> str:
        end = d.index(b"\0", off)
        return d[off:end].decode()

    for i in range(shnum):
        o = shoff + i * shentsize
        yield name_at(strtab + struct.unpack_from("<I", d, o)[0]), o


def patch(src: Path, dst: Path) -> None:
    data = bytearray(src.read_bytes())
    if sha1(data) != EXPECTED_SHA1:
        raise SystemExit(
            f"{src}: unsupported libiqa.so build (sha1 {sha1(data)}); expected {EXPECTED_SHA1}"
        )

    # 1/2: drop versioning and iostream init
    for name, off in section_headers(data):
        if name == ".gnu.version":
            vaddr = struct.unpack_from("<Q", data, off + 0x18)[0]
            size = struct.unpack_from("<Q", data, off + 0x20)[0]
            for j in range(0, size, 2):
                struct.pack_into("<H", data, vaddr + j, 1)
        elif name == ".dynamic":
            off_d = struct.unpack_from("<Q", data, off + 0x18)[0]
            size_d = struct.unpack_from("<Q", data, off + 0x20)[0]
            for j in range(0, size_d, 16):
                tag = struct.unpack_from("<Q", data, off_d + j)[0]
                if tag in (0x6FFFFFFE, 0x6FFFFFFF, 0x6FFFFFF0):  # VERNEED/NUM/VERSYM
                    struct.pack_into("<QQ", data, off_d + j, 0, 0)

    # 3: skip the iostream debug write
    branch = 0x14000000 | ((DEBUG_END - DEBUG_START) // 4)
    struct.pack_into("<I", data, DEBUG_START, branch)
    for a in range(DEBUG_START + 4, DEBUG_END, 4):
        struct.pack_into("<I", data, a, 0xD503201F)  # nop

    dst.write_bytes(data)
    print(f"patched {src} -> {dst}")


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print(f"usage: {sys.argv[0]} libiqa.so libiqa.patched.so")
        raise SystemExit(2)
    patch(Path(sys.argv[1]), Path(sys.argv[2]))

#!/usr/bin/env python3
"""Extract the ncnn model blobs embedded in Xiaomi's downloaded libraries.

Usage:
    extract_from_libs.py /path/to/libiqa.so /path/to/libJNI_SimilarImgCluster.so

The offsets are tied to the exact library versions documented in README.md and
guarded by SHA-1 checks.
"""

from __future__ import annotations

import hashlib
import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
MODELS = ROOT / "models"

IQA_SHA1 = "32673d6bdd62e80b3e6b1cd16048eeea1931321e"
CLUSTER_SHA1 = "9649e1fdef46ff1fe47475107e2cde6494395257"

IQA_BLOBS = [
    ("blurnet_param.bin", 0x442850, 736),
    ("blurnet_model.bin", 0x442B30, 0x94828),
    ("blur_param.bin", 0x4D7370, 11792),
    ("blur_model.bin", 0x4DA180, 0x8E738),
    ("nima_param.bin", 0x5688C4, 11816),
    ("nima_model.bin", 0x56B6EC, 0x167654),
    ("holistic_param.bin", 0x6D2D58, 5472),
    ("holistic_model.bin", 0x6D42B8, 0x405B54),
]

CLUSTER_BLOBS = [
    ("cluster_param.bin", 0x192090, 11524),
    ("cluster_model.bin", 0x194D94, 0x27BDE0),
]


def sha1(path: Path) -> str:
    h = hashlib.sha1()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def extract(path: Path, blobs, expect_sha1: str) -> None:
    digest = sha1(path)
    if digest != expect_sha1:
        raise SystemExit(
            f"{path}: sha1 {digest} != expected {expect_sha1} (unsupported version)"
        )
    data = path.read_bytes()
    MODELS.mkdir(parents=True, exist_ok=True)
    for name, off, size in blobs:
        (MODELS / name).write_bytes(data[off:off + size])
        magic = struct.unpack_from("<I", data, off)[0]
        print(f"{name:24s} {size:>9d} bytes  magic=0x{magic:08x}")


def main(argv: list[str]) -> int:
    if len(argv) != 3:
        print(__doc__)
        return 2
    extract(Path(argv[1]), IQA_BLOBS, IQA_SHA1)
    extract(Path(argv[2]), CLUSTER_BLOBS, CLUSTER_SHA1)
    print(f"models written to {MODELS}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))

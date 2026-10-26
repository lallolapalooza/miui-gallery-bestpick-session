"""Exact scoring backend using Xiaomi's original ARM64 ``libiqa.so``.

The native library uses fp16 arithmetic on arm64, so stock x86 ncnn produces
slightly different scores.  When an ``aarch64`` user-mode emulator is available
we run the original binary and reproduce the gallery's numbers exactly.

The server is built once by ``scripts/setup_native.sh``; it keeps all four
networks loaded and accepts a stream of raw BGR frames.
"""

from __future__ import annotations

import os
import shutil
import subprocess
import threading
from pathlib import Path

import numpy as np

NATIVE_DIR = Path(__file__).resolve().parent.parent / "native"
QEMU_SYSROOT = os.environ.get("BESTPICK_QEMU_SYSROOT", "/usr/aarch64-linux-gnu")


def available() -> bool:
    return (
        shutil.which("qemu-aarch64") is not None
        and (NATIVE_DIR / "score_server").exists()
        and (NATIVE_DIR / "libiqa.so").exists()
        and Path(QEMU_SYSROOT).is_dir()
    )


class NativeScorer:
    """Persistent exact scorer.  Not thread-safe; guarded by a lock."""

    def __init__(self) -> None:
        if not available():
            raise RuntimeError("native backend unavailable (qemu-aarch64 / score_server)")
        env = dict(os.environ)
        env["LD_LIBRARY_PATH"] = str(NATIVE_DIR) + (
            ":" + env["LD_LIBRARY_PATH"] if env.get("LD_LIBRARY_PATH") else ""
        )
        self._proc = subprocess.Popen(
            ["qemu-aarch64", "-L", QEMU_SYSROOT, str(NATIVE_DIR / "score_server")],
            cwd=str(NATIVE_DIR),
            env=env,
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.DEVNULL,
            bufsize=0,
        )
        self._lock = threading.Lock()

    def score_bgr(self, bgr: np.ndarray) -> np.ndarray:
        """Returns [expo, satu, bala, haze, nois, blur, comp, nima, blurType]."""
        bgr = np.ascontiguousarray(bgr, dtype=np.uint8)
        h, w = bgr.shape[:2]
        if bgr.ndim != 3 or bgr.shape[2] != 3:
            raise ValueError("expected HxWx3 BGR image")
        header = np.array([w, h, 3], dtype="<i4").tobytes()
        with self._lock:
            self._proc.stdin.write(header)
            self._proc.stdin.write(bgr.tobytes())
            self._proc.stdin.flush()
            line = self._proc.stdout.readline()
        if not line:
            raise RuntimeError("native scorer died")
        text = line.decode().strip()
        if text == "ERR":
            raise RuntimeError("native scorer rejected image")
        vals = [float(x) for x in text.split()]
        if len(vals) != 9:
            raise RuntimeError(f"unexpected native output: {text!r}")
        return np.array(vals, dtype=np.float64)

    def close(self) -> None:
        try:
            self._proc.stdin.close()
        except Exception:
            pass
        try:
            self._proc.terminate()
        except Exception:
            pass

    def __enter__(self):
        return self

    def __exit__(self, *exc):
        self.close()

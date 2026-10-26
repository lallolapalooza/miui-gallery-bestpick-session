"""Command line interface."""

from __future__ import annotations

import argparse
import json
import sys

from .clustering import SAME_DISTANCE, SIMILAR_DISTANCE
from .pipeline import BestPicker


def _fmt_row(name: str, q, star: bool, group: int) -> str:
    mark = "★" if star else " "
    return (
        f"{mark} {name[-48:]:<48} "
        f"expo {q.expo:6.2f}  satu {q.satu:6.2f}  bala {q.bala:6.2f}  "
        f"haze {q.haze:6.2f}  nois {q.nois:6.2f}  blur {q.blur:6.2f}  "
        f"comp {q.comp:6.2f}  nima {q.nima:6.2f}  type {q.blur_type}  "
        f"group {group}  {'POOR' if q.is_poor else ''}"
    )


def main(argv: list[str] | None = None) -> int:
    ap = argparse.ArgumentParser(
        prog="bestpick",
        description="MIUI Gallery automatic best pick (自动优选), reimplemented.",
    )
    ap.add_argument("images", nargs="+", help="image files")
    ap.add_argument(
        "--backend",
        choices=["auto", "ncnn", "native"],
        default="auto",
        help="auto = exact Xiaomi lib via qemu when available, else ncnn",
    )
    ap.add_argument(
        "--threshold",
        type=float,
        default=SIMILAR_DISTANCE,
        help=f"similar-group distance (default {SIMILAR_DISTANCE}, same={SAME_DISTANCE})",
    )
    ap.add_argument("--json", action="store_true", help="machine readable output")
    args = ap.parse_args(argv)

    backend = args.backend
    try:
        picker = BestPicker(native=(backend != "ncnn"))
    except Exception as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 2
    if backend == "ncnn" and picker._native is not None:
        picker.close()
        picker = BestPicker(native=False)

    try:
        result = picker.analyze(args.images, threshold=args.threshold)
    finally:
        picker.close()

    if args.json:
        payload = {
            "threshold": args.threshold,
            "groups": [
                {
                    "group": gi,
                    "members": [
                        {
                            "path": str(p.path),
                            "is_best": p.is_best,
                            "is_poor": p.quality.is_poor,
                            "quality": p.quality.as_dict() if p.quality else None,
                        }
                        for idx in members
                        for p in [result.photos[idx]]
                    ],
                }
                for gi, members in enumerate(result.groups)
            ],
        }
        json.dump(payload, sys.stdout, indent=2)
        print()
        return 0

    for p in result.photos:
        print(_fmt_row(str(p.path), p.quality, p.is_best, p.group))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

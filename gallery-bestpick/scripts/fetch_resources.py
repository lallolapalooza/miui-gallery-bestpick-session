#!/usr/bin/env python3
"""Download the two Xiaomi resource libraries and extract their models.

    fetch_resources.py [output-dir]

Uses the same public resource API as MIUI Gallery:
  info:     https://i.mi.com/gallery/public/resource/info/v2
  download: https://i.mi.com/gallery/public/resource/download?id=...
"""

from __future__ import annotations

import json
import sys
import urllib.parse
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
GROUPS = {
    1002007: ("libiqa.so", "32673d6bdd62e80b3e6b1cd16048eeea1931321e"),
    1004007: ("libJNI_SimilarImgCluster.so", "9649e1fdef46ff1fe47475107e2cde6494395257"),
}
INFO = "https://i.mi.com/gallery/public/resource/info/v2"
DOWNLOAD = "https://i.mi.com/gallery/public/resource/download?id="


def fetch(group: int) -> list[dict]:
    q = urllib.parse.urlencode(
        {"nameSpace": "miui_assistant", "group": str(group), "key": "arm64-v8a"}
    )
    with urllib.request.urlopen(f"{INFO}?{q}", timeout=30) as r:
        data = json.load(r)
    if data.get("result") != "ok":
        raise SystemExit(f"info request failed: {data}")
    return data["data"]["galleryResourceInfoList"]


def download(url: str, dest: Path) -> None:
    with urllib.request.urlopen(url, timeout=120) as r, open(dest, "wb") as f:
        while chunk := r.read(1 << 20):
            f.write(chunk)


def main(argv: list[str]) -> int:
    out = Path(argv[1]) if len(argv) > 1 else ROOT / "libs"
    out.mkdir(parents=True, exist_ok=True)
    fetched: dict[str, Path] = {}

    for group, (wanted_name, wanted_sha) in GROUPS.items():
        items = fetch(group)
        match = next(
            (it for it in items if it["text"] == wanted_name and it["sha1Base16"] == wanted_sha),
            None,
        )
        if match is None:
            raise SystemExit(f"{wanted_name} {wanted_sha} not offered for group {group}")
        dest = out / wanted_name
        with urllib.request.urlopen(DOWNLOAD + str(match["id"]), timeout=30) as r:
            info = json.load(r)
        download(info["data"]["url"], dest)
        fetched[wanted_name] = dest
        print(f"{wanted_name}: {dest} ({dest.stat().st_size} bytes)")

    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))

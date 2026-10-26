# MIUI Gallery automatic best pick — session bundle

One folder containing the working reimplementation of Xiaomi Gallery's
automatic best-pick feature (the “best photo” star / 自动优选), the
reverse-engineering workspace, and snapshots of this omp session.

```
miui-gallery-bestpick-session/
├── README.md                       this file
├── gallery-bestpick/               deliverable (79 M)
│   ├── bestpick/                   Python package
│   ├── models/                     extracted ncnn model blobs
│   ├── native/                     original libiqa.so + exact ARM scorer
│   ├── scripts/                    model extraction / native build
│   ├── tests/                      13 unit tests
│   └── README.md                   algorithm, formulas, accuracy
├── gallery-re/                     reverse-engineering workspace (1.1 G)
│   ├── app.apk                     original MIUIGalleryGlobal.apk
│   ├── libs/                       downloaded Xiaomi libraries
│   ├── jadx/                       decompiled Java
│   ├── singles/                    per-class decompilations
│   ├── ghidra_*/                   Ghidra projects, scripts, decompiled functions
│   ├── re_notes/                   objdump listings used for recovery
│   ├── armtest/                    harness for the original ARM library
│   ├── ncnn-src/                   ncnn source for the portable backend
│   └── session_artifacts/          files moved out of /tmp
├── omp-session/                    session copies (live files stay in ~/.omp)
│   ├── session-archive.zip         full omp-archive export (994 entries, 15 logs)
│   ├── live-transcript-snapshot.jsonl
│   ├── history-snapshot.db
│   └── agent-snapshot.db
└── tools/                          jadx + omp-archive plugin source
```

## Quick start

```bash
cd gallery-bestpick

# fast portable backend (stock ncnn)
PYTHONPATH=. .venv/bin/python -m bestpick.cli --backend ncnn photos/*.jpg

# exact backend (Xiaomi's original arm64 libiqa.so under qemu, ~17 s/image)
PYTHONPATH=. .venv/bin/python -m bestpick.cli --backend auto --json photos/*.jpg

# tests
PYTHONPATH=. .venv/bin/python -m unittest discover -s tests
```

`--backend auto` selects the exact backend when `qemu-aarch64` and
`native/score_server` are available, otherwise falls back to ncnn.

## What was reimplemented

1. **Similar-photo grouping** — MobileNetV2 (1024-d, L2-normalised), Euclidean
   distance, 10-second time gate, bottom-up **average-linkage** clustering at
   `0.4` (“similar”, used for best-pick) and `0.25` (“same”).
2. **Image quality** — four embedded ncnn models producing exposure,
   saturation, balance, haze, noise, blur, composition, NIMA and blur type,
   including CBlur's 3×3 48-px crop pass.
3. **Selection** — exact “poor image” rule
   (`(blur<82 && type==0) || nois<79.4 || expo<62.3`), rank by NIMA, ties keep
   the earlier photo, star only for groups larger than one.

Full formulas and model provenance: [`gallery-bestpick/README.md`](gallery-bestpick/README.md).

## Verification

Original library output for a test frame (exact backend):

```
87.2060242 87.1461868 89.2769394 89.2346039 93.1792603 94.4255905 76.565918 51.9361305 2
```

Portable ncnn differs slightly because the ARM build uses fp16 arithmetic
(final logits ≈ −4085); the ranking score is stable:

| metric | native | ncnn |
|---|---|---|
| nima | 51.9294 | 52.0126 |
| expo | 86.9999 | 88.0166 |
| blur | 96.3589 | 94.4623 |
| blur type | 2 | 2 |

Burst test: the blurred frame is marked `POOR` and the brightest frame gets the
star under both backends.

## Provenance

| item | value |
|---|---|
| app | `com.miui.gallery` / `MIUIGalleryGlobal.apk` |
| quality library | resource group `1002007` (`libiqa.so`, `libimage_iqa.so`) |
| grouping library | resource group `1004007` (`libJNI_SimilarImgCluster.so`) |
| API | `https://i.mi.com/gallery/public/resource/{info,download}/v2` |
| `libiqa.so` SHA-1 | `32673d6bdd62e80b3e6b1cd16048eeea1931321e` |
| cluster lib SHA-1 | `9649e1fdef46ff1fe47475107e2cde6494395257` |

Rebuild assets with:

```bash
cd gallery-bestpick
python3 scripts/extract_from_libs.py ../gallery-re/libs/libiqa.so \
    ../gallery-re/libs/libJNI_SimilarImgCluster.so
bash scripts/setup_native.sh
```

## Session copies

`omp-session/` contains copies only. omp's live transcript and databases remain
under `~/.omp/agent/` so the harness can keep recording.

`session-archive.zip` is the full export produced by the
[`omp-archive`](https://github.com/alosslessdev/omp-archive-main) plugin
v0.1.0 (installed at `~/.omp/plugins/node_modules/omp-archive`, source under
`tools/omp-archive-main`): 994 main entries, 15 untruncated tool logs,
`viewer.html`, `agents.json` and `jobs.json`. The same zip is written to the
working directory as
`/home/asdf/Downloads/omp-archive-miui-gallery-bestpick-session.zip`.

Nothing from this session remains in `/tmp`. Unrelated `/tmp` files belonging to
other sessions were left untouched.

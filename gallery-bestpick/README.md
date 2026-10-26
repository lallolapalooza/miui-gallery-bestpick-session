# MIUI Gallery “automatic best pick” — full reimplementation

This project reimplements the *automatic best pick* feature of Xiaomi's MIUI
Gallery (`com.miui.gallery`) — the star that marks the best photo in a group of
similar shots (自动优选 / “best photo”).  It reproduces the complete pipeline:

1. **similar-photo grouping** — MobileNetV2 embeddings + bottom-up average-linkage clustering
2. **image quality assessment** — four ncnn networks producing nine metrics
3. **best-photo selection** — “poor image” filtering and NIMA ranking

The original DNN models are reused unchanged; they are extracted directly from
the libraries Xiaomi ships to the device.

---

## Provenance

| item | value |
|---|---|
| app under analysis | `MIUIGalleryGlobal.apk` (`com.miui.gallery`) from the Poco F4 system image |
| packages | `com.miui.gallery.assistant.{algorithm,manager,library,jni,cache}` |
| quality library | resource group **1002007** (`libiqa.so`, `libimage_iqa.so`) |
| grouping library | resource group **1004007** (`libJNI_SimilarImgCluster.so`, `libncnn.so`) |
| resource API | `https://i.mi.com/gallery/public/resource/info/v2?nameSpace=miui_assistant&group=<id>&key=arm64-v8a` |
| download API | `https://i.mi.com/gallery/public/resource/download?id=<resourceId>` |

Library SHA-1s:

```
libiqa.so                   32673d6bdd62e80b3e6b1cd16048eeea1931321e  (16 826 952 B)
libimage_iqa.so             2e89f1f395ad31ad685dc21c721bac66e872eeeb  (80 768 B)
libJNI_SimilarImgCluster.so 9649e1fdef46ff1fe47475107e2cde6494395257  (6 184 136 B)
```

Both libraries are **not stripped** and contain DWARF line info, which is how
the algorithms below were recovered (objdump + Ghidra + a qemu-based harness
that calls the original `libiqa.so`).

---

## 1. Quality metrics (`libiqa.so`)

Four embedded ncnn models, loaded from `.rodata`:

| model | param | weights | role |
|---|---|---|---|
| `holistic_net` | 5 472 B (`0x6d2d58`) | 4 217 684 B (`0x6d42b8`) | 7 “badness” heads |
| `nima` | 11 816 B (`0x5688c4`) | 1 472 084 B (`0x56b6ec`) | aesthetic score |
| `blur` | 11 792 B (`0x4d7370`) | 583 480 B (`0x4da180`) | blur-type classifier |
| `blurnet` | 736 B (`0x442850`) | 608 296 B (`0x442b30`) | CBlur regressor |

### Pre-processing

The app converts the decoded photo to BGR (`ImageUtil.getPixelsBGR`) and passes
it to `nativeGetImageIqa` (width/height must exceed 224).

* **holistic**: resize bilinear to **224×224**, subtract mean
  `(103.94, 116.78, 123.68)` and scale by `0.017`.
* **nima / blur**: resize bilinear to **224×224**, mean `0`, scale `1/255`.
* **CBlur crops**: mean `127.5`, scale `1/127.5`.

### Head outputs

`holistic_net` is evaluated at seven output blobs, in this order:

| # | blob | metric | class weighting |
|---|---|---|---|
| 0 | 54 | exposure | `i` |
| 1 | 76 | saturation | `i − 10` (21 classes, signed) |
| 2 | 65 | balance | `i` |
| 3 | 98 | haze | `i` |
| 4 | 87 | noise | `i` |
| 5 | 109 | blur | `i` |
| 6 | 120 | composition | `i` |

For each head the raw value is `0.1 · Σ pᵢ·weightᵢ` (softmax probabilities).

`nima` extracts blob 277 and computes `Σ pᵢ·(i+1)`; the interface multiplies it
by 10.

`blur` extracts blob 276 and takes the **argmax** (no softmax needed); this is
`iqaBlurType` (0 = blurred).

`CBlur` (`MiIQA::CBlur`) resizes the image so its shorter side is at most 300 px,
takes a **3×3 grid of 48×48 crops** (step `(dim−48)/2`), runs `blurnet` on each
(blob 14, `0.25·Σ pᵢ·i`) and averages the nine scores.

### Post-processing (`ImageQualityInterface::Predict`)

```text
expo  = 100 · (1 − raw[0])
satu  = 100 − |100 · raw[1]|
bala  = 100 · (1 − raw[2])
haze  = 100 · (1 − raw[3])
nois  = 100 · (1 − raw[4])
blur  = 100 − 100 · (0.5·raw[5] + 0.5·CBlur)
comp  = 100 · (1 − raw[6])
nima  = 10 · raw_nima
```

### “Poor image” rule (Java)

Copied verbatim from `MediaFeature.isPoorMedia()` /
`TinyMediaFeature`:

```java
(blur < 82.0 && blurType == 0) || nois < 79.4 || expo < 62.3
```

---

## 2. Similar-photo grouping (`libJNI_SimilarImgCluster.so`)

`MiCluster::ImageCluster` embeds a MobileNetV2 model
(`mobilenet_v2_param_bin` @ `0x192090`, `mobilenet_v2_bin` @ `0x194d94`).

* input: 224×224 RGB (the code converts BGR→RGB), mean
  `(123.675, 116.28, 103.53)`, per-channel norm
  `(0.0171247, 0.0175070, 0.0174292)`
* output: blob **242** (global-average-pooled, 1024-d), then **L2 normalised**
* distance: **Euclidean** between L2-normalised descriptors
  (`= √(2−2cos)`)
* pairs with `|timestamp difference| ≥ 10 000 ms` get distance `1e10`
  (the Java best-pick path does not pass timestamps, so this gate is inert)
* **bottom-up agglomerative clustering with average linkage**, stopping when the
  next merge distance exceeds the threshold:
  * `0.4` → **similar** groups — the ones used for `clusterGroupId`
  * `0.25` → **same** groups — returned separately, unused by best-pick

The Java side (`ClusterGroupRequest.onSaveResult`) assigns one
`clusterGroupId` per similar group and refreshes
`MediaFeatureCacheManager.mGroupBestMap`.

> Note: the native heap-based implementation is equivalent to
> `dlib::bottom_up_cluster` with average linkage; this project implements the
> same agglomeration directly (vectorised, O(n³) in the worst case but with a
> fast `argmin` path for the batch sizes used here).

---

## 3. Best-photo selection (Java)

`MediaFeatureCacheManager.GroupBestImage`:

* consider only images in the same `clusterGroupId`
* skip images whose `isPoorMedia()` is true
* ranking score is **`iqaNima`**
* `tryReplace` keeps the first image on a tie
* the star is shown when the group has more than one image

---

## Usage

```bash
python3 -m venv .venv && .venv/bin/pip install -r requirements.txt

# fast portable backend (stock ncnn)
PYTHONPATH=. .venv/bin/python -m bestpick.cli --backend ncnn photos/*.jpg

# exact backend (runs Xiaomi's original libiqa.so through qemu-aarch64)
PYTHONPATH=. .venv/bin/python -m bestpick.cli --backend auto photos/*.jpg

# machine-readable
PYTHONPATH=. .venv/bin/python -m bestpick.cli --json photos/*.jpg
```

`--backend auto` uses the exact ARM library when `qemu-aarch64` and the patched
`native/score_server` are available, otherwise falls back to ncnn.

Sample output (`★` = gallery would show the best-pick star; the fixture images
are kept in `../gallery-re/session_artifacts/test_images/`):

```text
  burst_base.jpg    expo 88.07 ... nima 51.87  type 2  group 0
  burst_blur.jpg    expo 94.58 ... nima 40.12  type 0  group 1  POOR
★ burst_bright.jpg  expo 86.60 ... nima 52.21  type 2  group 1
  burst_crop.jpg    expo 87.79 ... nima 51.28  type 2  group 1
```

```python
from bestpick import BestPicker

with BestPicker(native="auto") as picker:
    result = picker.analyze(["a.jpg", "b.jpg", "c.jpg"])
    for photo in result.photos:
        print(photo.path, photo.quality.nima, photo.is_best, photo.group)
```

---

## Backends and accuracy

| backend | how | speed | bit-exact |
|---|---|---|---|
| `ncnn` | stock ncnn, fp32 | milliseconds/image | no |
| `native` | original arm64 `libiqa.so` under qemu | ~17 s/image | yes (given identical pixels) |

Comparison on the same input (one 1536×1024 photo, gallery downscale rule):

| metric | native (original lib) | portable ncnn | Δ |
|---|---|---|---|
| expo | 86.9999 | 88.0166 | +1.02 |
| satu | 90.1777 | 93.1651 | +2.99 |
| bala | 90.0988 | 90.7031 | +0.60 |
| haze | 92.2173 | 95.1715 | +2.95 |
| nois | 94.3142 | 92.7459 | −1.57 |
| blur | 96.3589 | 94.4623 | −1.90 |
| comp | 76.4215 | 76.5961 | +0.17 |
| **nima** | **51.9294** | **52.0126** | **+0.08** |
| blurType | 2 | 2 | 0 |

Why the difference: the ARM library runs the holistic/MobileNet models with
**fp16 arithmetic**; the final logits are around −4085, so fp16 rounding creates
ties that change the softmax distribution.  Ranking (`nima`) is stable to ~0.1,
which is what best-pick uses.  Use the native backend when exact scores matter.

Input decoding also matters: Android's `inSampleSize` decoder and PIL's box
reduction can differ by 1 LSB, which is enough to move the fp16-quantised
holistic heads by a few points.  Bit-exactness therefore requires the same
pixel buffer, which the native backend guarantees once given one.

---

## Reproducing the assets

```bash
# 1. extract the model blobs from the two downloaded libraries
python3 scripts/extract_from_libs.py libiqa.so libJNI_SimilarImgCluster.so

# 2. build the exact backend (downloads libiqa.so if missing)
bash scripts/setup_native.sh
```

The patched `libiqa.so` differs from Xiaomi's original only by:

* removal of bionic symbol-version requirements (`LIBC`),
* replacement of one unconditional `std::cout << std::endl` debug write in
  `ImageEsthectis::Forward` with a branch.

All scoring code paths are unchanged.

---

## Reverse-engineering artifacts

The full workspace lives next to this project in `../gallery-re`:

* `app.apk` + decompiled Java (`jadx/sources`)
* downloaded libraries (`libs/`)
* extracted/disassembly notes (`re_notes`, `session_artifacts/re_notes`)
* Ghidra projects and decompiled functions (`ghidra_proj`, `ghidra_cluster_proj`, `ghidra_out`, `ghidra_cluster_out`, `ghidra_scripts`)
* debug logs, test images and original-library copies (`session_artifacts`)

No session artifact is required to live under `/tmp`.

## Layout

```
bestpick/
  quality.py      four IQA networks + post-processing + poor rule
  features.py     1024-d MobileNetV2 embedding
  clustering.py   distance matrix + average-linkage groups
  selection.py    group-best selection
  pipeline.py     image loading, grouping, scoring, best flags
  cli.py          command line
models/           extracted ncnn param/weight blobs
native/           original libiqa.so (patched), score_server, build stubs
scripts/          model extraction + native build
tests/            unit tests (clustering, selection, poor rules)
```

## Limitations

* Grouping uses the same descriptor and thresholds, but tie-breaking in the
  native priority queue is not observable from the disassembly; different
  orderings can only affect exact-equidistant pairs.
* The Java layer computes embeddings over the whole media library in batches and
  persists them; this tool computes them per invocation.
* The native backend needs an aarch64 user-mode emulator and the cross-built
  server; the portable backend needs the `ncnn` Python wheel.

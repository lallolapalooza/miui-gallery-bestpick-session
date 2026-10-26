# Session artifacts (MIUI Gallery best-pick reverse engineering)

Intermediate files produced while reversing and validating the feature.  The
canonical implementation is `../../gallery-bestpick`.

| directory | contents |
|---|---|
| `re_notes/` | objdump listings used to recover CBlur, cluster_face, bottom_up_cluster, getFaceFeature, preprocess and the JNI entry points |
| `debug_logs/` | gdb batch output and qemu run logs from the ARM harness |
| `test_images/` | disposable images used to exercise feature extraction and burst grouping (JPEG re-encode, half-size, crop, three variants of one photo) |
| `lib_copies/` | `orig_libiqa.so` (identical to `gallery-bestpick/native/libiqa.so.orig`, SHA-1 `32673d6b…`) and `noinit.so` (experimental patch variant) |
| `jadx_cache/` | leftover jadx instance directories from the first decompilation attempt |

Larger analysis outputs live alongside them in the parent directory:
`ghidra_out/`, `ghidra_cluster_out/`, `singleton` decompilations under
`gallery-re/singles/`, and the full jadx tree under `gallery-re/jadx/`.

Nothing here is needed at runtime.

"""MobileNetV2 embedding used by MIUI Gallery for similar-photo grouping.

Recovered from library id 1004007 (libJNI_SimilarImgCluster.so).  The model
(`mobilenet_v2_param_bin` / `mobilenet_v2_bin`) is embedded in that library and
emits a 1024-dimensional L2-normalised descriptor from a 224x224 RGB image.
"""

from __future__ import annotations

from pathlib import Path

import numpy as np

MODEL_DIR = Path(__file__).resolve().parent.parent / "models"

# Per-channel mean/norm from ImageCluster::initialize (RGB order).
_MEAN = [123.675, 116.28, 103.53]
_NORM = [0.0171247534, 0.0175070036, 0.0174291935]


class FeatureExtractor:
    def __init__(self) -> None:
        import ncnn

        self._net = ncnn.Net()
        if self._net.load_param_bin(str(MODEL_DIR / "cluster_param.bin")) != 0:
            raise RuntimeError("failed to load cluster_param.bin")
        if self._net.load_model(str(MODEL_DIR / "cluster_model.bin")) != 0:
            raise RuntimeError("failed to load cluster_model.bin")

    def extract_bgr(self, bgr: np.ndarray) -> np.ndarray:
        import ncnn

        rgb = np.ascontiguousarray(bgr[:, :, ::-1], dtype=np.uint8)
        mat = ncnn.Mat.from_pixels_resize(
            rgb.tobytes(), ncnn.Mat.PixelType.PIXEL_RGB,
            rgb.shape[1], rgb.shape[0], 224, 224,
        )
        mat.substract_mean_normalize(_MEAN, _NORM)
        ex = self._net.create_extractor()
        ex.set_light_mode(False)
        ex.input(0, mat)
        rc, blob = ex.extract(242)
        if rc != 0:
            raise RuntimeError(f"feature extract failed: {rc}")
        v = np.asarray(blob).ravel().astype(np.float64)
        n = np.linalg.norm(v)
        return v / n if n > 0 else v

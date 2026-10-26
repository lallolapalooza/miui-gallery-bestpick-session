"""Neural image-quality assessment (IQA) reimplementation.

Reverse-engineered from MIUI Gallery's downloaded quality-score library
(library id 1002007: libiqa.so + libimage_iqa.so).

The native library embeds four ncnn models:
  * holistic_net  - 7 "badness" heads: exposure, saturation, balance, haze,
                    noise, blur, composition
  * nima          - MobileNet-style aesthetic score (10 bins)
  * blur          - 3-class blur-type classifier (argmax -> iqaBlurType)
  * blurnet       - 15-class blur regressor used by CBlur (9 crops)

QualityScore order in the Java layer is:
    [expo, satu, bala, haze, nois, blur, comp, nima, blurType]
"""

from __future__ import annotations

from dataclasses import dataclass, asdict
from pathlib import Path
from typing import Iterable

import numpy as np

MODEL_DIR = Path(__file__).resolve().parent.parent / "models"

# Post-processing constants recovered from ImageQualityInterface::Predict.
POOR_BLUR = 82.0
POOR_NOISE = 79.4
POOR_EXPO = 62.3


@dataclass(frozen=True)
class QualityScore:
    expo: float
    satu: float
    bala: float
    haze: float
    nois: float
    blur: float
    comp: float
    nima: float
    blur_type: int

    @property
    def is_poor(self) -> bool:
        return bool(
            (self.blur < POOR_BLUR and self.blur_type == 0)
            or self.nois < POOR_NOISE
            or self.expo < POOR_EXPO
        )

    def as_dict(self) -> dict:
        return asdict(self)


def _net(param: str, model: str):
    import ncnn

    net = ncnn.Net()
    rc = net.load_param_bin(str(MODEL_DIR / param))
    if rc != 0:
        raise RuntimeError(f"failed to load {param}: {rc}")
    rc = net.load_model(str(MODEL_DIR / model))
    if rc != 0:
        raise RuntimeError(f"failed to load {model}: {rc}")
    return net


def _bgr_bytes(bgr: np.ndarray) -> bytes:
    return np.ascontiguousarray(bgr, dtype=np.uint8).tobytes()


class QualityScorer:
    """Fast portable scorer (stock ncnn, x86/ARM)."""

    def __init__(self) -> None:
        self._holistic = _net("holistic_param.bin", "holistic_model.bin")
        self._nima = _net("nima_param.bin", "nima_model.bin")
        self._blur = _net("blur_param.bin", "blur_model.bin")
        self._blurnet = _net("blurnet_param.bin", "blurnet_model.bin")

    # -- helpers ---------------------------------------------------------
    @staticmethod
    def _mat_resize(bgr: np.ndarray, w: int, h: int):
        import ncnn

        return ncnn.Mat.from_pixels_resize(
            _bgr_bytes(bgr), ncnn.Mat.PixelType.PIXEL_BGR,
            bgr.shape[1], bgr.shape[0], w, h,
        )

    @staticmethod
    def _expectation(mat, start: int = 0) -> float:
        a = np.asarray(mat).ravel().astype(np.float64)
        return float((a * np.arange(start, len(a) + start)).sum())

    # -- stages ----------------------------------------------------------
    def _holistic_raw(self, bgr: np.ndarray) -> list[float]:
        mat = self._mat_resize(bgr, 224, 224)
        mat.substract_mean_normalize(
            [103.94, 116.78, 123.68], [0.017, 0.017, 0.017]
        )
        ex = self._holistic.create_extractor()
        ex.set_light_mode(False)
        ex.input(0, mat)
        out = []
        for idx, start in (
            (54, 0), (76, -10), (65, 0), (98, 0), (87, 0), (109, 0), (120, 0)
        ):
            rc, blob = ex.extract(idx)
            if rc != 0:
                raise RuntimeError(f"holistic extract {idx} failed: {rc}")
            out.append(self._expectation(blob, start) * 0.1)
        return out

    def _nima_raw(self, bgr: np.ndarray) -> float:
        mat = self._mat_resize(bgr, 224, 224)
        mat.substract_mean_normalize([0, 0, 0], [1 / 255, 1 / 255, 1 / 255])
        ex = self._nima.create_extractor()
        ex.set_light_mode(False)
        ex.input(0, mat)
        rc, blob = ex.extract(277)
        if rc != 0:
            raise RuntimeError(f"nima extract failed: {rc}")
        return self._expectation(blob, 1)  # classes weighted 1..10

    def _blur_type(self, bgr: np.ndarray) -> int:
        mat = self._mat_resize(bgr, 224, 224)
        mat.substract_mean_normalize([0, 0, 0], [1 / 255, 1 / 255, 1 / 255])
        ex = self._blur.create_extractor()
        ex.set_light_mode(False)
        ex.input(0, mat)
        rc, blob = ex.extract(276)
        if rc != 0:
            raise RuntimeError(f"blur extract failed: {rc}")
        return int(np.asarray(blob).ravel().argmax())

    def _cblur(self, bgr: np.ndarray) -> float:
        """CBlur::PredictBGR: 3x3 crops of 48x48 on a <=300px image."""
        h, w = bgr.shape[:2]
        if min(w, h) > 300:
            scale = 300.0 / min(w, h)
            nw, nh = int(w * scale), int(h * scale)
            # OpenCV bilinear is used natively; Pillow is visually identical
            from PIL import Image

            arr = Image.fromarray(np.ascontiguousarray(bgr[:, :, ::-1])).resize(
                (nw, nh), Image.BILINEAR
            )
            bgr = np.asarray(arr)[:, :, ::-1].copy()
            h, w = nh, nw
        sx = (w - 48) // 2
        sy = (h - 48) // 2
        total = 0.0
        for row in range(3):
            for col in range(3):
                x, y = col * sx, row * sy
                crop = bgr[y:y + 48, x:x + 48]
                import ncnn

                mat = ncnn.Mat.from_pixels(
                    _bgr_bytes(crop), ncnn.Mat.PixelType.PIXEL_BGR, 48, 48
                )
                mat.substract_mean_normalize(
                    [127.5, 127.5, 127.5],
                    [1 / 127.5, 1 / 127.5, 1 / 127.5],
                )
                ex = self._blurnet.create_extractor()
                ex.set_light_mode(False)
                ex.input(0, mat)
                rc, blob = ex.extract(14)
                if rc != 0:
                    raise RuntimeError(f"blurnet extract failed: {rc}")
                total += self._expectation(blob) * 0.25
        return total / 9.0

    # -- public ----------------------------------------------------------
    def score_bgr(self, bgr: np.ndarray) -> QualityScore:
        bgr = np.ascontiguousarray(bgr, dtype=np.uint8)
        if bgr.ndim != 3 or bgr.shape[2] != 3:
            raise ValueError("expected HxWx3 BGR image")
        if min(bgr.shape[:2]) <= 224:
            raise ValueError("image must be larger than 224x224 (gallery rule)")

        raw = self._holistic_raw(bgr)
        nima = self._nima_raw(bgr) * 10.0
        blur_type = self._blur_type(bgr)
        cblur = self._cblur(bgr)

        expo = 100.0 * (1.0 - raw[0])
        satu = 100.0 - abs(100.0 * raw[1])
        bala = 100.0 * (1.0 - raw[2])
        haze = 100.0 * (1.0 - raw[3])
        nois = 100.0 * (1.0 - raw[4])
        blur = 100.0 - 100.0 * (0.5 * raw[5] + 0.5 * cblur)
        comp = 100.0 * (1.0 - raw[6])
        return QualityScore(expo, satu, bala, haze, nois, blur, comp, nima, blur_type)

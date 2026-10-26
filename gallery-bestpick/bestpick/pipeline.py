"""End-to-end reimplementation of MIUI Gallery's automatic best pick."""

from __future__ import annotations

from dataclasses import dataclass, field
from pathlib import Path
from typing import Sequence

import numpy as np
from PIL import Image, ImageOps

from .clustering import (
    SAME_DISTANCE,
    SIMILAR_DISTANCE,
    average_linkage,
    group_labels,
    pairwise_distance,
)
from .features import FeatureExtractor
from .quality import QualityScore, QualityScorer
from .selection import group_bests


@dataclass
class Photo:
    path: Path
    quality: QualityScore | None = None
    feature: np.ndarray | None = None
    group: int = -1
    group_size: int = 0
    is_best: bool = False


@dataclass
class BestPickResult:
    photos: list[Photo]
    groups: list[list[int]] = field(default_factory=list)


def load_bgr(path: str | Path, gallery_scale: bool = True) -> np.ndarray:
    """Decode an image to BGR, mimicking ImageUtil.getScaledBitmap.

    Android samples with ``inSampleSize`` (power-of-two) until both sides are
    still at least 400 px.  We reproduce that with a box-filter reduction.
    """
    im = Image.open(path)
    im = ImageOps.exif_transpose(im).convert("RGB")
    w, h = im.size
    s = 1
    if gallery_scale:
        while w // (s * 2) >= 400 and h // (s * 2) >= 400:
            s *= 2
        if s > 1:
            im = im.reduce(s)
    rgb = np.asarray(im)
    return np.ascontiguousarray(rgb[:, :, ::-1])


class BestPicker:
    def __init__(self, native: bool | str = "auto") -> None:
        self._native = None
        if native in (True, "auto"):
            from . import backend_native

            if backend_native.available():
                self._native = backend_native.NativeScorer()
            elif native is True:
                raise RuntimeError("native backend requested but unavailable")
        self._scorer = None if self._native else QualityScorer()
        self._features = FeatureExtractor()

    def close(self) -> None:
        if self._native is not None:
            self._native.close()

    def __enter__(self):
        return self

    def __exit__(self, *exc):
        self.close()

    # ------------------------------------------------------------------
    def _score(self, bgr: np.ndarray) -> QualityScore:
        if self._native is not None:
            v = self._native.score_bgr(bgr)
            return QualityScore(*v[:8], int(v[8]))
        return self._scorer.score_bgr(bgr)

    def analyze(
        self,
        paths: Sequence[str | Path],
        threshold: float = SIMILAR_DISTANCE,
    ) -> BestPickResult:
        photos = [Photo(Path(p)) for p in paths]
        for ph in photos:
            bgr = load_bgr(ph.path)
            ph.quality = self._score(bgr)
            ph.feature = self._features.extract_bgr(bgr)

        feats = np.stack([p.feature for p in photos]) if photos else np.zeros((0, 1024))
        dist = pairwise_distance(feats)
        labels = average_linkage(dist, max_dist=threshold)
        groups = group_labels(labels)
        for gi, members in enumerate(groups):
            for idx in members:
                photos[idx].group = gi
                photos[idx].group_size = len(members)
        # best image per group: ignore "poor" images, highest nima wins
        qualities = [p.quality for p in photos]
        for gi, best in group_bests(qualities, groups).items():
            if best is not None and len(groups[gi]) > 1:
                photos[best].is_best = True
        return BestPickResult(photos, groups)

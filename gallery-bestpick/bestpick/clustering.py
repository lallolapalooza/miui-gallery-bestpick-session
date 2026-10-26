"""Similar-image grouping exactly as MiCluster::ImageCluster does it.

Recovered from library id 1004007:

  * features are L2-normalised 1024-d vectors
  * pairwise distance = Euclidean distance (``sqrt(sum((a-b)^2))``)
  * pairs further apart in time than 10 s are forced to +inf (the Java
    best-pick path passes no timestamps, so this gate is inert)
  * agglomerative clustering with *average linkage*, stopped when the next
    best merge distance exceeds the threshold
  * group sizes 0.4 = "similar" (used for best-pick), 0.25 = "same"
"""

from __future__ import annotations

from typing import Iterable

import numpy as np

SIMILAR_DISTANCE = 0.4
SAME_DISTANCE = 0.25
MAX_TIME_GAP_MS = 10_000


def pairwise_distance(
    features: np.ndarray, timestamps: Iterable[int] | None = None
) -> np.ndarray:
    """Euclidean distance matrix with the gallery's 10-second gate."""
    f = np.asarray(features, dtype=np.float64)
    if f.ndim != 2:
        raise ValueError("features must be N x D")
    norms = np.linalg.norm(f, axis=1, keepdims=True)
    f = np.divide(f, norms, out=np.zeros_like(f), where=norms > 0)

    sq = (f * f).sum(1)[:, None] + (f * f).sum(1)[None, :] - 2.0 * f @ f.T
    dist = np.sqrt(np.maximum(sq, 0.0))

    if timestamps is not None:
        t = np.asarray(list(timestamps), dtype=np.int64)
        if len(t) == len(f):
            far = np.abs(t[:, None] - t[None, :]) >= MAX_TIME_GAP_MS
            dist = np.where(far, 1e10, dist)
    return dist


def average_linkage(dist: np.ndarray, max_dist: float = SIMILAR_DISTANCE) -> list[int]:
    """Bottom-up average-linkage clustering.

    Equivalent to dlib's ``bottom_up_cluster`` with ``min_num_clusters=1``
    (which is what MiCluster calls) and the same distance matrix.
    """
    d = np.array(dist, dtype=np.float64, copy=True)
    n = d.shape[0]
    if n == 0:
        return []

    sizes = np.ones(n, dtype=np.float64)
    alive = np.ones(n, dtype=bool)
    np.fill_diagonal(d, np.inf)

    remaining = n
    while remaining > 1:
        flat = int(np.argmin(d))
        i, j = divmod(flat, n)
        if not np.isfinite(d[i, j]) or d[i, j] > max_dist:
            break
        if j < i:
            i, j = j, i
        # average linkage update
        new = (sizes[i] * d[i, :] + sizes[j] * d[j, :]) / (sizes[i] + sizes[j])
        d[i, :] = new
        d[:, i] = new
        d[i, i] = np.inf
        d[j, :] = np.inf
        d[:, j] = np.inf
        sizes[i] += sizes[j]
        alive[j] = False
        remaining -= 1

    # contiguous labels, matching the C++ relabelling pass
    remap: dict[int, int] = {}
    labels = []
    for idx in range(n):
        if alive[idx]:
            root = idx
        else:
            # walk to the cluster representative (the smallest alive index)
            root = idx
            while not alive[root]:
                root -= 1
        labels.append(remap.setdefault(root, len(remap)))
    return labels


def group_labels(labels: list[int]) -> list[list[int]]:
    groups: dict[int, list[int]] = {}
    for idx, lab in enumerate(labels):
        groups.setdefault(lab, []).append(idx)
    return list(groups.values())

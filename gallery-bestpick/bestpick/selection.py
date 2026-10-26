"""Best-image selection, mirroring MediaFeatureCacheManager.GroupBestImage."""

from __future__ import annotations

from typing import Sequence

from .quality import QualityScore


def pick_group_best(qualities: Sequence[QualityScore]) -> int | None:
    """Index of the best non-poor image, or None.

    Gallery behaviour (GroupBestImage.tryReplace):
      * poor images never become best
      * a strictly higher nima score replaces the current best
      * ties keep the earlier image
    """
    best: int | None = None
    best_score = float("-inf")
    for idx, q in enumerate(qualities):
        if q.is_poor:
            continue
        if q.nima > best_score:
            best, best_score = idx, q.nima
    return best


def group_bests(
    qualities: Sequence[QualityScore], groups: Sequence[Sequence[int]]
) -> dict[int, int | None]:
    """Map group -> global best index (or None)."""
    out: dict[int, int | None] = {}
    for gi, members in enumerate(groups):
        local = pick_group_best([qualities[i] for i in members])
        out[gi] = members[local] if local is not None else None
    return out

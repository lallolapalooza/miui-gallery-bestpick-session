"""Tests for the reimplemented best-pick logic (no model inference needed)."""

from __future__ import annotations

import unittest

import numpy as np

from bestpick.clustering import (
    MAX_TIME_GAP_MS,
    average_linkage,
    group_labels,
    pairwise_distance,
)
from bestpick.quality import POOR_BLUR, POOR_EXPO, POOR_NOISE, QualityScore
from bestpick.selection import group_bests, pick_group_best


def q(**kw) -> QualityScore:
    base = dict(
        expo=90.0, satu=90.0, bala=90.0, haze=90.0, nois=90.0,
        blur=90.0, comp=90.0, nima=50.0, blur_type=2,
    )
    base.update(kw)
    return QualityScore(**base)


class PoorImageTest(unittest.TestCase):
    def test_good(self):
        self.assertFalse(q().is_poor)

    def test_blur_only_poor_when_blur_type_is_zero(self):
        self.assertTrue(q(blur=POOR_BLUR - 1, blur_type=0).is_poor)
        self.assertFalse(q(blur=POOR_BLUR - 1, blur_type=1).is_poor)
        self.assertFalse(q(blur=POOR_BLUR - 1, blur_type=2).is_poor)

    def test_noise(self):
        self.assertTrue(q(nois=POOR_NOISE - 0.1).is_poor)
        self.assertFalse(q(nois=POOR_NOISE).is_poor)

    def test_exposure(self):
        self.assertTrue(q(expo=POOR_EXPO - 0.1).is_poor)
        self.assertFalse(q(expo=POOR_EXPO).is_poor)


class SelectionTest(unittest.TestCase):
    def test_highest_nima_wins(self):
        self.assertEqual(pick_group_best([q(nima=1), q(nima=3), q(nima=2)]), 1)

    def test_tie_keeps_first(self):
        self.assertEqual(pick_group_best([q(nima=2), q(nima=2)]), 0)

    def test_poor_never_wins(self):
        self.assertEqual(pick_group_best([q(nima=9, expo=10), q(nima=1)]), 1)
        self.assertIsNone(pick_group_best([q(expo=10), q(nois=10)]))

    def test_group_bests_returns_global_indices(self):
        qualities = [q(nima=1), q(nima=5), q(nima=2), q(nima=9)]
        groups = [[0, 1], [2, 3]]
        self.assertEqual(group_bests(qualities, groups), {0: 1, 1: 3})


class ClusteringTest(unittest.TestCase):
    def test_average_linkage_blocks_chain(self):
        d = np.array([
            [0.0, 0.3, 0.6],
            [0.3, 0.0, 0.3],
            [0.6, 0.3, 0.0],
        ])
        labels = average_linkage(d, max_dist=0.4)
        self.assertEqual(labels, [0, 0, 1])

    def test_threshold(self):
        d = np.array([[0.0, 0.5], [0.5, 0.0]])
        self.assertEqual(average_linkage(d, 0.4), [0, 1])
        self.assertEqual(average_linkage(d, 0.5), [0, 0])

    def test_group_labels(self):
        self.assertEqual(group_labels([0, 1, 0, 1]), [[0, 2], [1, 3]])

    def test_time_gate(self):
        feats = np.eye(2)
        near = pairwise_distance(feats, [0, MAX_TIME_GAP_MS - 1])
        far = pairwise_distance(feats, [0, MAX_TIME_GAP_MS])
        self.assertLess(near[0, 1], 2.0)
        self.assertGreater(far[0, 1], 1e9)


class FeatureTest(unittest.TestCase):
    def test_identical_images_are_identical(self):
        try:
            import ncnn  # noqa: F401
        except ImportError:
            self.skipTest("ncnn not installed")
        from PIL import Image

        from bestpick.features import FeatureExtractor
        from bestpick.pipeline import load_bgr

        img = Image.new("RGB", (800, 600), (120, 60, 30))
        for x in range(0, 800, 20):
            for y in range(0, 600, 20):
                img.putpixel((x, y), (x % 255, y % 255, (x + y) % 255))
        import os
        import tempfile

        fd, tmp = tempfile.mkstemp(suffix=".jpg")
        os.close(fd)
        self.addCleanup(os.unlink, tmp)
        img.save(tmp, quality=95)
        f = FeatureExtractor()
        a = f.extract_bgr(load_bgr(tmp))
        b = f.extract_bgr(load_bgr(tmp))
        self.assertLess(float(np.linalg.norm(a - b)), 1e-6)


if __name__ == "__main__":
    unittest.main()

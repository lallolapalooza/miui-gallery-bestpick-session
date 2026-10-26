package com.miui.gallery.assistant.manager.request;

import android.content.ContentValues;
import android.text.TextUtils;
import android.util.LongSparseArray;
import com.miui.gallery.assistant.algorithm.AlgorithmFactroy;
import com.miui.gallery.assistant.algorithm.ClusterAlgorithm;
import com.miui.gallery.assistant.cache.MediaFeatureCacheManager;
import com.miui.gallery.assistant.jni.cluster.ClusterNode;
import com.miui.gallery.assistant.library.LibraryManagerWrapper;
import com.miui.gallery.assistant.manager.AlgorithmRequest;
import com.miui.gallery.assistant.manager.request.param.ClusteGroupRequestParams;
import com.miui.gallery.assistant.manager.request.param.ImageFeatureBgrRequestParams;
import com.miui.gallery.assistant.manager.result.ClusteGroupResult;
import com.miui.gallery.assistant.model.MediaFeature;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.logger.DefaultLogger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ClusterGroupRequest extends AlgorithmRequest<List<MediaFeatureItem>, ClusteGroupRequestParams<MediaFeatureItem>, ClusteGroupResult> {
    public List<MediaFeatureItem> mImageFeatureItems;
    public MediaFeature[] mImageFeatures;
    public boolean mIsCalculateClusterFeature;
    public final boolean mSaveResult;

    public ClusterGroupRequest(AlgorithmRequest.Priority priority, ClusteGroupRequestParams<MediaFeatureItem> clusteGroupRequestParams, boolean z) {
        super(priority, clusteGroupRequestParams);
        this.mIsCalculateClusterFeature = clusteGroupRequestParams.isCalculateClusterFeature();
        this.mSaveResult = z;
    }

    @Override // com.miui.gallery.assistant.manager.AlgorithmRequest
    public ClusteGroupResult process(List<MediaFeatureItem> list) {
        this.mImageFeatureItems = list;
        if (!BaseMiscUtil.isValid(list)) {
            return new ClusteGroupResult(3);
        }
        if (this.mIsCalculateClusterFeature && !allImagesHaveClusterFeature()) {
            this.mIsCalculateClusterFeature = false;
            Iterator<MediaFeatureItem> it = this.mImageFeatureItems.iterator();
            while (it.hasNext()) {
                new ClusterFeatureRequest(getPriority(), new ImageFeatureBgrRequestParams(it.next())).execute();
            }
            execute();
            DefaultLogger.d(this.TAG, "calculate cluster feature before group");
            return new ClusteGroupResult(6);
        }
        DefaultLogger.d(this.TAG, "Process %d images", Integer.valueOf(this.mImageFeatureItems.size()));
        int i = 0;
        for (int i2 = 0; i2 < this.mImageFeatureItems.size(); i2++) {
            MediaFeature mediaFeature = this.mImageFeatureItems.get(i2).getMediaFeature();
            if (mediaFeature != null && mediaFeature.getClusterFeature() != null) {
                i++;
            }
        }
        DefaultLogger.d(this.TAG, "Valid image count:%d", Integer.valueOf(i));
        ArrayList<ArrayList<Float>> arrayList = new ArrayList<>();
        ArrayList<String> arrayList2 = new ArrayList<>();
        this.mImageFeatures = new MediaFeature[i];
        int i3 = 0;
        for (int i4 = 0; i4 < this.mImageFeatureItems.size() && i3 < i; i4++) {
            MediaFeature mediaFeature2 = this.mImageFeatureItems.get(i4).getMediaFeature();
            if (mediaFeature2 != null && mediaFeature2.getClusterFeature() != null) {
                this.mImageFeatures[i3] = mediaFeature2;
                arrayList.add(new ArrayList<>(Arrays.asList(mediaFeature2.getClusterFeature())));
                arrayList2.add(String.valueOf(mediaFeature2.getMediaId()));
                i3++;
            }
        }
        if (!LibraryManagerWrapper.getInstance().loadLibrary(1004007L)) {
            DefaultLogger.d(this.TAG, "Load library %s failed", "ClusterAlgorithm");
            return new ClusteGroupResult(2);
        }
        try {
            ArrayList<ClusterNode> clusterResult = ((ClusterAlgorithm) AlgorithmFactroy.getAlgorithmByFlag(8)).getClusterResult(arrayList, arrayList2);
            if (!BaseMiscUtil.isValid(clusterResult)) {
                return new ClusteGroupResult(1);
            }
            DefaultLogger.d(this.TAG, "ClusterAlgorithm getClusterResult success! ClustersResult.size: %d", Integer.valueOf(clusterResult.size()));
            return new ClusteGroupResult(clusterResult);
        } catch (Exception e2) {
            e2.printStackTrace();
            return new ClusteGroupResult(7);
        } finally {
            AlgorithmFactroy.releaseAlgorithmByFlag(8);
        }
    }

    public final boolean allImagesHaveClusterFeature() {
        if (!BaseMiscUtil.isValid(this.mImageFeatureItems)) {
            return true;
        }
        for (MediaFeatureItem mediaFeatureItem : this.mImageFeatureItems) {
            if (mediaFeatureItem.getMediaFeature() == null || mediaFeatureItem.getMediaFeature().getClusterFeature() == null) {
                return false;
            }
        }
        return true;
    }

    @Override // com.miui.gallery.assistant.manager.AlgorithmRequest
    public void onSaveResult(ClusteGroupResult clusteGroupResult) {
        if (this.mSaveResult && clusteGroupResult != null && clusteGroupResult.getResultCode() == 0 && BaseMiscUtil.isValid(clusteGroupResult.getClusters())) {
            LongSparseArray longSparseArray = new LongSparseArray(this.mImageFeatureItems.size());
            for (MediaFeatureItem mediaFeatureItem : this.mImageFeatureItems) {
                if (mediaFeatureItem.getMediaSha1() != null) {
                    longSparseArray.put(mediaFeatureItem.getMediaId(), mediaFeatureItem);
                }
            }
            long jNanoTime = System.nanoTime();
            Iterator<ClusterNode> it = clusteGroupResult.getClusters().iterator();
            while (it.hasNext()) {
                ArrayList<String> imgs = it.next().getImgs();
                if (imgs != null && imgs.size() != 0) {
                    long jGenerateGroupId = -1;
                    Iterator<String> it2 = imgs.iterator();
                    while (it2.hasNext()) {
                        MediaFeatureItem mediaFeatureItem2 = (MediaFeatureItem) longSparseArray.get(Long.valueOf(it2.next()).longValue());
                        if (mediaFeatureItem2 != null && mediaFeatureItem2.getMediaFeature() != null && mediaFeatureItem2.getMediaFeature().getClusterGroupId() > 0) {
                            jGenerateGroupId = mediaFeatureItem2.getMediaFeature().getClusterGroupId();
                            break;
                        }
                    }
                    if (jGenerateGroupId < 0) {
                        jGenerateGroupId = generateGroupId(jNanoTime);
                    }
                    GalleryEntityManager galleryEntityManager = GalleryEntityManager.getInstance();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("clusterGroupId", Long.valueOf(jGenerateGroupId));
                    galleryEntityManager.update(MediaFeature.class, contentValues, String.format("%s IN (%s)", "mediaId", TextUtils.join(",", imgs)), null);
                    MediaFeatureCacheManager.getInstance().onImageFeaturesChanged(imgs);
                }
            }
        }
    }

    public final long generateGroupId(long j) {
        return (System.currentTimeMillis() * 1000000) + ((System.nanoTime() - j) % 1000000);
    }
}

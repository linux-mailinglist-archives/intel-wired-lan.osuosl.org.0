Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2759F7A4185
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:48:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A375D414C2;
	Mon, 18 Sep 2023 06:48:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A375D414C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695019711;
	bh=fMKxp4WUhtfzL52pCB3UvMQURb5d+QcPf2Qhpn1Flcs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YhvSmZ5lKixQYyXwkHaXJU6Cgmosr3oj6F6KEhJ5p3JbZuRHqfTMsRi1QAPp6ZpW4
	 jKF0PGyi/AfmjA4KmI8b8VXlmIr4UNgZKlgiqpdnVn+zKfyML1p6pT1op6RL3alwhR
	 WzwjOEEx5QWgpAIPr9y327BJyEyug+ADFMTPtTWiP09gaDVC6PmebPnb3CH3Udm6EN
	 /eqtgzkTGRBADChHmXXuATD6GUinUW+0lp9TUSLe8eWzRp7tCavsZss/5xwXJlYCEH
	 MO6PXyTW2HodEtoBEljOyaHb+0PAzLGMYz/FlDEITQL2RbhZ9id3IXi0ZWknyKnniX
	 gt4K1gO8tPaDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uJwW4XAk8vqO; Mon, 18 Sep 2023 06:48:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6143540446;
	Mon, 18 Sep 2023 06:48:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6143540446
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 04A761BF40F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B35F7400FE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B35F7400FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cN9WdB-0SeDQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:48:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B5C98414A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5C98414A1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="369907562"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="369907562"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:48:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="869452263"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="869452263"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga004.jf.intel.com with ESMTP; 17 Sep 2023 23:48:13 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 08:24:06 +0200
Message-ID: <20230918062406.90359-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
References: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695019695; x=1726555695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6loydIWi1ExlPHbTIKFOpHvkvX1JtedfKNbMaGFGAaM=;
 b=lFbiwmY0Lte3/qjKqF/vVy8r8FFXrUIPMHyv7B/ziJgpFU/ozIiYbsP/
 Zw35l8/LQVSM4igOos4epVCAm/pphEK3bgtfbRdL5wHuaEa4M9D7E5Fo0
 zOvzIKeDaBO219FfgtnH4y4sIWmoyAO+eUODmg1wzrZ8fcLpPAlbVPagY
 v1f04gt3LRDM2Plt2nWwgqV/BShLvK5iT9wFETT9LOLKij4b9ROLc/bXV
 P4ebg8e2ViVRIBF5wlAvn/FP3wTDVxnvxaum4UWEXsQ/8ruDBDz7CVK1I
 MOmcOgX7fnlWpC0MH1mfDIBTpafQ2UEQ8Cmza48yKid/fuGXARUcNFCqL
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lFbiwmY0
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/4] ice: manage VFs MSI-X
 using resource tracking
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Track MSI-X for VFs using bitmap, by setting and clearing bitmap during
allocation and freeing.

Try to linearize irqs usage for VFs, by freeing them and allocating once
again. Do it only for VFs that aren't currently running.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 170 ++++++++++++++++++---
 1 file changed, 151 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 679bf63fd17a..2a5e6616cc0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -246,22 +246,6 @@ static struct ice_vsi *ice_vf_vsi_setup(struct ice_vf *vf)
 	return vsi;
 }
 
-/**
- * ice_calc_vf_first_vector_idx - Calculate MSIX vector index in the PF space
- * @pf: pointer to PF structure
- * @vf: pointer to VF that the first MSIX vector index is being calculated for
- *
- * This returns the first MSIX vector index in PF space that is used by this VF.
- * This index is used when accessing PF relative registers such as
- * GLINT_VECT2FUNC and GLINT_DYN_CTL.
- * This will always be the OICR index in the AVF driver so any functionality
- * using vf->first_vector_idx for queue configuration will have to increment by
- * 1 to avoid meddling with the OICR index.
- */
-static int ice_calc_vf_first_vector_idx(struct ice_pf *pf, struct ice_vf *vf)
-{
-	return pf->sriov_base_vector + vf->vf_id * pf->vfs.num_msix_per;
-}
 
 /**
  * ice_ena_vf_msix_mappings - enable VF MSIX mappings in hardware
@@ -528,6 +512,52 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 	return 0;
 }
 
+/**
+ * ice_sriov_get_irqs - get irqs for SR-IOV usacase
+ * @pf: pointer to PF structure
+ * @needed: number of irqs to get
+ *
+ * This returns the first MSI-X vector index in PF space that is used by this
+ * VF. This index is used when accessing PF relative registers such as
+ * GLINT_VECT2FUNC and GLINT_DYN_CTL.
+ * This will always be the OICR index in the AVF driver so any functionality
+ * using vf->first_vector_idx for queue configuration_id: id of VF which will
+ * use this irqs
+ *
+ * Only SRIOV specific vectors are tracked in sriov_irq_bm. SRIOV vectors are
+ * allocated from the end of global irq index. First bit in sriov_irq_bm means
+ * last irq index etc. It simplifies extension of SRIOV vectors.
+ * They will be always located from sriov_base_vector to the last irq
+ * index. While increasing/decreasing sriov_base_vector can be moved.
+ */
+static int ice_sriov_get_irqs(struct ice_pf *pf, u16 needed)
+{
+	int res = bitmap_find_next_zero_area(pf->sriov_irq_bm,
+					     pf->sriov_irq_size, 0, needed, 0);
+	/* conversion from number in bitmap to global irq index */
+	int index = pf->sriov_irq_size - res - needed;
+
+	if (res >= pf->sriov_irq_size || index < pf->sriov_base_vector)
+		return -ENOENT;
+
+	bitmap_set(pf->sriov_irq_bm, res, needed);
+	return index;
+}
+
+/**
+ * ice_sriov_free_irqs - free irqs used by the VF
+ * @pf: pointer to PF structure
+ * @vf: pointer to VF structure
+ */
+static void ice_sriov_free_irqs(struct ice_pf *pf, struct ice_vf *vf)
+{
+	/* Move back from first vector index to first index in bitmap */
+	int bm_i = pf->sriov_irq_size - vf->first_vector_idx - vf->num_msix;
+
+	bitmap_clear(pf->sriov_irq_bm, bm_i, vf->num_msix);
+	vf->first_vector_idx = 0;
+}
+
 /**
  * ice_init_vf_vsi_res - initialize/setup VF VSI resources
  * @vf: VF to initialize/setup the VSI for
@@ -541,7 +571,9 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 	struct ice_vsi *vsi;
 	int err;
 
-	vf->first_vector_idx = ice_calc_vf_first_vector_idx(pf, vf);
+	vf->first_vector_idx = ice_sriov_get_irqs(pf, vf->num_msix);
+	if (vf->first_vector_idx < 0)
+		return -ENOMEM;
 
 	vsi = ice_vf_vsi_setup(vf);
 	if (!vsi)
@@ -1000,6 +1032,52 @@ u32 ice_sriov_get_vf_total_msix(struct pci_dev *pdev)
 	return pf->sriov_irq_size - ice_get_max_used_msix_vector(pf);
 }
 
+static int ice_sriov_move_base_vector(struct ice_pf *pf, int move)
+{
+	if (pf->sriov_base_vector - move < ice_get_max_used_msix_vector(pf))
+		return -ENOMEM;
+
+	pf->sriov_base_vector -= move;
+	return 0;
+}
+
+static void ice_sriov_remap_vectors(struct ice_pf *pf, u16 restricted_id)
+{
+	u16 vf_ids[ICE_MAX_SRIOV_VFS];
+	struct ice_vf *tmp_vf;
+	int to_remap = 0, bkt;
+
+	/* For better irqs usage try to remap irqs of VFs
+	 * that aren't running yet
+	 */
+	ice_for_each_vf(pf, bkt, tmp_vf) {
+		/* skip VF which is changing the number of MSI-X */
+		if (restricted_id == tmp_vf->vf_id ||
+		    test_bit(ICE_VF_STATE_ACTIVE, tmp_vf->vf_states))
+			continue;
+
+		ice_dis_vf_mappings(tmp_vf);
+		ice_sriov_free_irqs(pf, tmp_vf);
+
+		vf_ids[to_remap] = tmp_vf->vf_id;
+		to_remap += 1;
+	}
+
+	for (int i = 0; i < to_remap; i++) {
+		tmp_vf = ice_get_vf_by_id(pf, vf_ids[i]);
+		if (!tmp_vf)
+			continue;
+
+		tmp_vf->first_vector_idx =
+			ice_sriov_get_irqs(pf, tmp_vf->num_msix);
+		/* there is no need to rebuild VSI as we are only changing the
+		 * vector indexes not amount of MSI-X or queues
+		 */
+		ice_ena_vf_mappings(tmp_vf);
+		ice_put_vf(tmp_vf);
+	}
+}
+
 /**
  * ice_sriov_set_msix_vec_count
  * @vf_dev: pointer to pci_dev struct of VF device
@@ -1018,8 +1096,9 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 {
 	struct pci_dev *pdev = pci_physfn(vf_dev);
 	struct ice_pf *pf = pci_get_drvdata(pdev);
+	u16 prev_msix, prev_queues, queues;
+	bool needs_rebuild = false;
 	struct ice_vf *vf;
-	u16 queues;
 	int id;
 
 	if (!ice_get_num_vfs(pf))
@@ -1032,6 +1111,13 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	/* add 1 MSI-X for OICR */
 	msix_vec_count += 1;
 
+	if (queues > min(ice_get_avail_txq_count(pf),
+			 ice_get_avail_rxq_count(pf)))
+		return -EINVAL;
+
+	if (msix_vec_count < ICE_MIN_INTR_PER_VF)
+		return -EINVAL;
+
 	/* Transition of PCI VF function number to function_id */
 	for (id = 0; id < pci_num_vf(pdev); id++) {
 		if (vf_dev->devfn == pci_iov_virtfn_devfn(pdev, id))
@@ -1046,14 +1132,60 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	if (!vf)
 		return -ENOENT;
 
+	prev_msix = vf->num_msix;
+	prev_queues = vf->num_vf_qs;
+
+	if (ice_sriov_move_base_vector(pf, msix_vec_count - prev_msix)) {
+		ice_put_vf(vf);
+		return -ENOSPC;
+	}
+
 	ice_dis_vf_mappings(vf);
+	ice_sriov_free_irqs(pf, vf);
+
+	/* Remap all VFs beside the one is now configured */
+	ice_sriov_remap_vectors(pf, vf->vf_id);
+
 	vf->num_msix = msix_vec_count;
 	vf->num_vf_qs = queues;
-	ice_vsi_rebuild(ice_get_vf_vsi(vf), ICE_VSI_FLAG_NO_INIT);
+	vf->first_vector_idx = ice_sriov_get_irqs(pf, vf->num_msix);
+	if (vf->first_vector_idx < 0)
+		goto unroll;
+
+	ice_vf_vsi_release(vf);
+	if (vf->vf_ops->create_vsi(vf)) {
+		/* Try to rebuild with previous values */
+		needs_rebuild = true;
+		goto unroll;
+	}
+
+	dev_info(ice_pf_to_dev(pf),
+		 "Changing VF %d resources to %d vectors and %d queues\n",
+		 vf->vf_id, vf->num_msix, vf->num_vf_qs);
+
 	ice_ena_vf_mappings(vf);
 	ice_put_vf(vf);
 
 	return 0;
+
+unroll:
+	dev_info(ice_pf_to_dev(pf),
+		 "Can't set %d vectors on VF %d, falling back to %d\n",
+		 vf->num_msix, vf->vf_id, prev_msix);
+
+	vf->num_msix = prev_msix;
+	vf->num_vf_qs = prev_queues;
+	vf->first_vector_idx = ice_sriov_get_irqs(pf, vf->num_msix);
+	if (vf->first_vector_idx < 0)
+		return -EINVAL;
+
+	if (needs_rebuild)
+		vf->vf_ops->create_vsi(vf);
+
+	ice_ena_vf_mappings(vf);
+	ice_put_vf(vf);
+
+	return -EINVAL;
 }
 
 /**
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

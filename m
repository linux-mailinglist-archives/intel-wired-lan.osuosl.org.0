Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42020731970
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 15:01:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABAA441FB2;
	Thu, 15 Jun 2023 13:01:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABAA441FB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686834064;
	bh=I1cJhSYSQ3k+tUtz/LKwVaHFiOBzDEeuYBDw/Ku5T5c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mmzZlhpJG+KFoD06v0rVtVAEfXpwUBnu+6OlwmPUsfmjpCXXYuuYGdik6xb8w1yz6
	 s+iP29Q7K4PfD+XslYJrK5BIf4He5kF8qdjpxshuNQ6ujf/LJtVIYjyW64JMVh3Xv8
	 GMeXZu9BJZhSNIYW0j7strpuaMvQj+BlUDkavZCJT2UzuYuPhEQlu5okXFcXqvSoym
	 h7r9u87hgcKsirII9ug+wUTN7hZsmBK0dUVIoJG49+vQ2G383fAnHy3/iQortL4Sjl
	 tGudu+sFmj4XWPiX4rRlEdFmRZJNQ+YqgXIz4kT5G1ZsOiRoVQpdxUF69WsVbay/YW
	 JCtCVr68clRPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bb6Ymam8YLmq; Thu, 15 Jun 2023 13:01:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4B9A41FB0;
	Thu, 15 Jun 2023 13:01:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4B9A41FB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D9D4D1BF831
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 13:00:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2A70404E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 13:00:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2A70404E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TgxOgBMW2ts3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 13:00:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D248F400D8
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D248F400D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 13:00:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="424794843"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="424794843"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 05:59:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="825259773"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="825259773"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 15 Jun 2023 05:59:29 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Jun 2023 14:38:30 +0200
Message-Id: <20230615123830.155927-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615123830.155927-1-michal.swiatkowski@linux.intel.com>
References: <20230615123830.155927-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686834055; x=1718370055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i9UIlvuRTaS3ZKgBOXyiRDAuXi0ltYQuP4N2h9H7+5c=;
 b=AesEVu4amfcdrQ4ElLMiz75Xm1xp+RTs38wpzO1b8n090/xb9Wf3EJQW
 1hkToxsIV2hhYzmpIgUz4AkPzPyAxgSAvijwoQhx7nao9oKTlM8ftz27t
 kfjhrDDAJaE4rc+gdh2zHRJvLlBAyz+FSP89bdK2Qlqd1tD0R1kKBHEKe
 0SUQQt6dkPOUfIrILcpQ2abkp/bp4ook3aiD8ga/O3dWCJXVUcFsFtvmb
 vchdwwnS00+pyuwWvonV04gRBZDWJkHPM6IBBnJSmRDhnpKClpc2woCE8
 MiLOHVP/PY4bGd4V2Y6cSw4myt8y0b3dVFOH/GtseVSl4Yh6D0U56rXPt
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AesEVu4a
Subject: [Intel-wired-lan] [PATCH iwl-next v1 4/4] ice: manage VFs MSI-X
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
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com
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
index e20ef1924fae..78a41163755b 100644
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
@@ -984,6 +1016,52 @@ u32 ice_sriov_get_vf_total_msix(struct pci_dev *pdev)
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
@@ -1002,8 +1080,9 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 {
 	struct pci_dev *pdev = pci_physfn(vf_dev);
 	struct ice_pf *pf = pci_get_drvdata(pdev);
+	u16 prev_msix, prev_queues, queues;
+	bool needs_rebuild = false;
 	struct ice_vf *vf;
-	u16 queues;
 	int id;
 
 	if (!ice_get_num_vfs(pf))
@@ -1016,6 +1095,13 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
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
@@ -1030,14 +1116,60 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
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
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B909AE481
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 14:13:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A323812DB;
	Thu, 24 Oct 2024 12:13:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e_9Tg6yuZGlW; Thu, 24 Oct 2024 12:13:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9824B81230
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729771984;
	bh=d7WA4QLwCZ8aUCCp/02ia5KKIOV4be1Y2ejruevqYXs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Es2105a6y20mu7ubaXWj+djZMbKBO9Xxkt7XbcbB/Qa87bGSaYRSoNq5S8m6j5TjE
	 4Ir4CaX/O5gYLyclLd0Onkc6yROaBAIaWWvqsVY8JD4g2mvxkp6FDrs/uLlVHnqB5M
	 rktrbnQ73Zmtcc4H1Pdg7Mf6ElkfMSFKezmdkY6m0sg7/BRHH0VEZn2nHvbIh4ujkJ
	 EP9691jyg0jY0fVFeKdF6bOQ8oYhonpEQ1r1RJGKAlnBV13bo3vJ9JJkhOJGwaDVtn
	 6QBKgs9dvxvWRGhJ1pQwAv29EjiLpG0JxcusdwlyiFuCww4QZeJ5W8uRePI2/GNKxL
	 sSOgGpIAZYzwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9824B81230;
	Thu, 24 Oct 2024 12:13:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C453E5A5A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:13:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2A4D4026F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:13:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uOg9qvu6gS-C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 12:13:01 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F1BEA40A97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1BEA40A97
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1BEA40A97
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:13:00 +0000 (UTC)
X-CSE-ConnectionGUID: 0r2oPRX9RCiIn27ktBQjuw==
X-CSE-MsgGUID: nwkmbeHMRrK+ca4tLvEuZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40008331"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="40008331"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:13:01 -0700
X-CSE-ConnectionGUID: TR4IEZ1ORRGu13UQ+n6e2g==
X-CSE-MsgGUID: LQeXtlNWSpGS2WT4+8dOog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="85184516"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa004.fm.intel.com with ESMTP; 24 Oct 2024 05:12:57 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pawel.chmielewski@intel.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 pio.raczynski@gmail.com, konrad.knitter@intel.com, marcin.szycik@intel.com,
 wojciech.drewek@intel.com, nex.sw.ncis.nat.hpm.dev@intel.com,
 przemyslaw.kitszel@intel.com, jiri@resnulli.us, horms@kernel.org,
 David.Laight@ACULAB.COM
Date: Thu, 24 Oct 2024 14:12:29 +0200
Message-ID: <20241024121230.5861-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241024121230.5861-1-michal.swiatkowski@linux.intel.com>
References: <20241024121230.5861-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729771981; x=1761307981;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZiAzGpx0vFqlAZx2Y+maiq0nu4vlpyzP6u64NRAsJfY=;
 b=e6mMEzKTxuWGukTFmK62FNDdmGauSh7c4+RyDn4K7YRnykbA9NhUkzk0
 EcTxLXTvTI5UsCy6K+7HwBAHVnfZcBSmkpSGhX/k7nOrw6H02QOnowEC1
 JTQhnvJv6x8AvE/8xSuqUwjS8mZaH/1+h9NXNoMwu9k81pzknx/tDzlia
 ERu6hbkkbMS4ocvE1mATtEyqwQaMchRgB2c+R5oo6a75GBlGBllG8C8vC
 IPXK8tj4a+E3mAYhuaZEAfkGMIYA8PBIhwBtHNg2MxvYNHRZ7qL61PNGT
 XDSnfWLBLBemrLXtfoQ8i4tfeUSztn+Y5Mo37OQujdx8BQvwPFjW5kWwI
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e6mMEzKT
Subject: [Intel-wired-lan] [iwl-next v5 8/9] ice: simplify VF MSI-X managing
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After implementing pf->msix.max field, base vector for other use cases
(like VFs) can be fixed. This simplify code when changing MSI-X amount
on particular VF, because there is no need to move a base vector.

A fixed base vector allows to reserve vectors from the beginning
instead of from the end, which is also simpler in code.

Store total and rest value in the same struct as max and min for PF.
Move tracking vectors from ice_sriov.c to ice_irq.c as it can be also
use for other none PF use cases (SIOV).

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h       |  10 +-
 drivers/net/ethernet/intel/ice/ice_irq.c   |  75 +++++++---
 drivers/net/ethernet/intel/ice/ice_irq.h   |  13 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c | 154 ++-------------------
 4 files changed, 79 insertions(+), 173 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 68456c7885e3..2f6b5f5fafec 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -547,6 +547,8 @@ struct ice_pf_msix {
 	u16 cur;
 	u16 min;
 	u16 max;
+	u16 total;
+	u16 rest;
 };
 
 struct ice_pf {
@@ -563,13 +565,7 @@ struct ice_pf {
 	/* OS reserved IRQ details */
 	struct msix_entry *msix_entries;
 	struct ice_irq_tracker irq_tracker;
-	/* First MSIX vector used by SR-IOV VFs. Calculated by subtracting the
-	 * number of MSIX vectors needed for all SR-IOV VFs from the number of
-	 * MSIX vectors allowed on this PF.
-	 */
-	u16 sriov_base_vector;
-	unsigned long *sriov_irq_bm;	/* bitmap to track irq usage */
-	u16 sriov_irq_size;		/* size of the irq_bm bitmap */
+	struct ice_virt_irq_tracker virt_irq_tracker;
 
 	u16 ctrl_vsi_idx;		/* control VSI index in pf->vsi array */
 
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index 85840f3ad5c0..c90045e62582 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -20,6 +20,19 @@ ice_init_irq_tracker(struct ice_pf *pf, unsigned int max_vectors,
 	xa_init_flags(&pf->irq_tracker.entries, XA_FLAGS_ALLOC);
 }
 
+static int
+ice_init_virt_irq_tracker(struct ice_pf *pf, u16 base, u16 num_entries)
+{
+	pf->virt_irq_tracker.bm = bitmap_zalloc(num_entries, GFP_KERNEL);
+	if (!pf->virt_irq_tracker.bm)
+		return -ENOMEM;
+
+	pf->virt_irq_tracker.num_entries = num_entries;
+	pf->virt_irq_tracker.base = base;
+
+	return 0;
+}
+
 /**
  * ice_deinit_irq_tracker - free xarray tracker
  * @pf: board private structure
@@ -29,6 +42,11 @@ static void ice_deinit_irq_tracker(struct ice_pf *pf)
 	xa_destroy(&pf->irq_tracker.entries);
 }
 
+static void ice_deinit_virt_irq_tracker(struct ice_pf *pf)
+{
+	bitmap_free(pf->virt_irq_tracker.bm);
+}
+
 /**
  * ice_free_irq_res - free a block of resources
  * @pf: board private structure
@@ -93,6 +111,7 @@ void ice_clear_interrupt_scheme(struct ice_pf *pf)
 {
 	pci_free_irq_vectors(pf->pdev);
 	ice_deinit_irq_tracker(pf);
+	ice_deinit_virt_irq_tracker(pf);
 }
 
 /**
@@ -111,6 +130,9 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 	if (!pf->msix.max)
 		pf->msix.max = total_vectors / 2;
 
+	pf->msix.total = total_vectors;
+	pf->msix.rest = total_vectors - pf->msix.max;
+
 	if (pci_msix_can_alloc_dyn(pf->pdev))
 		vectors = pf->msix.min;
 	else
@@ -123,7 +145,7 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 
 	ice_init_irq_tracker(pf, pf->msix.max, vectors);
 
-	return 0;
+	return ice_init_virt_irq_tracker(pf, pf->msix.max, pf->msix.rest);
 }
 
 /**
@@ -150,7 +172,6 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
  */
 struct msi_map ice_alloc_irq(struct ice_pf *pf, bool dyn_allowed)
 {
-	int sriov_base_vector = pf->sriov_base_vector;
 	struct msi_map map = { .index = -ENOENT };
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_irq_entry *entry;
@@ -159,10 +180,6 @@ struct msi_map ice_alloc_irq(struct ice_pf *pf, bool dyn_allowed)
 	if (!entry)
 		return map;
 
-	/* fail if we're about to violate SRIOV vectors space */
-	if (sriov_base_vector && entry->index >= sriov_base_vector)
-		goto exit_free_res;
-
 	if (pci_msix_can_alloc_dyn(pf->pdev) && entry->dynamic) {
 		map = pci_msix_alloc_irq_at(pf->pdev, entry->index, NULL);
 		if (map.index < 0)
@@ -210,26 +227,40 @@ void ice_free_irq(struct ice_pf *pf, struct msi_map map)
 }
 
 /**
- * ice_get_max_used_msix_vector - Get the max used interrupt vector
- * @pf: board private structure
+ * ice_virt_get_irqs - get irqs for SR-IOV usacase
+ * @pf: pointer to PF structure
+ * @needed: number of irqs to get
  *
- * Return index of maximum used interrupt vectors with respect to the
- * beginning of the MSIX table. Take into account that some interrupts
- * may have been dynamically allocated after MSIX was initially enabled.
+ * This returns the first MSI-X vector index in PF space that is used by this
+ * VF. This index is used when accessing PF relative registers such as
+ * GLINT_VECT2FUNC and GLINT_DYN_CTL.
+ * This will always be the OICR index in the AVF driver so any functionality
+ * using vf->first_vector_idx for queue configuration_id: id of VF which will
+ * use this irqs
  */
-int ice_get_max_used_msix_vector(struct ice_pf *pf)
+int ice_virt_get_irqs(struct ice_pf *pf, u16 needed)
 {
-	unsigned long start, index, max_idx;
-	void *entry;
+	int res = bitmap_find_next_zero_area(pf->virt_irq_tracker.bm,
+					     pf->virt_irq_tracker.num_entries,
+					     0, needed, 0);
 
-	/* Treat all preallocated interrupts as used */
-	start = pf->irq_tracker.num_static;
-	max_idx = start - 1;
+	if (res >= pf->virt_irq_tracker.num_entries)
+		return -ENOENT;
 
-	xa_for_each_start(&pf->irq_tracker.entries, index, entry, start) {
-		if (index > max_idx)
-			max_idx = index;
-	}
+	bitmap_set(pf->virt_irq_tracker.bm, res, needed);
 
-	return max_idx;
+	/* conversion from number in bitmap to global irq index */
+	return res + pf->virt_irq_tracker.base;
+}
+
+/**
+ * ice_virt_free_irqs - free irqs used by the VF
+ * @pf: pointer to PF structure
+ * @index: first index to be free
+ * @irqs: number of irqs to free
+ */
+void ice_virt_free_irqs(struct ice_pf *pf, u16 index, u16 irqs)
+{
+	bitmap_clear(pf->virt_irq_tracker.bm, index - pf->virt_irq_tracker.base,
+		     irqs);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.h b/drivers/net/ethernet/intel/ice/ice_irq.h
index f35efc08575e..d5e0fdd9b535 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.h
+++ b/drivers/net/ethernet/intel/ice/ice_irq.h
@@ -15,11 +15,22 @@ struct ice_irq_tracker {
 	u16 num_static;	/* preallocated entries */
 };
 
+struct ice_virt_irq_tracker {
+	unsigned long *bm;	/* bitmap to track irq usage */
+	u16 num_entries;
+	/* First MSIX vector used by SR-IOV VFs. Calculated by subtracting the
+	 * number of MSIX vectors needed for all SR-IOV VFs from the number of
+	 * MSIX vectors allowed on this PF.
+	 */
+	u16 base;
+};
+
 int ice_init_interrupt_scheme(struct ice_pf *pf);
 void ice_clear_interrupt_scheme(struct ice_pf *pf);
 
 struct msi_map ice_alloc_irq(struct ice_pf *pf, bool dyn_only);
 void ice_free_irq(struct ice_pf *pf, struct msi_map map);
-int ice_get_max_used_msix_vector(struct ice_pf *pf);
 
+int ice_virt_get_irqs(struct ice_pf *pf, u16 needed);
+void ice_virt_free_irqs(struct ice_pf *pf, u16 index, u16 irqs);
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index b83f99c01d91..33eac29b6a50 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -122,27 +122,6 @@ static void ice_dis_vf_mappings(struct ice_vf *vf)
 		dev_err(dev, "Scattered mode for VF Rx queues is not yet implemented\n");
 }
 
-/**
- * ice_sriov_free_msix_res - Reset/free any used MSIX resources
- * @pf: pointer to the PF structure
- *
- * Since no MSIX entries are taken from the pf->irq_tracker then just clear
- * the pf->sriov_base_vector.
- *
- * Returns 0 on success, and -EINVAL on error.
- */
-static int ice_sriov_free_msix_res(struct ice_pf *pf)
-{
-	if (!pf)
-		return -EINVAL;
-
-	bitmap_free(pf->sriov_irq_bm);
-	pf->sriov_irq_size = 0;
-	pf->sriov_base_vector = 0;
-
-	return 0;
-}
-
 /**
  * ice_free_vfs - Free all VFs
  * @pf: pointer to the PF structure
@@ -177,6 +156,7 @@ void ice_free_vfs(struct ice_pf *pf)
 
 		ice_eswitch_detach_vf(pf, vf);
 		ice_dis_vf_qs(vf);
+		ice_virt_free_irqs(pf, vf->first_vector_idx, vf->num_msix);
 
 		if (test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
 			/* disable VF qp mappings and set VF disable state */
@@ -200,9 +180,6 @@ void ice_free_vfs(struct ice_pf *pf)
 		mutex_unlock(&vf->cfg_lock);
 	}
 
-	if (ice_sriov_free_msix_res(pf))
-		dev_err(dev, "Failed to free MSIX resources used by SR-IOV\n");
-
 	vfs->num_qps_per = 0;
 	ice_free_vf_entries(pf);
 
@@ -371,40 +348,6 @@ void ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector)
 	q_vector->reg_idx = vf->first_vector_idx + q_vector->vf_reg_idx;
 }
 
-/**
- * ice_sriov_set_msix_res - Set any used MSIX resources
- * @pf: pointer to PF structure
- * @num_msix_needed: number of MSIX vectors needed for all SR-IOV VFs
- *
- * This function allows SR-IOV resources to be taken from the end of the PF's
- * allowed HW MSIX vectors so that the irq_tracker will not be affected. We
- * just set the pf->sriov_base_vector and return success.
- *
- * If there are not enough resources available, return an error. This should
- * always be caught by ice_set_per_vf_res().
- *
- * Return 0 on success, and -EINVAL when there are not enough MSIX vectors
- * in the PF's space available for SR-IOV.
- */
-static int ice_sriov_set_msix_res(struct ice_pf *pf, u16 num_msix_needed)
-{
-	u16 total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
-	int vectors_used = ice_get_max_used_msix_vector(pf);
-	int sriov_base_vector;
-
-	sriov_base_vector = total_vectors - num_msix_needed;
-
-	/* make sure we only grab irq_tracker entries from the list end and
-	 * that we have enough available MSIX vectors
-	 */
-	if (sriov_base_vector < vectors_used)
-		return -EINVAL;
-
-	pf->sriov_base_vector = sriov_base_vector;
-
-	return 0;
-}
-
 /**
  * ice_set_per_vf_res - check if vectors and queues are available
  * @pf: pointer to the PF structure
@@ -429,11 +372,9 @@ static int ice_sriov_set_msix_res(struct ice_pf *pf, u16 num_msix_needed)
  */
 static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 {
-	int vectors_used = ice_get_max_used_msix_vector(pf);
 	u16 num_msix_per_vf, num_txq, num_rxq, avail_qs;
 	int msix_avail_per_vf, msix_avail_for_sriov;
 	struct device *dev = ice_pf_to_dev(pf);
-	int err;
 
 	lockdep_assert_held(&pf->vfs.table_lock);
 
@@ -441,8 +382,7 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 		return -EINVAL;
 
 	/* determine MSI-X resources per VF */
-	msix_avail_for_sriov = pf->hw.func_caps.common_cap.num_msix_vectors -
-		vectors_used;
+	msix_avail_for_sriov = pf->virt_irq_tracker.num_entries;
 	msix_avail_per_vf = msix_avail_for_sriov / num_vfs;
 	if (msix_avail_per_vf >= ICE_NUM_VF_MSIX_MED) {
 		num_msix_per_vf = ICE_NUM_VF_MSIX_MED;
@@ -481,13 +421,6 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 		return -ENOSPC;
 	}
 
-	err = ice_sriov_set_msix_res(pf, num_msix_per_vf * num_vfs);
-	if (err) {
-		dev_err(dev, "Unable to set MSI-X resources for %d VFs, err %d\n",
-			num_vfs, err);
-		return err;
-	}
-
 	/* only allow equal Tx/Rx queue count (i.e. queue pairs) */
 	pf->vfs.num_qps_per = min_t(int, num_txq, num_rxq);
 	pf->vfs.num_msix_per = num_msix_per_vf;
@@ -497,52 +430,6 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 	return 0;
 }
 
-/**
- * ice_sriov_get_irqs - get irqs for SR-IOV usacase
- * @pf: pointer to PF structure
- * @needed: number of irqs to get
- *
- * This returns the first MSI-X vector index in PF space that is used by this
- * VF. This index is used when accessing PF relative registers such as
- * GLINT_VECT2FUNC and GLINT_DYN_CTL.
- * This will always be the OICR index in the AVF driver so any functionality
- * using vf->first_vector_idx for queue configuration_id: id of VF which will
- * use this irqs
- *
- * Only SRIOV specific vectors are tracked in sriov_irq_bm. SRIOV vectors are
- * allocated from the end of global irq index. First bit in sriov_irq_bm means
- * last irq index etc. It simplifies extension of SRIOV vectors.
- * They will be always located from sriov_base_vector to the last irq
- * index. While increasing/decreasing sriov_base_vector can be moved.
- */
-static int ice_sriov_get_irqs(struct ice_pf *pf, u16 needed)
-{
-	int res = bitmap_find_next_zero_area(pf->sriov_irq_bm,
-					     pf->sriov_irq_size, 0, needed, 0);
-	/* conversion from number in bitmap to global irq index */
-	int index = pf->sriov_irq_size - res - needed;
-
-	if (res >= pf->sriov_irq_size || index < pf->sriov_base_vector)
-		return -ENOENT;
-
-	bitmap_set(pf->sriov_irq_bm, res, needed);
-	return index;
-}
-
-/**
- * ice_sriov_free_irqs - free irqs used by the VF
- * @pf: pointer to PF structure
- * @vf: pointer to VF structure
- */
-static void ice_sriov_free_irqs(struct ice_pf *pf, struct ice_vf *vf)
-{
-	/* Move back from first vector index to first index in bitmap */
-	int bm_i = pf->sriov_irq_size - vf->first_vector_idx - vf->num_msix;
-
-	bitmap_clear(pf->sriov_irq_bm, bm_i, vf->num_msix);
-	vf->first_vector_idx = 0;
-}
-
 /**
  * ice_init_vf_vsi_res - initialize/setup VF VSI resources
  * @vf: VF to initialize/setup the VSI for
@@ -556,7 +443,7 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 	struct ice_vsi *vsi;
 	int err;
 
-	vf->first_vector_idx = ice_sriov_get_irqs(pf, vf->num_msix);
+	vf->first_vector_idx = ice_virt_get_irqs(pf, vf->num_msix);
 	if (vf->first_vector_idx < 0)
 		return -ENOMEM;
 
@@ -856,16 +743,10 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
  */
 static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 {
-	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	int ret;
 
-	pf->sriov_irq_bm = bitmap_zalloc(total_vectors, GFP_KERNEL);
-	if (!pf->sriov_irq_bm)
-		return -ENOMEM;
-	pf->sriov_irq_size = total_vectors;
-
 	/* Disable global interrupt 0 so we don't try to handle the VFLR. */
 	wr32(hw, GLINT_DYN_CTL(pf->oicr_irq.index),
 	     ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S);
@@ -918,7 +799,6 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	/* rearm interrupts here */
 	ice_irq_dynamic_ena(hw, NULL, NULL);
 	clear_bit(ICE_OICR_INTR_DIS, pf->state);
-	bitmap_free(pf->sriov_irq_bm);
 	return ret;
 }
 
@@ -992,16 +872,7 @@ u32 ice_sriov_get_vf_total_msix(struct pci_dev *pdev)
 {
 	struct ice_pf *pf = pci_get_drvdata(pdev);
 
-	return pf->sriov_irq_size - ice_get_max_used_msix_vector(pf);
-}
-
-static int ice_sriov_move_base_vector(struct ice_pf *pf, int move)
-{
-	if (pf->sriov_base_vector - move < ice_get_max_used_msix_vector(pf))
-		return -ENOMEM;
-
-	pf->sriov_base_vector -= move;
-	return 0;
+	return pf->virt_irq_tracker.num_entries;
 }
 
 static void ice_sriov_remap_vectors(struct ice_pf *pf, u16 restricted_id)
@@ -1020,7 +891,8 @@ static void ice_sriov_remap_vectors(struct ice_pf *pf, u16 restricted_id)
 			continue;
 
 		ice_dis_vf_mappings(tmp_vf);
-		ice_sriov_free_irqs(pf, tmp_vf);
+		ice_virt_free_irqs(pf, tmp_vf->first_vector_idx,
+				   tmp_vf->num_msix);
 
 		vf_ids[to_remap] = tmp_vf->vf_id;
 		to_remap += 1;
@@ -1032,7 +904,7 @@ static void ice_sriov_remap_vectors(struct ice_pf *pf, u16 restricted_id)
 			continue;
 
 		tmp_vf->first_vector_idx =
-			ice_sriov_get_irqs(pf, tmp_vf->num_msix);
+			ice_virt_get_irqs(pf, tmp_vf->num_msix);
 		/* there is no need to rebuild VSI as we are only changing the
 		 * vector indexes not amount of MSI-X or queues
 		 */
@@ -1105,20 +977,15 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	prev_msix = vf->num_msix;
 	prev_queues = vf->num_vf_qs;
 
-	if (ice_sriov_move_base_vector(pf, msix_vec_count - prev_msix)) {
-		ice_put_vf(vf);
-		return -ENOSPC;
-	}
-
 	ice_dis_vf_mappings(vf);
-	ice_sriov_free_irqs(pf, vf);
+	ice_virt_free_irqs(pf, vf->first_vector_idx, vf->num_msix);
 
 	/* Remap all VFs beside the one is now configured */
 	ice_sriov_remap_vectors(pf, vf->vf_id);
 
 	vf->num_msix = msix_vec_count;
 	vf->num_vf_qs = queues;
-	vf->first_vector_idx = ice_sriov_get_irqs(pf, vf->num_msix);
+	vf->first_vector_idx = ice_virt_get_irqs(pf, vf->num_msix);
 	if (vf->first_vector_idx < 0)
 		goto unroll;
 
@@ -1147,7 +1014,8 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 
 	vf->num_msix = prev_msix;
 	vf->num_vf_qs = prev_queues;
-	vf->first_vector_idx = ice_sriov_get_irqs(pf, vf->num_msix);
+
+	vf->first_vector_idx = ice_virt_get_irqs(pf, vf->num_msix);
 	if (vf->first_vector_idx < 0) {
 		ice_put_vf(vf);
 		return -EINVAL;
-- 
2.42.0


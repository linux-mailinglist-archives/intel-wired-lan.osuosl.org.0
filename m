Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F70E6FB074
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 14:44:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94BC28427A;
	Mon,  8 May 2023 12:44:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94BC28427A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683549858;
	bh=nDLSZkVtte4Lx94vH+HOifyRpARl5rqZ+aQWp2fRyxY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EFsM7Zt8IjT+6jIFJrQ5x5Y4i6J0x+asY+SS7bHrhmlOZxjznhy7oW0kVtHBbgCn2
	 mIUdYJWk2Hf6N/zlt4f5yFgSK74F/bQAKj8R6qsaLYWGQnvTgZdD1P2F2DycdKNBkU
	 ejuN7SW6eFij4C9WbXGTajqBmgxJL4NwCDAkz6iyPaDUdC2+f3hce7BYTQmrHFogFw
	 qWDIjw+j1gcVOGe6Dca97lJiKYJFG/Hu9EXFwmYAuTh+onlM1NAlEVMRi/WVMrZ0us
	 3VA3yj1rtn8Psk5h7ma0cC/IDtuzT4Bxsk+qMio4y260uMOn1UsOBXmiAgEJHL6p6R
	 GGk96lYmDD7gw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3g90etvK_2ZR; Mon,  8 May 2023 12:44:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11D918141B;
	Mon,  8 May 2023 12:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11D918141B
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 472FA1BF364
 for <intel-wired-lan@osuosl.org>; Mon,  8 May 2023 12:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2CD70400EF
 for <intel-wired-lan@osuosl.org>; Mon,  8 May 2023 12:43:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CD70400EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ycDDb1RmVaHq for <intel-wired-lan@osuosl.org>;
 Mon,  8 May 2023 12:43:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9A25400DC
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B9A25400DC
 for <intel-wired-lan@osuosl.org>; Mon,  8 May 2023 12:43:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="349665178"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="349665178"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:43:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="676048027"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="676048027"
Received: from nimitz.igk.intel.com ([10.102.21.231])
 by orsmga006.jf.intel.com with ESMTP; 08 May 2023 05:43:48 -0700
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  8 May 2023 14:43:21 +0200
Message-Id: <20230508124321.2927867-9-piotr.raczynski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230508124321.2927867-1-piotr.raczynski@intel.com>
References: <20230508124321.2927867-1-piotr.raczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683549831; x=1715085831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jOYKUwRMuSK9ce3qcTNSZ5C4plHLk41BuiekRzAHQBQ=;
 b=PVR6KFcN1myrS4/7UMNC/67Zis2lRs3J6k2EJcjW+wwbG3Lf7Vxw2BWe
 ZJVYwPVF1SMDyV1pBvnI/2TJnRI4p3oSfY6xnfuqGd8gx5sdouS4u2lpe
 CuUXgQOY2qNIaL94X9x3oRgO8PFzH/9w3ZFdM62wfLForPvrcI81pa6ed
 P3oIk5aiDyO3CWiOD3WoITjdcemBOmOPyDMQ2B+VaCxUUCAd4Fxjpergu
 mNGHAmZ68jaNMozM2Kxz+xoJ+yUH/A/uXyWP3aAtYJsFTWL8R0S8EA84S
 EbLuWzU794G3ADQ25hLN1n3LRQzwbirklOjSzCgO2fpnhRw+coAF/VTUX
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PVR6KFcN
Subject: [Intel-wired-lan] [PATCH net-next v4 8/8] ice: add dynamic
 interrupt allocation
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, simon.horman@corigine.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently driver can only allocate interrupt vectors during init phase by
calling pci_alloc_irq_vectors. Change that and make use of new
pci_msix_alloc_irq_at/pci_msix_free_irq API and enable to allocate and free
more interrupts after MSIX has been enabled. Since not all platforms
supports dynamic allocation, check it with pci_msix_can_alloc_dyn.

Extend the tracker to keep track how many interrupts are allocated
initially so when all such vectors are already used, additional interrupts
are automatically allocated dynamically. Remember each interrupt allocation
method to then free appropriately. Since some features may require
interrupts allocated dynamically add appropriate VSI flag and take it into
account when allocating new interrupt.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h       |   3 +
 drivers/net/ethernet/intel/ice/ice_base.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_idc.c   |   2 +-
 drivers/net/ethernet/intel/ice/ice_irq.c   | 109 ++++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_irq.h   |   5 +-
 drivers/net/ethernet/intel/ice/ice_main.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c |   5 +-
 7 files changed, 107 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 42236f315bcb..8b016511561f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -339,6 +339,9 @@ struct ice_vsi {
 	u32 rx_buf_failed;
 	u32 rx_page_failed;
 	u16 num_q_vectors;
+	/* tell if only dynamic irq allocation is allowed */
+	bool irq_dyn_alloc;
+
 	enum ice_vsi_type type;
 	u16 vsi_num;			/* HW (absolute) index of this VSI */
 	u16 idx;			/* software index in pf->vsi[] */
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 7dd7a0f32471..998dc7d81e51 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -133,7 +133,7 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
 		}
 	}
 
-	q_vector->irq = ice_alloc_irq(pf);
+	q_vector->irq = ice_alloc_irq(pf, vsi->irq_dyn_alloc);
 	if (q_vector->irq.index < 0) {
 		kfree(q_vector);
 		return -ENOMEM;
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index bc016bb4440c..145b27f2a4ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -250,7 +250,7 @@ static int ice_alloc_rdma_qvectors(struct ice_pf *pf)
 			struct msix_entry *entry = &pf->msix_entries[i];
 			struct msi_map map;
 
-			map = ice_alloc_irq(pf);
+			map = ice_alloc_irq(pf, false);
 			if (map.index < 0)
 				break;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index 1713347c577f..ad82ff7d1995 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -9,11 +9,14 @@
  * ice_init_irq_tracker - initialize interrupt tracker
  * @pf: board private structure
  * @max_vectors: maximum number of vectors that tracker can hold
+ * @num_static: number of preallocated interrupts
  */
 static void
-ice_init_irq_tracker(struct ice_pf *pf, unsigned int max_vectors)
+ice_init_irq_tracker(struct ice_pf *pf, unsigned int max_vectors,
+		     unsigned int num_static)
 {
 	pf->irq_tracker.num_entries = max_vectors;
+	pf->irq_tracker.num_static = num_static;
 	xa_init_flags(&pf->irq_tracker.entries, XA_FLAGS_ALLOC);
 }
 
@@ -42,6 +45,7 @@ static void ice_free_irq_res(struct ice_pf *pf, u16 index)
 /**
  * ice_get_irq_res - get an interrupt resource
  * @pf: board private structure
+ * @dyn_only: force entry to be dynamically allocated
  *
  * Allocate new irq entry in the free slot of the tracker. Since xarray
  * is used, always allocate new entry at the lowest possible index. Set
@@ -49,10 +53,11 @@ static void ice_free_irq_res(struct ice_pf *pf, u16 index)
  *
  * Returns allocated irq entry or NULL on failure.
  */
-static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf)
+static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf, bool dyn_only)
 {
 	struct xa_limit limit = { .max = pf->irq_tracker.num_entries,
 				  .min = 0 };
+	unsigned int num_static = pf->irq_tracker.num_static;
 	struct ice_irq_entry *entry;
 	unsigned int index;
 	int ret;
@@ -61,6 +66,10 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf)
 	if (!entry)
 		return NULL;
 
+	/* skip preallocated entries if the caller says so */
+	if (dyn_only)
+		limit.min = num_static;
+
 	ret = xa_alloc(&pf->irq_tracker.entries, &index, entry, limit,
 		       GFP_KERNEL);
 
@@ -69,6 +78,7 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf)
 		entry = NULL;
 	} else {
 		entry->index = index;
+		entry->dynamic = index >= num_static;
 	}
 
 	return entry;
@@ -241,14 +251,20 @@ void ice_clear_interrupt_scheme(struct ice_pf *pf)
  */
 int ice_init_interrupt_scheme(struct ice_pf *pf)
 {
-	int vectors;
+	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
+	int vectors, max_vectors;
 
 	vectors = ice_ena_msix_range(pf);
 
 	if (vectors < 0)
-		return vectors;
+		return -ENOMEM;
+
+	if (pci_msix_can_alloc_dyn(pf->pdev))
+		max_vectors = total_vectors;
+	else
+		max_vectors = vectors;
 
-	ice_init_irq_tracker(pf, vectors);
+	ice_init_irq_tracker(pf, max_vectors, vectors);
 
 	return 0;
 }
@@ -256,33 +272,55 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 /**
  * ice_alloc_irq - Allocate new interrupt vector
  * @pf: board private structure
+ * @dyn_only: force dynamic allocation of the interrupt
  *
  * Allocate new interrupt vector for a given owner id.
  * return struct msi_map with interrupt details and track
  * allocated interrupt appropriately.
  *
- * This function mimics individual interrupt allocation,
- * even interrupts are actually already allocated with
- * pci_alloc_irq_vectors. Individual allocation helps
- * to track interrupts and simplifies interrupt related
- * handling.
+ * This function reserves new irq entry from the irq_tracker.
+ * if according to the tracker information all interrupts that
+ * were allocated with ice_pci_alloc_irq_vectors are already used
+ * and dynamically allocated interrupts are supported then new
+ * interrupt will be allocated with pci_msix_alloc_irq_at.
+ *
+ * Some callers may only support dynamically allocated interrupts.
+ * This is indicated with dyn_only flag.
  *
  * On failure, return map with negative .index. The caller
  * is expected to check returned map index.
  *
  */
-struct msi_map ice_alloc_irq(struct ice_pf *pf)
+struct msi_map ice_alloc_irq(struct ice_pf *pf, bool dyn_only)
 {
+	int sriov_base_vector = pf->sriov_base_vector;
 	struct msi_map map = { .index = -ENOENT };
+	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_irq_entry *entry;
 
-	entry = ice_get_irq_res(pf);
+	entry = ice_get_irq_res(pf, dyn_only);
 	if (!entry)
 		return map;
 
-	map.index = entry->index;
-	map.virq = pci_irq_vector(pf->pdev, map.index);
+	/* fail if we're about to violate SRIOV vectors space */
+	if (sriov_base_vector && entry->index >= sriov_base_vector)
+		goto exit_free_res;
+
+	if (pci_msix_can_alloc_dyn(pf->pdev) && entry->dynamic) {
+		map = pci_msix_alloc_irq_at(pf->pdev, entry->index, NULL);
+		if (map.index < 0)
+			goto exit_free_res;
+		dev_dbg(dev, "allocated new irq at index %d\n", map.index);
+	} else {
+		map.index = entry->index;
+		map.virq = pci_irq_vector(pf->pdev, map.index);
+	}
+
+	return map;
 
+exit_free_res:
+	dev_err(dev, "Could not allocate irq at idx %d\n", entry->index);
+	ice_free_irq_res(pf, entry->index);
 	return map;
 }
 
@@ -291,9 +329,50 @@ struct msi_map ice_alloc_irq(struct ice_pf *pf)
  * @pf: board private structure
  * @map: map with interrupt details
  *
- * Remove allocated interrupt from the interrupt tracker.
+ * Remove allocated interrupt from the interrupt tracker. If interrupt was
+ * allocated dynamically, free respective interrupt vector.
  */
 void ice_free_irq(struct ice_pf *pf, struct msi_map map)
 {
+	struct ice_irq_entry *entry;
+
+	entry = xa_load(&pf->irq_tracker.entries, map.index);
+
+	if (!entry) {
+		dev_err(ice_pf_to_dev(pf), "Failed to get MSIX interrupt entry at index %d",
+			map.index);
+		return;
+	}
+
+	dev_dbg(ice_pf_to_dev(pf), "Free irq at index %d\n", map.index);
+
+	if (entry->dynamic)
+		pci_msix_free_irq(pf->pdev, map);
+
 	ice_free_irq_res(pf, map.index);
 }
+
+/**
+ * ice_get_max_used_msix_vector - Get the max used interrupt vector
+ * @pf: board private structure
+ *
+ * Return index of maximum used interrupt vectors with respect to the
+ * beginning of the MSIX table. Take into account that some interrupts
+ * may have been dynamically allocated after MSIX was initially enabled.
+ */
+int ice_get_max_used_msix_vector(struct ice_pf *pf)
+{
+	unsigned long start, index, max_idx;
+	void *entry;
+
+	/* Treat all preallocated interrupts as used */
+	start = pf->irq_tracker.num_static;
+	max_idx = start - 1;
+
+	xa_for_each_start(&pf->irq_tracker.entries, index, entry, start) {
+		if (index > max_idx)
+			max_idx = index;
+	}
+
+	return max_idx;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.h b/drivers/net/ethernet/intel/ice/ice_irq.h
index da5cdb1f0d3a..f35efc08575e 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.h
+++ b/drivers/net/ethernet/intel/ice/ice_irq.h
@@ -6,17 +6,20 @@
 
 struct ice_irq_entry {
 	unsigned int index;
+	bool dynamic;	/* allocation type flag */
 };
 
 struct ice_irq_tracker {
 	struct xarray entries;
 	u16 num_entries;	/* total vectors available */
+	u16 num_static;	/* preallocated entries */
 };
 
 int ice_init_interrupt_scheme(struct ice_pf *pf);
 void ice_clear_interrupt_scheme(struct ice_pf *pf);
 
-struct msi_map ice_alloc_irq(struct ice_pf *pf);
+struct msi_map ice_alloc_irq(struct ice_pf *pf, bool dyn_only);
 void ice_free_irq(struct ice_pf *pf, struct msi_map map);
+int ice_get_max_used_msix_vector(struct ice_pf *pf);
 
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 7e905c3b8a1d..7c04057c524c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3305,7 +3305,7 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 		goto skip_req_irq;
 
 	/* reserve one vector in irq_tracker for misc interrupts */
-	oicr_irq = ice_alloc_irq(pf);
+	oicr_irq = ice_alloc_irq(pf, false);
 	if (oicr_irq.index < 0)
 		return oicr_irq.index;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 68b7f6f0bb6b..687740bff073 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -418,7 +418,7 @@ int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector)
 static int ice_sriov_set_msix_res(struct ice_pf *pf, u16 num_msix_needed)
 {
 	u16 total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
-	int vectors_used = pf->irq_tracker.num_entries;
+	int vectors_used = ice_get_max_used_msix_vector(pf);
 	int sriov_base_vector;
 
 	sriov_base_vector = total_vectors - num_msix_needed;
@@ -458,6 +458,7 @@ static int ice_sriov_set_msix_res(struct ice_pf *pf, u16 num_msix_needed)
  */
 static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 {
+	int vectors_used = ice_get_max_used_msix_vector(pf);
 	u16 num_msix_per_vf, num_txq, num_rxq, avail_qs;
 	int msix_avail_per_vf, msix_avail_for_sriov;
 	struct device *dev = ice_pf_to_dev(pf);
@@ -470,7 +471,7 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 
 	/* determine MSI-X resources per VF */
 	msix_avail_for_sriov = pf->hw.func_caps.common_cap.num_msix_vectors -
-		pf->irq_tracker.num_entries;
+		vectors_used;
 	msix_avail_per_vf = msix_avail_for_sriov / num_vfs;
 	if (msix_avail_per_vf >= ICE_NUM_VF_MSIX_MED) {
 		num_msix_per_vf = ICE_NUM_VF_MSIX_MED;
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

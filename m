Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6DD6C3189
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 13:22:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68E7E81F68;
	Tue, 21 Mar 2023 12:22:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68E7E81F68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679401331;
	bh=Lfv/aI0S9nFQBpkQhP8WaAji8O+eoCDyOzlik0DMBiQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b5fI8hdwBofucPL0KgFVGK1yet8S2GYI3juUnAMsn6lUrT4otUprRzd0A/TQ33iaK
	 MVCv2i+cHzkoFH03YTrXoXt6Yg2uKBx3lqYvctB9AN856oV7vA+qgyPvaPVAJT4fLc
	 C6hdiy+uHATMIvvTY6coKI77KadwJXEpOnSuZulMO4fn6AeEJNp250VDEUKlhplCAX
	 Y9nYRzSQT7F60sd7J8No5lO1+9W0FoTdWS4HJNBBOFdIrDvmIxs5r1RznSqj6Aa1iV
	 LT0x8pQRu06T404SMsqPnSkHvC+Jt13746HCgmFN2jEtFZ7rdQZ1QN79zoJ6I88bxu
	 bFF/mInhJPyxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CTmKTVs5eZpP; Tue, 21 Mar 2023 12:22:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66FEA81FAC;
	Tue, 21 Mar 2023 12:22:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66FEA81FAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E30391BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 12:21:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BEDFF610A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 12:21:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEDFF610A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Va8OYjhr-7gO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 12:21:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 024D960FFE
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 024D960FFE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 12:21:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="318578126"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="318578126"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 05:21:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="855673525"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="855673525"
Received: from nimitz.igk.intel.com ([10.102.21.231])
 by orsmga005.jf.intel.com with ESMTP; 21 Mar 2023 05:21:52 -0700
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Mar 2023 13:21:36 +0100
Message-Id: <20230321122138.3151670-7-piotr.raczynski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230321122138.3151670-1-piotr.raczynski@intel.com>
References: <20230321122138.3151670-1-piotr.raczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679401316; x=1710937316;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z4na5qk2m6aKK8j6IqaV0/Jo/eGLi4EJfD4fBo6s7ZE=;
 b=n61LN2gjlUwLQpIqz2147Ujmy5pvIVwXA1cU2s1INr1d/wJd+SoZ7p6K
 QxXxTLskVAiecT7Q66dKvgo+haaaqJfuQgqQh0EaQW0WmT58AbY2Y5l2e
 WPJiQ0OtOMnTx9z+LmripS7/MSaGJ/XQtT9IbV277mCNrx/00H1EjoLXX
 lL1KXZZU7S9BB0+x6FKGuVZMeiKM+zfPbgImlsHjy6tub+4JKRHnWyBAc
 C8Lr7PG4CrDnB0WcCxhSxWOMBa8M4aufeYiIkiFNM0Hsfh+gK0bfNuAoB
 7rzqnzNmc5mPBTZVGr0xWO27726fhzJz9JitOghBUOO0z8PF/uh+8V6hO
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n61LN2gj
Subject: [Intel-wired-lan] [PATCH net-next v1 6/8] ice: add individual
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
 jesse.brandeburg@intel.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently interrupt allocations, depending on a feature are distributed
in batches. Also, after allocation there is a series of operations that
distributes per irq settings through that batch of interrupts.

Although driver does not yet support dynamic interrupt allocation, keep
allocated interrupts in a pool and add allocation abstraction logic to
make code more flexible. Keep per interrupt information in the
ice_q_vector structure, which yields ice_vsi::base_vector redundant.
Also, as a result there are a few functions that can be removed.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  11 +-
 drivers/net/ethernet/intel/ice/ice_arfs.c    |   5 +-
 drivers/net/ethernet/intel/ice/ice_base.c    |  36 ++-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_idc.c     |  45 ++--
 drivers/net/ethernet/intel/ice/ice_irq.c     |  46 +++-
 drivers/net/ethernet/intel/ice/ice_irq.h     |   3 +
 drivers/net/ethernet/intel/ice/ice_lib.c     | 225 ++-----------------
 drivers/net/ethernet/intel/ice/ice_lib.h     |   4 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |  44 ++--
 drivers/net/ethernet/intel/ice/ice_ptp.c     |   2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c   |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c     |   5 +-
 13 files changed, 154 insertions(+), 276 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2dc180385976..89d80a2b5feb 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -105,10 +105,6 @@
 #define ICE_Q_WAIT_MAX_RETRY	(5 * ICE_Q_WAIT_RETRY_LIMIT)
 #define ICE_MAX_LG_RSS_QS	256
 #define ICE_RES_VALID_BIT	0x8000
-#define ICE_RES_MISC_VEC_ID	(ICE_RES_VALID_BIT - 1)
-#define ICE_RES_RDMA_VEC_ID	(ICE_RES_MISC_VEC_ID - 1)
-/* All VF control VSIs share the same IRQ, so assign a unique ID for them */
-#define ICE_RES_VF_CTRL_VEC_ID	(ICE_RES_RDMA_VEC_ID - 1)
 #define ICE_INVAL_Q_INDEX	0xffff
 
 #define ICE_MAX_RXQS_PER_TC		256	/* Used when setting VSI context per TC Rx queues */
@@ -349,7 +345,6 @@ struct ice_vsi {
 	u32 rx_buf_failed;
 	u32 rx_page_failed;
 	u16 num_q_vectors;
-	u16 base_vector;		/* IRQ base for OS reserved vectors */
 	enum ice_vsi_type type;
 	u16 vsi_num;			/* HW (absolute) index of this VSI */
 	u16 idx;			/* software index in pf->vsi[] */
@@ -480,6 +475,7 @@ struct ice_q_vector {
 	char name[ICE_INT_NAME_STR_LEN];
 
 	u16 total_events;	/* net_dim(): number of interrupts processed */
+	struct msi_map irq;
 } ____cacheline_internodealigned_in_smp;
 
 enum ice_pf_flags {
@@ -585,8 +581,7 @@ struct ice_pf {
 
 	u32 hw_csum_rx_error;
 	u32 oicr_err_reg;
-	u16 oicr_idx;		/* Other interrupt cause MSIX vector index */
-	u16 num_avail_sw_msix;	/* remaining MSIX SW vectors left unclaimed */
+	struct msi_map oicr_irq;	/* Other interrupt cause MSIX vector */
 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
@@ -683,7 +678,7 @@ ice_irq_dynamic_ena(struct ice_hw *hw, struct ice_vsi *vsi,
 		    struct ice_q_vector *q_vector)
 {
 	u32 vector = (vsi && q_vector) ? q_vector->reg_idx :
-				((struct ice_pf *)hw->back)->oicr_idx;
+				((struct ice_pf *)hw->back)->oicr_irq.index;
 	int itr = ICE_ITR_NONE;
 	u32 val;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index 59146e4bdf3b..a37aa16de281 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -634,7 +634,7 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
 {
 	struct net_device *netdev;
 	struct ice_pf *pf;
-	int base_idx, i;
+	int i;
 
 	if (!vsi || vsi->type != ICE_VSI_PF)
 		return 0;
@@ -651,10 +651,9 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
 	if (unlikely(!netdev->rx_cpu_rmap))
 		return -EINVAL;
 
-	base_idx = vsi->base_vector;
 	ice_for_each_q_vector(vsi, i)
 		if (irq_cpu_rmap_add(netdev->rx_cpu_rmap,
-				     pci_irq_vector(pf->pdev, base_idx + i))) {
+				     vsi->q_vectors[i]->irq.virq)) {
 			ice_free_cpu_rx_rmap(vsi);
 			return -EINVAL;
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 1911d644dfa8..e5db23eaa3f4 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -118,9 +118,31 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
 	q_vector->rx.itr_mode = ITR_DYNAMIC;
 	q_vector->tx.type = ICE_TX_CONTAINER;
 	q_vector->rx.type = ICE_RX_CONTAINER;
+	q_vector->irq.index = -ENOENT;
 
-	if (vsi->type == ICE_VSI_VF)
+	if (vsi->type == ICE_VSI_VF) {
+		q_vector->reg_idx = ice_calc_vf_reg_idx(vsi->vf, q_vector);
 		goto out;
+	} else if (vsi->type == ICE_VSI_CTRL && vsi->vf) {
+		struct ice_vsi *ctrl_vsi = ice_get_vf_ctrl_vsi(pf, vsi);
+
+		if (ctrl_vsi) {
+			if (unlikely(!ctrl_vsi->q_vectors))
+				return -ENOENT;
+			q_vector->irq = ctrl_vsi->q_vectors[0]->irq;
+			goto skip_alloc;
+		}
+	}
+
+	q_vector->irq = ice_alloc_irq(pf);
+	if (q_vector->irq.index < 0) {
+		kfree(q_vector);
+		return -ENOMEM;
+	}
+
+skip_alloc:
+	q_vector->reg_idx = q_vector->irq.index;
+
 	/* only set affinity_mask if the CPU is online */
 	if (cpu_online(v_idx))
 		cpumask_set_cpu(v_idx, &q_vector->affinity_mask);
@@ -168,6 +190,18 @@ static void ice_free_q_vector(struct ice_vsi *vsi, int v_idx)
 	if (vsi->netdev)
 		netif_napi_del(&q_vector->napi);
 
+	/* release MSIX interrupt if q_vector had interrupt allocated */
+	if (q_vector->irq.index < 0)
+		goto free_q_vector;
+
+	/* only free last VF ctrl vsi interrupt */
+	if (vsi->type == ICE_VSI_CTRL && vsi->vf &&
+	    ice_get_vf_ctrl_vsi(pf, vsi))
+		goto free_q_vector;
+
+	ice_free_irq(pf, q_vector->irq);
+
+free_q_vector:
 	devm_kfree(dev, q_vector);
 	vsi->q_vectors[v_idx] = NULL;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f86e814354a3..8407c7175cf6 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -956,7 +956,7 @@ static u64 ice_intr_test(struct net_device *netdev)
 
 	netdev_info(netdev, "interrupt test\n");
 
-	wr32(&pf->hw, GLINT_DYN_CTL(pf->oicr_idx),
+	wr32(&pf->hw, GLINT_DYN_CTL(pf->oicr_irq.index),
 	     GLINT_DYN_CTL_SW_ITR_INDX_M |
 	     GLINT_DYN_CTL_INTENA_MSK_M |
 	     GLINT_DYN_CTL_SWINT_TRIG_M);
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 1000759505d7..bc016bb4440c 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -229,38 +229,33 @@ void ice_get_qos_params(struct ice_pf *pf, struct iidc_qos_params *qos)
 EXPORT_SYMBOL_GPL(ice_get_qos_params);
 
 /**
- * ice_reserve_rdma_qvector - Reserve vector resources for RDMA driver
+ * ice_alloc_rdma_qvectors - Allocate vector resources for RDMA driver
  * @pf: board private structure to initialize
  */
-static int ice_reserve_rdma_qvector(struct ice_pf *pf)
+static int ice_alloc_rdma_qvectors(struct ice_pf *pf)
 {
 	if (ice_is_rdma_ena(pf)) {
-		int index, i;
-
-		index = ice_get_res(pf, pf->irq_tracker, pf->num_rdma_msix,
-				    ICE_RES_RDMA_VEC_ID);
-		if (index < 0)
-			return index;
+		int i;
 
 		pf->msix_entries = kcalloc(pf->num_rdma_msix,
 					   sizeof(*pf->msix_entries),
 						  GFP_KERNEL);
-		if (!pf->msix_entries) {
-			ice_free_res(pf->irq_tracker, pf->rdma_base_vector,
-				     ICE_RES_RDMA_VEC_ID);
+		if (!pf->msix_entries)
 			return -ENOMEM;
-		}
-
-		pf->num_avail_sw_msix -= pf->num_rdma_msix;
 
 		/* RDMA is the only user of pf->msix_entries array */
 		pf->rdma_base_vector = 0;
 
-		for (i = 0; i < pf->num_rdma_msix; i++, index++) {
+		for (i = 0; i < pf->num_rdma_msix; i++) {
 			struct msix_entry *entry = &pf->msix_entries[i];
+			struct msi_map map;
 
-			entry->entry = index;
-			entry->vector = pci_irq_vector(pf->pdev, index);
+			map = ice_alloc_irq(pf);
+			if (map.index < 0)
+				break;
+
+			entry->entry = map.index;
+			entry->vector = map.virq;
 		}
 	}
 	return 0;
@@ -272,15 +267,21 @@ static int ice_reserve_rdma_qvector(struct ice_pf *pf)
  */
 static void ice_free_rdma_qvector(struct ice_pf *pf)
 {
+	int i;
+
 	if (!pf->msix_entries)
 		return;
 
+	for (i = 0; i < pf->num_rdma_msix; i++) {
+		struct msi_map map;
+
+		map.index = pf->msix_entries[i].entry;
+		map.virq = pf->msix_entries[i].vector;
+		ice_free_irq(pf, map);
+	}
+
 	kfree(pf->msix_entries);
 	pf->msix_entries = NULL;
-
-	pf->num_avail_sw_msix -= pf->num_rdma_msix;
-	ice_free_res(pf->irq_tracker, pf->rdma_base_vector,
-		     ICE_RES_RDMA_VEC_ID);
 }
 
 /**
@@ -382,7 +383,7 @@ int ice_init_rdma(struct ice_pf *pf)
 	}
 
 	/* Reserve vector resources */
-	ret = ice_reserve_rdma_qvector(pf);
+	ret = ice_alloc_rdma_qvectors(pf);
 	if (ret < 0) {
 		dev_err(dev, "failed to reserve vectors for RDMA\n");
 		goto err_reserve_rdma_qvector;
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index f61be5d76373..ca1a1de26766 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -194,9 +194,53 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 	}
 
 	/* populate SW interrupts pool with number of OS granted IRQs. */
-	pf->num_avail_sw_msix = (u16)vectors;
 	pf->irq_tracker->num_entries = (u16)vectors;
 	pf->irq_tracker->end = pf->irq_tracker->num_entries;
 
 	return 0;
 }
+
+/**
+ * ice_alloc_irq - Allocate new interrupt vector
+ * @pf: board private structure
+ *
+ * Allocate new interrupt vector for a given owner id.
+ * return struct msi_map with interrupt details and track
+ * allocated interrupt appropriately.
+ *
+ * This function mimics individual interrupt allocation,
+ * even interrupts are actually already allocated with
+ * pci_alloc_irq_vectors. Individual allocation helps
+ * to track interrupts and simplifies interrupt related
+ * handling.
+ *
+ * On failure, return map with negative .index. The caller
+ * is expected to check returned map index.
+ *
+ */
+struct msi_map ice_alloc_irq(struct ice_pf *pf)
+{
+	struct msi_map map = { .index = -ENOENT };
+	int entry;
+
+	entry = ice_get_res(pf, pf->irq_tracker);
+	if (entry < 0)
+		return map;
+
+	map.index = entry;
+	map.virq = pci_irq_vector(pf->pdev, map.index);
+
+	return map;
+}
+
+/**
+ * ice_free_irq - Free interrupt vector
+ * @pf: board private structure
+ * @map: map with interrupt details
+ *
+ * Remove allocated interrupt from the interrupt tracker
+ */
+void ice_free_irq(struct ice_pf *pf, struct msi_map map)
+{
+	ice_free_res(pf->irq_tracker, map.index);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.h b/drivers/net/ethernet/intel/ice/ice_irq.h
index 82475162ab70..26e80dfe22b5 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.h
+++ b/drivers/net/ethernet/intel/ice/ice_irq.h
@@ -7,4 +7,7 @@
 int ice_init_interrupt_scheme(struct ice_pf *pf);
 void ice_clear_interrupt_scheme(struct ice_pf *pf);
 
+struct msi_map ice_alloc_irq(struct ice_pf *pf);
+void ice_free_irq(struct ice_pf *pf, struct msi_map map);
+
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f8c9c2c20e6d..fe908cf6da6a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1374,161 +1374,45 @@ static int ice_vsi_init(struct ice_vsi *vsi, u32 vsi_flags)
  * ice_free_res - free a block of resources
  * @res: pointer to the resource
  * @index: starting index previously returned by ice_get_res
- * @id: identifier to track owner
  *
  * Returns number of resources freed
  */
-int ice_free_res(struct ice_res_tracker *res, u16 index, u16 id)
+int ice_free_res(struct ice_res_tracker *res, u16 index)
 {
-	int count = 0;
-	int i;
-
 	if (!res || index >= res->end)
 		return -EINVAL;
 
-	id |= ICE_RES_VALID_BIT;
-	for (i = index; i < res->end && res->list[i] == id; i++) {
-		res->list[i] = 0;
-		count++;
-	}
-
-	return count;
-}
-
-/**
- * ice_search_res - Search the tracker for a block of resources
- * @res: pointer to the resource
- * @needed: size of the block needed
- * @id: identifier to track owner
- *
- * Returns the base item index of the block, or -ENOMEM for error
- */
-static int ice_search_res(struct ice_res_tracker *res, u16 needed, u16 id)
-{
-	u16 start = 0, end = 0;
-
-	if (needed > res->end)
-		return -ENOMEM;
-
-	id |= ICE_RES_VALID_BIT;
-
-	do {
-		/* skip already allocated entries */
-		if (res->list[end++] & ICE_RES_VALID_BIT) {
-			start = end;
-			if ((start + needed) > res->end)
-				break;
-		}
-
-		if (end == (start + needed)) {
-			int i = start;
-
-			/* there was enough, so assign it to the requestor */
-			while (i != end)
-				res->list[i++] = id;
-
-			return start;
-		}
-	} while (end < res->end);
+	res->list[index] = 0;
 
-	return -ENOMEM;
-}
-
-/**
- * ice_get_free_res_count - Get free count from a resource tracker
- * @res: Resource tracker instance
- */
-static u16 ice_get_free_res_count(struct ice_res_tracker *res)
-{
-	u16 i, count = 0;
-
-	for (i = 0; i < res->end; i++)
-		if (!(res->list[i] & ICE_RES_VALID_BIT))
-			count++;
-
-	return count;
+	return 0;
 }
 
 /**
- * ice_get_res - get a block of resources
+ * ice_get_res - get a resource from the tracker
  * @pf: board private structure
  * @res: pointer to the resource
- * @needed: size of the block needed
- * @id: identifier to track owner
  *
- * Returns the base item index of the block, or negative for error
+ * Returns the item index, or negative for error
  */
 int
-ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id)
+ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res)
 {
-	if (!res || !pf)
-		return -EINVAL;
+	u16 i;
 
-	if (!needed || needed > res->num_entries || id >= ICE_RES_VALID_BIT) {
-		dev_err(ice_pf_to_dev(pf), "param err: needed=%d, num_entries = %d id=0x%04x\n",
-			needed, res->num_entries, id);
+	if (!res || !pf)
 		return -EINVAL;
-	}
 
-	return ice_search_res(res, needed, id);
-}
-
-/**
- * ice_vsi_setup_vector_base - Set up the base vector for the given VSI
- * @vsi: ptr to the VSI
- *
- * This should only be called after ice_vsi_alloc_def() which allocates the
- * corresponding SW VSI structure and initializes num_queue_pairs for the
- * newly allocated VSI.
- *
- * Returns 0 on success or negative on failure
- */
-static int ice_vsi_setup_vector_base(struct ice_vsi *vsi)
-{
-	struct ice_pf *pf = vsi->back;
-	struct device *dev;
-	u16 num_q_vectors;
-	int base;
-
-	dev = ice_pf_to_dev(pf);
-	/* SRIOV doesn't grab irq_tracker entries for each VSI */
-	if (vsi->type == ICE_VSI_VF)
-		return 0;
-	if (vsi->type == ICE_VSI_CHNL)
-		return 0;
-
-	if (vsi->base_vector) {
-		dev_dbg(dev, "VSI %d has non-zero base vector %d\n",
-			vsi->vsi_num, vsi->base_vector);
-		return -EEXIST;
-	}
-
-	num_q_vectors = vsi->num_q_vectors;
-	/* reserve slots from OS requested IRQs */
-	if (vsi->type == ICE_VSI_CTRL && vsi->vf) {
-		struct ice_vsi *ctrl_vsi = ice_get_vf_ctrl_vsi(pf, vsi);
+	/* skip already allocated entries */
+	for (i = 0; i < res->end; i++)
+		if (!(res->list[i] & ICE_RES_VALID_BIT))
+			break;
 
-		if (ctrl_vsi)
-			base = ctrl_vsi->base_vector;
-		else
-			base = ice_get_res(pf, pf->irq_tracker,
-					   vsi->num_q_vectors,
-					   ICE_RES_VF_CTRL_VEC_ID);
+	if (i < res->end) {
+		res->list[i] = ICE_RES_VALID_BIT;
+		return i;
 	} else {
-		base = ice_get_res(pf, pf->irq_tracker, num_q_vectors,
-				   vsi->idx);
-	}
-
-	if (base < 0) {
-		dev_err(dev, "%d MSI-X interrupts available. %s %d failed to get %d MSI-X vectors\n",
-			ice_get_free_res_count(pf->irq_tracker),
-			ice_vsi_type_str(vsi->type), vsi->idx, num_q_vectors);
-		return -ENOENT;
+		return -ENOMEM;
 	}
-	vsi->base_vector = (u16)base;
-	pf->num_avail_sw_msix -= num_q_vectors;
-
-	return 0;
 }
 
 /**
@@ -2386,50 +2270,6 @@ static void ice_vsi_set_tc_cfg(struct ice_vsi *vsi)
 	ice_vsi_set_dcb_tc_cfg(vsi);
 }
 
-/**
- * ice_vsi_set_q_vectors_reg_idx - set the HW register index for all q_vectors
- * @vsi: VSI to set the q_vectors register index on
- */
-static int
-ice_vsi_set_q_vectors_reg_idx(struct ice_vsi *vsi)
-{
-	u16 i;
-
-	if (!vsi || !vsi->q_vectors)
-		return -EINVAL;
-
-	ice_for_each_q_vector(vsi, i) {
-		struct ice_q_vector *q_vector = vsi->q_vectors[i];
-
-		if (!q_vector) {
-			dev_err(ice_pf_to_dev(vsi->back), "Failed to set reg_idx on q_vector %d VSI %d\n",
-				i, vsi->vsi_num);
-			goto clear_reg_idx;
-		}
-
-		if (vsi->type == ICE_VSI_VF) {
-			struct ice_vf *vf = vsi->vf;
-
-			q_vector->reg_idx = ice_calc_vf_reg_idx(vf, q_vector);
-		} else {
-			q_vector->reg_idx =
-				q_vector->v_idx + vsi->base_vector;
-		}
-	}
-
-	return 0;
-
-clear_reg_idx:
-	ice_for_each_q_vector(vsi, i) {
-		struct ice_q_vector *q_vector = vsi->q_vectors[i];
-
-		if (q_vector)
-			q_vector->reg_idx = 0;
-	}
-
-	return -EINVAL;
-}
-
 /**
  * ice_cfg_sw_lldp - Config switch rules for LLDP packet handling
  * @vsi: the VSI being configured
@@ -2674,14 +2514,6 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 		if (ret)
 			goto unroll_vsi_init;
 
-		ret = ice_vsi_setup_vector_base(vsi);
-		if (ret)
-			goto unroll_alloc_q_vector;
-
-		ret = ice_vsi_set_q_vectors_reg_idx(vsi);
-		if (ret)
-			goto unroll_vector_base;
-
 		ret = ice_vsi_alloc_rings(vsi);
 		if (ret)
 			goto unroll_vector_base;
@@ -2732,10 +2564,6 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 		if (ret)
 			goto unroll_alloc_q_vector;
 
-		ret = ice_vsi_set_q_vectors_reg_idx(vsi);
-		if (ret)
-			goto unroll_vector_base;
-
 		ret = ice_vsi_alloc_ring_stats(vsi);
 		if (ret)
 			goto unroll_vector_base;
@@ -2768,8 +2596,6 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 
 unroll_vector_base:
 	/* reclaim SW interrupts back to the common pool */
-	ice_free_res(pf->irq_tracker, vsi->base_vector, vsi->idx);
-	pf->num_avail_sw_msix += vsi->num_q_vectors;
 unroll_alloc_q_vector:
 	ice_vsi_free_q_vectors(vsi);
 unroll_vsi_init:
@@ -2861,18 +2687,6 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 	 * many interrupts each VF needs. SR-IOV MSIX resources are also
 	 * cleared in the same manner.
 	 */
-	if (vsi->type == ICE_VSI_CTRL && vsi->vf) {
-		struct ice_vsi *ctrl_vsi = ice_get_vf_ctrl_vsi(pf, vsi);
-
-		if (!ctrl_vsi)
-			ice_free_res(pf->irq_tracker, vsi->base_vector,
-				     ICE_RES_VF_CTRL_VEC_ID);
-	} else if (vsi->type != ICE_VSI_VF) {
-		/* reclaim SW interrupts back to the common pool */
-		ice_free_res(pf->irq_tracker, vsi->base_vector, vsi->idx);
-		pf->num_avail_sw_msix += vsi->num_q_vectors;
-		vsi->base_vector = 0;
-	}
 
 	if (vsi->type == ICE_VSI_VF &&
 	    vsi->agg_node && vsi->agg_node->valid)
@@ -2989,7 +2803,6 @@ static void ice_vsi_release_msix(struct ice_vsi *vsi)
 void ice_vsi_free_irq(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
-	int base = vsi->base_vector;
 	int i;
 
 	if (!vsi->q_vectors || !vsi->irqs_ready)
@@ -3003,10 +2816,9 @@ void ice_vsi_free_irq(struct ice_vsi *vsi)
 	ice_free_cpu_rx_rmap(vsi);
 
 	ice_for_each_q_vector(vsi, i) {
-		u16 vector = i + base;
 		int irq_num;
 
-		irq_num = pci_irq_vector(pf->pdev, vector);
+		irq_num = vsi->q_vectors[i]->irq.virq;
 
 		/* free only the irqs that were actually requested */
 		if (!vsi->q_vectors[i] ||
@@ -3138,7 +2950,6 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
  */
 void ice_vsi_dis_irq(struct ice_vsi *vsi)
 {
-	int base = vsi->base_vector;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	u32 val;
@@ -3185,7 +2996,7 @@ void ice_vsi_dis_irq(struct ice_vsi *vsi)
 		return;
 
 	ice_for_each_q_vector(vsi, i)
-		synchronize_irq(pci_irq_vector(pf->pdev, i + base));
+		synchronize_irq(vsi->q_vectors[i]->irq.virq);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 75221478f2dc..2f52f9e32858 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -104,10 +104,10 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked);
 void ice_vsi_decfg(struct ice_vsi *vsi);
 void ice_dis_vsi(struct ice_vsi *vsi, bool locked);
 
-int ice_free_res(struct ice_res_tracker *res, u16 index, u16 id);
+int ice_free_res(struct ice_res_tracker *res, u16 index);
 
 int
-ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id);
+ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res);
 
 int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);
 int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9ccb6092b937..8e62ec08f582 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2528,7 +2528,6 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 {
 	int q_vectors = vsi->num_q_vectors;
 	struct ice_pf *pf = vsi->back;
-	int base = vsi->base_vector;
 	struct device *dev;
 	int rx_int_idx = 0;
 	int tx_int_idx = 0;
@@ -2539,7 +2538,7 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 	for (vector = 0; vector < q_vectors; vector++) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[vector];
 
-		irq_num = pci_irq_vector(pf->pdev, base + vector);
+		irq_num = q_vector->irq.virq;
 
 		if (q_vector->tx.tx_ring && q_vector->rx.rx_ring) {
 			snprintf(q_vector->name, sizeof(q_vector->name) - 1,
@@ -2593,9 +2592,8 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 	return 0;
 
 free_q_irqs:
-	while (vector) {
-		vector--;
-		irq_num = pci_irq_vector(pf->pdev, base + vector);
+	while (vector--) {
+		irq_num = vsi->q_vectors[vector]->irq.virq;
 		if (!IS_ENABLED(CONFIG_RFS_ACCEL))
 			irq_set_affinity_notifier(irq_num, NULL);
 		irq_set_affinity_hint(irq_num, NULL);
@@ -3085,7 +3083,7 @@ static void ice_ena_misc_vector(struct ice_pf *pf)
 	wr32(hw, PFINT_OICR_ENA, val);
 
 	/* SW_ITR_IDX = 0, but don't change INTENA */
-	wr32(hw, GLINT_DYN_CTL(pf->oicr_idx),
+	wr32(hw, GLINT_DYN_CTL(pf->oicr_irq.index),
 	     GLINT_DYN_CTL_SW_ITR_INDX_M | GLINT_DYN_CTL_INTENA_MSK_M);
 }
 
@@ -3272,7 +3270,7 @@ static void ice_dis_ctrlq_interrupts(struct ice_hw *hw)
  */
 static void ice_free_irq_msix_misc(struct ice_pf *pf)
 {
-	int misc_irq_num = pci_irq_vector(pf->pdev, pf->oicr_idx);
+	int misc_irq_num = pf->oicr_irq.virq;
 	struct ice_hw *hw = &pf->hw;
 
 	ice_dis_ctrlq_interrupts(hw);
@@ -3284,8 +3282,7 @@ static void ice_free_irq_msix_misc(struct ice_pf *pf)
 	synchronize_irq(misc_irq_num);
 	devm_free_irq(ice_pf_to_dev(pf), misc_irq_num, pf);
 
-	pf->num_avail_sw_msix += 1;
-	ice_free_res(pf->irq_tracker, pf->oicr_idx, ICE_RES_MISC_VEC_ID);
+	ice_free_irq(pf, pf->oicr_irq);
 }
 
 /**
@@ -3331,7 +3328,8 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	int oicr_idx, err = 0;
+	struct msi_map oicr_irq;
+	int err = 0;
 
 	if (!pf->int_name[0])
 		snprintf(pf->int_name, sizeof(pf->int_name) - 1, "%s-%s:misc",
@@ -3345,30 +3343,26 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 		goto skip_req_irq;
 
 	/* reserve one vector in irq_tracker for misc interrupts */
-	oicr_idx = ice_get_res(pf, pf->irq_tracker, 1, ICE_RES_MISC_VEC_ID);
-	if (oicr_idx < 0)
-		return oicr_idx;
-
-	pf->num_avail_sw_msix -= 1;
-	pf->oicr_idx = (u16)oicr_idx;
-
-	err = devm_request_threaded_irq(dev,
-					pci_irq_vector(pf->pdev, pf->oicr_idx),
-					ice_misc_intr, ice_misc_intr_thread_fn,
-					0, pf->int_name, pf);
+	oicr_irq = ice_alloc_irq(pf);
+	if (oicr_irq.index < 0)
+		return oicr_irq.index;
+
+	pf->oicr_irq = oicr_irq;
+	err = devm_request_threaded_irq(dev, pf->oicr_irq.virq, ice_misc_intr,
+					ice_misc_intr_thread_fn, 0,
+					pf->int_name, pf);
 	if (err) {
 		dev_err(dev, "devm_request_threaded_irq for %s failed: %d\n",
 			pf->int_name, err);
-		ice_free_res(pf->irq_tracker, 1, ICE_RES_MISC_VEC_ID);
-		pf->num_avail_sw_msix += 1;
+		ice_free_irq(pf, pf->oicr_irq);
 		return err;
 	}
 
 skip_req_irq:
 	ice_ena_misc_vector(pf);
 
-	ice_ena_ctrlq_interrupts(hw, pf->oicr_idx);
-	wr32(hw, GLINT_ITR(ICE_RX_ITR, pf->oicr_idx),
+	ice_ena_ctrlq_interrupts(hw, pf->oicr_irq.index);
+	wr32(hw, GLINT_ITR(ICE_RX_ITR, pf->oicr_irq.index),
 	     ITR_REG_ALIGN(ICE_ITR_8K) >> ICE_ITR_GRAN_S);
 
 	ice_flush(hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 972d4f6fd615..d4b6c997141d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -911,7 +911,7 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	spin_unlock(&tx->lock);
 
 	/* wait for potentially outstanding interrupt to complete */
-	synchronize_irq(pci_irq_vector(pf->pdev, pf->oicr_idx));
+	synchronize_irq(pf->oicr_irq.virq);
 
 	ice_ptp_flush_tx_tracker(pf, tx);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 65f971b74717..0fc2b26a2fa6 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -835,7 +835,7 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	int ret;
 
 	/* Disable global interrupt 0 so we don't try to handle the VFLR. */
-	wr32(hw, GLINT_DYN_CTL(pf->oicr_idx),
+	wr32(hw, GLINT_DYN_CTL(pf->oicr_irq.index),
 	     ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S);
 	set_bit(ICE_OICR_INTR_DIS, pf->state);
 	ice_flush(hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 4102416d7a41..a7fe2b4ce655 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -90,7 +90,6 @@ ice_qvec_dis_irq(struct ice_vsi *vsi, struct ice_rx_ring *rx_ring,
 {
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	int base = vsi->base_vector;
 	u16 reg;
 	u32 val;
 
@@ -103,11 +102,9 @@ ice_qvec_dis_irq(struct ice_vsi *vsi, struct ice_rx_ring *rx_ring,
 	wr32(hw, QINT_RQCTL(reg), val);
 
 	if (q_vector) {
-		u16 v_idx = q_vector->v_idx;
-
 		wr32(hw, GLINT_DYN_CTL(q_vector->reg_idx), 0);
 		ice_flush(hw);
-		synchronize_irq(pci_irq_vector(pf->pdev, v_idx + base));
+		synchronize_irq(q_vector->irq.virq);
 	}
 }
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

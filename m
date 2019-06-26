Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5080656FDF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 19:48:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EECB886B0E;
	Wed, 26 Jun 2019 17:48:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nD+I4lLnOIuJ; Wed, 26 Jun 2019 17:48:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E774086AE5;
	Wed, 26 Jun 2019 17:47:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD9271BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D5D5986132
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OCD_hhcSHRir for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B985D86168
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 10:47:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183218149"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 10:47:53 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2019 02:20:25 -0700
Message-Id: <20190626092027.52845-14-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S22 14/16] ice: Remove unnecessary flag
 ICE_FLAG_MSIX_ENA
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

This flag is not needed and is called every time we re-enable interrupts
in the hotpath so remove it. Also remove ice_vsi_req_irq() because it
was a wrapper function for ice_vsi_req_irq_msix() whose sole purpose was
checking the ICE_FLAG_MSIX_ENA flag.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  1 -
 drivers/net/ethernet/intel/ice/ice_lib.c  | 71 +++++++++-------------
 drivers/net/ethernet/intel/ice/ice_main.c | 74 ++++++-----------------
 drivers/net/ethernet/intel/ice/ice_txrx.c |  4 +-
 4 files changed, 48 insertions(+), 102 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ff750c23cb75..0638cbdd495a 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -341,7 +341,6 @@ struct ice_q_vector {
 } ____cacheline_internodealigned_in_smp;
 
 enum ice_pf_flags {
-	ICE_FLAG_MSIX_ENA,
 	ICE_FLAG_FLTR_SYNC,
 	ICE_FLAG_RSS_ENA,
 	ICE_FLAG_SRIOV_ENA,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 8a40de59f94d..ee8a67b1797d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1184,12 +1184,7 @@ static int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi)
 		return -EEXIST;
 	}
 
-	if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags)) {
-		num_q_vectors = vsi->num_q_vectors;
-	} else {
-		err = -EINVAL;
-		goto err_out;
-	}
+	num_q_vectors = vsi->num_q_vectors;
 
 	for (v_idx = 0; v_idx < num_q_vectors; v_idx++) {
 		err = ice_vsi_alloc_q_vector(vsi, v_idx);
@@ -1235,9 +1230,6 @@ static int ice_vsi_setup_vector_base(struct ice_vsi *vsi)
 		return -EEXIST;
 	}
 
-	if (!test_bit(ICE_FLAG_MSIX_ENA, pf->flags))
-		return -ENOENT;
-
 	num_q_vectors = vsi->num_q_vectors;
 	/* reserve slots from OS requested IRQs */
 	vsi->base_vector = ice_get_res(pf, pf->irq_tracker, num_q_vectors,
@@ -2704,39 +2696,36 @@ void ice_vsi_free_irq(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
 	int base = vsi->base_vector;
+	int i;
 
-	if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags)) {
-		int i;
-
-		if (!vsi->q_vectors || !vsi->irqs_ready)
-			return;
+	if (!vsi->q_vectors || !vsi->irqs_ready)
+		return;
 
-		ice_vsi_release_msix(vsi);
-		if (vsi->type == ICE_VSI_VF)
-			return;
+	ice_vsi_release_msix(vsi);
+	if (vsi->type == ICE_VSI_VF)
+		return;
 
-		vsi->irqs_ready = false;
-		ice_for_each_q_vector(vsi, i) {
-			u16 vector = i + base;
-			int irq_num;
+	vsi->irqs_ready = false;
+	ice_for_each_q_vector(vsi, i) {
+		u16 vector = i + base;
+		int irq_num;
 
-			irq_num = pf->msix_entries[vector].vector;
+		irq_num = pf->msix_entries[vector].vector;
 
-			/* free only the irqs that were actually requested */
-			if (!vsi->q_vectors[i] ||
-			    !(vsi->q_vectors[i]->num_ring_tx ||
-			      vsi->q_vectors[i]->num_ring_rx))
-				continue;
+		/* free only the irqs that were actually requested */
+		if (!vsi->q_vectors[i] ||
+		    !(vsi->q_vectors[i]->num_ring_tx ||
+		      vsi->q_vectors[i]->num_ring_rx))
+			continue;
 
-			/* clear the affinity notifier in the IRQ descriptor */
-			irq_set_affinity_notifier(irq_num, NULL);
+		/* clear the affinity notifier in the IRQ descriptor */
+		irq_set_affinity_notifier(irq_num, NULL);
 
-			/* clear the affinity_mask in the IRQ descriptor */
-			irq_set_affinity_hint(irq_num, NULL);
-			synchronize_irq(irq_num);
-			devm_free_irq(&pf->pdev->dev, irq_num,
-				      vsi->q_vectors[i]);
-		}
+		/* clear the affinity_mask in the IRQ descriptor */
+		irq_set_affinity_hint(irq_num, NULL);
+		synchronize_irq(irq_num);
+		devm_free_irq(&pf->pdev->dev, irq_num,
+			      vsi->q_vectors[i]);
 	}
 }
 
@@ -2915,15 +2904,13 @@ void ice_vsi_dis_irq(struct ice_vsi *vsi)
 	}
 
 	/* disable each interrupt */
-	if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags)) {
-		ice_for_each_q_vector(vsi, i)
-			wr32(hw, GLINT_DYN_CTL(vsi->q_vectors[i]->reg_idx), 0);
+	ice_for_each_q_vector(vsi, i)
+		wr32(hw, GLINT_DYN_CTL(vsi->q_vectors[i]->reg_idx), 0);
 
-		ice_flush(hw);
+	ice_flush(hw);
 
-		ice_for_each_q_vector(vsi, i)
-			synchronize_irq(pf->msix_entries[i + base].vector);
-	}
+	ice_for_each_q_vector(vsi, i)
+		synchronize_irq(pf->msix_entries[i + base].vector);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8a506ba943d9..e400a068a840 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1547,15 +1547,11 @@ static void ice_irq_affinity_release(struct kref __always_unused *ref) {}
  */
 static int ice_vsi_ena_irq(struct ice_vsi *vsi)
 {
-	struct ice_pf *pf = vsi->back;
-	struct ice_hw *hw = &pf->hw;
-
-	if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags)) {
-		int i;
+	struct ice_hw *hw = &vsi->back->hw;
+	int i;
 
-		ice_for_each_q_vector(vsi, i)
-			ice_irq_dynamic_ena(hw, vsi, vsi->q_vectors[i]);
-	}
+	ice_for_each_q_vector(vsi, i)
+		ice_irq_dynamic_ena(hw, vsi, vsi->q_vectors[i]);
 
 	ice_flush(hw);
 	return 0;
@@ -2113,7 +2109,7 @@ static void ice_free_irq_msix_misc(struct ice_pf *pf)
 	wr32(hw, PFINT_OICR_ENA, 0);
 	ice_flush(hw);
 
-	if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags) && pf->msix_entries) {
+	if (pf->msix_entries) {
 		synchronize_irq(pf->msix_entries[pf->oicr_idx].vector);
 		devm_free_irq(&pf->pdev->dev,
 			      pf->msix_entries[pf->oicr_idx].vector, pf);
@@ -2539,7 +2535,6 @@ static void ice_deinit_pf(struct ice_pf *pf)
 static void ice_init_pf(struct ice_pf *pf)
 {
 	bitmap_zero(pf->flags, ICE_PF_FLAGS_NBITS);
-	set_bit(ICE_FLAG_MSIX_ENA, pf->flags);
 #ifdef CONFIG_PCI_IOV
 	if (pf->hw.func_caps.common_cap.sr_iov_1_1) {
 		struct ice_hw *hw = &pf->hw;
@@ -2639,7 +2634,6 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 
 exit_err:
 	pf->num_lan_msix = 0;
-	clear_bit(ICE_FLAG_MSIX_ENA, pf->flags);
 	return err;
 }
 
@@ -2652,7 +2646,6 @@ static void ice_dis_msix(struct ice_pf *pf)
 	pci_disable_msix(pf->pdev);
 	devm_kfree(&pf->pdev->dev, pf->msix_entries);
 	pf->msix_entries = NULL;
-	clear_bit(ICE_FLAG_MSIX_ENA, pf->flags);
 }
 
 /**
@@ -2661,8 +2654,7 @@ static void ice_dis_msix(struct ice_pf *pf)
  */
 static void ice_clear_interrupt_scheme(struct ice_pf *pf)
 {
-	if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags))
-		ice_dis_msix(pf);
+	ice_dis_msix(pf);
 
 	if (pf->irq_tracker) {
 		devm_kfree(&pf->pdev->dev, pf->irq_tracker);
@@ -2678,10 +2670,7 @@ static int ice_init_interrupt_scheme(struct ice_pf *pf)
 {
 	int vectors;
 
-	if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags))
-		vectors = ice_ena_msix_range(pf);
-	else
-		return -ENODEV;
+	vectors = ice_ena_msix_range(pf);
 
 	if (vectors < 0)
 		return vectors;
@@ -2838,12 +2827,10 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	 * the misc functionality and queue processing is combined in
 	 * the same vector and that gets setup at open.
 	 */
-	if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags)) {
-		err = ice_req_irq_msix_misc(pf);
-		if (err) {
-			dev_err(dev, "setup of misc vector failed: %d\n", err);
-			goto err_init_interrupt_unroll;
-		}
+	err = ice_req_irq_msix_misc(pf);
+	if (err) {
+		dev_err(dev, "setup of misc vector failed: %d\n", err);
+		goto err_init_interrupt_unroll;
 	}
 
 	/* create switch struct for the switch element created by FW on boot */
@@ -3458,10 +3445,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
 	struct ice_pf *pf = vsi->back;
 	int err;
 
-	if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags))
-		ice_vsi_cfg_msix(vsi);
-	else
-		return -ENOTSUPP;
+	ice_vsi_cfg_msix(vsi);
 
 	/* Enable only Rx rings, Tx rings were enabled by the FW when the
 	 * Tx queue group list was configured and the context bits were
@@ -3928,24 +3912,6 @@ int ice_vsi_setup_rx_rings(struct ice_vsi *vsi)
 	return err;
 }
 
-/**
- * ice_vsi_req_irq - Request IRQ from the OS
- * @vsi: The VSI IRQ is being requested for
- * @basename: name for the vector
- *
- * Return 0 on success and a negative value on error
- */
-static int ice_vsi_req_irq(struct ice_vsi *vsi, char *basename)
-{
-	struct ice_pf *pf = vsi->back;
-	int err = -EINVAL;
-
-	if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags))
-		err = ice_vsi_req_irq_msix(vsi, basename);
-
-	return err;
-}
-
 /**
  * ice_vsi_open - Called when a network interface is made active
  * @vsi: the VSI to open
@@ -3975,7 +3941,7 @@ static int ice_vsi_open(struct ice_vsi *vsi)
 
 	snprintf(int_name, sizeof(int_name) - 1, "%s-%s",
 		 dev_driver_string(&pf->pdev->dev), vsi->netdev->name);
-	err = ice_vsi_req_irq(vsi, int_name);
+	err = ice_vsi_req_irq_msix(vsi, int_name);
 	if (err)
 		goto err_setup_rx;
 
@@ -4212,12 +4178,10 @@ static void ice_rebuild(struct ice_pf *pf)
 	}
 
 	/* start misc vector */
-	if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags)) {
-		err = ice_req_irq_msix_misc(pf);
-		if (err) {
-			dev_err(dev, "misc vector setup failed: %d\n", err);
-			goto err_vsi_rebuild;
-		}
+	err = ice_req_irq_msix_misc(pf);
+	if (err) {
+		dev_err(dev, "misc vector setup failed: %d\n", err);
+		goto err_vsi_rebuild;
 	}
 
 	/* restart the VSIs that were rebuilt and running before the reset */
@@ -4624,9 +4588,7 @@ static void ice_tx_timeout(struct net_device *netdev)
 		head = (rd32(hw, QTX_COMM_HEAD(vsi->txq_map[hung_queue])) &
 			QTX_COMM_HEAD_HEAD_M) >> QTX_COMM_HEAD_HEAD_S;
 		/* Read interrupt register */
-		if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags))
-			val = rd32(hw,
-				   GLINT_DYN_CTL(tx_ring->q_vector->reg_idx));
+		val = rd32(hw, GLINT_DYN_CTL(tx_ring->q_vector->reg_idx));
 
 		netdev_info(netdev, "tx_timeout: VSI_num: %d, Q %d, NTC: 0x%x, HW_HEAD: 0x%x, NTU: 0x%x, INT: 0x%x\n",
 			    vsi->vsi_num, hung_queue, tx_ring->next_to_clean,
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 99e453fbdb9d..d9cb7714a792 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1716,7 +1716,6 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	struct ice_q_vector *q_vector =
 				container_of(napi, struct ice_q_vector, napi);
 	struct ice_vsi *vsi = q_vector->vsi;
-	struct ice_pf *pf = vsi->back;
 	bool clean_complete = true;
 	int budget_per_ring = 0;
 	struct ice_ring *ring;
@@ -1768,8 +1767,7 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	 * poll us due to busy-polling
 	 */
 	if (likely(napi_complete_done(napi, work_done)))
-		if (test_bit(ICE_FLAG_MSIX_ENA, pf->flags))
-			ice_update_ena_itr(vsi, q_vector);
+		ice_update_ena_itr(vsi, q_vector);
 
 	return min_t(int, work_done, budget - 1);
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

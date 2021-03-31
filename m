Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6268C350912
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:27:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03BDF40EDE;
	Wed, 31 Mar 2021 21:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RE_U1vEDER5r; Wed, 31 Mar 2021 21:27:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EE85406B0;
	Wed, 31 Mar 2021 21:27:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 612C61BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C0D9840EDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MJYI0N5ME43F for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:26:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72FBD406B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:53 +0000 (UTC)
IronPort-SDR: 7nn7Z186EzPi6naPyc3OBB3LDkA7NVHdSL0fHw1WPAK+hqO/TIgHMeX4YsZhk6PuogKK6b+WRt
 GLDQy9flGEsg==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192117302"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="192117302"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:51 -0700
IronPort-SDR: rywCat3HYOoxmiA//7j0M65xAkdZ3ap6O1JvW1ovbWn4FAl3BnDXIgBO0LdzaqCFOB5hfL55OZ
 DpntRBCK38Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="445819634"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2021 14:26:50 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 14:16:56 -0700
Message-Id: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S58 01/13] ice: refactor interrupt
 moderation writes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

Introduce several new helpers for writing ITR and GLINT_RATE
registers, and refactor the code calling them.  This resulted
in removal of several duplicate functions and rolled a bunch
of simple code back into the calling routines.

In particular this removes some code that was doing both
a store and a set in a helper function, which seems better
done as separate tasks in the caller (and generally takes
less lines of code even with a tiny bit of repetition).

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c    |  22 +--
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  17 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     | 171 ++++++++++---------
 drivers/net/ethernet/intel/ice/ice_lib.h     |   3 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c     |   3 -
 5 files changed, 112 insertions(+), 104 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 16cd67050967..5e6d9604e22c 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -766,25 +766,13 @@ void ice_cfg_itr(struct ice_hw *hw, struct ice_q_vector *q_vector)
 {
 	ice_cfg_itr_gran(hw);
 
-	if (q_vector->num_ring_rx) {
-		struct ice_ring_container *rc = &q_vector->rx;
-
-		rc->target_itr = ITR_TO_REG(rc->itr_setting);
-		rc->next_update = jiffies + 1;
-		rc->current_itr = rc->target_itr;
-		wr32(hw, GLINT_ITR(rc->itr_idx, q_vector->reg_idx),
-		     ITR_REG_ALIGN(rc->current_itr) >> ICE_ITR_GRAN_S);
-	}
+	if (q_vector->num_ring_rx)
+		ice_write_itr(&q_vector->rx, q_vector->rx.itr_setting);
 
-	if (q_vector->num_ring_tx) {
-		struct ice_ring_container *rc = &q_vector->tx;
+	if (q_vector->num_ring_tx)
+		ice_write_itr(&q_vector->tx, q_vector->tx.itr_setting);
 
-		rc->target_itr = ITR_TO_REG(rc->itr_setting);
-		rc->next_update = jiffies + 1;
-		rc->current_itr = rc->target_itr;
-		wr32(hw, GLINT_ITR(rc->itr_idx, q_vector->reg_idx),
-		     ITR_REG_ALIGN(rc->current_itr) >> ICE_ITR_GRAN_S);
-	}
+	ice_write_intrl(q_vector, q_vector->intrl);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f2bc8f1e86cc..e273560d9e6e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3636,9 +3636,8 @@ ice_set_rc_coalesce(enum ice_container_type c_type, struct ethtool_coalesce *ec,
 		}
 		if (ec->rx_coalesce_usecs_high != rc->ring->q_vector->intrl) {
 			rc->ring->q_vector->intrl = ec->rx_coalesce_usecs_high;
-			wr32(&pf->hw, GLINT_RATE(rc->ring->q_vector->reg_idx),
-			     ice_intrl_usec_to_reg(ec->rx_coalesce_usecs_high,
-						   pf->hw.intrl_gran));
+			ice_write_intrl(rc->ring->q_vector,
+					ec->rx_coalesce_usecs_high);
 		}
 
 		use_adaptive_coalesce = ec->use_adaptive_rx_coalesce;
@@ -3672,10 +3671,15 @@ ice_set_rc_coalesce(enum ice_container_type c_type, struct ethtool_coalesce *ec,
 	if (use_adaptive_coalesce) {
 		rc->itr_setting |= ICE_ITR_DYNAMIC;
 	} else {
-		/* save the user set usecs */
+		/* store user facing value how it was set */
 		rc->itr_setting = coalesce_usecs;
-		/* device ITR granularity is in 2 usec increments */
-		rc->target_itr = ITR_REG_ALIGN(rc->itr_setting);
+		/* write the change to the register */
+		ice_write_itr(rc, coalesce_usecs);
+		/* force writes to take effect immediately, the flush shouldn't
+		 * be done in the functions above because the intent is for
+		 * them to do lazy writes.
+		 */
+		ice_flush(&pf->hw);
 	}
 
 	return 0;
@@ -3793,7 +3797,6 @@ __ice_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 		return -EINVAL;
 
 set_complete:
-
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 5cbb4b0f682b..06c1e5f7eb5e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1796,7 +1796,7 @@ int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi)
  * This function converts a decimal interrupt rate limit in usecs to the format
  * expected by firmware.
  */
-u32 ice_intrl_usec_to_reg(u8 intrl, u8 gran)
+static u32 ice_intrl_usec_to_reg(u8 intrl, u8 gran)
 {
 	u32 val = intrl / gran;
 
@@ -1805,6 +1805,58 @@ u32 ice_intrl_usec_to_reg(u8 intrl, u8 gran)
 	return 0;
 }
 
+/**
+ * ice_write_intrl - write throttle rate limit to interrupt specific register
+ * @q_vector: pointer to interrupt specific structure
+ * @intrl: throttle rate limit in microseconds to write
+ */
+void ice_write_intrl(struct ice_q_vector *q_vector, u8 intrl)
+{
+	struct ice_hw *hw = &q_vector->vsi->back->hw;
+
+	wr32(hw, GLINT_RATE(q_vector->reg_idx),
+	     ice_intrl_usec_to_reg(intrl, ICE_INTRL_GRAN_ABOVE_25));
+}
+
+/**
+ * __ice_write_itr - write throttle rate to register
+ * @q_vector: pointer to interrupt data structure
+ * @rc: pointer to ring container
+ * @itr: throttle rate in microseconds to write
+ */
+static void __ice_write_itr(struct ice_q_vector *q_vector,
+			    struct ice_ring_container *rc, u16 itr)
+{
+	struct ice_hw *hw = &q_vector->vsi->back->hw;
+
+	wr32(hw, GLINT_ITR(rc->itr_idx, q_vector->reg_idx),
+	     ITR_REG_ALIGN(itr) >> ICE_ITR_GRAN_S);
+}
+
+/**
+ * ice_write_itr - write throttle rate to queue specific register
+ * @rc: pointer to ring container
+ * @itr: throttle rate in microseconds to write
+ *
+ * This function is resilient to having the 0x8000 bit set which
+ * is indicating that an ITR value is "DYNAMIC", and will write
+ * the correct value to the register.
+ */
+void ice_write_itr(struct ice_ring_container *rc, u16 itr)
+{
+	struct ice_q_vector *q_vector;
+
+	if (!rc->ring)
+		return;
+
+	q_vector = rc->ring->q_vector;
+
+	/* clear the "DYNAMIC" bit */
+	itr = ITR_TO_REG(itr);
+
+	__ice_write_itr(q_vector, rc, itr);
+}
+
 /**
  * ice_vsi_cfg_msix - MSIX mode Interrupt Config in the HW
  * @vsi: the VSI being configured
@@ -1825,9 +1877,6 @@ void ice_vsi_cfg_msix(struct ice_vsi *vsi)
 
 		ice_cfg_itr(hw, q_vector);
 
-		wr32(hw, GLINT_RATE(reg_idx),
-		     ice_intrl_usec_to_reg(q_vector->intrl, hw->intrl_gran));
-
 		/* Both Transmit Queue Interrupt Cause Control register
 		 * and Receive Queue Interrupt Cause control register
 		 * expects MSIX_INDX field to be the vector index
@@ -2515,11 +2564,10 @@ static void ice_vsi_release_msix(struct ice_vsi *vsi)
 
 	for (i = 0; i < vsi->num_q_vectors; i++) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[i];
-		u16 reg_idx = q_vector->reg_idx;
 
-		wr32(hw, GLINT_ITR(ICE_IDX_ITR0, reg_idx), 0);
-		wr32(hw, GLINT_ITR(ICE_IDX_ITR1, reg_idx), 0);
+		ice_write_intrl(q_vector, 0);
 		for (q = 0; q < q_vector->num_ring_tx; q++) {
+			ice_write_itr(&q_vector->tx, 0);
 			wr32(hw, QINT_TQCTL(vsi->txq_map[txq]), 0);
 			if (ice_is_xdp_ena_vsi(vsi)) {
 				u32 xdp_txq = txq + vsi->num_xdp_txq;
@@ -2530,6 +2578,7 @@ static void ice_vsi_release_msix(struct ice_vsi *vsi)
 		}
 
 		for (q = 0; q < q_vector->num_ring_rx; q++) {
+			ice_write_itr(&q_vector->rx, 0);
 			wr32(hw, QINT_RQCTL(vsi->rxq_map[rxq]), 0);
 			rxq++;
 		}
@@ -2866,47 +2915,6 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	return 0;
 }
 
-/**
- * ice_vsi_rebuild_update_coalesce_intrl - set interrupt rate limit for a q_vector
- * @q_vector: pointer to q_vector which is being updated
- * @stored_intrl_setting: original INTRL setting
- *
- * Set coalesce param in q_vector and update these parameters in HW.
- */
-static void
-ice_vsi_rebuild_update_coalesce_intrl(struct ice_q_vector *q_vector,
-				      u16 stored_intrl_setting)
-{
-	struct ice_hw *hw = &q_vector->vsi->back->hw;
-
-	q_vector->intrl = stored_intrl_setting;
-	wr32(hw, GLINT_RATE(q_vector->reg_idx),
-	     ice_intrl_usec_to_reg(q_vector->intrl, hw->intrl_gran));
-}
-
-/**
- * ice_vsi_rebuild_update_coalesce_itr - set coalesce for a q_vector
- * @q_vector: pointer to q_vector which is being updated
- * @rc: pointer to ring container
- * @stored_itr_setting: original ITR setting
- *
- * Set coalesce param in q_vector and update these parameters in HW.
- */
-static void
-ice_vsi_rebuild_update_coalesce_itr(struct ice_q_vector *q_vector,
-				    struct ice_ring_container *rc,
-				    u16 stored_itr_setting)
-{
-	struct ice_hw *hw = &q_vector->vsi->back->hw;
-
-	rc->itr_setting = stored_itr_setting;
-
-	/* dynamic ITR values will be updated during Tx/Rx */
-	if (!ITR_IS_DYNAMIC(rc->itr_setting))
-		wr32(hw, GLINT_ITR(rc->itr_idx, q_vector->reg_idx),
-		     ITR_REG_ALIGN(rc->itr_setting) >> ICE_ITR_GRAN_S);
-}
-
 /**
  * ice_vsi_rebuild_get_coalesce - get coalesce from all q_vectors
  * @vsi: VSI connected with q_vectors
@@ -2950,6 +2958,7 @@ static void
 ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
 			     struct ice_coalesce_stored *coalesce, int size)
 {
+	struct ice_ring_container *rc;
 	int i;
 
 	if ((size && !coalesce) || !vsi)
@@ -2972,41 +2981,51 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
 		 *   rings is less than are allocated (this means the number of
 		 *   rings increased from previously), then write out the
 		 *   values in the first element
+		 *
+		 *   Also, always write the ITR, even if in ITR_IS_DYNAMIC
+		 *   as there is no harm because the dynamic algorithm
+		 *   will just overwrite.
 		 */
-		if (i < vsi->alloc_rxq && coalesce[i].rx_valid)
-			ice_vsi_rebuild_update_coalesce_itr(vsi->q_vectors[i],
-							    &vsi->q_vectors[i]->rx,
-							    coalesce[i].itr_rx);
-		else if (i < vsi->alloc_rxq)
-			ice_vsi_rebuild_update_coalesce_itr(vsi->q_vectors[i],
-							    &vsi->q_vectors[i]->rx,
-							    coalesce[0].itr_rx);
-
-		if (i < vsi->alloc_txq && coalesce[i].tx_valid)
-			ice_vsi_rebuild_update_coalesce_itr(vsi->q_vectors[i],
-							    &vsi->q_vectors[i]->tx,
-							    coalesce[i].itr_tx);
-		else if (i < vsi->alloc_txq)
-			ice_vsi_rebuild_update_coalesce_itr(vsi->q_vectors[i],
-							    &vsi->q_vectors[i]->tx,
-							    coalesce[0].itr_tx);
-
-		ice_vsi_rebuild_update_coalesce_intrl(vsi->q_vectors[i],
-						      coalesce[i].intrl);
+		if (i < vsi->alloc_rxq && coalesce[i].rx_valid) {
+			rc = &vsi->q_vectors[i]->rx;
+			rc->itr_setting = coalesce[i].itr_rx;
+			ice_write_itr(rc, rc->itr_setting);
+		} else if (i < vsi->alloc_rxq) {
+			rc = &vsi->q_vectors[i]->rx;
+			rc->itr_setting = coalesce[0].itr_rx;
+			ice_write_itr(rc, rc->itr_setting);
+		}
+
+		if (i < vsi->alloc_txq && coalesce[i].tx_valid) {
+			rc = &vsi->q_vectors[i]->tx;
+			rc->itr_setting = coalesce[i].itr_tx;
+			ice_write_itr(rc, rc->itr_setting);
+		} else if (i < vsi->alloc_txq) {
+			rc = &vsi->q_vectors[i]->tx;
+			rc->itr_setting = coalesce[0].itr_tx;
+			ice_write_itr(rc, rc->itr_setting);
+		}
+
+		vsi->q_vectors[i]->intrl = coalesce[i].intrl;
+		ice_write_intrl(vsi->q_vectors[i], coalesce[i].intrl);
 	}
 
 	/* the number of queue vectors increased so write whatever is in
 	 * the first element
 	 */
 	for (; i < vsi->num_q_vectors; i++) {
-		ice_vsi_rebuild_update_coalesce_itr(vsi->q_vectors[i],
-						    &vsi->q_vectors[i]->tx,
-						    coalesce[0].itr_tx);
-		ice_vsi_rebuild_update_coalesce_itr(vsi->q_vectors[i],
-						    &vsi->q_vectors[i]->rx,
-						    coalesce[0].itr_rx);
-		ice_vsi_rebuild_update_coalesce_intrl(vsi->q_vectors[i],
-						      coalesce[0].intrl);
+		/* transmit */
+		rc = &vsi->q_vectors[i]->tx;
+		rc->itr_setting = coalesce[0].itr_tx;
+		ice_write_itr(rc, rc->itr_setting);
+
+		/* receive */
+		rc = &vsi->q_vectors[i]->rx;
+		rc->itr_setting = coalesce[0].itr_rx;
+		ice_write_itr(rc, rc->itr_setting);
+
+		vsi->q_vectors[i]->intrl = coalesce[0].intrl;
+		ice_write_intrl(vsi->q_vectors[i], coalesce[0].intrl);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 92d2d23ce920..7775f1e36474 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -99,7 +99,8 @@ void ice_vsi_cfg_frame_size(struct ice_vsi *vsi);
 
 int ice_status_to_errno(enum ice_status err);
 
-u32 ice_intrl_usec_to_reg(u8 intrl, u8 gran);
+void ice_write_intrl(struct ice_q_vector *q_vector, u8 intrl);
+void ice_write_itr(struct ice_ring_container *rc, u16 itr);
 
 enum ice_status
 ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set);
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index fdc44b3f8e26..2f4a8a1f1677 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -108,9 +108,6 @@ ice_qvec_cfg_msix(struct ice_vsi *vsi, struct ice_q_vector *q_vector)
 
 	ice_cfg_itr(hw, q_vector);
 
-	wr32(hw, GLINT_RATE(reg_idx),
-	     ice_intrl_usec_to_reg(q_vector->intrl, hw->intrl_gran));
-
 	ice_for_each_ring(ring, q_vector->tx)
 		ice_cfg_txq_interrupt(vsi, ring->reg_idx, reg_idx,
 				      q_vector->tx.itr_idx);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

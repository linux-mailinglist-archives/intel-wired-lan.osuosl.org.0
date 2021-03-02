Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB3732A934
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:22:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25F754EB7C;
	Tue,  2 Mar 2021 18:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6v4JRiYHuwf; Tue,  2 Mar 2021 18:22:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A1824EBA6;
	Tue,  2 Mar 2021 18:22:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7CE671BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9453606BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id URKGImPzvDs0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:21:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E89F2606BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:48 +0000 (UTC)
IronPort-SDR: SESgBnXPLgreZCOIT7eOgCBJ9dFlNOziQhuTjEFs3RDCtAbY4tCrvjh/KZyhT8leuz0IfKgjwk
 ZSptk33fH8bw==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="166813972"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="166813972"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:21:48 -0800
IronPort-SDR: ilRE308JxAP2jWmgfBkAmwL8KAUPyX40Ef6RL6BTPbvppms2ZUb61UMepepesCiWEsJcJlaMK3
 mknlMgFBVvHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="369051170"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 02 Mar 2021 10:21:45 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:12:05 -0800
Message-Id: <20210302181213.51718-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S55 06/14] ice: handle increasing Tx or Rx
 ring sizes
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

From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

There is an issue when the Tx or Rx ring size increases using
'ethtool -L ...' where the new rings don't get the correct ITR
values because when we rebuild the VSI we don't know that some
of the rings may be new.

Fix this by looking at the original number of rings and
determining if the rings in ice_vsi_rebuild_set_coalesce()
were not present in the original rings received in
ice_vsi_rebuild_get_coalesce().

Also change the code to return an error if we can't allocate
memory for the coalesce data in ice_vsi_rebuild().

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 123 ++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_txrx.h |   2 +
 2 files changed, 92 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 1fad88b369d3..a305dc2c3c10 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2862,38 +2862,46 @@ int ice_vsi_release(struct ice_vsi *vsi)
 }
 
 /**
- * ice_vsi_rebuild_update_coalesce - set coalesce for a q_vector
+ * ice_vsi_rebuild_update_coalesce_intrl - set interrupt rate limit for a q_vector
  * @q_vector: pointer to q_vector which is being updated
- * @coalesce: pointer to array of struct with stored coalesce
+ * @stored_intrl_setting: original INTRL setting
  *
  * Set coalesce param in q_vector and update these parameters in HW.
  */
 static void
-ice_vsi_rebuild_update_coalesce(struct ice_q_vector *q_vector,
-				struct ice_coalesce_stored *coalesce)
+ice_vsi_rebuild_update_coalesce_intrl(struct ice_q_vector *q_vector,
+				      u16 stored_intrl_setting)
 {
-	struct ice_ring_container *rx_rc = &q_vector->rx;
-	struct ice_ring_container *tx_rc = &q_vector->tx;
 	struct ice_hw *hw = &q_vector->vsi->back->hw;
 
-	tx_rc->itr_setting = coalesce->itr_tx;
-	rx_rc->itr_setting = coalesce->itr_rx;
-
-	/* dynamic ITR values will be updated during Tx/Rx */
-	if (!ITR_IS_DYNAMIC(tx_rc->itr_setting))
-		wr32(hw, GLINT_ITR(tx_rc->itr_idx, q_vector->reg_idx),
-		     ITR_REG_ALIGN(tx_rc->itr_setting) >>
-		     ICE_ITR_GRAN_S);
-	if (!ITR_IS_DYNAMIC(rx_rc->itr_setting))
-		wr32(hw, GLINT_ITR(rx_rc->itr_idx, q_vector->reg_idx),
-		     ITR_REG_ALIGN(rx_rc->itr_setting) >>
-		     ICE_ITR_GRAN_S);
-
-	q_vector->intrl = coalesce->intrl;
+	q_vector->intrl = stored_intrl_setting;
 	wr32(hw, GLINT_RATE(q_vector->reg_idx),
 	     ice_intrl_usec_to_reg(q_vector->intrl, hw->intrl_gran));
 }
 
+/**
+ * ice_vsi_rebuild_update_coalesce_itr - set coalesce for a q_vector
+ * @q_vector: pointer to q_vector which is being updated
+ * @rc: pointer to ring container
+ * @stored_itr_setting: original ITR setting
+ *
+ * Set coalesce param in q_vector and update these parameters in HW.
+ */
+static void
+ice_vsi_rebuild_update_coalesce_itr(struct ice_q_vector *q_vector,
+				    struct ice_ring_container *rc,
+				    u16 stored_itr_setting)
+{
+	struct ice_hw *hw = &q_vector->vsi->back->hw;
+
+	rc->itr_setting = stored_itr_setting;
+
+	/* dynamic ITR values will be updated during Tx/Rx */
+	if (!ITR_IS_DYNAMIC(rc->itr_setting))
+		wr32(hw, GLINT_ITR(rc->itr_idx, q_vector->reg_idx),
+		     ITR_REG_ALIGN(rc->itr_setting) >> ICE_ITR_GRAN_S);
+}
+
 /**
  * ice_vsi_rebuild_get_coalesce - get coalesce from all q_vectors
  * @vsi: VSI connected with q_vectors
@@ -2913,6 +2921,11 @@ ice_vsi_rebuild_get_coalesce(struct ice_vsi *vsi,
 		coalesce[i].itr_tx = q_vector->tx.itr_setting;
 		coalesce[i].itr_rx = q_vector->rx.itr_setting;
 		coalesce[i].intrl = q_vector->intrl;
+
+		if (i < vsi->num_txq)
+			coalesce[i].tx_valid = true;
+		if (i < vsi->num_rxq)
+			coalesce[i].rx_valid = true;
 	}
 
 	return vsi->num_q_vectors;
@@ -2937,17 +2950,59 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
 	if ((size && !coalesce) || !vsi)
 		return;
 
-	for (i = 0; i < size && i < vsi->num_q_vectors; i++)
-		ice_vsi_rebuild_update_coalesce(vsi->q_vectors[i],
-						&coalesce[i]);
-
-	/* number of q_vectors increased, so assume coalesce settings were
-	 * changed globally (i.e. ethtool -C eth0 instead of per-queue) and use
-	 * the previous settings from q_vector 0 for all of the new q_vectors
+	/* There are a couple of cases that have to be handled here:
+	 *   1. The case where the number of queue vectors stays the same, but
+	 *      the number of Tx or Rx rings changes (the first for loop)
+	 *   2. The case where the number of queue vectors increased (the
+	 *      second for loop)
 	 */
-	for (; i < vsi->num_q_vectors; i++)
-		ice_vsi_rebuild_update_coalesce(vsi->q_vectors[i],
-						&coalesce[0]);
+	for (i = 0; i < size && i < vsi->num_q_vectors; i++) {
+		/* There are 2 cases to handle here and they are the same for
+		 * both Tx and Rx:
+		 *   if the entry was valid previously (coalesce[i].[tr]x_valid
+		 *   and the loop variable is less than the number of rings
+		 *   allocated, then write the previous values
+		 *
+		 *   if the entry was not valid previously, but the number of
+		 *   rings is less than are allocated (this means the number of
+		 *   rings increased from previously), then write out the
+		 *   values in the first element
+		 */
+		if (i < vsi->alloc_rxq && coalesce[i].rx_valid)
+			ice_vsi_rebuild_update_coalesce_itr(vsi->q_vectors[i],
+							    &vsi->q_vectors[i]->rx,
+							    coalesce[i].itr_rx);
+		else if (i < vsi->alloc_rxq)
+			ice_vsi_rebuild_update_coalesce_itr(vsi->q_vectors[i],
+							    &vsi->q_vectors[i]->rx,
+							    coalesce[0].itr_rx);
+
+		if (i < vsi->alloc_txq && coalesce[i].tx_valid)
+			ice_vsi_rebuild_update_coalesce_itr(vsi->q_vectors[i],
+							    &vsi->q_vectors[i]->tx,
+							    coalesce[i].itr_tx);
+		else if (i < vsi->alloc_txq)
+			ice_vsi_rebuild_update_coalesce_itr(vsi->q_vectors[i],
+							    &vsi->q_vectors[i]->tx,
+							    coalesce[0].itr_tx);
+
+		ice_vsi_rebuild_update_coalesce_intrl(vsi->q_vectors[i],
+						      coalesce[i].intrl);
+	}
+
+	/* the number of queue vectors increased so write whatever is in
+	 * the first element
+	 */
+	for (; i < vsi->num_q_vectors; i++) {
+		ice_vsi_rebuild_update_coalesce_itr(vsi->q_vectors[i],
+						    &vsi->q_vectors[i]->tx,
+						    coalesce[0].itr_tx);
+		ice_vsi_rebuild_update_coalesce_itr(vsi->q_vectors[i],
+						    &vsi->q_vectors[i]->rx,
+						    coalesce[0].itr_rx);
+		ice_vsi_rebuild_update_coalesce_intrl(vsi->q_vectors[i],
+						      coalesce[0].intrl);
+	}
 }
 
 /**
@@ -2976,9 +3031,11 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 
 	coalesce = kcalloc(vsi->num_q_vectors,
 			   sizeof(struct ice_coalesce_stored), GFP_KERNEL);
-	if (coalesce)
-		prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi,
-								  coalesce);
+	if (!coalesce)
+		return -ENOMEM;
+
+	prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi, coalesce);
+
 	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
 	ice_vsi_free_q_vectors(vsi);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index f72b154b03c5..a13eb8cf1731 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -359,6 +359,8 @@ struct ice_coalesce_stored {
 	u16 itr_tx;
 	u16 itr_rx;
 	u8 intrl;
+	u8 tx_valid;
+	u8 rx_valid;
 };
 
 /* iterator for handling rings in ring container */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

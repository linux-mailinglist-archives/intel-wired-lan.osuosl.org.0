Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B12D11D755
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 20:44:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E8F0881A6;
	Thu, 12 Dec 2019 19:44:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VLZeQFpkJSz1; Thu, 12 Dec 2019 19:44:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2E8B882A9;
	Thu, 12 Dec 2019 19:44:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9AFC31BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9029286FAF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UaHjjm4JvWMG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 19:44:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BDF0286F86
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:44:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="296698853"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 11:44:34 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2019 03:12:58 -0800
Message-Id: <20191212111307.33566-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
References: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S35 06/15] ice: Restore interrupt throttle
 settings after VSI rebuild
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

From: Michal Swiatkowski <michal.swiatkowski@intel.com>

After each rebuild driver deallocates q_vectors, so the interrupt
throttle rate (ITR) settings get lost.

Create a function to save and restore ITR for each queue. If a user
increases the number of queues, restore all the previous queue
settings for each existing queue, and the additional queues will
get the default setting.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 102 ++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.h |   6 ++
 2 files changed, 108 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 0581df95f3a1..1f47c39f4e86 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2453,6 +2453,97 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	return 0;
 }
 
+/**
+ * ice_vsi_rebuild_update_coalesce - set coalesce for a q_vector
+ * @q_vector: pointer to q_vector which is being updated
+ * @coalesce: pointer to array of struct with stored coalesce
+ *
+ * Set coalesce param in q_vector and update these parameters in HW.
+ */
+static void
+ice_vsi_rebuild_update_coalesce(struct ice_q_vector *q_vector,
+				struct ice_coalesce_stored *coalesce)
+{
+	struct ice_ring_container *rx_rc = &q_vector->rx;
+	struct ice_ring_container *tx_rc = &q_vector->tx;
+	struct ice_hw *hw = &q_vector->vsi->back->hw;
+
+	tx_rc->itr_setting = coalesce->itr_tx;
+	rx_rc->itr_setting = coalesce->itr_rx;
+
+	/* dynamic ITR values will be updated during Tx/Rx */
+	if (!ITR_IS_DYNAMIC(tx_rc->itr_setting))
+		wr32(hw, GLINT_ITR(tx_rc->itr_idx, q_vector->reg_idx),
+		     ITR_REG_ALIGN(tx_rc->itr_setting) >>
+		     ICE_ITR_GRAN_S);
+	if (!ITR_IS_DYNAMIC(rx_rc->itr_setting))
+		wr32(hw, GLINT_ITR(rx_rc->itr_idx, q_vector->reg_idx),
+		     ITR_REG_ALIGN(rx_rc->itr_setting) >>
+		     ICE_ITR_GRAN_S);
+
+	q_vector->intrl = coalesce->intrl;
+	wr32(hw, GLINT_RATE(q_vector->reg_idx),
+	     ice_intrl_usec_to_reg(q_vector->intrl, hw->intrl_gran));
+}
+
+/**
+ * ice_vsi_rebuild_get_coalesce - get coalesce from all q_vectors
+ * @vsi: VSI connected with q_vectors
+ * @coalesce: array of struct with stored coalesce
+ *
+ * Returns array size.
+ */
+static int
+ice_vsi_rebuild_get_coalesce(struct ice_vsi *vsi,
+			     struct ice_coalesce_stored *coalesce)
+{
+	int i;
+
+	ice_for_each_q_vector(vsi, i) {
+		struct ice_q_vector *q_vector = vsi->q_vectors[i];
+
+		coalesce[i].itr_tx = q_vector->tx.itr_setting;
+		coalesce[i].itr_rx = q_vector->rx.itr_setting;
+		coalesce[i].intrl = q_vector->intrl;
+	}
+
+	return vsi->num_q_vectors;
+}
+
+/**
+ * ice_vsi_rebuild_set_coalesce - set coalesce from earlier saved arrays
+ * @vsi: VSI connected with q_vectors
+ * @coalesce: pointer to array of struct with stored coalesce
+ * @size: size of coalesce array
+ *
+ * Before this function, ice_vsi_rebuild_get_coalesce should be called to save
+ * ITR params in arrays. If size is 0 or coalesce wasn't stored set coalesce
+ * to default value.
+ */
+static void
+ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
+			     struct ice_coalesce_stored *coalesce, int size)
+{
+	int i;
+
+	if ((size && !coalesce) || !vsi)
+		return;
+
+	for (i = 0; i < size && i < vsi->num_q_vectors; i++)
+		ice_vsi_rebuild_update_coalesce(vsi->q_vectors[i],
+						&coalesce[i]);
+
+	for (; i < vsi->num_q_vectors; i++) {
+		struct ice_coalesce_stored coalesce_dflt = {
+			.itr_tx = ICE_DFLT_TX_ITR,
+			.itr_rx = ICE_DFLT_RX_ITR,
+			.intrl = 0
+		};
+		ice_vsi_rebuild_update_coalesce(vsi->q_vectors[i],
+						&coalesce_dflt);
+	}
+}
+
 /**
  * ice_vsi_rebuild - Rebuild VSI after reset
  * @vsi: VSI to be rebuild
@@ -2463,6 +2554,8 @@ int ice_vsi_release(struct ice_vsi *vsi)
 int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
+	struct ice_coalesce_stored *coalesce;
+	int prev_num_q_vectors = 0;
 	struct ice_vf *vf = NULL;
 	enum ice_status status;
 	struct ice_pf *pf;
@@ -2475,6 +2568,11 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	if (vsi->type == ICE_VSI_VF)
 		vf = &pf->vf[vsi->vf_id];
 
+	coalesce = kcalloc(vsi->num_q_vectors,
+			   sizeof(struct ice_coalesce_stored), GFP_KERNEL);
+	if (coalesce)
+		prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi,
+								  coalesce);
 	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
 	ice_vsi_free_q_vectors(vsi);
 
@@ -2587,6 +2685,9 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 			return ice_schedule_reset(pf, ICE_RESET_PFR);
 		}
 	}
+	ice_vsi_rebuild_set_coalesce(vsi, coalesce, prev_num_q_vectors);
+	kfree(coalesce);
+
 	return 0;
 
 err_vectors:
@@ -2601,6 +2702,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 err_vsi:
 	ice_vsi_clear(vsi);
 	set_bit(__ICE_RESET_FAILED, pf->state);
+	kfree(coalesce);
 	return ret;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index a84cc0e6dd27..a86270696df1 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -341,6 +341,12 @@ struct ice_ring_container {
 	u16 itr_setting;
 };
 
+struct ice_coalesce_stored {
+	u16 itr_tx;
+	u16 itr_rx;
+	u8 intrl;
+};
+
 /* iterator for handling rings in ring container */
 #define ice_for_each_ring(pos, head) \
 	for (pos = (head).ring; pos; pos = pos->next)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

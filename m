Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C3C145F7B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2020 00:54:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7955A88182;
	Wed, 22 Jan 2020 23:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xE2GpGRgDnvc; Wed, 22 Jan 2020 23:54:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 10A5988177;
	Wed, 22 Jan 2020 23:54:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C57191BF988
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BB49081016
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GmjLf9H-ZlUv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E85E381EAA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:54:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="259651615"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2020 15:54:22 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2020 07:21:29 -0800
Message-Id: <20200122152138.41585-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
References: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S38 06/15] ice: Add support to
 enable/disable all Rx queues before waiting
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

From: Brett Creeley <brett.creeley@intel.com>

Currently when we enable/disable all Rx queues we do the following
sequence for each Rx queue and then move to the next queue.

1. Enable/Disable the Rx queue via register write.
2. Read the configuration register to determine if the Rx queue was
enabled/disabled successfully.

In some cases enabling/disabling queue 0 fails because of step 2 above.
Fix this by doing step 1 for all of the Rx queues and then step 2 for
all of the Rx queues.

Also, there are cases where we enable/disable a single queue (i.e.
SR-IOV and XDP) so add a new function that does step 1 and 2 above with
a read flush in between.

This change also required a single Rx queue to be enabled/disabled with
and without waiting for the change to propagate through hardware. Fix
this by adding a boolean wait flag to the necessary functions.

Also, add the keywords "one" and "all" to distinguish between
enabling/disabling a single Rx queue and all Rx queues respectively.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c     | 42 ++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_base.h     |  4 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 32 +++++++++-----
 drivers/net/ethernet/intel/ice/ice_lib.h      |  4 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  4 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  7 ++--
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  4 +-
 8 files changed, 67 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 81885efadc7a..1c41e7e6d548 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -459,17 +459,20 @@ int __ice_vsi_get_qs(struct ice_qs_cfg *qs_cfg)
 }
 
 /**
- * ice_vsi_ctrl_rx_ring - Start or stop a VSI's Rx ring
+ * ice_vsi_ctrl_one_rx_ring - start/stop VSI's Rx ring with no busy wait
  * @vsi: the VSI being configured
- * @ena: start or stop the Rx rings
- * @rxq_idx: Rx queue index
+ * @ena: start or stop the Rx ring
+ * @rxq_idx: 0-based Rx queue index for the VSI passed in
+ * @wait: wait or don't wait for configuration to finish in hardware
+ *
+ * Return 0 on success and negative on error.
  */
-int ice_vsi_ctrl_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx)
+int
+ice_vsi_ctrl_one_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx, bool wait)
 {
 	int pf_q = vsi->rxq_map[rxq_idx];
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	int ret = 0;
 	u32 rx_reg;
 
 	rx_reg = rd32(hw, QRX_CTRL(pf_q));
@@ -485,13 +488,30 @@ int ice_vsi_ctrl_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx)
 		rx_reg &= ~QRX_CTRL_QENA_REQ_M;
 	wr32(hw, QRX_CTRL(pf_q), rx_reg);
 
-	/* wait for the change to finish */
-	ret = ice_pf_rxq_wait(pf, pf_q, ena);
-	if (ret)
-		dev_err(ice_pf_to_dev(pf), "VSI idx %d Rx ring %d %sable timeout\n",
-			vsi->idx, pf_q, (ena ? "en" : "dis"));
+	if (!wait)
+		return 0;
+
+	ice_flush(hw);
+	return ice_pf_rxq_wait(pf, pf_q, ena);
+}
 
-	return ret;
+/**
+ * ice_vsi_wait_one_rx_ring - wait for a VSI's Rx ring to be stopped/started
+ * @vsi: the VSI being configured
+ * @ena: true/false to verify Rx ring has been enabled/disabled respectively
+ * @rxq_idx: 0-based Rx queue index for the VSI passed in
+ *
+ * This routine will wait for the given Rx queue of the VSI to reach the
+ * enabled or disabled state. Returns -ETIMEDOUT in case of failing to reach
+ * the requested state after multiple retries; else will return 0 in case of
+ * success.
+ */
+int ice_vsi_wait_one_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx)
+{
+	int pf_q = vsi->rxq_map[rxq_idx];
+	struct ice_pf *pf = vsi->back;
+
+	return ice_pf_rxq_wait(pf, pf_q, ena);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_base.h b/drivers/net/ethernet/intel/ice/ice_base.h
index 407995e8e944..44efdb627043 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.h
+++ b/drivers/net/ethernet/intel/ice/ice_base.h
@@ -8,7 +8,9 @@
 
 int ice_setup_rx_ctx(struct ice_ring *ring);
 int __ice_vsi_get_qs(struct ice_qs_cfg *qs_cfg);
-int ice_vsi_ctrl_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx);
+int
+ice_vsi_ctrl_one_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx, bool wait);
+int ice_vsi_wait_one_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx);
 int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi);
 void ice_vsi_map_rings_to_vectors(struct ice_vsi *vsi);
 void ice_vsi_free_q_vectors(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index c0f58e08890e..8da99e576d4e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -462,7 +462,7 @@ static int ice_lbtest_prepare_rings(struct ice_vsi *vsi)
 	if (status)
 		goto err_setup_rx_ring;
 
-	status = ice_vsi_start_rx_rings(vsi);
+	status = ice_vsi_start_all_rx_rings(vsi);
 	if (status)
 		goto err_start_rx_ring;
 
@@ -494,7 +494,7 @@ static int ice_lbtest_disable_rings(struct ice_vsi *vsi)
 		netdev_err(vsi->netdev, "Failed to stop Tx rings, VSI %d error %d\n",
 			   vsi->vsi_num, status);
 
-	status = ice_vsi_stop_rx_rings(vsi);
+	status = ice_vsi_stop_all_rx_rings(vsi);
 	if (status)
 		netdev_err(vsi->netdev, "Failed to stop Rx rings, VSI %d error %d\n",
 			   vsi->vsi_num, status);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 3d851ac489cf..7e927576fcf0 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -26,16 +26,26 @@ const char *ice_vsi_type_str(enum ice_vsi_type type)
 }
 
 /**
- * ice_vsi_ctrl_rx_rings - Start or stop a VSI's Rx rings
+ * ice_vsi_ctrl_all_rx_rings - Start or stop a VSI's Rx rings
  * @vsi: the VSI being configured
  * @ena: start or stop the Rx rings
+ *
+ * First enable/disable all of the Rx rings, flush any remaining writes, and
+ * then verify that they have all been enabled/disabled successfully. This will
+ * let all of the register writes complete when enabling/disabling the Rx rings
+ * before waiting for the change in hardware to complete.
  */
-static int ice_vsi_ctrl_rx_rings(struct ice_vsi *vsi, bool ena)
+static int ice_vsi_ctrl_all_rx_rings(struct ice_vsi *vsi, bool ena)
 {
 	int i, ret = 0;
 
+	for (i = 0; i < vsi->num_rxq; i++)
+		ice_vsi_ctrl_one_rx_ring(vsi, ena, i, false);
+
+	ice_flush(&vsi->back->hw);
+
 	for (i = 0; i < vsi->num_rxq; i++) {
-		ret = ice_vsi_ctrl_rx_ring(vsi, ena, i);
+		ret = ice_vsi_wait_one_rx_ring(vsi, ena, i);
 		if (ret)
 			break;
 	}
@@ -1717,25 +1727,25 @@ int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 }
 
 /**
- * ice_vsi_start_rx_rings - start VSI's Rx rings
- * @vsi: the VSI whose rings are to be started
+ * ice_vsi_start_all_rx_rings - start/enable all of a VSI's Rx rings
+ * @vsi: the VSI whose rings are to be enabled
  *
  * Returns 0 on success and a negative value on error
  */
-int ice_vsi_start_rx_rings(struct ice_vsi *vsi)
+int ice_vsi_start_all_rx_rings(struct ice_vsi *vsi)
 {
-	return ice_vsi_ctrl_rx_rings(vsi, true);
+	return ice_vsi_ctrl_all_rx_rings(vsi, true);
 }
 
 /**
- * ice_vsi_stop_rx_rings - stop VSI's Rx rings
- * @vsi: the VSI
+ * ice_vsi_stop_all_rx_rings - stop/disable all of a VSI's Rx rings
+ * @vsi: the VSI whose rings are to be disabled
  *
  * Returns 0 on success and a negative value on error
  */
-int ice_vsi_stop_rx_rings(struct ice_vsi *vsi)
+int ice_vsi_stop_all_rx_rings(struct ice_vsi *vsi)
 {
-	return ice_vsi_ctrl_rx_rings(vsi, false);
+	return ice_vsi_ctrl_all_rx_rings(vsi, false);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index b1e131c44e52..a83856f8e12b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -32,9 +32,9 @@ int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi);
 
 int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena);
 
-int ice_vsi_start_rx_rings(struct ice_vsi *vsi);
+int ice_vsi_start_all_rx_rings(struct ice_vsi *vsi);
 
-int ice_vsi_stop_rx_rings(struct ice_vsi *vsi);
+int ice_vsi_stop_all_rx_rings(struct ice_vsi *vsi);
 
 int
 ice_vsi_stop_lan_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4f20add0c5e3..8816ac1ec573 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4031,7 +4031,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
 	 * Tx queue group list was configured and the context bits were
 	 * programmed using ice_vsi_cfg_txqs
 	 */
-	err = ice_vsi_start_rx_rings(vsi);
+	err = ice_vsi_start_all_rx_rings(vsi);
 	if (err)
 		return err;
 
@@ -4410,7 +4410,7 @@ int ice_down(struct ice_vsi *vsi)
 				   vsi->vsi_num, tx_err);
 	}
 
-	rx_err = ice_vsi_stop_rx_rings(vsi);
+	rx_err = ice_vsi_stop_all_rx_rings(vsi);
 	if (rx_err)
 		netdev_err(vsi->netdev, "Failed stop Rx rings, VSI %d error %d\n",
 			   vsi->vsi_num, rx_err);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 993bc89c920e..cc5d9ed5e4ec 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -271,7 +271,7 @@ static void ice_dis_vf_qs(struct ice_vf *vf)
 	vsi = pf->vsi[vf->lan_vsi_idx];
 
 	ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
-	ice_vsi_stop_rx_rings(vsi);
+	ice_vsi_stop_all_rx_rings(vsi);
 	ice_set_vf_state_qs_dis(vf);
 }
 
@@ -2026,7 +2026,7 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 		if (test_bit(vf_q_id, vf->rxq_ena))
 			continue;
 
-		if (ice_vsi_ctrl_rx_ring(vsi, true, vf_q_id)) {
+		if (ice_vsi_ctrl_one_rx_ring(vsi, true, vf_q_id, true)) {
 			dev_err(ice_pf_to_dev(vsi->back), "Failed to enable Rx ring %d on VSI %d\n",
 				vf_q_id, vsi->vsi_num);
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -2154,7 +2154,8 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 			if (!test_bit(vf_q_id, vf->rxq_ena))
 				continue;
 
-			if (ice_vsi_ctrl_rx_ring(vsi, false, vf_q_id)) {
+			if (ice_vsi_ctrl_one_rx_ring(vsi, false, vf_q_id,
+						     true)) {
 				dev_err(ice_pf_to_dev(vsi->back), "Failed to stop Rx ring %d on VSI %d\n",
 					vf_q_id, vsi->vsi_num);
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 4d3407bbd4c4..fd96301e59bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -183,7 +183,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 		if (err)
 			return err;
 	}
-	err = ice_vsi_ctrl_rx_ring(vsi, false, q_idx);
+	err = ice_vsi_ctrl_one_rx_ring(vsi, false, q_idx, true);
 	if (err)
 		return err;
 
@@ -243,7 +243,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 
 	ice_qvec_cfg_msix(vsi, q_vector);
 
-	err = ice_vsi_ctrl_rx_ring(vsi, true, q_idx);
+	err = ice_vsi_ctrl_one_rx_ring(vsi, true, q_idx, true);
 	if (err)
 		goto free_buf;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2AF14F45D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2020 23:12:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF45E86B45;
	Fri, 31 Jan 2020 22:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id smM_jcGiJtbn; Fri, 31 Jan 2020 22:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2099186591;
	Fri, 31 Jan 2020 22:12:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E632A1BF37B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 22:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E2E778781D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 22:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id okb3fUI9vyWX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2020 22:12:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2743E87898
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 22:12:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 14:12:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,387,1574150400"; d="scan'208";a="310126639"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2020 14:12:02 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 31 Jan 2020 05:39:01 -0800
Message-Id: <20200131133905.42518-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200131133905.42518-1-anthony.l.nguyen@intel.com>
References: <20200131133905.42518-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S37 v2 11/15] ice: Use ice_pf_to_dev
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

Use ice_pf_to_dev(pf) instead of &pf->pdev->dev
Use ice_pf_to_dev(vsi->back) instead of &vsi->back->pdev->dev
When a pointer to the pf instance is available, use ice_pf_to_dev
instead of ice_hw_to_dev

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c        | 12 ++++++------
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c      |  2 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c     |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c         | 14 +++++++-------
 drivers/net/ethernet/intel/ice/ice_main.c        | 16 ++++++++--------
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c |  8 ++++----
 6 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index d8e975cceb21..8c7d08e2916e 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -324,7 +324,7 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 			if (err)
 				return err;
 
-			dev_info(&vsi->back->pdev->dev, "Registered XDP mem model MEM_TYPE_ZERO_COPY on Rx ring %d\n",
+			dev_info(ice_pf_to_dev(vsi->back), "Registered XDP mem model MEM_TYPE_ZERO_COPY on Rx ring %d\n",
 				 ring->q_index);
 		} else {
 			ring->zca.free = NULL;
@@ -405,7 +405,7 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	/* Absolute queue number out of 2K needs to be passed */
 	err = ice_write_rxq_ctx(hw, &rlan_ctx, pf_q);
 	if (err) {
-		dev_err(&vsi->back->pdev->dev,
+		dev_err(ice_pf_to_dev(vsi->back),
 			"Failed to set LAN Rx queue context for absolute Rx queue %d error: %d\n",
 			pf_q, err);
 		return -EIO;
@@ -428,7 +428,7 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	      ice_alloc_rx_bufs_slow_zc(ring, ICE_DESC_UNUSED(ring)) :
 	      ice_alloc_rx_bufs(ring, ICE_DESC_UNUSED(ring));
 	if (err)
-		dev_info(&vsi->back->pdev->dev,
+		dev_info(ice_pf_to_dev(vsi->back),
 			 "Failed allocate some buffers on %sRx ring %d (pf_q %d)\n",
 			 ring->xsk_umem ? "UMEM enabled " : "",
 			 ring->q_index, pf_q);
@@ -815,13 +815,13 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 	 * queues at the hardware level anyway.
 	 */
 	if (status == ICE_ERR_RESET_ONGOING) {
-		dev_dbg(&vsi->back->pdev->dev,
+		dev_dbg(ice_pf_to_dev(vsi->back),
 			"Reset in progress. LAN Tx queues already disabled\n");
 	} else if (status == ICE_ERR_DOES_NOT_EXIST) {
-		dev_dbg(&vsi->back->pdev->dev,
+		dev_dbg(ice_pf_to_dev(vsi->back),
 			"LAN Tx queues do not exist, nothing to disable\n");
 	} else if (status) {
-		dev_err(&vsi->back->pdev->dev,
+		dev_err(ice_pf_to_dev(vsi->back),
 			"Failed to disable LAN Tx queues, error: %d\n", status);
 		return -ENODEV;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index 926c9772f086..265cf69b321b 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -882,7 +882,7 @@ ice_dcbnl_vsi_del_app(struct ice_vsi *vsi,
 	sapp.protocol = app->prot_id;
 	sapp.priority = app->priority;
 	err = ice_dcbnl_delapp(vsi->netdev, &sapp);
-	dev_dbg(&vsi->back->pdev->dev,
+	dev_dbg(ice_pf_to_dev(vsi->back),
 		"Deleting app for VSI idx=%d err=%d sel=%d proto=0x%x, prio=%d\n",
 		vsi->idx, err, app->selector, app->prot_id, app->priority);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 7539fd8147de..8110da94c979 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1058,7 +1058,7 @@ ice_set_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 		fec = ICE_FEC_NONE;
 		break;
 	default:
-		dev_warn(&vsi->back->pdev->dev, "Unsupported FEC mode: %d\n",
+		dev_warn(ice_pf_to_dev(vsi->back), "Unsupported FEC mode: %d\n",
 			 fecparam->fec);
 		return -EINVAL;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 37ff98da5ca8..ac06f0141740 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -117,7 +117,7 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
 		vsi->num_tx_desc = ICE_DFLT_NUM_TX_DESC;
 		break;
 	default:
-		dev_dbg(&vsi->back->pdev->dev,
+		dev_dbg(ice_pf_to_dev(vsi->back),
 			"Not setting number of Tx/Rx descriptors for VSI type %d\n",
 			vsi->type);
 		break;
@@ -735,7 +735,7 @@ static void ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 	vsi->num_txq = tx_count;
 
 	if (vsi->type == ICE_VSI_VF && vsi->num_txq != vsi->num_rxq) {
-		dev_dbg(&vsi->back->pdev->dev, "VF VSI should have same number of Tx and Rx queues. Hence making them equal\n");
+		dev_dbg(ice_pf_to_dev(vsi->back), "VF VSI should have same number of Tx and Rx queues. Hence making them equal\n");
 		/* since there is a chance that num_rxq could have been changed
 		 * in the above for loop, make num_txq equal to num_rxq.
 		 */
@@ -1488,7 +1488,7 @@ int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
 
 		err = ice_setup_rx_ctx(vsi->rx_rings[i]);
 		if (err) {
-			dev_err(&vsi->back->pdev->dev,
+			dev_err(ice_pf_to_dev(vsi->back),
 				"ice_setup_rx_ctx failed for RxQ %d, err %d\n",
 				i, err);
 			return err;
@@ -1658,7 +1658,7 @@ int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(&vsi->back->pdev->dev, "update VSI for VLAN insert failed, err %d aq_err %d\n",
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN insert failed, err %d aq_err %d\n",
 			status, hw->adminq.sq_last_status);
 		ret = -EIO;
 		goto out;
@@ -1704,7 +1704,7 @@ int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(&vsi->back->pdev->dev, "update VSI for VLAN strip failed, ena = %d err %d aq_err %d\n",
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN strip failed, ena = %d err %d aq_err %d\n",
 			ena, status, hw->adminq.sq_last_status);
 		ret = -EIO;
 		goto out;
@@ -1869,7 +1869,7 @@ ice_vsi_set_q_vectors_reg_idx(struct ice_vsi *vsi)
 		struct ice_q_vector *q_vector = vsi->q_vectors[i];
 
 		if (!q_vector) {
-			dev_err(&vsi->back->pdev->dev,
+			dev_err(ice_pf_to_dev(vsi->back),
 				"Failed to set reg_idx on q_vector %d VSI %d\n",
 				i, vsi->vsi_num);
 			goto clear_reg_idx;
@@ -3011,7 +3011,7 @@ ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set)
 		status = ice_remove_mac(&vsi->back->hw, &tmp_add_list);
 
 cfg_mac_fltr_exit:
-	ice_free_fltr_list(&vsi->back->pdev->dev, &tmp_add_list);
+	ice_free_fltr_list(ice_pf_to_dev(vsi->back), &tmp_add_list);
 	return status;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f3ca72a19d03..3a05f9e3b86e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -269,7 +269,7 @@ static int ice_cfg_promisc(struct ice_vsi *vsi, u8 promisc_m, bool set_promisc)
  */
 static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 {
-	struct device *dev = &vsi->back->pdev->dev;
+	struct device *dev = ice_pf_to_dev(vsi->back);
 	struct net_device *netdev = vsi->netdev;
 	bool promisc_forced_on = false;
 	struct ice_pf *pf = vsi->back;
@@ -1371,7 +1371,7 @@ static int ice_force_phys_link_state(struct ice_vsi *vsi, bool link_up)
 	if (vsi->type != ICE_VSI_PF)
 		return 0;
 
-	dev = &vsi->back->pdev->dev;
+	dev = ice_pf_to_dev(vsi->back);
 
 	pi = vsi->port_info;
 
@@ -1692,7 +1692,7 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
  */
 static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 {
-	struct device *dev = &vsi->back->pdev->dev;
+	struct device *dev = ice_pf_to_dev(vsi->back);
 	int i;
 
 	for (i = 0; i < vsi->num_xdp_txq; i++) {
@@ -3933,14 +3933,14 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 
 	/* Don't set any netdev advanced features with device in Safe Mode */
 	if (ice_is_safe_mode(vsi->back)) {
-		dev_err(&vsi->back->pdev->dev,
+		dev_err(ice_pf_to_dev(vsi->back),
 			"Device is in Safe Mode - not enabling advanced netdev features\n");
 		return ret;
 	}
 
 	/* Do not change setting during reset */
 	if (ice_is_reset_in_progress(pf->state)) {
-		dev_err(&vsi->back->pdev->dev,
+		dev_err(ice_pf_to_dev(vsi->back),
 			"Device is resetting, changing advanced netdev features temporarily unavailable.\n");
 		return -EBUSY;
 	}
@@ -4483,7 +4483,7 @@ int ice_vsi_setup_tx_rings(struct ice_vsi *vsi)
 	int i, err = 0;
 
 	if (!vsi->num_txq) {
-		dev_err(&vsi->back->pdev->dev, "VSI %d has 0 Tx queues\n",
+		dev_err(ice_pf_to_dev(vsi->back), "VSI %d has 0 Tx queues\n",
 			vsi->vsi_num);
 		return -EINVAL;
 	}
@@ -4514,7 +4514,7 @@ int ice_vsi_setup_rx_rings(struct ice_vsi *vsi)
 	int i, err = 0;
 
 	if (!vsi->num_rxq) {
-		dev_err(&vsi->back->pdev->dev, "VSI %d has 0 Rx queues\n",
+		dev_err(ice_pf_to_dev(vsi->back), "VSI %d has 0 Rx queues\n",
 			vsi->vsi_num);
 		return -EINVAL;
 	}
@@ -5073,7 +5073,7 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(&vsi->back->pdev->dev, "update VSI for bridge mode failed, bmode = %d err %d aq_err %d\n",
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for bridge mode failed, bmode = %d err %d aq_err %d\n",
 			bmode, status, hw->adminq.sq_last_status);
 		ret = -EIO;
 		goto out;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index d8016d104ca4..a287068c5274 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -462,7 +462,7 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 vid, bool enable)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_info(&vsi->back->pdev->dev, "update VSI for port VLAN failed, err %d aq_err %d\n",
+		dev_info(ice_pf_to_dev(vsi->back), "update VSI for port VLAN failed, err %d aq_err %d\n",
 			 status, hw->adminq.sq_last_status);
 		ret = -EIO;
 		goto out;
@@ -2038,7 +2038,7 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 			continue;
 
 		if (ice_vsi_ctrl_rx_ring(vsi, true, vf_q_id)) {
-			dev_err(&vsi->back->pdev->dev,
+			dev_err(ice_pf_to_dev(vsi->back),
 				"Failed to enable Rx ring %d on VSI %d\n",
 				vf_q_id, vsi->vsi_num);
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -2141,7 +2141,7 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 
 			if (ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, vf->vf_id,
 						 ring, &txq_meta)) {
-				dev_err(&vsi->back->pdev->dev,
+				dev_err(ice_pf_to_dev(vsi->back),
 					"Failed to stop Tx ring %d on VSI %d\n",
 					vf_q_id, vsi->vsi_num);
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -2168,7 +2168,7 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 				continue;
 
 			if (ice_vsi_ctrl_rx_ring(vsi, false, vf_q_id)) {
-				dev_err(&vsi->back->pdev->dev,
+				dev_err(ice_pf_to_dev(vsi->back),
 					"Failed to stop Rx ring %d on VSI %d\n",
 					vf_q_id, vsi->vsi_num);
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

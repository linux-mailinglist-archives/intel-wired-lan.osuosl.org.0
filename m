Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08577145F78
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2020 00:54:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC82C81EAA;
	Wed, 22 Jan 2020 23:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1xqUS-yLw00M; Wed, 22 Jan 2020 23:54:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BF7881EE9;
	Wed, 22 Jan 2020 23:54:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5565E1BF977
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B71C834A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hUoZP8xLHv2o for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 23:54:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 586A181A29
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:54:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="259651609"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2020 15:54:21 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2020 07:21:24 -0800
Message-Id: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S38 01/15] ice: Add initial support for
 QinQ
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

Allow support for S-Tag + C-Tag VLAN traffic by disabling pruning when
there are no 0x8100 VLAN interfaces currently created on top of the PF.
When an 0x8100 VLAN interface is configured, enable pruning and only
support single and double C-Tag VLAN traffic. If all of the 0x8100
interfaces that were created on top of the PF are removed via
ethtool -K <iface> rx-vlan-filter off or via ip tools, then disable
pruning and allow S-Tag + C-Tag traffic again.

Add VLAN 0 filter by default for the PF. This is because a bridge
sets the default_pvid to 1, sends the request down to
ice_vlan_rx_add_vid(), and we never get the request to add VLAN 0 via
the 8021q module which causes all untagged traffic to be dropped.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c      | 43 +++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_lib.h      |  2 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 21 ++++++---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 14 +++---
 4 files changed, 63 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 3c9353d7b0ed..3d851ac489cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1383,7 +1383,9 @@ int ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid)
 	list_add(&tmp->list_entry, &tmp_add_list);
 
 	status = ice_add_vlan(&pf->hw, &tmp_add_list);
-	if (status) {
+	if (!status) {
+		vsi->num_vlan++;
+	} else {
 		err = -ENODEV;
 		dev_err(dev, "Failure Adding VLAN %d on VSI %i\n", vid,
 			vsi->vsi_num);
@@ -1425,10 +1427,12 @@ int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
 	list_add(&list->list_entry, &tmp_add_list);
 
 	status = ice_remove_vlan(&pf->hw, &tmp_add_list);
-	if (status == ICE_ERR_DOES_NOT_EXIST) {
+	if (!status) {
+		vsi->num_vlan--;
+	} else if (status == ICE_ERR_DOES_NOT_EXIST) {
 		dev_dbg(dev, "Failed to remove VLAN %d on VSI %i, it does not exist, status: %d\n",
 			vid, vsi->vsi_num, status);
-	} else if (status) {
+	} else {
 		dev_err(dev, "Error removing VLAN %d on vsi %i error: %d\n",
 			vid, vsi->vsi_num, status);
 		err = -EIO;
@@ -1790,6 +1794,26 @@ int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi)
 	return ice_vsi_stop_tx_rings(vsi, ICE_NO_RESET, 0, vsi->xdp_rings);
 }
 
+/**
+ * ice_vsi_is_vlan_pruning_ena - check if VLAN pruning is enabled or not
+ * @vsi: VSI to check whether or not VLAN pruning is enabled.
+ *
+ * returns true if Rx VLAN pruning and Tx VLAN anti-spoof is enabled and false
+ * otherwise.
+ */
+bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi)
+{
+	u8 rx_pruning = ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
+	u8 tx_pruning = ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
+		ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S;
+
+	if (!vsi)
+		return false;
+
+	return ((vsi->info.sw_flags2 & rx_pruning) &&
+		(vsi->info.sec_flags & tx_pruning));
+}
+
 /**
  * ice_cfg_vlan_pruning - enable or disable VLAN pruning on the VSI
  * @vsi: VSI to enable or disable VLAN pruning on
@@ -2060,6 +2084,17 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 		if (ret)
 			goto unroll_vector_base;
 
+		/* Always add VLAN ID 0 switch rule by default. This is needed
+		 * in order to allow all untagged and 0 tagged priority traffic
+		 * if Rx VLAN pruning is enabled. Also there are cases where we
+		 * don't get the call to add VLAN 0 via ice_vlan_rx_add_vid()
+		 * so this handles those cases (i.e. adding the PF to a bridge
+		 * without the 8021q module loaded).
+		 */
+		ret = ice_vsi_add_vlan(vsi, 0);
+		if (ret)
+			goto unroll_clear_rings;
+
 		ice_vsi_map_rings_to_vectors(vsi);
 
 		/* Do not exit if configuring RSS had an issue, at least
@@ -2139,6 +2174,8 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 
 	return vsi;
 
+unroll_clear_rings:
+	ice_vsi_clear_rings(vsi);
 unroll_vector_base:
 	/* reclaim SW interrupts back to the common pool */
 	ice_free_res(pf->irq_tracker, vsi->base_vector, vsi->idx);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 002fdbdade4f..b1e131c44e52 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -44,6 +44,8 @@ int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi);
 
 int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi);
 
+bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi);
+
 int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc);
 
 void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1bf6d21c38e4..4f20add0c5e3 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2467,16 +2467,19 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
 	if (vsi->info.pvid)
 		return -EINVAL;
 
-	/* Enable VLAN pruning when VLAN 0 is added */
-	if (unlikely(!vid)) {
+	/* VLAN 0 is added by default during load/reset */
+	if (!vid)
+		return 0;
+
+	/* Enable VLAN pruning when a VLAN other than 0 is added */
+	if (!ice_vsi_is_vlan_pruning_ena(vsi)) {
 		ret = ice_cfg_vlan_pruning(vsi, true, false);
 		if (ret)
 			return ret;
 	}
 
-	/* Add all VLAN IDs including 0 to the switch filter. VLAN ID 0 is
-	 * needed to continue allowing all untagged packets since VLAN prune
-	 * list is applied to all packets by the switch
+	/* Add a switch rule for this VLAN ID so its corresponding VLAN tagged
+	 * packets aren't pruned by the device's internal switch on Rx
 	 */
 	ret = ice_vsi_add_vlan(vsi, vid);
 	if (!ret) {
@@ -2506,6 +2509,10 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
 	if (vsi->info.pvid)
 		return -EINVAL;
 
+	/* don't allow removal of VLAN 0 */
+	if (!vid)
+		return 0;
+
 	/* Make sure ice_vsi_kill_vlan is successful before updating VLAN
 	 * information
 	 */
@@ -2513,8 +2520,8 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
 	if (ret)
 		return ret;
 
-	/* Disable VLAN pruning when VLAN 0 is removed */
-	if (unlikely(!vid))
+	/* Disable pruning when VLAN 0 is the only VLAN rule */
+	if (vsi->num_vlan == 1 && ice_vsi_is_vlan_pruning_ena(vsi))
 		ret = ice_cfg_vlan_pruning(vsi, false, false);
 
 	vsi->vlan_ena = false;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 1874bfa65796..8230a58a9b19 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2843,9 +2843,9 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 				goto error_param;
 			}
 
-			vsi->num_vlan++;
-			/* Enable VLAN pruning when VLAN is added */
-			if (!vlan_promisc) {
+			/* Enable VLAN pruning when non-zero VLAN is added */
+			if (!vlan_promisc && vid &&
+			    !ice_vsi_is_vlan_pruning_ena(vsi)) {
 				status = ice_cfg_vlan_pruning(vsi, true, false);
 				if (status) {
 					v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -2853,7 +2853,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 						vid, status);
 					goto error_param;
 				}
-			} else {
+			} else if (vlan_promisc) {
 				/* Enable Ucast/Mcast VLAN promiscuous mode */
 				promisc_m = ICE_PROMISC_VLAN_TX |
 					    ICE_PROMISC_VLAN_RX;
@@ -2897,9 +2897,9 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 				goto error_param;
 			}
 
-			vsi->num_vlan--;
-			/* Disable VLAN pruning when the last VLAN is removed */
-			if (!vsi->num_vlan)
+			/* Disable VLAN pruning when only VLAN 0 is left */
+			if (vsi->num_vlan == 1 &&
+			    ice_vsi_is_vlan_pruning_ena(vsi))
 				ice_cfg_vlan_pruning(vsi, false, false);
 
 			/* Disable Unicast/Multicast VLAN promiscuous mode */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

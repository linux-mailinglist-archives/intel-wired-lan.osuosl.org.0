Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B70463FF2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 22:23:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D4C740177;
	Tue, 30 Nov 2021 21:23:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aaBBICNpsfqQ; Tue, 30 Nov 2021 21:23:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E822A4018B;
	Tue, 30 Nov 2021 21:23:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E9291BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A26B6070A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L81QWyyas1iF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 21:23:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 08BBB605C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223550552"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="223550552"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 13:23:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="499946565"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga007.jf.intel.com with ESMTP; 30 Nov 2021 13:23:29 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Nov 2021 13:21:44 -0800
Message-Id: <20211130212155.27852-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211130212155.27852-1-anthony.l.nguyen@intel.com>
References: <20211130212155.27852-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 03/14] ice: Add new VSI VLAN ops
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

Incoming changes to support 802.1Q and/or 802.1ad VLAN filtering and
offloads require more flexibility when configuring VLANs. The VSI VLAN
interface will allow flexibility for configuring VLANs for all VSI
types. Add new files to separate the VSI VLAN ops and move functions to
make the code more organized.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   2 +
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 207 +----------
 drivers/net/ethernet/intel/ice/ice_lib.h      |  11 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  30 +-
 drivers/net/ethernet/intel/ice/ice_osdep.h    |   1 +
 drivers/net/ethernet/intel/ice/ice_switch.h   |   9 -
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 111 +-----
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 326 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |  27 ++
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |  20 ++
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |  28 ++
 14 files changed, 450 insertions(+), 335 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index c22434a3ec4d..c40b3aa1d195 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -18,6 +18,8 @@ ice-y := ice_main.o	\
 	 ice_txrx_lib.o	\
 	 ice_txrx.o	\
 	 ice_fltr.o	\
+	 ice_vsi_vlan_ops.o \
+	 ice_vsi_vlan_lib.o \
 	 ice_fdir.o	\
 	 ice_ethtool_fdir.o \
 	 ice_flex_pipe.o \
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 6fa06b00c268..efcc713ba287 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -73,6 +73,7 @@
 #include "ice_eswitch.h"
 #include "ice_lag.h"
 #include "ice_gnss.h"
+#include "ice_vsi_vlan_ops.h"
 
 #define ICE_BAR0		0
 #define ICE_REQ_DESC_MULTIPLE	32
@@ -370,6 +371,7 @@ struct ice_vsi {
 	u8 irqs_ready:1;
 	u8 current_isup:1;		 /* Sync 'link up' logging */
 	u8 stat_offsets_loaded:1;
+	struct ice_vsi_vlan_ops vlan_ops;
 	u16 num_vlan;
 
 	/* queue information */
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 291748553800..0ff1a375f2aa 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -118,7 +118,7 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	struct ice_vsi *ctrl_vsi = pf->switchdev.control_vsi;
 	bool rule_added = false;
 
-	ice_vsi_manage_vlan_stripping(ctrl_vsi, false);
+	ctrl_vsi->vlan_ops.dis_stripping(ctrl_vsi);
 
 	ice_remove_vsi_fltr(&pf->hw, uplink_vsi->idx);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index cc135792834e..b50509584b31 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1694,62 +1694,6 @@ void ice_update_eth_stats(struct ice_vsi *vsi)
 	vsi->stat_offsets_loaded = true;
 }
 
-/**
- * ice_vsi_add_vlan - Add VSI membership for given VLAN
- * @vsi: the VSI being configured
- * @vid: VLAN ID to be added
- * @action: filter action to be performed on match
- */
-int
-ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action)
-{
-	struct ice_pf *pf = vsi->back;
-	struct device *dev;
-	int err = 0;
-
-	dev = ice_pf_to_dev(pf);
-
-	if (!ice_fltr_add_vlan(vsi, vid, action)) {
-		vsi->num_vlan++;
-	} else {
-		err = -ENODEV;
-		dev_err(dev, "Failure Adding VLAN %d on VSI %i\n", vid,
-			vsi->vsi_num);
-	}
-
-	return err;
-}
-
-/**
- * ice_vsi_kill_vlan - Remove VSI membership for a given VLAN
- * @vsi: the VSI being configured
- * @vid: VLAN ID to be removed
- *
- * Returns 0 on success and negative on failure
- */
-int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
-{
-	struct ice_pf *pf = vsi->back;
-	struct device *dev;
-	int err;
-
-	dev = ice_pf_to_dev(pf);
-
-	err = ice_fltr_remove_vlan(vsi, vid, ICE_FWD_TO_VSI);
-	if (!err) {
-		vsi->num_vlan--;
-	} else if (err == -ENOENT) {
-		dev_dbg(dev, "Failed to remove VLAN %d on VSI %i, it does not exist, error: %d\n",
-			vid, vsi->vsi_num, err);
-		err = 0;
-	} else {
-		dev_err(dev, "Error removing VLAN %d on vsi %i error: %d\n",
-			vid, vsi->vsi_num, err);
-	}
-
-	return err;
-}
-
 /**
  * ice_vsi_cfg_frame_size - setup max frame size and Rx buffer length
  * @vsi: VSI
@@ -2077,96 +2021,6 @@ void ice_vsi_cfg_msix(struct ice_vsi *vsi)
 	}
 }
 
-/**
- * ice_vsi_manage_vlan_insertion - Manage VLAN insertion for the VSI for Tx
- * @vsi: the VSI being changed
- */
-int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
-{
-	struct ice_hw *hw = &vsi->back->hw;
-	struct ice_vsi_ctx *ctxt;
-	int ret;
-
-	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
-	if (!ctxt)
-		return -ENOMEM;
-
-	/* Here we are configuring the VSI to let the driver add VLAN tags by
-	 * setting vlan_flags to ICE_AQ_VSI_VLAN_MODE_ALL. The actual VLAN tag
-	 * insertion happens in the Tx hot path, in ice_tx_map.
-	 */
-	ctxt->info.vlan_flags = ICE_AQ_VSI_VLAN_MODE_ALL;
-
-	/* Preserve existing VLAN strip setting */
-	ctxt->info.vlan_flags |= (vsi->info.vlan_flags &
-				  ICE_AQ_VSI_VLAN_EMOD_M);
-
-	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID);
-
-	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
-	if (ret) {
-		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN insert failed, err %d aq_err %s\n",
-			ret, ice_aq_str(hw->adminq.sq_last_status));
-		goto out;
-	}
-
-	vsi->info.vlan_flags = ctxt->info.vlan_flags;
-out:
-	kfree(ctxt);
-	return ret;
-}
-
-/**
- * ice_vsi_manage_vlan_stripping - Manage VLAN stripping for the VSI for Rx
- * @vsi: the VSI being changed
- * @ena: boolean value indicating if this is a enable or disable request
- */
-int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
-{
-	struct ice_hw *hw = &vsi->back->hw;
-	struct ice_vsi_ctx *ctxt;
-	int ret;
-
-	/* do not allow modifying VLAN stripping when a port VLAN is configured
-	 * on this VSI
-	 */
-	if (vsi->info.pvid)
-		return 0;
-
-	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
-	if (!ctxt)
-		return -ENOMEM;
-
-	/* Here we are configuring what the VSI should do with the VLAN tag in
-	 * the Rx packet. We can either leave the tag in the packet or put it in
-	 * the Rx descriptor.
-	 */
-	if (ena)
-		/* Strip VLAN tag from Rx packet and put it in the desc */
-		ctxt->info.vlan_flags = ICE_AQ_VSI_VLAN_EMOD_STR_BOTH;
-	else
-		/* Disable stripping. Leave tag in packet */
-		ctxt->info.vlan_flags = ICE_AQ_VSI_VLAN_EMOD_NOTHING;
-
-	/* Allow all packets untagged/tagged */
-	ctxt->info.vlan_flags |= ICE_AQ_VSI_VLAN_MODE_ALL;
-
-	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID);
-
-	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
-	if (ret) {
-		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN strip failed, ena = %d err %d aq_err %s\n",
-			ena, ret, ice_aq_str(hw->adminq.sq_last_status));
-		ret = -EIO;
-		goto out;
-	}
-
-	vsi->info.vlan_flags = ctxt->info.vlan_flags;
-out:
-	kfree(ctxt);
-	return ret;
-}
-
 /**
  * ice_vsi_start_all_rx_rings - start/enable all of a VSI's Rx rings
  * @vsi: the VSI whose rings are to be enabled
@@ -2260,61 +2114,6 @@ bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi)
 	return (vsi->info.sw_flags2 & ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA);
 }
 
-/**
- * ice_cfg_vlan_pruning - enable or disable VLAN pruning on the VSI
- * @vsi: VSI to enable or disable VLAN pruning on
- * @ena: set to true to enable VLAN pruning and false to disable it
- *
- * returns 0 if VSI is updated, negative otherwise
- */
-int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena)
-{
-	struct ice_vsi_ctx *ctxt;
-	struct ice_pf *pf;
-	int status;
-
-	if (!vsi)
-		return -EINVAL;
-
-	/* Don't enable VLAN pruning if the netdev is currently in promiscuous
-	 * mode. VLAN pruning will be enabled when the interface exits
-	 * promiscuous mode if any VLAN filters are active.
-	 */
-	if (vsi->netdev && vsi->netdev->flags & IFF_PROMISC && ena)
-		return 0;
-
-	pf = vsi->back;
-	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
-	if (!ctxt)
-		return -ENOMEM;
-
-	ctxt->info = vsi->info;
-
-	if (ena)
-		ctxt->info.sw_flags2 |= ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
-	else
-		ctxt->info.sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
-
-	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SW_VALID);
-
-	status = ice_update_vsi(&pf->hw, vsi->idx, ctxt, NULL);
-	if (status) {
-		netdev_err(vsi->netdev, "%sabling VLAN pruning on VSI handle: %d, VSI HW ID: %d failed, err = %d, aq_err = %s\n",
-			   ena ? "En" : "Dis", vsi->idx, vsi->vsi_num,
-			   status, ice_aq_str(pf->hw.adminq.sq_last_status));
-		goto err_out;
-	}
-
-	vsi->info.sw_flags2 = ctxt->info.sw_flags2;
-
-	kfree(ctxt);
-	return 0;
-
-err_out:
-	kfree(ctxt);
-	return -EIO;
-}
-
 static void ice_vsi_set_tc_cfg(struct ice_vsi *vsi)
 {
 	if (!test_bit(ICE_FLAG_DCB_ENA, vsi->back->flags)) {
@@ -2594,6 +2393,8 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	if (ret)
 		goto unroll_get_qs;
 
+	ice_vsi_init_vlan_ops(vsi);
+
 	switch (vsi->type) {
 	case ICE_VSI_CTRL:
 	case ICE_VSI_SWITCHDEV_CTRL:
@@ -3257,6 +3058,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	if (vtype == ICE_VSI_VF)
 		vf = &pf->vf[vsi->vf_id];
 
+	ice_vsi_init_vlan_ops(vsi);
+
 	coalesce = kcalloc(vsi->num_q_vectors,
 			   sizeof(struct ice_coalesce_stored), GFP_KERNEL);
 	if (!coalesce)
@@ -4075,7 +3878,7 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
  */
 int ice_vsi_add_vlan_zero(struct ice_vsi *vsi)
 {
-	return ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI);
+	return vsi->vlan_ops.add_vlan(vsi, 0, ICE_FWD_TO_VSI);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 28e0f1147c82..427e5e4e9f17 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -22,15 +22,6 @@ int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi);
 
 void ice_vsi_cfg_msix(struct ice_vsi *vsi);
 
-int
-ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action);
-
-int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid);
-
-int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi);
-
-int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena);
-
 int ice_vsi_start_all_rx_rings(struct ice_vsi *vsi);
 
 int ice_vsi_stop_all_rx_rings(struct ice_vsi *vsi);
@@ -45,8 +36,6 @@ int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi);
 
 bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi);
 
-int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena);
-
 void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
 
 int ice_set_link(struct ice_vsi *vsi, bool ena);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 18ecb1eb85a6..904571527e27 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -401,7 +401,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 						~IFF_PROMISC;
 					goto out_promisc;
 				}
-				ice_cfg_vlan_pruning(vsi, false);
+				vsi->vlan_ops.dis_rx_filtering(vsi);
 			}
 		} else {
 			/* Clear Rx filter to remove traffic from wire */
@@ -415,7 +415,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 					goto out_promisc;
 				}
 				if (vsi->num_vlan > 1)
-					ice_cfg_vlan_pruning(vsi, true);
+					vsi->vlan_ops.ena_rx_filtering(vsi);
 			}
 		}
 	}
@@ -3429,7 +3429,7 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
 
 	/* Enable VLAN pruning when a VLAN other than 0 is added */
 	if (!ice_vsi_is_vlan_pruning_ena(vsi)) {
-		ret = ice_cfg_vlan_pruning(vsi, true);
+		ret = vsi->vlan_ops.ena_rx_filtering(vsi);
 		if (ret)
 			return ret;
 	}
@@ -3437,7 +3437,7 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
 	/* Add a switch rule for this VLAN ID so its corresponding VLAN tagged
 	 * packets aren't pruned by the device's internal switch on Rx
 	 */
-	ret = ice_vsi_add_vlan(vsi, vid, ICE_FWD_TO_VSI);
+	ret = vsi->vlan_ops.add_vlan(vsi, vid, ICE_FWD_TO_VSI);
 	if (!ret)
 		set_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
 
@@ -3464,16 +3464,16 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
 	if (!vid)
 		return 0;
 
-	/* Make sure ice_vsi_kill_vlan is successful before updating VLAN
+	/* Make sure VLAN delete is successful before updating VLAN
 	 * information
 	 */
-	ret = ice_vsi_kill_vlan(vsi, vid);
+	ret = vsi->vlan_ops.del_vlan(vsi, vid);
 	if (ret)
 		return ret;
 
 	/* Disable pruning when VLAN 0 is the only VLAN rule */
 	if (vsi->num_vlan == 1 && ice_vsi_is_vlan_pruning_ena(vsi))
-		ret = ice_cfg_vlan_pruning(vsi, false);
+		vsi->vlan_ops.dis_rx_filtering(vsi);
 
 	set_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
 	return ret;
@@ -5617,24 +5617,24 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 
 	if ((features & NETIF_F_HW_VLAN_CTAG_RX) &&
 	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
-		ret = ice_vsi_manage_vlan_stripping(vsi, true);
+		ret = vsi->vlan_ops.ena_stripping(vsi);
 	else if (!(features & NETIF_F_HW_VLAN_CTAG_RX) &&
 		 (netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
-		ret = ice_vsi_manage_vlan_stripping(vsi, false);
+		ret = vsi->vlan_ops.dis_stripping(vsi);
 
 	if ((features & NETIF_F_HW_VLAN_CTAG_TX) &&
 	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_TX))
-		ret = ice_vsi_manage_vlan_insertion(vsi);
+		ret = vsi->vlan_ops.ena_insertion(vsi);
 	else if (!(features & NETIF_F_HW_VLAN_CTAG_TX) &&
 		 (netdev->features & NETIF_F_HW_VLAN_CTAG_TX))
-		ret = ice_vsi_manage_vlan_insertion(vsi);
+		ret = vsi->vlan_ops.dis_insertion(vsi);
 
 	if ((features & NETIF_F_HW_VLAN_CTAG_FILTER) &&
 	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER))
-		ret = ice_cfg_vlan_pruning(vsi, true);
+		ret = vsi->vlan_ops.ena_rx_filtering(vsi);
 	else if (!(features & NETIF_F_HW_VLAN_CTAG_FILTER) &&
 		 (netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER))
-		ret = ice_cfg_vlan_pruning(vsi, false);
+		ret = vsi->vlan_ops.dis_rx_filtering(vsi);
 
 	if ((features & NETIF_F_NTUPLE) &&
 	    !(netdev->features & NETIF_F_NTUPLE)) {
@@ -5670,9 +5670,9 @@ static int ice_vsi_vlan_setup(struct ice_vsi *vsi)
 	int ret = 0;
 
 	if (vsi->netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
-		ret = ice_vsi_manage_vlan_stripping(vsi, true);
+		ret = vsi->vlan_ops.ena_stripping(vsi);
 	if (vsi->netdev->features & NETIF_F_HW_VLAN_CTAG_TX)
-		ret = ice_vsi_manage_vlan_insertion(vsi);
+		ret = vsi->vlan_ops.ena_insertion(vsi);
 
 	return ret;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_osdep.h b/drivers/net/ethernet/intel/ice/ice_osdep.h
index f57c414bc0a9..380e8ae94fc9 100644
--- a/drivers/net/ethernet/intel/ice/ice_osdep.h
+++ b/drivers/net/ethernet/intel/ice/ice_osdep.h
@@ -9,6 +9,7 @@
 #ifndef CONFIG_64BIT
 #include <linux/io-64-nonatomic-lo-hi.h>
 #endif
+#include <net/udp_tunnel.h>
 
 #define wr32(a, reg, value)	writel((value), ((a)->hw_addr + (reg)))
 #define rd32(a, reg)		readl((a)->hw_addr + (reg))
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index d8334beaaa8a..4fb1a7ae5dbb 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -33,15 +33,6 @@ struct ice_vsi_ctx {
 	struct ice_q_ctx *rdma_q_ctx[ICE_MAX_TRAFFIC_CLASS];
 };
 
-enum ice_sw_fwd_act_type {
-	ICE_FWD_TO_VSI = 0,
-	ICE_FWD_TO_VSI_LIST, /* Do not use this when adding filter */
-	ICE_FWD_TO_Q,
-	ICE_FWD_TO_QGRP,
-	ICE_DROP_PACKET,
-	ICE_INVAL_ACT
-};
-
 /* Switch recipe ID enum values are specific to hardware */
 enum ice_sw_lkup_type {
 	ICE_SW_LKUP_ETHERTYPE = 0,
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index caf0a02b25f5..ef2ef064a74c 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1007,6 +1007,15 @@ struct ice_hw_port_stats {
 	u64 fd_sb_match;
 };
 
+enum ice_sw_fwd_act_type {
+	ICE_FWD_TO_VSI = 0,
+	ICE_FWD_TO_VSI_LIST, /* Do not use this when adding filter */
+	ICE_FWD_TO_Q,
+	ICE_FWD_TO_QGRP,
+	ICE_DROP_PACKET,
+	ICE_INVAL_ACT
+};
+
 struct ice_aq_get_set_rss_lut_params {
 	u16 vsi_handle;		/* software VSI handle */
 	u16 lut_size;		/* size of the LUT buffer */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index ab03010c822d..6fa0968f0912 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -642,55 +642,6 @@ static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr, bool is_pfr)
 	}
 }
 
-/**
- * ice_vsi_manage_pvid - Enable or disable port VLAN for VSI
- * @vsi: the VSI to update
- * @pvid_info: VLAN ID and QoS used to set the PVID VSI context field
- * @enable: true for enable PVID false for disable
- */
-static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
-{
-	struct ice_hw *hw = &vsi->back->hw;
-	struct ice_aqc_vsi_props *info;
-	struct ice_vsi_ctx *ctxt;
-	int ret;
-
-	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
-	if (!ctxt)
-		return -ENOMEM;
-
-	ctxt->info = vsi->info;
-	info = &ctxt->info;
-	if (enable) {
-		info->vlan_flags = ICE_AQ_VSI_VLAN_MODE_UNTAGGED |
-			ICE_AQ_VSI_PVLAN_INSERT_PVID |
-			ICE_AQ_VSI_VLAN_EMOD_STR;
-		info->sw_flags2 |= ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
-	} else {
-		info->vlan_flags = ICE_AQ_VSI_VLAN_EMOD_NOTHING |
-			ICE_AQ_VSI_VLAN_MODE_ALL;
-		info->sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
-	}
-
-	info->pvid = cpu_to_le16(pvid_info);
-	info->valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID |
-					   ICE_AQ_VSI_PROP_SW_VALID);
-
-	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
-	if (ret) {
-		dev_info(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %d aq_err %s\n",
-			 ret, ice_aq_str(hw->adminq.sq_last_status));
-		goto out;
-	}
-
-	vsi->info.vlan_flags = info->vlan_flags;
-	vsi->info.sw_flags2 = info->sw_flags2;
-	vsi->info.pvid = info->pvid;
-out:
-	kfree(ctxt);
-	return ret;
-}
-
 /**
  * ice_vf_get_port_info - Get the VF's port info structure
  * @vf: VF used to get the port info structure for
@@ -815,7 +766,7 @@ static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf)
 	int err;
 
 	if (vf->port_vlan_info) {
-		err = ice_vsi_manage_pvid(vsi, vf->port_vlan_info, true);
+		err = vsi->vlan_ops.set_port_vlan(vsi, vf->port_vlan_info);
 		if (err) {
 			dev_err(dev, "failed to configure port VLAN via VSI parameters for VF %u, error %d\n",
 				vf->vf_id, err);
@@ -826,7 +777,7 @@ static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf)
 	}
 
 	/* vlan_id will either be 0 or the port VLAN number */
-	err = ice_vsi_add_vlan(vsi, vlan_id, ICE_FWD_TO_VSI);
+	err = vsi->vlan_ops.add_vlan(vsi, vlan_id, ICE_FWD_TO_VSI);
 	if (err) {
 		dev_err(dev, "failed to add %s VLAN %u filter for VF %u, error %d\n",
 			vf->port_vlan_info ? "port" : "", vlan_id, vf->vf_id,
@@ -837,37 +788,6 @@ static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf)
 	return 0;
 }
 
-static int ice_cfg_vlan_antispoof(struct ice_vsi *vsi, bool enable)
-{
-	struct ice_vsi_ctx *ctx;
-	int err;
-
-	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
-	if (!ctx)
-		return -ENOMEM;
-
-	ctx->info.sec_flags = vsi->info.sec_flags;
-	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
-
-	if (enable)
-		ctx->info.sec_flags |= ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
-			ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S;
-	else
-		ctx->info.sec_flags &= ~(ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
-					 ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
-
-	err = ice_update_vsi(&vsi->back->hw, vsi->idx, ctx, NULL);
-	if (err)
-		dev_err(ice_pf_to_dev(vsi->back), "Failed to configure Tx VLAN anti-spoof %s for VSI %d, error %d\n",
-			enable ? "ON" : "OFF", vsi->vsi_num, err);
-	else
-		vsi->info.sec_flags = ctx->info.sec_flags;
-
-	kfree(ctx);
-
-	return err;
-}
-
 static int ice_cfg_mac_antispoof(struct ice_vsi *vsi, bool enable)
 {
 	struct ice_vsi_ctx *ctx;
@@ -905,7 +825,7 @@ static int ice_vsi_ena_spoofchk(struct ice_vsi *vsi)
 {
 	int err;
 
-	err = ice_cfg_vlan_antispoof(vsi, true);
+	err = vsi->vlan_ops.ena_tx_filtering(vsi);
 	if (err)
 		return err;
 
@@ -920,7 +840,7 @@ static int ice_vsi_dis_spoofchk(struct ice_vsi *vsi)
 {
 	int err;
 
-	err = ice_cfg_vlan_antispoof(vsi, false);
+	err = vsi->vlan_ops.dis_tx_filtering(vsi);
 	if (err)
 		return err;
 
@@ -3131,9 +3051,9 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 
 	if (vsi->num_vlan || vf->port_vlan_info) {
 		if (rm_promisc)
-			ret = ice_cfg_vlan_pruning(vsi, true);
+			ret = vsi->vlan_ops.ena_rx_filtering(vsi);
 		else
-			ret = ice_cfg_vlan_pruning(vsi, false);
+			ret = vsi->vlan_ops.dis_rx_filtering(vsi);
 		if (ret) {
 			dev_err(dev, "Failed to configure VLAN pruning in promiscuous mode\n");
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -4330,7 +4250,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			if (!vid)
 				continue;
 
-			status = ice_vsi_add_vlan(vsi, vid, ICE_FWD_TO_VSI);
+			status = vsi->vlan_ops.add_vlan(vsi, vid, ICE_FWD_TO_VSI);
 			if (status) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
@@ -4339,7 +4259,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			/* Enable VLAN pruning when non-zero VLAN is added */
 			if (!vlan_promisc && vid &&
 			    !ice_vsi_is_vlan_pruning_ena(vsi)) {
-				status = ice_cfg_vlan_pruning(vsi, true);
+				status = vsi->vlan_ops.ena_rx_filtering(vsi);
 				if (status) {
 					v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 					dev_err(dev, "Enable VLAN pruning on VLAN ID: %d failed error-%d\n",
@@ -4381,10 +4301,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			if (!vid)
 				continue;
 
-			/* Make sure ice_vsi_kill_vlan is successful before
-			 * updating VLAN information
-			 */
-			status = ice_vsi_kill_vlan(vsi, vid);
+			status = vsi->vlan_ops.del_vlan(vsi, vid);
 			if (status) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
@@ -4393,7 +4310,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			/* Disable VLAN pruning when only VLAN 0 is left */
 			if (vsi->num_vlan == 1 &&
 			    ice_vsi_is_vlan_pruning_ena(vsi))
-				ice_cfg_vlan_pruning(vsi, false);
+				status = vsi->vlan_ops.dis_rx_filtering(vsi);
 
 			/* Disable Unicast/Multicast VLAN promiscuous mode */
 			if (vlan_promisc) {
@@ -4462,7 +4379,7 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)
 	}
 
 	vsi = ice_get_vf_vsi(vf);
-	if (ice_vsi_manage_vlan_stripping(vsi, true))
+	if (vsi->vlan_ops.ena_stripping(vsi))
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 
 error_param:
@@ -4497,7 +4414,7 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
 		goto error_param;
 	}
 
-	if (ice_vsi_manage_vlan_stripping(vsi, false))
+	if (vsi->vlan_ops.dis_stripping(vsi))
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 
 error_param:
@@ -4527,9 +4444,9 @@ static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
 		return 0;
 
 	if (ice_vf_vlan_offload_ena(vf->driver_caps))
-		return ice_vsi_manage_vlan_stripping(vsi, true);
+		return vsi->vlan_ops.ena_stripping(vsi);
 	else
-		return ice_vsi_manage_vlan_stripping(vsi, false);
+		return vsi->vlan_ops.dis_stripping(vsi);
 }
 
 static struct ice_vc_vf_ops ice_vc_vf_dflt_ops = {
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
new file mode 100644
index 000000000000..6b0a4bf28305
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
@@ -0,0 +1,326 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#include "ice_vsi_vlan_lib.h"
+#include "ice_lib.h"
+#include "ice_fltr.h"
+#include "ice.h"
+
+/**
+ * ice_vsi_add_vlan - default add VLAN implementation for all VSI types
+ * @vsi: VSI being configured
+ * @vid: VLAN ID to be added
+ * @action: filter action to be performed on match
+ */
+int
+ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action)
+{
+	int err = 0;
+
+	if (!ice_fltr_add_vlan(vsi, vid, action)) {
+		vsi->num_vlan++;
+	} else {
+		err = -ENODEV;
+		dev_err(ice_pf_to_dev(vsi->back), "Failure Adding VLAN %d on VSI %i\n",
+			vid, vsi->vsi_num);
+	}
+
+	return err;
+}
+
+/**
+ * ice_vsi_del_vlan - default del VLAN implementation for all VSI types
+ * @vsi: VSI being configured
+ * @vid: VLAN ID to be removed
+ */
+int ice_vsi_del_vlan(struct ice_vsi *vsi, u16 vid)
+{
+	struct ice_pf *pf = vsi->back;
+	struct device *dev;
+	int err;
+
+	dev = ice_pf_to_dev(pf);
+
+	err = ice_fltr_remove_vlan(vsi, vid, ICE_FWD_TO_VSI);
+	if (!err) {
+		vsi->num_vlan--;
+	} else if (err == -ENOENT) {
+		dev_dbg(dev, "Failed to remove VLAN %d on VSI %i, it does not exist\n",
+			vid, vsi->vsi_num);
+		err = 0;
+	} else {
+		dev_err(dev, "Error removing VLAN %d on VSI %i error: %d\n",
+			vid, vsi->vsi_num, err);
+	}
+
+	return err;
+}
+
+/**
+ * ice_vsi_manage_vlan_insertion - Manage VLAN insertion for the VSI for Tx
+ * @vsi: the VSI being changed
+ */
+static int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	struct ice_vsi_ctx *ctxt;
+	int err;
+
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
+	if (!ctxt)
+		return -ENOMEM;
+
+	/* Here we are configuring the VSI to let the driver add VLAN tags by
+	 * setting vlan_flags to ICE_AQ_VSI_VLAN_MODE_ALL. The actual VLAN tag
+	 * insertion happens in the Tx hot path, in ice_tx_map.
+	 */
+	ctxt->info.vlan_flags = ICE_AQ_VSI_VLAN_MODE_ALL;
+
+	/* Preserve existing VLAN strip setting */
+	ctxt->info.vlan_flags |= (vsi->info.vlan_flags &
+				  ICE_AQ_VSI_VLAN_EMOD_M);
+
+	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID);
+
+	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
+	if (err) {
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN insert failed, err %d aq_err %s\n",
+			err, ice_aq_str(hw->adminq.sq_last_status));
+		goto out;
+	}
+
+	vsi->info.vlan_flags = ctxt->info.vlan_flags;
+out:
+	kfree(ctxt);
+	return err;
+}
+
+/**
+ * ice_vsi_manage_vlan_stripping - Manage VLAN stripping for the VSI for Rx
+ * @vsi: the VSI being changed
+ * @ena: boolean value indicating if this is a enable or disable request
+ */
+static int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	struct ice_vsi_ctx *ctxt;
+	int err;
+
+	/* do not allow modifying VLAN stripping when a port VLAN is configured
+	 * on this VSI
+	 */
+	if (vsi->info.pvid)
+		return 0;
+
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
+	if (!ctxt)
+		return -ENOMEM;
+
+	/* Here we are configuring what the VSI should do with the VLAN tag in
+	 * the Rx packet. We can either leave the tag in the packet or put it in
+	 * the Rx descriptor.
+	 */
+	if (ena)
+		/* Strip VLAN tag from Rx packet and put it in the desc */
+		ctxt->info.vlan_flags = ICE_AQ_VSI_VLAN_EMOD_STR_BOTH;
+	else
+		/* Disable stripping. Leave tag in packet */
+		ctxt->info.vlan_flags = ICE_AQ_VSI_VLAN_EMOD_NOTHING;
+
+	/* Allow all packets untagged/tagged */
+	ctxt->info.vlan_flags |= ICE_AQ_VSI_VLAN_MODE_ALL;
+
+	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID);
+
+	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
+	if (err) {
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN strip failed, ena = %d err %d aq_err %s\n",
+			ena, err, ice_aq_str(hw->adminq.sq_last_status));
+		goto out;
+	}
+
+	vsi->info.vlan_flags = ctxt->info.vlan_flags;
+out:
+	kfree(ctxt);
+	return err;
+}
+
+int ice_vsi_ena_stripping(struct ice_vsi *vsi)
+{
+	return ice_vsi_manage_vlan_stripping(vsi, true);
+}
+
+int ice_vsi_dis_stripping(struct ice_vsi *vsi)
+{
+	return ice_vsi_manage_vlan_stripping(vsi, false);
+}
+
+int ice_vsi_ena_insertion(struct ice_vsi *vsi)
+{
+	return ice_vsi_manage_vlan_insertion(vsi);
+}
+
+int ice_vsi_dis_insertion(struct ice_vsi *vsi)
+{
+	return ice_vsi_manage_vlan_insertion(vsi);
+}
+
+/**
+ * ice_vsi_manage_pvid - Enable or disable port VLAN for VSI
+ * @vsi: the VSI to update
+ * @pvid_info: VLAN ID and QoS used to set the PVID VSI context field
+ * @enable: true for enable PVID false for disable
+ */
+static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	struct ice_aqc_vsi_props *info;
+	struct ice_vsi_ctx *ctxt;
+	int ret;
+
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
+	if (!ctxt)
+		return -ENOMEM;
+
+	ctxt->info = vsi->info;
+	info = &ctxt->info;
+	if (enable) {
+		info->vlan_flags = ICE_AQ_VSI_VLAN_MODE_UNTAGGED |
+			ICE_AQ_VSI_PVLAN_INSERT_PVID |
+			ICE_AQ_VSI_VLAN_EMOD_STR;
+		info->sw_flags2 |= ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
+	} else {
+		info->vlan_flags = ICE_AQ_VSI_VLAN_EMOD_NOTHING |
+			ICE_AQ_VSI_VLAN_MODE_ALL;
+		info->sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
+	}
+
+	info->pvid = cpu_to_le16(pvid_info);
+	info->valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID |
+					   ICE_AQ_VSI_PROP_SW_VALID);
+
+	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
+	if (ret) {
+		dev_info(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %d aq_err %s\n",
+			 ret, ice_aq_str(hw->adminq.sq_last_status));
+		goto out;
+	}
+
+	vsi->info.vlan_flags = info->vlan_flags;
+	vsi->info.sw_flags2 = info->sw_flags2;
+	vsi->info.pvid = info->pvid;
+out:
+	kfree(ctxt);
+	return ret;
+}
+
+int ice_vsi_set_port_vlan(struct ice_vsi *vsi, u16 pvid_info)
+{
+	return ice_vsi_manage_pvid(vsi, pvid_info, true);
+}
+
+/**
+ * ice_cfg_vlan_pruning - enable or disable VLAN pruning on the VSI
+ * @vsi: VSI to enable or disable VLAN pruning on
+ * @ena: set to true to enable VLAN pruning and false to disable it
+ *
+ * returns 0 if VSI is updated, negative otherwise
+ */
+static int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena)
+{
+	struct ice_vsi_ctx *ctxt;
+	struct ice_pf *pf;
+	int status;
+
+	if (!vsi)
+		return -EINVAL;
+
+	/* Don't enable VLAN pruning if the netdev is currently in promiscuous
+	 * mode. VLAN pruning will be enabled when the interface exits
+	 * promiscuous mode if any VLAN filters are active.
+	 */
+	if (vsi->netdev && vsi->netdev->flags & IFF_PROMISC && ena)
+		return 0;
+
+	pf = vsi->back;
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
+	if (!ctxt)
+		return -ENOMEM;
+
+	ctxt->info = vsi->info;
+
+	if (ena)
+		ctxt->info.sw_flags2 |= ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
+	else
+		ctxt->info.sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
+
+	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SW_VALID);
+
+	status = ice_update_vsi(&pf->hw, vsi->idx, ctxt, NULL);
+	if (status) {
+		netdev_err(vsi->netdev, "%sabling VLAN pruning on VSI handle: %d, VSI HW ID: %d failed, err = %d, aq_err = %s\n",
+			   ena ? "En" : "Dis", vsi->idx, vsi->vsi_num, status,
+			   ice_aq_str(pf->hw.adminq.sq_last_status));
+		goto err_out;
+	}
+
+	vsi->info.sw_flags2 = ctxt->info.sw_flags2;
+
+	kfree(ctxt);
+	return 0;
+
+err_out:
+	kfree(ctxt);
+	return status;
+}
+
+int ice_vsi_ena_rx_vlan_filtering(struct ice_vsi *vsi)
+{
+	return ice_cfg_vlan_pruning(vsi, true);
+}
+
+int ice_vsi_dis_rx_vlan_filtering(struct ice_vsi *vsi)
+{
+	return ice_cfg_vlan_pruning(vsi, false);
+}
+
+static int ice_cfg_vlan_antispoof(struct ice_vsi *vsi, bool enable)
+{
+	struct ice_vsi_ctx *ctx;
+	int err;
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->info.sec_flags = vsi->info.sec_flags;
+	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
+
+	if (enable)
+		ctx->info.sec_flags |= ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
+			ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S;
+	else
+		ctx->info.sec_flags &= ~(ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
+					 ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
+
+	err = ice_update_vsi(&vsi->back->hw, vsi->idx, ctx, NULL);
+	if (err)
+		dev_err(ice_pf_to_dev(vsi->back), "Failed to configure Tx VLAN anti-spoof %s for VSI %d, error %d\n",
+			enable ? "ON" : "OFF", vsi->vsi_num, err);
+	else
+		vsi->info.sec_flags = ctx->info.sec_flags;
+
+	kfree(ctx);
+
+	return err;
+}
+
+int ice_vsi_ena_tx_vlan_filtering(struct ice_vsi *vsi)
+{
+	return ice_cfg_vlan_antispoof(vsi, true);
+}
+
+int ice_vsi_dis_tx_vlan_filtering(struct ice_vsi *vsi)
+{
+	return ice_cfg_vlan_antispoof(vsi, false);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
new file mode 100644
index 000000000000..f9fe33026306
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#ifndef _ICE_VSI_VLAN_LIB_H_
+#define _ICE_VSI_VLAN_LIB_H_
+
+#include <linux/types.h>
+#include "ice_type.h"
+
+struct ice_vsi;
+
+int
+ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action);
+int ice_vsi_del_vlan(struct ice_vsi *vsi, u16 vid);
+
+int ice_vsi_ena_stripping(struct ice_vsi *vsi);
+int ice_vsi_dis_stripping(struct ice_vsi *vsi);
+int ice_vsi_ena_insertion(struct ice_vsi *vsi);
+int ice_vsi_dis_insertion(struct ice_vsi *vsi);
+int ice_vsi_set_port_vlan(struct ice_vsi *vsi, u16 pvid_info);
+
+int ice_vsi_ena_rx_vlan_filtering(struct ice_vsi *vsi);
+int ice_vsi_dis_rx_vlan_filtering(struct ice_vsi *vsi);
+int ice_vsi_ena_tx_vlan_filtering(struct ice_vsi *vsi);
+int ice_vsi_dis_tx_vlan_filtering(struct ice_vsi *vsi);
+
+#endif /* _ICE_VSI_VLAN_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c
new file mode 100644
index 000000000000..3bab6c025856
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#include "ice_vsi_vlan_ops.h"
+#include "ice.h"
+
+void ice_vsi_init_vlan_ops(struct ice_vsi *vsi)
+{
+	vsi->vlan_ops.add_vlan = ice_vsi_add_vlan;
+	vsi->vlan_ops.del_vlan = ice_vsi_del_vlan;
+	vsi->vlan_ops.ena_stripping = ice_vsi_ena_stripping;
+	vsi->vlan_ops.dis_stripping = ice_vsi_dis_stripping;
+	vsi->vlan_ops.ena_insertion = ice_vsi_ena_insertion;
+	vsi->vlan_ops.dis_insertion = ice_vsi_dis_insertion;
+	vsi->vlan_ops.ena_rx_filtering = ice_vsi_ena_rx_vlan_filtering;
+	vsi->vlan_ops.dis_rx_filtering = ice_vsi_dis_rx_vlan_filtering;
+	vsi->vlan_ops.ena_tx_filtering = ice_vsi_ena_tx_vlan_filtering;
+	vsi->vlan_ops.dis_tx_filtering = ice_vsi_dis_tx_vlan_filtering;
+	vsi->vlan_ops.set_port_vlan = ice_vsi_set_port_vlan;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
new file mode 100644
index 000000000000..522169742661
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#ifndef _ICE_VSI_VLAN_OPS_H_
+#define _ICE_VSI_VLAN_OPS_H_
+
+#include "ice_type.h"
+#include "ice_vsi_vlan_lib.h"
+
+struct ice_vsi;
+
+struct ice_vsi_vlan_ops {
+	int (*add_vlan)(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action);
+	int (*del_vlan)(struct ice_vsi *vsi, u16 vid);
+	int (*ena_stripping)(struct ice_vsi *vsi);
+	int (*dis_stripping)(struct ice_vsi *vsi);
+	int (*ena_insertion)(struct ice_vsi *vsi);
+	int (*dis_insertion)(struct ice_vsi *vsi);
+	int (*ena_rx_filtering)(struct ice_vsi *vsi);
+	int (*dis_rx_filtering)(struct ice_vsi *vsi);
+	int (*ena_tx_filtering)(struct ice_vsi *vsi);
+	int (*dis_tx_filtering)(struct ice_vsi *vsi);
+	int (*set_port_vlan)(struct ice_vsi *vsi, u16 pvid_info);
+};
+
+void ice_vsi_init_vlan_ops(struct ice_vsi *vsi);
+
+#endif /* _ICE_VSI_VLAN_OPS_H_ */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C98ED32A94F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:25:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65EAE4EB9D;
	Tue,  2 Mar 2021 18:25:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 61cdK432qyBD; Tue,  2 Mar 2021 18:25:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E89B74EB76;
	Tue,  2 Mar 2021 18:25:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 14D231BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B33E2606DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pRVSATtBfHMv for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:25:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA929606B6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:18 +0000 (UTC)
IronPort-SDR: z43b1pzIrexiQbrwBTAnD5wv3aVEAB4T4sMmF0IrTzTA9eHwHH+o6BFX34FPJRORQJetUE58lL
 xcaP4za4CEqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="186263182"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="186263182"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:25:17 -0800
IronPort-SDR: Y1xiYiw8PDhQwu3eHy8lQm4L7vreWJ6CpAOe/f5+XzYCtei2BT1FOWuXQZVnOw9jr7lc1dLDBE
 fYxn4MvdyadQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="434915052"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2021 10:25:17 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:15:34 -0800
Message-Id: <20210302181545.51822-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S56 02/13] ice: Refactor promiscuous
 functions
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

Some of the promiscuous mode functions take a boolean to indicate
set/clear, which affects readability. Refactor and provide an
interface for the promiscuous mode code with explicit set and clear
promiscuous mode operations.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fltr.c     |  56 +++++++
 drivers/net/ethernet/intel/ice/ice_fltr.h     |  10 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  51 ++++---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 137 +++++++-----------
 4 files changed, 152 insertions(+), 102 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index 2418d4fff037..2b3a86167991 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -46,6 +46,62 @@ ice_fltr_add_entry_to_list(struct device *dev, struct ice_fltr_info *info,
 	return 0;
 }
 
+/**
+ * ice_fltr_set_vlan_vsi_promisc
+ * @hw: pointer to the hardware structure
+ * @vsi: the VSI being configured
+ * @promisc_mask: mask of promiscuous config bits
+ *
+ * Set VSI with all associated VLANs to given promiscuous mode(s)
+ */
+enum ice_status
+ice_fltr_set_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi, u8 promisc_mask)
+{
+	return ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, false);
+}
+
+/**
+ * ice_fltr_clear_vlan_vsi_promisc
+ * @hw: pointer to the hardware structure
+ * @vsi: the VSI being configured
+ * @promisc_mask: mask of promiscuous config bits
+ *
+ * Clear VSI with all associated VLANs to given promiscuous mode(s)
+ */
+enum ice_status
+ice_fltr_clear_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi, u8 promisc_mask)
+{
+	return ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, true);
+}
+
+/**
+ * ice_fltr_clear_vsi_promisc - clear specified promiscuous mode(s)
+ * @hw: pointer to the hardware structure
+ * @vsi_handle: VSI handle to clear mode
+ * @promisc_mask: mask of promiscuous config bits to clear
+ * @vid: VLAN ID to clear VLAN promiscuous
+ */
+enum ice_status
+ice_fltr_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
+			   u16 vid)
+{
+	return ice_clear_vsi_promisc(hw, vsi_handle, promisc_mask, vid);
+}
+
+/**
+ * ice_fltr_set_vsi_promisc - set given VSI to given promiscuous mode(s)
+ * @hw: pointer to the hardware structure
+ * @vsi_handle: VSI handle to configure
+ * @promisc_mask: mask of promiscuous config bits
+ * @vid: VLAN ID to set VLAN promiscuous
+ */
+enum ice_status
+ice_fltr_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
+			 u16 vid)
+{
+	return ice_set_vsi_promisc(hw, vsi_handle, promisc_mask, vid);
+}
+
 /**
  * ice_fltr_add_mac_list - add list of MAC filters
  * @vsi: pointer to VSI struct
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.h b/drivers/net/ethernet/intel/ice/ice_fltr.h
index 361cb4da9b43..c79e5179a04d 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.h
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.h
@@ -6,6 +6,16 @@
 
 void ice_fltr_free_list(struct device *dev, struct list_head *h);
 enum ice_status
+ice_fltr_set_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi, u8 promisc_mask);
+enum ice_status
+ice_fltr_clear_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi, u8 promisc_mask);
+enum ice_status
+ice_fltr_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
+			   u16 vid);
+enum ice_status
+ice_fltr_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
+			 u16 vid);
+enum ice_status
 ice_fltr_add_mac_to_list(struct ice_vsi *vsi, struct list_head *list,
 			 const u8 *mac, enum ice_sw_fwd_act_type action);
 enum ice_status
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 73e328b0680b..3e5f71bf333b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -204,31 +204,46 @@ static bool ice_vsi_fltr_changed(struct ice_vsi *vsi)
 }
 
 /**
- * ice_cfg_promisc - Enable or disable promiscuous mode for a given PF
+ * ice_set_promisc - Enable promiscuous mode for a given PF
  * @vsi: the VSI being configured
  * @promisc_m: mask of promiscuous config bits
- * @set_promisc: enable or disable promisc flag request
  *
  */
-static int ice_cfg_promisc(struct ice_vsi *vsi, u8 promisc_m, bool set_promisc)
+static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
 {
-	struct ice_hw *hw = &vsi->back->hw;
-	enum ice_status status = 0;
+	enum ice_status status;
 
 	if (vsi->type != ICE_VSI_PF)
 		return 0;
 
-	if (vsi->num_vlan > 1) {
-		status = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_m,
-						  set_promisc);
-	} else {
-		if (set_promisc)
-			status = ice_set_vsi_promisc(hw, vsi->idx, promisc_m,
-						     0);
-		else
-			status = ice_clear_vsi_promisc(hw, vsi->idx, promisc_m,
-						       0);
-	}
+	if (vsi->num_vlan > 1)
+		status = ice_fltr_set_vlan_vsi_promisc(&vsi->back->hw, vsi, promisc_m);
+	else
+		status = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx, promisc_m, 0);
+
+	if (status)
+		return -EIO;
+
+	return 0;
+}
+
+/**
+ * ice_clear_promisc - Disable promiscuous mode for a given PF
+ * @vsi: the VSI being configured
+ * @promisc_m: mask of promiscuous config bits
+ *
+ */
+static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
+{
+	enum ice_status status;
+
+	if (vsi->type != ICE_VSI_PF)
+		return 0;
+
+	if (vsi->num_vlan > 1)
+		status = ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw, vsi, promisc_m);
+	else
+		status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx, promisc_m, 0);
 
 	if (status)
 		return -EIO;
@@ -325,7 +340,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 			else
 				promisc_m = ICE_MCAST_PROMISC_BITS;
 
-			err = ice_cfg_promisc(vsi, promisc_m, true);
+			err = ice_set_promisc(vsi, promisc_m);
 			if (err) {
 				netdev_err(netdev, "Error setting Multicast promiscuous mode on VSI %i\n",
 					   vsi->vsi_num);
@@ -339,7 +354,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 			else
 				promisc_m = ICE_MCAST_PROMISC_BITS;
 
-			err = ice_cfg_promisc(vsi, promisc_m, false);
+			err = ice_clear_promisc(vsi, promisc_m);
 			if (err) {
 				netdev_err(netdev, "Error clearing Multicast promiscuous mode on VSI %i\n",
 					   vsi->vsi_num);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 43d309aa9efe..c30b1dd9ac29 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -37,37 +37,6 @@ static int ice_check_vf_init(struct ice_pf *pf, struct ice_vf *vf)
 	return 0;
 }
 
-/**
- * ice_err_to_virt_err - translate errors for VF return code
- * @ice_err: error return code
- */
-static enum virtchnl_status_code ice_err_to_virt_err(enum ice_status ice_err)
-{
-	switch (ice_err) {
-	case ICE_SUCCESS:
-		return VIRTCHNL_STATUS_SUCCESS;
-	case ICE_ERR_BAD_PTR:
-	case ICE_ERR_INVAL_SIZE:
-	case ICE_ERR_DEVICE_NOT_SUPPORTED:
-	case ICE_ERR_PARAM:
-	case ICE_ERR_CFG:
-		return VIRTCHNL_STATUS_ERR_PARAM;
-	case ICE_ERR_NO_MEMORY:
-		return VIRTCHNL_STATUS_ERR_NO_MEMORY;
-	case ICE_ERR_NOT_READY:
-	case ICE_ERR_RESET_FAILED:
-	case ICE_ERR_FW_API_VER:
-	case ICE_ERR_AQ_ERROR:
-	case ICE_ERR_AQ_TIMEOUT:
-	case ICE_ERR_AQ_FULL:
-	case ICE_ERR_AQ_NO_WORK:
-	case ICE_ERR_AQ_EMPTY:
-		return VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
-	default:
-		return VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
-	}
-}
-
 /**
  * ice_vc_vf_broadcast - Broadcast a message to all VFs on PF
  * @pf: pointer to the PF structure
@@ -1049,45 +1018,48 @@ static void ice_clear_vf_reset_trigger(struct ice_vf *vf)
 	ice_flush(hw);
 }
 
-/**
- * ice_vf_set_vsi_promisc - set given VF VSI to given promiscuous mode(s)
- * @vf: pointer to the VF info
- * @vsi: the VSI being configured
- * @promisc_m: mask of promiscuous config bits
- * @rm_promisc: promisc flag request from the VF to remove or add filter
- *
- * This function configures VF VSI promiscuous mode, based on the VF requests,
- * for Unicast, Multicast and VLAN
- */
-static enum ice_status
-ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m,
-		       bool rm_promisc)
+static int ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
 {
-	struct ice_pf *pf = vf->pf;
-	enum ice_status status = 0;
-	struct ice_hw *hw;
+	struct ice_hw *hw = &vsi->back->hw;
+	enum ice_status status;
 
-	hw = &pf->hw;
-	if (vsi->num_vlan) {
-		status = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_m,
-						  rm_promisc);
-	} else if (vf->port_vlan_info) {
-		if (rm_promisc)
-			status = ice_clear_vsi_promisc(hw, vsi->idx, promisc_m,
-						       vf->port_vlan_info);
-		else
-			status = ice_set_vsi_promisc(hw, vsi->idx, promisc_m,
-						     vf->port_vlan_info);
-	} else {
-		if (rm_promisc)
-			status = ice_clear_vsi_promisc(hw, vsi->idx, promisc_m,
-						       0);
-		else
-			status = ice_set_vsi_promisc(hw, vsi->idx, promisc_m,
-						     0);
+	if (vf->port_vlan_info)
+		status = ice_fltr_set_vsi_promisc(hw, vsi->idx, promisc_m,
+						  vf->port_vlan_info & VLAN_VID_MASK);
+	else if (vsi->num_vlan > 1)
+		status = ice_fltr_set_vlan_vsi_promisc(hw, vsi, promisc_m);
+	else
+		status = ice_fltr_set_vsi_promisc(hw, vsi->idx, promisc_m, 0);
+
+	if (status && status != ICE_ERR_ALREADY_EXISTS) {
+		dev_err(ice_pf_to_dev(vsi->back), "enable Tx/Rx filter promiscuous mode on VF-%u failed, error: %s\n",
+			vf->vf_id, ice_stat_str(status));
+		return ice_status_to_errno(status);
 	}
 
-	return status;
+	return 0;
+}
+
+static int ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	enum ice_status status;
+
+	if (vf->port_vlan_info)
+		status = ice_fltr_clear_vsi_promisc(hw, vsi->idx, promisc_m,
+						    vf->port_vlan_info & VLAN_VID_MASK);
+	else if (vsi->num_vlan > 1)
+		status = ice_fltr_clear_vlan_vsi_promisc(hw, vsi, promisc_m);
+	else
+		status = ice_fltr_clear_vsi_promisc(hw, vsi->idx, promisc_m, 0);
+
+	if (status && status != ICE_ERR_DOES_NOT_EXIST) {
+		dev_err(ice_pf_to_dev(vsi->back), "disable Tx/Rx filter promiscuous mode on VF-%u failed, error: %s\n",
+			vf->vf_id, ice_stat_str(status));
+		return ice_status_to_errno(status);
+	}
+
+	return 0;
 }
 
 static void ice_vf_clear_counters(struct ice_vf *vf)
@@ -1445,7 +1417,7 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 			promisc_m = ICE_UCAST_PROMISC_BITS;
 
 		vsi = pf->vsi[vf->lan_vsi_idx];
-		if (ice_vf_set_vsi_promisc(vf, vsi, promisc_m, true))
+		if (ice_vf_clear_vsi_promisc(vf, vsi, promisc_m))
 			dev_err(dev, "disabling promiscuous mode failed\n");
 	}
 
@@ -2491,10 +2463,10 @@ bool ice_is_any_vf_in_promisc(struct ice_pf *pf)
 static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 {
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	enum ice_status mcast_status = 0, ucast_status = 0;
 	bool rm_promisc, alluni = false, allmulti = false;
 	struct virtchnl_promisc_info *info =
 	    (struct virtchnl_promisc_info *)msg;
+	int mcast_err = 0, ucast_err = 0;
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 	struct device *dev;
@@ -2591,24 +2563,21 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 			ucast_m = ICE_UCAST_PROMISC_BITS;
 		}
 
-		ucast_status = ice_vf_set_vsi_promisc(vf, vsi, ucast_m,
-						      !alluni);
-		if (ucast_status) {
-			dev_err(dev, "%sable Tx/Rx filter promiscuous mode on VF-%d failed\n",
-				alluni ? "en" : "dis", vf->vf_id);
-			v_ret = ice_err_to_virt_err(ucast_status);
-		}
+		if (alluni)
+			ucast_err = ice_vf_set_vsi_promisc(vf, vsi, ucast_m);
+		else
+			ucast_err = ice_vf_clear_vsi_promisc(vf, vsi, ucast_m);
 
-		mcast_status = ice_vf_set_vsi_promisc(vf, vsi, mcast_m,
-						      !allmulti);
-		if (mcast_status) {
-			dev_err(dev, "%sable Tx/Rx filter promiscuous mode on VF-%d failed\n",
-				allmulti ? "en" : "dis", vf->vf_id);
-			v_ret = ice_err_to_virt_err(mcast_status);
-		}
+		if (allmulti)
+			mcast_err = ice_vf_set_vsi_promisc(vf, vsi, mcast_m);
+		else
+			mcast_err = ice_vf_clear_vsi_promisc(vf, vsi, mcast_m);
+
+		if (ucast_err || mcast_err)
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 	}
 
-	if (!mcast_status) {
+	if (!mcast_err) {
 		if (allmulti &&
 		    !test_and_set_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
 			dev_info(dev, "VF %u successfully set multicast promiscuous mode\n",
@@ -2618,7 +2587,7 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 				 vf->vf_id);
 	}
 
-	if (!ucast_status) {
+	if (!ucast_err) {
 		if (alluni && !test_and_set_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))
 			dev_info(dev, "VF %u successfully set unicast promiscuous mode\n",
 				 vf->vf_id);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

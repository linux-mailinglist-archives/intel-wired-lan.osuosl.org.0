Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99C2463FEB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 22:23:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2F404016A;
	Tue, 30 Nov 2021 21:23:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xmIXlnEGnlnn; Tue, 30 Nov 2021 21:23:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEB9140108;
	Tue, 30 Nov 2021 21:23:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 823811BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 713D560768
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZF56fzuZabaY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 21:23:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 459EE6070A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223550556"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="223550556"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 13:23:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="499946569"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga007.jf.intel.com with ESMTP; 30 Nov 2021 13:23:30 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Nov 2021 13:21:47 -0800
Message-Id: <20211130212155.27852-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211130212155.27852-1-anthony.l.nguyen@intel.com>
References: <20211130212155.27852-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 06/14] ice: Use the proto
 argument for VLAN ops
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

Currently the proto argument is unused. This is because the driver only
supports 802.1Q VLAN filtering. This policy is enforced via netdev
features that the driver sets up when configuring the netdev, so the
proto argument won't ever be anything other than 802.1Q. However, this
will allow for future iterations of the driver to seemlessly support
802.1ad filtering. Begin using the proto argument and extend the related
structures to support its use.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fltr.c     |  2 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  2 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 22 ++++-----
 drivers/net/ethernet/intel/ice/ice_switch.c   |  5 ++
 drivers/net/ethernet/intel/ice/ice_switch.h   |  2 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 10 ++--
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  2 +-
 drivers/net/ethernet/intel/ice/ice_vlan.h     |  3 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 48 ++++++++++++++++++-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |  4 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |  4 +-
 11 files changed, 78 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index 8f543851e39f..67044556b5bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -220,6 +220,8 @@ ice_fltr_add_vlan_to_list(struct ice_vsi *vsi, struct list_head *list,
 	info.fltr_act = ICE_FWD_TO_VSI;
 	info.vsi_handle = vsi->idx;
 	info.l_data.vlan.vlan_id = vlan->vid;
+	info.l_data.vlan.tpid = vlan->tpid;
+	info.l_data.vlan.tpid_valid = true;
 
 	return ice_fltr_add_entry_to_list(ice_pf_to_dev(vsi->back), &info,
 					  list);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 55a2aef54922..0fff5ec897c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3880,7 +3880,7 @@ int ice_vsi_add_vlan_zero(struct ice_vsi *vsi)
 {
 	struct ice_vlan vlan;
 
-	vlan = ICE_VLAN(0, 0);
+	vlan = ICE_VLAN(0, 0, 0);
 	return vsi->vlan_ops.add_vlan(vsi, &vlan);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8669858d104c..8a0684c0ebd0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3410,14 +3410,13 @@ ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 /**
  * ice_vlan_rx_add_vid - Add a VLAN ID filter to HW offload
  * @netdev: network interface to be adjusted
- * @proto: unused protocol
+ * @proto: VLAN TPID
  * @vid: VLAN ID to be added
  *
  * net_device_ops implementation for adding VLAN IDs
  */
 static int
-ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
-		    u16 vid)
+ice_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
@@ -3438,7 +3437,7 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
 	/* Add a switch rule for this VLAN ID so its corresponding VLAN tagged
 	 * packets aren't pruned by the device's internal switch on Rx
 	 */
-	vlan = ICE_VLAN(vid, 0);
+	vlan = ICE_VLAN(be16_to_cpu(proto), vid, 0);
 	ret = vsi->vlan_ops.add_vlan(vsi, &vlan);
 	if (!ret)
 		set_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
@@ -3449,14 +3448,13 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
 /**
  * ice_vlan_rx_kill_vid - Remove a VLAN ID filter from HW offload
  * @netdev: network interface to be adjusted
- * @proto: unused protocol
+ * @proto: VLAN TPID
  * @vid: VLAN ID to be removed
  *
  * net_device_ops implementation for removing VLAN IDs
  */
 static int
-ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
-		     u16 vid)
+ice_vlan_rx_kill_vid(struct net_device *netdev, __be16 proto, u16 vid)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
@@ -3470,7 +3468,7 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
 	/* Make sure VLAN delete is successful before updating VLAN
 	 * information
 	 */
-	vlan = ICE_VLAN(vid, 0);
+	vlan = ICE_VLAN(be16_to_cpu(proto), vid, 0);
 	ret = vsi->vlan_ops.del_vlan(vsi, &vlan);
 	if (ret)
 		return ret;
@@ -5621,14 +5619,14 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 
 	if ((features & NETIF_F_HW_VLAN_CTAG_RX) &&
 	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
-		ret = vsi->vlan_ops.ena_stripping(vsi);
+		ret = vsi->vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
 	else if (!(features & NETIF_F_HW_VLAN_CTAG_RX) &&
 		 (netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
 		ret = vsi->vlan_ops.dis_stripping(vsi);
 
 	if ((features & NETIF_F_HW_VLAN_CTAG_TX) &&
 	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_TX))
-		ret = vsi->vlan_ops.ena_insertion(vsi);
+		ret = vsi->vlan_ops.ena_insertion(vsi, ETH_P_8021Q);
 	else if (!(features & NETIF_F_HW_VLAN_CTAG_TX) &&
 		 (netdev->features & NETIF_F_HW_VLAN_CTAG_TX))
 		ret = vsi->vlan_ops.dis_insertion(vsi);
@@ -5674,9 +5672,9 @@ static int ice_vsi_vlan_setup(struct ice_vsi *vsi)
 	int ret = 0;
 
 	if (vsi->netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
-		ret = vsi->vlan_ops.ena_stripping(vsi);
+		ret = vsi->vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
 	if (vsi->netdev->features & NETIF_F_HW_VLAN_CTAG_TX)
-		ret = vsi->vlan_ops.ena_insertion(vsi);
+		ret = vsi->vlan_ops.ena_insertion(vsi, ETH_P_8021Q);
 
 	return ret;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index f998fcddc789..f851a81a7240 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1539,6 +1539,7 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
 		 struct ice_aqc_sw_rules_elem *s_rule, enum ice_adminq_opc opc)
 {
 	u16 vlan_id = ICE_MAX_VLAN_ID + 1;
+	u16 vlan_tpid = ETH_P_8021Q;
 	void *daddr = NULL;
 	u16 eth_hdr_sz;
 	u8 *eth_hdr;
@@ -1611,6 +1612,8 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
 		break;
 	case ICE_SW_LKUP_VLAN:
 		vlan_id = f_info->l_data.vlan.vlan_id;
+		if (f_info->l_data.vlan.tpid_valid)
+			vlan_tpid = f_info->l_data.vlan.tpid;
 		if (f_info->fltr_act == ICE_FWD_TO_VSI ||
 		    f_info->fltr_act == ICE_FWD_TO_VSI_LIST) {
 			act |= ICE_SINGLE_ACT_PRUNE;
@@ -1653,6 +1656,8 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
 	if (!(vlan_id > ICE_MAX_VLAN_ID)) {
 		off = (__force __be16 *)(eth_hdr + ICE_ETH_VLAN_TCI_OFFSET);
 		*off = cpu_to_be16(vlan_id);
+		off = (__force __be16 *)(eth_hdr + ICE_ETH_ETHTYPE_OFFSET);
+		*off = cpu_to_be16(vlan_tpid);
 	}
 
 	/* Create the switch rule with the final dummy Ethernet header */
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 4fb1a7ae5dbb..5000cc8276cd 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -77,6 +77,8 @@ struct ice_fltr_info {
 		} mac_vlan;
 		struct {
 			u16 vlan_id;
+			u16 tpid;
+			u8 tpid_valid;
 		} vlan;
 		/* Set lkup_type as ICE_SW_LKUP_ETHERTYPE
 		 * if just using ethertype as filter. Set lkup_type as
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 4971e547432c..e576cd201a48 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -4139,7 +4139,7 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 
 	mutex_lock(&vf->cfg_lock);
 
-	vf->port_vlan_info = ICE_VLAN(vlan_id, qos);
+	vf->port_vlan_info = ICE_VLAN(ETH_P_8021Q, vlan_id, qos);
 	if (ice_vf_is_port_vlan_ena(vf))
 		dev_info(dev, "Setting VLAN %u, QoS %u on VF %d\n",
 			 vlan_id, qos, vf_id);
@@ -4260,7 +4260,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			if (!vid)
 				continue;
 
-			vlan = ICE_VLAN(vid, 0);
+			vlan = ICE_VLAN(ETH_P_8021Q, vid, 0);
 			status = vsi->vlan_ops.add_vlan(vsi, &vlan);
 			if (status) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -4313,7 +4313,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			if (!vid)
 				continue;
 
-			vlan = ICE_VLAN(vid, 0);
+			vlan = ICE_VLAN(ETH_P_8021Q, vid, 0);
 			status = vsi->vlan_ops.del_vlan(vsi, &vlan);
 			if (status) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -4392,7 +4392,7 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)
 	}
 
 	vsi = ice_get_vf_vsi(vf);
-	if (vsi->vlan_ops.ena_stripping(vsi))
+	if (vsi->vlan_ops.ena_stripping(vsi, ETH_P_8021Q))
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 
 error_param:
@@ -4457,7 +4457,7 @@ static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
 		return 0;
 
 	if (ice_vf_vlan_offload_ena(vf->driver_caps))
-		return vsi->vlan_ops.ena_stripping(vsi);
+		return vsi->vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
 	else
 		return vsi->vlan_ops.dis_stripping(vsi);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 5079a3b72698..b06ca1f97833 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -120,7 +120,7 @@ struct ice_vf {
 	struct ice_time_mac legacy_last_added_umac;
 	DECLARE_BITMAP(txq_ena, ICE_MAX_RSS_QS_PER_VF);
 	DECLARE_BITMAP(rxq_ena, ICE_MAX_RSS_QS_PER_VF);
-	struct ice_vlan port_vlan_info;	/* Port VLAN ID and QoS */
+	struct ice_vlan port_vlan_info;	/* Port VLAN ID, QoS, and TPID */
 	u8 pf_set_mac:1;		/* VF MAC address set by VMM admin */
 	u8 trusted:1;
 	u8 spoofchk:1;
diff --git a/drivers/net/ethernet/intel/ice/ice_vlan.h b/drivers/net/ethernet/intel/ice/ice_vlan.h
index 3fad0cba2da6..bc4550a03173 100644
--- a/drivers/net/ethernet/intel/ice/ice_vlan.h
+++ b/drivers/net/ethernet/intel/ice/ice_vlan.h
@@ -8,10 +8,11 @@
 #include "ice_type.h"
 
 struct ice_vlan {
+	u16 tpid;
 	u16 vid;
 	u8 prio;
 };
 
-#define ICE_VLAN(vid, prio) ((struct ice_vlan){ vid, prio })
+#define ICE_VLAN(tpid, vid, prio) ((struct ice_vlan){ tpid, vid, prio })
 
 #endif /* _ICE_VLAN_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
index 74b6dec0744b..6b7feab0b2a1 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
@@ -6,6 +6,31 @@
 #include "ice_fltr.h"
 #include "ice.h"
 
+static void print_invalid_tpid(struct ice_vsi *vsi, u16 tpid)
+{
+	dev_err(ice_pf_to_dev(vsi->back), "%s %d specified invalid VLAN tpid 0x%04x\n",
+		ice_vsi_type_str(vsi->type), vsi->idx, tpid);
+}
+
+/**
+ * validate_vlan - check if the ice_vlan passed in is valid
+ * @vsi: VSI used for printing error message
+ * @vlan: ice_vlan structure to validate
+ *
+ * Return true if the VLAN TPID is valid or if the VLAN TPID is 0 and the VLAN
+ * VID is 0, which allows for non-zero VLAN filters with the specified VLAN TPID
+ * and untagged VLAN 0 filters to be added to the prune list respectively.
+ */
+static bool validate_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
+{
+	if (vlan->tpid != ETH_P_8021Q && (vlan->tpid || vlan->vid)) {
+		print_invalid_tpid(vsi, vlan->tpid);
+		return false;
+	}
+
+	return true;
+}
+
 /**
  * ice_vsi_add_vlan - default add VLAN implementation for all VSI types
  * @vsi: VSI being configured
@@ -15,6 +40,9 @@ int ice_vsi_add_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 {
 	int err = 0;
 
+	if (!validate_vlan(vsi, vlan))
+		return -EINVAL;
+
 	if (!ice_fltr_add_vlan(vsi, vlan)) {
 		vsi->num_vlan++;
 	} else {
@@ -37,6 +65,9 @@ int ice_vsi_del_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 	struct device *dev;
 	int err;
 
+	if (!validate_vlan(vsi, vlan))
+		return -EINVAL;
+
 	dev = ice_pf_to_dev(pf);
 
 	err = ice_fltr_remove_vlan(vsi, vlan);
@@ -143,8 +174,13 @@ static int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 	return err;
 }
 
-int ice_vsi_ena_stripping(struct ice_vsi *vsi)
+int ice_vsi_ena_stripping(struct ice_vsi *vsi, const u16 tpid)
 {
+	if (tpid != ETH_P_8021Q) {
+		print_invalid_tpid(vsi, tpid);
+		return -EINVAL;
+	}
+
 	return ice_vsi_manage_vlan_stripping(vsi, true);
 }
 
@@ -153,8 +189,13 @@ int ice_vsi_dis_stripping(struct ice_vsi *vsi)
 	return ice_vsi_manage_vlan_stripping(vsi, false);
 }
 
-int ice_vsi_ena_insertion(struct ice_vsi *vsi)
+int ice_vsi_ena_insertion(struct ice_vsi *vsi, const u16 tpid)
 {
+	if (tpid != ETH_P_8021Q) {
+		print_invalid_tpid(vsi, tpid);
+		return -EINVAL;
+	}
+
 	return ice_vsi_manage_vlan_insertion(vsi);
 }
 
@@ -216,6 +257,9 @@ int ice_vsi_set_port_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 {
 	u16 port_vlan_info;
 
+	if (vlan->tpid != ETH_P_8021Q)
+		return -EINVAL;
+
 	if (vlan->prio > 7)
 		return -EINVAL;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
index a0305007896c..1bdbf585db7d 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
@@ -12,9 +12,9 @@ struct ice_vsi;
 int ice_vsi_add_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
 int ice_vsi_del_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
 
-int ice_vsi_ena_stripping(struct ice_vsi *vsi);
+int ice_vsi_ena_stripping(struct ice_vsi *vsi, u16 tpid);
 int ice_vsi_dis_stripping(struct ice_vsi *vsi);
-int ice_vsi_ena_insertion(struct ice_vsi *vsi);
+int ice_vsi_ena_insertion(struct ice_vsi *vsi, u16 tpid);
 int ice_vsi_dis_insertion(struct ice_vsi *vsi);
 int ice_vsi_set_port_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
index c944f04acd3c..76e55b259bc8 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
@@ -12,9 +12,9 @@ struct ice_vsi;
 struct ice_vsi_vlan_ops {
 	int (*add_vlan)(struct ice_vsi *vsi, struct ice_vlan *vlan);
 	int (*del_vlan)(struct ice_vsi *vsi, struct ice_vlan *vlan);
-	int (*ena_stripping)(struct ice_vsi *vsi);
+	int (*ena_stripping)(struct ice_vsi *vsi, const u16 tpid);
 	int (*dis_stripping)(struct ice_vsi *vsi);
-	int (*ena_insertion)(struct ice_vsi *vsi);
+	int (*ena_insertion)(struct ice_vsi *vsi, const u16 tpid);
 	int (*dis_insertion)(struct ice_vsi *vsi);
 	int (*ena_rx_filtering)(struct ice_vsi *vsi);
 	int (*dis_rx_filtering)(struct ice_vsi *vsi);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 650A34643A6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 00:53:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0822F40919;
	Tue, 30 Nov 2021 23:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kDVv88DLJ0vy; Tue, 30 Nov 2021 23:53:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AD56408FC;
	Tue, 30 Nov 2021 23:53:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F81D1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69F5C801E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JZ-n_DQkOI_j for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 23:53:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B6C1824F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236164173"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="236164173"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 15:53:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="511726092"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by fmsmga007.fm.intel.com with ESMTP; 30 Nov 2021 15:53:00 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Nov 2021 15:51:36 -0800
Message-Id: <20211130235146.28731-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211130235146.28731-1-anthony.l.nguyen@intel.com>
References: <20211130235146.28731-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 04/14] ice: Introduce ice_vlan
 struct
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

Add a new struct for VLAN related information. Currently this holds
VLAN ID and priority values, but will be expanded to hold TPID value.
This reduces the changes necessary if any other values are added in
future. Remove the action argument from these calls as it's always
ICE_FWD_VSI.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fltr.c     | 35 +++++++------------
 drivers/net/ethernet/intel/ice/ice_fltr.h     | 10 +++---
 drivers/net/ethernet/intel/ice/ice_lib.c      |  5 ++-
 drivers/net/ethernet/intel/ice/ice_lib.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  8 +++--
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 19 ++++++----
 drivers/net/ethernet/intel/ice/ice_vlan.h     | 17 +++++++++
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 31 +++++++++-------
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |  9 +++--
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |  6 ++--
 10 files changed, 82 insertions(+), 59 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vlan.h

diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index cf07eef39e9d..8f543851e39f 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -206,21 +206,20 @@ ice_fltr_add_mac_to_list(struct ice_vsi *vsi, struct list_head *list,
  * ice_fltr_add_vlan_to_list - add VLAN filter info to exsisting list
  * @vsi: pointer to VSI struct
  * @list: list to add filter info to
- * @vlan_id: VLAN ID to add
- * @action: filter action
+ * @vlan: VLAN filter details
  */
 static int
 ice_fltr_add_vlan_to_list(struct ice_vsi *vsi, struct list_head *list,
-			  u16 vlan_id, enum ice_sw_fwd_act_type action)
+			  struct ice_vlan *vlan)
 {
 	struct ice_fltr_info info = { 0 };
 
 	info.flag = ICE_FLTR_TX;
 	info.src_id = ICE_SRC_ID_VSI;
 	info.lkup_type = ICE_SW_LKUP_VLAN;
-	info.fltr_act = action;
+	info.fltr_act = ICE_FWD_TO_VSI;
 	info.vsi_handle = vsi->idx;
-	info.l_data.vlan.vlan_id = vlan_id;
+	info.l_data.vlan.vlan_id = vlan->vid;
 
 	return ice_fltr_add_entry_to_list(ice_pf_to_dev(vsi->back), &info,
 					  list);
@@ -313,19 +312,17 @@ ice_fltr_prepare_mac_and_broadcast(struct ice_vsi *vsi, const u8 *mac,
 /**
  * ice_fltr_prepare_vlan - add or remove VLAN filter
  * @vsi: pointer to VSI struct
- * @vlan_id: VLAN ID to add
- * @action: action to be performed on filter match
+ * @vlan: VLAN filter details
  * @vlan_action: pointer to add or remove VLAN function
  */
 static int
-ice_fltr_prepare_vlan(struct ice_vsi *vsi, u16 vlan_id,
-		      enum ice_sw_fwd_act_type action,
+ice_fltr_prepare_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan,
 		      int (*vlan_action)(struct ice_vsi *, struct list_head *))
 {
 	LIST_HEAD(tmp_list);
 	int result;
 
-	if (ice_fltr_add_vlan_to_list(vsi, &tmp_list, vlan_id, action))
+	if (ice_fltr_add_vlan_to_list(vsi, &tmp_list, vlan))
 		return -ENOMEM;
 
 	result = vlan_action(vsi, &tmp_list);
@@ -398,27 +395,21 @@ int ice_fltr_remove_mac(struct ice_vsi *vsi, const u8 *mac,
 /**
  * ice_fltr_add_vlan - add single VLAN filter
  * @vsi: pointer to VSI struct
- * @vlan_id: VLAN ID to add
- * @action: action to be performed on filter match
+ * @vlan: VLAN filter details
  */
-int ice_fltr_add_vlan(struct ice_vsi *vsi, u16 vlan_id,
-		      enum ice_sw_fwd_act_type action)
+int ice_fltr_add_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 {
-	return ice_fltr_prepare_vlan(vsi, vlan_id, action,
-				     ice_fltr_add_vlan_list);
+	return ice_fltr_prepare_vlan(vsi, vlan, ice_fltr_add_vlan_list);
 }
 
 /**
  * ice_fltr_remove_vlan - remove VLAN filter
  * @vsi: pointer to VSI struct
- * @vlan_id: filter VLAN to remove
- * @action: action to remove
+ * @vlan: VLAN filter details
  */
-int ice_fltr_remove_vlan(struct ice_vsi *vsi, u16 vlan_id,
-			 enum ice_sw_fwd_act_type action)
+int ice_fltr_remove_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 {
-	return ice_fltr_prepare_vlan(vsi, vlan_id, action,
-				     ice_fltr_remove_vlan_list);
+	return ice_fltr_prepare_vlan(vsi, vlan, ice_fltr_remove_vlan_list);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.h b/drivers/net/ethernet/intel/ice/ice_fltr.h
index d271f61e0d34..4f7fe09d10e9 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.h
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.h
@@ -4,6 +4,8 @@
 #ifndef _ICE_FLTR_H_
 #define _ICE_FLTR_H_
 
+#include "ice_vlan.h"
+
 void ice_fltr_free_list(struct device *dev, struct list_head *h);
 int
 ice_fltr_set_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi, u8 promisc_mask);
@@ -32,12 +34,8 @@ ice_fltr_remove_mac(struct ice_vsi *vsi, const u8 *mac,
 int
 ice_fltr_remove_mac_list(struct ice_vsi *vsi, struct list_head *list);
 
-int
-ice_fltr_add_vlan(struct ice_vsi *vsi, u16 vid,
-		  enum ice_sw_fwd_act_type action);
-int
-ice_fltr_remove_vlan(struct ice_vsi *vsi, u16 vid,
-		     enum ice_sw_fwd_act_type action);
+int ice_fltr_add_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
+int ice_fltr_remove_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
 
 int
 ice_fltr_add_eth(struct ice_vsi *vsi, u16 ethertype, u16 flag,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index b50509584b31..55a2aef54922 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3878,7 +3878,10 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
  */
 int ice_vsi_add_vlan_zero(struct ice_vsi *vsi)
 {
-	return vsi->vlan_ops.add_vlan(vsi, 0, ICE_FWD_TO_VSI);
+	struct ice_vlan vlan;
+
+	vlan = ICE_VLAN(0, 0);
+	return vsi->vlan_ops.add_vlan(vsi, &vlan);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 427e5e4e9f17..8f42a3f3a949 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -5,6 +5,7 @@
 #define _ICE_LIB_H_
 
 #include "ice.h"
+#include "ice_vlan.h"
 
 const char *ice_vsi_type_str(enum ice_vsi_type vsi_type);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 904571527e27..8669858d104c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3421,6 +3421,7 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
+	struct ice_vlan vlan;
 	int ret;
 
 	/* VLAN 0 is added by default during load/reset */
@@ -3437,7 +3438,8 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
 	/* Add a switch rule for this VLAN ID so its corresponding VLAN tagged
 	 * packets aren't pruned by the device's internal switch on Rx
 	 */
-	ret = vsi->vlan_ops.add_vlan(vsi, vid, ICE_FWD_TO_VSI);
+	vlan = ICE_VLAN(vid, 0);
+	ret = vsi->vlan_ops.add_vlan(vsi, &vlan);
 	if (!ret)
 		set_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
 
@@ -3458,6 +3460,7 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
+	struct ice_vlan vlan;
 	int ret;
 
 	/* don't allow removal of VLAN 0 */
@@ -3467,7 +3470,8 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
 	/* Make sure VLAN delete is successful before updating VLAN
 	 * information
 	 */
-	ret = vsi->vlan_ops.del_vlan(vsi, vid);
+	vlan = ICE_VLAN(vid, 0);
+	ret = vsi->vlan_ops.del_vlan(vsi, &vlan);
 	if (ret)
 		return ret;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 6fa0968f0912..d580120dbb93 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -760,24 +760,25 @@ static int ice_vf_rebuild_host_tx_rate_cfg(struct ice_vf *vf)
  */
 static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf)
 {
+	u8 vlan_prio = (vf->port_vlan_info & VLAN_PRIO_MASK) >> VLAN_PRIO_SHIFT;
+	u16 vlan_id = vf->port_vlan_info & VLAN_VID_MASK;
 	struct device *dev = ice_pf_to_dev(vf->pf);
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-	u16 vlan_id = 0;
+	struct ice_vlan vlan;
 	int err;
 
+	vlan = ICE_VLAN(vlan_id, vlan_prio);
 	if (vf->port_vlan_info) {
-		err = vsi->vlan_ops.set_port_vlan(vsi, vf->port_vlan_info);
+		err = vsi->vlan_ops.set_port_vlan(vsi, &vlan);
 		if (err) {
 			dev_err(dev, "failed to configure port VLAN via VSI parameters for VF %u, error %d\n",
 				vf->vf_id, err);
 			return err;
 		}
-
-		vlan_id = vf->port_vlan_info & VLAN_VID_MASK;
 	}
 
 	/* vlan_id will either be 0 or the port VLAN number */
-	err = vsi->vlan_ops.add_vlan(vsi, vlan_id, ICE_FWD_TO_VSI);
+	err = vsi->vlan_ops.add_vlan(vsi, &vlan);
 	if (err) {
 		dev_err(dev, "failed to add %s VLAN %u filter for VF %u, error %d\n",
 			vf->port_vlan_info ? "port" : "", vlan_id, vf->vf_id,
@@ -4231,6 +4232,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 	if (add_v) {
 		for (i = 0; i < vfl->num_elements; i++) {
 			u16 vid = vfl->vlan_id[i];
+			struct ice_vlan vlan;
 
 			if (!ice_is_vf_trusted(vf) &&
 			    vsi->num_vlan >= ICE_MAX_VLAN_PER_VF) {
@@ -4250,7 +4252,8 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			if (!vid)
 				continue;
 
-			status = vsi->vlan_ops.add_vlan(vsi, vid, ICE_FWD_TO_VSI);
+			vlan = ICE_VLAN(vid, 0);
+			status = vsi->vlan_ops.add_vlan(vsi, &vlan);
 			if (status) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
@@ -4293,6 +4296,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 		num_vf_vlan = vsi->num_vlan;
 		for (i = 0; i < vfl->num_elements && i < num_vf_vlan; i++) {
 			u16 vid = vfl->vlan_id[i];
+			struct ice_vlan vlan;
 
 			/* we add VLAN 0 by default for each VF so we can enable
 			 * Tx VLAN anti-spoof without triggering MDD events so
@@ -4301,7 +4305,8 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			if (!vid)
 				continue;
 
-			status = vsi->vlan_ops.del_vlan(vsi, vid);
+			vlan = ICE_VLAN(vid, 0);
+			status = vsi->vlan_ops.del_vlan(vsi, &vlan);
 			if (status) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
diff --git a/drivers/net/ethernet/intel/ice/ice_vlan.h b/drivers/net/ethernet/intel/ice/ice_vlan.h
new file mode 100644
index 000000000000..3fad0cba2da6
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_vlan.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#ifndef _ICE_VLAN_H_
+#define _ICE_VLAN_H_
+
+#include <linux/types.h>
+#include "ice_type.h"
+
+struct ice_vlan {
+	u16 vid;
+	u8 prio;
+};
+
+#define ICE_VLAN(vid, prio) ((struct ice_vlan){ vid, prio })
+
+#endif /* _ICE_VLAN_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
index 6b0a4bf28305..74b6dec0744b 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
@@ -9,20 +9,18 @@
 /**
  * ice_vsi_add_vlan - default add VLAN implementation for all VSI types
  * @vsi: VSI being configured
- * @vid: VLAN ID to be added
- * @action: filter action to be performed on match
+ * @vlan: VLAN filter to add
  */
-int
-ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action)
+int ice_vsi_add_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 {
 	int err = 0;
 
-	if (!ice_fltr_add_vlan(vsi, vid, action)) {
+	if (!ice_fltr_add_vlan(vsi, vlan)) {
 		vsi->num_vlan++;
 	} else {
 		err = -ENODEV;
 		dev_err(ice_pf_to_dev(vsi->back), "Failure Adding VLAN %d on VSI %i\n",
-			vid, vsi->vsi_num);
+			vlan->vid, vsi->vsi_num);
 	}
 
 	return err;
@@ -31,9 +29,9 @@ ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action)
 /**
  * ice_vsi_del_vlan - default del VLAN implementation for all VSI types
  * @vsi: VSI being configured
- * @vid: VLAN ID to be removed
+ * @vlan: VLAN filter to delete
  */
-int ice_vsi_del_vlan(struct ice_vsi *vsi, u16 vid)
+int ice_vsi_del_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 {
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
@@ -41,16 +39,16 @@ int ice_vsi_del_vlan(struct ice_vsi *vsi, u16 vid)
 
 	dev = ice_pf_to_dev(pf);
 
-	err = ice_fltr_remove_vlan(vsi, vid, ICE_FWD_TO_VSI);
+	err = ice_fltr_remove_vlan(vsi, vlan);
 	if (!err) {
 		vsi->num_vlan--;
 	} else if (err == -ENOENT) {
 		dev_dbg(dev, "Failed to remove VLAN %d on VSI %i, it does not exist\n",
-			vid, vsi->vsi_num);
+			vlan->vid, vsi->vsi_num);
 		err = 0;
 	} else {
 		dev_err(dev, "Error removing VLAN %d on VSI %i error: %d\n",
-			vid, vsi->vsi_num, err);
+			vlan->vid, vsi->vsi_num, err);
 	}
 
 	return err;
@@ -214,9 +212,16 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
 	return ret;
 }
 
-int ice_vsi_set_port_vlan(struct ice_vsi *vsi, u16 pvid_info)
+int ice_vsi_set_port_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 {
-	return ice_vsi_manage_pvid(vsi, pvid_info, true);
+	u16 port_vlan_info;
+
+	if (vlan->prio > 7)
+		return -EINVAL;
+
+	port_vlan_info = vlan->vid | (vlan->prio << VLAN_PRIO_SHIFT);
+
+	return ice_vsi_manage_pvid(vsi, port_vlan_info, true);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
index f9fe33026306..a0305007896c 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.h
@@ -5,19 +5,18 @@
 #define _ICE_VSI_VLAN_LIB_H_
 
 #include <linux/types.h>
-#include "ice_type.h"
+#include "ice_vlan.h"
 
 struct ice_vsi;
 
-int
-ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action);
-int ice_vsi_del_vlan(struct ice_vsi *vsi, u16 vid);
+int ice_vsi_add_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
+int ice_vsi_del_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
 
 int ice_vsi_ena_stripping(struct ice_vsi *vsi);
 int ice_vsi_dis_stripping(struct ice_vsi *vsi);
 int ice_vsi_ena_insertion(struct ice_vsi *vsi);
 int ice_vsi_dis_insertion(struct ice_vsi *vsi);
-int ice_vsi_set_port_vlan(struct ice_vsi *vsi, u16 pvid_info);
+int ice_vsi_set_port_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan);
 
 int ice_vsi_ena_rx_vlan_filtering(struct ice_vsi *vsi);
 int ice_vsi_dis_rx_vlan_filtering(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
index 522169742661..c944f04acd3c 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
@@ -10,8 +10,8 @@
 struct ice_vsi;
 
 struct ice_vsi_vlan_ops {
-	int (*add_vlan)(struct ice_vsi *vsi, u16 vid, enum ice_sw_fwd_act_type action);
-	int (*del_vlan)(struct ice_vsi *vsi, u16 vid);
+	int (*add_vlan)(struct ice_vsi *vsi, struct ice_vlan *vlan);
+	int (*del_vlan)(struct ice_vsi *vsi, struct ice_vlan *vlan);
 	int (*ena_stripping)(struct ice_vsi *vsi);
 	int (*dis_stripping)(struct ice_vsi *vsi);
 	int (*ena_insertion)(struct ice_vsi *vsi);
@@ -20,7 +20,7 @@ struct ice_vsi_vlan_ops {
 	int (*dis_rx_filtering)(struct ice_vsi *vsi);
 	int (*ena_tx_filtering)(struct ice_vsi *vsi);
 	int (*dis_tx_filtering)(struct ice_vsi *vsi);
-	int (*set_port_vlan)(struct ice_vsi *vsi, u16 pvid_info);
+	int (*set_port_vlan)(struct ice_vsi *vsi, struct ice_vlan *vlan);
 };
 
 void ice_vsi_init_vlan_ops(struct ice_vsi *vsi);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

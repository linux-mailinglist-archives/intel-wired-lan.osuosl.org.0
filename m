Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1690D72A52D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 23:15:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA6D861645;
	Fri,  9 Jun 2023 21:15:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA6D861645
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686345320;
	bh=5Vr+T5tzsxUpP3zbtuUzgKTFWbRQ/Fxe8opsCWQtcH4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bupUzRnf7mZHMeQYbzOJIDtv/Eng7LQfAVijQIF9cNB7rhV8VY78o38yzXJmqM5uL
	 qsMd1fbopYrBjX7pErzwqkvxOlE4UjWTf0sDiNFSVN2wKsgGWVul8TQzS73azcQeMY
	 2h0KaAVmd2mZtlGvwRKB1FmEJ7p2QNb6iOlHPifDW4sDpIE8lVDmyWSrdmTT+BBgzC
	 h2RrFSWM0tVZuUYdBRobMtm83/2QA/uo61ySUhPf87PPN4zNr+JFgGBXyp1HpMa60q
	 3pXs65K9oO3aIu3L8EsuoNeNZh8cpqBdmT8Y2lfpNISPsw7G0Q7TlU3dISYlKcifiW
	 4tZ06yNol97gA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LF6ao-BTqXIV; Fri,  9 Jun 2023 21:15:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 540AB611AD;
	Fri,  9 Jun 2023 21:15:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 540AB611AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44E6B1BF420
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 21:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 16C0360B6A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 21:14:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16C0360B6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MocM5bcoAc6v for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 21:14:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 946C460AB2
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 946C460AB2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 21:14:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="356583183"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="356583183"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 14:14:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="823194634"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="823194634"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 14:14:48 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Jun 2023 14:16:21 -0700
Message-Id: <20230609211626.621968-6-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230609211626.621968-1-david.m.ertman@intel.com>
References: <20230609211626.621968-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686345289; x=1717881289;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VaM00nzYXA6SUvOKNWEi+JKetCKYsIwjZo+D4MciM8s=;
 b=TET25KAe2ORM5wrgEjwqISqcIC/5C042fnNwsoh1e1CGiEz2YlY/5TyK
 mdEctITnLB0w5xj7kgM+OJ/oFpaXodECgwOMKhNrMFrcQoAdOncq3HKO3
 0SwsXDnOpqLUmfxFz+qFPoSdn+qzldVTidufVz/0G5YCg/X8Mxxz3DPZ2
 Zq1u0r2y0Wt6OK54v/8BF/OzpW89OVb2oyDDSrZTvOjUPlpQNcLVb4uzp
 KVqGavxw9/BH9e6VJa0W5keG7wfos6MCi50XMvzvTlg9ORCOr3tDJdiAn
 yI/viUX3ZKswcJcYcD7qxuQycBCuAPy2C04q1DBjXpZAJKMZPh4nkko0h
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TET25KAe
Subject: [Intel-wired-lan] [PATCH iwl-next v4 05/10] ice: process events
 created by lag netdev event handler
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
Cc: simon.horman@corigine.com, daniel.machon@microchip.com,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add in the function framework for the processing of LAG events.  Also add
in helper function to perform common tasks.

Add the basis of the process of linking a lower netdev to an upper netdev.

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c      | 535 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_lag.h      |   1 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |  10 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +
 5 files changed, 478 insertions(+), 73 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 529abfb904d0..e66f1129027a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -10,6 +10,13 @@
 #define ICE_LAG_RES_SHARED	BIT(14)
 #define ICE_LAG_RES_VALID	BIT(15)
 
+#define ICE_RECIPE_LEN			64
+static const u8 ice_dflt_vsi_rcp[ICE_RECIPE_LEN] = {
+	0x05, 0, 0, 0, 0x20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+	0x85, 0, 0x01, 0, 0, 0, 0xff, 0xff, 0x08, 0, 0, 0, 0, 0, 0, 0,
+	0, 0, 0, 0, 0, 0, 0x30, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
+
 /**
  * ice_lag_set_primary - set PF LAG state as Primary
  * @lag: LAG info struct
@@ -50,6 +57,147 @@ static void ice_lag_set_backup(struct ice_lag *lag)
 	lag->role = ICE_LAG_BACKUP;
 }
 
+/**
+ * ice_netdev_to_lag - return pointer to associated lag struct from netdev
+ * @netdev: pointer to net_device struct to query
+ */
+static struct ice_lag *ice_netdev_to_lag(struct net_device *netdev)
+{
+	struct ice_netdev_priv *np;
+	struct ice_vsi *vsi;
+
+	if (!netif_is_ice(netdev))
+		return NULL;
+
+	np = netdev_priv(netdev);
+	if (!np)
+		return NULL;
+
+	vsi = np->vsi;
+	if (!vsi)
+		return NULL;
+
+	return vsi->back->lag;
+}
+
+/**
+ * ice_lag_find_primary - returns pointer to primary interfaces lag struct
+ * @lag: local interfaces lag struct
+ */
+static struct ice_lag *ice_lag_find_primary(struct ice_lag *lag)
+{
+	struct ice_lag *primary_lag = NULL;
+	struct list_head *tmp;
+
+	list_for_each(tmp, lag->netdev_head) {
+		struct ice_lag_netdev_list *entry;
+		struct ice_lag *tmp_lag;
+
+		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
+		tmp_lag = ice_netdev_to_lag(entry->netdev);
+		if (tmp_lag && tmp_lag->primary) {
+			primary_lag = tmp_lag;
+			break;
+		}
+	}
+
+	return primary_lag;
+}
+
+/**
+ * ice_lag_cfg_dflt_fltr - Add/Remove default VSI rule for LAG
+ * @lag: lag struct for local interface
+ * @add: boolean on whether we are adding filters
+ */
+static int
+ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
+{
+	struct ice_sw_rule_lkup_rx_tx *s_rule;
+	u16 s_rule_sz, vsi_num;
+	struct ice_hw *hw;
+	u32 act, opc;
+	u8 *eth_hdr;
+	int err;
+
+	hw = &lag->pf->hw;
+	vsi_num = ice_get_hw_vsi_num(hw, 0);
+
+	s_rule_sz = ICE_SW_RULE_RX_TX_ETH_HDR_SIZE(s_rule);
+	s_rule = kzalloc(s_rule_sz, GFP_KERNEL);
+	if (!s_rule) {
+		dev_err(ice_pf_to_dev(lag->pf), "error allocating rule for LAG default VSI\n");
+		return -ENOMEM;
+	}
+
+	if (add) {
+		eth_hdr = s_rule->hdr_data;
+		ice_fill_eth_hdr(eth_hdr);
+
+		act = (vsi_num << ICE_SINGLE_ACT_VSI_ID_S) &
+			ICE_SINGLE_ACT_VSI_ID_M;
+		act |= ICE_SINGLE_ACT_VSI_FORWARDING |
+			ICE_SINGLE_ACT_VALID_BIT | ICE_SINGLE_ACT_LAN_ENABLE;
+
+		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
+		s_rule->recipe_id = cpu_to_le16(lag->pf_recipe);
+		s_rule->src = cpu_to_le16(hw->port_info->lport);
+		s_rule->act = cpu_to_le32(act);
+		s_rule->hdr_len = cpu_to_le16(DUMMY_ETH_HDR_LEN);
+		opc = ice_aqc_opc_add_sw_rules;
+	} else {
+		s_rule->index = cpu_to_le16(lag->pf_rule_id);
+		opc = ice_aqc_opc_remove_sw_rules;
+	}
+
+	err = ice_aq_sw_rules(&lag->pf->hw, s_rule, s_rule_sz, 1, opc, NULL);
+	if (err)
+		goto dflt_fltr_free;
+
+	if (add)
+		lag->pf_rule_id = le16_to_cpu(s_rule->index);
+	else
+		lag->pf_rule_id = 0;
+
+dflt_fltr_free:
+	kfree(s_rule);
+	return err;
+}
+
+/**
+ * ice_lag_cfg_pf_fltrs - set filters up for new active port
+ * @lag: local interfaces lag struct
+ * @ptr: opaque data containing notifier event
+ */
+static void
+ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
+{
+	struct netdev_notifier_bonding_info *info;
+	struct netdev_bonding_info *bonding_info;
+	struct net_device *event_netdev;
+	struct device *dev;
+
+	event_netdev = netdev_notifier_info_to_dev(ptr);
+	/* not for this netdev */
+	if (event_netdev != lag->netdev)
+		return;
+
+	info = (struct netdev_notifier_bonding_info *)ptr;
+	bonding_info = &info->bonding_info;
+	dev = ice_pf_to_dev(lag->pf);
+
+	/* interface not active - remove old default VSI rule */
+	if (bonding_info->slave.state && lag->pf_rule_id) {
+		if (ice_lag_cfg_dflt_fltr(lag, false))
+			dev_err(dev, "Error removing old default VSI filter\n");
+		return;
+	}
+
+	/* interface becoming active - add new default VSI rule */
+	if (!bonding_info->slave.state && !lag->pf_rule_id)
+		if (ice_lag_cfg_dflt_fltr(lag, true))
+			dev_err(dev, "Error adding new default VSI filter\n");
+}
+
 /**
  * ice_display_lag_info - print LAG info
  * @lag: LAG info struct
@@ -85,6 +233,83 @@ static void ice_display_lag_info(struct ice_lag *lag)
 		upper, role, primary);
 }
 
+/**
+ * ice_lag_move_vf_node_tc - move scheduling nodes for one VF on one TC
+ * @lag: lag info struct
+ * @oldport: lport of previous nodes location
+ * @newport: lport of destination nodes location
+ * @vsi_num: array index of VSI in PF space
+ * @tc: traffic class to move
+ */
+static void
+ice_lag_move_vf_node_tc(struct ice_lag *lag, u8 oldport, u8 newport,
+			u16 vsi_num, u8 tc)
+{
+}
+
+/**
+ * ice_lag_move_single_vf_nodes - Move Tx scheduling nodes for single VF
+ * @lag: primary interface LAG struct
+ * @oldport: lport of previous interface
+ * @newport: lport of destination interface
+ * @vsi_num: SW index of VF's VSI
+ */
+static void
+ice_lag_move_single_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport,
+			     u16 vsi_num)
+{
+	u8 tc;
+
+	ice_for_each_traffic_class(tc)
+		ice_lag_move_vf_node_tc(lag, oldport, newport, vsi_num, tc);
+}
+
+/**
+ * ice_lag_move_new_vf_nodes - Move Tx scheduling nodes for a VF if required
+ * @vf: the VF to move Tx nodes for
+ *
+ * Called just after configuring new VF queues. Check whether the VF Tx
+ * scheduling nodes need to be updated to fail over to the active port. If so,
+ * move them now.
+ */
+void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
+{
+}
+
+/**
+ * ice_lag_move_vf_nodes - move Tx scheduling nodes for all VFs to new port
+ * @lag: lag info struct
+ * @oldport: lport of previous interface
+ * @newport: lport of destination interface
+ */
+static void ice_lag_move_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport)
+{
+	struct ice_pf *pf;
+	int i;
+
+	if (!lag->primary)
+		return;
+
+	pf = lag->pf;
+	ice_for_each_vsi(pf, i)
+		if (pf->vsi[i] && (pf->vsi[i]->type == ICE_VSI_VF ||
+				   pf->vsi[i]->type == ICE_VSI_SWITCHDEV_CTRL))
+			ice_lag_move_single_vf_nodes(lag, oldport, newport, i);
+}
+
+#define ICE_LAG_SRIOV_CP_RECIPE		10
+#define ICE_LAG_SRIOV_TRAIN_PKT_LEN	16
+
+/**
+ * ice_lag_cfg_cp_fltr - configure filter for control packets
+ * @lag: local interface's lag struct
+ * @add: add or remove rule
+ */
+static void
+ice_lag_cfg_cp_fltr(struct ice_lag *lag, bool add)
+{
+}
+
 /**
  * ice_lag_info_event - handle NETDEV_BONDING_INFO event
  * @lag: LAG info struct
@@ -126,105 +351,171 @@ static void ice_lag_info_event(struct ice_lag *lag, void *ptr)
 	ice_display_lag_info(lag);
 }
 
+/**
+ * ice_lag_reclaim_vf_tc - move scheduling nodes back to primary interface
+ * @lag: primary interface lag struct
+ * @src_hw: HW struct current node location
+ * @vsi_num: VSI index in PF space
+ * @tc: traffic class to move
+ */
+static void
+ice_lag_reclaim_vf_tc(struct ice_lag *lag, struct ice_hw *src_hw, u16 vsi_num,
+		      u8 tc)
+{
+}
+
+/**
+ * ice_lag_reclaim_vf_nodes - When interface leaving bond primary reclaims nodes
+ * @lag: primary interface lag struct
+ * @src_hw: HW struct for current node location
+ */
+static void
+ice_lag_reclaim_vf_nodes(struct ice_lag *lag, struct ice_hw *src_hw)
+{
+	struct ice_pf *pf;
+	int i, tc;
+
+	if (!lag->primary || !src_hw)
+		return;
+
+	pf = lag->pf;
+	ice_for_each_vsi(pf, i)
+		if (pf->vsi[i] && (pf->vsi[i]->type == ICE_VSI_VF ||
+				   pf->vsi[i]->type == ICE_VSI_SWITCHDEV_CTRL))
+			ice_for_each_traffic_class(tc)
+				ice_lag_reclaim_vf_tc(lag, src_hw, i, tc);
+}
+
 /**
  * ice_lag_link - handle LAG link event
  * @lag: LAG info struct
- * @info: info from the netdev notifier
  */
-static void
-ice_lag_link(struct ice_lag *lag, struct netdev_notifier_changeupper_info *info)
+static void ice_lag_link(struct ice_lag *lag)
 {
-	struct net_device *netdev_tmp, *upper = info->upper_dev;
 	struct ice_pf *pf = lag->pf;
-	int peers = 0;
 
 	if (lag->bonded)
 		dev_warn(ice_pf_to_dev(pf), "%s Already part of a bond\n",
 			 netdev_name(lag->netdev));
 
-	rcu_read_lock();
-	for_each_netdev_in_bond_rcu(upper, netdev_tmp)
-		peers++;
-	rcu_read_unlock();
-
-	if (lag->upper_netdev != upper) {
-		dev_hold(upper);
-		lag->upper_netdev = upper;
-	}
-
 	ice_clear_rdma_cap(pf);
 
 	lag->bonded = true;
 	lag->role = ICE_LAG_UNSET;
-
-	/* if this is the first element in an LAG mark as primary */
-	lag->primary = !!(peers == 1);
 }
 
 /**
  * ice_lag_unlink - handle unlink event
  * @lag: LAG info struct
- * @info: info from netdev notification
  */
-static void
-ice_lag_unlink(struct ice_lag *lag,
-	       struct netdev_notifier_changeupper_info *info)
+static void ice_lag_unlink(struct ice_lag *lag)
 {
-	struct net_device *netdev_tmp, *upper = info->upper_dev;
+	u8 pri_port, act_port, loc_port;
 	struct ice_pf *pf = lag->pf;
-	bool found = false;
 
 	if (!lag->bonded) {
 		netdev_dbg(lag->netdev, "bonding unlink event on non-LAG netdev\n");
 		return;
 	}
 
-	/* determine if we are in the new LAG config or not */
-	rcu_read_lock();
-	for_each_netdev_in_bond_rcu(upper, netdev_tmp) {
-		if (netdev_tmp == lag->netdev) {
-			found = true;
-			break;
+	if (lag->primary) {
+		act_port = lag->active_port;
+		pri_port = lag->pf->hw.port_info->lport;
+		if (act_port != pri_port && act_port != ICE_LAG_INVALID_PORT)
+			ice_lag_move_vf_nodes(lag, act_port, pri_port);
+		lag->primary = false;
+		lag->active_port = ICE_LAG_INVALID_PORT;
+	} else {
+		struct ice_lag *primary_lag;
+
+		primary_lag = ice_lag_find_primary(lag);
+		if (primary_lag) {
+			act_port = primary_lag->active_port;
+			pri_port = primary_lag->pf->hw.port_info->lport;
+			loc_port = pf->hw.port_info->lport;
+			if (act_port == loc_port &&
+			    act_port != ICE_LAG_INVALID_PORT) {
+				ice_lag_reclaim_vf_nodes(primary_lag,
+							 &lag->pf->hw);
+				primary_lag->active_port = ICE_LAG_INVALID_PORT;
+			}
 		}
 	}
-	rcu_read_unlock();
-
-	if (found)
-		return;
-
-	if (lag->upper_netdev) {
-		dev_put(lag->upper_netdev);
-		lag->upper_netdev = NULL;
-	}
 
 	ice_set_rdma_cap(pf);
 	lag->bonded = false;
 	lag->role = ICE_LAG_NONE;
+	lag->upper_netdev = NULL;
 }
 
 /**
- * ice_lag_unregister - handle netdev unregister events
- * @lag: LAG info struct
- * @netdev: netdev reporting the event
+ * ice_lag_link_unlink - helper function to call lag_link/unlink
+ * @lag: lag info struct
+ * @ptr: opaque pointer data
  */
-static void ice_lag_unregister(struct ice_lag *lag, struct net_device *netdev)
+static void ice_lag_link_unlink(struct ice_lag *lag, void *ptr)
 {
-	struct ice_pf *pf = lag->pf;
+	struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
+	struct netdev_notifier_changeupper_info *info = ptr;
 
-	/* check to see if this event is for this netdev
-	 * check that we are in an aggregate
-	 */
-	if (netdev != lag->netdev || !lag->bonded)
+	if (netdev != lag->netdev)
 		return;
 
-	if (lag->upper_netdev) {
-		dev_put(lag->upper_netdev);
-		lag->upper_netdev = NULL;
-		ice_set_rdma_cap(pf);
-	}
-	/* perform some cleanup in case we come back */
-	lag->bonded = false;
-	lag->role = ICE_LAG_NONE;
+	if (info->linking)
+		ice_lag_link(lag);
+	else
+		ice_lag_unlink(lag);
+}
+
+/**
+ * ice_lag_set_swid - set the SWID on secondary interface
+ * @primary_swid: primary interface's SWID
+ * @local_lag: local interfaces LAG struct
+ * @link: Is this a linking activity
+ *
+ * If link is false, then primary_swid should be expected to not be valid
+ */
+static void
+ice_lag_set_swid(u16 primary_swid, struct ice_lag *local_lag,
+		 bool link)
+{
+}
+
+/**
+ * ice_lag_primary_swid - set/clear the SHARED attrib of primary's SWID
+ * @lag: primary interfaces lag struct
+ * @link: is this a linking activity
+ *
+ * Implement setting primary SWID as shared using 0x020B
+ */
+static void ice_lag_primary_swid(struct ice_lag *lag, bool link)
+{
+	struct ice_hw *hw;
+	u16 swid;
+
+	hw = &lag->pf->hw;
+	swid = hw->port_info->sw_id;
+
+	if (ice_share_res(hw, ICE_AQC_RES_TYPE_SWID, link, swid))
+		dev_warn(ice_pf_to_dev(lag->pf), "Failure to set primary interface shared status\n");
+}
+
+/**
+ * ice_lag_add_prune_list - Adds event_pf's VSI to primary's prune list
+ * @lag: lag info struct
+ * @event_pf: PF struct for VSI we are adding to primary's prune list
+ */
+static void ice_lag_add_prune_list(struct ice_lag *lag, struct ice_pf *event_pf)
+{
+}
+
+/**
+ * ice_lag_del_prune_list - Remove secondary's vsi from primary's prune list
+ * @lag: primary interface's ice_lag struct
+ * @event_pf: PF struct for unlinking interface
+ */
+static void ice_lag_del_prune_list(struct ice_lag *lag, struct ice_pf *event_pf)
+{
 }
 
 /**
@@ -257,6 +548,7 @@ static void ice_lag_check_nvm_support(struct ice_pf *pf)
 static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 {
 	struct netdev_notifier_changeupper_info *info;
+	struct ice_lag *primary_lag;
 	struct net_device *netdev;
 
 	info = ptr;
@@ -266,24 +558,84 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 	if (netdev != lag->netdev)
 		return;
 
-	if (!info->upper_dev) {
-		netdev_dbg(netdev, "changeupper rcvd, but no upper defined\n");
-		return;
+	primary_lag = ice_lag_find_primary(lag);
+	if (info->linking) {
+		lag->upper_netdev = info->upper_dev;
+		/* If there is not already a primary interface in the LAG,
+		 * then mark this one as primary.
+		 */
+		if (!primary_lag) {
+			lag->primary = true;
+			/* Configure primary's SWID to be shared */
+			ice_lag_primary_swid(lag, true);
+			primary_lag = lag;
+		} else {
+			u16 swid;
+
+			swid = primary_lag->pf->hw.port_info->sw_id;
+			ice_lag_set_swid(swid, lag, true);
+			ice_lag_add_prune_list(primary_lag, lag->pf);
+		}
+		/* add filter for primary control packets */
+		ice_lag_cfg_cp_fltr(lag, true);
+	} else {
+		if (!primary_lag && lag->primary)
+			primary_lag = lag;
+
+		if (primary_lag) {
+			if (!lag->primary) {
+				ice_lag_set_swid(0, lag, false);
+			} else {
+				ice_lag_primary_swid(lag, false);
+				ice_lag_del_prune_list(primary_lag, lag->pf);
+			}
+			ice_lag_cfg_cp_fltr(lag, false);
+		}
 	}
+}
 
-	netdev_dbg(netdev, "bonding %s\n", info->linking ? "LINK" : "UNLINK");
+/**
+ * ice_lag_monitor_link - monitor interfaces entering/leaving the aggregate
+ * @lag: lag info struct
+ * @ptr: opaque data containing notifier event
+ *
+ * This function only operates after a primary has been set.
+ */
+static void ice_lag_monitor_link(struct ice_lag *lag, void *ptr)
+{
+}
 
-	if (!netif_is_lag_master(info->upper_dev)) {
-		netdev_dbg(netdev, "changeupper rcvd, but not primary. bail\n");
-		return;
-	}
+/**
+ * ice_lag_monitor_active - main PF keep track of which port is active
+ * @lag: lag info struct
+ * @ptr: opaque data containing notifier event
+ *
+ * This function is for the primary PF to monitor changes in which port is
+ * active and handle changes for SRIOV VF functionality
+ */
+static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
+{
+}
 
-	if (info->linking)
-		ice_lag_link(lag, info);
-	else
-		ice_lag_unlink(lag, info);
+/**
+ * ice_lag_chk_comp - evaluate bonded interface for feature support
+ * @lag: lag info struct
+ * @ptr: opaque data for netdev event info
+ */
+static bool
+ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
+{
+	return true;
+}
 
-	ice_display_lag_info(lag);
+/**
+ * ice_lag_unregister - handle netdev unregister events
+ * @lag: LAG info struct
+ * @event_netdev: netdev struct for target of notifier event
+ */
+static void
+ice_lag_unregister(struct ice_lag *lag, struct net_device *event_netdev)
+{
 }
 
 /**
@@ -307,17 +659,30 @@ static void ice_lag_process_event(struct work_struct *work)
 	switch (lag_work->event) {
 	case NETDEV_CHANGEUPPER:
 		info = &lag_work->info.changeupper_info;
-		if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
+		if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG)) {
+			ice_lag_monitor_link(lag_work->lag, info);
 			ice_lag_changeupper_event(lag_work->lag, info);
+			ice_lag_link_unlink(lag_work->lag, info);
+		}
 		break;
 	case NETDEV_BONDING_INFO:
+		if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG)) {
+			if (!ice_lag_chk_comp(lag_work->lag,
+					      &lag_work->info.bonding_info)) {
+				goto lag_cleanup;
+			}
+			ice_lag_monitor_active(lag_work->lag,
+					       &lag_work->info.bonding_info);
+			ice_lag_cfg_pf_fltrs(lag_work->lag,
+					     &lag_work->info.bonding_info);
+		}
 		ice_lag_info_event(lag_work->lag, &lag_work->info.bonding_info);
 		break;
 	case NETDEV_UNREGISTER:
 		if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG)) {
 			netdev = lag_work->info.bonding_info.info.dev;
-			if ((netdev == lag_work->lag->netdev ||
-			     lag_work->lag->primary) && lag_work->lag->bonded)
+			if (netdev == lag_work->lag->netdev &&
+			    lag_work->lag->bonded)
 				ice_lag_unregister(lag_work->lag, netdev);
 		}
 		break;
@@ -325,6 +690,7 @@ static void ice_lag_process_event(struct work_struct *work)
 		break;
 	}
 
+lag_cleanup:
 	/* cleanup resources allocated for this work item */
 	list_for_each_safe(tmp, n, &lag_work->netdev_list.node) {
 		struct ice_lag_netdev_list *entry;
@@ -466,6 +832,22 @@ static void ice_unregister_lag_handler(struct ice_lag *lag)
 	}
 }
 
+/**
+ * ice_create_lag_recipe
+ * @hw: pointer to HW struct
+ * @base_recipe: recipe to base the new recipe on
+ * @prio: priority for new recipe
+ *
+ * function returns 0 on error
+ */
+static u16 ice_create_lag_recipe(struct ice_hw *hw, const u8 *base_recipe,
+				 u8 prio)
+{
+	u16 rid = 0;
+
+	return rid;
+}
+
 /**
  * ice_init_lag - initialize support for LAG
  * @pf: PF struct
@@ -507,6 +889,12 @@ int ice_init_lag(struct ice_pf *pf)
 		goto lag_error;
 	}
 
+	lag->pf_recipe = ice_create_lag_recipe(&pf->hw, ice_dflt_vsi_rcp, 1);
+	if (!lag->pf_recipe) {
+		err = -EINVAL;
+		goto lag_error;
+	}
+
 	ice_display_lag_info(lag);
 
 	dev_dbg(dev, "INIT LAG complete\n");
@@ -539,6 +927,9 @@ void ice_deinit_lag(struct ice_pf *pf)
 
 	flush_workqueue(ice_lag_wq);
 
+	ice_free_hw_res(&pf->hw, ICE_AQC_RES_TYPE_RECIPE, 1,
+			&pf->lag->pf_recipe);
+
 	kfree(lag);
 
 	pf->lag = NULL;
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index a4314a46c82c..df4af5184a75 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -56,6 +56,7 @@ struct ice_lag_work {
 	} info;
 };
 
+void ice_lag_move_new_vf_nodes(struct ice_vf *vf);
 int ice_init_lag(struct ice_pf *pf);
 void ice_deinit_lag(struct ice_pf *pf);
 #endif /* _ICE_LAG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index e521e4efd2d4..d480294ef9bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -25,7 +25,6 @@
  *      In case of Ether type filter it is treated as header without VLAN tag
  *      and byte 12 and 13 is used to program a given Ether type instead
  */
-#define DUMMY_ETH_HDR_LEN		16
 static const u8 dummy_eth_header[DUMMY_ETH_HDR_LEN] = { 0x2, 0, 0, 0, 0, 0,
 							0x2, 0, 0, 0, 0, 0,
 							0x81, 0, 0, 0};
@@ -2534,6 +2533,15 @@ static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
 	}
 }
 
+/**
+ * ice_fill_eth_hdr - helper to copy dummy_eth_hdr into supplied buffer
+ * @eth_hdr: pointer to buffer to populate
+ */
+void ice_fill_eth_hdr(u8 *eth_hdr)
+{
+	memcpy(eth_hdr, dummy_eth_header, DUMMY_ETH_HDR_LEN);
+}
+
 /**
  * ice_fill_sw_rule - Helper function to fill switch rule structure
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 1c0be64993f8..6eab877a01f4 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -32,6 +32,8 @@
 	ICE_SW_RULE_RX_TX_HDR_SIZE((s), 0)
 #define ICE_SW_RULE_LG_ACT_SIZE(s, n)		struct_size((s), act, (n))
 
+#define DUMMY_ETH_HDR_LEN		16
+
 /* VSI context structure for add/get/update/free operations */
 struct ice_vsi_ctx {
 	u16 vsi_num;
@@ -405,6 +407,7 @@ u16 ice_get_hw_vsi_num(struct ice_hw *hw, u16 vsi_handle);
 
 int ice_replay_vsi_all_fltr(struct ice_hw *hw, u16 vsi_handle);
 void ice_rm_all_sw_replay_rule_info(struct ice_hw *hw);
+void ice_fill_eth_hdr(u8 *eth_hdr);
 
 int
 ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 92490fe655ea..85d996531502 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1724,6 +1724,8 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 				vf->vf_id, i);
 	}
 
+	ice_lag_move_new_vf_nodes(vf);
+
 	/* send the response to the VF */
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
 				     VIRTCHNL_STATUS_ERR_PARAM, NULL, 0);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

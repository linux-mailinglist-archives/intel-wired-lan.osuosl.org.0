Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AF2750583
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 13:05:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 728094158C;
	Wed, 12 Jul 2023 11:05:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 728094158C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689159949;
	bh=j4F4aQcwlmgW+c10XQFpOYqdWcIpqo9of6EpQWcY6Gs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HYZpaKkLxowS2FC51T3FqRSxH+wcX48gidk10XkNnyAY5TsMbye8K49Guc/x8h/nW
	 VkLXdqQNf8xP1u9tvsEMhhzIgQ2PK8ulq5pYj5n6mSldhgYhQUbEF/NGxKOzO2K90s
	 DFEB4b2iWkLDR0Tm/uA2oM6w4zY2C9415rwZJL/TtVeahjzCITkC/7Xkc/FQtlt7sK
	 yqDxUydeCZcOjHw9Y9L2RXGWDGO9H9Sl9cpSCx6a+rSA2o2Kz4CSBUoaig+klyENF1
	 S6iKgqr5/TBr9ROSmZ1K7J7NlOyJJcz6phe5CEECtJJ3g5nMNtBIdFTs+ep0e+zQes
	 pUJTcmCfzrBRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Beyi6Qhy-WMb; Wed, 12 Jul 2023 11:05:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D76EE40518;
	Wed, 12 Jul 2023 11:05:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D76EE40518
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 178941BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 61EBF400DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61EBF400DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IMBHxmC3M9tW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 11:05:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02F0C40569
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 02F0C40569
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="430993821"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="430993821"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 04:05:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="835093793"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="835093793"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2023 04:05:02 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 903FF369EB;
 Wed, 12 Jul 2023 12:05:01 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Jul 2023 13:03:34 +0200
Message-Id: <20230712110337.8030-10-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230712110337.8030-1-wojciech.drewek@intel.com>
References: <20230712110337.8030-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689159912; x=1720695912;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HPda0L7bpup8Gkvy/i9AIuFEgq7Yfc9Dw770mpFh5gc=;
 b=UEzm0lOJXYOeqqhuW64Rv+Iag8StoqUv0YBOR6V5iGv9NO2aQSdFqTZX
 lh1i5Ywu1umQ6nMIKk+dAJ2CB4QDhAbam8SizMdqBicOD2j+HrTdJsv/9
 3tC7GpQWLwxra4G/brKeE2an4uM5mZvxtCoID40cDgeuGAt939JS8WY8e
 Zy5bmJ22dU1mVFIUh5FI1119hQ2NGviWlQ2UfSbzsauda109PxWr+BIPo
 Q9rn4qDlYRexrvgU5qB2gY+BmOxaqnJ81EGCfeatBsGWey1ePk99tY1I3
 0Otp/USu9847GfKLCzPO1/CrQ9o2bWoBdW9LVxqLaTS+Q147GnkD2B0+8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UEzm0lOJ
Subject: [Intel-wired-lan] [PATCH iwl-next v6 09/12] ice: Add VLAN FDB
 support in switchdev mode
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, vladbu@nvidia.com,
 kuba@kernel.org, simon.horman@corigine.com, dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Szycik <marcin.szycik@intel.com>

Add support for matching on VLAN tag in bridge offloads.
Currently only trunk mode is supported.

To enable VLAN filtering (existing FDB entries will be deleted):
ip link set $BR type bridge vlan_filtering 1

To add VLANs to bridge in trunk mode:
bridge vlan add dev $PF1 vid 110-111
bridge vlan add dev $VF1_PR vid 110-111

Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: introduce ice_eswitch_is_vid_valid, remove vlan bool arg,
    introduce better log msg
v3: move inline function (ice_eswitch_is_vid_valid) to
    ice_eswitch_br.h
v5: introduce ice_eswitch_br_get_lkups_cnt and
    ice_eswitch_br_add_vlan_lkup in order to reduce
    duplicate code, rename ice_eswitch_is_vid_valid to
    ice_eswitch_br_is_vid_valid to keep the naming convention
v6: remove FDBs associated with the deleted vlan
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 304 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_eswitch_br.h   |  21 ++
 2 files changed, 317 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 297d0eb45dde..151b40857515 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -70,16 +70,34 @@ ice_eswitch_br_rule_delete(struct ice_hw *hw, struct ice_rule_query_data *rule)
 	return err;
 }
 
+static u16
+ice_eswitch_br_get_lkups_cnt(u16 vid)
+{
+	return ice_eswitch_br_is_vid_valid(vid) ? 2 : 1;
+}
+
+static void
+ice_eswitch_br_add_vlan_lkup(struct ice_adv_lkup_elem *list, u16 vid)
+{
+	if (ice_eswitch_br_is_vid_valid(vid)) {
+		list[1].type = ICE_VLAN_OFOS;
+		list[1].h_u.vlan_hdr.vlan = cpu_to_be16(vid & VLAN_VID_MASK);
+		list[1].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
+	}
+}
+
 static struct ice_rule_query_data *
 ice_eswitch_br_fwd_rule_create(struct ice_hw *hw, int vsi_idx, int port_type,
-			       const unsigned char *mac)
+			       const unsigned char *mac, u16 vid)
 {
 	struct ice_adv_rule_info rule_info = { 0 };
 	struct ice_rule_query_data *rule;
 	struct ice_adv_lkup_elem *list;
-	u16 lkups_cnt = 1;
+	u16 lkups_cnt;
 	int err;
 
+	lkups_cnt = ice_eswitch_br_get_lkups_cnt(vid);
+
 	rule = kzalloc(sizeof(*rule), GFP_KERNEL);
 	if (!rule)
 		return ERR_PTR(-ENOMEM);
@@ -107,6 +125,8 @@ ice_eswitch_br_fwd_rule_create(struct ice_hw *hw, int vsi_idx, int port_type,
 	ether_addr_copy(list[0].h_u.eth_hdr.dst_addr, mac);
 	eth_broadcast_addr(list[0].m_u.eth_hdr.dst_addr);
 
+	ice_eswitch_br_add_vlan_lkup(list, vid);
+
 	rule_info.need_pass_l2 = true;
 
 	rule_info.sw_act.fltr_act = ICE_FWD_TO_VSI;
@@ -129,13 +149,15 @@ ice_eswitch_br_fwd_rule_create(struct ice_hw *hw, int vsi_idx, int port_type,
 
 static struct ice_rule_query_data *
 ice_eswitch_br_guard_rule_create(struct ice_hw *hw, u16 vsi_idx,
-				 const unsigned char *mac)
+				 const unsigned char *mac, u16 vid)
 {
 	struct ice_adv_rule_info rule_info = { 0 };
 	struct ice_rule_query_data *rule;
 	struct ice_adv_lkup_elem *list;
-	const u16 lkups_cnt = 1;
 	int err = -ENOMEM;
+	u16 lkups_cnt;
+
+	lkups_cnt = ice_eswitch_br_get_lkups_cnt(vid);
 
 	rule = kzalloc(sizeof(*rule), GFP_KERNEL);
 	if (!rule)
@@ -149,6 +171,8 @@ ice_eswitch_br_guard_rule_create(struct ice_hw *hw, u16 vsi_idx,
 	ether_addr_copy(list[0].h_u.eth_hdr.src_addr, mac);
 	eth_broadcast_addr(list[0].m_u.eth_hdr.src_addr);
 
+	ice_eswitch_br_add_vlan_lkup(list, vid);
+
 	rule_info.allow_pass_l2 = true;
 	rule_info.sw_act.vsi_handle = vsi_idx;
 	rule_info.sw_act.fltr_act = ICE_NOP;
@@ -172,7 +196,7 @@ ice_eswitch_br_guard_rule_create(struct ice_hw *hw, u16 vsi_idx,
 
 static struct ice_esw_br_flow *
 ice_eswitch_br_flow_create(struct device *dev, struct ice_hw *hw, int vsi_idx,
-			   int port_type, const unsigned char *mac)
+			   int port_type, const unsigned char *mac, u16 vid)
 {
 	struct ice_rule_query_data *fwd_rule, *guard_rule;
 	struct ice_esw_br_flow *flow;
@@ -182,7 +206,8 @@ ice_eswitch_br_flow_create(struct device *dev, struct ice_hw *hw, int vsi_idx,
 	if (!flow)
 		return ERR_PTR(-ENOMEM);
 
-	fwd_rule = ice_eswitch_br_fwd_rule_create(hw, vsi_idx, port_type, mac);
+	fwd_rule = ice_eswitch_br_fwd_rule_create(hw, vsi_idx, port_type, mac,
+						  vid);
 	err = PTR_ERR_OR_ZERO(fwd_rule);
 	if (err) {
 		dev_err(dev, "Failed to create eswitch bridge %sgress forward rule, err: %d\n",
@@ -191,7 +216,7 @@ ice_eswitch_br_flow_create(struct device *dev, struct ice_hw *hw, int vsi_idx,
 		goto err_fwd_rule;
 	}
 
-	guard_rule = ice_eswitch_br_guard_rule_create(hw, vsi_idx, mac);
+	guard_rule = ice_eswitch_br_guard_rule_create(hw, vsi_idx, mac, vid);
 	err = PTR_ERR_OR_ZERO(guard_rule);
 	if (err) {
 		dev_err(dev, "Failed to create eswitch bridge %sgress guard rule, err: %d\n",
@@ -245,6 +270,30 @@ ice_eswitch_br_flow_delete(struct ice_pf *pf, struct ice_esw_br_flow *flow)
 	kfree(flow);
 }
 
+static struct ice_esw_br_vlan *
+ice_esw_br_port_vlan_lookup(struct ice_esw_br *bridge, u16 vsi_idx, u16 vid)
+{
+	struct ice_pf *pf = bridge->br_offloads->pf;
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_esw_br_port *port;
+	struct ice_esw_br_vlan *vlan;
+
+	port = xa_load(&bridge->ports, vsi_idx);
+	if (!port) {
+		dev_info(dev, "Bridge port lookup failed (vsi=%u)\n", vsi_idx);
+		return ERR_PTR(-EINVAL);
+	}
+
+	vlan = xa_load(&port->vlans, vid);
+	if (!vlan) {
+		dev_info(dev, "Bridge port vlan metadata lookup failed (vsi=%u)\n",
+			 vsi_idx);
+		return ERR_PTR(-EINVAL);
+	}
+
+	return vlan;
+}
+
 static void
 ice_eswitch_br_fdb_entry_delete(struct ice_esw_br *bridge,
 				struct ice_esw_br_fdb_entry *fdb_entry)
@@ -314,10 +363,25 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_esw_br_fdb_entry *fdb_entry;
 	struct ice_esw_br_flow *flow;
+	struct ice_esw_br_vlan *vlan;
 	struct ice_hw *hw = &pf->hw;
 	unsigned long event;
 	int err;
 
+	/* untagged filtering is not yet supported */
+	if (!(bridge->flags & ICE_ESWITCH_BR_VLAN_FILTERING) && vid)
+		return;
+
+	if ((bridge->flags & ICE_ESWITCH_BR_VLAN_FILTERING)) {
+		vlan = ice_esw_br_port_vlan_lookup(bridge, br_port->vsi_idx,
+						   vid);
+		if (IS_ERR(vlan)) {
+			dev_err(dev, "Failed to find vlan lookup, err: %ld\n",
+				PTR_ERR(vlan));
+			return;
+		}
+	}
+
 	fdb_entry = ice_eswitch_br_fdb_find(bridge, mac, vid);
 	if (fdb_entry)
 		ice_eswitch_br_fdb_entry_notify_and_cleanup(bridge, fdb_entry);
@@ -329,7 +393,7 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 	}
 
 	flow = ice_eswitch_br_flow_create(dev, hw, br_port->vsi_idx,
-					  br_port->type, mac);
+					  br_port->type, mac, vid);
 	if (IS_ERR(flow)) {
 		err = PTR_ERR(flow);
 		goto err_add_flow;
@@ -484,6 +548,215 @@ ice_eswitch_br_switchdev_event(struct notifier_block *nb,
 	return NOTIFY_DONE;
 }
 
+static void ice_eswitch_br_fdb_flush(struct ice_esw_br *bridge)
+{
+	struct ice_esw_br_fdb_entry *entry, *tmp;
+
+	list_for_each_entry_safe(entry, tmp, &bridge->fdb_list, list)
+		ice_eswitch_br_fdb_entry_notify_and_cleanup(bridge, entry);
+}
+
+static void
+ice_eswitch_br_vlan_filtering_set(struct ice_esw_br *bridge, bool enable)
+{
+	if (enable == !!(bridge->flags & ICE_ESWITCH_BR_VLAN_FILTERING))
+		return;
+
+	ice_eswitch_br_fdb_flush(bridge);
+	if (enable)
+		bridge->flags |= ICE_ESWITCH_BR_VLAN_FILTERING;
+	else
+		bridge->flags &= ~ICE_ESWITCH_BR_VLAN_FILTERING;
+}
+
+static void
+ice_eswitch_br_vlan_cleanup(struct ice_esw_br_port *port,
+			    struct ice_esw_br_vlan *vlan)
+{
+	struct ice_esw_br_fdb_entry *fdb_entry, *tmp;
+	struct ice_esw_br *bridge = port->bridge;
+
+	list_for_each_entry_safe(fdb_entry, tmp, &bridge->fdb_list, list) {
+		if (vlan->vid == fdb_entry->data.vid)
+			ice_eswitch_br_fdb_entry_delete(bridge, fdb_entry);
+	}
+
+	xa_erase(&port->vlans, vlan->vid);
+	kfree(vlan);
+}
+
+static void ice_eswitch_br_port_vlans_flush(struct ice_esw_br_port *port)
+{
+	struct ice_esw_br_vlan *vlan;
+	unsigned long index;
+
+	xa_for_each(&port->vlans, index, vlan)
+		ice_eswitch_br_vlan_cleanup(port, vlan);
+}
+
+static struct ice_esw_br_vlan *
+ice_eswitch_br_vlan_create(u16 vid, u16 flags, struct ice_esw_br_port *port)
+{
+	struct ice_esw_br_vlan *vlan;
+	int err;
+
+	vlan = kzalloc(sizeof(*vlan), GFP_KERNEL);
+	if (!vlan)
+		return ERR_PTR(-ENOMEM);
+
+	vlan->vid = vid;
+	vlan->flags = flags;
+
+	err = xa_insert(&port->vlans, vlan->vid, vlan, GFP_KERNEL);
+	if (err) {
+		kfree(vlan);
+		return ERR_PTR(err);
+	}
+
+	return vlan;
+}
+
+static int
+ice_eswitch_br_port_vlan_add(struct ice_esw_br *bridge, u16 vsi_idx, u16 vid,
+			     u16 flags, struct netlink_ext_ack *extack)
+{
+	struct ice_esw_br_port *port;
+	struct ice_esw_br_vlan *vlan;
+
+	port = xa_load(&bridge->ports, vsi_idx);
+	if (!port)
+		return -EINVAL;
+
+	vlan = xa_load(&port->vlans, vid);
+	if (vlan) {
+		if (vlan->flags == flags)
+			return 0;
+
+		ice_eswitch_br_vlan_cleanup(port, vlan);
+	}
+
+	vlan = ice_eswitch_br_vlan_create(vid, flags, port);
+	if (IS_ERR(vlan)) {
+		NL_SET_ERR_MSG_FMT_MOD(extack, "Failed to create VLAN entry, vid: %u, vsi: %u",
+				       vid, vsi_idx);
+		return PTR_ERR(vlan);
+	}
+
+	return 0;
+}
+
+static void
+ice_eswitch_br_port_vlan_del(struct ice_esw_br *bridge, u16 vsi_idx, u16 vid)
+{
+	struct ice_esw_br_port *port;
+	struct ice_esw_br_vlan *vlan;
+
+	port = xa_load(&bridge->ports, vsi_idx);
+	if (!port)
+		return;
+
+	vlan = xa_load(&port->vlans, vid);
+	if (!vlan)
+		return;
+
+	ice_eswitch_br_vlan_cleanup(port, vlan);
+}
+
+static int
+ice_eswitch_br_port_obj_add(struct net_device *netdev, const void *ctx,
+			    const struct switchdev_obj *obj,
+			    struct netlink_ext_ack *extack)
+{
+	struct ice_esw_br_port *br_port = ice_eswitch_br_netdev_to_port(netdev);
+	struct switchdev_obj_port_vlan *vlan;
+	int err;
+
+	if (!br_port)
+		return -EINVAL;
+
+	switch (obj->id) {
+	case SWITCHDEV_OBJ_ID_PORT_VLAN:
+		vlan = SWITCHDEV_OBJ_PORT_VLAN(obj);
+		err = ice_eswitch_br_port_vlan_add(br_port->bridge,
+						   br_port->vsi_idx, vlan->vid,
+						   vlan->flags, extack);
+		return err;
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static int
+ice_eswitch_br_port_obj_del(struct net_device *netdev, const void *ctx,
+			    const struct switchdev_obj *obj)
+{
+	struct ice_esw_br_port *br_port = ice_eswitch_br_netdev_to_port(netdev);
+	struct switchdev_obj_port_vlan *vlan;
+
+	if (!br_port)
+		return -EINVAL;
+
+	switch (obj->id) {
+	case SWITCHDEV_OBJ_ID_PORT_VLAN:
+		vlan = SWITCHDEV_OBJ_PORT_VLAN(obj);
+		ice_eswitch_br_port_vlan_del(br_port->bridge, br_port->vsi_idx,
+					     vlan->vid);
+		return 0;
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static int
+ice_eswitch_br_port_obj_attr_set(struct net_device *netdev, const void *ctx,
+				 const struct switchdev_attr *attr,
+				 struct netlink_ext_ack *extack)
+{
+	struct ice_esw_br_port *br_port = ice_eswitch_br_netdev_to_port(netdev);
+
+	if (!br_port)
+		return -EINVAL;
+
+	switch (attr->id) {
+	case SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING:
+		ice_eswitch_br_vlan_filtering_set(br_port->bridge,
+						  attr->u.vlan_filtering);
+		return 0;
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static int
+ice_eswitch_br_event_blocking(struct notifier_block *nb, unsigned long event,
+			      void *ptr)
+{
+	struct net_device *dev = switchdev_notifier_info_to_dev(ptr);
+	int err;
+
+	switch (event) {
+	case SWITCHDEV_PORT_OBJ_ADD:
+		err = switchdev_handle_port_obj_add(dev, ptr,
+						    ice_eswitch_br_is_dev_valid,
+						    ice_eswitch_br_port_obj_add);
+		break;
+	case SWITCHDEV_PORT_OBJ_DEL:
+		err = switchdev_handle_port_obj_del(dev, ptr,
+						    ice_eswitch_br_is_dev_valid,
+						    ice_eswitch_br_port_obj_del);
+		break;
+	case SWITCHDEV_PORT_ATTR_SET:
+		err = switchdev_handle_port_attr_set(dev, ptr,
+						     ice_eswitch_br_is_dev_valid,
+						     ice_eswitch_br_port_obj_attr_set);
+		break;
+	default:
+		err = 0;
+	}
+
+	return notifier_from_errno(err);
+}
+
 static void
 ice_eswitch_br_port_deinit(struct ice_esw_br *bridge,
 			   struct ice_esw_br_port *br_port)
@@ -502,6 +775,7 @@ ice_eswitch_br_port_deinit(struct ice_esw_br *bridge,
 		vsi->vf->repr->br_port = NULL;
 
 	xa_erase(&bridge->ports, br_port->vsi_idx);
+	ice_eswitch_br_port_vlans_flush(br_port);
 	kfree(br_port);
 }
 
@@ -514,6 +788,8 @@ ice_eswitch_br_port_init(struct ice_esw_br *bridge)
 	if (!br_port)
 		return ERR_PTR(-ENOMEM);
 
+	xa_init(&br_port->vlans);
+
 	br_port->bridge = bridge;
 
 	return br_port;
@@ -813,6 +1089,7 @@ ice_eswitch_br_offloads_deinit(struct ice_pf *pf)
 		return;
 
 	unregister_netdevice_notifier(&br_offloads->netdev_nb);
+	unregister_switchdev_blocking_notifier(&br_offloads->switchdev_blk);
 	unregister_switchdev_notifier(&br_offloads->switchdev_nb);
 	destroy_workqueue(br_offloads->wq);
 	/* Although notifier block is unregistered just before,
@@ -856,6 +1133,15 @@ ice_eswitch_br_offloads_init(struct ice_pf *pf)
 		goto err_reg_switchdev_nb;
 	}
 
+	br_offloads->switchdev_blk.notifier_call =
+		ice_eswitch_br_event_blocking;
+	err = register_switchdev_blocking_notifier(&br_offloads->switchdev_blk);
+	if (err) {
+		dev_err(dev,
+			"Failed to register bridge blocking switchdev notifier\n");
+		goto err_reg_switchdev_blk;
+	}
+
 	br_offloads->netdev_nb.notifier_call = ice_eswitch_br_port_event;
 	err = register_netdevice_notifier(&br_offloads->netdev_nb);
 	if (err) {
@@ -867,6 +1153,8 @@ ice_eswitch_br_offloads_init(struct ice_pf *pf)
 	return 0;
 
 err_reg_netdev_nb:
+	unregister_switchdev_blocking_notifier(&br_offloads->switchdev_blk);
+err_reg_switchdev_blk:
 	unregister_switchdev_notifier(&br_offloads->switchdev_nb);
 err_reg_switchdev_nb:
 	destroy_workqueue(br_offloads->wq);
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
index d0dcf66ff08b..fa1f77f76292 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
@@ -42,6 +42,11 @@ struct ice_esw_br_port {
 	struct ice_vsi *vsi;
 	enum ice_esw_br_port_type type;
 	u16 vsi_idx;
+	struct xarray vlans;
+};
+
+enum {
+	ICE_ESWITCH_BR_VLAN_FILTERING = BIT(0),
 };
 
 struct ice_esw_br {
@@ -52,12 +57,14 @@ struct ice_esw_br {
 	struct list_head fdb_list;
 
 	int ifindex;
+	u32 flags;
 };
 
 struct ice_esw_br_offloads {
 	struct ice_pf *pf;
 	struct ice_esw_br *bridge;
 	struct notifier_block netdev_nb;
+	struct notifier_block switchdev_blk;
 	struct notifier_block switchdev_nb;
 
 	struct workqueue_struct *wq;
@@ -70,6 +77,11 @@ struct ice_esw_br_fdb_work {
 	unsigned long event;
 };
 
+struct ice_esw_br_vlan {
+	u16 vid;
+	u16 flags;
+};
+
 #define ice_nb_to_br_offloads(nb, nb_name) \
 	container_of(nb, \
 		     struct ice_esw_br_offloads, \
@@ -80,6 +92,15 @@ struct ice_esw_br_fdb_work {
 		     struct ice_esw_br_fdb_work, \
 		     work)
 
+static inline bool ice_eswitch_br_is_vid_valid(u16 vid)
+{
+	/* In trunk VLAN mode, for untagged traffic the bridge sends requests
+	 * to offload VLAN 1 with pvid and untagged flags set. Since these
+	 * flags are not supported, add a MAC filter instead.
+	 */
+	return vid > 1;
+}
+
 void
 ice_eswitch_br_offloads_deinit(struct ice_pf *pf);
 int
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

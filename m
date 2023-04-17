Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BE56E43FB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 11:36:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95382613FB;
	Mon, 17 Apr 2023 09:36:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95382613FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681724161;
	bh=i3g7xkKarx5pPVBqkZOO7ALPaRxbjYxES+wnja3WrdM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=edt/Pd7aMgkF1NONiUzPbmy79PSe7bF7JEPsrFGyvt61zbFwazAdRFpSjUMx+FdtN
	 hL2+A9zHv/uQRsxrpj1u6O27POIRtVz7qO85T07h5UcRaph/8WeasmTZDUBqtPJF/G
	 ERe4eVn4NyTpFi3cF+rAWz7uThrI7KeEqbstfLZh316xMz1fMDjGgtGwAZuiSAdBsD
	 BsQhVTUb0WICaDHboPXv/SKAcon66OeLxQKxg+z+HlHm+0bb/XyL+ii+urDvK1b6z+
	 mXMhZU3wl0x8/ZBMjY+gkdXerSR962+HoUwcoUMLZ/WNL9AP6B/+GJZ8FWCDRN2CQy
	 2WaK7s7EV0hdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CRPasBaowiRz; Mon, 17 Apr 2023 09:36:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6FF3613C0;
	Mon, 17 Apr 2023 09:35:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6FF3613C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5FBE1C417A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C0F53821FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0F53821FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ULh5YUHhmxuw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 09:35:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80F3B821EB
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80F3B821EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="333644103"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="333644103"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 02:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="640899274"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="640899274"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga003.jf.intel.com with ESMTP; 17 Apr 2023 02:35:23 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id ED98D37F5D;
 Mon, 17 Apr 2023 10:35:21 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Apr 2023 11:34:08 +0200
Message-Id: <20230417093412.12161-9-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417093412.12161-1-wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681724127; x=1713260127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IS20tENj5H6UsBevNe1so2szwJ0jlbv0z6cyTpgzxW0=;
 b=CQ5KUzE5lZlh8VopjYHr2R/TBJf57zkkm/2AZvgc4g4d7+32//UzzBrD
 8tL8EUbtaGB2SF+3qqRxYxurSXZyNJxZxQ7L1nVtOF5qrrx+HuLJQMyo6
 bh+owd3q3WWZuDWgIOGMBqKcJf0THowCi7JMkUCbTyiuEd2PBGLUJBuuz
 SpdCe8kXXtCYXzGTXWtpVwJmH7cfEHlpej+X5LKF2+hLqTCLvxvvjTWpz
 CCwR0oiZq/UgOreBj+vmvv482U96src9zVqxsDqWde9kC/UMH1gOSGGMI
 wpss8wySGHi3PUVM43Cx8W5VdaZyC/EEoobx08/ktl+5WZSrRRi8erWnL
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CQ5KUzE5
Subject: [Intel-wired-lan] [PATCH net-next 08/12] ice: Add VLAN FDB support
 in switchdev mode
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
Cc: netdev@vger.kernel.org
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
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 319 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_eswitch_br.h   |  12 +
 2 files changed, 317 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 49381e4bf62a..56d36e397b12 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -59,13 +59,19 @@ ice_eswitch_br_netdev_to_port(struct net_device *dev)
 static void
 ice_eswitch_br_ingress_rule_setup(struct ice_adv_lkup_elem *list,
 				  struct ice_adv_rule_info *rule_info,
-				  const unsigned char *mac,
+				  const unsigned char *mac, bool vlan, u16 vid,
 				  u8 pf_id, u16 vf_vsi_idx)
 {
 	list[0].type = ICE_MAC_OFOS;
 	ether_addr_copy(list[0].h_u.eth_hdr.dst_addr, mac);
 	eth_broadcast_addr(list[0].m_u.eth_hdr.dst_addr);
 
+	if (vlan) {
+		list[1].type = ICE_VLAN_OFOS;
+		list[1].h_u.vlan_hdr.vlan = cpu_to_be16(vid & VLAN_VID_MASK);
+		list[1].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
+	}
+
 	rule_info->sw_act.vsi_handle = vf_vsi_idx;
 	rule_info->sw_act.flag |= ICE_FLTR_RX;
 	rule_info->sw_act.src = pf_id;
@@ -75,13 +81,19 @@ ice_eswitch_br_ingress_rule_setup(struct ice_adv_lkup_elem *list,
 static void
 ice_eswitch_br_egress_rule_setup(struct ice_adv_lkup_elem *list,
 				 struct ice_adv_rule_info *rule_info,
-				 const unsigned char *mac,
+				 const unsigned char *mac, bool vlan, u16 vid,
 				 u16 pf_vsi_idx)
 {
 	list[0].type = ICE_MAC_OFOS;
 	ether_addr_copy(list[0].h_u.eth_hdr.dst_addr, mac);
 	eth_broadcast_addr(list[0].m_u.eth_hdr.dst_addr);
 
+	if (vlan) {
+		list[1].type = ICE_VLAN_OFOS;
+		list[1].h_u.vlan_hdr.vlan = cpu_to_be16(vid & VLAN_VID_MASK);
+		list[1].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
+	}
+
 	rule_info->sw_act.vsi_handle = pf_vsi_idx;
 	rule_info->sw_act.flag |= ICE_FLTR_TX;
 	rule_info->flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
@@ -105,12 +117,12 @@ ice_eswitch_br_rule_delete(struct ice_hw *hw, struct ice_rule_query_data *rule)
 
 static struct ice_rule_query_data *
 ice_eswitch_br_fwd_rule_create(struct ice_hw *hw, u16 vsi_idx, int port_type,
-			       const unsigned char *mac)
+			       const unsigned char *mac, bool vlan, u16 vid)
 {
 	struct ice_adv_rule_info rule_info = { 0 };
 	struct ice_rule_query_data *rule;
 	struct ice_adv_lkup_elem *list;
-	u16 lkups_cnt = 1;
+	u16 lkups_cnt = vlan ? 2 : 1;
 	int err;
 
 	rule = kzalloc(sizeof(*rule), GFP_KERNEL);
@@ -125,12 +137,12 @@ ice_eswitch_br_fwd_rule_create(struct ice_hw *hw, u16 vsi_idx, int port_type,
 
 	switch (port_type) {
 	case ICE_ESWITCH_BR_UPLINK_PORT:
-		ice_eswitch_br_egress_rule_setup(list, &rule_info, mac,
-						 vsi_idx);
+		ice_eswitch_br_egress_rule_setup(list, &rule_info, mac, vlan,
+						 vid, vsi_idx);
 		break;
 	case ICE_ESWITCH_BR_VF_REPR_PORT:
-		ice_eswitch_br_ingress_rule_setup(list, &rule_info, mac,
-						  hw->pf_id, vsi_idx);
+		ice_eswitch_br_ingress_rule_setup(list, &rule_info, mac, vlan,
+						  vid, hw->pf_id, vsi_idx);
 		break;
 	default:
 		err = -EINVAL;
@@ -159,12 +171,12 @@ ice_eswitch_br_fwd_rule_create(struct ice_hw *hw, u16 vsi_idx, int port_type,
 
 static struct ice_rule_query_data *
 ice_eswitch_br_guard_rule_create(struct ice_hw *hw, u16 vsi_idx,
-				 const unsigned char *mac)
+				 const unsigned char *mac, bool vlan, u16 vid)
 {
 	struct ice_adv_rule_info rule_info = { 0 };
 	struct ice_rule_query_data *rule;
 	struct ice_adv_lkup_elem *list;
-	const u16 lkups_cnt = 1;
+	u16 lkups_cnt = vlan ? 2 : 1;
 	int err;
 
 	rule = kzalloc(sizeof(*rule), GFP_KERNEL);
@@ -183,6 +195,12 @@ ice_eswitch_br_guard_rule_create(struct ice_hw *hw, u16 vsi_idx,
 	ether_addr_copy(list[0].h_u.eth_hdr.src_addr, mac);
 	eth_broadcast_addr(list[0].m_u.eth_hdr.src_addr);
 
+	if (vlan) {
+		list[1].type = ICE_VLAN_OFOS;
+		list[1].h_u.vlan_hdr.vlan = cpu_to_be16(vid & VLAN_VID_MASK);
+		list[1].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
+	}
+
 	rule_info.allow_pass_l2 = true;
 	rule_info.sw_act.vsi_handle = vsi_idx;
 	rule_info.sw_act.fltr_act = ICE_NOP;
@@ -204,7 +222,8 @@ ice_eswitch_br_guard_rule_create(struct ice_hw *hw, u16 vsi_idx,
 
 static struct ice_esw_br_flow *
 ice_eswitch_br_flow_create(struct device *dev, struct ice_hw *hw, u16 vsi_idx,
-			   int port_type, const unsigned char *mac)
+			   int port_type, const unsigned char *mac,
+			   bool add_vlan, u16 vid)
 {
 	struct ice_rule_query_data *fwd_rule, *guard_rule;
 	struct ice_esw_br_flow *flow;
@@ -214,7 +233,8 @@ ice_eswitch_br_flow_create(struct device *dev, struct ice_hw *hw, u16 vsi_idx,
 	if (!flow)
 		return ERR_PTR(-ENOMEM);
 
-	fwd_rule = ice_eswitch_br_fwd_rule_create(hw, vsi_idx, port_type, mac);
+	fwd_rule = ice_eswitch_br_fwd_rule_create(hw, vsi_idx, port_type, mac,
+						  add_vlan, vid);
 	if (IS_ERR(fwd_rule)) {
 		err = PTR_ERR(fwd_rule);
 		dev_err(dev, "Failed to create eswitch bridge %sgress forward rule, err: %d\n",
@@ -223,7 +243,8 @@ ice_eswitch_br_flow_create(struct device *dev, struct ice_hw *hw, u16 vsi_idx,
 		goto err_fwd_rule;
 	}
 
-	guard_rule = ice_eswitch_br_guard_rule_create(hw, vsi_idx, mac);
+	guard_rule = ice_eswitch_br_guard_rule_create(hw, vsi_idx, mac,
+						      add_vlan, vid);
 	if (IS_ERR(guard_rule)) {
 		err = PTR_ERR(guard_rule);
 		dev_err(dev, "Failed to create eswitch bridge %sgress guard rule, err: %d\n",
@@ -276,6 +297,30 @@ ice_eswitch_br_flow_delete(struct ice_pf *pf, struct ice_esw_br_flow *flow)
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
@@ -344,10 +389,33 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_esw_br_fdb_entry *fdb_entry;
 	struct ice_esw_br_flow *flow;
+	struct ice_esw_br_vlan *vlan;
 	struct ice_hw *hw = &pf->hw;
+	bool add_vlan = false;
 	unsigned long event;
 	int err;
 
+	/* FIXME: untagged filtering is not yet supported
+	 */
+	if (!(bridge->flags & ICE_ESWITCH_BR_VLAN_FILTERING) && vid)
+		return;
+
+	/* In trunk VLAN mode, for untagged traffic the bridge sends requests
+	 * to offload VLAN 1 with pvid and untagged flags set. Since these
+	 * flags are not supported, add a MAC filter instead.
+	 */
+	if ((bridge->flags & ICE_ESWITCH_BR_VLAN_FILTERING) && vid != 1) {
+		vlan = ice_esw_br_port_vlan_lookup(bridge, br_port->vsi_idx,
+						   vid);
+		if (IS_ERR(vlan)) {
+			dev_err(dev, "Failed to find vlan lookup, err: %ld\n",
+				PTR_ERR(vlan));
+			return;
+		}
+
+		add_vlan = true;
+	}
+
 	fdb_entry = ice_eswitch_br_fdb_find(bridge, mac, vid);
 	if (fdb_entry)
 		ice_eswitch_br_fdb_entry_notify_and_cleanup(bridge, fdb_entry);
@@ -359,7 +427,7 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 	}
 
 	flow = ice_eswitch_br_flow_create(dev, hw, br_port->vsi_idx,
-					  br_port->type, mac);
+					  br_port->type, mac, add_vlan, vid);
 	if (IS_ERR(flow)) {
 		err = PTR_ERR(flow);
 		goto err_add_flow;
@@ -519,6 +587,214 @@ ice_eswitch_br_switchdev_event(struct notifier_block *nb,
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
+	bool filtering = bridge->flags & ICE_ESWITCH_BR_VLAN_FILTERING;
+
+	if (filtering == enable)
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
+		NL_SET_ERR_MSG_MOD(extack, "Failed to create VLAN entry");
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
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return err;
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
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
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
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
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
@@ -537,6 +813,7 @@ ice_eswitch_br_port_deinit(struct ice_esw_br *bridge,
 		vsi->vf->repr->br_port = NULL;
 
 	xa_erase(&bridge->ports, br_port->vsi_idx);
+	ice_eswitch_br_port_vlans_flush(br_port);
 	kfree(br_port);
 }
 
@@ -549,6 +826,8 @@ ice_eswitch_br_port_init(struct ice_esw_br *bridge)
 	if (!br_port)
 		return ERR_PTR(-ENOMEM);
 
+	xa_init(&br_port->vlans);
+
 	br_port->bridge = bridge;
 
 	return br_port;
@@ -852,6 +1131,7 @@ ice_eswitch_br_offloads_deinit(struct ice_pf *pf)
 		return;
 
 	unregister_netdevice_notifier(&br_offloads->netdev_nb);
+	unregister_switchdev_blocking_notifier(&br_offloads->switchdev_blk);
 	unregister_switchdev_notifier(&br_offloads->switchdev_nb);
 	destroy_workqueue(br_offloads->wq);
 	/* Although notifier block is unregistered just before,
@@ -895,6 +1175,15 @@ ice_eswitch_br_offloads_init(struct ice_pf *pf)
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
@@ -906,6 +1195,8 @@ ice_eswitch_br_offloads_init(struct ice_pf *pf)
 	return 0;
 
 err_reg_netdev_nb:
+	unregister_switchdev_blocking_notifier(&br_offloads->switchdev_blk);
+err_reg_switchdev_blk:
 	unregister_switchdev_notifier(&br_offloads->switchdev_nb);
 err_reg_switchdev_nb:
 	destroy_workqueue(br_offloads->wq);
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
index 73ad81bad655..cf3e2615a62a 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
@@ -42,10 +42,16 @@ struct ice_esw_br_port {
 	enum ice_esw_br_port_type type;
 	struct ice_vsi *vsi;
 	u16 vsi_idx;
+	struct xarray vlans;
+};
+
+enum {
+	ICE_ESWITCH_BR_VLAN_FILTERING = BIT(0),
 };
 
 struct ice_esw_br {
 	struct ice_esw_br_offloads *br_offloads;
+	int flags;
 	int ifindex;
 
 	struct xarray ports;
@@ -57,6 +63,7 @@ struct ice_esw_br_offloads {
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
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

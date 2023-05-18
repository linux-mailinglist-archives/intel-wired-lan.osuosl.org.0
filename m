Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DB1707E0C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 12:27:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 224F6428A2;
	Thu, 18 May 2023 10:27:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 224F6428A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684405632;
	bh=lMVYOX77z0ilvvmkVVCieTagfQi1wOnzerYTNDUBtI8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5UCQ1Q+rB9PdF8wfINy50whrgYm/iN7N1ve58vytgBbZSFENH20pPI2GtzSmPFaSu
	 jpY6MpIgkHXWz6w8El25DKwMvtS54IoIeTBuiPq2r7znP0zUVfwrcz45huglBqF15h
	 YFZ+73lVLNY470fCRVYL7J/FyRn92hNqAdvN46/U3aGAEEi12HDCt1SRjyG8qP0CDT
	 MSyoAlwvVmRtjlLx+p1/Ho6wF7JckV+UD0XAgy/U6GutlIcK9SvZUmLKMyOIo1JQ6O
	 qXb2oPFap53tyCwNUYN4hWdgsYkjeJjS99LBEGY5Ns3mCm47sQl1Cuy5f1WdjCBPrB
	 xuE2rHHcLCiLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m4yw-zhWQuqb; Thu, 18 May 2023 10:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B6BC4287F;
	Thu, 18 May 2023 10:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B6BC4287F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D55C41BF574
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA63F812FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:26:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA63F812FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9WouLayxv7k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 10:26:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AD1E843CC
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6AD1E843CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:26:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="438371445"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="438371445"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 03:26:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="767143755"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="767143755"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 18 May 2023 03:26:24 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C558336C13;
 Thu, 18 May 2023 11:26:23 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 May 2023 12:25:06 +0200
Message-Id: <20230518102509.20913-8-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230518102509.20913-1-wojciech.drewek@intel.com>
References: <20230518102509.20913-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684405598; x=1715941598;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R9FnT9zbmA1n1hOwj6grjCr1F3bobYzqlZg4WEgYMLA=;
 b=Pyo9aeS8DXtzcBZArZZ86DeSMaPctxnm54IDT0b2vdo9M026ze5ueur+
 eJDK9o0QHqxIuN3she8hSc16RRbmb0WEIVfvgsSHjCXtrvlFZwymwnjSK
 0L86OUmRdYIUtIlv6zZKbbOXPSzcUCGCT2DY6eUY7HXRWokfK7yi/lG9L
 +tfI8Y95F/zF3tcBZyHEFTFDMBxFcO7CyRUelf1B9V8lZd/4Rm4EhgkY5
 fF0gPIcXNam2HX9Xsyy2WmInCRM5xVT3EdPFm87EqKcK7EA3akPJzxfE1
 AHuH4eTNO1lVVae86poEIOzo+gmzh+WhKdW76yLdK3+oXKhgqhVlHOhVy
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pyo9aeS8
Subject: [Intel-wired-lan] [PATCH iwl-next v2 07/10] ice: Add VLAN FDB
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
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: introduce ice_eswitch_is_vid_valid, remove vlan bool arg,
    introduce better log msg
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 317 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_eswitch_br.h   |  12 +
 2 files changed, 317 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 7b7eecec8497..223514d12491 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -13,6 +13,15 @@ static const struct rhashtable_params ice_fdb_ht_params = {
 	.automatic_shrinking = true,
 };
 
+static inline bool ice_eswitch_is_vid_valid(u16 vid)
+{
+	/* In trunk VLAN mode, for untagged traffic the bridge sends requests
+	 * to offload VLAN 1 with pvid and untagged flags set. Since these
+	 * flags are not supported, add a MAC filter instead.
+	 */
+	return vid > 1;
+}
+
 static bool ice_eswitch_br_is_dev_valid(const struct net_device *dev)
 {
 	/* Accept only PF netdev, PRs and LAG */
@@ -64,13 +73,19 @@ ice_eswitch_br_netdev_to_port(struct net_device *dev)
 static void
 ice_eswitch_br_ingress_rule_setup(struct ice_adv_lkup_elem *list,
 				  struct ice_adv_rule_info *rule_info,
-				  const unsigned char *mac,
+				  const unsigned char *mac, u16 vid,
 				  u8 pf_id, u16 vf_vsi_idx)
 {
 	list[0].type = ICE_MAC_OFOS;
 	ether_addr_copy(list[0].h_u.eth_hdr.dst_addr, mac);
 	eth_broadcast_addr(list[0].m_u.eth_hdr.dst_addr);
 
+	if (ice_eswitch_is_vid_valid(vid)) {
+		list[1].type = ICE_VLAN_OFOS;
+		list[1].h_u.vlan_hdr.vlan = cpu_to_be16(vid & VLAN_VID_MASK);
+		list[1].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
+	}
+
 	rule_info->sw_act.vsi_handle = vf_vsi_idx;
 	rule_info->sw_act.flag |= ICE_FLTR_RX;
 	rule_info->sw_act.src = pf_id;
@@ -80,13 +95,19 @@ ice_eswitch_br_ingress_rule_setup(struct ice_adv_lkup_elem *list,
 static void
 ice_eswitch_br_egress_rule_setup(struct ice_adv_lkup_elem *list,
 				 struct ice_adv_rule_info *rule_info,
-				 const unsigned char *mac,
+				 const unsigned char *mac, u16 vid,
 				 u16 pf_vsi_idx)
 {
 	list[0].type = ICE_MAC_OFOS;
 	ether_addr_copy(list[0].h_u.eth_hdr.dst_addr, mac);
 	eth_broadcast_addr(list[0].m_u.eth_hdr.dst_addr);
 
+	if (ice_eswitch_is_vid_valid(vid)) {
+		list[1].type = ICE_VLAN_OFOS;
+		list[1].h_u.vlan_hdr.vlan = cpu_to_be16(vid & VLAN_VID_MASK);
+		list[1].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
+	}
+
 	rule_info->sw_act.vsi_handle = pf_vsi_idx;
 	rule_info->sw_act.flag |= ICE_FLTR_TX;
 	rule_info->flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
@@ -110,14 +131,19 @@ ice_eswitch_br_rule_delete(struct ice_hw *hw, struct ice_rule_query_data *rule)
 
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
 
+	if (ice_eswitch_is_vid_valid(vid))
+		lkups_cnt = 2;
+	else
+		lkups_cnt = 1;
+
 	rule = kzalloc(sizeof(*rule), GFP_KERNEL);
 	if (!rule)
 		return ERR_PTR(-ENOMEM);
@@ -131,11 +157,11 @@ ice_eswitch_br_fwd_rule_create(struct ice_hw *hw, int vsi_idx, int port_type,
 	switch (port_type) {
 	case ICE_ESWITCH_BR_UPLINK_PORT:
 		ice_eswitch_br_egress_rule_setup(list, &rule_info, mac,
-						 vsi_idx);
+						 vid, vsi_idx);
 		break;
 	case ICE_ESWITCH_BR_VF_REPR_PORT:
 		ice_eswitch_br_ingress_rule_setup(list, &rule_info, mac,
-						  hw->pf_id, vsi_idx);
+						  vid, hw->pf_id, vsi_idx);
 		break;
 	default:
 		err = -EINVAL;
@@ -164,13 +190,18 @@ ice_eswitch_br_fwd_rule_create(struct ice_hw *hw, int vsi_idx, int port_type,
 
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
+	if (ice_eswitch_is_vid_valid(vid))
+		lkups_cnt = 2;
+	else
+		lkups_cnt = 1;
 
 	rule = kzalloc(sizeof(*rule), GFP_KERNEL);
 	if (!rule)
@@ -184,6 +215,12 @@ ice_eswitch_br_guard_rule_create(struct ice_hw *hw, u16 vsi_idx,
 	ether_addr_copy(list[0].h_u.eth_hdr.src_addr, mac);
 	eth_broadcast_addr(list[0].m_u.eth_hdr.src_addr);
 
+	if (ice_eswitch_is_vid_valid(vid)) {
+		list[1].type = ICE_VLAN_OFOS;
+		list[1].h_u.vlan_hdr.vlan = cpu_to_be16(vid & VLAN_VID_MASK);
+		list[1].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
+	}
+
 	rule_info.allow_pass_l2 = true;
 	rule_info.sw_act.vsi_handle = vsi_idx;
 	rule_info.sw_act.fltr_act = ICE_NOP;
@@ -205,7 +242,7 @@ ice_eswitch_br_guard_rule_create(struct ice_hw *hw, u16 vsi_idx,
 
 static struct ice_esw_br_flow *
 ice_eswitch_br_flow_create(struct device *dev, struct ice_hw *hw, int vsi_idx,
-			   int port_type, const unsigned char *mac)
+			   int port_type, const unsigned char *mac, u16 vid)
 {
 	struct ice_rule_query_data *fwd_rule, *guard_rule;
 	struct ice_esw_br_flow *flow;
@@ -215,7 +252,8 @@ ice_eswitch_br_flow_create(struct device *dev, struct ice_hw *hw, int vsi_idx,
 	if (!flow)
 		return ERR_PTR(-ENOMEM);
 
-	fwd_rule = ice_eswitch_br_fwd_rule_create(hw, vsi_idx, port_type, mac);
+	fwd_rule = ice_eswitch_br_fwd_rule_create(hw, vsi_idx, port_type, mac,
+						  vid);
 	err = PTR_ERR_OR_ZERO(fwd_rule);
 	if (err) {
 		dev_err(dev, "Failed to create eswitch bridge %sgress forward rule, err: %d\n",
@@ -224,7 +262,7 @@ ice_eswitch_br_flow_create(struct device *dev, struct ice_hw *hw, int vsi_idx,
 		goto err_fwd_rule;
 	}
 
-	guard_rule = ice_eswitch_br_guard_rule_create(hw, vsi_idx, mac);
+	guard_rule = ice_eswitch_br_guard_rule_create(hw, vsi_idx, mac, vid);
 	err = PTR_ERR_OR_ZERO(guard_rule);
 	if (err) {
 		dev_err(dev, "Failed to create eswitch bridge %sgress guard rule, err: %d\n",
@@ -278,6 +316,30 @@ ice_eswitch_br_flow_delete(struct ice_pf *pf, struct ice_esw_br_flow *flow)
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
@@ -347,10 +409,25 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
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
@@ -362,7 +439,7 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 	}
 
 	flow = ice_eswitch_br_flow_create(dev, hw, br_port->vsi_idx,
-					  br_port->type, mac);
+					  br_port->type, mac, vid);
 	if (IS_ERR(flow)) {
 		err = PTR_ERR(flow);
 		goto err_add_flow;
@@ -521,6 +598,207 @@ ice_eswitch_br_switchdev_event(struct notifier_block *nb,
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
@@ -539,6 +817,7 @@ ice_eswitch_br_port_deinit(struct ice_esw_br *bridge,
 		vsi->vf->repr->br_port = NULL;
 
 	xa_erase(&bridge->ports, br_port->vsi_idx);
+	ice_eswitch_br_port_vlans_flush(br_port);
 	kfree(br_port);
 }
 
@@ -551,6 +830,8 @@ ice_eswitch_br_port_init(struct ice_esw_br *bridge)
 	if (!br_port)
 		return ERR_PTR(-ENOMEM);
 
+	xa_init(&br_port->vlans);
+
 	br_port->bridge = bridge;
 
 	return br_port;
@@ -858,6 +1139,7 @@ ice_eswitch_br_offloads_deinit(struct ice_pf *pf)
 		return;
 
 	unregister_netdevice_notifier(&br_offloads->netdev_nb);
+	unregister_switchdev_blocking_notifier(&br_offloads->switchdev_blk);
 	unregister_switchdev_notifier(&br_offloads->switchdev_nb);
 	destroy_workqueue(br_offloads->wq);
 	/* Although notifier block is unregistered just before,
@@ -901,6 +1183,15 @@ ice_eswitch_br_offloads_init(struct ice_pf *pf)
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
@@ -912,6 +1203,8 @@ ice_eswitch_br_offloads_init(struct ice_pf *pf)
 	return 0;
 
 err_reg_netdev_nb:
+	unregister_switchdev_blocking_notifier(&br_offloads->switchdev_blk);
+err_reg_switchdev_blk:
 	unregister_switchdev_notifier(&br_offloads->switchdev_nb);
 err_reg_switchdev_nb:
 	destroy_workqueue(br_offloads->wq);
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
index 7afd00cdea9a..917b8c9c9e19 100644
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
@@ -71,6 +78,11 @@ struct ice_esw_br_fdb_work {
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
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

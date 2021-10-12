Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9017242ABF4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 20:33:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44FB081CE1;
	Tue, 12 Oct 2021 18:33:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8aEzN6DJDhfk; Tue, 12 Oct 2021 18:33:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3884F80E8D;
	Tue, 12 Oct 2021 18:33:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 83F771BF9BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7388E60BE5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qadE7VXJA8WH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 18:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EEEE560BE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="250640572"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="250640572"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 11:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="491100331"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by orsmga008.jf.intel.com with ESMTP; 12 Oct 2021 11:33:02 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Oct 2021 11:31:04 -0700
Message-Id: <20211012183106.2315477-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
References: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v2 2/4] ice: VXLAN and Geneve TC
 support
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Add definition for VXLAN and Geneve dummy packet. Define VXLAN and
Geneve type of fields to match on correct UDP tunnel header.

Parse tunnel specific fields from TC tool like outer MACs, outer IPs,
outer destination port and VNI. Save values and masks in outer header
struct and move header pointer to inner to simplify parsing inner
values.

There are two cases for redirect action:
- from uplink to VF - TC filter is added on tunnel device
- from VF to uplink - TC filter is added on PR, for this case check if
  redirect device is tunnel device

VXLAN example:
- create tunnel device
ip l add $VXLAN_DEV type vxlan id $VXLAN_VNI dstport $VXLAN_PORT \
dev $PF
- add TC filter (in switchdev mode)
tc filter add dev $VXLAN_DEV protocol ip parent ffff: flower \
enc_dst_ip $VF1_IP enc_key_id $VXLAN_VNI action mirred egress \
redirect dev $VF1_PR

Geneve example:
- create tunnel device
ip l add $GENEVE_DEV type geneve id $GENEVE_VNI dstport $GENEVE_PORT \
remote $GENEVE_IP
- add TC filter (in switchdev mode)
tc filter add dev $GENEVE_DEV protocol ip parent ffff: flower \
enc_key_id $GENEVE_VNI dst_ip $GENEVE1_IP action mirred egress \
redirect dev $VF1_PR

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  16 +
 drivers/net/ethernet/intel/ice/ice_switch.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 384 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   4 +
 5 files changed, 363 insertions(+), 48 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 600c8444d23b..3545d2d3409f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7390,11 +7390,9 @@ ice_indr_setup_tc_block(struct net_device *netdev, struct Qdisc *sch,
 	struct ice_indr_block_priv *indr_priv;
 	struct flow_block_cb *block_cb;
 
-	int tunnel_type = 0;
-
-	if (tunnel_type != TNL_VXLAN && tunnel_type != TNL_GENEVE &&
+	if (!ice_is_tunnel_supported(netdev) &&
 	    !(is_vlan_dev(netdev) &&
-	    vlan_dev_real_dev(netdev) == np->vsi->netdev))
+	      vlan_dev_real_dev(netdev) == np->vsi->netdev))
 		return -EOPNOTSUPP;
 
 	if (f->binder_type != FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS)
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index 0b220dfa7457..d717d1158545 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -37,10 +37,19 @@ enum ice_protocol_type {
 	ICE_TCP_IL,
 	ICE_UDP_OF,
 	ICE_UDP_ILOS,
+	ICE_VXLAN,
+	ICE_GENEVE,
+	ICE_VXLAN_GPE,
 	ICE_SCTP_IL,
 	ICE_PROTOCOL_LAST
 };
 
+enum ice_sw_tunnel_type {
+	ICE_NON_TUN = 0,
+	ICE_SW_TUN_VXLAN,
+	ICE_SW_TUN_GENEVE,
+};
+
 /* Decoders for ice_prot_id:
  * - F: First
  * - I: Inner
@@ -152,6 +161,12 @@ struct ice_l4_hdr {
 	__be16 check;
 };
 
+struct ice_udp_tnl_hdr {
+	__be16 field;
+	__be16 proto_type;
+	__be32 vni;     /* only use lower 24-bits */
+};
+
 union ice_prot_hdr {
 	struct ice_ether_hdr eth_hdr;
 	struct ice_ethtype_hdr ethertype;
@@ -160,6 +175,7 @@ union ice_prot_hdr {
 	struct ice_ipv6_hdr ipv6_hdr;
 	struct ice_l4_hdr l4_hdr;
 	struct ice_sctp_hdr sctp_hdr;
+	struct ice_udp_tnl_hdr tnl_hdr;
 };
 
 /* This is mapping table entry that maps every word within a given protocol
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index d4c0a3b594af..e779681da59e 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -171,6 +171,7 @@ struct ice_adv_rule_flags_info {
 };
 
 struct ice_adv_rule_info {
+	enum ice_sw_tunnel_type tun_type;
 	struct ice_sw_act_ctrl sw_act;
 	u32 priority;
 	u8 rx; /* true means LOOKUP_RX otherwise LOOKUP_TX */
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 1dccfd116bc9..30a276d789f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -3,8 +3,9 @@
 
 #include "ice.h"
 #include "ice_tc_lib.h"
-#include "ice_lib.h"
 #include "ice_fltr.h"
+#include "ice_lib.h"
+#include "ice_protocol_type.h"
 
 /**
  * ice_tc_count_lkups - determine lookup count for switch filter
@@ -20,7 +21,21 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 {
 	int lkups_cnt = 0;
 
-	if (flags & ICE_TC_FLWR_FIELD_ETH_TYPE_ID)
+	if (flags & ICE_TC_FLWR_FIELD_TENANT_ID)
+		lkups_cnt++;
+
+	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
+		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV4 |
+		     ICE_TC_FLWR_FIELD_ENC_SRC_IPV6 |
+		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV6))
+		lkups_cnt++;
+
+	if (flags & ICE_TC_FLWR_FIELD_ENC_DEST_L4_PORT)
+		lkups_cnt++;
+
+	/* currently inner etype filter isn't supported */
+	if ((flags & ICE_TC_FLWR_FIELD_ETH_TYPE_ID) &&
+	    fltr->tunnel_type == TNL_LAST)
 		lkups_cnt++;
 
 	/* are MAC fields specified? */
@@ -32,10 +47,8 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 		lkups_cnt++;
 
 	/* are IPv[4|6] fields specified? */
-	if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV4 | ICE_TC_FLWR_FIELD_SRC_IPV4))
-		lkups_cnt++;
-	else if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV6 |
-			  ICE_TC_FLWR_FIELD_SRC_IPV6))
+	if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV4 | ICE_TC_FLWR_FIELD_SRC_IPV4 |
+		     ICE_TC_FLWR_FIELD_DEST_IPV6 | ICE_TC_FLWR_FIELD_SRC_IPV6))
 		lkups_cnt++;
 
 	/* is L4 (TCP/UDP/any other L4 protocol fields) specified? */
@@ -46,6 +59,135 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	return lkups_cnt;
 }
 
+static enum ice_protocol_type
+ice_proto_type_from_mac(bool inner)
+{
+	return inner ? ICE_MAC_IL : ICE_MAC_OFOS;
+}
+
+static enum ice_protocol_type
+ice_proto_type_from_ipv4(bool inner)
+{
+	return inner ? ICE_IPV4_IL : ICE_IPV4_OFOS;
+}
+
+static enum ice_protocol_type
+ice_proto_type_from_ipv6(bool inner)
+{
+	return inner ? ICE_IPV6_IL : ICE_IPV6_OFOS;
+}
+
+static enum ice_protocol_type
+ice_proto_type_from_l4_port(bool inner, u16 ip_proto)
+{
+	if (inner) {
+		switch (ip_proto) {
+		case IPPROTO_UDP:
+			return ICE_UDP_ILOS;
+		}
+	} else {
+		switch (ip_proto) {
+		case IPPROTO_TCP:
+			return ICE_TCP_IL;
+		case IPPROTO_UDP:
+			return ICE_UDP_OF;
+		}
+	}
+
+	return 0;
+}
+
+static enum ice_protocol_type
+ice_proto_type_from_tunnel(enum ice_tunnel_type type)
+{
+	switch (type) {
+	case TNL_VXLAN:
+		return ICE_VXLAN;
+	case TNL_GENEVE:
+		return ICE_GENEVE;
+	default:
+		return 0;
+	}
+}
+
+static enum ice_sw_tunnel_type
+ice_sw_type_from_tunnel(enum ice_tunnel_type type)
+{
+	switch (type) {
+	case TNL_VXLAN:
+		return ICE_SW_TUN_VXLAN;
+	case TNL_GENEVE:
+		return ICE_SW_TUN_GENEVE;
+	default:
+		return ICE_NON_TUN;
+	}
+}
+
+static int
+ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
+			 struct ice_adv_lkup_elem *list)
+{
+	struct ice_tc_flower_lyr_2_4_hdrs *hdr = &fltr->outer_headers;
+	int i = 0;
+
+	if (flags & ICE_TC_FLWR_FIELD_TENANT_ID) {
+		u32 tenant_id;
+
+		list[i].type = ice_proto_type_from_tunnel(fltr->tunnel_type);
+		tenant_id = be32_to_cpu(fltr->tenant_id) << 8;
+		list[i].h_u.tnl_hdr.vni = cpu_to_be32(tenant_id);
+		memcpy(&list[i].m_u.tnl_hdr.vni, "\xff\xff\xff\x00", 4);
+		i++;
+	}
+
+	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
+		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV4)) {
+		list[i].type = ice_proto_type_from_ipv4(false);
+
+		if (flags & ICE_TC_FLWR_FIELD_ENC_SRC_IPV4) {
+			list[i].h_u.ipv4_hdr.src_addr = hdr->l3_key.src_ipv4;
+			list[i].m_u.ipv4_hdr.src_addr = hdr->l3_mask.src_ipv4;
+		}
+		if (flags & ICE_TC_FLWR_FIELD_ENC_DEST_IPV4) {
+			list[i].h_u.ipv4_hdr.dst_addr = hdr->l3_key.dst_ipv4;
+			list[i].m_u.ipv4_hdr.dst_addr = hdr->l3_mask.dst_ipv4;
+		}
+		i++;
+	}
+
+	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV6 |
+		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV6)) {
+		list[i].type = ice_proto_type_from_ipv6(false);
+
+		if (flags & ICE_TC_FLWR_FIELD_ENC_SRC_IPV6) {
+			memcpy(&list[i].h_u.ipv6_hdr.src_addr,
+			       &hdr->l3_key.src_ipv6_addr,
+			       sizeof(hdr->l3_key.src_ipv6_addr));
+			memcpy(&list[i].m_u.ipv6_hdr.src_addr,
+			       &hdr->l3_mask.src_ipv6_addr,
+			       sizeof(hdr->l3_mask.src_ipv6_addr));
+		}
+		if (flags & ICE_TC_FLWR_FIELD_ENC_DEST_IPV6) {
+			memcpy(&list[i].h_u.ipv6_hdr.dst_addr,
+			       &hdr->l3_key.dst_ipv6_addr,
+			       sizeof(hdr->l3_key.dst_ipv6_addr));
+			memcpy(&list[i].m_u.ipv6_hdr.dst_addr,
+			       &hdr->l3_mask.dst_ipv6_addr,
+			       sizeof(hdr->l3_mask.dst_ipv6_addr));
+		}
+		i++;
+	}
+
+	if (flags & ICE_TC_FLWR_FIELD_ENC_DEST_L4_PORT) {
+		list[i].type = ice_proto_type_from_l4_port(false, hdr->l3_key.ip_proto);
+		list[i].h_u.l4_hdr.dst_port = hdr->l4_key.dst_port;
+		list[i].m_u.l4_hdr.dst_port = hdr->l4_mask.dst_port;
+		i++;
+	}
+
+	return i;
+}
+
 /**
  * ice_tc_fill_rules - fill filter rules based on TC fltr
  * @hw: pointer to HW structure
@@ -67,9 +209,16 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 		  u16 *l4_proto)
 {
 	struct ice_tc_flower_lyr_2_4_hdrs *headers = &tc_fltr->outer_headers;
+	bool inner = false;
 	int i = 0;
 
-	if (flags & ICE_TC_FLWR_FIELD_ETH_TYPE_ID) {
+	rule_info->tun_type = ice_sw_type_from_tunnel(tc_fltr->tunnel_type);
+	if (tc_fltr->tunnel_type != TNL_LAST) {
+		i = ice_tc_fill_tunnel_outer(flags, tc_fltr, list);
+
+		headers = &tc_fltr->inner_headers;
+		inner = true;
+	} else if (flags & ICE_TC_FLWR_FIELD_ETH_TYPE_ID) {
 		list[i].type = ICE_ETYPE_OL;
 		list[i].h_u.ethertype.ethtype_id = headers->l2_key.n_proto;
 		list[i].m_u.ethertype.ethtype_id = headers->l2_mask.n_proto;
@@ -83,7 +232,7 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 		l2_key = &headers->l2_key;
 		l2_mask = &headers->l2_mask;
 
-		list[i].type = ICE_MAC_OFOS;
+		list[i].type = ice_proto_type_from_mac(inner);
 		if (flags & ICE_TC_FLWR_FIELD_DST_MAC) {
 			ether_addr_copy(list[i].h_u.eth_hdr.dst_addr,
 					l2_key->dst_mac);
@@ -112,7 +261,7 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 		     ICE_TC_FLWR_FIELD_SRC_IPV4)) {
 		struct ice_tc_l3_hdr *l3_key, *l3_mask;
 
-		list[i].type = ICE_IPV4_OFOS;
+		list[i].type = ice_proto_type_from_ipv4(inner);
 		l3_key = &headers->l3_key;
 		l3_mask = &headers->l3_mask;
 		if (flags & ICE_TC_FLWR_FIELD_DEST_IPV4) {
@@ -129,7 +278,7 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 		struct ice_ipv6_hdr *ipv6_hdr, *ipv6_mask;
 		struct ice_tc_l3_hdr *l3_key, *l3_mask;
 
-		list[i].type = ICE_IPV6_OFOS;
+		list[i].type = ice_proto_type_from_ipv6(inner);
 		ipv6_hdr = &list[i].h_u.ipv6_hdr;
 		ipv6_mask = &list[i].m_u.ipv6_hdr;
 		l3_key = &headers->l3_key;
@@ -155,19 +304,10 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 		     ICE_TC_FLWR_FIELD_SRC_L4_PORT)) {
 		struct ice_tc_l4_hdr *l4_key, *l4_mask;
 
+		list[i].type = ice_proto_type_from_l4_port(inner, headers->l3_key.ip_proto);
 		l4_key = &headers->l4_key;
 		l4_mask = &headers->l4_mask;
-		if (headers->l3_key.ip_proto == IPPROTO_TCP) {
-			list[i].type = ICE_TCP_IL;
-			/* detected L4 proto is TCP */
-			if (l4_proto)
-				*l4_proto = IPPROTO_TCP;
-		} else if (headers->l3_key.ip_proto == IPPROTO_UDP) {
-			list[i].type = ICE_UDP_ILOS;
-			/* detected L4 proto is UDP */
-			if (l4_proto)
-				*l4_proto = IPPROTO_UDP;
-		}
+
 		if (flags & ICE_TC_FLWR_FIELD_DEST_L4_PORT) {
 			list[i].h_u.l4_hdr.dst_port = l4_key->dst_port;
 			list[i].m_u.l4_hdr.dst_port = l4_mask->dst_port;
@@ -182,6 +322,27 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 	return i;
 }
 
+/**
+ * ice_tc_tun_get_type - get the tunnel type
+ * @tunnel_dev: ptr to tunnel device
+ *
+ * This function detects appropriate tunnel_type if specified device is
+ * tunnel device such as VXLAN/Geneve
+ */
+static int ice_tc_tun_get_type(struct net_device *tunnel_dev)
+{
+	if (netif_is_vxlan(tunnel_dev))
+		return TNL_VXLAN;
+	if (netif_is_geneve(tunnel_dev))
+		return TNL_GENEVE;
+	return TNL_LAST;
+}
+
+bool ice_is_tunnel_supported(struct net_device *dev)
+{
+	return ice_tc_tun_get_type(dev) != TNL_LAST;
+}
+
 static int
 ice_eswitch_tc_parse_action(struct ice_tc_flower_fltr *fltr,
 			    struct flow_action_entry *act)
@@ -201,10 +362,7 @@ ice_eswitch_tc_parse_action(struct ice_tc_flower_fltr *fltr,
 
 			fltr->dest_vsi = repr->src_vsi;
 			fltr->direction = ICE_ESWITCH_FLTR_INGRESS;
-		} else if (netif_is_ice(act->dev)) {
-			struct ice_netdev_priv *np = netdev_priv(act->dev);
-
-			fltr->dest_vsi = np->vsi;
+		} else if (netif_is_ice(act->dev) || ice_is_tunnel_supported(act->dev)) {
 			fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
 		} else {
 			NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported netdevice in switchdev mode");
@@ -235,11 +393,7 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	int ret = 0;
 	int i;
 
-	if (!flags || (flags & (ICE_TC_FLWR_FIELD_ENC_DEST_IPV4 |
-				ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
-				ICE_TC_FLWR_FIELD_ENC_DEST_IPV6 |
-				ICE_TC_FLWR_FIELD_ENC_SRC_IPV6 |
-				ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT))) {
+	if (!flags || (flags & ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT)) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported encap field(s)");
 		return -EOPNOTSUPP;
 	}
@@ -255,6 +409,10 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 		goto exit;
 	}
 
+	/* egress traffic is always redirect to uplink */
+	if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS)
+		fltr->dest_vsi = vsi->back->switchdev.uplink_vsi;
+
 	rule_info.sw_act.fltr_act = fltr->action.fltr_act;
 	if (fltr->action.fltr_act != ICE_DROP_PACKET)
 		rule_info.sw_act.vsi_handle = fltr->dest_vsi->idx;
@@ -308,19 +466,26 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
  * @match: Pointer to flow match structure
  * @fltr: Pointer to filter structure
  * @headers: inner or outer header fields
+ * @is_encap: set true for tunnel IPv4 address
  */
 static int
 ice_tc_set_ipv4(struct flow_match_ipv4_addrs *match,
 		struct ice_tc_flower_fltr *fltr,
-		struct ice_tc_flower_lyr_2_4_hdrs *headers)
+		struct ice_tc_flower_lyr_2_4_hdrs *headers, bool is_encap)
 {
 	if (match->key->dst) {
-		fltr->flags |= ICE_TC_FLWR_FIELD_DEST_IPV4;
+		if (is_encap)
+			fltr->flags |= ICE_TC_FLWR_FIELD_ENC_DEST_IPV4;
+		else
+			fltr->flags |= ICE_TC_FLWR_FIELD_DEST_IPV4;
 		headers->l3_key.dst_ipv4 = match->key->dst;
 		headers->l3_mask.dst_ipv4 = match->mask->dst;
 	}
 	if (match->key->src) {
-		fltr->flags |= ICE_TC_FLWR_FIELD_SRC_IPV4;
+		if (is_encap)
+			fltr->flags |= ICE_TC_FLWR_FIELD_ENC_SRC_IPV4;
+		else
+			fltr->flags |= ICE_TC_FLWR_FIELD_SRC_IPV4;
 		headers->l3_key.src_ipv4 = match->key->src;
 		headers->l3_mask.src_ipv4 = match->mask->src;
 	}
@@ -332,11 +497,12 @@ ice_tc_set_ipv4(struct flow_match_ipv4_addrs *match,
  * @match: Pointer to flow match structure
  * @fltr: Pointer to filter structure
  * @headers: inner or outer header fields
+ * @is_encap: set true for tunnel IPv6 address
  */
 static int
 ice_tc_set_ipv6(struct flow_match_ipv6_addrs *match,
 		struct ice_tc_flower_fltr *fltr,
-		struct ice_tc_flower_lyr_2_4_hdrs *headers)
+		struct ice_tc_flower_lyr_2_4_hdrs *headers, bool is_encap)
 {
 	struct ice_tc_l3_hdr *l3_key, *l3_mask;
 
@@ -354,21 +520,31 @@ ice_tc_set_ipv6(struct flow_match_ipv6_addrs *match,
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Bad src/dest IPv6, addr is any");
 		return -EINVAL;
 	}
-	if (!ipv6_addr_any(&match->mask->dst))
-		fltr->flags |= ICE_TC_FLWR_FIELD_DEST_IPV6;
-	if (!ipv6_addr_any(&match->mask->src))
-		fltr->flags |= ICE_TC_FLWR_FIELD_SRC_IPV6;
+	if (!ipv6_addr_any(&match->mask->dst)) {
+		if (is_encap)
+			fltr->flags |= ICE_TC_FLWR_FIELD_ENC_DEST_IPV6;
+		else
+			fltr->flags |= ICE_TC_FLWR_FIELD_DEST_IPV6;
+	}
+	if (!ipv6_addr_any(&match->mask->src)) {
+		if (is_encap)
+			fltr->flags |= ICE_TC_FLWR_FIELD_ENC_SRC_IPV6;
+		else
+			fltr->flags |= ICE_TC_FLWR_FIELD_SRC_IPV6;
+	}
 
 	l3_key = &headers->l3_key;
 	l3_mask = &headers->l3_mask;
 
-	if (fltr->flags & ICE_TC_FLWR_FIELD_SRC_IPV6) {
+	if (fltr->flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV6 |
+			   ICE_TC_FLWR_FIELD_SRC_IPV6)) {
 		memcpy(&l3_key->src_ipv6_addr, &match->key->src.s6_addr,
 		       sizeof(match->key->src.s6_addr));
 		memcpy(&l3_mask->src_ipv6_addr, &match->mask->src.s6_addr,
 		       sizeof(match->mask->src.s6_addr));
 	}
-	if (fltr->flags & ICE_TC_FLWR_FIELD_DEST_IPV6) {
+	if (fltr->flags & (ICE_TC_FLWR_FIELD_ENC_DEST_IPV6 |
+			   ICE_TC_FLWR_FIELD_DEST_IPV6)) {
 		memcpy(&l3_key->dst_ipv6_addr, &match->key->dst.s6_addr,
 		       sizeof(match->key->dst.s6_addr));
 		memcpy(&l3_mask->dst_ipv6_addr, &match->mask->dst.s6_addr,
@@ -383,18 +559,27 @@ ice_tc_set_ipv6(struct flow_match_ipv6_addrs *match,
  * @match: Flow match structure
  * @fltr: Pointer to filter structure
  * @headers: inner or outer header fields
+ * @is_encap: set true for tunnel port
  */
 static int
 ice_tc_set_port(struct flow_match_ports match,
 		struct ice_tc_flower_fltr *fltr,
-		struct ice_tc_flower_lyr_2_4_hdrs *headers)
+		struct ice_tc_flower_lyr_2_4_hdrs *headers, bool is_encap)
 {
 	if (match.key->dst) {
+		if (is_encap)
+			fltr->flags |= ICE_TC_FLWR_FIELD_ENC_DEST_L4_PORT;
+		else
+			fltr->flags |= ICE_TC_FLWR_FIELD_DEST_L4_PORT;
 		fltr->flags |= ICE_TC_FLWR_FIELD_DEST_L4_PORT;
 		headers->l4_key.dst_port = match.key->dst;
 		headers->l4_mask.dst_port = match.mask->dst;
 	}
 	if (match.key->src) {
+		if (is_encap)
+			fltr->flags |= ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT;
+		else
+			fltr->flags |= ICE_TC_FLWR_FIELD_SRC_L4_PORT;
 		fltr->flags |= ICE_TC_FLWR_FIELD_SRC_L4_PORT;
 		headers->l4_key.src_port = match.key->src;
 		headers->l4_mask.src_port = match.mask->src;
@@ -402,6 +587,85 @@ ice_tc_set_port(struct flow_match_ports match,
 	return 0;
 }
 
+static struct net_device *
+ice_get_tunnel_device(struct net_device *dev, struct flow_rule *rule)
+{
+	struct flow_action_entry *act;
+	int i;
+
+	if (ice_is_tunnel_supported(dev))
+		return dev;
+
+	flow_action_for_each(i, act, &rule->action) {
+		if (act->id == FLOW_ACTION_REDIRECT &&
+		    ice_is_tunnel_supported(act->dev))
+			return act->dev;
+	}
+
+	return NULL;
+}
+
+static int
+ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
+		      struct ice_tc_flower_fltr *fltr)
+{
+	struct ice_tc_flower_lyr_2_4_hdrs *headers = &fltr->outer_headers;
+	struct flow_match_control enc_control;
+
+	fltr->tunnel_type = ice_tc_tun_get_type(dev);
+	headers->l3_key.ip_proto = IPPROTO_UDP;
+
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_KEYID)) {
+		struct flow_match_enc_keyid enc_keyid;
+
+		flow_rule_match_enc_keyid(rule, &enc_keyid);
+
+		if (!enc_keyid.mask->keyid ||
+		    enc_keyid.mask->keyid != cpu_to_be32(ICE_TC_FLOWER_MASK_32))
+			return -EINVAL;
+
+		fltr->flags |= ICE_TC_FLWR_FIELD_TENANT_ID;
+		fltr->tenant_id = enc_keyid.key->keyid;
+	}
+
+	flow_rule_match_enc_control(rule, &enc_control);
+
+	if (enc_control.key->addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
+		struct flow_match_ipv4_addrs match;
+
+		flow_rule_match_enc_ipv4_addrs(rule, &match);
+		if (ice_tc_set_ipv4(&match, fltr, headers, true))
+			return -EINVAL;
+	} else if (enc_control.key->addr_type ==
+					FLOW_DISSECTOR_KEY_IPV6_ADDRS) {
+		struct flow_match_ipv6_addrs match;
+
+		flow_rule_match_enc_ipv6_addrs(rule, &match);
+		if (ice_tc_set_ipv6(&match, fltr, headers, true))
+			return -EINVAL;
+	}
+
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_IP)) {
+		struct flow_match_ip match;
+
+		flow_rule_match_enc_ip(rule, &match);
+		headers->l3_key.tos = match.key->tos;
+		headers->l3_key.ttl = match.key->ttl;
+		headers->l3_mask.tos = match.mask->tos;
+		headers->l3_mask.ttl = match.mask->ttl;
+	}
+
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_PORTS)) {
+		struct flow_match_ports match;
+
+		flow_rule_match_enc_ports(rule, &match);
+		if (ice_tc_set_port(match, fltr, headers, true))
+			return -EINVAL;
+	}
+
+	return 0;
+}
+
 /**
  * ice_parse_cls_flower - Parse TC flower filters provided by kernel
  * @vsi: Pointer to the VSI
@@ -429,12 +693,44 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 	      BIT(FLOW_DISSECTOR_KEY_IPV4_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_IPV6_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_CONTROL) |
+	      BIT(FLOW_DISSECTOR_KEY_ENC_KEYID) |
+	      BIT(FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS) |
+	      BIT(FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) |
+	      BIT(FLOW_DISSECTOR_KEY_ENC_PORTS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IP) |
 	      BIT(FLOW_DISSECTOR_KEY_PORTS))) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported key used");
 		return -EOPNOTSUPP;
 	}
 
+	if ((flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS) ||
+	     flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) ||
+	     flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_KEYID) ||
+	     flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_PORTS))) {
+		int err;
+
+		filter_dev = ice_get_tunnel_device(filter_dev, rule);
+		if (!filter_dev) {
+			NL_SET_ERR_MSG_MOD(fltr->extack,
+					   "Tunnel device not found");
+			return -EOPNOTSUPP;
+		}
+
+		err = ice_parse_tunnel_attr(filter_dev, rule, fltr);
+		if (err) {
+			NL_SET_ERR_MSG_MOD(fltr->extack,
+					   "Failed to parse TC flower tunnel attributes");
+			return err;
+		}
+
+		/* header pointers should point to the inner headers, outer
+		 * header were already set by ice_parse_tunnel_attr
+		 */
+		headers = &fltr->inner_headers;
+	} else {
+		fltr->tunnel_type = TNL_LAST;
+	}
+
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_BASIC)) {
 		struct flow_match_basic match;
 
@@ -521,7 +817,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		struct flow_match_ipv4_addrs match;
 
 		flow_rule_match_ipv4_addrs(rule, &match);
-		if (ice_tc_set_ipv4(&match, fltr, headers))
+		if (ice_tc_set_ipv4(&match, fltr, headers, false))
 			return -EINVAL;
 	}
 
@@ -529,7 +825,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		struct flow_match_ipv6_addrs match;
 
 		flow_rule_match_ipv6_addrs(rule, &match);
-		if (ice_tc_set_ipv6(&match, fltr, headers))
+		if (ice_tc_set_ipv6(&match, fltr, headers, false))
 			return -EINVAL;
 	}
 
@@ -537,7 +833,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		struct flow_match_ports match;
 
 		flow_rule_match_ports(rule, &match);
-		if (ice_tc_set_port(match, fltr, headers))
+		if (ice_tc_set_port(match, fltr, headers, false))
 			return -EINVAL;
 		switch (headers->l3_key.ip_proto) {
 		case IPPROTO_TCP:
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index 332c70342f1f..28c33b850ffb 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -23,6 +23,8 @@
 #define ICE_TC_FLWR_FIELD_ENC_DST_MAC		BIT(16)
 #define ICE_TC_FLWR_FIELD_ETH_TYPE_ID		BIT(17)
 
+#define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
+
 struct ice_indr_block_priv {
 	struct net_device *netdev;
 	struct ice_netdev_priv *np;
@@ -118,6 +120,7 @@ struct ice_tc_flower_fltr {
 	struct ice_vsi *src_vsi;
 	__be32 tenant_id;
 	u32 flags;
+	u8 tunnel_type;
 	struct ice_tc_flower_action	action;
 
 	/* cache ptr which is used wherever needed to communicate netlink
@@ -132,5 +135,6 @@ ice_add_cls_flower(struct net_device *netdev, struct ice_vsi *vsi,
 int
 ice_del_cls_flower(struct ice_vsi *vsi, struct flow_cls_offload *cls_flower);
 void ice_replay_tc_fltrs(struct ice_pf *pf);
+bool ice_is_tunnel_supported(struct net_device *dev);
 
 #endif /* _ICE_TC_LIB_H_ */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

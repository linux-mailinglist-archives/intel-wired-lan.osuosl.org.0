Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 764B442ABF7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 20:33:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E277160BE8;
	Tue, 12 Oct 2021 18:33:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 52frEBXXERDN; Tue, 12 Oct 2021 18:33:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F18560724;
	Tue, 12 Oct 2021 18:33:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C72121BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B427E4028C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B55RB0D4tlxh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 18:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0880040421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="250640577"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="250640577"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 11:33:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="491100334"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by orsmga008.jf.intel.com with ESMTP; 12 Oct 2021 11:33:02 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Oct 2021 11:31:06 -0700
Message-Id: <20211012183106.2315477-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
References: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v2 4/4] ice: support for GRE in
 eswitch
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

Mostly reuse code from geneve and vxlan in TC parsing code. Add new GRE
header to match on correct fields. Create new dummy packets with GRE
fields.

Instead of checking if any encap values are presented in TC flower,
check if device is tunnel type or redirect is to tunnel device. This
will allow adding all combination of rules. For example filters only
with inner fields.

Return error in case device isn't tunnel but encap values are presented.

gre example:
- create tunnel device
ip l add $NVGRE_DEV type gretap remote $NVGRE_REM_IP local $VF1_IP \
dev $PF
- add tc filter (in switchdev mode)
tc filter add dev $NVGRE_DEV protocol ip parent ffff: flower dst_ip \
$NVGRE1_IP action mirred egress redirect dev $VF1_PR

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   4 +
 .../net/ethernet/intel/ice/ice_flex_type.h    |   2 +
 .../ethernet/intel/ice/ice_protocol_type.h    |  10 ++
 drivers/net/ethernet/intel/ice/ice_switch.c   | 111 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  28 +++--
 5 files changed, 145 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 171df32cef33..edd9a2167264 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1656,6 +1656,10 @@ ice_get_sw_prof_type(struct ice_hw *hw, struct ice_fv *fv)
 		if (fv->ew[i].prot_id == (u8)ICE_PROT_UDP_OF &&
 		    fv->ew[i].off == ICE_VNI_OFFSET)
 			return ICE_PROF_TUN_UDP;
+
+		/* GRE tunnel will have GRE protocol */
+		if (fv->ew[i].prot_id == (u8)ICE_PROT_GRE_OF)
+			return ICE_PROF_TUN_GRE;
 	}
 
 	return ICE_PROF_NON_TUN;
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index fce1bd929467..fc087e0b5292 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -415,6 +415,7 @@ struct ice_pkg_enum {
 enum ice_tunnel_type {
 	TNL_VXLAN = 0,
 	TNL_GENEVE,
+	TNL_GRETAP,
 	__TNL_TYPE_CNT,
 	TNL_LAST = 0xFF,
 	TNL_ALL = 0xFF,
@@ -657,6 +658,7 @@ struct ice_chs_chg {
 enum ice_prof_type {
 	ICE_PROF_NON_TUN = 0x1,
 	ICE_PROF_TUN_UDP = 0x2,
+	ICE_PROF_TUN_GRE = 0x4,
 	ICE_PROF_TUN_ALL = 0x6,
 	ICE_PROF_ALL = 0xFF,
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index e4a8024de3f7..dc1b0e9e6df5 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -39,6 +39,7 @@ enum ice_protocol_type {
 	ICE_UDP_ILOS,
 	ICE_VXLAN,
 	ICE_GENEVE,
+	ICE_NVGRE,
 	ICE_VXLAN_GPE,
 	ICE_SCTP_IL,
 	ICE_PROTOCOL_LAST
@@ -48,6 +49,7 @@ enum ice_sw_tunnel_type {
 	ICE_NON_TUN = 0,
 	ICE_SW_TUN_VXLAN,
 	ICE_SW_TUN_GENEVE,
+	ICE_SW_TUN_NVGRE,
 	ICE_ALL_TUNNELS /* All tunnel types including NVGRE */
 };
 
@@ -97,6 +99,7 @@ enum ice_prot_id {
 #define ICE_IPV6_IL_HW		41
 #define ICE_TCP_IL_HW		49
 #define ICE_UDP_ILOS_HW		53
+#define ICE_GRE_OF_HW		64
 
 #define ICE_UDP_OF_HW	52 /* UDP Tunnels */
 #define ICE_META_DATA_ID_HW 255 /* this is used for tunnel type */
@@ -176,6 +179,12 @@ struct ice_udp_tnl_hdr {
 	__be32 vni;     /* only use lower 24-bits */
 };
 
+struct ice_nvgre_hdr {
+	__be16 flags;
+	__be16 protocol;
+	__be32 tni_flow;
+};
+
 union ice_prot_hdr {
 	struct ice_ether_hdr eth_hdr;
 	struct ice_ethtype_hdr ethertype;
@@ -185,6 +194,7 @@ union ice_prot_hdr {
 	struct ice_l4_hdr l4_hdr;
 	struct ice_sctp_hdr sctp_hdr;
 	struct ice_udp_tnl_hdr tnl_hdr;
+	struct ice_nvgre_hdr nvgre_hdr;
 };
 
 /* This is mapping table entry that maps every word within a given protocol
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index b0df70688189..57b47d398773 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -35,6 +35,93 @@ struct ice_dummy_pkt_offsets {
 	u16 offset; /* ICE_PROTOCOL_LAST indicates end of list */
 };
 
+static const struct ice_dummy_pkt_offsets dummy_gre_tcp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_NVGRE,		34 },
+	{ ICE_MAC_IL,		42 },
+	{ ICE_IPV4_IL,		56 },
+	{ ICE_TCP_IL,		76 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_gre_tcp_packet[] = {
+	0x00, 0x00, 0x00, 0x00,	/* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 12 */
+
+	0x45, 0x00, 0x00, 0x3E,	/* ICE_IPV4_OFOS 14 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x2F, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x80, 0x00, 0x65, 0x58,	/* ICE_NVGRE 34 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00,	/* ICE_MAC_IL 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x14,	/* ICE_IPV4_IL 56 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x06, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00,	/* ICE_TCP_IL 76 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x02, 0x20, 0x00,
+	0x00, 0x00, 0x00, 0x00
+};
+
+static const struct ice_dummy_pkt_offsets dummy_gre_udp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_NVGRE,		34 },
+	{ ICE_MAC_IL,		42 },
+	{ ICE_IPV4_IL,		56 },
+	{ ICE_UDP_ILOS,		76 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_gre_udp_packet[] = {
+	0x00, 0x00, 0x00, 0x00,	/* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 12 */
+
+	0x45, 0x00, 0x00, 0x3E,	/* ICE_IPV4_OFOS 14 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x2F, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x80, 0x00, 0x65, 0x58,	/* ICE_NVGRE 34 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00,	/* ICE_MAC_IL 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x14,	/* ICE_IPV4_IL 56 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00,	/* ICE_UDP_ILOS 76 */
+	0x00, 0x08, 0x00, 0x00,
+};
+
 static const struct ice_dummy_pkt_offsets dummy_udp_tun_tcp_packet_offsets[] = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
@@ -3564,6 +3651,7 @@ static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
 	{ ICE_UDP_ILOS,		{ 0, 2 } },
 	{ ICE_VXLAN,		{ 8, 10, 12, 14 } },
 	{ ICE_GENEVE,		{ 8, 10, 12, 14 } },
+	{ ICE_NVGRE,            { 0, 2, 4, 6 } },
 };
 
 static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
@@ -3580,6 +3668,7 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
 	{ ICE_UDP_ILOS,		ICE_UDP_ILOS_HW },
 	{ ICE_VXLAN,		ICE_UDP_OF_HW },
 	{ ICE_GENEVE,		ICE_UDP_OF_HW },
+	{ ICE_NVGRE,            ICE_GRE_OF_HW },
 };
 
 /**
@@ -4274,6 +4363,7 @@ static bool ice_tun_type_match_word(enum ice_sw_tunnel_type tun_type, u16 *mask)
 	switch (tun_type) {
 	case ICE_SW_TUN_GENEVE:
 	case ICE_SW_TUN_VXLAN:
+	case ICE_SW_TUN_NVGRE:
 		*mask = ICE_TUN_FLAG_MASK;
 		return true;
 
@@ -4336,6 +4426,9 @@ ice_get_compat_fv_bitmap(struct ice_hw *hw, struct ice_adv_rule_info *rinfo,
 	case ICE_SW_TUN_VXLAN:
 		prof_type = ICE_PROF_TUN_UDP;
 		break;
+	case ICE_SW_TUN_NVGRE:
+		prof_type = ICE_PROF_TUN_GRE;
+		break;
 	default:
 		prof_type = ICE_PROF_ALL;
 		break;
@@ -4529,6 +4622,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
  * @lkups: lookup elements or match criteria for the advanced recipe, one
  *	   structure per protocol header
  * @lkups_cnt: number of protocols
+ * @tun_type: tunnel type
  * @pkt: dummy packet to fill according to filter match criteria
  * @pkt_len: packet length of dummy packet
  * @offsets: pointer to receive the pointer to the offsets for the packet
@@ -4559,6 +4653,20 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			ipv6 = true;
 	}
 
+	if (tun_type == ICE_SW_TUN_NVGRE) {
+		if (tcp) {
+			*pkt = dummy_gre_tcp_packet;
+			*pkt_len = sizeof(dummy_gre_tcp_packet);
+			*offsets = dummy_gre_tcp_packet_offsets;
+			return;
+		}
+
+		*pkt = dummy_gre_udp_packet;
+		*pkt_len = sizeof(dummy_gre_udp_packet);
+		*offsets = dummy_gre_udp_packet_offsets;
+		return;
+	}
+
 	if (tun_type == ICE_SW_TUN_VXLAN ||
 	    tun_type == ICE_SW_TUN_GENEVE) {
 		if (tcp) {
@@ -4694,6 +4802,9 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		case ICE_SCTP_IL:
 			len = sizeof(struct ice_sctp_hdr);
 			break;
+		case ICE_NVGRE:
+			len = sizeof(struct ice_nvgre_hdr);
+			break;
 		case ICE_VXLAN:
 		case ICE_GENEVE:
 			len = sizeof(struct ice_udp_tnl_hdr);
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 30a276d789f3..8397207cb955 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -105,6 +105,8 @@ ice_proto_type_from_tunnel(enum ice_tunnel_type type)
 		return ICE_VXLAN;
 	case TNL_GENEVE:
 		return ICE_GENEVE;
+	case TNL_GRETAP:
+		return ICE_NVGRE;
 	default:
 		return 0;
 	}
@@ -118,6 +120,8 @@ ice_sw_type_from_tunnel(enum ice_tunnel_type type)
 		return ICE_SW_TUN_VXLAN;
 	case TNL_GENEVE:
 		return ICE_SW_TUN_GENEVE;
+	case TNL_GRETAP:
+		return ICE_SW_TUN_NVGRE;
 	default:
 		return ICE_NON_TUN;
 	}
@@ -335,6 +339,9 @@ static int ice_tc_tun_get_type(struct net_device *tunnel_dev)
 		return TNL_VXLAN;
 	if (netif_is_geneve(tunnel_dev))
 		return TNL_GENEVE;
+	if (netif_is_gretap(tunnel_dev) ||
+	    netif_is_ip6gretap(tunnel_dev))
+		return TNL_GRETAP;
 	return TNL_LAST;
 }
 
@@ -682,6 +689,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 	struct flow_rule *rule = flow_cls_offload_flow_rule(f);
 	u16 n_proto_mask = 0, n_proto_key = 0, addr_type = 0;
 	struct flow_dissector *dissector;
+	struct net_device *tunnel_dev;
 
 	dissector = rule->match.dissector;
 
@@ -703,18 +711,11 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		return -EOPNOTSUPP;
 	}
 
-	if ((flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS) ||
-	     flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) ||
-	     flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_KEYID) ||
-	     flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_PORTS))) {
+	tunnel_dev = ice_get_tunnel_device(filter_dev, rule);
+	if (tunnel_dev) {
 		int err;
 
-		filter_dev = ice_get_tunnel_device(filter_dev, rule);
-		if (!filter_dev) {
-			NL_SET_ERR_MSG_MOD(fltr->extack,
-					   "Tunnel device not found");
-			return -EOPNOTSUPP;
-		}
+		filter_dev = tunnel_dev;
 
 		err = ice_parse_tunnel_attr(filter_dev, rule, fltr);
 		if (err) {
@@ -727,6 +728,13 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		 * header were already set by ice_parse_tunnel_attr
 		 */
 		headers = &fltr->inner_headers;
+	} else if (dissector->used_keys &
+		  (BIT(FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS) |
+		   BIT(FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) |
+		   BIT(FLOW_DISSECTOR_KEY_ENC_KEYID) |
+		   BIT(FLOW_DISSECTOR_KEY_ENC_PORTS))) {
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Tunnel key used, but device isn't a tunnel");
+		return -EOPNOTSUPP;
 	} else {
 		fltr->tunnel_type = TNL_LAST;
 	}
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

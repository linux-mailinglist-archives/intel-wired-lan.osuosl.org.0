Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61725A9644
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 14:05:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3752F41132;
	Thu,  1 Sep 2022 12:05:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3752F41132
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662033912;
	bh=YCNz4DHYWuYE4ZNXYA0Zjn2tLeGbc3spZTRwjfUIAEY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wqCeI03kkjMGtwZXLqLD5kXeDql0XF/MMtpznWQDqM68IpItnO77iH1A/BjH8FSa1
	 pWp8Cg88SJ+ZcdKYsjVhEYi0q4YHsCpKh8CwxL71L79hX2X6eUr2PgUukAE1bnyeMa
	 tXo4LrMgxkIrhOx4DuvCejJzVyhvIOxUxZkh6PfL2c8kMo4MXp7+DvP/YmSOu6Pj1e
	 NBixEWt1kcKDzlYvNTt3tckbBAkQNvOiJAhTTf7iTA2age/sDsTXZ5NSfNnsqMFerh
	 zUd3lMj3wvaY1lYeLt5eun2kb+GOWWONkBxoKp44eKKOxaT+2i1cMOsCeWBL6gh5bM
	 9pV1oI6A3ArMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PkzVM7nKB5jk; Thu,  1 Sep 2022 12:05:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E423740499;
	Thu,  1 Sep 2022 12:05:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E423740499
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B98B01BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 92D2341A54
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92D2341A54
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e-hbAajFPm2F for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 12:04:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38C1441A59
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 38C1441A59
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="276096773"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="276096773"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 05:04:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="589470736"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 01 Sep 2022 05:04:42 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 281C4XRl024211; Thu, 1 Sep 2022 13:04:40 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Thu,  1 Sep 2022 14:01:31 +0200
Message-Id: <20220901120131.1373568-6-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220901120131.1373568-1-wojciech.drewek@intel.com>
References: <20220901120131.1373568-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662033888; x=1693569888;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=04TBTeUQl3HA9ZnyqH29hoWhzD+0UcyUZscojz1IuE0=;
 b=UDEMv+8zh1DQExTycP0Gwfq6h+nPG0pbIJkB9ruiP+v03UZYtSb00lTp
 Ogof3DWHfA5NuLXJ9Fl1bezql7bN1zRFWFMdv7Iqybvjt8D8EJUp2/2bt
 Kgww+iAMZq6kWdVPpemf0fjbQawuewJY2BkMS3KkMnrY8Ki11DGiXlHVi
 u4zRR/w9XPLf09/HQPXMYtVHewLFVVz0QT/vNvFEW6HEYq+B6iFwE/Fuy
 lKEaQDy0UU5UUq95EP9uSApEswEZsnWRRDZjscjD6JgMvEWoqpVyH70m7
 0rbDVO8VSNo09WKAC2a41/QamzhWHptXF8c5thQkotLC3K9HyvZU52IA0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UDEMv+8z
Subject: [Intel-wired-lan] [RFC PATCH net-next v3 5/5] ice: Add L2TPv3
 hardware offload support
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, komachi.yoshiki@gmail.com,
 jchapman@katalix.com, edumazet@google.com, boris.sukholitko@broadcom.com,
 louis.peens@corigine.com, gnault@redhat.com, intel-wired-lan@lists.osuosl.org,
 vladbu@nvidia.com, kuba@kernel.org, pabeni@redhat.com, pablo@netfilter.org,
 baowen.zheng@corigine.com, maksym.glubokiy@plvision.eu, jiri@resnulli.us,
 paulb@nvidia.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Szycik <marcin.szycik@linux.intel.com>

Add support for offloading packets based on L2TPv3 session id in switchdev
mode.

Example filter:
tc filter add dev $PF1 ingress prio 1 protocol ip flower ip_proto l2tp \
    l2tpv3_sid 1234 skip_sw action mirred egress redirect dev $VF1_PR

Changes in iproute2 are required to be able to specify l2tpv3_sid.

ICE COMMS DDP package is required to create a filter as it contains L2TPv3
profiles.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 .../ethernet/intel/ice/ice_protocol_type.h    |  8 +++
 drivers/net/ethernet/intel/ice/ice_switch.c   | 70 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 27 ++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |  6 ++
 4 files changed, 109 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index 560efc7654c7..02a4e1cf624e 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -44,6 +44,7 @@ enum ice_protocol_type {
 	ICE_GTP,
 	ICE_GTP_NO_PAY,
 	ICE_PPPOE,
+	ICE_L2TPV3,
 	ICE_VLAN_EX,
 	ICE_VLAN_IN,
 	ICE_VXLAN_GPE,
@@ -111,6 +112,7 @@ enum ice_prot_id {
 #define ICE_UDP_ILOS_HW		53
 #define ICE_GRE_OF_HW		64
 #define ICE_PPPOE_HW		103
+#define ICE_L2TPV3_HW		104
 
 #define ICE_UDP_OF_HW	52 /* UDP Tunnels */
 #define ICE_META_DATA_ID_HW 255 /* this is used for tunnel and VLAN type */
@@ -217,6 +219,11 @@ struct ice_pppoe_hdr {
 	__be16 ppp_prot_id; /* control and data only */
 };
 
+struct ice_l2tpv3_sess_hdr {
+	__be32 session_id;
+	__be64 cookie;
+};
+
 struct ice_nvgre_hdr {
 	__be16 flags;
 	__be16 protocol;
@@ -235,6 +242,7 @@ union ice_prot_hdr {
 	struct ice_nvgre_hdr nvgre_hdr;
 	struct ice_udp_gtp_hdr gtp_hdr;
 	struct ice_pppoe_hdr pppoe_hdr;
+	struct ice_l2tpv3_sess_hdr l2tpv3_sess_hdr;
 };
 
 /* This is mapping table entry that maps every word within a given protocol
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 697feb89188c..075703f513ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -42,6 +42,7 @@ enum {
 	ICE_PKT_GTP_NOPAY	= BIT(8),
 	ICE_PKT_KMALLOC		= BIT(9),
 	ICE_PKT_PPPOE		= BIT(10),
+	ICE_PKT_L2TPV3		= BIT(11),
 };
 
 struct ice_dummy_pkt_offsets {
@@ -1258,6 +1259,65 @@ ICE_DECLARE_PKT_TEMPLATE(pppoe_ipv6_udp) = {
 	0x00, 0x00,		/* 2 bytes for 4 bytes alignment */
 };
 
+ICE_DECLARE_PKT_OFFSETS(ipv4_l2tpv3) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_L2TPV3,		34 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(ipv4_l2tpv3) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 12 */
+
+	0x45, 0x00, 0x00, 0x20, /* ICE_IPV4_IL 14 */
+	0x00, 0x00, 0x40, 0x00,
+	0x40, 0x73, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_L2TPV3 34 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00,		/* 2 bytes for 4 bytes alignment */
+};
+
+ICE_DECLARE_PKT_OFFSETS(ipv6_l2tpv3) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_L2TPV3,		54 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(ipv6_l2tpv3) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x86, 0xDD,		/* ICE_ETYPE_OL 12 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_IL 14 */
+	0x00, 0x0c, 0x73, 0x40,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_L2TPV3 54 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00,		/* 2 bytes for 4 bytes alignment */
+};
+
 static const struct ice_dummy_pkt_profile ice_dummy_pkt_profiles[] = {
 	ICE_PKT_PROFILE(ipv6_gtp, ICE_PKT_TUN_GTPU | ICE_PKT_OUTER_IPV6 |
 				  ICE_PKT_GTP_NOPAY),
@@ -1297,6 +1357,8 @@ static const struct ice_dummy_pkt_profile ice_dummy_pkt_profiles[] = {
 	ICE_PKT_PROFILE(udp_tun_ipv6_tcp, ICE_PKT_TUN_UDP |
 					  ICE_PKT_INNER_IPV6 |
 					  ICE_PKT_INNER_TCP),
+	ICE_PKT_PROFILE(ipv6_l2tpv3, ICE_PKT_L2TPV3 | ICE_PKT_OUTER_IPV6),
+	ICE_PKT_PROFILE(ipv4_l2tpv3, ICE_PKT_L2TPV3),
 	ICE_PKT_PROFILE(udp_tun_tcp, ICE_PKT_TUN_UDP | ICE_PKT_INNER_TCP),
 	ICE_PKT_PROFILE(udp_tun_ipv6_udp, ICE_PKT_TUN_UDP |
 					  ICE_PKT_INNER_IPV6),
@@ -4492,6 +4554,7 @@ static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
 	{ ICE_GTP,		{ 8, 10, 12, 14, 16, 18, 20, 22 } },
 	{ ICE_GTP_NO_PAY,	{ 8, 10, 12, 14 } },
 	{ ICE_PPPOE,		{ 0, 2, 4, 6 } },
+	{ ICE_L2TPV3,		{ 0, 2, 4, 6, 8, 10 } },
 	{ ICE_VLAN_EX,          { 2, 0 } },
 	{ ICE_VLAN_IN,          { 2, 0 } },
 };
@@ -4515,6 +4578,7 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
 	{ ICE_GTP,		ICE_UDP_OF_HW },
 	{ ICE_GTP_NO_PAY,	ICE_UDP_ILOS_HW },
 	{ ICE_PPPOE,		ICE_PPPOE_HW },
+	{ ICE_L2TPV3,		ICE_L2TPV3_HW },
 	{ ICE_VLAN_EX,          ICE_VLAN_OF_HW },
 	{ ICE_VLAN_IN,          ICE_VLAN_OL_HW },
 };
@@ -5598,7 +5662,8 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			if (lkups[i].h_u.pppoe_hdr.ppp_prot_id ==
 			    htons(PPP_IPV6))
 				match |= ICE_PKT_OUTER_IPV6;
-		}
+		} else if (lkups[i].type == ICE_L2TPV3)
+			match |= ICE_PKT_L2TPV3;
 	}
 
 	while (ret->match && (match & ret->match) != ret->match)
@@ -5699,6 +5764,9 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		case ICE_PPPOE:
 			len = sizeof(struct ice_pppoe_hdr);
 			break;
+		case ICE_L2TPV3:
+			len = sizeof(struct ice_l2tpv3_sess_hdr);
+			break;
 		default:
 			return -EINVAL;
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 42df686e0215..170e04eaad18 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -71,6 +71,10 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	if (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))
 		lkups_cnt++;
 
+	/* are L2TPv3 options specified? */
+	if (flags & ICE_TC_FLWR_FIELD_L2TPV3_SESSID)
+		lkups_cnt++;
+
 	/* is L4 (TCP/UDP/any other L4 protocol fields) specified? */
 	if (flags & (ICE_TC_FLWR_FIELD_DEST_L4_PORT |
 		     ICE_TC_FLWR_FIELD_SRC_L4_PORT))
@@ -515,6 +519,17 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 		i++;
 	}
 
+	if (flags & ICE_TC_FLWR_FIELD_L2TPV3_SESSID) {
+		list[i].type = ICE_L2TPV3;
+
+		list[i].h_u.l2tpv3_sess_hdr.session_id =
+			headers->l2tpv3_hdr.session_id;
+		list[i].m_u.l2tpv3_sess_hdr.session_id =
+			cpu_to_be32(0xFFFFFFFF);
+
+		i++;
+	}
+
 	/* copy L4 (src, dest) port */
 	if (flags & (ICE_TC_FLWR_FIELD_DEST_L4_PORT |
 		     ICE_TC_FLWR_FIELD_SRC_L4_PORT)) {
@@ -1168,7 +1183,8 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 	      BIT(FLOW_DISSECTOR_KEY_IP) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IP) |
 	      BIT(FLOW_DISSECTOR_KEY_PORTS) |
-	      BIT(FLOW_DISSECTOR_KEY_PPPOE))) {
+	      BIT(FLOW_DISSECTOR_KEY_PPPOE) |
+	      BIT(FLOW_DISSECTOR_KEY_L2TPV3))) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported key used");
 		return -EOPNOTSUPP;
 	}
@@ -1351,6 +1367,15 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		ice_tc_set_tos_ttl(&match, fltr, headers, false);
 	}
 
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_L2TPV3)) {
+		struct flow_match_l2tpv3 match;
+
+		flow_rule_match_l2tpv3(rule, &match);
+
+		fltr->flags |= ICE_TC_FLWR_FIELD_L2TPV3_SESSID;
+		headers->l2tpv3_hdr.session_id = match.key->session_id;
+	}
+
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_PORTS)) {
 		struct flow_match_ports match;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index f397ed02606d..ebef34385a4f 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -30,6 +30,7 @@
 #define ICE_TC_FLWR_FIELD_IP_TTL		BIT(23)
 #define ICE_TC_FLWR_FIELD_ENC_IP_TOS		BIT(24)
 #define ICE_TC_FLWR_FIELD_ENC_IP_TTL		BIT(25)
+#define ICE_TC_FLWR_FIELD_L2TPV3_SESSID		BIT(26)
 
 #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
 
@@ -86,6 +87,10 @@ struct ice_tc_l3_hdr {
 	u8 ttl;
 };
 
+struct ice_tc_l2tpv3_hdr {
+	__be32 session_id;
+};
+
 struct ice_tc_l4_hdr {
 	__be16 dst_port;
 	__be16 src_port;
@@ -98,6 +103,7 @@ struct ice_tc_flower_lyr_2_4_hdrs {
 	struct ice_tc_vlan_hdr vlan_hdr;
 	struct ice_tc_vlan_hdr cvlan_hdr;
 	struct ice_tc_pppoe_hdr pppoe_hdr;
+	struct ice_tc_l2tpv3_hdr l2tpv3_hdr;
 	/* L3 (IPv4[6]) layer fields with their mask */
 	struct ice_tc_l3_hdr l3_key;
 	struct ice_tc_l3_hdr l3_mask;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

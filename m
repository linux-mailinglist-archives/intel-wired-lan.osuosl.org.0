Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC2D4DDE89
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Mar 2022 17:18:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB76281BF5;
	Fri, 18 Mar 2022 16:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o2_ZUrr6VKzo; Fri, 18 Mar 2022 16:18:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60853823CF;
	Fri, 18 Mar 2022 16:18:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42A161BF21A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 16:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2EAE5404A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 16:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kbp7Z8dLFD8U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Mar 2022 16:18:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86B48400C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 16:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647620318; x=1679156318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7iiWGNMnpJhAGIx6piBmzh8nlYg3TAxR2JVxPlh4JeQ=;
 b=IZyjpBWIAKC760nYaXg2deHjLJQXIRHuWTES3yx4vo5lPAVsJ26ClXQE
 BFvLT0X2BvbCiSxctCx5owRZ83GVHA6PBRDWOhh93bzXvR+BtXOZqdARO
 JebS5yHL4Jt57FFVqa9FUR5oT2F8VG4PhXly/+3CoXXLO4WCqEIvp0+a6
 KcirCHscy8Pw4d8eH0pJ98syoFZEhZJPAflHSZu2Pu24nmCSx+5HbgeIV
 iNdxXrN7v7NsIZP2j697XYCHxM6uZbe7EAr29kBfGjRDAj90kRr5kaSRS
 +y8KQwV9rQ9Fg5+SCSO8JwNMnvK9UFw/1mh3E4F71aziH3l6mjY/cqGYg w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="256892950"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="256892950"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 09:18:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="541917744"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 18 Mar 2022 09:18:27 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22IGIOmF024113; Fri, 18 Mar 2022 16:18:26 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Mar 2022 17:17:11 +0100
Message-Id: <20220318161713.680436-4-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220318161713.680436-1-alexandr.lobakin@intel.com>
References: <20220318161713.680436-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 3/5] ice: switch: use a struct
 to pass packet template params
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_find_dummy_packet() contains a lot of boilerplate code and a
nice room for copy-paste mistakes.
Instead of passing 3 separate pointers back and forth to get packet
template (dummy) params, directly return a structure containing
them. Then, use a macro to compose compound literals and avoid code
duplication on return path.
Now, dummy packet type/name is needed only once to return a full
correct triple pkt-pkt_len-offsets, and those are all one-liners.
dummy_ipv4_gtpu_ipv4_packet_offsets is just moved around and renamed
(as well as dummy_ipv6_gtp_packet_offsets) with no function changes.

Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 268 +++++++-------------
 1 file changed, 94 insertions(+), 174 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 0936d39de70c..12fb0f6aa350 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -35,6 +35,20 @@ struct ice_dummy_pkt_offsets {
 	u16 offset; /* ICE_PROTOCOL_LAST indicates end of list */
 };
 
+struct ice_dummy_pkt_profile {
+	const struct ice_dummy_pkt_offsets *offsets;
+	const u8 *pkt;
+	u64 pkt_len:16;
+};
+
+#define ICE_PKT_PROFILE(type) ({					\
+	(struct ice_dummy_pkt_profile){					\
+		.pkt		= dummy_##type##_packet,		\
+		.pkt_len	= sizeof(dummy_##type##_packet),	\
+		.offsets	= dummy_##type##_packet_offsets,	\
+	};								\
+})
+
 static const struct ice_dummy_pkt_offsets dummy_gre_tcp_packet_offsets[] = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
@@ -1141,6 +1155,15 @@ static const u8 dummy_ipv6_gtpu_ipv6_udp_packet[] = {
 	0x00, 0x00, /* 2 bytes for 4 byte alignment */
 };
 
+static const
+struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv4_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_GTP_NO_PAY,	42 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
 static const u8 dummy_ipv4_gtpu_ipv4_packet[] = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
@@ -1172,16 +1195,7 @@ static const u8 dummy_ipv4_gtpu_ipv4_packet[] = {
 };
 
 static const
-struct ice_dummy_pkt_offsets dummy_ipv4_gtp_no_pay_packet_offsets[] = {
-	{ ICE_MAC_OFOS,		0 },
-	{ ICE_IPV4_OFOS,	14 },
-	{ ICE_UDP_OF,		34 },
-	{ ICE_GTP_NO_PAY,	42 },
-	{ ICE_PROTOCOL_LAST,	0 },
-};
-
-static const
-struct ice_dummy_pkt_offsets dummy_ipv6_gtp_no_pay_packet_offsets[] = {
+struct ice_dummy_pkt_offsets dummy_ipv6_gtp_packet_offsets[] = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_IPV6_OFOS,	14 },
 	{ ICE_UDP_OF,		54 },
@@ -5501,15 +5515,12 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
  *	   structure per protocol header
  * @lkups_cnt: number of protocols
  * @tun_type: tunnel type
- * @pkt: dummy packet to fill according to filter match criteria
- * @pkt_len: packet length of dummy packet
- * @offsets: pointer to receive the pointer to the offsets for the packet
+ *
+ * Returns the &ice_dummy_pkt_profile corresponding to these lookup params.
  */
-static void
+static struct ice_dummy_pkt_profile
 ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
-		      enum ice_sw_tunnel_type tun_type,
-		      const u8 **pkt, u16 *pkt_len,
-		      const struct ice_dummy_pkt_offsets **offsets)
+		      enum ice_sw_tunnel_type tun_type)
 {
 	bool inner_tcp = false, inner_udp = false, outer_ipv6 = false;
 	bool vlan = false, inner_ipv6 = false, gtp_no_pay = false;
@@ -5545,168 +5556,86 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 	if (tun_type == ICE_SW_TUN_GTPU) {
 		if (outer_ipv6) {
 			if (gtp_no_pay) {
-				*pkt = dummy_ipv6_gtp_packet;
-				*pkt_len = sizeof(dummy_ipv6_gtp_packet);
-				*offsets = dummy_ipv6_gtp_no_pay_packet_offsets;
+				return ICE_PKT_PROFILE(ipv6_gtp);
 			} else if (inner_ipv6) {
-				if (inner_udp) {
-					*pkt = dummy_ipv6_gtpu_ipv6_udp_packet;
-					*pkt_len = sizeof(dummy_ipv6_gtpu_ipv6_udp_packet);
-					*offsets = dummy_ipv6_gtpu_ipv6_udp_packet_offsets;
-				} else {
-					*pkt = dummy_ipv6_gtpu_ipv6_tcp_packet;
-					*pkt_len = sizeof(dummy_ipv6_gtpu_ipv6_tcp_packet);
-					*offsets = dummy_ipv6_gtpu_ipv6_tcp_packet_offsets;
-				}
+				if (inner_udp)
+					return ICE_PKT_PROFILE(ipv6_gtpu_ipv6_udp);
+				else
+					return ICE_PKT_PROFILE(ipv6_gtpu_ipv6_tcp);
 			} else {
-				if (inner_udp) {
-					*pkt = dummy_ipv6_gtpu_ipv4_udp_packet;
-					*pkt_len = sizeof(dummy_ipv6_gtpu_ipv4_udp_packet);
-					*offsets = dummy_ipv6_gtpu_ipv4_udp_packet_offsets;
-				} else {
-					*pkt = dummy_ipv6_gtpu_ipv4_tcp_packet;
-					*pkt_len = sizeof(dummy_ipv6_gtpu_ipv4_tcp_packet);
-					*offsets = dummy_ipv6_gtpu_ipv4_tcp_packet_offsets;
-				}
+				if (inner_udp)
+					return ICE_PKT_PROFILE(ipv6_gtpu_ipv4_udp);
+				else
+					return ICE_PKT_PROFILE(ipv6_gtpu_ipv4_tcp);
 			}
 		} else {
 			if (gtp_no_pay) {
-				*pkt = dummy_ipv4_gtpu_ipv4_packet;
-				*pkt_len = sizeof(dummy_ipv4_gtpu_ipv4_packet);
-				*offsets = dummy_ipv4_gtp_no_pay_packet_offsets;
+				return ICE_PKT_PROFILE(ipv4_gtpu_ipv4);
 			} else if (inner_ipv6) {
-				if (inner_udp) {
-					*pkt = dummy_ipv4_gtpu_ipv6_udp_packet;
-					*pkt_len = sizeof(dummy_ipv4_gtpu_ipv6_udp_packet);
-					*offsets = dummy_ipv4_gtpu_ipv6_udp_packet_offsets;
-				} else {
-					*pkt = dummy_ipv4_gtpu_ipv6_tcp_packet;
-					*pkt_len = sizeof(dummy_ipv4_gtpu_ipv6_tcp_packet);
-					*offsets = dummy_ipv4_gtpu_ipv6_tcp_packet_offsets;
-				}
+				if (inner_udp)
+					return ICE_PKT_PROFILE(ipv4_gtpu_ipv6_udp);
+				else
+					return ICE_PKT_PROFILE(ipv4_gtpu_ipv6_tcp);
 			} else {
-				if (inner_udp) {
-					*pkt = dummy_ipv4_gtpu_ipv4_udp_packet;
-					*pkt_len = sizeof(dummy_ipv4_gtpu_ipv4_udp_packet);
-					*offsets = dummy_ipv4_gtpu_ipv4_udp_packet_offsets;
-				} else {
-					*pkt = dummy_ipv4_gtpu_ipv4_tcp_packet;
-					*pkt_len = sizeof(dummy_ipv4_gtpu_ipv4_tcp_packet);
-					*offsets = dummy_ipv4_gtpu_ipv4_tcp_packet_offsets;
-				}
+				if (inner_udp)
+					return ICE_PKT_PROFILE(ipv4_gtpu_ipv4_udp);
+				else
+					return ICE_PKT_PROFILE(ipv4_gtpu_ipv4_tcp);
 			}
 		}
-		return;
 	}
 
 	if (tun_type == ICE_SW_TUN_GTPC) {
-		if (outer_ipv6) {
-			*pkt = dummy_ipv6_gtp_packet;
-			*pkt_len = sizeof(dummy_ipv6_gtp_packet);
-			*offsets = dummy_ipv6_gtp_no_pay_packet_offsets;
-		} else {
-			*pkt = dummy_ipv4_gtpu_ipv4_packet;
-			*pkt_len = sizeof(dummy_ipv4_gtpu_ipv4_packet);
-			*offsets = dummy_ipv4_gtp_no_pay_packet_offsets;
-		}
-		return;
+		if (outer_ipv6)
+			return ICE_PKT_PROFILE(ipv6_gtp);
+		else
+			return ICE_PKT_PROFILE(ipv4_gtpu_ipv4);
 	}
 
 	if (tun_type == ICE_SW_TUN_NVGRE) {
-		if (inner_tcp && inner_ipv6) {
-			*pkt = dummy_gre_ipv6_tcp_packet;
-			*pkt_len = sizeof(dummy_gre_ipv6_tcp_packet);
-			*offsets = dummy_gre_ipv6_tcp_packet_offsets;
-			return;
-		}
-		if (inner_tcp) {
-			*pkt = dummy_gre_tcp_packet;
-			*pkt_len = sizeof(dummy_gre_tcp_packet);
-			*offsets = dummy_gre_tcp_packet_offsets;
-			return;
-		}
-		if (inner_ipv6) {
-			*pkt = dummy_gre_ipv6_udp_packet;
-			*pkt_len = sizeof(dummy_gre_ipv6_udp_packet);
-			*offsets = dummy_gre_ipv6_udp_packet_offsets;
-			return;
-		}
-		*pkt = dummy_gre_udp_packet;
-		*pkt_len = sizeof(dummy_gre_udp_packet);
-		*offsets = dummy_gre_udp_packet_offsets;
-		return;
+		if (inner_tcp && inner_ipv6)
+			return ICE_PKT_PROFILE(gre_ipv6_tcp);
+		else if (inner_tcp)
+			return ICE_PKT_PROFILE(gre_tcp);
+		else if (inner_ipv6)
+			return ICE_PKT_PROFILE(gre_ipv6_udp);
+		else
+			return ICE_PKT_PROFILE(gre_udp);
 	}
 
 	if (tun_type == ICE_SW_TUN_VXLAN ||
 	    tun_type == ICE_SW_TUN_GENEVE) {
-		if (inner_tcp && inner_ipv6) {
-			*pkt = dummy_udp_tun_ipv6_tcp_packet;
-			*pkt_len = sizeof(dummy_udp_tun_ipv6_tcp_packet);
-			*offsets = dummy_udp_tun_ipv6_tcp_packet_offsets;
-			return;
-		}
-		if (inner_tcp) {
-			*pkt = dummy_udp_tun_tcp_packet;
-			*pkt_len = sizeof(dummy_udp_tun_tcp_packet);
-			*offsets = dummy_udp_tun_tcp_packet_offsets;
-			return;
-		}
-		if (inner_ipv6) {
-			*pkt = dummy_udp_tun_ipv6_udp_packet;
-			*pkt_len = sizeof(dummy_udp_tun_ipv6_udp_packet);
-			*offsets = dummy_udp_tun_ipv6_udp_packet_offsets;
-			return;
-		}
-		*pkt = dummy_udp_tun_udp_packet;
-		*pkt_len = sizeof(dummy_udp_tun_udp_packet);
-		*offsets = dummy_udp_tun_udp_packet_offsets;
-		return;
+		if (inner_tcp && inner_ipv6)
+			return ICE_PKT_PROFILE(udp_tun_ipv6_tcp);
+		else if (inner_tcp)
+			return ICE_PKT_PROFILE(udp_tun_tcp);
+		else if (inner_ipv6)
+			return ICE_PKT_PROFILE(udp_tun_ipv6_udp);
+		else
+			return ICE_PKT_PROFILE(udp_tun_udp);
 	}
 
 	if (inner_udp && !outer_ipv6) {
-		if (vlan) {
-			*pkt = dummy_vlan_udp_packet;
-			*pkt_len = sizeof(dummy_vlan_udp_packet);
-			*offsets = dummy_vlan_udp_packet_offsets;
-			return;
-		}
-		*pkt = dummy_udp_packet;
-		*pkt_len = sizeof(dummy_udp_packet);
-		*offsets = dummy_udp_packet_offsets;
-		return;
+		if (vlan)
+			return ICE_PKT_PROFILE(vlan_udp);
+		else
+			return ICE_PKT_PROFILE(udp);
 	} else if (inner_udp && outer_ipv6) {
-		if (vlan) {
-			*pkt = dummy_vlan_udp_ipv6_packet;
-			*pkt_len = sizeof(dummy_vlan_udp_ipv6_packet);
-			*offsets = dummy_vlan_udp_ipv6_packet_offsets;
-			return;
-		}
-		*pkt = dummy_udp_ipv6_packet;
-		*pkt_len = sizeof(dummy_udp_ipv6_packet);
-		*offsets = dummy_udp_ipv6_packet_offsets;
-		return;
+		if (vlan)
+			return ICE_PKT_PROFILE(vlan_udp_ipv6);
+		else
+			return ICE_PKT_PROFILE(udp_ipv6);
 	} else if ((inner_tcp && outer_ipv6) || outer_ipv6) {
-		if (vlan) {
-			*pkt = dummy_vlan_tcp_ipv6_packet;
-			*pkt_len = sizeof(dummy_vlan_tcp_ipv6_packet);
-			*offsets = dummy_vlan_tcp_ipv6_packet_offsets;
-			return;
-		}
-		*pkt = dummy_tcp_ipv6_packet;
-		*pkt_len = sizeof(dummy_tcp_ipv6_packet);
-		*offsets = dummy_tcp_ipv6_packet_offsets;
-		return;
+		if (vlan)
+			return ICE_PKT_PROFILE(vlan_tcp_ipv6);
+		else
+			return ICE_PKT_PROFILE(tcp_ipv6);
 	}
 
-	if (vlan) {
-		*pkt = dummy_vlan_tcp_packet;
-		*pkt_len = sizeof(dummy_vlan_tcp_packet);
-		*offsets = dummy_vlan_tcp_packet_offsets;
-	} else {
-		*pkt = dummy_tcp_packet;
-		*pkt_len = sizeof(dummy_tcp_packet);
-		*offsets = dummy_tcp_packet_offsets;
-	}
+	if (vlan)
+		return ICE_PKT_PROFILE(vlan_tcp);
+
+	return ICE_PKT_PROFILE(tcp);
 }
 
 /**
@@ -5716,15 +5645,12 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
  *	   structure per protocol header
  * @lkups_cnt: number of protocols
  * @s_rule: stores rule information from the match criteria
- * @dummy_pkt: dummy packet to fill according to filter match criteria
- * @pkt_len: packet length of dummy packet
- * @offsets: offset info for the dummy packet
+ * @profile: dummy packet profile (the template, its size and header offsets)
  */
 static int
 ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			  struct ice_aqc_sw_rules_elem *s_rule,
-			  const u8 *dummy_pkt, u16 pkt_len,
-			  const struct ice_dummy_pkt_offsets *offsets)
+			  const struct ice_dummy_pkt_profile *profile)
 {
 	u8 *pkt;
 	u16 i;
@@ -5734,9 +5660,10 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 	 */
 	pkt = s_rule->pdata.lkup_tx_rx.hdr;
 
-	memcpy(pkt, dummy_pkt, pkt_len);
+	memcpy(pkt, profile->pkt, profile->pkt_len);
 
 	for (i = 0; i < lkups_cnt; i++) {
+		const struct ice_dummy_pkt_offsets *offsets = profile->offsets;
 		enum ice_protocol_type type;
 		u16 offset = 0, len = 0, j;
 		bool found = false;
@@ -5821,7 +5748,7 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		}
 	}
 
-	s_rule->pdata.lkup_tx_rx.hdr_len = cpu_to_le16(pkt_len);
+	s_rule->pdata.lkup_tx_rx.hdr_len = cpu_to_le16(profile->pkt_len);
 
 	return 0;
 }
@@ -6044,12 +5971,11 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		 struct ice_rule_query_data *added_entry)
 {
 	struct ice_adv_fltr_mgmt_list_entry *m_entry, *adv_fltr = NULL;
-	u16 rid = 0, i, pkt_len, rule_buf_sz, vsi_handle;
-	const struct ice_dummy_pkt_offsets *pkt_offsets;
 	struct ice_aqc_sw_rules_elem *s_rule = NULL;
+	u16 rid = 0, i, rule_buf_sz, vsi_handle;
+	struct ice_dummy_pkt_profile profile;
 	struct list_head *rule_head;
 	struct ice_switch_info *sw;
-	const u8 *pkt = NULL;
 	u16 word_cnt;
 	u32 act = 0;
 	int status;
@@ -6077,13 +6003,8 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	if (!word_cnt || word_cnt > ICE_MAX_CHAIN_WORDS)
 		return -EINVAL;
 
-	/* make sure that we can locate a dummy packet */
-	ice_find_dummy_packet(lkups, lkups_cnt, rinfo->tun_type, &pkt, &pkt_len,
-			      &pkt_offsets);
-	if (!pkt) {
-		status = -EINVAL;
-		goto err_ice_add_adv_rule;
-	}
+	/* locate a dummy packet */
+	profile = ice_find_dummy_packet(lkups, lkups_cnt, rinfo->tun_type);
 
 	if (!(rinfo->sw_act.fltr_act == ICE_FWD_TO_VSI ||
 	      rinfo->sw_act.fltr_act == ICE_FWD_TO_Q ||
@@ -6124,7 +6045,7 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		}
 		return status;
 	}
-	rule_buf_sz = ICE_SW_RULE_RX_TX_NO_HDR_SIZE + pkt_len;
+	rule_buf_sz = ICE_SW_RULE_RX_TX_NO_HDR_SIZE + profile.pkt_len;
 	s_rule = kzalloc(rule_buf_sz, GFP_KERNEL);
 	if (!s_rule)
 		return -ENOMEM;
@@ -6184,8 +6105,7 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	s_rule->pdata.lkup_tx_rx.recipe_id = cpu_to_le16(rid);
 	s_rule->pdata.lkup_tx_rx.act = cpu_to_le32(act);
 
-	status = ice_fill_adv_dummy_packet(lkups, lkups_cnt, s_rule, pkt,
-					   pkt_len, pkt_offsets);
+	status = ice_fill_adv_dummy_packet(lkups, lkups_cnt, s_rule, &profile);
 	if (status)
 		goto err_ice_add_adv_rule;
 
@@ -6193,7 +6113,7 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	    rinfo->tun_type != ICE_SW_TUN_AND_NON_TUN) {
 		status = ice_fill_adv_packet_tun(hw, rinfo->tun_type,
 						 s_rule->pdata.lkup_tx_rx.hdr,
-						 pkt_offsets);
+						 profile.offsets);
 		if (status)
 			goto err_ice_add_adv_rule;
 	}
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

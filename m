Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8364C13D3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 14:16:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3365F4046D;
	Wed, 23 Feb 2022 13:16:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0D1IIgxUkh-b; Wed, 23 Feb 2022 13:16:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A58B40112;
	Wed, 23 Feb 2022 13:16:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 07EBE1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 13:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E966E4156F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 13:16:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k9RCcQAn68eH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 13:16:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6E824154A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 13:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645622171; x=1677158171;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=owUeZFd0v1n7bHlYr7XqbSOKEsoGplJShFqFkN/g17M=;
 b=mgT1Kh/7tBeJMLH0PVOKGeA9yxFhcrMo8KWLWVyJBVz3/HYNrUpEt/Jc
 De1mKMlqfu8IlOIGNJ9vmEtlV5ijuOSx0Jiyj4t3OAOdFSz1PiYH2QmhD
 CFwzC+T4pmD2Fr8tjdQa+OfZ7Z5c9cW/OqnHQad8/VybUtWBznJvx7tru
 VeyeAzz17eO9z1/b7mR4LCDYogCpamQhkhzcVcO+rBef8Rf3uYb9RWUWE
 ItqOToFOT1QVC732wlCmKTONxKIL6dSwtS1yai5NoCS2vBtMDqZf7jRMt
 xkMXXefdfVHznjcJnUuQFhIaY/Yoy6vgnEEuE33mXYx0PLHF8QQoE7IyM w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="239348447"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="239348447"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:16:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="491191652"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orsmga003.jf.intel.com with ESMTP; 23 Feb 2022 05:16:09 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Feb 2022 01:38:31 +0100
Message-Id: <20220223003830.25565-1-martyna.szapar-mudlaw@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Add support for double vlan
 in switchdev
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
 Wiktor Pilarczyk <wiktor.pilarczyk@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enable support for adding TC rules with both C-tag and S-tag that can
filter on the inner and outer VLAN in QinQ for basic packets (not
tunneled cases).

Signed-off-by: Wiktor Pilarczyk <wiktor.pilarczyk@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
---
 .../ethernet/intel/ice/ice_protocol_type.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 230 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  43 +++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   2 +
 4 files changed, 274 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index 3ca15a64476e..00be64aae28c 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -41,6 +41,8 @@ enum ice_protocol_type {
 	ICE_VXLAN,
 	ICE_GENEVE,
 	ICE_NVGRE,
+	ICE_VLAN_EX,
+	ICE_VLAN_IN,
 	ICE_VXLAN_GPE,
 	ICE_SCTP_IL,
 	ICE_PROTOCOL_LAST
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 2fbbf484ae02..98ad5b642944 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -741,6 +741,205 @@ ICE_PKT_TEMPLATE(vlan_udp_ipv6) = {
 	0x00, 0x00, /* 2 bytes for 4 byte alignment */
 };
 
+ICE_PKT_OFFSETS(qinq_ipv4) = {
+	{ ICE_MAC_OFOS,         0 },
+	{ ICE_VLAN_EX,          12 },
+	{ ICE_VLAN_IN,          16 },
+	{ ICE_ETYPE_OL,         20 },
+	{ ICE_IPV4_OFOS,        22 },
+	{ ICE_PROTOCOL_LAST,    0 },
+};
+
+ICE_PKT_TEMPLATE(qinq_ipv4) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+	0x08, 0x00,             /* ICE_ETYPE_OL 20 */
+
+	0x45, 0x00, 0x00, 0x14, /* ICE_IPV4_OFOS 22 */
+	0x00, 0x01, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00,             /* 2 bytes for 4 byte alignment */
+};
+
+ICE_PKT_OFFSETS(qinq_ipv4_udp) = {
+	{ ICE_MAC_OFOS,         0 },
+	{ ICE_VLAN_EX,          12 },
+	{ ICE_VLAN_IN,          16 },
+	{ ICE_ETYPE_OL,         20 },
+	{ ICE_IPV4_OFOS,        22 },
+	{ ICE_UDP_ILOS,         42 },
+	{ ICE_PROTOCOL_LAST,    0 },
+};
+
+ICE_PKT_TEMPLATE(qinq_ipv4_udp) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+	0x08, 0x00,             /* ICE_ETYPE_OL 20 */
+
+	0x45, 0x00, 0x00, 0x1c, /* ICE_IPV4_OFOS 22 */
+	0x00, 0x01, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 42 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00,             /* 2 bytes for 4 byte alignment */
+};
+
+ICE_PKT_OFFSETS(qinq_ipv4_tcp) = {
+	{ ICE_MAC_OFOS,         0 },
+	{ ICE_VLAN_EX,          12 },
+	{ ICE_VLAN_IN,          16 },
+	{ ICE_ETYPE_OL,         20 },
+	{ ICE_IPV4_OFOS,        22 },
+	{ ICE_TCP_IL,           42 },
+	{ ICE_PROTOCOL_LAST,    0 },
+};
+
+ICE_PKT_TEMPLATE(qinq_ipv4_tcp) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+	0x08, 0x00,             /* ICE_ETYPE_OL 20 */
+
+	0x45, 0x00, 0x00, 0x28, /* ICE_IPV4_OFOS 22 */
+	0x00, 0x01, 0x00, 0x00,
+	0x00, 0x06, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00,             /* 2 bytes for 4 byte alignment */
+};
+
+ICE_PKT_OFFSETS(qinq_ipv6) = {
+	{ ICE_MAC_OFOS,         0 },
+	{ ICE_VLAN_EX,          12 },
+	{ ICE_VLAN_IN,          16 },
+	{ ICE_ETYPE_OL,         20 },
+	{ ICE_IPV6_OFOS,        22 },
+	{ ICE_PROTOCOL_LAST,    0 },
+};
+
+ICE_PKT_TEMPLATE(qinq_ipv6) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+	0x86, 0xDD,             /* ICE_ETYPE_OL 20 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 22 */
+	0x00, 0x00, 0x3b, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00,             /* 2 bytes for 4 byte alignment */
+};
+
+ICE_PKT_OFFSETS(qinq_ipv6_udp) = {
+	{ ICE_MAC_OFOS,         0 },
+	{ ICE_VLAN_EX,          12 },
+	{ ICE_VLAN_IN,          16 },
+	{ ICE_ETYPE_OL,         20 },
+	{ ICE_IPV6_OFOS,        22 },
+	{ ICE_UDP_ILOS,         62 },
+	{ ICE_PROTOCOL_LAST,    0 },
+};
+
+ICE_PKT_TEMPLATE(qinq_ipv6_udp) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+	0x86, 0xDD,             /* ICE_ETYPE_OL 20 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 22 */
+	0x00, 0x08, 0x11, 0x00, /* Next header UDP */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 62 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00,             /* 2 bytes for 4 byte alignment */
+};
+
+ICE_PKT_OFFSETS(qinq_ipv6_tcp) = {
+	{ ICE_MAC_OFOS,         0 },
+	{ ICE_VLAN_EX,          12 },
+	{ ICE_VLAN_IN,          16 },
+	{ ICE_ETYPE_OL,         20 },
+	{ ICE_IPV6_OFOS,        22 },
+	{ ICE_TCP_IL,           62 },
+	{ ICE_PROTOCOL_LAST,    0 },
+};
+
+ICE_PKT_TEMPLATE(qinq_ipv6_tcp) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+	0x86, 0xDD,             /* ICE_ETYPE_OL 20 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 22 */
+	0x00, 0x14, 0x06, 0x00, /* Next header TCP */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00,             /* 2 bytes for 4 byte alignment */
+};
+
 #define ICE_SW_RULE_RX_TX_ETH_HDR_SIZE \
 	(offsetof(struct ice_aqc_sw_rules_elem, pdata.lkup_tx_rx.hdr) + \
 	 (DUMMY_ETH_HDR_LEN * \
@@ -4073,6 +4272,8 @@ static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
 	{ ICE_VXLAN,		{ 8, 10, 12, 14 } },
 	{ ICE_GENEVE,		{ 8, 10, 12, 14 } },
 	{ ICE_NVGRE,            { 0, 2, 4, 6 } },
+	{ ICE_VLAN_EX,		{ 2, 0 } },
+	{ ICE_VLAN_IN,		{ 2, 0 } },
 };
 
 static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
@@ -4091,6 +4292,8 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
 	{ ICE_VXLAN,		ICE_UDP_OF_HW },
 	{ ICE_GENEVE,		ICE_UDP_OF_HW },
 	{ ICE_NVGRE,            ICE_GRE_OF_HW },
+	{ ICE_VLAN_EX,		ICE_VLAN_OF_HW },
+	{ ICE_VLAN_IN,		ICE_VLAN_OL_HW },
 };
 
 /**
@@ -5057,7 +5260,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		      enum ice_sw_tunnel_type tun_type)
 {
 	bool tcp = false, udp = false, ipv6 = false, vlan = false;
-	bool ipv6_il = false;
+	bool ipv6_il = false, cvlan = false;
 	u16 i;
 
 	for (i = 0; i < lkups_cnt; i++) {
@@ -5067,8 +5270,11 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			tcp = true;
 		else if (lkups[i].type == ICE_IPV6_OFOS)
 			ipv6 = true;
-		else if (lkups[i].type == ICE_VLAN_OFOS)
+		else if (lkups[i].type == ICE_VLAN_OFOS ||
+			 lkups[i].type == ICE_VLAN_EX)
 			vlan = true;
+		else if (lkups[i].type == ICE_VLAN_IN)
+			cvlan = true;
 		else if (lkups[i].type == ICE_ETYPE_OL &&
 			 lkups[i].h_u.ethertype.ethtype_id ==
 				cpu_to_be16(ICE_IPV6_ETHER_ID) &&
@@ -5083,6 +5289,24 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			ipv6_il = true;
 	}
 
+	if (cvlan && vlan) {
+		if (ipv6) {
+			if (tcp)
+				return ICE_PKT_PROFILE(qinq_ipv6_tcp);
+			else if (udp)
+				return ICE_PKT_PROFILE(qinq_ipv6_udp);
+			else
+				return ICE_PKT_PROFILE(qinq_ipv6);
+		} else  {
+			if (tcp)
+				return ICE_PKT_PROFILE(qinq_ipv4_tcp);
+			else if (udp)
+				return ICE_PKT_PROFILE(qinq_ipv4_udp);
+			else
+				return ICE_PKT_PROFILE(qinq_ipv4);
+		}
+	}
+
 	if (tun_type == ICE_SW_TUN_NVGRE) {
 		if (tcp && ipv6_il)
 			return ICE_PKT_PROFILE(gre_ipv6_tcp);
@@ -5184,6 +5408,8 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			len = sizeof(struct ice_ethtype_hdr);
 			break;
 		case ICE_VLAN_OFOS:
+		case ICE_VLAN_EX:
+		case ICE_VLAN_IN:
 			len = sizeof(struct ice_vlan_hdr);
 			break;
 		case ICE_IPV4_OFOS:
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index d19def5ddb1c..fd795d2e27cb 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -44,6 +44,10 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	if (flags & ICE_TC_FLWR_FIELD_VLAN)
 		lkups_cnt++;
 
+	/* is CVLAN specified? */
+	if (flags & ICE_TC_FLWR_FIELD_CVLAN)
+		lkups_cnt++;
+
 	/* are IPv[4|6] fields specified? */
 	if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV4 | ICE_TC_FLWR_FIELD_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_DEST_IPV6 | ICE_TC_FLWR_FIELD_SRC_IPV6))
@@ -261,12 +265,22 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 
 	/* copy VLAN info */
 	if (flags & ICE_TC_FLWR_FIELD_VLAN) {
-		list[i].type = ICE_VLAN_OFOS;
+		if (flags & ICE_TC_FLWR_FIELD_CVLAN)
+			list[i].type = ICE_VLAN_EX;
+		else
+			list[i].type = ICE_VLAN_OFOS;
 		list[i].h_u.vlan_hdr.vlan = headers->vlan_hdr.vlan_id;
 		list[i].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
 		i++;
 	}
 
+	if (flags & ICE_TC_FLWR_FIELD_CVLAN) {
+		list[i].type = ICE_VLAN_IN;
+		list[i].h_u.vlan_hdr.vlan = headers->cvlan_hdr.vlan_id;
+		list[i].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
+		i++;
+	}
+
 	/* copy L3 (IPv[4|6]: src, dest) address */
 	if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV4 |
 		     ICE_TC_FLWR_FIELD_SRC_IPV4)) {
@@ -835,6 +849,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 	      BIT(FLOW_DISSECTOR_KEY_BASIC) |
 	      BIT(FLOW_DISSECTOR_KEY_ETH_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_VLAN) |
+	      BIT(FLOW_DISSECTOR_KEY_CVLAN) |
 	      BIT(FLOW_DISSECTOR_KEY_IPV4_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_IPV6_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_CONTROL) |
@@ -949,6 +964,32 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 			headers->vlan_hdr.vlan_prio = match.key->vlan_priority;
 	}
 
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_CVLAN)) {
+		struct flow_match_vlan match;
+
+		if (!ice_is_dvm_ena(&vsi->back->hw)) {
+			NL_SET_ERR_MSG_MOD(fltr->extack, "Double VLAN mode is not enabled");
+			return -EINVAL;
+		}
+
+		flow_rule_match_cvlan(rule, &match);
+
+		if (match.mask->vlan_id) {
+			if (match.mask->vlan_id == VLAN_VID_MASK) {
+				fltr->flags |= ICE_TC_FLWR_FIELD_CVLAN;
+			} else {
+				NL_SET_ERR_MSG_MOD(fltr->extack,
+						   "Bad CVLAN mask");
+				return -EINVAL;
+			}
+		}
+
+		headers->cvlan_hdr.vlan_id =
+				cpu_to_be16(match.key->vlan_id & VLAN_VID_MASK);
+		if (match.mask->vlan_priority)
+			headers->cvlan_hdr.vlan_prio = match.key->vlan_priority;
+	}
+
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_CONTROL)) {
 		struct flow_match_control match;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index 319049477959..c21325946a0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -22,6 +22,7 @@
 #define ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT	BIT(15)
 #define ICE_TC_FLWR_FIELD_ENC_DST_MAC		BIT(16)
 #define ICE_TC_FLWR_FIELD_ETH_TYPE_ID		BIT(17)
+#define ICE_TC_FLWR_FIELD_CVLAN			BIT(18)
 
 #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
 
@@ -80,6 +81,7 @@ struct ice_tc_flower_lyr_2_4_hdrs {
 	struct ice_tc_l2_hdr l2_key;
 	struct ice_tc_l2_hdr l2_mask;
 	struct ice_tc_vlan_hdr vlan_hdr;
+	struct ice_tc_vlan_hdr cvlan_hdr;
 	/* L3 (IPv4[6]) layer fields with their mask */
 	struct ice_tc_l3_hdr l3_key;
 	struct ice_tc_l3_hdr l3_mask;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B534E7130
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Mar 2022 11:30:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEBB241CB1;
	Fri, 25 Mar 2022 10:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jiLwDnj5W66N; Fri, 25 Mar 2022 10:30:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7737E41CB4;
	Fri, 25 Mar 2022 10:30:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD9C81BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 10:30:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C79B0843C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 10:30:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hveWvc8HMipD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Mar 2022 10:30:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C66A0843BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648204233; x=1679740233;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b319MMRZglrXjozM+fxhIOcK0uI20R+uR15Ulp3X4DU=;
 b=LnVSJ6vgMoJuzxFFvj/Gzh/XqotJnAQyrMlT69ehnSfK6GwEID/wH6ux
 PfI1qkZZLylpRegPyWQ1hdDRcdxEsWUQtAIlxpnzVVsAZ9BQDnZbE7O2Y
 dAGy6YrDPZzi0i4DJuVxuTYUhGE/uaZbuTztawj+um2fehOnbjDn4MV+M
 ZnBP/Dkr8n71vlXjuu/cBXIETDuSPHnPfzW1d+CV6TBv4qufibW13hI4J
 dmbirEDoOaVEXHps88uur2hC1PD4zpAGx7D4pbyNiH9nJErus5mgZovfd
 b8Ij7yaCHFTxKrB/+ZLI/dITfkzUIqfp3TZgGww9ZqxgrcIEt704+aKog Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258573591"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258573591"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:30:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="650196053"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orsmga004.jf.intel.com with ESMTP; 25 Mar 2022 03:30:31 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 25 Mar 2022 11:29:23 +0100
Message-Id: <20220325102922.3320-1-martyna.szapar-mudlaw@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next] ice: Add support for double
 vlan in switchdev
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

v2: Rebased. No functional changes.

Signed-off-by: Wiktor Pilarczyk <wiktor.pilarczyk@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 .../ethernet/intel/ice/ice_protocol_type.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 230 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  43 +++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   2 +
 4 files changed, 275 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index 3f64300b0e14..f8bd0990641b 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -43,6 +43,8 @@ enum ice_protocol_type {
 	ICE_NVGRE,
 	ICE_GTP,
 	ICE_GTP_NO_PAY,
+	ICE_VLAN_EX,
+	ICE_VLAN_IN,
 	ICE_VXLAN_GPE,
 	ICE_SCTP_IL,
 	ICE_PROTOCOL_LAST
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index ed7130b7abfe..f047137294a9 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -41,6 +41,7 @@ enum {
 	ICE_PKT_INNER_TCP	= BIT(7),
 	ICE_PKT_INNER_UDP	= BIT(8),
 	ICE_PKT_GTP_NOPAY	= BIT(9),
+	ICE_PKT_CVLAN		= BIT(10),
 };
 
 struct ice_dummy_pkt_offsets {
@@ -1233,7 +1234,225 @@ ICE_DECLARE_PKT_TEMPLATE(ipv6_gtp) = {
 	0x00, 0x00,
 };
 
+ICE_DECLARE_PKT_OFFSETS(qinq_ipv4) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_VLAN_EX,		12 },
+	{ ICE_VLAN_IN,		16 },
+	{ ICE_ETYPE_OL,		20 },
+	{ ICE_IPV4_OFOS,	22 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(qinq_ipv4) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+	0x08, 0x00,		/* ICE_ETYPE_OL 20 */
+
+	0x45, 0x00, 0x00, 0x14, /* ICE_IPV4_OFOS 22 */
+	0x00, 0x01, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
+};
+
+ICE_DECLARE_PKT_OFFSETS(qinq_ipv4_udp) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_VLAN_EX,		12 },
+	{ ICE_VLAN_IN,		16 },
+	{ ICE_ETYPE_OL,		20 },
+	{ ICE_IPV4_OFOS,	22 },
+	{ ICE_UDP_ILOS,		42 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(qinq_ipv4_udp) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+	0x08, 0x00,		/* ICE_ETYPE_OL 20 */
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
+	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
+};
+
+ICE_DECLARE_PKT_OFFSETS(qinq_ipv4_tcp) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_VLAN_EX,		12 },
+	{ ICE_VLAN_IN,		16 },
+	{ ICE_ETYPE_OL,		20 },
+	{ ICE_IPV4_OFOS,	22 },
+	{ ICE_TCP_IL,		42 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(qinq_ipv4_tcp) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+	0x08, 0x00,		/* ICE_ETYPE_OL 20 */
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
+	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
+};
+
+ICE_DECLARE_PKT_OFFSETS(qinq_ipv6) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_VLAN_EX,		12 },
+	{ ICE_VLAN_IN,		16 },
+	{ ICE_ETYPE_OL,		20 },
+	{ ICE_IPV6_OFOS,	22 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(qinq_ipv6) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+	0x86, 0xDD,		/* ICE_ETYPE_OL 20 */
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
+	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
+};
+
+ICE_DECLARE_PKT_OFFSETS(qinq_ipv6_udp) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_VLAN_EX,		12 },
+	{ ICE_VLAN_IN,		16 },
+	{ ICE_ETYPE_OL,		20 },
+	{ ICE_IPV6_OFOS,	22 },
+	{ ICE_UDP_ILOS,		62 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(qinq_ipv6_udp) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+	0x86, 0xDD,		/* ICE_ETYPE_OL 20 */
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
+	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
+};
+
+ICE_DECLARE_PKT_OFFSETS(qinq_ipv6_tcp) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_VLAN_EX,		12 },
+	{ ICE_VLAN_IN,		16 },
+	{ ICE_ETYPE_OL,		20 },
+	{ ICE_IPV6_OFOS,	22 },
+	{ ICE_TCP_IL,		62 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(qinq_ipv6_tcp) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+	0x86, 0xDD,		/* ICE_ETYPE_OL 20 */
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
+	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
+};
+
 static const struct ice_dummy_pkt_profile ice_dummy_pkt_profiles[] = {
+	ICE_PKT_PROFILE(qinq_ipv6_tcp, ICE_PKT_CVLAN |
+				       ICE_PKT_VLAN |
+				       ICE_PKT_OUTER_IPV6 |
+				       ICE_PKT_INNER_TCP),
+	ICE_PKT_PROFILE(qinq_ipv6_udp, ICE_PKT_CVLAN |
+				       ICE_PKT_VLAN |
+				       ICE_PKT_OUTER_IPV6 |
+				       ICE_PKT_INNER_UDP),
+	ICE_PKT_PROFILE(qinq_ipv6, ICE_PKT_CVLAN |
+			           ICE_PKT_VLAN |
+				   ICE_PKT_OUTER_IPV6),
+	ICE_PKT_PROFILE(qinq_ipv4_tcp, ICE_PKT_CVLAN |
+				       ICE_PKT_VLAN |
+				       ICE_PKT_INNER_TCP),
+	ICE_PKT_PROFILE(qinq_ipv4_udp, ICE_PKT_CVLAN |
+				       ICE_PKT_VLAN |
+				       ICE_PKT_INNER_UDP),
+	ICE_PKT_PROFILE(qinq_ipv4, ICE_PKT_CVLAN |
+				   ICE_PKT_VLAN),
 	ICE_PKT_PROFILE(ipv6_gtp, ICE_PKT_TUN_GTPU | ICE_PKT_OUTER_IPV6 |
 				  ICE_PKT_GTP_NOPAY),
 	ICE_PKT_PROFILE(ipv6_gtpu_ipv6_udp, ICE_PKT_TUN_GTPU |
@@ -4616,6 +4835,8 @@ static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
 	{ ICE_NVGRE,		{ 0, 2, 4, 6 } },
 	{ ICE_GTP,		{ 8, 10, 12, 14, 16, 18, 20, 22 } },
 	{ ICE_GTP_NO_PAY,	{ 8, 10, 12, 14 } },
+	{ ICE_VLAN_EX,          { 2, 0 } },
+	{ ICE_VLAN_IN,          { 2, 0 } },
 };
 
 static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
@@ -4636,6 +4857,8 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
 	{ ICE_NVGRE,		ICE_GRE_OF_HW },
 	{ ICE_GTP,		ICE_UDP_OF_HW },
 	{ ICE_GTP_NO_PAY,	ICE_UDP_ILOS_HW },
+	{ ICE_VLAN_EX,          ICE_VLAN_OF_HW },
+	{ ICE_VLAN_IN,          ICE_VLAN_OL_HW },
 };
 
 /**
@@ -5604,8 +5827,11 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			match |= ICE_PKT_INNER_TCP;
 		else if (lkups[i].type == ICE_IPV6_OFOS)
 			match |= ICE_PKT_OUTER_IPV6;
-		else if (lkups[i].type == ICE_VLAN_OFOS)
+		else if (lkups[i].type == ICE_VLAN_OFOS ||
+			 lkups[i].type == ICE_VLAN_EX)
 			match |= ICE_PKT_VLAN;
+		else if (lkups[i].type == ICE_VLAN_IN)
+			match |= ICE_PKT_CVLAN;
 		else if (lkups[i].type == ICE_ETYPE_OL &&
 			 lkups[i].h_u.ethertype.ethtype_id ==
 				cpu_to_be16(ICE_IPV6_ETHER_ID) &&
@@ -5685,6 +5911,8 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			len = sizeof(struct ice_ethtype_hdr);
 			break;
 		case ICE_VLAN_OFOS:
+		case ICE_VLAN_EX:
+		case ICE_VLAN_IN:
 			len = sizeof(struct ice_vlan_hdr);
 			break;
 		case ICE_IPV4_OFOS:
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 3acd9f921c44..9efc089b30fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -50,6 +50,10 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	if (flags & ICE_TC_FLWR_FIELD_VLAN)
 		lkups_cnt++;
 
+	/* is CVLAN specified? */
+	if (flags & ICE_TC_FLWR_FIELD_CVLAN)
+		lkups_cnt++;
+
 	/* are IPv[4|6] fields specified? */
 	if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV4 | ICE_TC_FLWR_FIELD_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_DEST_IPV6 | ICE_TC_FLWR_FIELD_SRC_IPV6))
@@ -311,12 +315,22 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 
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
@@ -945,6 +959,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 	      BIT(FLOW_DISSECTOR_KEY_BASIC) |
 	      BIT(FLOW_DISSECTOR_KEY_ETH_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_VLAN) |
+	      BIT(FLOW_DISSECTOR_KEY_CVLAN) |
 	      BIT(FLOW_DISSECTOR_KEY_IPV4_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_IPV6_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_CONTROL) |
@@ -1060,6 +1075,32 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
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
index e25e958f4396..87acfe5b0e4d 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -23,6 +23,7 @@
 #define ICE_TC_FLWR_FIELD_ENC_DST_MAC		BIT(16)
 #define ICE_TC_FLWR_FIELD_ETH_TYPE_ID		BIT(17)
 #define ICE_TC_FLWR_FIELD_ENC_OPTS		BIT(18)
+#define ICE_TC_FLWR_FIELD_CVLAN			BIT(19)
 
 #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
 
@@ -81,6 +82,7 @@ struct ice_tc_flower_lyr_2_4_hdrs {
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

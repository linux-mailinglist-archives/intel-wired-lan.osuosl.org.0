Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CACA65091BB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 23:02:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 659A983E4B;
	Wed, 20 Apr 2022 21:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l4JQvKaNX24x; Wed, 20 Apr 2022 21:02:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B8CC83E00;
	Wed, 20 Apr 2022 21:02:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5AF211BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 21:02:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4734060FD2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 21:02:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TKhhEP8lm_1U for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 21:02:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B274C60EAD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 21:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650488549; x=1682024549;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CbUvZ5aOuD4KG7Z6JeXw++4Q2Fy6g+kbGJ/TVjMxe4Y=;
 b=nDe7KaoP8w5FANYylqL0Jw2P7g7XQ+7Vf8VHUM5/3MGP6I9ckJ8bZMEV
 L78lKVxmSHOOfpIsTyb6rgxraunlOOKGowzy8bNWXqMAd4Q0GXbXonVYF
 /Asw+gQqbmPYk0YSZsQYlQA76IIP7opzH5T6+eNMeGbkevt7Le2phf9IT
 xdker7eq5gLOoFVhIXbntcmoddvPKfePGrR67WZ7IJNDKtIR2hrcBfVR2
 jKVk57+tC34pWrhi1LjuTASmhAIIx6luS/4XZHtRB0Kt0UxPE6T2ytTmc
 cFFAWuGRUJOecmcajXKvzc6OZQJ60gWhIT37iq342sWDAvjTcUgIx1KOW Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="251459362"
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="251459362"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 14:02:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="555392627"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orsmga007.jf.intel.com with ESMTP; 20 Apr 2022 14:02:27 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 20 Apr 2022 23:00:49 +0200
Message-Id: <20220420210048.5809-1-martyna.szapar-mudlaw@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: switch: dynamically add
 vlan headers to a dummy packets
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enable the support of creating all kinds of declared dummy packets
with the vlan tags by inserting vlan headers (single vlan and qinq
cases) if needed.
Decrease in the number of declared dummy packets and increase in the
possible packet's combinations for adding switch rules.

This change enables support of creating filters that match both on
vlan + tunnels properties in switchdev.

Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 537 +++++---------------
 1 file changed, 140 insertions(+), 397 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 79ab2128857f..6e6becbed5c0 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -31,17 +31,16 @@ static const u8 dummy_eth_header[DUMMY_ETH_HDR_LEN] = { 0x2, 0, 0, 0, 0, 0,
 							0x81, 0, 0, 0};
 
 enum {
-	ICE_PKT_VLAN		= BIT(0),
-	ICE_PKT_OUTER_IPV6	= BIT(1),
-	ICE_PKT_TUN_GTPC	= BIT(2),
-	ICE_PKT_TUN_GTPU	= BIT(3),
-	ICE_PKT_TUN_NVGRE	= BIT(4),
-	ICE_PKT_TUN_UDP		= BIT(5),
-	ICE_PKT_INNER_IPV6	= BIT(6),
-	ICE_PKT_INNER_TCP	= BIT(7),
-	ICE_PKT_INNER_UDP	= BIT(8),
-	ICE_PKT_GTP_NOPAY	= BIT(9),
-	ICE_PKT_CVLAN		= BIT(10),
+	ICE_PKT_OUTER_IPV6	= BIT(0),
+	ICE_PKT_TUN_GTPC	= BIT(1),
+	ICE_PKT_TUN_GTPU	= BIT(2),
+	ICE_PKT_TUN_NVGRE	= BIT(3),
+	ICE_PKT_TUN_UDP		= BIT(4),
+	ICE_PKT_INNER_IPV6	= BIT(5),
+	ICE_PKT_INNER_TCP	= BIT(6),
+	ICE_PKT_INNER_UDP	= BIT(7),
+	ICE_PKT_GTP_NOPAY	= BIT(8),
+	ICE_PKT_KMALLOC		= BIT(9),
 };
 
 struct ice_dummy_pkt_offsets {
@@ -54,22 +53,42 @@ struct ice_dummy_pkt_profile {
 	const u8 *pkt;
 	u32 match;
 	u16 pkt_len;
+	u16 offsets_len;
 };
 
-#define ICE_DECLARE_PKT_OFFSETS(type)				\
-	static const struct ice_dummy_pkt_offsets		\
+#define ICE_DECLARE_PKT_OFFSETS(type)					\
+	static const struct ice_dummy_pkt_offsets			\
 	ice_dummy_##type##_packet_offsets[]
 
-#define ICE_DECLARE_PKT_TEMPLATE(type)				\
+#define ICE_DECLARE_PKT_TEMPLATE(type)					\
 	static const u8 ice_dummy_##type##_packet[]
 
-#define ICE_PKT_PROFILE(type, m) {				\
-	.match		= (m),					\
-	.pkt		= ice_dummy_##type##_packet,		\
-	.pkt_len	= sizeof(ice_dummy_##type##_packet),	\
-	.offsets	= ice_dummy_##type##_packet_offsets,	\
+#define ICE_PKT_PROFILE(type, m) {					\
+	.match		= (m),						\
+	.pkt		= ice_dummy_##type##_packet,			\
+	.pkt_len	= sizeof(ice_dummy_##type##_packet),		\
+	.offsets	= ice_dummy_##type##_packet_offsets,		\
+	.offsets_len	= sizeof(ice_dummy_##type##_packet_offsets),	\
 }
 
+ICE_DECLARE_PKT_OFFSETS(vlan) = {
+	{ ICE_VLAN_OFOS,        12 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(vlan) = {
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_OFOS 12 */
+};
+
+ICE_DECLARE_PKT_OFFSETS(qinq) = {
+	{ ICE_VLAN_EX,          12 },
+	{ ICE_VLAN_IN,          16 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(qinq) = {
+	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
+};
+
 ICE_DECLARE_PKT_OFFSETS(gre_tcp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
@@ -507,38 +526,6 @@ ICE_DECLARE_PKT_TEMPLATE(udp) = {
 	0x00, 0x00,	/* 2 bytes for 4 byte alignment */
 };
 
-/* offset info for MAC + VLAN + IPv4 + UDP dummy packet */
-ICE_DECLARE_PKT_OFFSETS(vlan_udp) = {
-	{ ICE_MAC_OFOS,		0 },
-	{ ICE_VLAN_OFOS,	12 },
-	{ ICE_ETYPE_OL,		16 },
-	{ ICE_IPV4_OFOS,	18 },
-	{ ICE_UDP_ILOS,		38 },
-	{ ICE_PROTOCOL_LAST,	0 },
-};
-
-/* C-tag (801.1Q), IPv4:UDP dummy packet */
-ICE_DECLARE_PKT_TEMPLATE(vlan_udp) = {
-	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_OFOS 12 */
-
-	0x08, 0x00,		/* ICE_ETYPE_OL 16 */
-
-	0x45, 0x00, 0x00, 0x1c, /* ICE_IPV4_OFOS 18 */
-	0x00, 0x01, 0x00, 0x00,
-	0x00, 0x11, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 38 */
-	0x00, 0x08, 0x00, 0x00,
-
-	0x00, 0x00,	/* 2 bytes for 4 byte alignment */
-};
-
 /* offset info for MAC + IPv4 + TCP dummy packet */
 ICE_DECLARE_PKT_OFFSETS(tcp) = {
 	{ ICE_MAC_OFOS,		0 },
@@ -571,41 +558,6 @@ ICE_DECLARE_PKT_TEMPLATE(tcp) = {
 	0x00, 0x00,	/* 2 bytes for 4 byte alignment */
 };
 
-/* offset info for MAC + VLAN (C-tag, 802.1Q) + IPv4 + TCP dummy packet */
-ICE_DECLARE_PKT_OFFSETS(vlan_tcp) = {
-	{ ICE_MAC_OFOS,		0 },
-	{ ICE_VLAN_OFOS,	12 },
-	{ ICE_ETYPE_OL,		16 },
-	{ ICE_IPV4_OFOS,	18 },
-	{ ICE_TCP_IL,		38 },
-	{ ICE_PROTOCOL_LAST,	0 },
-};
-
-/* C-tag (801.1Q), IPv4:TCP dummy packet */
-ICE_DECLARE_PKT_TEMPLATE(vlan_tcp) = {
-	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x81, 0x00, 0x00, 0x00,	/* ICE_VLAN_OFOS 12 */
-
-	0x08, 0x00,		/* ICE_ETYPE_OL 16 */
-
-	0x45, 0x00, 0x00, 0x28, /* ICE_IPV4_OFOS 18 */
-	0x00, 0x01, 0x00, 0x00,
-	0x00, 0x06, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 38 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x50, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00,	/* 2 bytes for 4 byte alignment */
-};
-
 ICE_DECLARE_PKT_OFFSETS(tcp_ipv6) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
@@ -641,46 +593,6 @@ ICE_DECLARE_PKT_TEMPLATE(tcp_ipv6) = {
 	0x00, 0x00, /* 2 bytes for 4 byte alignment */
 };
 
-/* C-tag (802.1Q): IPv6 + TCP */
-ICE_DECLARE_PKT_OFFSETS(vlan_tcp_ipv6) = {
-	{ ICE_MAC_OFOS,		0 },
-	{ ICE_VLAN_OFOS,	12 },
-	{ ICE_ETYPE_OL,		16 },
-	{ ICE_IPV6_OFOS,	18 },
-	{ ICE_TCP_IL,		58 },
-	{ ICE_PROTOCOL_LAST,	0 },
-};
-
-/* C-tag (802.1Q), IPv6 + TCP dummy packet */
-ICE_DECLARE_PKT_TEMPLATE(vlan_tcp_ipv6) = {
-	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x81, 0x00, 0x00, 0x00,	/* ICE_VLAN_OFOS 12 */
-
-	0x86, 0xDD,		/* ICE_ETYPE_OL 16 */
-
-	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 18 */
-	0x00, 0x14, 0x06, 0x00, /* Next header is TCP */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 58 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x50, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00, /* 2 bytes for 4 byte alignment */
-};
-
 /* IPv6 + UDP */
 ICE_DECLARE_PKT_OFFSETS(udp_ipv6) = {
 	{ ICE_MAC_OFOS,		0 },
@@ -718,43 +630,6 @@ ICE_DECLARE_PKT_TEMPLATE(udp_ipv6) = {
 	0x00, 0x00, /* 2 bytes for 4 byte alignment */
 };
 
-/* C-tag (802.1Q): IPv6 + UDP */
-ICE_DECLARE_PKT_OFFSETS(vlan_udp_ipv6) = {
-	{ ICE_MAC_OFOS,		0 },
-	{ ICE_VLAN_OFOS,	12 },
-	{ ICE_ETYPE_OL,		16 },
-	{ ICE_IPV6_OFOS,	18 },
-	{ ICE_UDP_ILOS,		58 },
-	{ ICE_PROTOCOL_LAST,	0 },
-};
-
-/* C-tag (802.1Q), IPv6 + UDP dummy packet */
-ICE_DECLARE_PKT_TEMPLATE(vlan_udp_ipv6) = {
-	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x81, 0x00, 0x00, 0x00,/* ICE_VLAN_OFOS 12 */
-
-	0x86, 0xDD,		/* ICE_ETYPE_OL 16 */
-
-	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 18 */
-	0x00, 0x08, 0x11, 0x00, /* Next header UDP */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 58 */
-	0x00, 0x08, 0x00, 0x00,
-
-	0x00, 0x00, /* 2 bytes for 4 byte alignment */
-};
-
 /* Outer IPv4 + Outer UDP + GTP + Inner IPv4 + Inner TCP */
 ICE_DECLARE_PKT_OFFSETS(ipv4_gtpu_ipv4_tcp) = {
 	{ ICE_MAC_OFOS,		0 },
@@ -1234,225 +1109,7 @@ ICE_DECLARE_PKT_TEMPLATE(ipv6_gtp) = {
 	0x00, 0x00,
 };
 
-ICE_DECLARE_PKT_OFFSETS(qinq_ipv4) = {
-	{ ICE_MAC_OFOS,		0 },
-	{ ICE_VLAN_EX,		12 },
-	{ ICE_VLAN_IN,		16 },
-	{ ICE_ETYPE_OL,		20 },
-	{ ICE_IPV4_OFOS,	22 },
-	{ ICE_PROTOCOL_LAST,	0 },
-};
-
-ICE_DECLARE_PKT_TEMPLATE(qinq_ipv4) = {
-	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
-	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
-	0x08, 0x00,		/* ICE_ETYPE_OL 20 */
-
-	0x45, 0x00, 0x00, 0x14, /* ICE_IPV4_OFOS 22 */
-	0x00, 0x01, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
-};
-
-ICE_DECLARE_PKT_OFFSETS(qinq_ipv4_udp) = {
-	{ ICE_MAC_OFOS,		0 },
-	{ ICE_VLAN_EX,		12 },
-	{ ICE_VLAN_IN,		16 },
-	{ ICE_ETYPE_OL,		20 },
-	{ ICE_IPV4_OFOS,	22 },
-	{ ICE_UDP_ILOS,		42 },
-	{ ICE_PROTOCOL_LAST,	0 },
-};
-
-ICE_DECLARE_PKT_TEMPLATE(qinq_ipv4_udp) = {
-	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
-	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
-	0x08, 0x00,		/* ICE_ETYPE_OL 20 */
-
-	0x45, 0x00, 0x00, 0x1c, /* ICE_IPV4_OFOS 22 */
-	0x00, 0x01, 0x00, 0x00,
-	0x00, 0x11, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 42 */
-	0x00, 0x08, 0x00, 0x00,
-
-	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
-};
-
-ICE_DECLARE_PKT_OFFSETS(qinq_ipv4_tcp) = {
-	{ ICE_MAC_OFOS,		0 },
-	{ ICE_VLAN_EX,		12 },
-	{ ICE_VLAN_IN,		16 },
-	{ ICE_ETYPE_OL,		20 },
-	{ ICE_IPV4_OFOS,	22 },
-	{ ICE_TCP_IL,		42 },
-	{ ICE_PROTOCOL_LAST,	0 },
-};
-
-ICE_DECLARE_PKT_TEMPLATE(qinq_ipv4_tcp) = {
-	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
-	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
-	0x08, 0x00,		/* ICE_ETYPE_OL 20 */
-
-	0x45, 0x00, 0x00, 0x28, /* ICE_IPV4_OFOS 22 */
-	0x00, 0x01, 0x00, 0x00,
-	0x00, 0x06, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 42 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x50, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
-};
-
-ICE_DECLARE_PKT_OFFSETS(qinq_ipv6) = {
-	{ ICE_MAC_OFOS,		0 },
-	{ ICE_VLAN_EX,		12 },
-	{ ICE_VLAN_IN,		16 },
-	{ ICE_ETYPE_OL,		20 },
-	{ ICE_IPV6_OFOS,	22 },
-	{ ICE_PROTOCOL_LAST,	0 },
-};
-
-ICE_DECLARE_PKT_TEMPLATE(qinq_ipv6) = {
-	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
-	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
-	0x86, 0xDD,		/* ICE_ETYPE_OL 20 */
-
-	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 22 */
-	0x00, 0x00, 0x3b, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
-};
-
-ICE_DECLARE_PKT_OFFSETS(qinq_ipv6_udp) = {
-	{ ICE_MAC_OFOS,		0 },
-	{ ICE_VLAN_EX,		12 },
-	{ ICE_VLAN_IN,		16 },
-	{ ICE_ETYPE_OL,		20 },
-	{ ICE_IPV6_OFOS,	22 },
-	{ ICE_UDP_ILOS,		62 },
-	{ ICE_PROTOCOL_LAST,	0 },
-};
-
-ICE_DECLARE_PKT_TEMPLATE(qinq_ipv6_udp) = {
-	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
-	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
-	0x86, 0xDD,		/* ICE_ETYPE_OL 20 */
-
-	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 22 */
-	0x00, 0x08, 0x11, 0x00, /* Next header UDP */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 62 */
-	0x00, 0x08, 0x00, 0x00,
-
-	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
-};
-
-ICE_DECLARE_PKT_OFFSETS(qinq_ipv6_tcp) = {
-	{ ICE_MAC_OFOS,		0 },
-	{ ICE_VLAN_EX,		12 },
-	{ ICE_VLAN_IN,		16 },
-	{ ICE_ETYPE_OL,		20 },
-	{ ICE_IPV6_OFOS,	22 },
-	{ ICE_TCP_IL,		62 },
-	{ ICE_PROTOCOL_LAST,	0 },
-};
-
-ICE_DECLARE_PKT_TEMPLATE(qinq_ipv6_tcp) = {
-	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x91, 0x00, 0x00, 0x00, /* ICE_VLAN_EX 12 */
-	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_IN 16 */
-	0x86, 0xDD,		/* ICE_ETYPE_OL 20 */
-
-	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 22 */
-	0x00, 0x14, 0x06, 0x00, /* Next header TCP */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 62 */
-	0x00, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-	0x50, 0x00, 0x00, 0x00,
-	0x00, 0x00, 0x00, 0x00,
-
-	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
-};
-
 static const struct ice_dummy_pkt_profile ice_dummy_pkt_profiles[] = {
-	ICE_PKT_PROFILE(qinq_ipv6_tcp, ICE_PKT_CVLAN |
-				       ICE_PKT_VLAN |
-				       ICE_PKT_OUTER_IPV6 |
-				       ICE_PKT_INNER_TCP),
-	ICE_PKT_PROFILE(qinq_ipv6_udp, ICE_PKT_CVLAN |
-				       ICE_PKT_VLAN |
-				       ICE_PKT_OUTER_IPV6 |
-				       ICE_PKT_INNER_UDP),
-	ICE_PKT_PROFILE(qinq_ipv6, ICE_PKT_CVLAN |
-				   ICE_PKT_VLAN |
-				   ICE_PKT_OUTER_IPV6),
-	ICE_PKT_PROFILE(qinq_ipv4_tcp, ICE_PKT_CVLAN |
-				       ICE_PKT_VLAN |
-				       ICE_PKT_INNER_TCP),
-	ICE_PKT_PROFILE(qinq_ipv4_udp, ICE_PKT_CVLAN |
-				       ICE_PKT_VLAN |
-				       ICE_PKT_INNER_UDP),
-	ICE_PKT_PROFILE(qinq_ipv4, ICE_PKT_CVLAN |
-				   ICE_PKT_VLAN),
 	ICE_PKT_PROFILE(ipv6_gtp, ICE_PKT_TUN_GTPU | ICE_PKT_OUTER_IPV6 |
 				  ICE_PKT_GTP_NOPAY),
 	ICE_PKT_PROFILE(ipv6_gtpu_ipv6_udp, ICE_PKT_TUN_GTPU |
@@ -1490,14 +1147,9 @@ static const struct ice_dummy_pkt_profile ice_dummy_pkt_profiles[] = {
 	ICE_PKT_PROFILE(udp_tun_ipv6_udp, ICE_PKT_TUN_UDP |
 					  ICE_PKT_INNER_IPV6),
 	ICE_PKT_PROFILE(udp_tun_udp, ICE_PKT_TUN_UDP),
-	ICE_PKT_PROFILE(vlan_udp_ipv6, ICE_PKT_OUTER_IPV6 | ICE_PKT_INNER_UDP |
-				       ICE_PKT_VLAN),
 	ICE_PKT_PROFILE(udp_ipv6, ICE_PKT_OUTER_IPV6 | ICE_PKT_INNER_UDP),
-	ICE_PKT_PROFILE(vlan_udp, ICE_PKT_INNER_UDP | ICE_PKT_VLAN),
 	ICE_PKT_PROFILE(udp, ICE_PKT_INNER_UDP),
-	ICE_PKT_PROFILE(vlan_tcp_ipv6, ICE_PKT_OUTER_IPV6 | ICE_PKT_VLAN),
 	ICE_PKT_PROFILE(tcp_ipv6, ICE_PKT_OUTER_IPV6),
-	ICE_PKT_PROFILE(vlan_tcp, ICE_PKT_VLAN),
 	ICE_PKT_PROFILE(tcp, 0),
 };
 
@@ -5798,6 +5450,79 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	return status;
 }
 
+/**
+ * ice_dummy_packet_add_vlan - insert vlan header to dummy pkt
+ *
+ * @dummy_pkt: dummy packet profile pattern to which vlan tag(s) will be added
+ * @num_vlan: number of vlan tags
+ */
+static struct ice_dummy_pkt_profile *
+ice_dummy_packet_add_vlan(const struct ice_dummy_pkt_profile *dummy_pkt,
+			  u32 num_vlan)
+{
+	struct ice_dummy_pkt_profile *profile;
+	struct ice_dummy_pkt_offsets *offsets;
+	u32 buf_len, off, etype_off, i;
+	u8 *pkt;
+
+	if (num_vlan < 1 || num_vlan > 2)
+		return ERR_PTR(-EINVAL);
+
+	off = num_vlan * VLAN_HLEN;
+
+	buf_len = array_size(num_vlan, sizeof(ice_dummy_vlan_packet_offsets)) +
+		  dummy_pkt->offsets_len;
+	offsets = kzalloc(buf_len, GFP_KERNEL);
+	if (!offsets)
+		return ERR_PTR(-ENOMEM);
+
+	offsets[0] = dummy_pkt->offsets[0];
+	if (num_vlan == 2) {
+		offsets[1] = ice_dummy_qinq_packet_offsets[0];
+		offsets[2] = ice_dummy_qinq_packet_offsets[1];
+	} else if (num_vlan == 1) {
+		offsets[1] = ice_dummy_vlan_packet_offsets[0];
+	}
+
+	for (i = 1; dummy_pkt->offsets[i].type != ICE_PROTOCOL_LAST; i++) {
+		offsets[i + num_vlan].type = dummy_pkt->offsets[i].type;
+		offsets[i + num_vlan].offset =
+			dummy_pkt->offsets[i].offset + off;
+	}
+	offsets[i + num_vlan] = dummy_pkt->offsets[i];
+
+	etype_off = dummy_pkt->offsets[1].offset;
+
+	buf_len = array_size(num_vlan, sizeof(ice_dummy_vlan_packet)) +
+		  dummy_pkt->pkt_len;
+	pkt = kzalloc(buf_len, GFP_KERNEL);
+	if (!pkt) {
+		kfree(offsets);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	memcpy(pkt, dummy_pkt->pkt, etype_off);
+	memcpy(pkt + etype_off,
+	       num_vlan == 2 ? ice_dummy_qinq_packet : ice_dummy_vlan_packet,
+	       off);
+	memcpy(pkt + etype_off + off, dummy_pkt->pkt + etype_off,
+	       dummy_pkt->pkt_len - etype_off);
+
+	profile = kzalloc(sizeof(*profile), GFP_KERNEL);
+	if (!profile) {
+		kfree(offsets);
+		kfree(pkt);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	profile->offsets = offsets;
+	profile->pkt = pkt;
+	profile->pkt_len = buf_len;
+	profile->match |= ICE_PKT_KMALLOC;
+
+	return profile;
+}
+
 /**
  * ice_find_dummy_packet - find dummy packet
  *
@@ -5813,7 +5538,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		      enum ice_sw_tunnel_type tun_type)
 {
 	const struct ice_dummy_pkt_profile *ret = ice_dummy_pkt_profiles;
-	u32 match = 0;
+	u32 match = 0, vlan_count = 0;
 	u16 i;
 
 	switch (tun_type) {
@@ -5843,9 +5568,9 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			match |= ICE_PKT_OUTER_IPV6;
 		else if (lkups[i].type == ICE_VLAN_OFOS ||
 			 lkups[i].type == ICE_VLAN_EX)
-			match |= ICE_PKT_VLAN;
+			vlan_count++;
 		else if (lkups[i].type == ICE_VLAN_IN)
-			match |= ICE_PKT_CVLAN;
+			vlan_count++;
 		else if (lkups[i].type == ICE_ETYPE_OL &&
 			 lkups[i].h_u.ethertype.ethtype_id ==
 				cpu_to_be16(ICE_IPV6_ETHER_ID) &&
@@ -5867,6 +5592,9 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 	while (ret->match && (match & ret->match) != ret->match)
 		ret++;
 
+	if (vlan_count != 0)
+		ret = ice_dummy_packet_add_vlan(ret, vlan_count);
+
 	return ret;
 }
 
@@ -6273,16 +6001,22 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 
 	/* locate a dummy packet */
 	profile = ice_find_dummy_packet(lkups, lkups_cnt, rinfo->tun_type);
+	if (IS_ERR(profile))
+		return PTR_ERR(profile);
 
 	if (!(rinfo->sw_act.fltr_act == ICE_FWD_TO_VSI ||
 	      rinfo->sw_act.fltr_act == ICE_FWD_TO_Q ||
 	      rinfo->sw_act.fltr_act == ICE_FWD_TO_QGRP ||
-	      rinfo->sw_act.fltr_act == ICE_DROP_PACKET))
-		return -EIO;
+	      rinfo->sw_act.fltr_act == ICE_DROP_PACKET)) {
+		status = -EIO;
+		goto free_pkt_profile;
+	}
 
 	vsi_handle = rinfo->sw_act.vsi_handle;
-	if (!ice_is_vsi_valid(hw, vsi_handle))
-		return -EINVAL;
+	if (!ice_is_vsi_valid(hw, vsi_handle)) {
+		status =  -EINVAL;
+		goto free_pkt_profile;
+	}
 
 	if (rinfo->sw_act.fltr_act == ICE_FWD_TO_VSI)
 		rinfo->sw_act.fwd_id.hw_vsi_id =
@@ -6292,7 +6026,7 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 
 	status = ice_add_adv_recipe(hw, lkups, lkups_cnt, rinfo, &rid);
 	if (status)
-		return status;
+		goto free_pkt_profile;
 	m_entry = ice_find_adv_rule_entry(hw, lkups, lkups_cnt, rid, rinfo);
 	if (m_entry) {
 		/* we have to add VSI to VSI_LIST and increment vsi_count.
@@ -6311,12 +6045,14 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 			added_entry->rule_id = m_entry->rule_info.fltr_rule_id;
 			added_entry->vsi_handle = rinfo->sw_act.vsi_handle;
 		}
-		return status;
+		goto free_pkt_profile;
 	}
 	rule_buf_sz = ICE_SW_RULE_RX_TX_NO_HDR_SIZE + profile->pkt_len;
 	s_rule = kzalloc(rule_buf_sz, GFP_KERNEL);
-	if (!s_rule)
-		return -ENOMEM;
+	if (!s_rule) {
+		status = -ENOMEM;
+		goto free_pkt_profile;
+	}
 	if (!rinfo->flags_info.act_valid) {
 		act |= ICE_SINGLE_ACT_LAN_ENABLE;
 		act |= ICE_SINGLE_ACT_LB_ENABLE;
@@ -6440,6 +6176,13 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 
 	kfree(s_rule);
 
+free_pkt_profile:
+	if (profile->match & ICE_PKT_KMALLOC) {
+		kfree(profile->offsets);
+		kfree(profile->pkt);
+		kfree(profile);
+	}
+
 	return status;
 }
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

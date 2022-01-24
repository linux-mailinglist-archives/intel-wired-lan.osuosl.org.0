Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 004C24986ED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jan 2022 18:33:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86C0360EFE;
	Mon, 24 Jan 2022 17:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AuAG9Ag-J5gu; Mon, 24 Jan 2022 17:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D99C460E8B;
	Mon, 24 Jan 2022 17:33:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 64BC81BF31F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 17:33:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51AAE40209
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 17:33:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CVuvjyACIJa0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jan 2022 17:33:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A81240225
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 17:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643045596; x=1674581596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gZqimtRzu5wF1fDqE5G7NopEsGNpcEmrpuiOvwmSMjI=;
 b=nFADhPgDrCjMNYEtbSM3uEtfti1DgA6DRizx8gNUSVVvKwqn2J2JImn/
 AmE0Do5hmmi18UP+1omJeF8J1pOXZ4wrlXFeBpCiEf7NehF3QJhSYmF5w
 hFcVB7SxhM0A6CjL6ov8ei0hTsc2rDHDzkUZaHTTSHkCuRVLtA7FfMQyQ
 yKj2k/cpuMMMJOVuE2pFKp53wlJdBPBQtv+hWeTbWGsMD6yGMqZ/pb4Ty
 J73+XYbTbB49iyKrnpa2g29Plg/zhuZHE/fNCexlMthH+xIIY0t8YTk6J
 6LWnSXxQIJAdcSIAT25+TtHXq9cOYyP4RxaU7iy6moRGUryldTcjVpXPu g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="306815775"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="306815775"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 09:33:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="520030867"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 24 Jan 2022 09:33:01 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20OHWuIt010465; Mon, 24 Jan 2022 17:33:00 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jan 2022 18:31:16 +0100
Message-Id: <20220124173116.739083-6-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220124173116.739083-1-alexandr.lobakin@intel.com>
References: <20220124173116.739083-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] ice: Add support for inner etype in switchdev
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
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>

Enable support for adding TC rules that filter on the inner
EtherType field of tunneled packet headers.

Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_protocol_type.h |   2 +
 drivers/net/ethernet/intel/ice/ice_switch.c        | 272 ++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c        |  15 +-
 3 files changed, 277 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index 695b6dd61dc27..385deaa021acb 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -29,6 +29,7 @@ enum ice_protocol_type {
 	ICE_MAC_OFOS = 0,
 	ICE_MAC_IL,
 	ICE_ETYPE_OL,
+	ICE_ETYPE_IL,
 	ICE_VLAN_OFOS,
 	ICE_IPV4_OFOS,
 	ICE_IPV4_IL,
@@ -92,6 +93,7 @@ enum ice_prot_id {
 #define ICE_MAC_OFOS_HW		1
 #define ICE_MAC_IL_HW		4
 #define ICE_ETYPE_OL_HW		9
+#define ICE_ETYPE_IL_HW		10
 #define ICE_VLAN_OF_HW		16
 #define ICE_VLAN_OL_HW		17
 #define ICE_IPV4_OFOS_HW	32
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 9c40a8d58c715..d98aa35c03377 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -41,6 +41,7 @@ static const struct ice_dummy_pkt_offsets dummy_gre_tcp_packet_offsets[] = {
 	{ ICE_IPV4_OFOS,	14 },
 	{ ICE_NVGRE,		34 },
 	{ ICE_MAC_IL,		42 },
+	{ ICE_ETYPE_IL,		54 },
 	{ ICE_IPV4_IL,		56 },
 	{ ICE_TCP_IL,		76 },
 	{ ICE_PROTOCOL_LAST,	0 },
@@ -65,7 +66,8 @@ static const u8 dummy_gre_tcp_packet[] = {
 	0x00, 0x00, 0x00, 0x00,	/* ICE_MAC_IL 42 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
-	0x08, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_IL 54 */
 
 	0x45, 0x00, 0x00, 0x14,	/* ICE_IPV4_IL 56 */
 	0x00, 0x00, 0x00, 0x00,
@@ -86,6 +88,7 @@ static const struct ice_dummy_pkt_offsets dummy_gre_udp_packet_offsets[] = {
 	{ ICE_IPV4_OFOS,	14 },
 	{ ICE_NVGRE,		34 },
 	{ ICE_MAC_IL,		42 },
+	{ ICE_ETYPE_IL,		54 },
 	{ ICE_IPV4_IL,		56 },
 	{ ICE_UDP_ILOS,		76 },
 	{ ICE_PROTOCOL_LAST,	0 },
@@ -110,7 +113,8 @@ static const u8 dummy_gre_udp_packet[] = {
 	0x00, 0x00, 0x00, 0x00,	/* ICE_MAC_IL 42 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
-	0x08, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_IL 54 */
 
 	0x45, 0x00, 0x00, 0x14,	/* ICE_IPV4_IL 56 */
 	0x00, 0x00, 0x00, 0x00,
@@ -131,6 +135,7 @@ static const struct ice_dummy_pkt_offsets dummy_udp_tun_tcp_packet_offsets[] = {
 	{ ICE_GENEVE,		42 },
 	{ ICE_VXLAN_GPE,	42 },
 	{ ICE_MAC_IL,		50 },
+	{ ICE_ETYPE_IL,		62 },
 	{ ICE_IPV4_IL,		64 },
 	{ ICE_TCP_IL,		84 },
 	{ ICE_PROTOCOL_LAST,	0 },
@@ -158,7 +163,8 @@ static const u8 dummy_udp_tun_tcp_packet[] = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_IL 50 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
-	0x08, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_IL 62 */
 
 	0x45, 0x00, 0x00, 0x28, /* ICE_IPV4_IL 64 */
 	0x00, 0x01, 0x00, 0x00,
@@ -182,6 +188,7 @@ static const struct ice_dummy_pkt_offsets dummy_udp_tun_udp_packet_offsets[] = {
 	{ ICE_GENEVE,		42 },
 	{ ICE_VXLAN_GPE,	42 },
 	{ ICE_MAC_IL,		50 },
+	{ ICE_ETYPE_IL,		62 },
 	{ ICE_IPV4_IL,		64 },
 	{ ICE_UDP_ILOS,		84 },
 	{ ICE_PROTOCOL_LAST,	0 },
@@ -209,7 +216,8 @@ static const u8 dummy_udp_tun_udp_packet[] = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_IL 50 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
-	0x08, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_IL 62 */
 
 	0x45, 0x00, 0x00, 0x1c, /* ICE_IPV4_IL 64 */
 	0x00, 0x01, 0x00, 0x00,
@@ -221,6 +229,224 @@ static const u8 dummy_udp_tun_udp_packet[] = {
 	0x00, 0x08, 0x00, 0x00,
 };
 
+static const struct ice_dummy_pkt_offsets
+dummy_gre_ipv6_tcp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_NVGRE,		34 },
+	{ ICE_MAC_IL,		42 },
+	{ ICE_ETYPE_IL,		54 },
+	{ ICE_IPV6_IL,		56 },
+	{ ICE_TCP_IL,		96 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_gre_ipv6_tcp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 12 */
+
+	0x45, 0x00, 0x00, 0x66, /* ICE_IPV4_OFOS 14 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x2F, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x80, 0x00, 0x65, 0x58, /* ICE_NVGRE 34 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_IL 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x86, 0xdd,		/* ICE_ETYPE_IL 54 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_IL 56 */
+	0x00, 0x08, 0x06, 0x40,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 96 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x02, 0x20, 0x00,
+	0x00, 0x00, 0x00, 0x00
+};
+
+static const struct ice_dummy_pkt_offsets
+dummy_gre_ipv6_udp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_NVGRE,		34 },
+	{ ICE_MAC_IL,		42 },
+	{ ICE_ETYPE_IL,		54 },
+	{ ICE_IPV6_IL,		56 },
+	{ ICE_UDP_ILOS,		96 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_gre_ipv6_udp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 12 */
+
+	0x45, 0x00, 0x00, 0x5a, /* ICE_IPV4_OFOS 14 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x2F, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x80, 0x00, 0x65, 0x58, /* ICE_NVGRE 34 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_IL 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x86, 0xdd,		/* ICE_ETYPE_IL 54 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_IL 56 */
+	0x00, 0x08, 0x11, 0x40,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 96 */
+	0x00, 0x08, 0x00, 0x00,
+};
+
+static const struct ice_dummy_pkt_offsets
+dummy_udp_tun_ipv6_tcp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_VXLAN,		42 },
+	{ ICE_GENEVE,		42 },
+	{ ICE_VXLAN_GPE,	42 },
+	{ ICE_MAC_IL,		50 },
+	{ ICE_ETYPE_IL,		62 },
+	{ ICE_IPV6_IL,		64 },
+	{ ICE_TCP_IL,		104 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_udp_tun_ipv6_tcp_packet[] = {
+	0x00, 0x00, 0x00, 0x00,  /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 12 */
+
+	0x45, 0x00, 0x00, 0x6e, /* ICE_IPV4_OFOS 14 */
+	0x00, 0x01, 0x00, 0x00,
+	0x40, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x12, 0xb5, /* ICE_UDP_OF 34 */
+	0x00, 0x5a, 0x00, 0x00,
+
+	0x00, 0x00, 0x65, 0x58, /* ICE_VXLAN 42 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_IL 50 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x86, 0xdd,		/* ICE_ETYPE_IL 62 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_IL 64 */
+	0x00, 0x08, 0x06, 0x40,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 104 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x02, 0x20, 0x00,
+	0x00, 0x00, 0x00, 0x00
+};
+
+static const struct ice_dummy_pkt_offsets
+dummy_udp_tun_ipv6_udp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_VXLAN,		42 },
+	{ ICE_GENEVE,		42 },
+	{ ICE_VXLAN_GPE,	42 },
+	{ ICE_MAC_IL,		50 },
+	{ ICE_ETYPE_IL,		62 },
+	{ ICE_IPV6_IL,		64 },
+	{ ICE_UDP_ILOS,		104 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_udp_tun_ipv6_udp_packet[] = {
+	0x00, 0x00, 0x00, 0x00,  /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 12 */
+
+	0x45, 0x00, 0x00, 0x62, /* ICE_IPV4_OFOS 14 */
+	0x00, 0x01, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x12, 0xb5, /* ICE_UDP_OF 34 */
+	0x00, 0x4e, 0x00, 0x00,
+
+	0x00, 0x00, 0x65, 0x58, /* ICE_VXLAN 42 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_IL 50 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x86, 0xdd,		/* ICE_ETYPE_IL 62 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_IL 64 */
+	0x00, 0x08, 0x11, 0x40,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 104 */
+	0x00, 0x08, 0x00, 0x00,
+};
+
 /* offset info for MAC + IPv4 + UDP dummy packet */
 static const struct ice_dummy_pkt_offsets dummy_udp_packet_offsets[] = {
 	{ ICE_MAC_OFOS,		0 },
@@ -3818,6 +4044,7 @@ static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
 	{ ICE_MAC_OFOS,		{ 0, 2, 4, 6, 8, 10, 12 } },
 	{ ICE_MAC_IL,		{ 0, 2, 4, 6, 8, 10, 12 } },
 	{ ICE_ETYPE_OL,		{ 0 } },
+	{ ICE_ETYPE_IL,		{ 0 } },
 	{ ICE_VLAN_OFOS,	{ 2, 0 } },
 	{ ICE_IPV4_OFOS,	{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18 } },
 	{ ICE_IPV4_IL,		{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18 } },
@@ -3837,6 +4064,7 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
 	{ ICE_MAC_OFOS,		ICE_MAC_OFOS_HW },
 	{ ICE_MAC_IL,		ICE_MAC_IL_HW },
 	{ ICE_ETYPE_OL,		ICE_ETYPE_OL_HW },
+	{ ICE_ETYPE_IL,		ICE_ETYPE_IL_HW },
 	{ ICE_VLAN_OFOS,	ICE_VLAN_OL_HW },
 	{ ICE_IPV4_OFOS,	ICE_IPV4_OFOS_HW },
 	{ ICE_IPV4_IL,		ICE_IPV4_IL_HW },
@@ -4818,6 +5046,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		      const struct ice_dummy_pkt_offsets **offsets)
 {
 	bool tcp = false, udp = false, ipv6 = false, vlan = false;
+	bool ipv6_il = false;
 	u16 i;
 
 	for (i = 0; i < lkups_cnt; i++) {
@@ -4833,18 +5062,35 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			 lkups[i].h_u.ethertype.ethtype_id ==
 				cpu_to_be16(ICE_IPV6_ETHER_ID) &&
 			 lkups[i].m_u.ethertype.ethtype_id ==
-					cpu_to_be16(0xFFFF))
+				cpu_to_be16(0xFFFF))
 			ipv6 = true;
+		else if (lkups[i].type == ICE_ETYPE_IL &&
+			 lkups[i].h_u.ethertype.ethtype_id ==
+				cpu_to_be16(ICE_IPV6_ETHER_ID) &&
+			 lkups[i].m_u.ethertype.ethtype_id ==
+				cpu_to_be16(0xFFFF))
+			ipv6_il = true;
 	}
 
 	if (tun_type == ICE_SW_TUN_NVGRE) {
+		if (tcp && ipv6_il) {
+			*pkt = dummy_gre_ipv6_tcp_packet;
+			*pkt_len = sizeof(dummy_gre_ipv6_tcp_packet);
+			*offsets = dummy_gre_ipv6_tcp_packet_offsets;
+			return;
+		}
 		if (tcp) {
 			*pkt = dummy_gre_tcp_packet;
 			*pkt_len = sizeof(dummy_gre_tcp_packet);
 			*offsets = dummy_gre_tcp_packet_offsets;
 			return;
 		}
-
+		if (ipv6_il) {
+			*pkt = dummy_gre_ipv6_udp_packet;
+			*pkt_len = sizeof(dummy_gre_ipv6_udp_packet);
+			*offsets = dummy_gre_ipv6_udp_packet_offsets;
+			return;
+		}
 		*pkt = dummy_gre_udp_packet;
 		*pkt_len = sizeof(dummy_gre_udp_packet);
 		*offsets = dummy_gre_udp_packet_offsets;
@@ -4853,13 +5099,24 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 
 	if (tun_type == ICE_SW_TUN_VXLAN ||
 	    tun_type == ICE_SW_TUN_GENEVE) {
+		if (tcp && ipv6_il) {
+			*pkt = dummy_udp_tun_ipv6_tcp_packet;
+			*pkt_len = sizeof(dummy_udp_tun_ipv6_tcp_packet);
+			*offsets = dummy_udp_tun_ipv6_tcp_packet_offsets;
+			return;
+		}
 		if (tcp) {
 			*pkt = dummy_udp_tun_tcp_packet;
 			*pkt_len = sizeof(dummy_udp_tun_tcp_packet);
 			*offsets = dummy_udp_tun_tcp_packet_offsets;
 			return;
 		}
-
+		if (ipv6_il) {
+			*pkt = dummy_udp_tun_ipv6_udp_packet;
+			*pkt_len = sizeof(dummy_udp_tun_ipv6_udp_packet);
+			*offsets = dummy_udp_tun_ipv6_udp_packet_offsets;
+			return;
+		}
 		*pkt = dummy_udp_tun_udp_packet;
 		*pkt_len = sizeof(dummy_udp_tun_udp_packet);
 		*offsets = dummy_udp_tun_udp_packet_offsets;
@@ -4965,6 +5222,7 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			len = sizeof(struct ice_ether_hdr);
 			break;
 		case ICE_ETYPE_OL:
+		case ICE_ETYPE_IL:
 			len = sizeof(struct ice_ethtype_hdr);
 			break;
 		case ICE_VLAN_OFOS:
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 65cf32eb40466..424c74ca7d693 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -33,9 +33,7 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	if (flags & ICE_TC_FLWR_FIELD_ENC_DEST_L4_PORT)
 		lkups_cnt++;
 
-	/* currently inner etype filter isn't supported */
-	if ((flags & ICE_TC_FLWR_FIELD_ETH_TYPE_ID) &&
-	    fltr->tunnel_type == TNL_LAST)
+	if (flags & ICE_TC_FLWR_FIELD_ETH_TYPE_ID)
 		lkups_cnt++;
 
 	/* are MAC fields specified? */
@@ -64,6 +62,11 @@ static enum ice_protocol_type ice_proto_type_from_mac(bool inner)
 	return inner ? ICE_MAC_IL : ICE_MAC_OFOS;
 }
 
+static enum ice_protocol_type ice_proto_type_from_etype(bool inner)
+{
+	return inner ? ICE_ETYPE_IL : ICE_ETYPE_OL;
+}
+
 static enum ice_protocol_type ice_proto_type_from_ipv4(bool inner)
 {
 	return inner ? ICE_IPV4_IL : ICE_IPV4_OFOS;
@@ -224,8 +227,10 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 
 		headers = &tc_fltr->inner_headers;
 		inner = true;
-	} else if (flags & ICE_TC_FLWR_FIELD_ETH_TYPE_ID) {
-		list[i].type = ICE_ETYPE_OL;
+	}
+
+	if (flags & ICE_TC_FLWR_FIELD_ETH_TYPE_ID) {
+		list[i].type = ice_proto_type_from_etype(inner);
 		list[i].h_u.ethertype.ethtype_id = headers->l2_key.n_proto;
 		list[i].m_u.ethertype.ethtype_id = headers->l2_mask.n_proto;
 		i++;
-- 
cgit 1.2.3-1.el7

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

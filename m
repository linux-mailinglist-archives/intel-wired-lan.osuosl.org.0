Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCDC492964
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jan 2022 16:07:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E1EA81BB2;
	Tue, 18 Jan 2022 15:07:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bU1vD1MmsfPF; Tue, 18 Jan 2022 15:07:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F342E813A8;
	Tue, 18 Jan 2022 15:07:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85EEE1BF476
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jan 2022 21:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 71C108196E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jan 2022 21:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nEclmJWBwkQU for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Jan 2022 21:37:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43F10818EC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jan 2022 21:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642369064; x=1673905064;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/IXeFkSkt6jYKLjWG1/rbEu+LfiDMCOzoKMY/NZsXoo=;
 b=Le9R2VyqYcMQcjJbGJBYYsDhtHVCMykuzYusC2ENWGxpoFlEDwdh7Bf5
 BDMhWr9muEQschTPYY23WrLEvHHj9wTx6Fz/9QwhBjlgirswimrwAzuma
 SX1aBJM/SfEFxzJ0kU9H4dF+29cwFBvXmUn4vvXh2wj5wju9tad8CzOL/
 yqO3d18nDjjC3uvLmDyAnTkYehcmIk830CuPxbk/7xG8jjhGtdP7f/W4f
 iMLA7i4GcVRsQehEChNNMicmnUVtRWMs0VafprhBuzqHdmVE2pM7yu5Ya
 j0bmsQkGeKNRZaESKRmmcyaSE4fXfSWcN5mSjCWypSjEvuI4cT0qKLxx1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10229"; a="242076549"
X-IronPort-AV: E=Sophos;i="5.88,293,1635231600"; d="scan'208";a="242076549"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2022 13:37:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,293,1635231600"; d="scan'208";a="529866944"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jan 2022 13:37:42 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 16 Jan 2022 10:01:43 +0100
Message-Id: <20220116090142.2934-1-martyna.szapar-mudlaw@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 18 Jan 2022 15:07:35 +0000
Subject: [Intel-wired-lan] [PATCH net-next] ice: Add support for inner etype
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enable support for adding TC rules that filter on the inner
EtherType field of tunneled packet headers.

Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
---
 .../ethernet/intel/ice/ice_protocol_type.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 272 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  15 +-
 3 files changed, 277 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index dc1b0e9e6df5..3ca15a64476e 100644
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
@@ -91,6 +92,7 @@ enum ice_prot_id {
 #define ICE_MAC_OFOS_HW		1
 #define ICE_MAC_IL_HW		4
 #define ICE_ETYPE_OL_HW		9
+#define ICE_ETYPE_IL_HW		10
 #define ICE_VLAN_OF_HW		16
 #define ICE_VLAN_OL_HW		17
 #define ICE_IPV4_OFOS_HW	32
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index e477c2b1d5bb..cda005503052 100644
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
@@ -3755,6 +3981,7 @@ static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
 	{ ICE_MAC_OFOS,		{ 0, 2, 4, 6, 8, 10, 12 } },
 	{ ICE_MAC_IL,		{ 0, 2, 4, 6, 8, 10, 12 } },
 	{ ICE_ETYPE_OL,		{ 0 } },
+	{ ICE_ETYPE_IL,		{ 0 } },
 	{ ICE_VLAN_OFOS,	{ 2, 0 } },
 	{ ICE_IPV4_OFOS,	{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18 } },
 	{ ICE_IPV4_IL,		{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18 } },
@@ -3774,6 +4001,7 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
 	{ ICE_MAC_OFOS,		ICE_MAC_OFOS_HW },
 	{ ICE_MAC_IL,		ICE_MAC_IL_HW },
 	{ ICE_ETYPE_OL,		ICE_ETYPE_OL_HW },
+	{ ICE_ETYPE_IL,		ICE_ETYPE_IL_HW },
 	{ ICE_VLAN_OFOS,	ICE_VLAN_OL_HW },
 	{ ICE_IPV4_OFOS,	ICE_IPV4_OFOS_HW },
 	{ ICE_IPV4_IL,		ICE_IPV4_IL_HW },
@@ -4739,6 +4967,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		      const struct ice_dummy_pkt_offsets **offsets)
 {
 	bool tcp = false, udp = false, ipv6 = false, vlan = false;
+	bool ipv6_il = false;
 	u16 i;
 
 	for (i = 0; i < lkups_cnt; i++) {
@@ -4754,18 +4983,35 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
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
@@ -4774,13 +5020,24 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 
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
@@ -4886,6 +5143,7 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			len = sizeof(struct ice_ether_hdr);
 			break;
 		case ICE_ETYPE_OL:
+		case ICE_ETYPE_IL:
 			len = sizeof(struct ice_ethtype_hdr);
 			break;
 		case ICE_VLAN_OFOS:
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index e8aab664270a..d19def5ddb1c 100644
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
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

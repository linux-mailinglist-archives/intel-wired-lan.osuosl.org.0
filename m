Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FC64DDE7E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Mar 2022 17:18:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 444B541A21;
	Fri, 18 Mar 2022 16:18:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EiLTbA1ixyQW; Fri, 18 Mar 2022 16:18:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8C3641A41;
	Fri, 18 Mar 2022 16:18:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85AD21BF21A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 16:18:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7457F607F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 16:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PPM8-6ZY50Ft for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Mar 2022 16:18:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDC056080B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 16:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647620313; x=1679156313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qMjhIkLt6W0+6Lbt3Yyz+N3duk23vmNc2+yCEC07C3U=;
 b=ie6m2zE1r0T6ak7UK02X7MCWFm81DZF4dhlNKGIqTaqQtivBUDCuuZkS
 7nkwrVFLCaSYoDTLKKwzX1akUNN4uJu5fdtu3SOmeK8CwCtHs9Xc9V8Kb
 t2MRrk1xBcEeCnCzeFZSKqRtAUaDnoW6JlgEImdnDHjAX4UP/XD8e7QB7
 4XcIZhu5OZK2p/c7eOFS2yDnGFmru72NjtBqmz8jw9mFcyCt6gi/UWKCm
 E+yTKawukfq0eil+j3QSto2duLiUmlCAHO4veSzVdz1/3Uakrbc+x90/x
 H1IcdxLR/t0t7k34iOyeKjC3D8PH5ztGZbbX8txvurvJlVMnN1zX4W7z2 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="320376209"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="320376209"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 09:18:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="599551816"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 18 Mar 2022 09:18:28 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22IGIOmG024113; Fri, 18 Mar 2022 16:18:27 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Mar 2022 17:17:12 +0100
Message-Id: <20220318161713.680436-5-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220318161713.680436-1-alexandr.lobakin@intel.com>
References: <20220318161713.680436-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 4/5] ice: switch: use
 convenience macros to declare dummy pkt templates
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

Declarations of dummy/template packet headers and offsets can be
minified to improve readability and simplify adding new templates.
Move all the repetitive constructions into two macros and let them
do the name and type expansions.
Linewrap removal is yet another positive side effect.

Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 133 +++++++++-----------
 1 file changed, 62 insertions(+), 71 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 12fb0f6aa350..8d4e49173dd1 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -41,15 +41,22 @@ struct ice_dummy_pkt_profile {
 	u64 pkt_len:16;
 };
 
+#define ICE_DECLARE_PKT_OFFSETS(type)					\
+	static const struct ice_dummy_pkt_offsets			\
+	ice_dummy_##type##_packet_offsets[]
+
+#define ICE_DECLARE_PKT_TEMPLATE(type)					\
+	static const u8 ice_dummy_##type##_packet[]
+
 #define ICE_PKT_PROFILE(type) ({					\
 	(struct ice_dummy_pkt_profile){					\
-		.pkt		= dummy_##type##_packet,		\
-		.pkt_len	= sizeof(dummy_##type##_packet),	\
-		.offsets	= dummy_##type##_packet_offsets,	\
+		.pkt		= ice_dummy_##type##_packet,		\
+		.pkt_len	= sizeof(ice_dummy_##type##_packet),	\
+		.offsets	= ice_dummy_##type##_packet_offsets,	\
 	};								\
 })
 
-static const struct ice_dummy_pkt_offsets dummy_gre_tcp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(gre_tcp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
 	{ ICE_IPV4_OFOS,	14 },
@@ -61,7 +68,7 @@ static const struct ice_dummy_pkt_offsets dummy_gre_tcp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_gre_tcp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(gre_tcp) = {
 	0x00, 0x00, 0x00, 0x00,	/* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -96,7 +103,7 @@ static const u8 dummy_gre_tcp_packet[] = {
 	0x00, 0x00, 0x00, 0x00
 };
 
-static const struct ice_dummy_pkt_offsets dummy_gre_udp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(gre_udp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
 	{ ICE_IPV4_OFOS,	14 },
@@ -108,7 +115,7 @@ static const struct ice_dummy_pkt_offsets dummy_gre_udp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_gre_udp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(gre_udp) = {
 	0x00, 0x00, 0x00, 0x00,	/* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -140,7 +147,7 @@ static const u8 dummy_gre_udp_packet[] = {
 	0x00, 0x08, 0x00, 0x00,
 };
 
-static const struct ice_dummy_pkt_offsets dummy_udp_tun_tcp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(udp_tun_tcp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
 	{ ICE_IPV4_OFOS,	14 },
@@ -155,7 +162,7 @@ static const struct ice_dummy_pkt_offsets dummy_udp_tun_tcp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_udp_tun_tcp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(udp_tun_tcp) = {
 	0x00, 0x00, 0x00, 0x00,  /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -193,7 +200,7 @@ static const u8 dummy_udp_tun_tcp_packet[] = {
 	0x00, 0x00, 0x00, 0x00
 };
 
-static const struct ice_dummy_pkt_offsets dummy_udp_tun_udp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(udp_tun_udp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
 	{ ICE_IPV4_OFOS,	14 },
@@ -208,7 +215,7 @@ static const struct ice_dummy_pkt_offsets dummy_udp_tun_udp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_udp_tun_udp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(udp_tun_udp) = {
 	0x00, 0x00, 0x00, 0x00,  /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -243,8 +250,7 @@ static const u8 dummy_udp_tun_udp_packet[] = {
 	0x00, 0x08, 0x00, 0x00,
 };
 
-static const struct ice_dummy_pkt_offsets
-dummy_gre_ipv6_tcp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(gre_ipv6_tcp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
 	{ ICE_IPV4_OFOS,	14 },
@@ -256,7 +262,7 @@ dummy_gre_ipv6_tcp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_gre_ipv6_tcp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(gre_ipv6_tcp) = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -296,8 +302,7 @@ static const u8 dummy_gre_ipv6_tcp_packet[] = {
 	0x00, 0x00, 0x00, 0x00
 };
 
-static const struct ice_dummy_pkt_offsets
-dummy_gre_ipv6_udp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(gre_ipv6_udp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
 	{ ICE_IPV4_OFOS,	14 },
@@ -309,7 +314,7 @@ dummy_gre_ipv6_udp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_gre_ipv6_udp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(gre_ipv6_udp) = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -346,8 +351,7 @@ static const u8 dummy_gre_ipv6_udp_packet[] = {
 	0x00, 0x08, 0x00, 0x00,
 };
 
-static const struct ice_dummy_pkt_offsets
-dummy_udp_tun_ipv6_tcp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(udp_tun_ipv6_tcp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
 	{ ICE_IPV4_OFOS,	14 },
@@ -362,7 +366,7 @@ dummy_udp_tun_ipv6_tcp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_udp_tun_ipv6_tcp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(udp_tun_ipv6_tcp) = {
 	0x00, 0x00, 0x00, 0x00,  /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -405,8 +409,7 @@ static const u8 dummy_udp_tun_ipv6_tcp_packet[] = {
 	0x00, 0x00, 0x00, 0x00
 };
 
-static const struct ice_dummy_pkt_offsets
-dummy_udp_tun_ipv6_udp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(udp_tun_ipv6_udp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
 	{ ICE_IPV4_OFOS,	14 },
@@ -421,7 +424,7 @@ dummy_udp_tun_ipv6_udp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_udp_tun_ipv6_udp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(udp_tun_ipv6_udp) = {
 	0x00, 0x00, 0x00, 0x00,  /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -462,7 +465,7 @@ static const u8 dummy_udp_tun_ipv6_udp_packet[] = {
 };
 
 /* offset info for MAC + IPv4 + UDP dummy packet */
-static const struct ice_dummy_pkt_offsets dummy_udp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(udp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
 	{ ICE_IPV4_OFOS,	14 },
@@ -471,7 +474,7 @@ static const struct ice_dummy_pkt_offsets dummy_udp_packet_offsets[] = {
 };
 
 /* Dummy packet for MAC + IPv4 + UDP */
-static const u8 dummy_udp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(udp) = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -491,7 +494,7 @@ static const u8 dummy_udp_packet[] = {
 };
 
 /* offset info for MAC + VLAN + IPv4 + UDP dummy packet */
-static const struct ice_dummy_pkt_offsets dummy_vlan_udp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(vlan_udp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_VLAN_OFOS,	12 },
 	{ ICE_ETYPE_OL,		16 },
@@ -501,7 +504,7 @@ static const struct ice_dummy_pkt_offsets dummy_vlan_udp_packet_offsets[] = {
 };
 
 /* C-tag (801.1Q), IPv4:UDP dummy packet */
-static const u8 dummy_vlan_udp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(vlan_udp) = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -523,7 +526,7 @@ static const u8 dummy_vlan_udp_packet[] = {
 };
 
 /* offset info for MAC + IPv4 + TCP dummy packet */
-static const struct ice_dummy_pkt_offsets dummy_tcp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(tcp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
 	{ ICE_IPV4_OFOS,	14 },
@@ -532,7 +535,7 @@ static const struct ice_dummy_pkt_offsets dummy_tcp_packet_offsets[] = {
 };
 
 /* Dummy packet for MAC + IPv4 + TCP */
-static const u8 dummy_tcp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(tcp) = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -555,7 +558,7 @@ static const u8 dummy_tcp_packet[] = {
 };
 
 /* offset info for MAC + VLAN (C-tag, 802.1Q) + IPv4 + TCP dummy packet */
-static const struct ice_dummy_pkt_offsets dummy_vlan_tcp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(vlan_tcp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_VLAN_OFOS,	12 },
 	{ ICE_ETYPE_OL,		16 },
@@ -565,7 +568,7 @@ static const struct ice_dummy_pkt_offsets dummy_vlan_tcp_packet_offsets[] = {
 };
 
 /* C-tag (801.1Q), IPv4:TCP dummy packet */
-static const u8 dummy_vlan_tcp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(vlan_tcp) = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -589,7 +592,7 @@ static const u8 dummy_vlan_tcp_packet[] = {
 	0x00, 0x00,	/* 2 bytes for 4 byte alignment */
 };
 
-static const struct ice_dummy_pkt_offsets dummy_tcp_ipv6_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(tcp_ipv6) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
 	{ ICE_IPV6_OFOS,	14 },
@@ -597,7 +600,7 @@ static const struct ice_dummy_pkt_offsets dummy_tcp_ipv6_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_tcp_ipv6_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(tcp_ipv6) = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -625,8 +628,7 @@ static const u8 dummy_tcp_ipv6_packet[] = {
 };
 
 /* C-tag (802.1Q): IPv6 + TCP */
-static const struct ice_dummy_pkt_offsets
-dummy_vlan_tcp_ipv6_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(vlan_tcp_ipv6) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_VLAN_OFOS,	12 },
 	{ ICE_ETYPE_OL,		16 },
@@ -636,7 +638,7 @@ dummy_vlan_tcp_ipv6_packet_offsets[] = {
 };
 
 /* C-tag (802.1Q), IPv6 + TCP dummy packet */
-static const u8 dummy_vlan_tcp_ipv6_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(vlan_tcp_ipv6) = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -666,7 +668,7 @@ static const u8 dummy_vlan_tcp_ipv6_packet[] = {
 };
 
 /* IPv6 + UDP */
-static const struct ice_dummy_pkt_offsets dummy_udp_ipv6_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(udp_ipv6) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
 	{ ICE_IPV6_OFOS,	14 },
@@ -675,7 +677,7 @@ static const struct ice_dummy_pkt_offsets dummy_udp_ipv6_packet_offsets[] = {
 };
 
 /* IPv6 + UDP dummy packet */
-static const u8 dummy_udp_ipv6_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(udp_ipv6) = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -703,8 +705,7 @@ static const u8 dummy_udp_ipv6_packet[] = {
 };
 
 /* C-tag (802.1Q): IPv6 + UDP */
-static const struct ice_dummy_pkt_offsets
-dummy_vlan_udp_ipv6_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(vlan_udp_ipv6) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_VLAN_OFOS,	12 },
 	{ ICE_ETYPE_OL,		16 },
@@ -714,7 +715,7 @@ dummy_vlan_udp_ipv6_packet_offsets[] = {
 };
 
 /* C-tag (802.1Q), IPv6 + UDP dummy packet */
-static const u8 dummy_vlan_udp_ipv6_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(vlan_udp_ipv6) = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -741,8 +742,7 @@ static const u8 dummy_vlan_udp_ipv6_packet[] = {
 };
 
 /* Outer IPv4 + Outer UDP + GTP + Inner IPv4 + Inner TCP */
-static const
-struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv4_tcp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(ipv4_gtpu_ipv4_tcp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_IPV4_OFOS,	14 },
 	{ ICE_UDP_OF,		34 },
@@ -752,7 +752,7 @@ struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv4_tcp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_ipv4_gtpu_ipv4_tcp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(ipv4_gtpu_ipv4_tcp) = {
 	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -790,8 +790,7 @@ static const u8 dummy_ipv4_gtpu_ipv4_tcp_packet[] = {
 };
 
 /* Outer IPv4 + Outer UDP + GTP + Inner IPv4 + Inner UDP */
-static const
-struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv4_udp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(ipv4_gtpu_ipv4_udp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_IPV4_OFOS,	14 },
 	{ ICE_UDP_OF,		34 },
@@ -801,7 +800,7 @@ struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv4_udp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_ipv4_gtpu_ipv4_udp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(ipv4_gtpu_ipv4_udp) = {
 	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -836,8 +835,7 @@ static const u8 dummy_ipv4_gtpu_ipv4_udp_packet[] = {
 };
 
 /* Outer IPv6 + Outer UDP + GTP + Inner IPv4 + Inner TCP */
-static const
-struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv6_tcp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(ipv4_gtpu_ipv6_tcp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_IPV4_OFOS,	14 },
 	{ ICE_UDP_OF,		34 },
@@ -847,7 +845,7 @@ struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv6_tcp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_ipv4_gtpu_ipv6_tcp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(ipv4_gtpu_ipv6_tcp) = {
 	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -889,8 +887,7 @@ static const u8 dummy_ipv4_gtpu_ipv6_tcp_packet[] = {
 	0x00, 0x00, /* 2 bytes for 4 byte alignment */
 };
 
-static const
-struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv6_udp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(ipv4_gtpu_ipv6_udp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_IPV4_OFOS,	14 },
 	{ ICE_UDP_OF,		34 },
@@ -900,7 +897,7 @@ struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv6_udp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_ipv4_gtpu_ipv6_udp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(ipv4_gtpu_ipv6_udp) = {
 	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -939,8 +936,7 @@ static const u8 dummy_ipv4_gtpu_ipv6_udp_packet[] = {
 	0x00, 0x00, /* 2 bytes for 4 byte alignment */
 };
 
-static const
-struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv4_tcp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(ipv6_gtpu_ipv4_tcp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_IPV6_OFOS,	14 },
 	{ ICE_UDP_OF,		54 },
@@ -950,7 +946,7 @@ struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv4_tcp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_ipv6_gtpu_ipv4_tcp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(ipv6_gtpu_ipv4_tcp) = {
 	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -992,8 +988,7 @@ static const u8 dummy_ipv6_gtpu_ipv4_tcp_packet[] = {
 	0x00, 0x00, /* 2 bytes for 4 byte alignment */
 };
 
-static const
-struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv4_udp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(ipv6_gtpu_ipv4_udp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_IPV6_OFOS,	14 },
 	{ ICE_UDP_OF,		54 },
@@ -1003,7 +998,7 @@ struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv4_udp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_ipv6_gtpu_ipv4_udp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(ipv6_gtpu_ipv4_udp) = {
 	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -1042,8 +1037,7 @@ static const u8 dummy_ipv6_gtpu_ipv4_udp_packet[] = {
 	0x00, 0x00, /* 2 bytes for 4 byte alignment */
 };
 
-static const
-struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv6_tcp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(ipv6_gtpu_ipv6_tcp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_IPV6_OFOS,	14 },
 	{ ICE_UDP_OF,		54 },
@@ -1053,7 +1047,7 @@ struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv6_tcp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_ipv6_gtpu_ipv6_tcp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(ipv6_gtpu_ipv6_tcp) = {
 	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -1100,8 +1094,7 @@ static const u8 dummy_ipv6_gtpu_ipv6_tcp_packet[] = {
 	0x00, 0x00, /* 2 bytes for 4 byte alignment */
 };
 
-static const
-struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv6_udp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(ipv6_gtpu_ipv6_udp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_IPV6_OFOS,	14 },
 	{ ICE_UDP_OF,		54 },
@@ -1111,7 +1104,7 @@ struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv6_udp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_ipv6_gtpu_ipv6_udp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(ipv6_gtpu_ipv6_udp) = {
 	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -1155,8 +1148,7 @@ static const u8 dummy_ipv6_gtpu_ipv6_udp_packet[] = {
 	0x00, 0x00, /* 2 bytes for 4 byte alignment */
 };
 
-static const
-struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv4_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(ipv4_gtpu_ipv4) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_IPV4_OFOS,	14 },
 	{ ICE_UDP_OF,		34 },
@@ -1164,7 +1156,7 @@ struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv4_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_ipv4_gtpu_ipv4_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(ipv4_gtpu_ipv4) = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
@@ -1194,8 +1186,7 @@ static const u8 dummy_ipv4_gtpu_ipv4_packet[] = {
 	0x00, 0x00,
 };
 
-static const
-struct ice_dummy_pkt_offsets dummy_ipv6_gtp_packet_offsets[] = {
+ICE_DECLARE_PKT_OFFSETS(ipv6_gtp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_IPV6_OFOS,	14 },
 	{ ICE_UDP_OF,		54 },
@@ -1203,7 +1194,7 @@ struct ice_dummy_pkt_offsets dummy_ipv6_gtp_packet_offsets[] = {
 	{ ICE_PROTOCOL_LAST,	0 },
 };
 
-static const u8 dummy_ipv6_gtp_packet[] = {
+ICE_DECLARE_PKT_TEMPLATE(ipv6_gtp) = {
 	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
 	0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00,
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

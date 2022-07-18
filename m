Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8EE57820C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jul 2022 14:19:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDA99409F3;
	Mon, 18 Jul 2022 12:19:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDA99409F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658146753;
	bh=+RH1JmzKMXZelGDzgJEGkhLKgZNH93ezEcP35DqxMxw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VN8Xxl66THR+otVlQ7Bv5os9IkVRfe+HSUQ6aq4QGgTU/nSZfMKCaYwM3uxZqOYe6
	 zkWopKqKDMNb14HQFraRoRtxjaQCA3aAO5hz/XQPBciO2tAvUeITzROLbyo4nr/n1X
	 39iZzmDKsGKenffZHSI6G/I8jpAKk6Vdq2ONo/CCnsd86lN/D3g6z2kOuODhl/NdMv
	 GggJx+DF4I2Yq6Xn9NSvUW6odmLCic++fKEOwa5vvvgZcgTqU94jaRNswZ1YoJGiDM
	 FHL0Ebm8aJXhxKhaV2GnJDvpt4yM3HUm4qUSj1PlhL5tPTdGw7W2a2jqeuYYC0vQ4p
	 bvc9+8xVESH9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ot2yUMa2AIaS; Mon, 18 Jul 2022 12:19:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFDF6410A1;
	Mon, 18 Jul 2022 12:19:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFDF6410A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F4501BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:18:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 08FB54036F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:18:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08FB54036F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKluwjvS3lUZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jul 2022 12:18:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8FD9408C8
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D8FD9408C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:18:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="283771633"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="283771633"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 05:18:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="601204878"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 18 Jul 2022 05:18:51 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26ICIfCw016026; Mon, 18 Jul 2022 13:18:48 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Mon, 18 Jul 2022 14:18:13 +0200
Message-Id: <20220718121813.159102-5-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220718121813.159102-1-marcin.szycik@linux.intel.com>
References: <20220718121813.159102-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658146735; x=1689682735;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Baprpetq/tazRGp+iDBt4UwDTMGa0gZMl/SyLMtMOE=;
 b=nuzti6+jRjJksKn2qhrMm6sx99fCkvJ/HPn4DfhDJNFPGuGYz3KU0iJ2
 73trEChdvyzrlcokIgu4pVaymbEjy4d7bOrQOS+m/7kDcOoXlsWl9uRfm
 nf87ygLoiYpB1FMRmk171GY0l5169A4wGsGVq5sA3DUt5NPL26hVV2ZvA
 wK26A201tjBbUxvai4Wu4qSF/6YeYCMq3sUtdPR5VKxCsZ2UK5RsG3mXv
 Uuwf05M6hXvVJJojl681qY75uPSJO6kvLlXGMyJo7HdfCFFK08olcRhei
 lzctoyIMPul91GaaqBnZgf8FdhUgfhtZ79e3XVrCOk9no5/h+v1mcbDi8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nuzti6+j
Subject: [Intel-wired-lan] [RFC PATCH net-next v6 4/4] ice: Add support for
 PPPoE hardware offload
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, paulb@nvidia.com,
 edumazet@google.com, boris.sukholitko@broadcom.com, jiri@resnulli.us,
 paulus@samba.org, gnault@redhat.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, zhangkaiheb@126.com,
 pablo@netfilter.org, baowen.zheng@corigine.com, komachi.yoshiki@gmail.com,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, pabeni@redhat.com,
 gustavoars@kernel.org, mostrows@speakeasy.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for creating PPPoE filters in switchdev mode. Add support
for parsing PPPoE and PPP-specific tc options: pppoe_sid and ppp_proto.

Example filter:
tc filter add dev $PF1 ingress protocol ppp_ses prio 1 flower pppoe_sid \
    1234 ppp_proto ip skip_sw action mirred egress redirect dev $VF1_PR

Changes in iproute2 are required to use the new fields.

ICE COMMS DDP package is required to create a filter as it contains PPPoE
profiles. Added a warning message when loaded DDP package does not contain
required profiles.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v4:
  * adapted code to the redefined ice_tc_pppoe_hdr (session_id is now 
    stored in __be16)
  * removed note about missing support for vlan fields:
    263957263a00 ("ice: switch: dynamically add VLAN headers to dummy packets")
    is already accepted
  * always add an ethtype lookup if PPP/PPPoE options are provided (to 
    prevent setting incorrect ethtype)
  * rebase
v2: wrap one long line

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   5 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  11 ++
 drivers/net/ethernet/intel/ice/ice_switch.c   | 165 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  71 +++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   8 +
 6 files changed, 259 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 60453b3b8d23..0e48a930f004 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -52,6 +52,7 @@
 #include <net/udp_tunnel.h>
 #include <net/vxlan.h>
 #include <net/gtp.h>
+#include <linux/ppp_defs.h>
 #include "ice_devids.h"
 #include "ice_type.h"
 #include "ice_txrx.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index ada5198b5b16..4b3bb19e1d06 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1964,8 +1964,11 @@ ice_get_sw_fv_list(struct ice_hw *hw, struct ice_prot_lkup_ext *lkups,
 			}
 		}
 	} while (fv);
-	if (list_empty(fv_list))
+	if (list_empty(fv_list)) {
+		dev_warn(ice_hw_to_dev(hw), "Required profiles not found in currently loaded DDP package");
 		return -EIO;
+	}
+
 	return 0;
 
 err:
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index d4a0d089649c..560efc7654c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -43,6 +43,7 @@ enum ice_protocol_type {
 	ICE_NVGRE,
 	ICE_GTP,
 	ICE_GTP_NO_PAY,
+	ICE_PPPOE,
 	ICE_VLAN_EX,
 	ICE_VLAN_IN,
 	ICE_VXLAN_GPE,
@@ -109,6 +110,7 @@ enum ice_prot_id {
 #define ICE_TCP_IL_HW		49
 #define ICE_UDP_ILOS_HW		53
 #define ICE_GRE_OF_HW		64
+#define ICE_PPPOE_HW		103
 
 #define ICE_UDP_OF_HW	52 /* UDP Tunnels */
 #define ICE_META_DATA_ID_HW 255 /* this is used for tunnel and VLAN type */
@@ -207,6 +209,14 @@ struct ice_udp_gtp_hdr {
 	u8 rsvrd;
 };
 
+struct ice_pppoe_hdr {
+	u8 rsrvd_ver_type;
+	u8 rsrvd_code;
+	__be16 session_id;
+	__be16 length;
+	__be16 ppp_prot_id; /* control and data only */
+};
+
 struct ice_nvgre_hdr {
 	__be16 flags;
 	__be16 protocol;
@@ -224,6 +234,7 @@ union ice_prot_hdr {
 	struct ice_udp_tnl_hdr tnl_hdr;
 	struct ice_nvgre_hdr nvgre_hdr;
 	struct ice_udp_gtp_hdr gtp_hdr;
+	struct ice_pppoe_hdr pppoe_hdr;
 };
 
 /* This is mapping table entry that maps every word within a given protocol
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 2d1274774987..4a6a8334a0e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -41,6 +41,7 @@ enum {
 	ICE_PKT_INNER_UDP	= BIT(7),
 	ICE_PKT_GTP_NOPAY	= BIT(8),
 	ICE_PKT_KMALLOC		= BIT(9),
+	ICE_PKT_PPPOE		= BIT(10),
 };
 
 struct ice_dummy_pkt_offsets {
@@ -1109,6 +1110,154 @@ ICE_DECLARE_PKT_TEMPLATE(ipv6_gtp) = {
 	0x00, 0x00,
 };
 
+ICE_DECLARE_PKT_OFFSETS(pppoe_ipv4_tcp) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_PPPOE,		14 },
+	{ ICE_IPV4_OFOS,	22 },
+	{ ICE_TCP_IL,		42 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(pppoe_ipv4_tcp) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x88, 0x64,		/* ICE_ETYPE_OL 12 */
+
+	0x11, 0x00, 0x00, 0x00, /* ICE_PPPOE 14 */
+	0x00, 0x16,
+
+	0x00, 0x21,		/* PPP Link Layer 20 */
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
+	0x00, 0x00,		/* 2 bytes for 4 bytes alignment */
+};
+
+ICE_DECLARE_PKT_OFFSETS(pppoe_ipv4_udp) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_PPPOE,		14 },
+	{ ICE_IPV4_OFOS,	22 },
+	{ ICE_UDP_ILOS,		42 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(pppoe_ipv4_udp) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x88, 0x64,		/* ICE_ETYPE_OL 12 */
+
+	0x11, 0x00, 0x00, 0x00, /* ICE_PPPOE 14 */
+	0x00, 0x16,
+
+	0x00, 0x21,		/* PPP Link Layer 20 */
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
+	0x00, 0x00,		/* 2 bytes for 4 bytes alignment */
+};
+
+ICE_DECLARE_PKT_OFFSETS(pppoe_ipv6_tcp) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_PPPOE,		14 },
+	{ ICE_IPV6_OFOS,	22 },
+	{ ICE_TCP_IL,		62 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(pppoe_ipv6_tcp) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x88, 0x64,		/* ICE_ETYPE_OL 12 */
+
+	0x11, 0x00, 0x00, 0x00, /* ICE_PPPOE 14 */
+	0x00, 0x2a,
+
+	0x00, 0x57,		/* PPP Link Layer 20 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 22 */
+	0x00, 0x14, 0x06, 0x00, /* Next header is TCP */
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
+	0x00, 0x00,		/* 2 bytes for 4 bytes alignment */
+};
+
+ICE_DECLARE_PKT_OFFSETS(pppoe_ipv6_udp) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_PPPOE,		14 },
+	{ ICE_IPV6_OFOS,	22 },
+	{ ICE_UDP_ILOS,		62 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(pppoe_ipv6_udp) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x88, 0x64,		/* ICE_ETYPE_OL 12 */
+
+	0x11, 0x00, 0x00, 0x00, /* ICE_PPPOE 14 */
+	0x00, 0x2a,
+
+	0x00, 0x57,		/* PPP Link Layer 20 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 22 */
+	0x00, 0x08, 0x11, 0x00, /* Next header UDP*/
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
+	0x00, 0x00,		/* 2 bytes for 4 bytes alignment */
+};
+
 static const struct ice_dummy_pkt_profile ice_dummy_pkt_profiles[] = {
 	ICE_PKT_PROFILE(ipv6_gtp, ICE_PKT_TUN_GTPU | ICE_PKT_OUTER_IPV6 |
 				  ICE_PKT_GTP_NOPAY),
@@ -1135,6 +1284,11 @@ static const struct ice_dummy_pkt_profile ice_dummy_pkt_profiles[] = {
 	ICE_PKT_PROFILE(ipv4_gtpu_ipv4_tcp, ICE_PKT_TUN_GTPU),
 	ICE_PKT_PROFILE(ipv6_gtp, ICE_PKT_TUN_GTPC | ICE_PKT_OUTER_IPV6),
 	ICE_PKT_PROFILE(ipv4_gtpu_ipv4, ICE_PKT_TUN_GTPC),
+	ICE_PKT_PROFILE(pppoe_ipv6_udp, ICE_PKT_PPPOE | ICE_PKT_OUTER_IPV6 |
+					ICE_PKT_INNER_UDP),
+	ICE_PKT_PROFILE(pppoe_ipv6_tcp, ICE_PKT_PPPOE | ICE_PKT_OUTER_IPV6),
+	ICE_PKT_PROFILE(pppoe_ipv4_udp, ICE_PKT_PPPOE | ICE_PKT_INNER_UDP),
+	ICE_PKT_PROFILE(pppoe_ipv4_tcp, ICE_PKT_PPPOE),
 	ICE_PKT_PROFILE(gre_ipv6_tcp, ICE_PKT_TUN_NVGRE | ICE_PKT_INNER_IPV6 |
 				      ICE_PKT_INNER_TCP),
 	ICE_PKT_PROFILE(gre_tcp, ICE_PKT_TUN_NVGRE | ICE_PKT_INNER_TCP),
@@ -4480,6 +4634,7 @@ static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
 	{ ICE_NVGRE,		{ 0, 2, 4, 6 } },
 	{ ICE_GTP,		{ 8, 10, 12, 14, 16, 18, 20, 22 } },
 	{ ICE_GTP_NO_PAY,	{ 8, 10, 12, 14 } },
+	{ ICE_PPPOE,		{ 0, 2, 4, 6 } },
 	{ ICE_VLAN_EX,          { 2, 0 } },
 	{ ICE_VLAN_IN,          { 2, 0 } },
 };
@@ -4502,6 +4657,7 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
 	{ ICE_NVGRE,		ICE_GRE_OF_HW },
 	{ ICE_GTP,		ICE_UDP_OF_HW },
 	{ ICE_GTP_NO_PAY,	ICE_UDP_ILOS_HW },
+	{ ICE_PPPOE,		ICE_PPPOE_HW },
 	{ ICE_VLAN_EX,          ICE_VLAN_OF_HW },
 	{ ICE_VLAN_IN,          ICE_VLAN_OL_HW },
 };
@@ -5580,6 +5736,12 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 			match |= ICE_PKT_INNER_IPV6;
 		else if (lkups[i].type == ICE_GTP_NO_PAY)
 			match |= ICE_PKT_GTP_NOPAY;
+		else if (lkups[i].type == ICE_PPPOE) {
+			match |= ICE_PKT_PPPOE;
+			if (lkups[i].h_u.pppoe_hdr.ppp_prot_id ==
+			    htons(PPP_IPV6))
+				match |= ICE_PKT_OUTER_IPV6;
+		}
 	}
 
 	while (ret->match && (match & ret->match) != ret->match)
@@ -5677,6 +5839,9 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		case ICE_GTP:
 			len = sizeof(struct ice_udp_gtp_hdr);
 			break;
+		case ICE_PPPOE:
+			len = sizeof(struct ice_pppoe_hdr);
+			break;
 		default:
 			return -EINVAL;
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 14795157846b..a298862857a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -54,6 +54,11 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	if (flags & ICE_TC_FLWR_FIELD_CVLAN)
 		lkups_cnt++;
 
+	/* are PPPoE options specified? */
+	if (flags & (ICE_TC_FLWR_FIELD_PPPOE_SESSID |
+		     ICE_TC_FLWR_FIELD_PPP_PROTO))
+		lkups_cnt++;
+
 	/* are IPv[4|6] fields specified? */
 	if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV4 | ICE_TC_FLWR_FIELD_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_DEST_IPV6 | ICE_TC_FLWR_FIELD_SRC_IPV6))
@@ -350,6 +355,28 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 		i++;
 	}
 
+	if (flags & (ICE_TC_FLWR_FIELD_PPPOE_SESSID |
+		     ICE_TC_FLWR_FIELD_PPP_PROTO)) {
+		struct ice_pppoe_hdr *vals, *masks;
+
+		vals = &list[i].h_u.pppoe_hdr;
+		masks = &list[i].m_u.pppoe_hdr;
+
+		list[i].type = ICE_PPPOE;
+
+		if (flags & ICE_TC_FLWR_FIELD_PPPOE_SESSID) {
+			vals->session_id = headers->pppoe_hdr.session_id;
+			masks->session_id = cpu_to_be16(0xFFFF);
+		}
+
+		if (flags & ICE_TC_FLWR_FIELD_PPP_PROTO) {
+			vals->ppp_prot_id = headers->pppoe_hdr.ppp_proto;
+			masks->ppp_prot_id = cpu_to_be16(0xFFFF);
+		}
+
+		i++;
+	}
+
 	/* copy L3 (IPv[4|6]: src, dest) address */
 	if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV4 |
 		     ICE_TC_FLWR_FIELD_SRC_IPV4)) {
@@ -693,6 +720,31 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 	return ret;
 }
 
+/**
+ * ice_tc_set_pppoe - Parse PPPoE fields from TC flower filter
+ * @match: Pointer to flow match structure
+ * @fltr: Pointer to filter structure
+ * @headers: Pointer to outer header fields
+ * @returns PPP protocol used in filter (ppp_ses or ppp_disc)
+ */
+static u16
+ice_tc_set_pppoe(struct flow_match_pppoe *match,
+		 struct ice_tc_flower_fltr *fltr,
+		 struct ice_tc_flower_lyr_2_4_hdrs *headers)
+{
+	if (match->mask->session_id) {
+		fltr->flags |= ICE_TC_FLWR_FIELD_PPPOE_SESSID;
+		headers->pppoe_hdr.session_id = match->key->session_id;
+	}
+
+	if (match->mask->ppp_proto) {
+		fltr->flags |= ICE_TC_FLWR_FIELD_PPP_PROTO;
+		headers->pppoe_hdr.ppp_proto = match->key->ppp_proto;
+	}
+
+	return be16_to_cpu(match->key->type);
+}
+
 /**
  * ice_tc_set_ipv4 - Parse IPv4 addresses from TC flower filter
  * @match: Pointer to flow match structure
@@ -988,7 +1040,8 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 	      BIT(FLOW_DISSECTOR_KEY_ENC_PORTS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_OPTS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IP) |
-	      BIT(FLOW_DISSECTOR_KEY_PORTS))) {
+	      BIT(FLOW_DISSECTOR_KEY_PORTS) |
+	      BIT(FLOW_DISSECTOR_KEY_PPPOE))) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported key used");
 		return -EOPNOTSUPP;
 	}
@@ -1124,6 +1177,22 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 			headers->cvlan_hdr.vlan_prio = match.key->vlan_priority;
 	}
 
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_PPPOE)) {
+		struct flow_match_pppoe match;
+
+		flow_rule_match_pppoe(rule, &match);
+		n_proto_key = ice_tc_set_pppoe(&match, fltr, headers);
+
+		/* If ethertype equals ETH_P_PPP_SES, n_proto might be
+		 * overwritten by encapsulated protocol (ppp_proto field) or set
+		 * to 0. To correct this, flow_match_pppoe provides the type
+		 * field, which contains the actual ethertype (ETH_P_PPP_SES).
+		 */
+		headers->l2_key.n_proto = cpu_to_be16(n_proto_key);
+		headers->l2_mask.n_proto = cpu_to_be16(0xFFFF);
+		fltr->flags |= ICE_TC_FLWR_FIELD_ETH_TYPE_ID;
+	}
+
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_CONTROL)) {
 		struct flow_match_control match;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index 0193874cd203..91cd3d3778c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -24,6 +24,8 @@
 #define ICE_TC_FLWR_FIELD_ETH_TYPE_ID		BIT(17)
 #define ICE_TC_FLWR_FIELD_ENC_OPTS		BIT(18)
 #define ICE_TC_FLWR_FIELD_CVLAN			BIT(19)
+#define ICE_TC_FLWR_FIELD_PPPOE_SESSID		BIT(20)
+#define ICE_TC_FLWR_FIELD_PPP_PROTO		BIT(21)
 
 #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
 
@@ -44,6 +46,11 @@ struct ice_tc_vlan_hdr {
 	__be16 vlan_tpid;
 };
 
+struct ice_tc_pppoe_hdr {
+	__be16 session_id;
+	__be16 ppp_proto;
+};
+
 struct ice_tc_l2_hdr {
 	u8 dst_mac[ETH_ALEN];
 	u8 src_mac[ETH_ALEN];
@@ -84,6 +91,7 @@ struct ice_tc_flower_lyr_2_4_hdrs {
 	struct ice_tc_l2_hdr l2_mask;
 	struct ice_tc_vlan_hdr vlan_hdr;
 	struct ice_tc_vlan_hdr cvlan_hdr;
+	struct ice_tc_pppoe_hdr pppoe_hdr;
 	/* L3 (IPv4[6]) layer fields with their mask */
 	struct ice_tc_l3_hdr l3_key;
 	struct ice_tc_l3_hdr l3_mask;
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6E656034C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 16:40:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E91526129B;
	Wed, 29 Jun 2022 14:40:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E91526129B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656513652;
	bh=RODTW3druqmXh+dV7l4DPlEKjrqY0HRLHZ5Oz8pz11I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I/fPSB2QlCiZ7Oh+Foy5VFUG9rPXgZdkwbb+My5DigsnG56VKVFmzV+lIptmEjjDS
	 mHzPrm4Jxa6UAtp9y+KCnldubur2dYIZuXKXm0wDX3Xoobblg6EM2hCPuzcCbcG0Cp
	 p3E8NRssO6kmVyw++hd/JDHYCtgFZnFgNO+ME1gZifn4q9vOqWxDuwZtPB+sTicu8Y
	 ZeMbwVb7afUwzT7Qb6365icZoF+MCcyRczL02zBwpCtxm/ILM7HB/G8iQNLU/++VHI
	 sGF3+FYpFcOYWivSa211DFJTn0bsZLk7eb0k3EE+MNPH5Gwn22lXnG86OvL1QAe884
	 jEIG3ulucuDUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Fx14zkPy19f; Wed, 29 Jun 2022 14:40:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48D04612C6;
	Wed, 29 Jun 2022 14:40:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48D04612C6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11BF91BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:40:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9C4B840F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:40:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9C4B840F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2ext8xPMKIvF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 14:40:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71F2984090
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71F2984090
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:40:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="282782215"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="282782215"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 07:40:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="717851982"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 29 Jun 2022 07:40:26 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25TEeJ3b022901; Wed, 29 Jun 2022 15:40:24 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Wed, 29 Jun 2022 16:38:59 +0200
Message-Id: <20220629143859.209028-5-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
References: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656513632; x=1688049632;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qk14Dhs3ao9u3+d5/yRYh6eMfLGm453HNv5+tkIcnao=;
 b=aCCnHMLc90iwRoxZmYOG0oktD8l6f3Vpuclf/BP9v8ll9uBerIRNFJ1C
 k4VK9tjVdQIsZMq7zsIrYGjBC1twPC2TRfQqoLfmhtbK8kk3V4ApXcG8c
 6CoZOShOOfK/fA0b66TU+XZUUcOWN1qtprRhjFg1tOrPL5t7Avea85zaT
 /V678RJFZUQk8cyUueZR27+H47T+vzjFI/6HoVPkKzsoGqLc1j5BVHWUy
 V74piU2O0DWih7i4R/sx0jhu4jX2HkcwEJFuWN3+tXOx4lyOnaSM5Oho1
 WY7vtf3iaoU4SxxSus+wM4qQPB2TwV7hglgQAIqvsbRFOK+ijYxedc1kG
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aCCnHMLc
Subject: [Intel-wired-lan] [RFC PATCH net-next v3 4/4] ice: Add support for
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
 jhs@mojatatu.com, mostrows@earthlink.net, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, gustavoars@kernel.org, davem@davemloft.net
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

Note: currently matching on vlan + PPPoE fields is not supported. Patch [0]
will add this feature.

[0] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220420210048.5809-1-martyna.szapar-mudlaw@intel.com

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v2: wrap one long line

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   5 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  11 ++
 drivers/net/ethernet/intel/ice/ice_switch.c   | 165 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  95 ++++++++--
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   8 +
 6 files changed, 274 insertions(+), 11 deletions(-)

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
index c73cdab44f70..14fdd73a83be 100644
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
index 3f64300b0e14..4b7471a25551 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -43,6 +43,7 @@ enum ice_protocol_type {
 	ICE_NVGRE,
 	ICE_GTP,
 	ICE_GTP_NO_PAY,
+	ICE_PPPOE,
 	ICE_VXLAN_GPE,
 	ICE_SCTP_IL,
 	ICE_PROTOCOL_LAST
@@ -107,6 +108,7 @@ enum ice_prot_id {
 #define ICE_TCP_IL_HW		49
 #define ICE_UDP_ILOS_HW		53
 #define ICE_GRE_OF_HW		64
+#define ICE_PPPOE_HW		103
 
 #define ICE_UDP_OF_HW	52 /* UDP Tunnels */
 #define ICE_META_DATA_ID_HW 255 /* this is used for tunnel type */
@@ -200,6 +202,14 @@ struct ice_udp_gtp_hdr {
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
@@ -217,6 +227,7 @@ union ice_prot_hdr {
 	struct ice_udp_tnl_hdr tnl_hdr;
 	struct ice_nvgre_hdr nvgre_hdr;
 	struct ice_udp_gtp_hdr gtp_hdr;
+	struct ice_pppoe_hdr pppoe_hdr;
 };
 
 /* This is mapping table entry that maps every word within a given protocol
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 8d8f3eec79ee..99af56264f8a 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -41,6 +41,7 @@ enum {
 	ICE_PKT_INNER_TCP	= BIT(7),
 	ICE_PKT_INNER_UDP	= BIT(8),
 	ICE_PKT_GTP_NOPAY	= BIT(9),
+	ICE_PKT_PPPOE		= BIT(10),
 };
 
 struct ice_dummy_pkt_offsets {
@@ -1233,6 +1234,154 @@ ICE_DECLARE_PKT_TEMPLATE(ipv6_gtp) = {
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
@@ -1259,6 +1408,11 @@ static const struct ice_dummy_pkt_profile ice_dummy_pkt_profiles[] = {
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
@@ -4609,6 +4763,7 @@ static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
 	{ ICE_NVGRE,		{ 0, 2, 4, 6 } },
 	{ ICE_GTP,		{ 8, 10, 12, 14, 16, 18, 20, 22 } },
 	{ ICE_GTP_NO_PAY,	{ 8, 10, 12, 14 } },
+	{ ICE_PPPOE,		{ 0, 2, 4, 6 } },
 };
 
 static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
@@ -4629,6 +4784,7 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
 	{ ICE_NVGRE,		ICE_GRE_OF_HW },
 	{ ICE_GTP,		ICE_UDP_OF_HW },
 	{ ICE_GTP_NO_PAY,	ICE_UDP_ILOS_HW },
+	{ ICE_PPPOE,		ICE_PPPOE_HW },
 };
 
 /**
@@ -5615,6 +5771,12 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
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
@@ -5707,6 +5869,9 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
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
index b803f2ab3cc7..c14483248b73 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -50,6 +50,11 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	if (flags & ICE_TC_FLWR_FIELD_VLAN)
 		lkups_cnt++;
 
+	/* are PPPoE options specified? */
+	if (flags & (ICE_TC_FLWR_FIELD_PPPOE_SESSID |
+		     ICE_TC_FLWR_FIELD_PPP_PROTO))
+		lkups_cnt++;
+
 	/* are IPv[4|6] fields specified? */
 	if (flags & (ICE_TC_FLWR_FIELD_DEST_IPV4 | ICE_TC_FLWR_FIELD_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_DEST_IPV6 | ICE_TC_FLWR_FIELD_SRC_IPV6))
@@ -317,6 +322,28 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
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
@@ -660,6 +687,33 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 	return ret;
 }
 
+/**
+ * ice_tc_set_pppoe - Parse PPPoE fields from TC flower filter
+ * @match: Pointer to flow match structure
+ * @fltr: Pointer to filter structure
+ * @headers: Pointer to outer header fields
+ * @returns Whether ppp_proto field was used
+ */
+static bool
+ice_tc_set_pppoe(struct flow_match_pppoe *match,
+		 struct ice_tc_flower_fltr *fltr,
+		 struct ice_tc_flower_lyr_2_4_hdrs *headers)
+{
+	if (match->mask->session_id) {
+		fltr->flags |= ICE_TC_FLWR_FIELD_PPPOE_SESSID;
+		headers->pppoe_hdr.session_id =
+			cpu_to_be16(match->key->session_id);
+	}
+
+	if (match->mask->ppp_proto) {
+		fltr->flags |= ICE_TC_FLWR_FIELD_PPP_PROTO;
+		headers->pppoe_hdr.ppp_proto = match->key->ppp_proto;
+		return true;
+	}
+
+	return false;
+}
+
 /**
  * ice_tc_set_ipv4 - Parse IPv4 addresses from TC flower filter
  * @match: Pointer to flow match structure
@@ -937,6 +991,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 	u16 n_proto_mask = 0, n_proto_key = 0, addr_type = 0;
 	struct flow_dissector *dissector;
 	struct net_device *tunnel_dev;
+	bool ppp_proto_present = false;
 
 	dissector = rule->match.dissector;
 
@@ -954,7 +1009,8 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 	      BIT(FLOW_DISSECTOR_KEY_ENC_PORTS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_OPTS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IP) |
-	      BIT(FLOW_DISSECTOR_KEY_PORTS))) {
+	      BIT(FLOW_DISSECTOR_KEY_PORTS) |
+	      BIT(FLOW_DISSECTOR_KEY_PPPOE))) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported key used");
 		return -EOPNOTSUPP;
 	}
@@ -986,21 +1042,40 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		fltr->tunnel_type = TNL_LAST;
 	}
 
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_PPPOE)) {
+		struct flow_match_pppoe match;
+
+		flow_rule_match_pppoe(rule, &match);
+		ppp_proto_present = ice_tc_set_pppoe(&match, fltr, headers);
+	}
+
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_BASIC)) {
 		struct flow_match_basic match;
 
 		flow_rule_match_basic(rule, &match);
 
-		n_proto_key = ntohs(match.key->n_proto);
-		n_proto_mask = ntohs(match.mask->n_proto);
-
-		if (n_proto_key == ETH_P_ALL || n_proto_key == 0 ||
-		    fltr->tunnel_type == TNL_GTPU ||
-		    fltr->tunnel_type == TNL_GTPC) {
-			n_proto_key = 0;
-			n_proto_mask = 0;
+		if (ppp_proto_present) {
+			/* When ppp_proto field is specified, it also overwrites
+			 * ethertype field with its value. E.g. if tc command is
+			 * ... protocol ppp_ses ... ppp_proto ip ...
+			 * it will result in ppp_proto=ip and n_proto_key=ip.
+			 * n_proto_key needs to be set to the proper value,
+			 * i.e. ppp_ses.
+			 */
+			n_proto_key = ETH_P_PPP_SES;
+			n_proto_mask = 0xFFFF;
 		} else {
-			fltr->flags |= ICE_TC_FLWR_FIELD_ETH_TYPE_ID;
+			n_proto_key = ntohs(match.key->n_proto);
+			n_proto_mask = ntohs(match.mask->n_proto);
+
+			if (n_proto_key == ETH_P_ALL || n_proto_key == 0 ||
+			    fltr->tunnel_type == TNL_GTPU ||
+			    fltr->tunnel_type == TNL_GTPC) {
+				n_proto_key = 0;
+				n_proto_mask = 0;
+			} else {
+				fltr->flags |= ICE_TC_FLWR_FIELD_ETH_TYPE_ID;
+			}
 		}
 
 		headers->l2_key.n_proto = cpu_to_be16(n_proto_key);
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index e25e958f4396..efbd9c0a54ec 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -23,6 +23,8 @@
 #define ICE_TC_FLWR_FIELD_ENC_DST_MAC		BIT(16)
 #define ICE_TC_FLWR_FIELD_ETH_TYPE_ID		BIT(17)
 #define ICE_TC_FLWR_FIELD_ENC_OPTS		BIT(18)
+#define ICE_TC_FLWR_FIELD_PPPOE_SESSID		BIT(19)
+#define ICE_TC_FLWR_FIELD_PPP_PROTO		BIT(20)
 
 #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
 
@@ -42,6 +44,11 @@ struct ice_tc_vlan_hdr {
 	u16 vlan_prio; /* Only last 3 bits valid (valid values: 0..7) */
 };
 
+struct ice_tc_pppoe_hdr {
+	__be16 session_id;
+	__be16 ppp_proto;
+};
+
 struct ice_tc_l2_hdr {
 	u8 dst_mac[ETH_ALEN];
 	u8 src_mac[ETH_ALEN];
@@ -81,6 +88,7 @@ struct ice_tc_flower_lyr_2_4_hdrs {
 	struct ice_tc_l2_hdr l2_key;
 	struct ice_tc_l2_hdr l2_mask;
 	struct ice_tc_vlan_hdr vlan_hdr;
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

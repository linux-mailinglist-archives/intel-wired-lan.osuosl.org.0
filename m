Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A26808DCD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 17:49:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 048588319F;
	Thu,  7 Dec 2023 16:49:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 048588319F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701967753;
	bh=8eBjMBhwAjCc0/7oIbRe9AvyGy0+mnfUZiUNXjcI6eI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ze2riNyiPU3NbW6cUevfwwZWfDHNGnmJOSfMRaKiMI+/WxQtoss8zT7qsIZA8XdHE
	 PtKgO3vkcethwAz+qCCTSG1TlRmbSY5V06dJi+iP+G4J5UX0Gl8+3PgTjosgoM3u0K
	 SQx6D8gb1ZHy2rD1vylxdOYLefaGQXh+xluYalYfF05BFfhHu7340+2JLPif3rZk+o
	 eVqHNCbwxi/+uMvKHJvyYrK9+AH2dHvtt4YHFMQBbA6sM571V7OgXLIah25gbYByTg
	 hIvr0b9/RJzzMDWd4PqDupx41n3F5XS8QWSef5yIDr6tWXXpxC8wTmoiK5rByOY8p9
	 q2JI8Q0fQtGNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uHqnDMx3MCH8; Thu,  7 Dec 2023 16:49:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46ABE83D26;
	Thu,  7 Dec 2023 16:49:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46ABE83D26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58B041BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 31CE342147
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31CE342147
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jttg7i0xx-1W for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 16:48:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C116B42138
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C116B42138
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="373759603"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="373759603"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 08:48:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="775477375"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="775477375"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga007.fm.intel.com with ESMTP; 07 Dec 2023 08:48:42 -0800
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0FEE735421;
 Thu,  7 Dec 2023 16:48:40 +0000 (GMT)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Dec 2023 17:49:11 +0100
Message-ID: <20231207164911.14330-8-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701967728; x=1733503728;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EeDtvsL1NmnfJCp0xS/fxWL+214LlDaasv4Zj6WVZX0=;
 b=JZSZJpOk7DJG2COOvFBDueBmxLg3REEj0qw3usdpfhADs5ckdlS+Cb8j
 qaEF/GwJtaagvsFePE13zugOWDLQWvkIpqvWk9GiKoL58gWDkxRK3cEb9
 7PyqJ9Fey3QmSNuu1nCKSH5IC2FzRvQ8+wvD7UDq8XKISG5oryUD7uEk5
 tnCSLEtWVMllAo3fWPLevWwt6BpBeGzDh4sMLD3a4y3ndd7QcCrWR4nlj
 2zs1h+L/0v7JhwEyAIra4vnMnUpW4PUjBe9tZm8mrkalzqH49fqXqjWUr
 2IW2ZsR25LY/oLf78mt6K3i3QP7+DohjvR1BcSlO0F4fRLmCgmvpgcWyp
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JZSZJpOk
Subject: [Intel-wired-lan] [PATCH iwl-next v4 7/7] ice: Add support for PFCP
 hardware offload in switchdev
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
Cc: jiri@resnulli.us, andy@kernel.org, wojciech.drewek@intel.com,
 netdev@vger.kernel.org, idosch@nvidia.com, jesse.brandeburg@intel.com,
 aleksander.lobakin@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 michal.swiatkowski@linux.intel.com, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for creating PFCP filters in switchdev mode. Add support
for parsing PFCP-specific tc options: S flag and SEID.

To create a PFCP filter, a special netdev must be created and passed
to tc command:

  ip link add pfcp0 type pfcp
  tc filter add dev eth0 ingress prio 1 flower pfcp_opts \
    1:12ab/ff:fffffffffffffff0 skip_hw action mirred egress redirect \
    dev pfcp0

Changes in iproute2 [1] are required to be able to use pfcp_opts in tc.

ICE COMMS package is required to create a filter as it contains PFCP
profiles.

Link: https://lore.kernel.org/netdev/20230614091758.11180-1-marcin.szycik@linux.intel.com [1]
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c      |  9 ++
 .../net/ethernet/intel/ice/ice_flex_type.h    |  4 +-
 .../ethernet/intel/ice/ice_protocol_type.h    | 12 +++
 drivers/net/ethernet/intel/ice/ice_switch.c   | 85 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_switch.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 58 +++++++++++--
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |  6 ++
 7 files changed, 169 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 8b7504a9df31..57278ec71aac 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -721,6 +721,12 @@ static bool ice_is_gtp_c_profile(u16 prof_idx)
 	}
 }
 
+static bool ice_is_pfcp_profile(u16 prof_idx)
+{
+	return prof_idx >= ICE_PROFID_IPV4_PFCP_NODE &&
+	       prof_idx <= ICE_PROFID_IPV6_PFCP_SESSION;
+}
+
 /**
  * ice_get_sw_prof_type - determine switch profile type
  * @hw: pointer to the HW structure
@@ -738,6 +744,9 @@ static enum ice_prof_type ice_get_sw_prof_type(struct ice_hw *hw,
 	if (ice_is_gtp_u_profile(prof_idx))
 		return ICE_PROF_TUN_GTPU;
 
+	if (ice_is_pfcp_profile(prof_idx))
+		return ICE_PROF_TUN_PFCP;
+
 	for (i = 0; i < hw->blk[ICE_BLK_SW].es.fvw; i++) {
 		/* UDP tunnel will have UDP_OF protocol ID and VNI offset */
 		if (fv->ew[i].prot_id == (u8)ICE_PROT_UDP_OF &&
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 4f42e14ed3ae..2dd8909dce2e 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -93,6 +93,7 @@ enum ice_tunnel_type {
 	TNL_GRETAP,
 	TNL_GTPC,
 	TNL_GTPU,
+	TNL_PFCP,
 	__TNL_TYPE_CNT,
 	TNL_LAST = 0xFF,
 	TNL_ALL = 0xFF,
@@ -351,7 +352,8 @@ enum ice_prof_type {
 	ICE_PROF_TUN_GRE = 0x4,
 	ICE_PROF_TUN_GTPU = 0x8,
 	ICE_PROF_TUN_GTPC = 0x10,
-	ICE_PROF_TUN_ALL = 0x1E,
+	ICE_PROF_TUN_PFCP = 0x20,
+	ICE_PROF_TUN_ALL = 0x3E,
 	ICE_PROF_ALL = 0xFF,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index f6f27361c3cf..755a9c55267c 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -43,6 +43,7 @@ enum ice_protocol_type {
 	ICE_NVGRE,
 	ICE_GTP,
 	ICE_GTP_NO_PAY,
+	ICE_PFCP,
 	ICE_PPPOE,
 	ICE_L2TPV3,
 	ICE_VLAN_EX,
@@ -61,6 +62,7 @@ enum ice_sw_tunnel_type {
 	ICE_SW_TUN_NVGRE,
 	ICE_SW_TUN_GTPU,
 	ICE_SW_TUN_GTPC,
+	ICE_SW_TUN_PFCP,
 	ICE_ALL_TUNNELS /* All tunnel types including NVGRE */
 };
 
@@ -202,6 +204,15 @@ struct ice_udp_gtp_hdr {
 	u8 rsvrd;
 };
 
+struct ice_pfcp_hdr {
+	u8 flags;
+	u8 msg_type;
+	__be16 length;
+	__be64 seid;
+	__be32 seq;
+	u8 spare;
+} __packed __aligned(__alignof__(u16));
+
 struct ice_pppoe_hdr {
 	u8 rsrvd_ver_type;
 	u8 rsrvd_code;
@@ -418,6 +429,7 @@ union ice_prot_hdr {
 	struct ice_udp_tnl_hdr tnl_hdr;
 	struct ice_nvgre_hdr nvgre_hdr;
 	struct ice_udp_gtp_hdr gtp_hdr;
+	struct ice_pfcp_hdr pfcp_hdr;
 	struct ice_pppoe_hdr pppoe_hdr;
 	struct ice_l2tpv3_sess_hdr l2tpv3_sess_hdr;
 	struct ice_hw_metadata metadata;
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index ee19f3aa3d19..a83462d77ebd 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -42,6 +42,7 @@ enum {
 	ICE_PKT_KMALLOC		= BIT(9),
 	ICE_PKT_PPPOE		= BIT(10),
 	ICE_PKT_L2TPV3		= BIT(11),
+	ICE_PKT_PFCP		= BIT(12),
 };
 
 struct ice_dummy_pkt_offsets {
@@ -1110,6 +1111,77 @@ ICE_DECLARE_PKT_TEMPLATE(ipv6_gtp) = {
 	0x00, 0x00,
 };
 
+ICE_DECLARE_PKT_OFFSETS(pfcp_session_ipv4) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_ILOS,		34 },
+	{ ICE_PFCP,		42 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(pfcp_session_ipv4) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 12 */
+
+	0x45, 0x00, 0x00, 0x2c, /* ICE_IPV4_OFOS 14 */
+	0x00, 0x01, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x22, 0x65, /* ICE_UDP_ILOS 34 */
+	0x00, 0x18, 0x00, 0x00,
+
+	0x21, 0x01, 0x00, 0x0c, /* ICE_PFCP 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
+};
+
+ICE_DECLARE_PKT_OFFSETS(pfcp_session_ipv6) = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_UDP_ILOS,		54 },
+	{ ICE_PFCP,		62 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+ICE_DECLARE_PKT_TEMPLATE(pfcp_session_ipv6) = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x86, 0xdd,		/* ICE_ETYPE_OL 12 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 14 */
+	0x00, 0x10, 0x11, 0x00, /* Next header UDP */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x22, 0x65, /* ICE_UDP_ILOS 54 */
+	0x00, 0x18, 0x00, 0x00,
+
+	0x21, 0x01, 0x00, 0x0c, /* ICE_PFCP 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00,		/* 2 bytes for 4 byte alignment */
+};
+
 ICE_DECLARE_PKT_OFFSETS(pppoe_ipv4_tcp) = {
 	{ ICE_MAC_OFOS,		0 },
 	{ ICE_ETYPE_OL,		12 },
@@ -1343,6 +1415,8 @@ static const struct ice_dummy_pkt_profile ice_dummy_pkt_profiles[] = {
 	ICE_PKT_PROFILE(ipv4_gtpu_ipv4_tcp, ICE_PKT_TUN_GTPU),
 	ICE_PKT_PROFILE(ipv6_gtp, ICE_PKT_TUN_GTPC | ICE_PKT_OUTER_IPV6),
 	ICE_PKT_PROFILE(ipv4_gtpu_ipv4, ICE_PKT_TUN_GTPC),
+	ICE_PKT_PROFILE(pfcp_session_ipv6, ICE_PKT_PFCP | ICE_PKT_OUTER_IPV6),
+	ICE_PKT_PROFILE(pfcp_session_ipv4, ICE_PKT_PFCP),
 	ICE_PKT_PROFILE(pppoe_ipv6_udp, ICE_PKT_PPPOE | ICE_PKT_OUTER_IPV6 |
 					ICE_PKT_INNER_UDP),
 	ICE_PKT_PROFILE(pppoe_ipv6_tcp, ICE_PKT_PPPOE | ICE_PKT_OUTER_IPV6),
@@ -4532,6 +4606,7 @@ static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
 	ICE_PROTOCOL_ENTRY(ICE_NVGRE, 0, 2, 4, 6),
 	ICE_PROTOCOL_ENTRY(ICE_GTP, 8, 10, 12, 14, 16, 18, 20, 22),
 	ICE_PROTOCOL_ENTRY(ICE_GTP_NO_PAY, 8, 10, 12, 14),
+	ICE_PROTOCOL_ENTRY(ICE_PFCP, 8, 10, 12, 14, 16, 18, 20, 22),
 	ICE_PROTOCOL_ENTRY(ICE_PPPOE, 0, 2, 4, 6),
 	ICE_PROTOCOL_ENTRY(ICE_L2TPV3, 0, 2, 4, 6, 8, 10),
 	ICE_PROTOCOL_ENTRY(ICE_VLAN_EX, 2, 0),
@@ -4565,6 +4640,7 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
 	{ ICE_NVGRE,		ICE_GRE_OF_HW },
 	{ ICE_GTP,		ICE_UDP_OF_HW },
 	{ ICE_GTP_NO_PAY,	ICE_UDP_ILOS_HW },
+	{ ICE_PFCP,		ICE_UDP_ILOS_HW },
 	{ ICE_PPPOE,		ICE_PPPOE_HW },
 	{ ICE_L2TPV3,		ICE_L2TPV3_HW },
 	{ ICE_VLAN_EX,          ICE_VLAN_OF_HW },
@@ -5272,6 +5348,9 @@ ice_get_compat_fv_bitmap(struct ice_hw *hw, struct ice_adv_rule_info *rinfo,
 	case ICE_SW_TUN_GTPC:
 		prof_type = ICE_PROF_TUN_GTPC;
 		break;
+	case ICE_SW_TUN_PFCP:
+		prof_type = ICE_PROF_TUN_PFCP;
+		break;
 	case ICE_SW_TUN_AND_NON_TUN:
 	default:
 		prof_type = ICE_PROF_ALL;
@@ -5554,6 +5633,9 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 	case ICE_SW_TUN_VXLAN:
 		match |= ICE_PKT_TUN_UDP;
 		break;
+	case ICE_SW_TUN_PFCP:
+		match |= ICE_PKT_PFCP;
+		break;
 	default:
 		break;
 	}
@@ -5694,6 +5776,9 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		case ICE_GTP:
 			len = sizeof(struct ice_udp_gtp_hdr);
 			break;
+		case ICE_PFCP:
+			len = sizeof(struct ice_pfcp_hdr);
+			break;
 		case ICE_PPPOE:
 			len = sizeof(struct ice_pppoe_hdr);
 			break;
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index db7e501b7e0a..30091a80e7fa 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -21,6 +21,8 @@
 #define ICE_PROFID_IPV6_GTPC_NO_TEID			45
 #define ICE_PROFID_IPV6_GTPU_TEID			46
 #define ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER		70
+#define ICE_PROFID_IPV4_PFCP_NODE			79
+#define ICE_PROFID_IPV6_PFCP_SESSION			82
 
 #define ICE_SW_RULE_VSI_LIST_SIZE(s, n)		struct_size((s), vsi, (n))
 #define ICE_SW_RULE_RX_TX_HDR_SIZE(s, l)	struct_size((s), hdr_data, (l))
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index e9acab2ede10..2e9fffa77538 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -38,6 +38,9 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	if (flags & ICE_TC_FLWR_FIELD_GTP_OPTS)
 		lkups_cnt++;
 
+	if (flags & ICE_TC_FLWR_FIELD_PFCP_OPTS)
+		lkups_cnt++;
+
 	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_SRC_IPV6 |
@@ -138,6 +141,8 @@ ice_proto_type_from_tunnel(enum ice_tunnel_type type)
 		return ICE_GTP;
 	case TNL_GTPC:
 		return ICE_GTP_NO_PAY;
+	case TNL_PFCP:
+		return ICE_PFCP;
 	default:
 		return 0;
 	}
@@ -157,6 +162,8 @@ ice_sw_type_from_tunnel(enum ice_tunnel_type type)
 		return ICE_SW_TUN_GTPU;
 	case TNL_GTPC:
 		return ICE_SW_TUN_GTPC;
+	case TNL_PFCP:
+		return ICE_SW_TUN_PFCP;
 	default:
 		return ICE_NON_TUN;
 	}
@@ -236,6 +243,22 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
 		i++;
 	}
 
+	if (flags & ICE_TC_FLWR_FIELD_PFCP_OPTS) {
+		struct ice_pfcp_hdr *hdr_h, *hdr_m;
+
+		hdr_h = &list[i].h_u.pfcp_hdr;
+		hdr_m = &list[i].m_u.pfcp_hdr;
+		list[i].type = ICE_PFCP;
+
+		hdr_h->flags = fltr->pfcp_meta_keys.type;
+		hdr_m->flags = fltr->pfcp_meta_masks.type & 0x01;
+
+		hdr_h->seid = fltr->pfcp_meta_keys.seid;
+		hdr_m->seid = fltr->pfcp_meta_masks.seid;
+
+		i++;
+	}
+
 	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV4)) {
 		list[i].type = ice_proto_type_from_ipv4(false);
@@ -366,8 +389,11 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 	if (tc_fltr->tunnel_type != TNL_LAST) {
 		i = ice_tc_fill_tunnel_outer(flags, tc_fltr, list, i);
 
-		headers = &tc_fltr->inner_headers;
-		inner = true;
+		/* PFCP is considered non-tunneled - don't swap headers. */
+		if (tc_fltr->tunnel_type != TNL_PFCP) {
+			headers = &tc_fltr->inner_headers;
+			inner = true;
+		}
 	}
 
 	if (flags & ICE_TC_FLWR_FIELD_ETH_TYPE_ID) {
@@ -621,6 +647,8 @@ static int ice_tc_tun_get_type(struct net_device *tunnel_dev)
 	 */
 	if (netif_is_gtp(tunnel_dev))
 		return TNL_GTPU;
+	if (netif_is_pfcp(tunnel_dev))
+		return TNL_PFCP;
 	return TNL_LAST;
 }
 
@@ -1374,6 +1402,20 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		fltr->flags |= ICE_TC_FLWR_FIELD_GTP_OPTS;
 	}
 
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_OPTS) &&
+	    fltr->tunnel_type == TNL_PFCP) {
+		struct flow_match_enc_opts match;
+
+		flow_rule_match_enc_opts(rule, &match);
+
+		memcpy(&fltr->pfcp_meta_keys, match.key->data,
+		       sizeof(struct pfcp_metadata));
+		memcpy(&fltr->pfcp_meta_masks, match.mask->data,
+		       sizeof(struct pfcp_metadata));
+
+		fltr->flags |= ICE_TC_FLWR_FIELD_PFCP_OPTS;
+	}
+
 	return 0;
 }
 
@@ -1432,10 +1474,14 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 			return err;
 		}
 
-		/* header pointers should point to the inner headers, outer
-		 * header were already set by ice_parse_tunnel_attr
-		 */
-		headers = &fltr->inner_headers;
+		/* PFCP is considered non-tunneled - don't swap headers. */
+		if (fltr->tunnel_type != TNL_PFCP) {
+			/* Header pointers should point to the inner headers,
+			 * outer header were already set by
+			 * ice_parse_tunnel_attr().
+			 */
+			headers = &fltr->inner_headers;
+		}
 	} else if (dissector->used_keys &
 		  (BIT_ULL(FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS) |
 		   BIT_ULL(FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) |
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index 5d188ad7517a..d84f153517ec 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -4,6 +4,9 @@
 #ifndef _ICE_TC_LIB_H_
 #define _ICE_TC_LIB_H_
 
+#include <linux/bits.h>
+#include <net/pfcp.h>
+
 #define ICE_TC_FLWR_FIELD_DST_MAC		BIT(0)
 #define ICE_TC_FLWR_FIELD_SRC_MAC		BIT(1)
 #define ICE_TC_FLWR_FIELD_VLAN			BIT(2)
@@ -34,6 +37,7 @@
 #define ICE_TC_FLWR_FIELD_VLAN_PRIO		BIT(27)
 #define ICE_TC_FLWR_FIELD_CVLAN_PRIO		BIT(28)
 #define ICE_TC_FLWR_FIELD_VLAN_TPID		BIT(29)
+#define ICE_TC_FLWR_FIELD_PFCP_OPTS		BIT(30)
 
 #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
 
@@ -161,6 +165,8 @@ struct ice_tc_flower_fltr {
 	__be32 tenant_id;
 	struct gtp_pdu_session_info gtp_pdu_info_keys;
 	struct gtp_pdu_session_info gtp_pdu_info_masks;
+	struct pfcp_metadata pfcp_meta_keys;
+	struct pfcp_metadata pfcp_meta_masks;
 	u32 flags;
 	u8 tunnel_type;
 	struct ice_tc_flower_action	action;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

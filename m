Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D875A304FB0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 04:25:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 81075858F7;
	Wed, 27 Jan 2021 03:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a98NiK9qIJqj; Wed, 27 Jan 2021 03:25:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C52D4858FB;
	Wed, 27 Jan 2021 03:25:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C076A1BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 03:25:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B1152870D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 03:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fgLKPNwSykzW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 03:25:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4774F86FFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 03:25:44 +0000 (UTC)
IronPort-SDR: p0uRFEf2HxPVVw5/3C17Cgq14Dnqqneell+uKQ7ZZVATWaBzO8pmRNdaAjqmURPyL/+YrQo3Na
 AplgXZqfug2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180090325"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="180090325"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 19:25:44 -0800
IronPort-SDR: kbz2B/Gb+d1fO9Jm3t7LtFufnjBoCVbXgeFk/p9FJJD5QE0w5zCA2+CmWvmmkUIItBdEp3XStv
 NytQJXXL42KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="388128798"
Received: from npg-dpdk-haiyue-3.sh.intel.com ([10.67.118.189])
 by orsmga008.jf.intel.com with ESMTP; 26 Jan 2021 19:25:41 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Jan 2021 11:09:01 +0800
Message-Id: <20210127030918.200919-4-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210127030918.200919-1-haiyue.wang@intel.com>
References: <20210127030918.200919-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v3 03/20] ice: Add more advanced protocol
 support in flow filter
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
Cc: cunming.liang@intel.com, Ting Xu <ting.xu@intel.com>,
 Yahui Cao <yahui.cao@intel.com>, qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

The patch add more protocol support in flow filter, these
include PPPoE, L2TPv3, GTP, PFCP, ESP and AH.

Signed-off-by: Ting Xu <ting.xu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c     | 270 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_flow.h     | 128 ++++++++-
 .../ethernet/intel/ice/ice_protocol_type.h    |   4 +
 3 files changed, 396 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index b27d92d685ba..40fa628bd448 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -96,6 +96,37 @@ struct ice_flow_field_info ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
 	/* ICE_FLOW_FIELD_IDX_GRE_KEYID */
 	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_GRE, 12,
 			  sizeof_field(struct gre_full_hdr, key)),
+	/* GTP */
+	/* ICE_FLOW_FIELD_IDX_GTPC_TEID */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_GTPC_TEID, 12, sizeof(__be32)),
+	/* ICE_FLOW_FIELD_IDX_GTPU_IP_TEID */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_GTPU_IP, 12, sizeof(__be32)),
+	/* ICE_FLOW_FIELD_IDX_GTPU_EH_TEID */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_GTPU_EH, 12, sizeof(__be32)),
+	/* ICE_FLOW_FIELD_IDX_GTPU_EH_QFI */
+	ICE_FLOW_FLD_INFO_MSK(ICE_FLOW_SEG_HDR_GTPU_EH, 22, sizeof(__be16), 0x3f00),
+	/* ICE_FLOW_FIELD_IDX_GTPU_UP_TEID */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_GTPU_UP, 12, sizeof(__be32)),
+	/* ICE_FLOW_FIELD_IDX_GTPU_DWN_TEID */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_GTPU_DWN, 12, sizeof(__be32)),
+	/* PPPOE */
+	/* ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_PPPOE, 2, sizeof(__be16)),
+	/* PFCP */
+	/* ICE_FLOW_FIELD_IDX_PFCP_SEID */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_PFCP_SESSION, 12, sizeof(__be64)),
+	/* L2TPV3 */
+	/* ICE_FLOW_FIELD_IDX_L2TPV3_SESS_ID */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_L2TPV3, 0, sizeof(__be32)),
+	/* ESP */
+	/* ICE_FLOW_FIELD_IDX_ESP_SPI */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ESP, 0, sizeof(__be32)),
+	/* AH */
+	/* ICE_FLOW_FIELD_IDX_AH_SPI */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_AH, 4, sizeof(__be32)),
+	/* NAT_T_ESP */
+	/* ICE_FLOW_FIELD_IDX_NAT_T_ESP_SPI */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_NAT_T_ESP, 8, sizeof(__be32)),
 };
 
 /* Bitmaps indicating relevant packet types for a particular protocol header
@@ -128,6 +159,8 @@ static const u32 ice_ptypes_macvlan_il[] = {
 /* Packet types for packets with an Outer/First/Single IPv4 header */
 static const u32 ice_ptypes_ipv4_ofos[] = {
 	0x1DC00000, 0x04000800, 0x00000000, 0x00000000,
+	0x00000000, 0x00000155, 0x00000000, 0x00000000,
+	0x00000000, 0x000FC000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -141,7 +174,7 @@ static const u32 ice_ptypes_ipv4_ofos[] = {
 static const u32 ice_ptypes_ipv4_il[] = {
 	0xE0000000, 0xB807700E, 0x80000003, 0xE01DC03B,
 	0x0000000E, 0x00000000, 0x00000000, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x001FF800, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -152,6 +185,8 @@ static const u32 ice_ptypes_ipv4_il[] = {
 /* Packet types for packets with an Outer/First/Single IPv6 header */
 static const u32 ice_ptypes_ipv6_ofos[] = {
 	0x00000000, 0x00000000, 0x77000000, 0x10002000,
+	0x00000000, 0x000002AA, 0x00000000, 0x00000000,
+	0x00000000, 0x03F00000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -165,7 +200,7 @@ static const u32 ice_ptypes_ipv6_ofos[] = {
 static const u32 ice_ptypes_ipv6_il[] = {
 	0x00000000, 0x03B80770, 0x000001DC, 0x0EE00000,
 	0x00000770, 0x00000000, 0x00000000, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x7FE00000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -239,7 +274,7 @@ static const u32 ice_ipv6_il_no_l4[] = {
 static const u32 ice_ptypes_udp_il[] = {
 	0x81000000, 0x20204040, 0x04000010, 0x80810102,
 	0x00000040, 0x00000000, 0x00000000, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00410000, 0x90842000, 0x00000007,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -251,7 +286,7 @@ static const u32 ice_ptypes_udp_il[] = {
 static const u32 ice_ptypes_tcp_il[] = {
 	0x04000000, 0x80810102, 0x10000040, 0x02040408,
 	0x00000102, 0x00000000, 0x00000000, 0x00000000,
-	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00820000, 0x21084000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -263,6 +298,7 @@ static const u32 ice_ptypes_tcp_il[] = {
 static const u32 ice_ptypes_sctp_il[] = {
 	0x08000000, 0x01020204, 0x20000081, 0x04080810,
 	0x00000204, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x01040000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -318,6 +354,125 @@ static const u32 ice_ptypes_mac_il[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 };
 
+/* Packet types for GTPC */
+static const u32 ice_ptypes_gtpc[] = {
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000180, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for GTPC with TEID */
+static const u32 ice_ptypes_gtpc_tid[] = {
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000060, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+static const u32 ice_ptypes_gtpu[] = {
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x7FFFFE00, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for pppoe */
+static const u32 ice_ptypes_pppoe[] = {
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x03ffe000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for packets with PFCP NODE header */
+static const u32 ice_ptypes_pfcp_node[] = {
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x80000000, 0x00000002,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for packets with PFCP SESSION header */
+static const u32 ice_ptypes_pfcp_session[] = {
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000005,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for l2tpv3 */
+static const u32 ice_ptypes_l2tpv3[] = {
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000300,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for esp */
+static const u32 ice_ptypes_esp[] = {
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000003, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for ah */
+static const u32 ice_ptypes_ah[] = {
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x0000000C, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for packets with NAT_T ESP header */
+static const u32 ice_ptypes_nat_t_esp[] = {
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000030, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
 /* Manage parameters and info. used during the creation of a flow profile */
 struct ice_flow_prof_params {
 	enum ice_block blk;
@@ -334,6 +489,15 @@ u16 entry_length; /* # of bytes formatted entry will require */
 	DECLARE_BITMAP(ptypes, ICE_FLOW_PTYPE_MAX);
 };
 
+#define ICE_FLOW_RSS_HDRS_INNER_MASK \
+	(ICE_FLOW_SEG_HDR_PPPOE | ICE_FLOW_SEG_HDR_GTPC | \
+	ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_GTPU | \
+	ICE_FLOW_SEG_HDR_PFCP_SESSION | ICE_FLOW_SEG_HDR_L2TPV3 | \
+	ICE_FLOW_SEG_HDR_ESP | ICE_FLOW_SEG_HDR_AH | \
+	ICE_FLOW_SEG_HDR_NAT_T_ESP)
+
+#define ICE_FLOW_SEG_HDRS_L2_MASK	\
+	(ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN)
 #define ICE_FLOW_SEG_HDRS_L3_MASK	\
 	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6 | \
 	 ICE_FLOW_SEG_HDR_ARP)
@@ -479,6 +643,16 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 				   ICE_FLOW_PTYPE_MAX);
 		}
 
+		if (hdrs & ICE_FLOW_SEG_HDR_PPPOE) {
+			src = (const unsigned long *)ice_ptypes_pppoe;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else {
+			src = (const unsigned long *)ice_ptypes_pppoe;
+			bitmap_andnot(params->ptypes, params->ptypes, src,
+				      ICE_FLOW_PTYPE_MAX);
+		}
+
 		if (hdrs & ICE_FLOW_SEG_HDR_UDP) {
 			src = (const unsigned long *)ice_ptypes_udp_il;
 			bitmap_and(params->ptypes, params->ptypes, src,
@@ -504,6 +678,64 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 				bitmap_and(params->ptypes, params->ptypes,
 					   src, ICE_FLOW_PTYPE_MAX);
 			}
+		} else if (hdrs & ICE_FLOW_SEG_HDR_GTPC) {
+			src = (const unsigned long *)ice_ptypes_gtpc;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if (hdrs & ICE_FLOW_SEG_HDR_GTPC_TEID) {
+			src = (const unsigned long *)ice_ptypes_gtpc_tid;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if (hdrs & ICE_FLOW_SEG_HDR_GTPU_DWN) {
+			src = (const unsigned long *)ice_ptypes_gtpu;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if (hdrs & ICE_FLOW_SEG_HDR_GTPU_UP) {
+			src = (const unsigned long *)ice_ptypes_gtpu;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if (hdrs & ICE_FLOW_SEG_HDR_GTPU_EH) {
+			src = (const unsigned long *)ice_ptypes_gtpu;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if (hdrs & ICE_FLOW_SEG_HDR_GTPU_IP) {
+			src = (const unsigned long *)ice_ptypes_gtpu;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if (hdrs & ICE_FLOW_SEG_HDR_L2TPV3) {
+			src = (const unsigned long *)ice_ptypes_l2tpv3;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if (hdrs & ICE_FLOW_SEG_HDR_ESP) {
+			src = (const unsigned long *)ice_ptypes_esp;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if (hdrs & ICE_FLOW_SEG_HDR_AH) {
+			src = (const unsigned long *)ice_ptypes_ah;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if (hdrs & ICE_FLOW_SEG_HDR_NAT_T_ESP) {
+			src = (const unsigned long *)ice_ptypes_nat_t_esp;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		}
+
+		if (hdrs & ICE_FLOW_SEG_HDR_PFCP) {
+			if (hdrs & ICE_FLOW_SEG_HDR_PFCP_NODE)
+				src = (const unsigned long *)ice_ptypes_pfcp_node;
+			else
+				src = (const unsigned long *)ice_ptypes_pfcp_session;
+
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else {
+			src = (const unsigned long *)ice_ptypes_pfcp_node;
+			bitmap_andnot(params->ptypes, params->ptypes, src,
+				      ICE_FLOW_PTYPE_MAX);
+
+			src = (const unsigned long *)ice_ptypes_pfcp_session;
+			bitmap_andnot(params->ptypes, params->ptypes, src,
+				      ICE_FLOW_PTYPE_MAX);
 		}
 	}
 
@@ -612,6 +844,33 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
 	case ICE_FLOW_FIELD_IDX_SCTP_DST_PORT:
 		prot_id = ICE_PROT_SCTP_IL;
 		break;
+	case ICE_FLOW_FIELD_IDX_GTPC_TEID:
+	case ICE_FLOW_FIELD_IDX_GTPU_IP_TEID:
+	case ICE_FLOW_FIELD_IDX_GTPU_UP_TEID:
+	case ICE_FLOW_FIELD_IDX_GTPU_DWN_TEID:
+	case ICE_FLOW_FIELD_IDX_GTPU_EH_TEID:
+	case ICE_FLOW_FIELD_IDX_GTPU_EH_QFI:
+		/* GTP is accessed through UDP OF protocol */
+		prot_id = ICE_PROT_UDP_OF;
+		break;
+	case ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID:
+		prot_id = ICE_PROT_PPPOE;
+		break;
+	case ICE_FLOW_FIELD_IDX_PFCP_SEID:
+		prot_id = ICE_PROT_UDP_IL_OR_S;
+		break;
+	case ICE_FLOW_FIELD_IDX_L2TPV3_SESS_ID:
+		prot_id = ICE_PROT_L2TPV3;
+		break;
+	case ICE_FLOW_FIELD_IDX_ESP_SPI:
+		prot_id = ICE_PROT_ESP_F;
+		break;
+	case ICE_FLOW_FIELD_IDX_AH_SPI:
+		prot_id = ICE_PROT_ESP_2;
+		break;
+	case ICE_FLOW_FIELD_IDX_NAT_T_ESP_SPI:
+		prot_id = ICE_PROT_UDP_IL_OR_S;
+		break;
 	case ICE_FLOW_FIELD_IDX_ARP_SIP:
 	case ICE_FLOW_FIELD_IDX_ARP_DIP:
 	case ICE_FLOW_FIELD_IDX_ARP_SHA:
@@ -1447,7 +1706,8 @@ ice_flow_set_rss_seg_info(struct ice_flow_seg_info *segs, u64 hash_fields,
 
 	ICE_FLOW_SET_HDRS(segs, flow_hdr);
 
-	if (segs->hdrs & ~ICE_FLOW_RSS_SEG_HDR_VAL_MASKS)
+	if (segs->hdrs & ~ICE_FLOW_RSS_SEG_HDR_VAL_MASKS &
+	    ~ICE_FLOW_RSS_HDRS_INNER_MASK)
 		return ICE_ERR_PARAM;
 
 	val = (u64)(segs->hdrs & ICE_FLOW_RSS_SEG_HDR_L3_MASKS);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 612ea3be21a9..ed8b8dcf8fee 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -30,6 +30,80 @@
 #define ICE_HASH_UDP_IPV4	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_UDP_PORT)
 #define ICE_HASH_UDP_IPV6	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_UDP_PORT)
 
+#define ICE_FLOW_HASH_GTP_TEID \
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_GTPC_TEID))
+
+#define ICE_FLOW_HASH_GTP_IPV4_TEID \
+	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_TEID)
+#define ICE_FLOW_HASH_GTP_IPV6_TEID \
+	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_TEID)
+
+#define ICE_FLOW_HASH_GTP_U_TEID \
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_IP_TEID))
+
+#define ICE_FLOW_HASH_GTP_U_IPV4_TEID \
+	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_U_TEID)
+#define ICE_FLOW_HASH_GTP_U_IPV6_TEID \
+	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_TEID)
+
+#define ICE_FLOW_HASH_GTP_U_EH_TEID \
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_EH_TEID))
+
+#define ICE_FLOW_HASH_GTP_U_EH_QFI \
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_EH_QFI))
+
+#define ICE_FLOW_HASH_GTP_U_IPV4_EH \
+	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_U_EH_TEID | \
+	 ICE_FLOW_HASH_GTP_U_EH_QFI)
+#define ICE_FLOW_HASH_GTP_U_IPV6_EH \
+	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_EH_TEID | \
+	 ICE_FLOW_HASH_GTP_U_EH_QFI)
+
+#define ICE_FLOW_HASH_PPPOE_SESS_ID \
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID))
+
+#define ICE_FLOW_HASH_PPPOE_SESS_ID_ETH \
+	(ICE_FLOW_HASH_ETH | ICE_FLOW_HASH_PPPOE_SESS_ID)
+#define ICE_FLOW_HASH_PPPOE_TCP_ID \
+	(ICE_FLOW_HASH_TCP_PORT | ICE_FLOW_HASH_PPPOE_SESS_ID)
+#define ICE_FLOW_HASH_PPPOE_UDP_ID \
+	(ICE_FLOW_HASH_UDP_PORT | ICE_FLOW_HASH_PPPOE_SESS_ID)
+
+#define ICE_FLOW_HASH_PFCP_SEID \
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_PFCP_SEID))
+#define ICE_FLOW_HASH_PFCP_IPV4_SEID \
+	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_PFCP_SEID)
+#define ICE_FLOW_HASH_PFCP_IPV6_SEID \
+	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_PFCP_SEID)
+
+#define ICE_FLOW_HASH_L2TPV3_SESS_ID \
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_L2TPV3_SESS_ID))
+#define ICE_FLOW_HASH_L2TPV3_IPV4_SESS_ID \
+	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_L2TPV3_SESS_ID)
+#define ICE_FLOW_HASH_L2TPV3_IPV6_SESS_ID \
+	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_L2TPV3_SESS_ID)
+
+#define ICE_FLOW_HASH_ESP_SPI \
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_ESP_SPI))
+#define ICE_FLOW_HASH_ESP_IPV4_SPI \
+	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_ESP_SPI)
+#define ICE_FLOW_HASH_ESP_IPV6_SPI \
+	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_ESP_SPI)
+
+#define ICE_FLOW_HASH_AH_SPI \
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_AH_SPI))
+#define ICE_FLOW_HASH_AH_IPV4_SPI \
+	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_AH_SPI)
+#define ICE_FLOW_HASH_AH_IPV6_SPI \
+	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_AH_SPI)
+
+#define ICE_FLOW_HASH_NAT_T_ESP_SPI \
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_NAT_T_ESP_SPI))
+#define ICE_FLOW_HASH_NAT_T_ESP_IPV4_SPI \
+	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_NAT_T_ESP_SPI)
+#define ICE_FLOW_HASH_NAT_T_ESP_IPV6_SPI \
+	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_NAT_T_ESP_SPI)
+
 /* Protocol header fields within a packet segment. A segment consists of one or
  * more protocol headers that make up a logical group of protocol headers. Each
  * logical group of protocol headers encapsulates or is encapsulated using/by
@@ -48,8 +122,37 @@ enum ice_flow_seg_hdr {
 	ICE_FLOW_SEG_HDR_UDP		= 0x00000080,
 	ICE_FLOW_SEG_HDR_SCTP		= 0x00000100,
 	ICE_FLOW_SEG_HDR_GRE		= 0x00000200,
+	ICE_FLOW_SEG_HDR_GTPC		= 0x00000400,
+	ICE_FLOW_SEG_HDR_GTPC_TEID	= 0x00000800,
+	ICE_FLOW_SEG_HDR_GTPU_IP	= 0x00001000,
+	ICE_FLOW_SEG_HDR_GTPU_EH	= 0x00002000,
+	ICE_FLOW_SEG_HDR_GTPU_DWN	= 0x00004000,
+	ICE_FLOW_SEG_HDR_GTPU_UP	= 0x00008000,
+	ICE_FLOW_SEG_HDR_PPPOE		= 0x00010000,
+	ICE_FLOW_SEG_HDR_PFCP_NODE	= 0x00020000,
+	ICE_FLOW_SEG_HDR_PFCP_SESSION	= 0x00040000,
+	ICE_FLOW_SEG_HDR_L2TPV3		= 0x00080000,
+	ICE_FLOW_SEG_HDR_ESP		= 0x00100000,
+	ICE_FLOW_SEG_HDR_AH		= 0x00200000,
+	ICE_FLOW_SEG_HDR_NAT_T_ESP	= 0x00400000,
 };
 
+/* These segments all have the same PTYPES, but are otherwise distinguished by
+ * the value of the gtp_eh_pdu and gtp_eh_pdu_link flags:
+ *
+ *                                gtp_eh_pdu     gtp_eh_pdu_link
+ * ICE_FLOW_SEG_HDR_GTPU_IP           0              0
+ * ICE_FLOW_SEG_HDR_GTPU_EH           1              don't care
+ * ICE_FLOW_SEG_HDR_GTPU_DWN          1              0
+ * ICE_FLOW_SEG_HDR_GTPU_UP           1              1
+ */
+#define ICE_FLOW_SEG_HDR_GTPU (ICE_FLOW_SEG_HDR_GTPU_IP | \
+			       ICE_FLOW_SEG_HDR_GTPU_EH | \
+			       ICE_FLOW_SEG_HDR_GTPU_DWN | \
+			       ICE_FLOW_SEG_HDR_GTPU_UP)
+#define ICE_FLOW_SEG_HDR_PFCP (ICE_FLOW_SEG_HDR_PFCP_NODE | \
+			       ICE_FLOW_SEG_HDR_PFCP_SESSION)
+
 enum ice_flow_field {
 	/* L2 */
 	ICE_FLOW_FIELD_IDX_ETH_DA,
@@ -87,7 +190,30 @@ enum ice_flow_field {
 	ICE_FLOW_FIELD_IDX_ICMP_CODE,
 	/* GRE */
 	ICE_FLOW_FIELD_IDX_GRE_KEYID,
-	/* The total number of enums must not exceed 64 */
+	/* GTPC_TEID */
+	ICE_FLOW_FIELD_IDX_GTPC_TEID,
+	/* GTPU_IP */
+	ICE_FLOW_FIELD_IDX_GTPU_IP_TEID,
+	/* GTPU_EH */
+	ICE_FLOW_FIELD_IDX_GTPU_EH_TEID,
+	ICE_FLOW_FIELD_IDX_GTPU_EH_QFI,
+	/* GTPU_UP */
+	ICE_FLOW_FIELD_IDX_GTPU_UP_TEID,
+	/* GTPU_DWN */
+	ICE_FLOW_FIELD_IDX_GTPU_DWN_TEID,
+	/* PPPOE */
+	ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID,
+	/* PFCP */
+	ICE_FLOW_FIELD_IDX_PFCP_SEID,
+	/* L2TPV3 */
+	ICE_FLOW_FIELD_IDX_L2TPV3_SESS_ID,
+	/* ESP */
+	ICE_FLOW_FIELD_IDX_ESP_SPI,
+	/* AH */
+	ICE_FLOW_FIELD_IDX_AH_SPI,
+	/* NAT_T ESP */
+	ICE_FLOW_FIELD_IDX_NAT_T_ESP_SPI,
+	 /* The total number of enums must not exceed 64 */
 	ICE_FLOW_FIELD_IDX_MAX
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index fac5f15a692c..199aa5b71540 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -24,9 +24,13 @@ enum ice_prot_id {
 	ICE_PROT_UDP_OF		= 52,
 	ICE_PROT_UDP_IL_OR_S	= 53,
 	ICE_PROT_GRE_OF		= 64,
+	ICE_PROT_ESP_F		= 88,
+	ICE_PROT_ESP_2		= 89,
 	ICE_PROT_SCTP_IL	= 96,
 	ICE_PROT_ICMP_IL	= 98,
 	ICE_PROT_ICMPV6_IL	= 100,
+	ICE_PROT_PPPOE		= 103,
+	ICE_PROT_L2TPV3		= 104,
 	ICE_PROT_ARP_OF		= 118,
 	ICE_PROT_META_ID	= 255, /* when offset == metadata */
 	ICE_PROT_INVALID	= 255  /* when offset == ICE_FV_OFFSET_INVAL */
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

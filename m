Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC0535D4A8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 03:08:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C49160B55;
	Tue, 13 Apr 2021 01:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 72BqoTFaT4fT; Tue, 13 Apr 2021 01:08:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 811EE6070C;
	Tue, 13 Apr 2021 01:08:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07C8A1BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 01:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A83583D61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 01:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0oR5OGfGlwpz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 01:08:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BC9983D6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 01:08:01 +0000 (UTC)
IronPort-SDR: nYgCQitgD8oPl8nwcE1+9BmgXwy4U71jiMA2r6ECEMB+WAiypAzqHfFN+cLhbhlnFM6ccIEiL7
 4TlsvLZHiQrw==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="192181656"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="192181656"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 18:07:59 -0700
IronPort-SDR: QjL9c0lWpQD3QSB99ThR682Xl5OBualCgA6TBstN1DTIk+pal4lcfYiRbD0zWGczF+KMIyE9FA
 xAr+qU12pzBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="521400301"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by fmsmga001.fm.intel.com with ESMTP; 12 Apr 2021 18:07:57 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Apr 2021 08:48:39 +0800
Message-Id: <20210413004844.32462-2-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210413004844.32462-1-haiyue.wang@intel.com>
References: <20210413004844.32462-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 1/6] ice: Enable RSS configure
 for AVF
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
Cc: Jia Guo <jia.guo@intel.com>, qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

Currently, RSS hash input is not available to AVF by ethtool, it is set
by the PF directly.

Add the RSS configure support for AVF through new virtchnl message, and
define the capability flag VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF to query this
new RSS offload support.

Signed-off-by: Jia Guo <jia.guo@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.h     |   3 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 453 ++++++++++++++++++
 include/linux/avf/virtchnl.h                  |  25 +-
 4 files changed, 486 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index eec9def8ffca..2f68b59ace7e 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -8,6 +8,9 @@
 #define ICE_FLOW_FLD_OFF_INVAL		0xffff
 
 /* Generate flow hash field from flow field type(s) */
+#define ICE_FLOW_HASH_ETH	\
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_DA) | \
+	 BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_SA))
 #define ICE_FLOW_HASH_IPV4	\
 	(BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) | \
 	 BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA))
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
index 58d395db4219..35811862336e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
@@ -61,6 +61,11 @@ static const u32 rss_pf_allowlist_opcodes[] = {
 	VIRTCHNL_OP_GET_RSS_HENA_CAPS, VIRTCHNL_OP_SET_RSS_HENA,
 };
 
+/* VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF */
+static const u32 adv_rss_pf_allowlist_opcodes[] = {
+	VIRTCHNL_OP_ADD_RSS_CFG, VIRTCHNL_OP_DEL_RSS_CFG,
+};
+
 /* VIRTCHNL_VF_OFFLOAD_FDIR_PF */
 static const u32 fdir_pf_allowlist_opcodes[] = {
 	VIRTCHNL_OP_ADD_FDIR_FILTER, VIRTCHNL_OP_DEL_FDIR_FILTER,
@@ -82,6 +87,7 @@ static const struct allowlist_opcode_info allowlist_opcodes[] = {
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_REQ_QUEUES, req_queues_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN, vlan_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_RSS_PF, rss_pf_allowlist_opcodes),
+	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF, adv_rss_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_FDIR_PF, fdir_pf_allowlist_opcodes),
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 96a2b319bf21..f104326037fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -5,8 +5,248 @@
 #include "ice_base.h"
 #include "ice_lib.h"
 #include "ice_fltr.h"
+#include "ice_flow.h"
 #include "ice_virtchnl_allowlist.h"
 
+#define FIELD_SELECTOR(proto_hdr_field) \
+		BIT((proto_hdr_field) & PROTO_HDR_FIELD_MASK)
+
+struct ice_vc_hdr_match_type {
+	u32 vc_hdr;	/* virtchnl headers (VIRTCHNL_PROTO_HDR_XXX) */
+	u32 ice_hdr;	/* ice headers (ICE_FLOW_SEG_HDR_XXX) */
+};
+
+static const struct ice_vc_hdr_match_type ice_vc_hdr_list_os[] = {
+	{VIRTCHNL_PROTO_HDR_NONE,	ICE_FLOW_SEG_HDR_NONE},
+	{VIRTCHNL_PROTO_HDR_IPV4,	ICE_FLOW_SEG_HDR_IPV4 |
+					ICE_FLOW_SEG_HDR_IPV_OTHER},
+	{VIRTCHNL_PROTO_HDR_IPV6,	ICE_FLOW_SEG_HDR_IPV6 |
+					ICE_FLOW_SEG_HDR_IPV_OTHER},
+	{VIRTCHNL_PROTO_HDR_TCP,	ICE_FLOW_SEG_HDR_TCP},
+	{VIRTCHNL_PROTO_HDR_UDP,	ICE_FLOW_SEG_HDR_UDP},
+	{VIRTCHNL_PROTO_HDR_SCTP,	ICE_FLOW_SEG_HDR_SCTP},
+};
+
+static const struct ice_vc_hdr_match_type ice_vc_hdr_list_comms[] = {
+	{VIRTCHNL_PROTO_HDR_NONE,	ICE_FLOW_SEG_HDR_NONE},
+	{VIRTCHNL_PROTO_HDR_ETH,	ICE_FLOW_SEG_HDR_ETH},
+	{VIRTCHNL_PROTO_HDR_S_VLAN,	ICE_FLOW_SEG_HDR_VLAN},
+	{VIRTCHNL_PROTO_HDR_C_VLAN,	ICE_FLOW_SEG_HDR_VLAN},
+	{VIRTCHNL_PROTO_HDR_IPV4,	ICE_FLOW_SEG_HDR_IPV4 |
+					ICE_FLOW_SEG_HDR_IPV_OTHER},
+	{VIRTCHNL_PROTO_HDR_IPV6,	ICE_FLOW_SEG_HDR_IPV6 |
+					ICE_FLOW_SEG_HDR_IPV_OTHER},
+	{VIRTCHNL_PROTO_HDR_TCP,	ICE_FLOW_SEG_HDR_TCP},
+	{VIRTCHNL_PROTO_HDR_UDP,	ICE_FLOW_SEG_HDR_UDP},
+	{VIRTCHNL_PROTO_HDR_SCTP,	ICE_FLOW_SEG_HDR_SCTP},
+	{VIRTCHNL_PROTO_HDR_PPPOE,	ICE_FLOW_SEG_HDR_PPPOE},
+	{VIRTCHNL_PROTO_HDR_GTPU_IP,	ICE_FLOW_SEG_HDR_GTPU_IP},
+	{VIRTCHNL_PROTO_HDR_GTPU_EH,	ICE_FLOW_SEG_HDR_GTPU_EH},
+	{VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_DWN,
+					ICE_FLOW_SEG_HDR_GTPU_DWN},
+	{VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_UP,
+					ICE_FLOW_SEG_HDR_GTPU_UP},
+	{VIRTCHNL_PROTO_HDR_L2TPV3,	ICE_FLOW_SEG_HDR_L2TPV3},
+	{VIRTCHNL_PROTO_HDR_ESP,	ICE_FLOW_SEG_HDR_ESP},
+	{VIRTCHNL_PROTO_HDR_AH,		ICE_FLOW_SEG_HDR_AH},
+	{VIRTCHNL_PROTO_HDR_PFCP,	ICE_FLOW_SEG_HDR_PFCP_SESSION},
+};
+
+struct ice_vc_hash_field_match_type {
+	u32 vc_hdr;		/* virtchnl headers
+				 * (VIRTCHNL_PROTO_HDR_XXX)
+				 */
+	u32 vc_hash_field;	/* virtchnl hash fields selector
+				 * FIELD_SELECTOR((VIRTCHNL_PROTO_HDR_ETH_XXX))
+				 */
+	u64 ice_hash_field;	/* ice hash fields
+				 * (BIT_ULL(ICE_FLOW_FIELD_IDX_XXX))
+				 */
+};
+
+static const struct
+ice_vc_hash_field_match_type ice_vc_hash_field_list_os[] = {
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
+		ICE_FLOW_HASH_IPV4},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		ICE_FLOW_HASH_IPV4 | BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
+		ICE_FLOW_HASH_IPV6},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		ICE_FLOW_HASH_IPV6 | BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_SRC_PORT)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_DST_PORT)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
+		ICE_FLOW_HASH_TCP_PORT},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_SRC_PORT)},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_DST_PORT)},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
+		ICE_FLOW_HASH_UDP_PORT},
+	{VIRTCHNL_PROTO_HDR_SCTP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT)},
+	{VIRTCHNL_PROTO_HDR_SCTP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)},
+	{VIRTCHNL_PROTO_HDR_SCTP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
+		ICE_FLOW_HASH_SCTP_PORT},
+};
+
+static const struct
+ice_vc_hash_field_match_type ice_vc_hash_field_list_comms[] = {
+	{VIRTCHNL_PROTO_HDR_ETH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_SA)},
+	{VIRTCHNL_PROTO_HDR_ETH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_DA)},
+	{VIRTCHNL_PROTO_HDR_ETH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_DST),
+		ICE_FLOW_HASH_ETH},
+	{VIRTCHNL_PROTO_HDR_ETH,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_ETHERTYPE),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_TYPE)},
+	{VIRTCHNL_PROTO_HDR_S_VLAN,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_S_VLAN_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_S_VLAN)},
+	{VIRTCHNL_PROTO_HDR_C_VLAN,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_C_VLAN_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_C_VLAN)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
+		ICE_FLOW_HASH_IPV4},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		ICE_FLOW_HASH_IPV4 | BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
+		ICE_FLOW_HASH_IPV6},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		ICE_FLOW_HASH_IPV6 | BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_SRC_PORT)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_DST_PORT)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
+		ICE_FLOW_HASH_TCP_PORT},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_SRC_PORT)},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_DST_PORT)},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
+		ICE_FLOW_HASH_UDP_PORT},
+	{VIRTCHNL_PROTO_HDR_SCTP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT)},
+	{VIRTCHNL_PROTO_HDR_SCTP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)},
+	{VIRTCHNL_PROTO_HDR_SCTP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
+		ICE_FLOW_HASH_SCTP_PORT},
+	{VIRTCHNL_PROTO_HDR_PPPOE,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_PPPOE_SESS_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID)},
+	{VIRTCHNL_PROTO_HDR_GTPU_IP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_GTPU_IP_TEID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_IP_TEID)},
+	{VIRTCHNL_PROTO_HDR_L2TPV3,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_L2TPV3_SESS_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_L2TPV3_SESS_ID)},
+	{VIRTCHNL_PROTO_HDR_ESP, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ESP_SPI),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ESP_SPI)},
+	{VIRTCHNL_PROTO_HDR_AH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_AH_SPI),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_AH_SPI)},
+	{VIRTCHNL_PROTO_HDR_PFCP, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_PFCP_SEID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_PFCP_SEID)},
+};
+
 /**
  * ice_get_vf_vsi - get VF's VSI based on the stored index
  * @vf: VF used to get VSI
@@ -2100,6 +2340,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	if (vf->driver_caps & VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
 
+	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
+		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF;
+
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_USO;
 
@@ -2213,6 +2456,210 @@ static bool ice_vc_isvalid_ring_len(u16 ring_len)
 		!(ring_len % ICE_REQ_DESC_MULTIPLE));
 }
 
+/**
+ * ice_vc_parse_rss_cfg - parses hash fields and headers from
+ * a specific virtchnl RSS cfg
+ * @hw: pointer to the hardware
+ * @rss_cfg: pointer to the virtchnl RSS cfg
+ * @addl_hdrs: pointer to the protocol header fields (ICE_FLOW_SEG_HDR_*)
+ * to configure
+ * @hash_flds: pointer to the hash bit fields (ICE_FLOW_HASH_*) to configure
+ *
+ * Return true if all the protocol header and hash fields in the RSS cfg could
+ * be parsed, else return false
+ *
+ * This function parses the virtchnl RSS cfg to be the intended
+ * hash fields and the intended header for RSS configuration
+ */
+static bool
+ice_vc_parse_rss_cfg(struct ice_hw *hw, struct virtchnl_rss_cfg *rss_cfg,
+		     u32 *addl_hdrs, u64 *hash_flds)
+{
+	const struct ice_vc_hash_field_match_type *hf_list;
+	const struct ice_vc_hdr_match_type *hdr_list;
+	int i, hf_list_len, hdr_list_len;
+
+	if (!strncmp(hw->active_pkg_name, "ICE COMMS Package",
+		     sizeof(hw->active_pkg_name))) {
+		hf_list = ice_vc_hash_field_list_comms;
+		hf_list_len = ARRAY_SIZE(ice_vc_hash_field_list_comms);
+		hdr_list = ice_vc_hdr_list_comms;
+		hdr_list_len = ARRAY_SIZE(ice_vc_hdr_list_comms);
+	} else {
+		hf_list = ice_vc_hash_field_list_os;
+		hf_list_len = ARRAY_SIZE(ice_vc_hash_field_list_os);
+		hdr_list = ice_vc_hdr_list_os;
+		hdr_list_len = ARRAY_SIZE(ice_vc_hdr_list_os);
+	}
+
+	for (i = 0; i < rss_cfg->proto_hdrs.count; i++) {
+		struct virtchnl_proto_hdr *proto_hdr =
+					&rss_cfg->proto_hdrs.proto_hdr[i];
+		bool hdr_found = false;
+		int j;
+
+		/* Find matched ice headers according to virtchnl headers. */
+		for (j = 0; j < hdr_list_len; j++) {
+			struct ice_vc_hdr_match_type hdr_map = hdr_list[j];
+
+			if (proto_hdr->type == hdr_map.vc_hdr) {
+				*addl_hdrs |= hdr_map.ice_hdr;
+				hdr_found = true;
+			}
+		}
+
+		if (!hdr_found)
+			return false;
+
+		/* Find matched ice hash fields according to
+		 * virtchnl hash fields.
+		 */
+		for (j = 0; j < hf_list_len; j++) {
+			struct ice_vc_hash_field_match_type hf_map = hf_list[j];
+
+			if (proto_hdr->type == hf_map.vc_hdr &&
+			    proto_hdr->field_selector == hf_map.vc_hash_field) {
+				*hash_flds |= hf_map.ice_hash_field;
+				break;
+			}
+		}
+	}
+
+	return true;
+}
+
+/**
+ * ice_vf_adv_rss_offload_ena - determine if capabilities support advanced
+ * RSS offloads
+ * @caps: VF driver negotiated capabilities
+ *
+ * Return true if VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF capability is set,
+ * else return false
+ */
+static bool ice_vf_adv_rss_offload_ena(u32 caps)
+{
+	return !!(caps & VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF);
+}
+
+/**
+ * ice_vc_handle_rss_cfg
+ * @vf: pointer to the VF info
+ * @msg: pointer to the message buffer
+ * @add: add a RSS config if true, otherwise delete a RSS config
+ *
+ * This function adds/deletes a RSS config
+ */
+static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
+{
+	u32 v_opcode = add ? VIRTCHNL_OP_ADD_RSS_CFG : VIRTCHNL_OP_DEL_RSS_CFG;
+	struct virtchnl_rss_cfg *rss_cfg = (struct virtchnl_rss_cfg *)msg;
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_hw *hw = &vf->pf->hw;
+	struct ice_vsi *vsi;
+
+	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
+		dev_dbg(dev, "VF %d attempting to configure RSS, but RSS is not supported by the PF\n",
+			vf->vf_id);
+		v_ret = VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
+		goto error_param;
+	}
+
+	if (!ice_vf_adv_rss_offload_ena(vf->driver_caps)) {
+		dev_dbg(dev, "VF %d attempting to configure RSS, but Advanced RSS offload is not supported\n",
+			vf->vf_id);
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	if (rss_cfg->proto_hdrs.count > VIRTCHNL_MAX_NUM_PROTO_HDRS ||
+	    rss_cfg->rss_algorithm < VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC ||
+	    rss_cfg->rss_algorithm > VIRTCHNL_RSS_ALG_XOR_SYMMETRIC) {
+		dev_dbg(dev, "VF %d attempting to configure RSS, but RSS configuration is not valid\n",
+			vf->vf_id);
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	vsi = vf->pf->vsi[vf->lan_vsi_idx];
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	if (rss_cfg->rss_algorithm == VIRTCHNL_RSS_ALG_R_ASYMMETRIC) {
+		struct ice_vsi_ctx *ctx;
+		enum ice_status status;
+		u8 lut_type, hash_type;
+
+		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
+		hash_type = add ? ICE_AQ_VSI_Q_OPT_RSS_XOR :
+				ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
+
+		ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+		if (!ctx) {
+			v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+			goto error_param;
+		}
+
+		ctx->info.q_opt_rss = ((lut_type <<
+					ICE_AQ_VSI_Q_OPT_RSS_LUT_S) &
+				       ICE_AQ_VSI_Q_OPT_RSS_LUT_M) |
+				       (hash_type &
+					ICE_AQ_VSI_Q_OPT_RSS_HASH_M);
+
+		/* Preserve existing queueing option setting */
+		ctx->info.q_opt_rss |= (vsi->info.q_opt_rss &
+					  ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_M);
+		ctx->info.q_opt_tc = vsi->info.q_opt_tc;
+		ctx->info.q_opt_flags = vsi->info.q_opt_rss;
+
+		ctx->info.valid_sections =
+				cpu_to_le16(ICE_AQ_VSI_PROP_Q_OPT_VALID);
+
+		status = ice_update_vsi(hw, vsi->idx, ctx, NULL);
+		if (status) {
+			dev_err(dev, "update VSI for RSS failed, err %s aq_err %s\n",
+				ice_stat_str(status),
+				ice_aq_str(hw->adminq.sq_last_status));
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		} else {
+			vsi->info.q_opt_rss = ctx->info.q_opt_rss;
+		}
+
+		kfree(ctx);
+	} else {
+		u32 addl_hdrs = ICE_FLOW_SEG_HDR_NONE;
+		u64 hash_flds = ICE_HASH_INVALID;
+
+		if (!ice_vc_parse_rss_cfg(hw, rss_cfg, &addl_hdrs,
+					  &hash_flds)) {
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			goto error_param;
+		}
+
+		if (add) {
+			if (ice_add_rss_cfg(hw, vsi->idx, hash_flds,
+					    addl_hdrs)) {
+				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+				dev_err(dev, "ice_add_rss_cfg failed for vsi = %d, v_ret = %d\n",
+					vsi->vsi_num, v_ret);
+			}
+		} else {
+			v_ret = VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
+			dev_err(dev, "RSS removal not supported\n");
+		}
+	}
+
+error_param:
+	return ice_vc_send_msg_to_vf(vf, v_opcode, v_ret, NULL, 0);
+}
+
 /**
  * ice_vc_config_rss_key
  * @vf: pointer to the VF info
@@ -4029,6 +4476,12 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 	case VIRTCHNL_OP_DEL_FDIR_FILTER:
 		err = ice_vc_del_fdir_fltr(vf, msg);
 		break;
+	case VIRTCHNL_OP_ADD_RSS_CFG:
+		err = ice_vc_handle_rss_cfg(vf, msg, true);
+		break;
+	case VIRTCHNL_OP_DEL_RSS_CFG:
+		err = ice_vc_handle_rss_cfg(vf, msg, false);
+		break;
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
 		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index ddcff6219b61..bd94d2467e01 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -136,7 +136,9 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_DISABLE_CHANNELS = 31,
 	VIRTCHNL_OP_ADD_CLOUD_FILTER = 32,
 	VIRTCHNL_OP_DEL_CLOUD_FILTER = 33,
-	/* opcode 34 - 46 are reserved */
+	/* opcode 34 - 44 are reserved */
+	VIRTCHNL_OP_ADD_RSS_CFG = 45,
+	VIRTCHNL_OP_DEL_RSS_CFG = 46,
 	VIRTCHNL_OP_ADD_FDIR_FILTER = 47,
 	VIRTCHNL_OP_DEL_FDIR_FILTER = 48,
 	VIRTCHNL_OP_MAX,
@@ -251,6 +253,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM		0X00200000
 #define VIRTCHNL_VF_OFFLOAD_RX_ENCAP_CSUM	0X00400000
 #define VIRTCHNL_VF_OFFLOAD_ADQ			0X00800000
+#define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		0X08000000
 #define VIRTCHNL_VF_OFFLOAD_FDIR_PF		0X10000000
 #define VIRTCHNL_VF_OFFLOAD_USO			0X02000000
 
@@ -704,6 +707,14 @@ enum virtchnl_vfr_states {
 	VIRTCHNL_VFR_VFACTIVE,
 };
 
+/* Type of RSS algorithm */
+enum virtchnl_rss_algorithm {
+	VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC	= 0,
+	VIRTCHNL_RSS_ALG_R_ASYMMETRIC		= 1,
+	VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC	= 2,
+	VIRTCHNL_RSS_ALG_XOR_SYMMETRIC		= 3,
+};
+
 #define VIRTCHNL_MAX_NUM_PROTO_HDRS	32
 #define PROTO_HDR_SHIFT			5
 #define PROTO_HDR_FIELD_START(proto_hdr_type) ((proto_hdr_type) << PROTO_HDR_SHIFT)
@@ -859,6 +870,14 @@ struct virtchnl_proto_hdrs {
 
 VIRTCHNL_CHECK_STRUCT_LEN(2312, virtchnl_proto_hdrs);
 
+struct virtchnl_rss_cfg {
+	struct virtchnl_proto_hdrs proto_hdrs;	   /* protocol headers */
+	enum virtchnl_rss_algorithm rss_algorithm; /* RSS algorithm type */
+	u8 reserved[128];			   /* reserve for future */
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(2444, virtchnl_rss_cfg);
+
 /* action configuration for FDIR */
 struct virtchnl_filter_action {
 	enum virtchnl_action type;
@@ -1127,6 +1146,10 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_DEL_CLOUD_FILTER:
 		valid_len = sizeof(struct virtchnl_filter);
 		break;
+	case VIRTCHNL_OP_ADD_RSS_CFG:
+	case VIRTCHNL_OP_DEL_RSS_CFG:
+		valid_len = sizeof(struct virtchnl_rss_cfg);
+		break;
 	case VIRTCHNL_OP_ADD_FDIR_FILTER:
 		valid_len = sizeof(struct virtchnl_fdir_add);
 		break;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

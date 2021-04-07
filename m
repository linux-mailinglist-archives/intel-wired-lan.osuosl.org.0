Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC843565BC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Apr 2021 09:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B6404405B9;
	Wed,  7 Apr 2021 07:46:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cV_frO4JStxW; Wed,  7 Apr 2021 07:46:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8499F405B2;
	Wed,  7 Apr 2021 07:46:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C37371BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 07:46:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B22E0849DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 07:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SnRZGkZf136b for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Apr 2021 07:46:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E38A5848EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 07:46:37 +0000 (UTC)
IronPort-SDR: HH7hbpIX8NTjHS6waKbQjRILXnpjnscYhWj1ZpLxNw91oVahYfUh+15QGda6YmytumMXfl5IcU
 edwnRh4A3HuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9946"; a="213640280"
X-IronPort-AV: E=Sophos;i="5.82,201,1613462400"; d="scan'208";a="213640280"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 00:46:37 -0700
IronPort-SDR: /Sufdkc7PCPoQtu6zqJImXryeQjOP0U/VZAX7H/Fzjna5X5g6+2sfyPhQLJx6wkpQO0l/D+W9S
 Aih8wIOaN2Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,201,1613462400"; d="scan'208";a="415154065"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by fmsmga008.fm.intel.com with ESMTP; 07 Apr 2021 00:46:35 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Apr 2021 15:27:32 +0800
Message-Id: <20210407072732.464646-7-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210407072732.464646-1-haiyue.wang@intel.com>
References: <20210407072732.464646-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 6/6] iavf: Support for
 modifying SCTP RSS flow hashing
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
Cc: qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This commit provides the ability to enable SCTP RSS hashing by ethtool.
It gives users option of generating RSS hash based on the SCTP source
and destination ports numbers, IPv4 or IPv6 source and destination
addresses.

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_adv_rss.c    | 28 +++++++++++++++++--
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    | 10 ++++++-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 23 +++++++++++++--
 3 files changed, 56 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
index 20d44601a8a1..0ef77af9c5aa 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
@@ -73,6 +73,23 @@ iavf_fill_adv_rss_udp_hdr(struct virtchnl_proto_hdr *hdr, u64 hash_flds)
 		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, UDP, DST_PORT);
 }
 
+/**
+ * iavf_fill_adv_rss_sctp_hdr - fill the SCTP RSS protocol header
+ * @hdr: the virtchnl message protocol header data structure
+ * @hash_flds: the RSS configuration protocol hash fields
+ */
+static void
+iavf_fill_adv_rss_sctp_hdr(struct virtchnl_proto_hdr *hdr, u64 hash_flds)
+{
+	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, SCTP);
+
+	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_SCTP_SRC_PORT)
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, SCTP, SRC_PORT);
+
+	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT)
+		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, SCTP, DST_PORT);
+}
+
 /**
  * iavf_fill_adv_rss_cfg_msg - fill the RSS configuration into virtchnl message
  * @rss_cfg: the virtchnl message to be filled with RSS configuration setting
@@ -112,6 +129,9 @@ iavf_fill_adv_rss_cfg_msg(struct virtchnl_rss_cfg *rss_cfg,
 	case IAVF_ADV_RSS_FLOW_SEG_HDR_UDP:
 		iavf_fill_adv_rss_udp_hdr(hdr, hash_flds);
 		break;
+	case IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP:
+		iavf_fill_adv_rss_sctp_hdr(hdr, hash_flds);
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -160,6 +180,8 @@ iavf_print_adv_rss_cfg(struct iavf_adapter *adapter, struct iavf_adv_rss *rss,
 		proto = "TCP";
 	else if (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_UDP)
 		proto = "UDP";
+	else if (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP)
+		proto = "SCTP";
 	else
 		return;
 
@@ -178,10 +200,12 @@ iavf_print_adv_rss_cfg(struct iavf_adapter *adapter, struct iavf_adv_rss *rss,
 			 IAVF_ADV_RSS_HASH_FLD_IPV6_DA))
 		strcat(hash_opt, "IP DA,");
 	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT |
-			 IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT))
+			 IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT |
+			 IAVF_ADV_RSS_HASH_FLD_SCTP_SRC_PORT))
 		strcat(hash_opt, "src port,");
 	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT |
-			 IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT))
+			 IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT |
+			 IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT))
 		strcat(hash_opt, "dst port,");
 
 	if (!action)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
index 4681f5e8321d..4d3be11af7aa 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
@@ -21,6 +21,7 @@ enum iavf_adv_rss_flow_seg_hdr {
 	IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6	= 0x00000002,
 	IAVF_ADV_RSS_FLOW_SEG_HDR_TCP	= 0x00000004,
 	IAVF_ADV_RSS_FLOW_SEG_HDR_UDP	= 0x00000008,
+	IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP	= 0x00000010,
 };
 
 #define IAVF_ADV_RSS_FLOW_SEG_HDR_L3		\
@@ -29,7 +30,8 @@ enum iavf_adv_rss_flow_seg_hdr {
 
 #define IAVF_ADV_RSS_FLOW_SEG_HDR_L4		\
 	(IAVF_ADV_RSS_FLOW_SEG_HDR_TCP |	\
-	 IAVF_ADV_RSS_FLOW_SEG_HDR_UDP)
+	 IAVF_ADV_RSS_FLOW_SEG_HDR_UDP |	\
+	 IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP)
 
 enum iavf_adv_rss_flow_field {
 	/* L3 */
@@ -42,6 +44,8 @@ enum iavf_adv_rss_flow_field {
 	IAVF_ADV_RSS_FLOW_FIELD_IDX_TCP_DST_PORT,
 	IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_SRC_PORT,
 	IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_DST_PORT,
+	IAVF_ADV_RSS_FLOW_FIELD_IDX_SCTP_SRC_PORT,
+	IAVF_ADV_RSS_FLOW_FIELD_IDX_SCTP_DST_PORT,
 
 	/* The total number of enums must not exceed 64 */
 	IAVF_ADV_RSS_FLOW_FIELD_IDX_MAX
@@ -64,6 +68,10 @@ enum iavf_adv_rss_flow_field {
 	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_SRC_PORT)
 #define IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT	\
 	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_DST_PORT)
+#define IAVF_ADV_RSS_HASH_FLD_SCTP_SRC_PORT	\
+	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_SCTP_SRC_PORT)
+#define IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT	\
+	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_SCTP_DST_PORT)
 
 /* bookkeeping of advanced RSS configuration */
 struct iavf_adv_rss {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 8a396cba944b..0d22a5275218 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1438,6 +1438,10 @@ static u32 iavf_adv_rss_parse_hdrs(struct ethtool_rxnfc *cmd)
 		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_UDP |
 			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
 		break;
+	case SCTP_V4_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
+		break;
 	case TCP_V6_FLOW:
 		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_TCP |
 			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
@@ -1446,6 +1450,10 @@ static u32 iavf_adv_rss_parse_hdrs(struct ethtool_rxnfc *cmd)
 		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_UDP |
 			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
 		break;
+	case SCTP_V6_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
+		break;
 	default:
 		break;
 	}
@@ -1468,6 +1476,7 @@ static u64 iavf_adv_rss_parse_hash_flds(struct ethtool_rxnfc *cmd)
 		switch (cmd->flow_type) {
 		case TCP_V4_FLOW:
 		case UDP_V4_FLOW:
+		case SCTP_V4_FLOW:
 			if (cmd->data & RXH_IP_SRC)
 				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV4_SA;
 			if (cmd->data & RXH_IP_DST)
@@ -1475,6 +1484,7 @@ static u64 iavf_adv_rss_parse_hash_flds(struct ethtool_rxnfc *cmd)
 			break;
 		case TCP_V6_FLOW:
 		case UDP_V6_FLOW:
+		case SCTP_V6_FLOW:
 			if (cmd->data & RXH_IP_SRC)
 				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV6_SA;
 			if (cmd->data & RXH_IP_DST)
@@ -1501,6 +1511,13 @@ static u64 iavf_adv_rss_parse_hash_flds(struct ethtool_rxnfc *cmd)
 			if (cmd->data & RXH_L4_B_2_3)
 				hfld |= IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT;
 			break;
+		case SCTP_V4_FLOW:
+		case SCTP_V6_FLOW:
+			if (cmd->data & RXH_L4_B_0_1)
+				hfld |= IAVF_ADV_RSS_HASH_FLD_SCTP_SRC_PORT;
+			if (cmd->data & RXH_L4_B_2_3)
+				hfld |= IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT;
+			break;
 		default:
 			break;
 		}
@@ -1635,11 +1652,13 @@ iavf_get_adv_rss_hash_opt(struct iavf_adapter *adapter,
 		cmd->data |= (u64)RXH_IP_DST;
 
 	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT |
-			 IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT))
+			 IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT |
+			 IAVF_ADV_RSS_HASH_FLD_SCTP_SRC_PORT))
 		cmd->data |= (u64)RXH_L4_B_0_1;
 
 	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT |
-			 IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT))
+			 IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT |
+			 IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT))
 		cmd->data |= (u64)RXH_L4_B_2_3;
 
 	return 0;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

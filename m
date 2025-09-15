Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0A7B57D8E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 15:39:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B44026125E;
	Mon, 15 Sep 2025 13:39:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LjMKF8PaChEC; Mon, 15 Sep 2025 13:39:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F250612D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757943589;
	bh=GQyLbf8BmnVUXWNkwqSX3lHkPqZpZsAR8s/bEPxfP5M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jKQmj6EjGv7mAXnetYb31TyPi06Mqm/C7IN4iQiHxlCGaV+r85t/KCbRuVI8a3amC
	 IPXdpdmO7RMQ69XlQtpgA2B7X4/ztzi3rzavFe62N7R0P0+yksrU1H7zdvKtXFCIXd
	 q+rjkRYjg4RIxvwfZT8IBfWQlNkf4eSP96HeVHNsd97Nya0a/rrAvRjR0HSfPRPil+
	 89N2DUPCtSsXFGm+Hl71Blljl4/Y4VLlaRc5bG+dLm6uEMQS6s1BYhP51EhcTbBwI7
	 Unf+OMDabmEPjy+0YnQUd5rLdlU4N70LHAsNvzXmHsRdQYGgBhrvBwFy/nqF7/pxq7
	 hsxzaMNRUoWcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F250612D7;
	Mon, 15 Sep 2025 13:39:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DC8871F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 13:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE53F6124A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 13:39:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JKlMJefzLWOP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 13:39:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DFF8B6118D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFF8B6118D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DFF8B6118D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 13:39:46 +0000 (UTC)
X-CSE-ConnectionGUID: mhegROIcRJ2LSkPOZTzKbQ==
X-CSE-MsgGUID: fsj7WuOVQZOuB0SF75d2jQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64008167"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64008167"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:39:45 -0700
X-CSE-ConnectionGUID: QDoYTP3fR4+CsSIUbaDN4w==
X-CSE-MsgGUID: AwyfHIoNSqeSVui+GKxZEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="205421560"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 15 Sep 2025 06:39:43 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 mschmidt@redhat.com, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Mon, 15 Sep 2025 13:39:28 +0000
Message-ID: <20250915133928.3308335-6-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250915133928.3308335-1-aleksandr.loktionov@intel.com>
References: <20250915133928.3308335-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757943587; x=1789479587;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1kYwmNyIwuiw9jNYQcZQdMyz0F2Fm/AyCA+9iGfxEYQ=;
 b=XHMnBCILTbo+ZwJHtSapfCKpwRSxWARNHyeIERzyKLtUzCEYLiw2j70a
 tBX73WJAAiwbz0RT2hwIplQuEnx/5K/zISZwRatOngJzKko54wZyqs6e1
 ZSfhbTMkFnfMvx+ZTEDU04+rtoOjjFHTEpepxWP2R8mES49yNZAIAss6l
 GESQ/GaBKf/zOTUerjFGq/k7jBfdAo5Wely91zfc61evwtWkCXMR7KRXS
 JV7nceJ9JSlC3Et4L/CnHVT2MN2moiuD8XR/IazHpYFmw8prsOQNSNu5X
 NVNnBU+tlUD27QSlcQsAExJkzFODCLDu+6bROcroEgxBMPs6PzrU5fP4G
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XHMnBCIL
Subject: [Intel-wired-lan] [PATCH iwl-next v5 5/5] iavf: add RSS support for
 GTP protocol via ethtool
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extend the iavf driver to support Receive Side Scaling (RSS)
configuration for GTP (GPRS Tunneling Protocol) flows using ethtool.

The implementation introduces new RSS flow segment headers and hash field
definitions for various GTP encapsulations, including:

  - GTPC
  - GTPU (IP, Extension Header, Uplink, Downlink)
  - TEID-based hashing

The ethtool interface is updated to parse and apply these new flow types
and hash fields, enabling fine-grained traffic distribution for GTP-based
mobile workloads.

This enhancement improves performance and scalability for virtualized
network functions (VNFs) and user plane functions (UPFs) in 5G and LTE
deployments.

Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_adv_rss.c    | 119 ++++++++++++++----
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |  31 +++++
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  89 +++++++++++++
 3 files changed, 216 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
index a9e1da3..4d12dfe 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
@@ -90,6 +90,55 @@ iavf_fill_adv_rss_sctp_hdr(struct virtchnl_proto_hdr *hdr, u64 hash_flds)
 		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, SCTP, DST_PORT);
 }
 
+/**
+ * iavf_fill_adv_rss_gtp_hdr - Fill GTP-related RSS protocol headers
+ * @proto_hdrs: pointer to the virtchnl protocol headers structure to populate
+ * @packet_hdrs: bitmask of packet header types to configure
+ * @hash_flds: RSS hash field configuration
+ *
+ * This function populates the virtchnl protocol header structure with
+ * appropriate GTP-related header types based on the specified packet_hdrs.
+ * It supports GTPC, GTPU with extension headers, and uplink/downlink PDU
+ * types. For certain GTPU types, it also appends an IPv4 header to enable
+ * hashing on the destination IP address.
+ *
+ * Return: 0 on success or -EOPNOTSUPP if the packet_hdrs value is unsupported.
+ */
+static int
+iavf_fill_adv_rss_gtp_hdr(struct virtchnl_proto_hdrs *proto_hdrs,
+			  u32 packet_hdrs, u64 hash_flds)
+{
+	struct virtchnl_proto_hdr *hdr;
+
+	hdr = &proto_hdrs->proto_hdr[proto_hdrs->count - 1];
+
+	switch (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_GTP) {
+	case IAVF_ADV_RSS_FLOW_SEG_HDR_GTPC_TEID:
+	case IAVF_ADV_RSS_FLOW_SEG_HDR_GTPC:
+		VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, GTPC);
+		break;
+	case IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_EH:
+		VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, GTPU_EH);
+		break;
+	case IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_UP:
+		VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, GTPU_EH_PDU_UP);
+		hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+		iavf_fill_adv_rss_ip4_hdr(hdr, IAVF_ADV_RSS_HASH_FLD_IPV4_DA);
+		break;
+	case IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_DWN:
+		VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, GTPU_EH_PDU_DWN);
+		fallthrough;
+	case IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_IP:
+		hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+		iavf_fill_adv_rss_ip4_hdr(hdr, IAVF_ADV_RSS_HASH_FLD_IPV4_DA);
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
 /**
  * iavf_fill_adv_rss_cfg_msg - fill the RSS configuration into virtchnl message
  * @rss_cfg: the virtchnl message to be filled with RSS configuration setting
@@ -103,6 +152,8 @@ int
 iavf_fill_adv_rss_cfg_msg(struct virtchnl_rss_cfg *rss_cfg,
 			  u32 packet_hdrs, u64 hash_flds, bool symm)
 {
+	const u32 packet_l3_hdrs = packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_L3;
+	const u32 packet_l4_hdrs = packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_L4;
 	struct virtchnl_proto_hdrs *proto_hdrs = &rss_cfg->proto_hdrs;
 	struct virtchnl_proto_hdr *hdr;
 
@@ -113,31 +164,41 @@ iavf_fill_adv_rss_cfg_msg(struct virtchnl_rss_cfg *rss_cfg,
 
 	proto_hdrs->tunnel_level = 0;	/* always outer layer */
 
-	hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
-	switch (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_L3) {
-	case IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4:
-		iavf_fill_adv_rss_ip4_hdr(hdr, hash_flds);
-		break;
-	case IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6:
-		iavf_fill_adv_rss_ip6_hdr(hdr, hash_flds);
-		break;
-	default:
-		return -EINVAL;
+	if (packet_l3_hdrs) {
+		hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+		switch (packet_l3_hdrs) {
+		case IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4:
+			iavf_fill_adv_rss_ip4_hdr(hdr, hash_flds);
+			break;
+		case IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6:
+			iavf_fill_adv_rss_ip6_hdr(hdr, hash_flds);
+			break;
+		default:
+			return -EINVAL;
+		}
 	}
 
-	hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
-	switch (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_L4) {
-	case IAVF_ADV_RSS_FLOW_SEG_HDR_TCP:
-		iavf_fill_adv_rss_tcp_hdr(hdr, hash_flds);
-		break;
-	case IAVF_ADV_RSS_FLOW_SEG_HDR_UDP:
-		iavf_fill_adv_rss_udp_hdr(hdr, hash_flds);
-		break;
-	case IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP:
-		iavf_fill_adv_rss_sctp_hdr(hdr, hash_flds);
-		break;
-	default:
-		return -EINVAL;
+	if (packet_l4_hdrs) {
+		hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+		switch (packet_l4_hdrs) {
+		case IAVF_ADV_RSS_FLOW_SEG_HDR_TCP:
+			iavf_fill_adv_rss_tcp_hdr(hdr, hash_flds);
+			break;
+		case IAVF_ADV_RSS_FLOW_SEG_HDR_UDP:
+			iavf_fill_adv_rss_udp_hdr(hdr, hash_flds);
+			break;
+		case IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP:
+			iavf_fill_adv_rss_sctp_hdr(hdr, hash_flds);
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+
+	if (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_GTP) {
+		hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
+		if (iavf_fill_adv_rss_gtp_hdr(proto_hdrs, packet_hdrs, hash_flds))
+			return -EINVAL;
 	}
 
 	return 0;
@@ -186,6 +247,8 @@ iavf_print_adv_rss_cfg(struct iavf_adapter *adapter, struct iavf_adv_rss *rss,
 		proto = "UDP";
 	else if (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP)
 		proto = "SCTP";
+	else if (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_GTP)
+		proto = "GTP";
 	else
 		return;
 
@@ -211,6 +274,16 @@ iavf_print_adv_rss_cfg(struct iavf_adapter *adapter, struct iavf_adv_rss *rss,
 			 IAVF_ADV_RSS_HASH_FLD_UDP_DST_PORT |
 			 IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT))
 		strcat(hash_opt, "dst port,");
+	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_GTPC_TEID)
+		strcat(hash_opt, "gtp-c,");
+	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_GTPU_IP_TEID)
+		strcat(hash_opt, "gtp-u ip,");
+	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_GTPU_EH_TEID)
+		strcat(hash_opt, "gtp-u ext,");
+	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_GTPU_UP_TEID)
+		strcat(hash_opt, "gtp-u ul,");
+	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_GTPU_DWN_TEID)
+		strcat(hash_opt, "gtp-u dl,");
 
 	if (!action)
 		action = "";
diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
index e31eb2a..74cc9e0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
@@ -22,6 +22,12 @@ enum iavf_adv_rss_flow_seg_hdr {
 	IAVF_ADV_RSS_FLOW_SEG_HDR_TCP	= 0x00000004,
 	IAVF_ADV_RSS_FLOW_SEG_HDR_UDP	= 0x00000008,
 	IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP	= 0x00000010,
+	IAVF_ADV_RSS_FLOW_SEG_HDR_GTPC		= 0x00000400,
+	IAVF_ADV_RSS_FLOW_SEG_HDR_GTPC_TEID	= 0x00000800,
+	IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_IP	= 0x00001000,
+	IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_EH	= 0x00002000,
+	IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_DWN	= 0x00004000,
+	IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_UP	= 0x00008000,
 };
 
 #define IAVF_ADV_RSS_FLOW_SEG_HDR_L3		\
@@ -33,6 +39,14 @@ enum iavf_adv_rss_flow_seg_hdr {
 	 IAVF_ADV_RSS_FLOW_SEG_HDR_UDP |	\
 	 IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP)
 
+#define IAVF_ADV_RSS_FLOW_SEG_HDR_GTP		\
+	(IAVF_ADV_RSS_FLOW_SEG_HDR_GTPC |	\
+	 IAVF_ADV_RSS_FLOW_SEG_HDR_GTPC_TEID |	\
+	 IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_IP |	\
+	 IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_EH |	\
+	 IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_DWN |	\
+	 IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_UP)
+
 enum iavf_adv_rss_flow_field {
 	/* L3 */
 	IAVF_ADV_RSS_FLOW_FIELD_IDX_IPV4_SA,
@@ -46,6 +60,17 @@ enum iavf_adv_rss_flow_field {
 	IAVF_ADV_RSS_FLOW_FIELD_IDX_UDP_DST_PORT,
 	IAVF_ADV_RSS_FLOW_FIELD_IDX_SCTP_SRC_PORT,
 	IAVF_ADV_RSS_FLOW_FIELD_IDX_SCTP_DST_PORT,
+	/* GTPC_TEID */
+	IAVF_ADV_RSS_FLOW_FIELD_IDX_GTPC_TEID,
+	/* GTPU_IP */
+	IAVF_ADV_RSS_FLOW_FIELD_IDX_GTPU_IP_TEID,
+	/* GTPU_EH */
+	IAVF_ADV_RSS_FLOW_FIELD_IDX_GTPU_EH_TEID,
+	IAVF_ADV_RSS_FLOW_FIELD_IDX_GTPU_EH_QFI,
+	/* GTPU_UP */
+	IAVF_ADV_RSS_FLOW_FIELD_IDX_GTPU_UP_TEID,
+	/* GTPU_DWN */
+	IAVF_ADV_RSS_FLOW_FIELD_IDX_GTPU_DWN_TEID,
 
 	/* The total number of enums must not exceed 64 */
 	IAVF_ADV_RSS_FLOW_FIELD_IDX_MAX
@@ -72,6 +97,12 @@ enum iavf_adv_rss_flow_field {
 	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_SCTP_SRC_PORT)
 #define IAVF_ADV_RSS_HASH_FLD_SCTP_DST_PORT	\
 	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_SCTP_DST_PORT)
+#define IAVF_ADV_RSS_HASH_FLD_GTPC_TEID	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_GTPC_TEID)
+#define IAVF_ADV_RSS_HASH_FLD_GTPU_IP_TEID BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_GTPU_IP_TEID)
+#define IAVF_ADV_RSS_HASH_FLD_GTPU_EH_TEID BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_GTPU_EH_TEID)
+#define IAVF_ADV_RSS_HASH_FLD_GTPU_UP_TEID BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_GTPU_UP_TEID)
+#define IAVF_ADV_RSS_HASH_FLD_GTPU_DWN_TEID \
+	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_GTPU_DWN_TEID)
 
 /* bookkeeping of advanced RSS configuration */
 struct iavf_adv_rss {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 05d72be..a3f8ced 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1336,6 +1336,56 @@ static u32 iavf_adv_rss_parse_hdrs(const struct ethtool_rxfh_fields *cmd)
 		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_SCTP |
 			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
 		break;
+	case GTPU_V4_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_IP |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
+		break;
+	case GTPC_V4_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_GTPC |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_UDP |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
+		break;
+	case GTPC_TEID_V4_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_GTPC_TEID |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_UDP |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
+		break;
+	case GTPU_EH_V4_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_EH |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
+		break;
+	case GTPU_UL_V4_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_UP |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
+		break;
+	case GTPU_DL_V4_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_DWN |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
+		break;
+	case GTPU_V6_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_IP |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
+		break;
+	case GTPC_V6_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_GTPC |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
+		break;
+	case GTPC_TEID_V6_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_GTPC_TEID |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
+		break;
+	case GTPU_EH_V6_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_EH |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
+		break;
+	case GTPU_UL_V6_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_UP |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
+		break;
+	case GTPU_DL_V6_FLOW:
+		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_GTPU_DWN |
+			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
+		break;
 	default:
 		break;
 	}
@@ -1353,6 +1403,12 @@ iavf_adv_rss_parse_hash_flds(const struct ethtool_rxfh_fields *cmd, bool symm)
 		case TCP_V4_FLOW:
 		case UDP_V4_FLOW:
 		case SCTP_V4_FLOW:
+		case GTPU_V4_FLOW:
+		case GTPC_V4_FLOW:
+		case GTPC_TEID_V4_FLOW:
+		case GTPU_EH_V4_FLOW:
+		case GTPU_UL_V4_FLOW:
+		case GTPU_DL_V4_FLOW:
 			if (cmd->data & RXH_IP_SRC)
 				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV4_SA;
 			if (cmd->data & RXH_IP_DST)
@@ -1361,6 +1417,12 @@ iavf_adv_rss_parse_hash_flds(const struct ethtool_rxfh_fields *cmd, bool symm)
 		case TCP_V6_FLOW:
 		case UDP_V6_FLOW:
 		case SCTP_V6_FLOW:
+		case GTPU_V6_FLOW:
+		case GTPC_V6_FLOW:
+		case GTPC_TEID_V6_FLOW:
+		case GTPU_EH_V6_FLOW:
+		case GTPU_UL_V6_FLOW:
+		case GTPU_DL_V6_FLOW:
 			if (cmd->data & RXH_IP_SRC)
 				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV6_SA;
 			if (cmd->data & RXH_IP_DST)
@@ -1382,6 +1444,7 @@ iavf_adv_rss_parse_hash_flds(const struct ethtool_rxfh_fields *cmd, bool symm)
 			break;
 		case UDP_V4_FLOW:
 		case UDP_V6_FLOW:
+		case GTPC_V4_FLOW:
 			if (cmd->data & RXH_L4_B_0_1)
 				hfld |= IAVF_ADV_RSS_HASH_FLD_UDP_SRC_PORT;
 			if (cmd->data & RXH_L4_B_2_3)
@@ -1398,6 +1461,32 @@ iavf_adv_rss_parse_hash_flds(const struct ethtool_rxfh_fields *cmd, bool symm)
 			break;
 		}
 	}
+	if (cmd->data & RXH_GTP_TEID) {
+		switch (cmd->flow_type) {
+		case GTPC_TEID_V4_FLOW:
+		case GTPC_TEID_V6_FLOW:
+			hfld |= IAVF_ADV_RSS_HASH_FLD_GTPC_TEID;
+			break;
+		case GTPU_V4_FLOW:
+		case GTPU_V6_FLOW:
+			hfld |= IAVF_ADV_RSS_HASH_FLD_GTPU_IP_TEID;
+			break;
+		case GTPU_EH_V4_FLOW:
+		case GTPU_EH_V6_FLOW:
+			hfld |= IAVF_ADV_RSS_HASH_FLD_GTPU_EH_TEID;
+			break;
+		case GTPU_UL_V4_FLOW:
+		case GTPU_UL_V6_FLOW:
+			hfld |= IAVF_ADV_RSS_HASH_FLD_GTPU_UP_TEID;
+			break;
+		case GTPU_DL_V4_FLOW:
+		case GTPU_DL_V6_FLOW:
+			hfld |= IAVF_ADV_RSS_HASH_FLD_GTPU_DWN_TEID;
+			break;
+		default:
+			break;
+		}
+	}
 
 	return hfld;
 }
-- 
2.47.1


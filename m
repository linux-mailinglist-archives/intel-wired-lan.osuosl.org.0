Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4428CBFC0B6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 15:12:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFFDE406D3;
	Wed, 22 Oct 2025 13:12:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6j0RCCyEluub; Wed, 22 Oct 2025 13:12:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E188C40787
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761138755;
	bh=b9RvhC9+PBgDnxPSKHvMMMsgqSY+13Auaty+4lx6PxY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ze4eFCLwKQgX0+RAVGnUi32tWOS5vN5okpIv9F1Om5wbeqOUElU2BX8zUfgXLGfZv
	 m3RgMn3o2R2uUQ4HCAJ0pQDUxFpKl2KmynHntN3cMJCVNxShtRyBHZaENYN1R2Qrp5
	 LwfgcgyYRACkkqYs+D5kq4gG4KSdZaJVYT10Uz8/5uqE1ahwDFW348uTG+d5T2Yf3d
	 C8nsPY8IaMP7CyZfr8ug6/RADqXhU36tWHY8+YvuzmpNV/yK78dHNX5MY7uNx19Ius
	 8ul9E1/IlZGyp56xNAO8aC1kWEkSN1V00/JDwvFnAEoAmyLRKtsUuYcBuweBmY4gUP
	 wNEwfWXSVG/KQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E188C40787;
	Wed, 22 Oct 2025 13:12:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 49C6EDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 13:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B2EA40638
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 13:12:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xJHzRB40G5kz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 13:12:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4D38240556
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D38240556
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D38240556
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 13:12:33 +0000 (UTC)
X-CSE-ConnectionGUID: O/Yr2AI2SmCk+ViZLu9MwQ==
X-CSE-MsgGUID: 3rI/e0DzQb6Nvy//oYlXOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63206653"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63206653"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 06:12:33 -0700
X-CSE-ConnectionGUID: LQmqZv/vTcKzBxIcm19rBA==
X-CSE-MsgGUID: Eva6I2S8TkCC1v7kfoUCvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183915370"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 22 Oct 2025 06:12:31 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 kuba@kernel.org, anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com
Cc: Dan Nowlin <dan.nowlin@intel.com>, Qi Zhang <qi.z.zhang@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Wed, 22 Oct 2025 15:12:21 +0200
Message-ID: <20251022131225.2304087-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
References: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761138753; x=1792674753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZNHIv5XOlOJ8/1SVZvNk/+fSmrTiVrKpJVsxhr/6yVc=;
 b=ji74E4ekLSaGSvH2PfZeDab/YZXl7uc7UVgbrJSIrQ/ZSGj2d6xwlFKc
 pYrJZJoKvhSw05dv5hrfIQskxBl8CQxAoXxNawlSC3Rpx2lPkSlybHwh9
 Qb91q4Wdiqh9Ol+yc5vE2KJ+e1n3m/v9bqa+w3WGG6qQwS+X7hCHO3EBl
 B7jih74IOA3Pu6WloVqz3czzHUFPBOb36c9snJGqomJNk5znHKtKtMGtN
 RGMfGgqX382ylUHCGHc+i6VGIhvvsqJrhDmaQIGKaNoscBdZKF0aRUDJJ
 2GHopvzdjrZkyfDYwet02Wnufu5AJGuktRGZSP9MlrCkKv+ULCxhr+8jo
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ji74E4ek
Subject: [Intel-wired-lan] [PATCH iwl-next v6 2/6] ice: add virtchnl
 definitions and static data for GTP RSS
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

Add virtchnl protocol header and field definitions for advanced RSS
configuration including GTPC, GTPU, L2TPv2, ECPRI, PPP, GRE, and IP
fragment headers.

- Define new virtchnl protocol header types
- Add RSS field selectors for tunnel protocols
- Extend static mapping arrays for protocol field matching
- Add L2TPv2 session ID and length+session ID field support

This provides the foundational definitions needed for VF RSS
configuration of tunnel protocols.

Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Co-developed-by: Jie Wang <jie1x.wang@intel.com>
Signed-off-by: Jie Wang <jie1x.wang@intel.com>
Co-developed-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Co-developed-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Co-developed-by: Ting Xu <ting.xu@intel.com>
Signed-off-by: Ting Xu <ting.xu@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/virt/rss.c | 91 +++++++++++++++++++++++
 include/linux/avf/virtchnl.h              | 48 ++++++++++++
 2 files changed, 139 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/virt/rss.c b/drivers/net/ethernet/intel/ice/virt/rss.c
index cbdbb32..71d7db6 100644
--- a/drivers/net/ethernet/intel/ice/virt/rss.c
+++ b/drivers/net/ethernet/intel/ice/virt/rss.c
@@ -36,6 +36,13 @@ static const struct ice_vc_hdr_match_type ice_vc_hdr_list[] = {
 	{VIRTCHNL_PROTO_HDR_ESP,	ICE_FLOW_SEG_HDR_ESP},
 	{VIRTCHNL_PROTO_HDR_AH,		ICE_FLOW_SEG_HDR_AH},
 	{VIRTCHNL_PROTO_HDR_PFCP,	ICE_FLOW_SEG_HDR_PFCP_SESSION},
+	{VIRTCHNL_PROTO_HDR_GTPC,	ICE_FLOW_SEG_HDR_GTPC},
+	{VIRTCHNL_PROTO_HDR_L2TPV2,	ICE_FLOW_SEG_HDR_L2TPV2},
+	{VIRTCHNL_PROTO_HDR_PPP,	ICE_FLOW_SEG_HDR_PPP},
+	{VIRTCHNL_PROTO_HDR_ECPRI,	ICE_FLOW_SEG_HDR_ECPRI_TP0},
+	{VIRTCHNL_PROTO_HDR_IPV4_FRAG,	ICE_FLOW_SEG_HDR_IPV_FRAG},
+	{VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG,	ICE_FLOW_SEG_HDR_IPV_FRAG},
+	{VIRTCHNL_PROTO_HDR_GRE,        ICE_FLOW_SEG_HDR_GRE},
 };
 
 struct ice_vc_hash_field_match_type {
@@ -149,6 +156,90 @@ ice_vc_hash_field_match_type ice_vc_hash_field_list[] = {
 	{VIRTCHNL_PROTO_HDR_L2TPV3,
 		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_L2TPV3_SESS_ID),
 		BIT_ULL(ICE_FLOW_FIELD_IDX_L2TPV3_SESS_ID)},
+	{VIRTCHNL_PROTO_HDR_L2TPV2,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_L2TPV2_SESS_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_L2TPV2_SESS_ID)},
+	{VIRTCHNL_PROTO_HDR_L2TPV2,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_L2TPV2_LEN_SESS_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_L2TPV2_LEN_SESS_ID)},
+	{VIRTCHNL_PROTO_HDR_PPP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_PPP_PROTO_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_PPP_PROTO_ID)},
+	{VIRTCHNL_PROTO_HDR_GTPC,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_GTPC_TEID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_GTPC_TEID)},
+	{VIRTCHNL_PROTO_HDR_IPV4,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_CHKSUM),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_CHKSUM)},
+	{VIRTCHNL_PROTO_HDR_IPV4,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_ID)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_TC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_TC)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_HOP_LIMIT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_HLIM)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX32_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE32_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX32_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE32_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX40_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE40_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX40_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE40_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX48_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE48_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX48_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE48_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX56_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE56_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX56_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE56_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE64_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE64_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX96_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE96_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV6,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PREFIX96_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PRE96_DA)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_CHKSUM),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_CHKSUM)},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_CHKSUM),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_CHKSUM)},
+	{VIRTCHNL_PROTO_HDR_GRE,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_GRE_PROTO),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_GRE_PROTO)},
+	{VIRTCHNL_PROTO_HDR_ECPRI,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ECPRI_MSG_TYPE),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ECPRI_TP0_MSG_TYPE)},
+	{VIRTCHNL_PROTO_HDR_ECPRI,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ECPRI_PC_RTC_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ECPRI_TP0_PC_ID)},
+	{VIRTCHNL_PROTO_HDR_ECPRI,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ECPRI_REV),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ECPRI_TP0_REV)},
+	{VIRTCHNL_PROTO_HDR_ECPRI,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ECPRI_CONCAT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ECPRI_TP0_CONCAT)},
+	{VIRTCHNL_PROTO_HDR_ECPRI,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ECPRI_MSG_LEN),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ECPRI_TP0_MSG_LEN)},
 	{VIRTCHNL_PROTO_HDR_ESP, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ESP_SPI),
 		BIT_ULL(ICE_FLOW_FIELD_IDX_ESP_SPI)},
 	{VIRTCHNL_PROTO_HDR_AH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_AH_SPI),
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 5be1881..b0d5164 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -1253,6 +1253,17 @@ enum virtchnl_proto_hdr_type {
 	VIRTCHNL_PROTO_HDR_ESP,
 	VIRTCHNL_PROTO_HDR_AH,
 	VIRTCHNL_PROTO_HDR_PFCP,
+	VIRTCHNL_PROTO_HDR_GTPC,
+	VIRTCHNL_PROTO_HDR_ECPRI,
+	VIRTCHNL_PROTO_HDR_L2TPV2,
+	VIRTCHNL_PROTO_HDR_PPP,
+	/* IPv4 and IPv6 Fragment header types are only associated to
+	 * VIRTCHNL_PROTO_HDR_IPV4 and VIRTCHNL_PROTO_HDR_IPV6 respectively,
+	 * cannot be used independently.
+	 */
+	VIRTCHNL_PROTO_HDR_IPV4_FRAG,
+	VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG,
+	VIRTCHNL_PROTO_HDR_GRE,
 };
 
 /* Protocol header field within a protocol header. */
@@ -1275,6 +1286,8 @@ enum virtchnl_proto_hdr_field {
 	VIRTCHNL_PROTO_HDR_IPV4_DSCP,
 	VIRTCHNL_PROTO_HDR_IPV4_TTL,
 	VIRTCHNL_PROTO_HDR_IPV4_PROT,
+	VIRTCHNL_PROTO_HDR_IPV4_CHKSUM,
+	VIRTCHNL_PROTO_HDR_IPV4_ID,
 	/* IPV6 */
 	VIRTCHNL_PROTO_HDR_IPV6_SRC =
 		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_IPV6),
@@ -1282,14 +1295,29 @@ enum virtchnl_proto_hdr_field {
 	VIRTCHNL_PROTO_HDR_IPV6_TC,
 	VIRTCHNL_PROTO_HDR_IPV6_HOP_LIMIT,
 	VIRTCHNL_PROTO_HDR_IPV6_PROT,
+	/* IPV6 Prefix */
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX32_SRC,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX32_DST,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX40_SRC,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX40_DST,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX48_SRC,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX48_DST,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX56_SRC,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX56_DST,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_SRC,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_DST,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX96_SRC,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX96_DST,
 	/* TCP */
 	VIRTCHNL_PROTO_HDR_TCP_SRC_PORT =
 		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_TCP),
 	VIRTCHNL_PROTO_HDR_TCP_DST_PORT,
+	VIRTCHNL_PROTO_HDR_TCP_CHKSUM,
 	/* UDP */
 	VIRTCHNL_PROTO_HDR_UDP_SRC_PORT =
 		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_UDP),
 	VIRTCHNL_PROTO_HDR_UDP_DST_PORT,
+	VIRTCHNL_PROTO_HDR_UDP_CHKSUM,
 	/* SCTP */
 	VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT =
 		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_SCTP),
@@ -1317,6 +1345,26 @@ enum virtchnl_proto_hdr_field {
 	VIRTCHNL_PROTO_HDR_PFCP_S_FIELD =
 		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_PFCP),
 	VIRTCHNL_PROTO_HDR_PFCP_SEID,
+	/* GTPC */
+	VIRTCHNL_PROTO_HDR_GTPC_TEID =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_GTPC),
+	/* L2TPV2 */
+	VIRTCHNL_PROTO_HDR_L2TPV2_SESS_ID =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_L2TPV2),
+	VIRTCHNL_PROTO_HDR_L2TPV2_LEN_SESS_ID,
+	/* PPP */
+	VIRTCHNL_PROTO_HDR_PPP_PROTO_ID =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_PPP),
+	/* GRE */
+	VIRTCHNL_PROTO_HDR_GRE_PROTO =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_GRE),
+	/* ECPRI */
+	VIRTCHNL_PROTO_HDR_ECPRI_MSG_TYPE =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_ECPRI),
+	VIRTCHNL_PROTO_HDR_ECPRI_PC_RTC_ID,
+	VIRTCHNL_PROTO_HDR_ECPRI_REV,
+	VIRTCHNL_PROTO_HDR_ECPRI_CONCAT,
+	VIRTCHNL_PROTO_HDR_ECPRI_MSG_LEN,
 };
 
 struct virtchnl_proto_hdr {
-- 
2.49.0


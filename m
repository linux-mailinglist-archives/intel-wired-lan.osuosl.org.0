Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C408C0CB34
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 10:37:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 430C5840E8;
	Mon, 27 Oct 2025 09:37:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6pwCb_FFA5AQ; Mon, 27 Oct 2025 09:37:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FE52840E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761557866;
	bh=mM3pnkaKS9vZ1yK38sP82pm9t0Fgr97a99X8Z9AVgiA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SnhyAHkl6K78h+X4ZDU41Qjx/Cs1AtDtyqQ40Y+W/qv4+KehoTndHrVGaDX3+TE68
	 3EIasaAnlJykDvR0Ocls5FdN1HaBIMlJlwrFw8x+2hJ0BPImBLGtQ8KUElrH0yX4Jv
	 cZwQtXmrIOEasglnm19spP8Gkxszi5oz0qmAJH0pvmPzS7AbSBPIvayiMU2qntEe5G
	 hmN8etVM4zYjt7wQMwqPRbU927Ewnt1fnF2X3/FC+00dbHy1oFlKBVsnaj3tuiL+b4
	 Mo1/jCBtQIcFUe3AA6RdlAwnNlR+SkzvgyVRWrtDw4OMpCMwYN3JNy/ym2dAziDfhy
	 At3k3F22vkpyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FE52840E1;
	Mon, 27 Oct 2025 09:37:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 060DB43F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E0EF840DFC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:37:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LGe8zb5y9OxX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 09:37:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E2AA240DB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2AA240DB3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2AA240DB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:37:42 +0000 (UTC)
X-CSE-ConnectionGUID: uGzcUmjhSkyC8iw1HcmI1A==
X-CSE-MsgGUID: hCFUi9LzQ3OjXYtXggIasA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63670488"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="63670488"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 02:37:43 -0700
X-CSE-ConnectionGUID: yfNEGmz+T4OniHTuEQ3/iQ==
X-CSE-MsgGUID: rBhschT1RnuHRbiT+Jgdyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="185349372"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa008.fm.intel.com with ESMTP; 27 Oct 2025 02:37:40 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com
Cc: Dan Nowlin <dan.nowlin@intel.com>, Qi Zhang <qi.z.zhang@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon, 27 Oct 2025 10:37:32 +0100
Message-ID: <20251027093736.3582567-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251027093736.3582567-1-aleksandr.loktionov@intel.com>
References: <20251027093736.3582567-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761557863; x=1793093863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jqOKmErsdbja9tgUAS59D8e84rlJgey2JcmFKJOONL8=;
 b=SbMBklpyC8usujryCaAppIXzZ7w1K+nOpjeAgSsupZNMLi92ZopSODEU
 NTOBLr92vMK+98XVdOk/ih95GscpfhfbjPOaEig3Ra8/hSYNyNV6BO79L
 zAgV2TzZxudFfdEyIAo/igw42xHSNe8ZGIxkXyXsKfwnKDphje6tXSosz
 sCNgRnuDUIN5608xhrC1d+qt4BM4QjcqHc+VI8J5x3AUqg6i1nKdzIrxJ
 ltNiUGGq+kOKNQGEYwoU/OrPZfkUE8MD43zjEcvm3beyW164XBn+PnSLm
 7N0hNv/kSUrO8iHmVWQOfUh+LHkjImZ7rfK9GRdoxvTI2M2i5oCB1bMvV
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SbMBklpy
Subject: [Intel-wired-lan] [PATCH iwl-next v7 2/6] ice: add virtchnl
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


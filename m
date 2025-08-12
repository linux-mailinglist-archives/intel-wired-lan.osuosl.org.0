Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D75D6B22900
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 15:46:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 592A641B13;
	Tue, 12 Aug 2025 13:46:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2xkfm10-t5b3; Tue, 12 Aug 2025 13:46:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F9A441D58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755006377;
	bh=Q1hf6ZDnpa8Hl95Zpu3jk9d4nrqh5lRqzZjcrA3xwFs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QWNB+o+5V4kHjppCLMAKhV6qyNuwYt3Mtu2xOM7IeQ/p6OBOHZFAPqRZ4UIYTq5nT
	 hpzsDvMyGe0l0YxFa3XKQ6C65prXmxWLDqQYEeFNspa/VfYUycM2Tyc6ckBnR0dPBt
	 R89GR1jdGF/5iVTJ0d/3dCfjYTVg8GksHo1xKTwSiyJp1e/mj+AHKsQcv4zGpeOTDx
	 tjmROusTBviEF6yxXp4H7cpRNkOhCf4ObB18zuOQRPWB7Z2j1AqFNiLeGolM7wCL6H
	 0xEx0c/WN2FDC8DLJbk6W+qCdV1XVLNi5oa2mpcMS+0jsyO7ybHIcWm/3dcsX91gCz
	 7TVnTkUUBYtyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F9A441D58;
	Tue, 12 Aug 2025 13:46:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 11CC4158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E3E041506
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EvJFA175gc3L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 13:46:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A974A41329
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A974A41329
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A974A41329
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:11 +0000 (UTC)
X-CSE-ConnectionGUID: qEUPNL08RW2DWa+DWYLfyw==
X-CSE-MsgGUID: BOP5HUbUR/OXT3ngYKuKkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="56994325"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="56994325"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 06:39:06 -0700
X-CSE-ConnectionGUID: QbegdCASTrm2MAGz7odWBQ==
X-CSE-MsgGUID: NLgTBulnT4evG2rxPKOdGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="170416067"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 12 Aug 2025 06:39:03 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EB0C632CB7;
 Tue, 12 Aug 2025 14:39:01 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org,
	Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 12 Aug 2025 15:29:01 +0200
Message-Id: <20250812132910.99626-4-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
References: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755006372; x=1786542372;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AKRwwvt7pwLTGKg5z6FN/ofIOe6cHgsVFjJrFD9wnIE=;
 b=iHeQuhhpDUgMq83iWluLZiCtv6lWXAR8+KlA/n+rX16gnHMQ2Oo25FXQ
 OydR71zWHg8oVJ4/27IhEhgIgYuV0i2vUgslYdCrwLKwsex1mfbN//8AK
 CNJ9JCELEAuXoZqBGfnG41e4+7NOWB9P9lhYUNdui2CC5p/SQ0Ow9+PCu
 uhYrlAGk1nsYnoMRB6TSzM0BrnVYcDmOxI9P8xdOmgUpduCPgWMNx9Lju
 eaeQolUSQc0My0HoiBPBHzFMRe4a/zvSlcYQ6o5lTQQPL93RtqNphs6+N
 8bDT+Sylgd9xg0NWgSc6lumn3tAhjPwiFGm10HlTizZA69UtV6AFtL3yt
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iHeQuhhp
Subject: [Intel-wired-lan] [PATCH 03/12] ice: extract ice_virtchnl_queues.c:
 cleanup - p1
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

Start removing stuff from ice_virtchnl_queues.c that will be kept in the
main virtchnl file. We do so in multiple commits to prevent git from
inventing code movements here. IOW: this is much better as plain removals.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 .../ethernet/intel/ice/ice_virtchnl_queues.c  | 1064 -----------------
 1 file changed, 1064 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_queues.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_queues.c
index 257967273079..9ee7ec92e331 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_queues.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_queues.c
@@ -6,336 +6,6 @@
 #include "ice.h"
 #include "ice_base.h"
 #include "ice_lib.h"
-#include "ice_fltr.h"
-#include "ice_virtchnl_allowlist.h"
-#include "ice_vf_vsi_vlan_ops.h"
-#include "ice_vlan.h"
-#include "ice_flex_pipe.h"
-#include "ice_dcb_lib.h"
-
-#define FIELD_SELECTOR(proto_hdr_field) \
-		BIT((proto_hdr_field) & PROTO_HDR_FIELD_MASK)
-
-struct ice_vc_hdr_match_type {
-	u32 vc_hdr;	/* virtchnl headers (VIRTCHNL_PROTO_HDR_XXX) */
-	u32 ice_hdr;	/* ice headers (ICE_FLOW_SEG_HDR_XXX) */
-};
-
-static const struct ice_vc_hdr_match_type ice_vc_hdr_list[] = {
-	{VIRTCHNL_PROTO_HDR_NONE,	ICE_FLOW_SEG_HDR_NONE},
-	{VIRTCHNL_PROTO_HDR_ETH,	ICE_FLOW_SEG_HDR_ETH},
-	{VIRTCHNL_PROTO_HDR_S_VLAN,	ICE_FLOW_SEG_HDR_VLAN},
-	{VIRTCHNL_PROTO_HDR_C_VLAN,	ICE_FLOW_SEG_HDR_VLAN},
-	{VIRTCHNL_PROTO_HDR_IPV4,	ICE_FLOW_SEG_HDR_IPV4 |
-					ICE_FLOW_SEG_HDR_IPV_OTHER},
-	{VIRTCHNL_PROTO_HDR_IPV6,	ICE_FLOW_SEG_HDR_IPV6 |
-					ICE_FLOW_SEG_HDR_IPV_OTHER},
-	{VIRTCHNL_PROTO_HDR_TCP,	ICE_FLOW_SEG_HDR_TCP},
-	{VIRTCHNL_PROTO_HDR_UDP,	ICE_FLOW_SEG_HDR_UDP},
-	{VIRTCHNL_PROTO_HDR_SCTP,	ICE_FLOW_SEG_HDR_SCTP},
-	{VIRTCHNL_PROTO_HDR_PPPOE,	ICE_FLOW_SEG_HDR_PPPOE},
-	{VIRTCHNL_PROTO_HDR_GTPU_IP,	ICE_FLOW_SEG_HDR_GTPU_IP},
-	{VIRTCHNL_PROTO_HDR_GTPU_EH,	ICE_FLOW_SEG_HDR_GTPU_EH},
-	{VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_DWN,
-					ICE_FLOW_SEG_HDR_GTPU_DWN},
-	{VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_UP,
-					ICE_FLOW_SEG_HDR_GTPU_UP},
-	{VIRTCHNL_PROTO_HDR_L2TPV3,	ICE_FLOW_SEG_HDR_L2TPV3},
-	{VIRTCHNL_PROTO_HDR_ESP,	ICE_FLOW_SEG_HDR_ESP},
-	{VIRTCHNL_PROTO_HDR_AH,		ICE_FLOW_SEG_HDR_AH},
-	{VIRTCHNL_PROTO_HDR_PFCP,	ICE_FLOW_SEG_HDR_PFCP_SESSION},
-};
-
-struct ice_vc_hash_field_match_type {
-	u32 vc_hdr;		/* virtchnl headers
-				 * (VIRTCHNL_PROTO_HDR_XXX)
-				 */
-	u32 vc_hash_field;	/* virtchnl hash fields selector
-				 * FIELD_SELECTOR((VIRTCHNL_PROTO_HDR_ETH_XXX))
-				 */
-	u64 ice_hash_field;	/* ice hash fields
-				 * (BIT_ULL(ICE_FLOW_FIELD_IDX_XXX))
-				 */
-};
-
-static const struct
-ice_vc_hash_field_match_type ice_vc_hash_field_list[] = {
-	{VIRTCHNL_PROTO_HDR_ETH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_SRC),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_SA)},
-	{VIRTCHNL_PROTO_HDR_ETH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_DST),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_DA)},
-	{VIRTCHNL_PROTO_HDR_ETH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_DST),
-		ICE_FLOW_HASH_ETH},
-	{VIRTCHNL_PROTO_HDR_ETH,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_ETHERTYPE),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_TYPE)},
-	{VIRTCHNL_PROTO_HDR_S_VLAN,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_S_VLAN_ID),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_S_VLAN)},
-	{VIRTCHNL_PROTO_HDR_C_VLAN,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_C_VLAN_ID),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_C_VLAN)},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA)},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA)},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
-		ICE_FLOW_HASH_IPV4},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) |
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA) |
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
-		ICE_FLOW_HASH_IPV4 | BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA)},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA)},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
-		ICE_FLOW_HASH_IPV6},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA) |
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA) |
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
-		ICE_FLOW_HASH_IPV6 | BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
-	{VIRTCHNL_PROTO_HDR_TCP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_SRC_PORT)},
-	{VIRTCHNL_PROTO_HDR_TCP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_DST_PORT)},
-	{VIRTCHNL_PROTO_HDR_TCP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
-		ICE_FLOW_HASH_TCP_PORT},
-	{VIRTCHNL_PROTO_HDR_UDP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_SRC_PORT)},
-	{VIRTCHNL_PROTO_HDR_UDP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_DST_PORT)},
-	{VIRTCHNL_PROTO_HDR_UDP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
-		ICE_FLOW_HASH_UDP_PORT},
-	{VIRTCHNL_PROTO_HDR_SCTP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT)},
-	{VIRTCHNL_PROTO_HDR_SCTP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)},
-	{VIRTCHNL_PROTO_HDR_SCTP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
-		ICE_FLOW_HASH_SCTP_PORT},
-	{VIRTCHNL_PROTO_HDR_PPPOE,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_PPPOE_SESS_ID),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID)},
-	{VIRTCHNL_PROTO_HDR_GTPU_IP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_GTPU_IP_TEID),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_IP_TEID)},
-	{VIRTCHNL_PROTO_HDR_L2TPV3,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_L2TPV3_SESS_ID),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_L2TPV3_SESS_ID)},
-	{VIRTCHNL_PROTO_HDR_ESP, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ESP_SPI),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_ESP_SPI)},
-	{VIRTCHNL_PROTO_HDR_AH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_AH_SPI),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_AH_SPI)},
-	{VIRTCHNL_PROTO_HDR_PFCP, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_PFCP_SEID),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_PFCP_SEID)},
-};
-
-/**
- * ice_vc_vf_broadcast - Broadcast a message to all VFs on PF
- * @pf: pointer to the PF structure
- * @v_opcode: operation code
- * @v_retval: return value
- * @msg: pointer to the msg buffer
- * @msglen: msg length
- */
-static void
-ice_vc_vf_broadcast(struct ice_pf *pf, enum virtchnl_ops v_opcode,
-		    enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
-{
-	struct ice_hw *hw = &pf->hw;
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	mutex_lock(&pf->vfs.table_lock);
-	ice_for_each_vf(pf, bkt, vf) {
-		/* Not all vfs are enabled so skip the ones that are not */
-		if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states) &&
-		    !test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
-			continue;
-
-		/* Ignore return value on purpose - a given VF may fail, but
-		 * we need to keep going and send to all of them
-		 */
-		ice_aq_send_msg_to_vf(hw, vf->vf_id, v_opcode, v_retval, msg,
-				      msglen, NULL);
-	}
-	mutex_unlock(&pf->vfs.table_lock);
-}
-
-/**
- * ice_set_pfe_link - Set the link speed/status of the virtchnl_pf_event
- * @vf: pointer to the VF structure
- * @pfe: pointer to the virtchnl_pf_event to set link speed/status for
- * @ice_link_speed: link speed specified by ICE_AQ_LINK_SPEED_*
- * @link_up: whether or not to set the link up/down
- */
-static void
-ice_set_pfe_link(struct ice_vf *vf, struct virtchnl_pf_event *pfe,
-		 int ice_link_speed, bool link_up)
-{
-	if (vf->driver_caps & VIRTCHNL_VF_CAP_ADV_LINK_SPEED) {
-		pfe->event_data.link_event_adv.link_status = link_up;
-		/* Speed in Mbps */
-		pfe->event_data.link_event_adv.link_speed =
-			ice_conv_link_speed_to_virtchnl(true, ice_link_speed);
-	} else {
-		pfe->event_data.link_event.link_status = link_up;
-		/* Legacy method for virtchnl link speeds */
-		pfe->event_data.link_event.link_speed =
-			(enum virtchnl_link_speed)
-			ice_conv_link_speed_to_virtchnl(false, ice_link_speed);
-	}
-}
-
-/**
- * ice_vc_notify_vf_link_state - Inform a VF of link status
- * @vf: pointer to the VF structure
- *
- * send a link status message to a single VF
- */
-void ice_vc_notify_vf_link_state(struct ice_vf *vf)
-{
-	struct virtchnl_pf_event pfe = { 0 };
-	struct ice_hw *hw = &vf->pf->hw;
-
-	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
-	pfe.severity = PF_EVENT_SEVERITY_INFO;
-
-	if (ice_is_vf_link_up(vf))
-		ice_set_pfe_link(vf, &pfe,
-				 hw->port_info->phy.link_info.link_speed, true);
-	else
-		ice_set_pfe_link(vf, &pfe, ICE_AQ_LINK_SPEED_UNKNOWN, false);
-
-	ice_aq_send_msg_to_vf(hw, vf->vf_id, VIRTCHNL_OP_EVENT,
-			      VIRTCHNL_STATUS_SUCCESS, (u8 *)&pfe,
-			      sizeof(pfe), NULL);
-}
-
-/**
- * ice_vc_notify_link_state - Inform all VFs on a PF of link status
- * @pf: pointer to the PF structure
- */
-void ice_vc_notify_link_state(struct ice_pf *pf)
-{
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	mutex_lock(&pf->vfs.table_lock);
-	ice_for_each_vf(pf, bkt, vf)
-		ice_vc_notify_vf_link_state(vf);
-	mutex_unlock(&pf->vfs.table_lock);
-}
-
-/**
- * ice_vc_notify_reset - Send pending reset message to all VFs
- * @pf: pointer to the PF structure
- *
- * indicate a pending reset to all VFs on a given PF
- */
-void ice_vc_notify_reset(struct ice_pf *pf)
-{
-	struct virtchnl_pf_event pfe;
-
-	if (!ice_has_vfs(pf))
-		return;
-
-	pfe.event = VIRTCHNL_EVENT_RESET_IMPENDING;
-	pfe.severity = PF_EVENT_SEVERITY_CERTAIN_DOOM;
-	ice_vc_vf_broadcast(pf, VIRTCHNL_OP_EVENT, VIRTCHNL_STATUS_SUCCESS,
-			    (u8 *)&pfe, sizeof(struct virtchnl_pf_event));
-}
-
-/**
- * ice_vc_send_msg_to_vf - Send message to VF
- * @vf: pointer to the VF info
- * @v_opcode: virtual channel opcode
- * @v_retval: virtual channel return value
- * @msg: pointer to the msg buffer
- * @msglen: msg length
- *
- * send msg to VF
- */
-int
-ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
-		      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
-{
-	struct device *dev;
-	struct ice_pf *pf;
-	int aq_ret;
-
-	pf = vf->pf;
-	dev = ice_pf_to_dev(pf);
-
-	aq_ret = ice_aq_send_msg_to_vf(&pf->hw, vf->vf_id, v_opcode, v_retval,
-				       msg, msglen, NULL);
-	if (aq_ret && pf->hw.mailboxq.sq_last_status != LIBIE_AQ_RC_ENOSYS) {
-		dev_info(dev, "Unable to send the message to VF %d ret %d aq_err %s\n",
-			 vf->vf_id, aq_ret,
-			 libie_aq_str(pf->hw.mailboxq.sq_last_status));
-		return -EIO;
-	}
-
-	return 0;
-}
-
-/**
- * ice_vc_get_ver_msg
- * @vf: pointer to the VF info
- * @msg: pointer to the msg buffer
- *
- * called from the VF to request the API version used by the PF
- */
-static int ice_vc_get_ver_msg(struct ice_vf *vf, u8 *msg)
-{
-	struct virtchnl_version_info info = {
-		VIRTCHNL_VERSION_MAJOR, VIRTCHNL_VERSION_MINOR
-	};
-
-	vf->vf_ver = *(struct virtchnl_version_info *)msg;
-	/* VFs running the 1.0 API expect to get 1.0 back or they will cry. */
-	if (VF_IS_V10(&vf->vf_ver))
-		info.minor = VIRTCHNL_VERSION_MINOR_NO_VF_CAPS;
-
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_VERSION,
-				     VIRTCHNL_STATUS_SUCCESS, (u8 *)&info,
-				     sizeof(struct virtchnl_version_info));
-}
 
 /**
  * ice_vc_get_max_frame_size - get max frame size allowed for VF
@@ -359,205 +29,6 @@ static u16 ice_vc_get_max_frame_size(struct ice_vf *vf)
 	return max_frame_size;
 }
 
-/**
- * ice_vc_get_vlan_caps
- * @hw: pointer to the hw
- * @vf: pointer to the VF info
- * @vsi: pointer to the VSI
- * @driver_caps: current driver caps
- *
- * Return 0 if there is no VLAN caps supported, or VLAN caps value
- */
-static u32
-ice_vc_get_vlan_caps(struct ice_hw *hw, struct ice_vf *vf, struct ice_vsi *vsi,
-		     u32 driver_caps)
-{
-	if (ice_is_eswitch_mode_switchdev(vf->pf))
-		/* In switchdev setting VLAN from VF isn't supported */
-		return 0;
-
-	if (driver_caps & VIRTCHNL_VF_OFFLOAD_VLAN_V2) {
-		/* VLAN offloads based on current device configuration */
-		return VIRTCHNL_VF_OFFLOAD_VLAN_V2;
-	} else if (driver_caps & VIRTCHNL_VF_OFFLOAD_VLAN) {
-		/* allow VF to negotiate VIRTCHNL_VF_OFFLOAD explicitly for
-		 * these two conditions, which amounts to guest VLAN filtering
-		 * and offloads being based on the inner VLAN or the
-		 * inner/single VLAN respectively and don't allow VF to
-		 * negotiate VIRTCHNL_VF_OFFLOAD in any other cases
-		 */
-		if (ice_is_dvm_ena(hw) && ice_vf_is_port_vlan_ena(vf)) {
-			return VIRTCHNL_VF_OFFLOAD_VLAN;
-		} else if (!ice_is_dvm_ena(hw) &&
-			   !ice_vf_is_port_vlan_ena(vf)) {
-			/* configure backward compatible support for VFs that
-			 * only support VIRTCHNL_VF_OFFLOAD_VLAN, the PF is
-			 * configured in SVM, and no port VLAN is configured
-			 */
-			ice_vf_vsi_cfg_svm_legacy_vlan_mode(vsi);
-			return VIRTCHNL_VF_OFFLOAD_VLAN;
-		} else if (ice_is_dvm_ena(hw)) {
-			/* configure software offloaded VLAN support when DVM
-			 * is enabled, but no port VLAN is enabled
-			 */
-			ice_vf_vsi_cfg_dvm_legacy_vlan_mode(vsi);
-		}
-	}
-
-	return 0;
-}
-
-/**
- * ice_vc_get_vf_res_msg
- * @vf: pointer to the VF info
- * @msg: pointer to the msg buffer
- *
- * called from the VF to request its resources
- */
-static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
-{
-	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	struct virtchnl_vf_resource *vfres = NULL;
-	struct ice_hw *hw = &vf->pf->hw;
-	struct ice_vsi *vsi;
-	int len = 0;
-	int ret;
-
-	if (ice_check_vf_init(vf)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto err;
-	}
-
-	len = virtchnl_struct_size(vfres, vsi_res, 0);
-
-	vfres = kzalloc(len, GFP_KERNEL);
-	if (!vfres) {
-		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
-		len = 0;
-		goto err;
-	}
-	if (VF_IS_V11(&vf->vf_ver))
-		vf->driver_caps = *(u32 *)msg;
-	else
-		vf->driver_caps = VIRTCHNL_VF_OFFLOAD_L2 |
-				  VIRTCHNL_VF_OFFLOAD_VLAN;
-
-	vfres->vf_cap_flags = VIRTCHNL_VF_OFFLOAD_L2;
-	vsi = ice_get_vf_vsi(vf);
-	if (!vsi) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto err;
-	}
-
-	vfres->vf_cap_flags |= ice_vc_get_vlan_caps(hw, vf, vsi,
-						    vf->driver_caps);
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PF)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_PF;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_FDIR_PF)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_FDIR_PF;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_TC_U32 &&
-	    vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_FDIR_PF)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_TC_U32;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ENCAP)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ENCAP;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_POLLING)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RX_POLLING;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_WB_ON_ITR)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_WB_ON_ITR;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_REQ_QUEUES)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_REQ_QUEUES;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_CRC)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_CRC;
-
-	if (vf->driver_caps & VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_USO;
-
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_QOS)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_QOS;
-
-	if (vf->driver_caps & VIRTCHNL_VF_CAP_PTP)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_PTP;
-
-	vfres->num_vsis = 1;
-	/* Tx and Rx queue are equal for VF */
-	vfres->num_queue_pairs = vsi->num_txq;
-	vfres->max_vectors = vf->num_msix;
-	vfres->rss_key_size = ICE_VSIQF_HKEY_ARRAY_SIZE;
-	vfres->rss_lut_size = ICE_LUT_VSI_SIZE;
-	vfres->max_mtu = ice_vc_get_max_frame_size(vf);
-
-	vfres->vsi_res[0].vsi_id = ICE_VF_VSI_ID;
-	vfres->vsi_res[0].vsi_type = VIRTCHNL_VSI_SRIOV;
-	vfres->vsi_res[0].num_queue_pairs = vsi->num_txq;
-	ether_addr_copy(vfres->vsi_res[0].default_mac_addr,
-			vf->hw_lan_addr);
-
-	/* match guest capabilities */
-	vf->driver_caps = vfres->vf_cap_flags;
-
-	ice_vc_set_caps_allowlist(vf);
-	ice_vc_set_working_allowlist(vf);
-
-	set_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);
-
-err:
-	/* send the response back to the VF */
-	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_VF_RESOURCES, v_ret,
-				    (u8 *)vfres, len);
-
-	kfree(vfres);
-	return ret;
-}
-
-/**
- * ice_vc_reset_vf_msg
- * @vf: pointer to the VF info
- *
- * called from the VF to reset itself,
- * unlike other virtchnl messages, PF driver
- * doesn't send the response back to the VF
- */
-static void ice_vc_reset_vf_msg(struct ice_vf *vf)
-{
-	if (test_bit(ICE_VF_STATE_INIT, vf->vf_states))
-		ice_reset_vf(vf, 0);
-}
-
-/**
- * ice_vc_isvalid_vsi_id
- * @vf: pointer to the VF info
- * @vsi_id: VF relative VSI ID
- *
- * check for the valid VSI ID
- */
-bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
-{
-	return vsi_id == ICE_VF_VSI_ID;
-}
-
 /**
  * ice_vc_isvalid_q_id
  * @vsi: VSI to check queue ID against
@@ -586,541 +57,6 @@ static bool ice_vc_isvalid_ring_len(u16 ring_len)
 		!(ring_len % ICE_REQ_DESC_MULTIPLE));
 }
 
-/**
- * ice_vc_validate_pattern
- * @vf: pointer to the VF info
- * @proto: virtchnl protocol headers
- *
- * validate the pattern is supported or not.
- *
- * Return: true on success, false on error.
- */
-bool
-ice_vc_validate_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs *proto)
-{
-	bool is_ipv4 = false;
-	bool is_ipv6 = false;
-	bool is_udp = false;
-	u16 ptype = -1;
-	int i = 0;
-
-	while (i < proto->count &&
-	       proto->proto_hdr[i].type != VIRTCHNL_PROTO_HDR_NONE) {
-		switch (proto->proto_hdr[i].type) {
-		case VIRTCHNL_PROTO_HDR_ETH:
-			ptype = ICE_PTYPE_MAC_PAY;
-			break;
-		case VIRTCHNL_PROTO_HDR_IPV4:
-			ptype = ICE_PTYPE_IPV4_PAY;
-			is_ipv4 = true;
-			break;
-		case VIRTCHNL_PROTO_HDR_IPV6:
-			ptype = ICE_PTYPE_IPV6_PAY;
-			is_ipv6 = true;
-			break;
-		case VIRTCHNL_PROTO_HDR_UDP:
-			if (is_ipv4)
-				ptype = ICE_PTYPE_IPV4_UDP_PAY;
-			else if (is_ipv6)
-				ptype = ICE_PTYPE_IPV6_UDP_PAY;
-			is_udp = true;
-			break;
-		case VIRTCHNL_PROTO_HDR_TCP:
-			if (is_ipv4)
-				ptype = ICE_PTYPE_IPV4_TCP_PAY;
-			else if (is_ipv6)
-				ptype = ICE_PTYPE_IPV6_TCP_PAY;
-			break;
-		case VIRTCHNL_PROTO_HDR_SCTP:
-			if (is_ipv4)
-				ptype = ICE_PTYPE_IPV4_SCTP_PAY;
-			else if (is_ipv6)
-				ptype = ICE_PTYPE_IPV6_SCTP_PAY;
-			break;
-		case VIRTCHNL_PROTO_HDR_GTPU_IP:
-		case VIRTCHNL_PROTO_HDR_GTPU_EH:
-			if (is_ipv4)
-				ptype = ICE_MAC_IPV4_GTPU;
-			else if (is_ipv6)
-				ptype = ICE_MAC_IPV6_GTPU;
-			goto out;
-		case VIRTCHNL_PROTO_HDR_L2TPV3:
-			if (is_ipv4)
-				ptype = ICE_MAC_IPV4_L2TPV3;
-			else if (is_ipv6)
-				ptype = ICE_MAC_IPV6_L2TPV3;
-			goto out;
-		case VIRTCHNL_PROTO_HDR_ESP:
-			if (is_ipv4)
-				ptype = is_udp ? ICE_MAC_IPV4_NAT_T_ESP :
-						ICE_MAC_IPV4_ESP;
-			else if (is_ipv6)
-				ptype = is_udp ? ICE_MAC_IPV6_NAT_T_ESP :
-						ICE_MAC_IPV6_ESP;
-			goto out;
-		case VIRTCHNL_PROTO_HDR_AH:
-			if (is_ipv4)
-				ptype = ICE_MAC_IPV4_AH;
-			else if (is_ipv6)
-				ptype = ICE_MAC_IPV6_AH;
-			goto out;
-		case VIRTCHNL_PROTO_HDR_PFCP:
-			if (is_ipv4)
-				ptype = ICE_MAC_IPV4_PFCP_SESSION;
-			else if (is_ipv6)
-				ptype = ICE_MAC_IPV6_PFCP_SESSION;
-			goto out;
-		default:
-			break;
-		}
-		i++;
-	}
-
-out:
-	return ice_hw_ptype_ena(&vf->pf->hw, ptype);
-}
-
-/**
- * ice_vc_parse_rss_cfg - parses hash fields and headers from
- * a specific virtchnl RSS cfg
- * @hw: pointer to the hardware
- * @rss_cfg: pointer to the virtchnl RSS cfg
- * @hash_cfg: pointer to the HW hash configuration
- *
- * Return true if all the protocol header and hash fields in the RSS cfg could
- * be parsed, else return false
- *
- * This function parses the virtchnl RSS cfg to be the intended
- * hash fields and the intended header for RSS configuration
- */
-static bool ice_vc_parse_rss_cfg(struct ice_hw *hw,
-				 struct virtchnl_rss_cfg *rss_cfg,
-				 struct ice_rss_hash_cfg *hash_cfg)
-{
-	const struct ice_vc_hash_field_match_type *hf_list;
-	const struct ice_vc_hdr_match_type *hdr_list;
-	int i, hf_list_len, hdr_list_len;
-	u32 *addl_hdrs = &hash_cfg->addl_hdrs;
-	u64 *hash_flds = &hash_cfg->hash_flds;
-
-	/* set outer layer RSS as default */
-	hash_cfg->hdr_type = ICE_RSS_OUTER_HEADERS;
-
-	if (rss_cfg->rss_algorithm == VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC)
-		hash_cfg->symm = true;
-	else
-		hash_cfg->symm = false;
-
-	hf_list = ice_vc_hash_field_list;
-	hf_list_len = ARRAY_SIZE(ice_vc_hash_field_list);
-	hdr_list = ice_vc_hdr_list;
-	hdr_list_len = ARRAY_SIZE(ice_vc_hdr_list);
-
-	for (i = 0; i < rss_cfg->proto_hdrs.count; i++) {
-		struct virtchnl_proto_hdr *proto_hdr =
-					&rss_cfg->proto_hdrs.proto_hdr[i];
-		bool hdr_found = false;
-		int j;
-
-		/* Find matched ice headers according to virtchnl headers. */
-		for (j = 0; j < hdr_list_len; j++) {
-			struct ice_vc_hdr_match_type hdr_map = hdr_list[j];
-
-			if (proto_hdr->type == hdr_map.vc_hdr) {
-				*addl_hdrs |= hdr_map.ice_hdr;
-				hdr_found = true;
-			}
-		}
-
-		if (!hdr_found)
-			return false;
-
-		/* Find matched ice hash fields according to
-		 * virtchnl hash fields.
-		 */
-		for (j = 0; j < hf_list_len; j++) {
-			struct ice_vc_hash_field_match_type hf_map = hf_list[j];
-
-			if (proto_hdr->type == hf_map.vc_hdr &&
-			    proto_hdr->field_selector == hf_map.vc_hash_field) {
-				*hash_flds |= hf_map.ice_hash_field;
-				break;
-			}
-		}
-	}
-
-	return true;
-}
-
-/**
- * ice_vf_adv_rss_offload_ena - determine if capabilities support advanced
- * RSS offloads
- * @caps: VF driver negotiated capabilities
- *
- * Return true if VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF capability is set,
- * else return false
- */
-static bool ice_vf_adv_rss_offload_ena(u32 caps)
-{
-	return !!(caps & VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF);
-}
-
-/**
- * ice_vc_handle_rss_cfg
- * @vf: pointer to the VF info
- * @msg: pointer to the message buffer
- * @add: add a RSS config if true, otherwise delete a RSS config
- *
- * This function adds/deletes a RSS config
- */
-static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
-{
-	u32 v_opcode = add ? VIRTCHNL_OP_ADD_RSS_CFG : VIRTCHNL_OP_DEL_RSS_CFG;
-	struct virtchnl_rss_cfg *rss_cfg = (struct virtchnl_rss_cfg *)msg;
-	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	struct ice_hw *hw = &vf->pf->hw;
-	struct ice_vsi *vsi;
-
-	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
-		dev_dbg(dev, "VF %d attempting to configure RSS, but RSS is not supported by the PF\n",
-			vf->vf_id);
-		v_ret = VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
-		goto error_param;
-	}
-
-	if (!ice_vf_adv_rss_offload_ena(vf->driver_caps)) {
-		dev_dbg(dev, "VF %d attempting to configure RSS, but Advanced RSS offload is not supported\n",
-			vf->vf_id);
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (rss_cfg->proto_hdrs.count > VIRTCHNL_MAX_NUM_PROTO_HDRS ||
-	    rss_cfg->rss_algorithm < VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC ||
-	    rss_cfg->rss_algorithm > VIRTCHNL_RSS_ALG_XOR_SYMMETRIC) {
-		dev_dbg(dev, "VF %d attempting to configure RSS, but RSS configuration is not valid\n",
-			vf->vf_id);
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	vsi = ice_get_vf_vsi(vf);
-	if (!vsi) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (!ice_vc_validate_pattern(vf, &rss_cfg->proto_hdrs)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (rss_cfg->rss_algorithm == VIRTCHNL_RSS_ALG_R_ASYMMETRIC) {
-		struct ice_vsi_ctx *ctx;
-		u8 lut_type, hash_type;
-		int status;
-
-		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
-		hash_type = add ? ICE_AQ_VSI_Q_OPT_RSS_HASH_XOR :
-				ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
-
-		ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
-		if (!ctx) {
-			v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
-			goto error_param;
-		}
-
-		ctx->info.q_opt_rss =
-			FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_LUT_M, lut_type) |
-			FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M, hash_type);
-
-		/* Preserve existing queueing option setting */
-		ctx->info.q_opt_rss |= (vsi->info.q_opt_rss &
-					  ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_M);
-		ctx->info.q_opt_tc = vsi->info.q_opt_tc;
-		ctx->info.q_opt_flags = vsi->info.q_opt_rss;
-
-		ctx->info.valid_sections =
-				cpu_to_le16(ICE_AQ_VSI_PROP_Q_OPT_VALID);
-
-		status = ice_update_vsi(hw, vsi->idx, ctx, NULL);
-		if (status) {
-			dev_err(dev, "update VSI for RSS failed, err %d aq_err %s\n",
-				status, libie_aq_str(hw->adminq.sq_last_status));
-			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		} else {
-			vsi->info.q_opt_rss = ctx->info.q_opt_rss;
-		}
-
-		kfree(ctx);
-	} else {
-		struct ice_rss_hash_cfg cfg;
-
-		/* Only check for none raw pattern case */
-		if (!ice_vc_validate_pattern(vf, &rss_cfg->proto_hdrs)) {
-			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-			goto error_param;
-		}
-		cfg.addl_hdrs = ICE_FLOW_SEG_HDR_NONE;
-		cfg.hash_flds = ICE_HASH_INVALID;
-		cfg.hdr_type = ICE_RSS_ANY_HEADERS;
-
-		if (!ice_vc_parse_rss_cfg(hw, rss_cfg, &cfg)) {
-			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-			goto error_param;
-		}
-
-		if (add) {
-			if (ice_add_rss_cfg(hw, vsi, &cfg)) {
-				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-				dev_err(dev, "ice_add_rss_cfg failed for vsi = %d, v_ret = %d\n",
-					vsi->vsi_num, v_ret);
-			}
-		} else {
-			int status;
-
-			status = ice_rem_rss_cfg(hw, vsi->idx, &cfg);
-			/* We just ignore -ENOENT, because if two configurations
-			 * share the same profile remove one of them actually
-			 * removes both, since the profile is deleted.
-			 */
-			if (status && status != -ENOENT) {
-				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-				dev_err(dev, "ice_rem_rss_cfg failed for VF ID:%d, error:%d\n",
-					vf->vf_id, status);
-			}
-		}
-	}
-
-error_param:
-	return ice_vc_send_msg_to_vf(vf, v_opcode, v_ret, NULL, 0);
-}
-
-/**
- * ice_vc_config_rss_key
- * @vf: pointer to the VF info
- * @msg: pointer to the msg buffer
- *
- * Configure the VF's RSS key
- */
-static int ice_vc_config_rss_key(struct ice_vf *vf, u8 *msg)
-{
-	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	struct virtchnl_rss_key *vrk =
-		(struct virtchnl_rss_key *)msg;
-	struct ice_vsi *vsi;
-
-	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (!ice_vc_isvalid_vsi_id(vf, vrk->vsi_id)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (vrk->key_len != ICE_VSIQF_HKEY_ARRAY_SIZE) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	vsi = ice_get_vf_vsi(vf);
-	if (!vsi) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (ice_set_rss_key(vsi, vrk->key))
-		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
-error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_KEY, v_ret,
-				     NULL, 0);
-}
-
-/**
- * ice_vc_config_rss_lut
- * @vf: pointer to the VF info
- * @msg: pointer to the msg buffer
- *
- * Configure the VF's RSS LUT
- */
-static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
-{
-	struct virtchnl_rss_lut *vrl = (struct virtchnl_rss_lut *)msg;
-	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	struct ice_vsi *vsi;
-
-	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (!ice_vc_isvalid_vsi_id(vf, vrl->vsi_id)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (vrl->lut_entries != ICE_LUT_VSI_SIZE) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	vsi = ice_get_vf_vsi(vf);
-	if (!vsi) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (ice_set_rss_lut(vsi, vrl->lut, ICE_LUT_VSI_SIZE))
-		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
-error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_LUT, v_ret,
-				     NULL, 0);
-}
-
-/**
- * ice_vc_config_rss_hfunc
- * @vf: pointer to the VF info
- * @msg: pointer to the msg buffer
- *
- * Configure the VF's RSS Hash function
- */
-static int ice_vc_config_rss_hfunc(struct ice_vf *vf, u8 *msg)
-{
-	struct virtchnl_rss_hfunc *vrh = (struct virtchnl_rss_hfunc *)msg;
-	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	u8 hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
-	struct ice_vsi *vsi;
-
-	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (!ice_vc_isvalid_vsi_id(vf, vrh->vsi_id)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	vsi = ice_get_vf_vsi(vf);
-	if (!vsi) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (vrh->rss_algorithm == VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC)
-		hfunc = ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ;
-
-	if (ice_set_rss_hfunc(vsi, hfunc))
-		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
-error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_HFUNC, v_ret,
-				     NULL, 0);
-}
-
-/**
- * ice_vc_get_qos_caps - Get current QoS caps from PF
- * @vf: pointer to the VF info
- *
- * Get VF's QoS capabilities, such as TC number, arbiter and
- * bandwidth from PF.
- *
- * Return: 0 on success or negative error value.
- */
-static int ice_vc_get_qos_caps(struct ice_vf *vf)
-{
-	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	struct virtchnl_qos_cap_list *cap_list = NULL;
-	u8 tc_prio[ICE_MAX_TRAFFIC_CLASS] = { 0 };
-	struct virtchnl_qos_cap_elem *cfg = NULL;
-	struct ice_vsi_ctx *vsi_ctx;
-	struct ice_pf *pf = vf->pf;
-	struct ice_port_info *pi;
-	struct ice_vsi *vsi;
-	u8 numtc, tc;
-	u16 len = 0;
-	int ret, i;
-
-	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto err;
-	}
-
-	vsi = ice_get_vf_vsi(vf);
-	if (!vsi) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto err;
-	}
-
-	pi = pf->hw.port_info;
-	numtc = vsi->tc_cfg.numtc;
-
-	vsi_ctx = ice_get_vsi_ctx(pi->hw, vf->lan_vsi_idx);
-	if (!vsi_ctx) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto err;
-	}
-
-	len = struct_size(cap_list, cap, numtc);
-	cap_list = kzalloc(len, GFP_KERNEL);
-	if (!cap_list) {
-		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
-		len = 0;
-		goto err;
-	}
-
-	cap_list->vsi_id = vsi->vsi_num;
-	cap_list->num_elem = numtc;
-
-	/* Store the UP2TC configuration from DCB to a user priority bitmap
-	 * of each TC. Each element of prio_of_tc represents one TC. Each
-	 * bitmap indicates the user priorities belong to this TC.
-	 */
-	for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
-		tc = pi->qos_cfg.local_dcbx_cfg.etscfg.prio_table[i];
-		tc_prio[tc] |= BIT(i);
-	}
-
-	for (i = 0; i < numtc; i++) {
-		cfg = &cap_list->cap[i];
-		cfg->tc_num = i;
-		cfg->tc_prio = tc_prio[i];
-		cfg->arbiter = pi->qos_cfg.local_dcbx_cfg.etscfg.tsatable[i];
-		cfg->weight = VIRTCHNL_STRICT_WEIGHT;
-		cfg->type = VIRTCHNL_BW_SHAPER;
-		cfg->shaper.committed = vsi_ctx->sched.bw_t_info[i].cir_bw.bw;
-		cfg->shaper.peak = vsi_ctx->sched.bw_t_info[i].eir_bw.bw;
-	}
-
-err:
-	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_QOS_CAPS, v_ret,
-				    (u8 *)cap_list, len);
-	kfree(cap_list);
-	return ret;
-}
-
 /**
  * ice_vf_cfg_qs_bw - Configure per queue bandwidth
  * @vf: pointer to the VF info
-- 
2.39.3


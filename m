Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEB6949975
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 22:47:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6ED874052B;
	Tue,  6 Aug 2024 20:46:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lxkhJ-0pmAdg; Tue,  6 Aug 2024 20:46:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93DF8402EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722977214;
	bh=kgN5Wt6jwvNvrVHIohtTJ+iRd5Es9eDfCciYffhfTkU=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y6MEjLl7cyyUOtvJ6KloOhZVcpeZ3o0YB5wHGeNLfDY240hawSG68ev6On16TN1IT
	 aIOQWbCMTkoSy6tIJnsDOzyur2SdPDVp8/Omm/Vz3uj3vU7SgjlqvKaOMHKvfg1F/s
	 vYS/mdrrKnB+H/bdSYbwCyVKTmiQBHI6O+peDJgMEWo6UwBQIaXAn4zS6DKX/EEX81
	 NXdSczt6830AhZWYoNLDAzrxDZk8ldAv400f0XFRqxS2jF+amzxG+GotkJVWJud+Pr
	 +GRv53bCVziV32uMotHAhBzCX7s12XDrU8nhj/kc1CU06ZwlrTMMsUIMfbWjf2NFsU
	 8LhxsU/PA15yw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93DF8402EA;
	Tue,  6 Aug 2024 20:46:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 737881BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E31E404EF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bWiFbN-S1uVG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 20:46:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F0F6F40108
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0F6F40108
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F0F6F40108
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:39 +0000 (UTC)
X-CSE-ConnectionGUID: s3M4IcjbT56g90+1EZtN5Q==
X-CSE-MsgGUID: jQwxc9CMSNOC/m9klFPrpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20835919"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20835919"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:38 -0700
X-CSE-ConnectionGUID: uVAQTbjsRqymNckoo6jG4w==
X-CSE-MsgGUID: eTWshRfpRjOta+pMZLr7Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56331583"
Received: from jekeller-desk.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.166.241.1])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 06 Aug 2024 13:46:23 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240806-e810-live-migration-rd32-poll-timeout-v1-3-b5ada29ce703@intel.com>
References: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
In-Reply-To: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 "netdev netdev"@vger.kernel.org
X-Mailer: b4 0.13.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722977200; x=1754513200;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=fbHXV6FXemOClCoqyN/+Q1Zf5FPT/kguvpXYC77BHKI=;
 b=lmeiPm41VHHUDyoDmdBd+AR+ReHimEc7v8iHsS2U06LDw9+o4yMDQqYc
 N5/TxzWyUg+OHecUa+EjMXc78Hvo6iByOfag2ALBGEiGPiQrB6soKpEh0
 6pZLH441iXa32M9rR1+ZNz3RXbCmuTSBUgL5/MT0PhI6Xf28dd+NGWT5Q
 INS8SSkiFNkSAZGr2qBa4+nu+J163FqTv6YLZtXLDjqwu6sNA7XnFQ84H
 2Mn/c716R8eenNzWJnciPWG6R2/+G+3nXIWkaGul1Jaf2aLRCGQkzverE
 Pfcm4cnMzDfAxyYAA3khvZSyUuF2SLyqATdq8YTKqHMmzTsTmSQNBXzVJ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lmeiPm41
Subject: [Intel-wired-lan] [PATCH iwl-next 3/7] ice: do not clutter debug
 logs with unused data
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacek Wierzbicki <jacek.wierzbicki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bruce Allan <bruce.w.allan@intel.com>

Currently, debug logs are unnecessarily cluttered with the contents of
command data buffers even if the receiver of that command (i.e. FW or MBX)
are not told to read the buffer.  Change to only log command data buffers
when the RD flag (indicates receiver needs to read the buffer) is set.
Continue to log response data buffer when the returned datalen is non-zero.

Also, rename a local variable to reflect what is in the hardware
specification and how it is used elsewhere in the code, use local variables
instead of duplicating endian conversions unnecessarily and remove an
unnecessary assignment.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  4 ++++
 drivers/net/ethernet/intel/ice/ice_controlq.c   | 21 ++++++++++++---------
 2 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 66f02988d549..0be1a98d7cc1 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2632,12 +2632,16 @@ struct ice_aq_desc {
 /* FW defined boundary for a large buffer, 4k >= Large buffer > 512 bytes */
 #define ICE_AQ_LG_BUF	512
 
+#define ICE_AQ_FLAG_DD_S	0
+#define ICE_AQ_FLAG_CMP_S	1
 #define ICE_AQ_FLAG_ERR_S	2
 #define ICE_AQ_FLAG_LB_S	9
 #define ICE_AQ_FLAG_RD_S	10
 #define ICE_AQ_FLAG_BUF_S	12
 #define ICE_AQ_FLAG_SI_S	13
 
+#define ICE_AQ_FLAG_DD		BIT(ICE_AQ_FLAG_DD_S)  /* 0x1    */
+#define ICE_AQ_FLAG_CMP		BIT(ICE_AQ_FLAG_CMP_S) /* 0x2    */
 #define ICE_AQ_FLAG_ERR		BIT(ICE_AQ_FLAG_ERR_S) /* 0x4    */
 #define ICE_AQ_FLAG_LB		BIT(ICE_AQ_FLAG_LB_S)  /* 0x200  */
 #define ICE_AQ_FLAG_RD		BIT(ICE_AQ_FLAG_RD_S)  /* 0x400  */
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index b0b38825e300..ddf07b773313 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -924,7 +924,7 @@ static void ice_debug_cq(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 			 void *desc, void *buf, u16 buf_len, bool response)
 {
 	struct ice_aq_desc *cq_desc = desc;
-	u16 len;
+	u16 datalen, flags;
 
 	if (!IS_ENABLED(CONFIG_DYNAMIC_DEBUG) &&
 	    !((ICE_DBG_AQ_DESC | ICE_DBG_AQ_DESC_BUF) & hw->debug_mask))
@@ -933,13 +933,13 @@ static void ice_debug_cq(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	if (!desc)
 		return;
 
-	len = le16_to_cpu(cq_desc->datalen);
+	datalen = le16_to_cpu(cq_desc->datalen);
+	flags = le16_to_cpu(cq_desc->flags);
 
 	ice_debug(hw, ICE_DBG_AQ_DESC, "%s %s: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\n",
 		  ice_ctl_q_str(cq->qtype), response ? "Response" : "Command",
-		  le16_to_cpu(cq_desc->opcode),
-		  le16_to_cpu(cq_desc->flags),
-		  le16_to_cpu(cq_desc->datalen), le16_to_cpu(cq_desc->retval));
+		  le16_to_cpu(cq_desc->opcode), flags, datalen,
+		  le16_to_cpu(cq_desc->retval));
 	ice_debug(hw, ICE_DBG_AQ_DESC, "\tcookie (h,l) 0x%08X 0x%08X\n",
 		  le32_to_cpu(cq_desc->cookie_high),
 		  le32_to_cpu(cq_desc->cookie_low));
@@ -949,12 +949,15 @@ static void ice_debug_cq(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	ice_debug(hw, ICE_DBG_AQ_DESC, "\taddr (h,l)   0x%08X 0x%08X\n",
 		  le32_to_cpu(cq_desc->params.generic.addr_high),
 		  le32_to_cpu(cq_desc->params.generic.addr_low));
-	if (buf && cq_desc->datalen != 0) {
+	/* Dump buffer iff 1) one exists and 2) is either a response indicated
+	 * by the DD and/or CMP flag set or a command with the RD flag set.
+	 */
+	if (buf && cq_desc->datalen &&
+	    (flags & (ICE_AQ_FLAG_DD | ICE_AQ_FLAG_CMP | ICE_AQ_FLAG_RD))) {
 		ice_debug(hw, ICE_DBG_AQ_DESC_BUF, "Buffer:\n");
-		if (buf_len < len)
-			len = buf_len;
 
-		ice_debug_array(hw, ICE_DBG_AQ_DESC_BUF, 16, 1, buf, len);
+		ice_debug_array(hw, ICE_DBG_AQ_DESC_BUF, 16, 1, buf,
+				min_t(u16, buf_len, datalen));
 	}
 }
 

-- 
2.46.0.124.g2dc1a81c8933


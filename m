Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56AEA949974
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 22:47:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C7CB40535;
	Tue,  6 Aug 2024 20:46:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PFSJuqaojmdD; Tue,  6 Aug 2024 20:46:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A6834050A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722977215;
	bh=/tUcyAKiqTSvkkQNA3FkGv0l+1C/PefxlHjwttku1r4=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9fAFkQDg2xNQFl7cYJN5xv191ECNzgXkSByfzsTwPNHv+54PWDkKOPtJblQecd36u
	 KEjSZIO2yTcF8B/Odr/hdIN1AIv75W6pC5VmCg/r5sANzy94Hdn0mYKnkVmCI3SAWB
	 37Ik0rTsJ/TC97pMdPRQ8+0lfUhhGCl151MPi37j7UoqtGMFCAaThsxa9srSNuGt0+
	 HFfRhsYkeUEeymgAYp3cHDlA7PP/lhEsON3bpb070h6FszMVZV5jOnvQtxzhM/FDDh
	 DLlM1ujiO2uCHxq83vpQ/qu9qAh2qrGYkw81sCxxmqq0CvXhaYUKciNhqX7s9TSZWY
	 /OyWzpA188mOw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A6834050A;
	Tue,  6 Aug 2024 20:46:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C7FE1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 49AEF404FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dfBAk8mbH6la for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 20:46:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 501274017A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 501274017A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 501274017A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:40 +0000 (UTC)
X-CSE-ConnectionGUID: 0ahNjHuTTluTmjDW01WUBw==
X-CSE-MsgGUID: IlrThJuISjWCHtJu3AZsoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20835925"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20835925"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:38 -0700
X-CSE-ConnectionGUID: SeQzhPtQS1iZDDOoYinMjw==
X-CSE-MsgGUID: iMNFk3o4RbKwN1LHwLDWPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56331592"
Received: from jekeller-desk.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.166.241.1])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:38 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 06 Aug 2024 13:46:26 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240806-e810-live-migration-rd32-poll-timeout-v1-6-b5ada29ce703@intel.com>
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
 bh=Twa9o9D4swhE+wMUxq62h2KgZhU8nrdgMoix/rMUdfw=;
 b=L/2ZOhAoPl/j6SdpgxpUXmthcQbWpgLDIxno5luD8uO4M7a9oKKAaolq
 gpdT2EIcG2gdnyfXIU/DcloGp/Nksgho6EgfY2vcSRXMkKPLiobJF615q
 rEys4BIHd5CESHWWSrFqMwwVK73kGNQJECw7nMwbBwtEo4voWHtcaq9le
 jdGBqD4iMLTyYVvHVlXvOZBVgzzqkwxpM41DhAHT4hHTk3uxaifIYUurs
 VTXy3AYLELLDkvReCiZlJixjgAPUuL68v+aSa3QvfDCLVWsHcf4BawSpI
 0AfawlYeJUHC2TDAclpt3y9S4D+8dY+ZZ5j2is3gF0bxUBLdsabrGSDIl
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L/2ZOhAo
Subject: [Intel-wired-lan] [PATCH iwl-next 6/7] ice: remove unnecessary
 control queue cmd_buf arrays
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

The driver allocates a cmd_buf array in addition to the desc_buf array.
This array stores an ice_sq_cd command details structure for each entry in
the control queue ring.

The contents of the structure are copied from the value passed in via
ice_sq_send_cmd, and include only a pointer to storage for the write back
descriptor contents.

Originally this array was intended to support asynchronous completion
including features such as a callback function. This support was never
implemented. All that exists today is needless copying and resetting of a
cmd_buf array that is otherwise functionally unused.

Since we do not plan to implement asynchronous completions, drop this
unnecessary memory and logic. This saves memory for each control queue, and
avoids the pointless copying and memset.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.h |  3 ---
 drivers/net/ethernet/intel/ice/ice_controlq.c | 29 ++-------------------------
 2 files changed, 2 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
index e5b6691436f5..ca97b7365a1b 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.h
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
@@ -50,7 +50,6 @@ enum ice_ctl_q {
 struct ice_ctl_q_ring {
 	void *dma_head;			/* Virtual address to DMA head */
 	struct ice_dma_mem desc_buf;	/* descriptor ring memory */
-	void *cmd_buf;			/* command buffer memory */
 
 	union {
 		struct ice_dma_mem *sq_bi;
@@ -80,8 +79,6 @@ struct ice_sq_cd {
 	struct ice_aq_desc *wb_desc;
 };
 
-#define ICE_CTL_Q_DETAILS(R, i) (&(((struct ice_sq_cd *)((R).cmd_buf))[i]))
-
 /* rq event information */
 struct ice_rq_event_info {
 	struct ice_aq_desc desc;
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index f38fd25a914a..b5774035e6f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -99,17 +99,6 @@ ice_alloc_ctrlq_sq_ring(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 		return -ENOMEM;
 	cq->sq.desc_buf.size = size;
 
-	cq->sq.cmd_buf = devm_kcalloc(ice_hw_to_dev(hw), cq->num_sq_entries,
-				      sizeof(struct ice_sq_cd), GFP_KERNEL);
-	if (!cq->sq.cmd_buf) {
-		dmam_free_coherent(ice_hw_to_dev(hw), cq->sq.desc_buf.size,
-				   cq->sq.desc_buf.va, cq->sq.desc_buf.pa);
-		cq->sq.desc_buf.va = NULL;
-		cq->sq.desc_buf.pa = 0;
-		cq->sq.desc_buf.size = 0;
-		return -ENOMEM;
-	}
-
 	return 0;
 }
 
@@ -338,8 +327,6 @@ do {									\
 					(qi)->ring.r.ring##_bi[i].size = 0;\
 		}							\
 	}								\
-	/* free the buffer info list */					\
-	devm_kfree(ice_hw_to_dev(hw), (qi)->ring.cmd_buf);		\
 	/* free DMA head */						\
 	devm_kfree(ice_hw_to_dev(hw), (qi)->ring.dma_head);		\
 } while (0)
@@ -865,21 +852,17 @@ static u16 ice_clean_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
 	struct ice_ctl_q_ring *sq = &cq->sq;
 	u16 ntc = sq->next_to_clean;
-	struct ice_sq_cd *details;
 	struct ice_aq_desc *desc;
 
 	desc = ICE_CTL_Q_DESC(*sq, ntc);
-	details = ICE_CTL_Q_DETAILS(*sq, ntc);
 
 	while (rd32(hw, cq->sq.head) != ntc) {
 		ice_debug(hw, ICE_DBG_AQ_MSG, "ntc %d head %d.\n", ntc, rd32(hw, cq->sq.head));
 		memset(desc, 0, sizeof(*desc));
-		memset(details, 0, sizeof(*details));
 		ntc++;
 		if (ntc == sq->count)
 			ntc = 0;
 		desc = ICE_CTL_Q_DESC(*sq, ntc);
-		details = ICE_CTL_Q_DETAILS(*sq, ntc);
 	}
 
 	sq->next_to_clean = ntc;
@@ -1009,7 +992,6 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	struct ice_dma_mem *dma_buf = NULL;
 	struct ice_aq_desc *desc_on_ring;
 	bool cmd_completed = false;
-	struct ice_sq_cd *details;
 	int status = 0;
 	u16 retval = 0;
 	u32 val = 0;
@@ -1053,12 +1035,6 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		goto sq_send_command_error;
 	}
 
-	details = ICE_CTL_Q_DETAILS(cq->sq, cq->sq.next_to_use);
-	if (cd)
-		*details = *cd;
-	else
-		memset(details, 0, sizeof(*details));
-
 	/* Call clean and check queue available function to reclaim the
 	 * descriptors that were processed by FW/MBX; the function returns the
 	 * number of desc available. The clean function called here could be
@@ -1140,9 +1116,8 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	ice_debug_cq(hw, cq, (void *)desc, buf, buf_size, true);
 
 	/* save writeback AQ if requested */
-	if (details->wb_desc)
-		memcpy(details->wb_desc, desc_on_ring,
-		       sizeof(*details->wb_desc));
+	if (cd && cd->wb_desc)
+		memcpy(cd->wb_desc, desc_on_ring, sizeof(*cd->wb_desc));
 
 	/* update the error if time out occurred */
 	if (!cmd_completed) {

-- 
2.46.0.124.g2dc1a81c8933


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 534B2949972
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 22:46:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACA65404E9;
	Tue,  6 Aug 2024 20:46:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wMOrhonO78b6; Tue,  6 Aug 2024 20:46:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 896D5404EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722977208;
	bh=9ZMIv0cEwFScYeE6F1Qwb4ef5DIuo3VAQCSebdqplB0=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f3IkCa94i3ljV6IHi5D9ij040tek52dPKKbKZGzYw5iQQtfMhlP6VD5R4BIem+tR+
	 VBhNmYUuo1sA4YyHJWmkrsPuy8A18rTeP8WtrBzXv1uU64uqYClJPiLmHuyB8dmuMv
	 NsWWV9qPWcx+WDZNgWhQfxK9qsxtahsnwC2HnsKqBQ1ZQISY1C3uo26VSNts7MUaNR
	 W0NA2UXHdmxDN7Xt95FGOzeee0wmAGfDutSAb93Mre4/e3ayqbOznZ9DadRfJRaRbC
	 uHYnkmQH3UPef7enHqV3zZZiXv+bT7qeGST2QDJGIR1fjOYvxMNbD4r57PECQCwKGj
	 QNNhtVbfe1/Eg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 896D5404EF;
	Tue,  6 Aug 2024 20:46:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D3EC1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFBBE40288
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eg-hVrFqHKAq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 20:46:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 71C36404C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71C36404C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 71C36404C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:40 +0000 (UTC)
X-CSE-ConnectionGUID: qL6MUczHRrGOtCAumpz4ew==
X-CSE-MsgGUID: Ca6o3vkART2cqigXQLpRbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20835924"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20835924"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:38 -0700
X-CSE-ConnectionGUID: QK2hL+YtR9u2QiEYAl1U8g==
X-CSE-MsgGUID: nvMkNO1NTo2myXt/pjsWlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56331589"
Received: from jekeller-desk.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.166.241.1])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:38 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 06 Aug 2024 13:46:25 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240806-e810-live-migration-rd32-poll-timeout-v1-5-b5ada29ce703@intel.com>
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
 bh=orf5ayXp7gDQWDn6m91Saee49prR3VgJX9kvUc9+eyo=;
 b=kxKlIKtG1qSL+nEdDTmNhfSdgwLrcCcS5sOxVnVmSMBxQLeJ5HPCMLCc
 bFAqbDkiF3aQXaMebMZS6ymWMFlalDC3QxRSkyYvKSclRJvsxB/HFbqd5
 KZFRlEKWjaOQFeoPu931Izfq8q1Zy9HMHdfflbkCdDzR2dYm2EIHX/M2H
 5+laiH+mQXTWyVETO5imVc261IGSfAPfvX6WeVPI7ZSMcXxuDG9PpT78D
 Q5TS60274MGlAEIre5cOnHE9Rmq25e26o/MFrbpU5eixv1yRqM0v21dQ8
 bJdRDAM3JvhIAINk+gbzAtddyjOHEqW1W1S/3W1DJHV8xL/6aYr31w+/R
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kxKlIKtG
Subject: [Intel-wired-lan] [PATCH iwl-next 5/7] ice: reword comments
 referring to control queues
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

Many comments in ice_controlq.c use the term "Admin queue" despite the code
being intended for arbitrary control queues, not just the Admin queue.
Reword the comments to make it clear that this code is the generic control
queue logic that is shared by all of the control queues, and is not
specific to the Admin queue.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 020600de9533..f38fd25a914a 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -188,7 +188,7 @@ ice_alloc_rq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 		if (cq->rq_buf_size > ICE_AQ_LG_BUF)
 			desc->flags |= cpu_to_le16(ICE_AQ_FLAG_LB);
 		desc->opcode = 0;
-		/* This is in accordance with Admin queue design, there is no
+		/* This is in accordance with control queue design, there is no
 		 * register for buffer size configuration
 		 */
 		desc->datalen = cpu_to_le16(bi->size);
@@ -405,11 +405,11 @@ static int ice_init_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 }
 
 /**
- * ice_init_rq - initialize ARQ
+ * ice_init_rq - initialize receive side of a control queue
  * @hw: pointer to the hardware structure
  * @cq: pointer to the specific Control queue
  *
- * The main initialization routine for the Admin Receive (Event) Queue.
+ * The main initialization routine for Receive side of a control queue.
  * Prior to calling this function, the driver *MUST* set the following fields
  * in the cq->structure:
  *     - cq->num_rq_entries
@@ -465,7 +465,7 @@ static int ice_init_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 }
 
 /**
- * ice_shutdown_sq - shutdown the Control ATQ
+ * ice_shutdown_sq - shutdown the transmit side of a control queue
  * @hw: pointer to the hardware structure
  * @cq: pointer to the specific Control queue
  *
@@ -482,7 +482,7 @@ static int ice_shutdown_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 		goto shutdown_sq_out;
 	}
 
-	/* Stop firmware AdminQ processing */
+	/* Stop processing of the control queue */
 	wr32(hw, cq->sq.head, 0);
 	wr32(hw, cq->sq.tail, 0);
 	wr32(hw, cq->sq.len, 0);
@@ -855,7 +855,7 @@ void ice_destroy_all_ctrlq(struct ice_hw *hw)
 }
 
 /**
- * ice_clean_sq - cleans Admin send queue (ATQ)
+ * ice_clean_sq - cleans send side of a control queue
  * @hw: pointer to the hardware structure
  * @cq: pointer to the specific Control queue
  *
@@ -989,7 +989,7 @@ static bool ice_sq_done(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 }
 
 /**
- * ice_sq_send_cmd - send command to Control Queue (ATQ)
+ * ice_sq_send_cmd - send command to a control queue
  * @hw: pointer to the HW struct
  * @cq: pointer to the specific Control queue
  * @desc: prefilled descriptor describing the command
@@ -997,8 +997,9 @@ static bool ice_sq_done(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  * @buf_size: size of buffer for indirect commands (or 0 for direct commands)
  * @cd: pointer to command details structure
  *
- * This is the main send command routine for the ATQ. It runs the queue,
- * cleans the queue, etc.
+ * Main command for the transmit side of a control queue. It puts the command
+ * on the queue, bumps the tail, waits for processing of the command, captures
+ * command status and results, etc.
  */
 int
 ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
@@ -1182,9 +1183,9 @@ void ice_fill_dflt_direct_cmd_desc(struct ice_aq_desc *desc, u16 opcode)
  * @e: event info from the receive descriptor, includes any buffers
  * @pending: number of events that could be left to process
  *
- * This function cleans one Admin Receive Queue element and returns
- * the contents through e. It can also return how many events are
- * left to process through 'pending'.
+ * Clean one element from the receive side of a control queue. On return 'e'
+ * contains contents of the message, and 'pending' contains the number of
+ * events left to process.
  */
 int
 ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,

-- 
2.46.0.124.g2dc1a81c8933


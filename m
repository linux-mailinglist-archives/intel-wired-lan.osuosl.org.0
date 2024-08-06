Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F447949970
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 22:46:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 997114050B;
	Tue,  6 Aug 2024 20:46:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t7QeAZW4qjXZ; Tue,  6 Aug 2024 20:46:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34D80404E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722977207;
	bh=kGcWVD+XcyeKuh5jJ5NVQ3VQjF+WmlMLmfipm/vDM8Y=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CjuCA5T2fhDdvZ4YryiAEEm0QYfzJCpzdF2vZgdlvj5Dvy3s8CEeT3jpTTLiWNNDa
	 baDyIJ3qcRReV2Kycc7GN+u6t1k8zot/e4AfzXGBmCuvGS5v8jtM7eeMsOibPuCX+1
	 gB2VHo30+Ll7rlFHM7ZGR+fMkgY3jV12XWoIgd7tOY9xF8uAMjaQ5o1/pB1L18ViSk
	 h8lIPzljaGo0eHQi9KJNHzEvCNZPeQL1tLJg+pqtDb3Aeg8rp7pmt5JHTjG28JrrmD
	 36ChSGUu1H1MRfMbE/X6vuiJ/WEuggqCTcUJ2Ql9pVBubfPEojqCQdUxdF8wDbEMra
	 6JVubxFz2vznA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34D80404E7;
	Tue,  6 Aug 2024 20:46:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4B781BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8638240283
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ViQshyggWMX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 20:46:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A21DE4010F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A21DE4010F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A21DE4010F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:39 +0000 (UTC)
X-CSE-ConnectionGUID: LuC71kzuThuyzo2dngC6UA==
X-CSE-MsgGUID: 0h8ClPLgRSqA2xT2tnEy3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20835915"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20835915"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:38 -0700
X-CSE-ConnectionGUID: 5UhW0UXdTkK7zyBwxWTu7g==
X-CSE-MsgGUID: XcWB6pt8QqKeU+hUUYR5qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56331580"
Received: from jekeller-desk.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.166.241.1])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 06 Aug 2024 13:46:22 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240806-e810-live-migration-rd32-poll-timeout-v1-2-b5ada29ce703@intel.com>
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
 bh=k+WnW7INsG/N4mb7hQgfh9zlGDwv/2w/E+9TyAzWBAk=;
 b=TlPYXBSavMYD7i+V1ws+/OQ/Vckhq58/bQt84/XYkDlaoanf0BVPxWPO
 x9T43QeRzyAwxVJHRs4MQ8y1qGx9azI2hFkTL+goxce0WBmPHn06Lr6aq
 8DOZ8afMq2xeBPcXJ4ev0Im66WNu5n+MURQIPxISP911Wan+yZWiqBzFd
 xife5jwQOZ5+hnOU7wciF07Ois+vjvz9e5eKNv93IFo23mMGxEf0dTIb8
 F+fgDP0v2E59p8PuOKlf0ElglCMGx6qO0Fgix+hch/16FSSRZRG/N5RMk
 zwqaXrA9v2WxdWChbYfaF0Yc6Qn4A4h700D//yAfwc2InKkMecROfWXnx
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TlPYXBSa
Subject: [Intel-wired-lan] [PATCH iwl-next 2/7] ice: improve debug print for
 control queue messages
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

The ice_debug_cq function is called to print debug data for a control queue
descriptor in multiple places. This includes both before we send a message
on a transmit queue, after the writeback completion of a message on the
transmit queue, and when we receive a message on a receive queue.

This function does not include data about *which* control queue the message
is on, nor whether it was what we sent to the queue or what we received
from the queue.

Modify ice_debug_cq to take two extra parameters, a pointer to the control
queue and a boolean indicating if this was a response or a command. Improve
the debug messages by replacing "CQ CMD" with a string indicating which
specific control queue (based on cq->qtype) and whether this was a command
sent by the PF or a response from the queue.

This helps make the log output easier to understand and consume when
debugging.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.c | 36 +++++++++++++++++++++++----
 1 file changed, 31 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 1b1b68a99bb2..b0b38825e300 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -887,16 +887,41 @@ static u16 ice_clean_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	return ICE_CTL_Q_DESC_UNUSED(sq);
 }
 
+/**
+ * ice_ctl_q_str - Convert control queue type to string
+ * @qtype: the control queue type
+ *
+ * Return: A string name for the given control queue type.
+ */
+static const char *ice_ctl_q_str(enum ice_ctl_q qtype)
+{
+	switch (qtype) {
+	case ICE_CTL_Q_UNKNOWN:
+		return "Unknown CQ";
+	case ICE_CTL_Q_ADMIN:
+		return "AQ";
+	case ICE_CTL_Q_MAILBOX:
+		return "MBXQ";
+	case ICE_CTL_Q_SB:
+		return "SBQ";
+	default:
+		return "Unrecognized CQ";
+	}
+}
+
 /**
  * ice_debug_cq
  * @hw: pointer to the hardware structure
+ * @cq: pointer to the specific Control queue
  * @desc: pointer to control queue descriptor
  * @buf: pointer to command buffer
  * @buf_len: max length of buf
+ * @response: true if this is the writeback response
  *
  * Dumps debug log about control command with descriptor contents.
  */
-static void ice_debug_cq(struct ice_hw *hw, void *desc, void *buf, u16 buf_len)
+static void ice_debug_cq(struct ice_hw *hw, struct ice_ctl_q_info *cq,
+			 void *desc, void *buf, u16 buf_len, bool response)
 {
 	struct ice_aq_desc *cq_desc = desc;
 	u16 len;
@@ -910,7 +935,8 @@ static void ice_debug_cq(struct ice_hw *hw, void *desc, void *buf, u16 buf_len)
 
 	len = le16_to_cpu(cq_desc->datalen);
 
-	ice_debug(hw, ICE_DBG_AQ_DESC, "CQ CMD: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\n",
+	ice_debug(hw, ICE_DBG_AQ_DESC, "%s %s: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\n",
+		  ice_ctl_q_str(cq->qtype), response ? "Response" : "Command",
 		  le16_to_cpu(cq_desc->opcode),
 		  le16_to_cpu(cq_desc->flags),
 		  le16_to_cpu(cq_desc->datalen), le16_to_cpu(cq_desc->retval));
@@ -1064,7 +1090,7 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	/* Debug desc and buffer */
 	ice_debug(hw, ICE_DBG_AQ_DESC, "ATQ: Control Send queue desc and buffer:\n");
 
-	ice_debug_cq(hw, (void *)desc_on_ring, buf, buf_size);
+	ice_debug_cq(hw, cq, (void *)desc_on_ring, buf, buf_size, false);
 
 	(cq->sq.next_to_use)++;
 	if (cq->sq.next_to_use == cq->sq.count)
@@ -1106,7 +1132,7 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 
 	ice_debug(hw, ICE_DBG_AQ_MSG, "ATQ: desc and buffer writeback:\n");
 
-	ice_debug_cq(hw, (void *)desc, buf, buf_size);
+	ice_debug_cq(hw, cq, (void *)desc, buf, buf_size, true);
 
 	/* save writeback AQ if requested */
 	if (details->wb_desc)
@@ -1210,7 +1236,7 @@ ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 
 	ice_debug(hw, ICE_DBG_AQ_DESC, "ARQ: desc and buffer:\n");
 
-	ice_debug_cq(hw, (void *)desc, e->msg_buf, cq->rq_buf_size);
+	ice_debug_cq(hw, cq, (void *)desc, e->msg_buf, cq->rq_buf_size, true);
 
 	/* Restore the original datalen and buffer address in the desc,
 	 * FW updates datalen to indicate the event message size

-- 
2.46.0.124.g2dc1a81c8933


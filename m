Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB697D7E9B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 10:39:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 715A341706;
	Thu, 26 Oct 2023 08:39:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 715A341706
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698309549;
	bh=capnTibI5XYCZpHUaGFQiwDC0xGqTHQKARXWam/n1qM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RgFgzr9bqjNCHW60N1W4aBmK/PyFnFvE1pSGxQ6p00dE5DIRD1e3J4ZBqYdEXHmG+
	 CstMtOHr46VZo90mHcxzzQsdmhoqlY5mvv1jp8CSljfIt4vOFmzQqIo9We6pK2KFUq
	 sE5OEvjsCexIHPILLlLvT83wjpUl7YH0llUPLLv6gq2lN3QmWjkHcjSdPQpLGzQXqH
	 KxVVTxKx76fKPyCvE/k56gMonrs1opd+6Tj8pa4ehXkij2bIW7j51YKTKgqLW6KRSE
	 6UPM96LrbV4ssDpLCLAmUlwWYUk0Jz4TEgZmuwk0SFBCQfuKTsuJumGeHuP8Rr/d4j
	 oXgtrY5lZqN0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lDLOpVxxBAr1; Thu, 26 Oct 2023 08:39:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F16041700;
	Thu, 26 Oct 2023 08:39:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F16041700
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E10951BF476
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 08:39:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C703841700
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 08:39:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C703841700
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ngsndXkaKR1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 08:39:01 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 42EC3416B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 08:39:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42EC3416B3
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-364-ShnXCKhYNSa7jwU_ETqM7w-1; Thu, 26 Oct 2023 04:38:55 -0400
X-MC-Unique: ShnXCKhYNSa7jwU_ETqM7w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32EFB811E88;
 Thu, 26 Oct 2023 08:38:55 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 748D75027;
 Thu, 26 Oct 2023 08:38:53 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 26 Oct 2023 10:38:52 +0200
Message-ID: <20231026083852.2623216-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698309540;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=4hmV/EFlvcbIT7jtmv0BQdZphzQ0SPFV6htEyJkBU3k=;
 b=E3JOPl939IRCpD8ah0F1o7UoD6piMsJgYAwcmFHQJy7QOMdP7gN7HQ1Pp8KAvBkExv7bJK
 PBU8mZVox4EFn9K7f3pydSBA70OCpGKf9bXl+r6Znaasidt3WwvhcvFqBVROj8s9CO38P9
 rfEdvJAlJ+IfOc54ujz5Uh6sMetoqxw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=E3JOPl93
Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: Remove queue tracking
 fields from i40e_adminq_ring
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fields 'head', 'tail', 'len', 'bah' and 'bal' in i40e_adminq_ring
are used to store register offsets. These offsets are initialized
and remains constant so there is no need to store them in the
i40e_adminq_ring structure.

Remove these fields from i40e_adminq_ring and use register offset
constants instead. Remove i40e_adminq_init_regs() that originally
stores these constants into these fields.

Finally improve i40e_check_asq_alive() that assumes that
non-zero value of hw->aq.asq.len indicates fully initialized
AdminQ send queue. Replace it by check for non-zero value
of field hw->aq.asq.count that is non-zero when the sending
queue is initialized and is zeroed during shutdown of
the queue.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c | 86 +++++++------------
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |  7 --
 drivers/net/ethernet/intel/i40e/i40e_common.c |  8 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  8 +-
 4 files changed, 39 insertions(+), 70 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 896c43905309..f73f5930fc58 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -8,27 +8,6 @@
 
 static void i40e_resume_aq(struct i40e_hw *hw);
 
-/**
- *  i40e_adminq_init_regs - Initialize AdminQ registers
- *  @hw: pointer to the hardware structure
- *
- *  This assumes the alloc_asq and alloc_arq functions have already been called
- **/
-static void i40e_adminq_init_regs(struct i40e_hw *hw)
-{
-	/* set head and tail registers in our local struct */
-	hw->aq.asq.tail = I40E_PF_ATQT;
-	hw->aq.asq.head = I40E_PF_ATQH;
-	hw->aq.asq.len  = I40E_PF_ATQLEN;
-	hw->aq.asq.bal  = I40E_PF_ATQBAL;
-	hw->aq.asq.bah  = I40E_PF_ATQBAH;
-	hw->aq.arq.tail = I40E_PF_ARQT;
-	hw->aq.arq.head = I40E_PF_ARQH;
-	hw->aq.arq.len  = I40E_PF_ARQLEN;
-	hw->aq.arq.bal  = I40E_PF_ARQBAL;
-	hw->aq.arq.bah  = I40E_PF_ARQBAH;
-}
-
 /**
  *  i40e_alloc_adminq_asq_ring - Allocate Admin Queue send rings
  *  @hw: pointer to the hardware structure
@@ -254,17 +233,17 @@ static int i40e_config_asq_regs(struct i40e_hw *hw)
 	u32 reg = 0;
 
 	/* Clear Head and Tail */
-	wr32(hw, hw->aq.asq.head, 0);
-	wr32(hw, hw->aq.asq.tail, 0);
+	wr32(hw, I40E_PF_ATQH, 0);
+	wr32(hw, I40E_PF_ATQT, 0);
 
 	/* set starting point */
-	wr32(hw, hw->aq.asq.len, (hw->aq.num_asq_entries |
+	wr32(hw, I40E_PF_ATQLEN, (hw->aq.num_asq_entries |
 				  I40E_PF_ATQLEN_ATQENABLE_MASK));
-	wr32(hw, hw->aq.asq.bal, lower_32_bits(hw->aq.asq.desc_buf.pa));
-	wr32(hw, hw->aq.asq.bah, upper_32_bits(hw->aq.asq.desc_buf.pa));
+	wr32(hw, I40E_PF_ATQBAL, lower_32_bits(hw->aq.asq.desc_buf.pa));
+	wr32(hw, I40E_PF_ATQBAH, upper_32_bits(hw->aq.asq.desc_buf.pa));
 
 	/* Check one register to verify that config was applied */
-	reg = rd32(hw, hw->aq.asq.bal);
+	reg = rd32(hw, I40E_PF_ATQBAL);
 	if (reg != lower_32_bits(hw->aq.asq.desc_buf.pa))
 		ret_code = -EIO;
 
@@ -283,20 +262,20 @@ static int i40e_config_arq_regs(struct i40e_hw *hw)
 	u32 reg = 0;
 
 	/* Clear Head and Tail */
-	wr32(hw, hw->aq.arq.head, 0);
-	wr32(hw, hw->aq.arq.tail, 0);
+	wr32(hw, I40E_PF_ARQH, 0);
+	wr32(hw, I40E_PF_ARQT, 0);
 
 	/* set starting point */
-	wr32(hw, hw->aq.arq.len, (hw->aq.num_arq_entries |
+	wr32(hw, I40E_PF_ARQLEN, (hw->aq.num_arq_entries |
 				  I40E_PF_ARQLEN_ARQENABLE_MASK));
-	wr32(hw, hw->aq.arq.bal, lower_32_bits(hw->aq.arq.desc_buf.pa));
-	wr32(hw, hw->aq.arq.bah, upper_32_bits(hw->aq.arq.desc_buf.pa));
+	wr32(hw, I40E_PF_ARQBAL, lower_32_bits(hw->aq.arq.desc_buf.pa));
+	wr32(hw, I40E_PF_ARQBAH, upper_32_bits(hw->aq.arq.desc_buf.pa));
 
 	/* Update tail in the HW to post pre-allocated buffers */
-	wr32(hw, hw->aq.arq.tail, hw->aq.num_arq_entries - 1);
+	wr32(hw, I40E_PF_ARQT, hw->aq.num_arq_entries - 1);
 
 	/* Check one register to verify that config was applied */
-	reg = rd32(hw, hw->aq.arq.bal);
+	reg = rd32(hw, I40E_PF_ARQBAL);
 	if (reg != lower_32_bits(hw->aq.arq.desc_buf.pa))
 		ret_code = -EIO;
 
@@ -439,11 +418,11 @@ static int i40e_shutdown_asq(struct i40e_hw *hw)
 	}
 
 	/* Stop firmware AdminQ processing */
-	wr32(hw, hw->aq.asq.head, 0);
-	wr32(hw, hw->aq.asq.tail, 0);
-	wr32(hw, hw->aq.asq.len, 0);
-	wr32(hw, hw->aq.asq.bal, 0);
-	wr32(hw, hw->aq.asq.bah, 0);
+	wr32(hw, I40E_PF_ATQH, 0);
+	wr32(hw, I40E_PF_ATQT, 0);
+	wr32(hw, I40E_PF_ATQLEN, 0);
+	wr32(hw, I40E_PF_ATQBAL, 0);
+	wr32(hw, I40E_PF_ATQBAH, 0);
 
 	hw->aq.asq.count = 0; /* to indicate uninitialized queue */
 
@@ -473,11 +452,11 @@ static int i40e_shutdown_arq(struct i40e_hw *hw)
 	}
 
 	/* Stop firmware AdminQ processing */
-	wr32(hw, hw->aq.arq.head, 0);
-	wr32(hw, hw->aq.arq.tail, 0);
-	wr32(hw, hw->aq.arq.len, 0);
-	wr32(hw, hw->aq.arq.bal, 0);
-	wr32(hw, hw->aq.arq.bah, 0);
+	wr32(hw, I40E_PF_ARQH, 0);
+	wr32(hw, I40E_PF_ARQT, 0);
+	wr32(hw, I40E_PF_ARQLEN, 0);
+	wr32(hw, I40E_PF_ARQBAL, 0);
+	wr32(hw, I40E_PF_ARQBAH, 0);
 
 	hw->aq.arq.count = 0; /* to indicate uninitialized queue */
 
@@ -608,9 +587,6 @@ int i40e_init_adminq(struct i40e_hw *hw)
 		goto init_adminq_exit;
 	}
 
-	/* Set up register offsets */
-	i40e_adminq_init_regs(hw);
-
 	/* setup ASQ command write back timeout */
 	hw->aq.asq_cmd_timeout = I40E_ASQ_CMD_TIMEOUT;
 
@@ -720,9 +696,9 @@ static u16 i40e_clean_asq(struct i40e_hw *hw)
 
 	desc = I40E_ADMINQ_DESC(*asq, ntc);
 	details = I40E_ADMINQ_DETAILS(*asq, ntc);
-	while (rd32(hw, hw->aq.asq.head) != ntc) {
+	while (rd32(hw, I40E_PF_ATQH) != ntc) {
 		i40e_debug(hw, I40E_DEBUG_AQ_COMMAND,
-			   "ntc %d head %d.\n", ntc, rd32(hw, hw->aq.asq.head));
+			   "ntc %d head %d.\n", ntc, rd32(hw, I40E_PF_ATQH));
 
 		if (details->callback) {
 			I40E_ADMINQ_CALLBACK cb_func =
@@ -756,7 +732,7 @@ static bool i40e_asq_done(struct i40e_hw *hw)
 	/* AQ designers suggest use of head for better
 	 * timing reliability than DD bit
 	 */
-	return rd32(hw, hw->aq.asq.head) == hw->aq.asq.next_to_use;
+	return rd32(hw, I40E_PF_ATQH) == hw->aq.asq.next_to_use;
 
 }
 
@@ -797,7 +773,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 
 	hw->aq.asq_last_status = I40E_AQ_RC_OK;
 
-	val = rd32(hw, hw->aq.asq.head);
+	val = rd32(hw, I40E_PF_ATQH);
 	if (val >= hw->aq.num_asq_entries) {
 		i40e_debug(hw, I40E_DEBUG_AQ_MESSAGE,
 			   "AQTX: head overrun at %d\n", val);
@@ -889,7 +865,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 	if (hw->aq.asq.next_to_use == hw->aq.asq.count)
 		hw->aq.asq.next_to_use = 0;
 	if (!details->postpone)
-		wr32(hw, hw->aq.asq.tail, hw->aq.asq.next_to_use);
+		wr32(hw, I40E_PF_ATQT, hw->aq.asq.next_to_use);
 
 	/* if cmd_details are not defined or async flag is not set,
 	 * we need to wait for desc write back
@@ -949,7 +925,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 	/* update the error if time out occurred */
 	if ((!cmd_completed) &&
 	    (!details->async && !details->postpone)) {
-		if (rd32(hw, hw->aq.asq.len) & I40E_GL_ATQLEN_ATQCRIT_MASK) {
+		if (rd32(hw, I40E_PF_ATQLEN) & I40E_GL_ATQLEN_ATQCRIT_MASK) {
 			i40e_debug(hw, I40E_DEBUG_AQ_MESSAGE,
 				   "AQTX: AQ Critical error.\n");
 			status = -EIO;
@@ -1103,7 +1079,7 @@ int i40e_clean_arq_element(struct i40e_hw *hw,
 	}
 
 	/* set next_to_use to head */
-	ntu = rd32(hw, hw->aq.arq.head) & I40E_PF_ARQH_ARQH_MASK;
+	ntu = rd32(hw, I40E_PF_ARQH) & I40E_PF_ARQH_ARQH_MASK;
 	if (ntu == ntc) {
 		/* nothing to do - shouldn't need to update ring's values */
 		ret_code = -EALREADY;
@@ -1151,7 +1127,7 @@ int i40e_clean_arq_element(struct i40e_hw *hw,
 	desc->params.external.addr_low = cpu_to_le32(lower_32_bits(bi->pa));
 
 	/* set tail = the last cleaned desc index. */
-	wr32(hw, hw->aq.arq.tail, ntc);
+	wr32(hw, I40E_PF_ARQT, ntc);
 	/* ntc is updated to tail + 1 */
 	ntc++;
 	if (ntc == hw->aq.num_arq_entries)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
index 80125bea80a2..ee86d2c53079 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
@@ -29,13 +29,6 @@ struct i40e_adminq_ring {
 	/* used for interrupt processing */
 	u16 next_to_use;
 	u16 next_to_clean;
-
-	/* used for queue tracking */
-	u32 head;
-	u32 tail;
-	u32 len;
-	u32 bah;
-	u32 bal;
 };
 
 /* ASQ transaction details */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index e171f4814e21..bd52b73cf61f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -195,11 +195,11 @@ void i40e_debug_aq(struct i40e_hw *hw, enum i40e_debug_mask mask, void *desc,
  **/
 bool i40e_check_asq_alive(struct i40e_hw *hw)
 {
-	if (hw->aq.asq.len)
-		return !!(rd32(hw, hw->aq.asq.len) &
-			  I40E_PF_ATQLEN_ATQENABLE_MASK);
-	else
+	/* Check if the queue is initialized */
+	if (!hw->aq.asq.count)
 		return false;
+
+	return !!(rd32(hw, I40E_PF_ATQLEN) & I40E_PF_ATQLEN_ATQENABLE_MASK);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 69dafdecb243..91563512b2bd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10141,7 +10141,7 @@ static void i40e_clean_adminq_subtask(struct i40e_pf *pf)
 		return;
 
 	/* check for error indications */
-	val = rd32(&pf->hw, pf->hw.aq.arq.len);
+	val = rd32(&pf->hw, I40E_PF_ARQLEN);
 	i40e_trace(state_arq, pf, val);
 	oldval = val;
 	if (val & I40E_PF_ARQLEN_ARQVFE_MASK) {
@@ -10161,9 +10161,9 @@ static void i40e_clean_adminq_subtask(struct i40e_pf *pf)
 		val &= ~I40E_PF_ARQLEN_ARQCRIT_MASK;
 	}
 	if (oldval != val)
-		wr32(&pf->hw, pf->hw.aq.arq.len, val);
+		wr32(&pf->hw, I40E_PF_ARQLEN, val);
 
-	val = rd32(&pf->hw, pf->hw.aq.asq.len);
+	val = rd32(&pf->hw, I40E_PF_ATQLEN);
 	i40e_trace(state_asq, pf, val);
 	oldval = val;
 	if (val & I40E_PF_ATQLEN_ATQVFE_MASK) {
@@ -10182,7 +10182,7 @@ static void i40e_clean_adminq_subtask(struct i40e_pf *pf)
 		val &= ~I40E_PF_ATQLEN_ATQCRIT_MASK;
 	}
 	if (oldval != val)
-		wr32(&pf->hw, pf->hw.aq.asq.len, val);
+		wr32(&pf->hw, I40E_PF_ATQLEN, val);
 
 	event.buf_len = I40E_MAX_AQ_BUF_SIZE;
 	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

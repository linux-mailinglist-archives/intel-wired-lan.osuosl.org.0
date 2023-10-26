Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD267D7E9F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 10:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25CF141727;
	Thu, 26 Oct 2023 08:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25CF141727
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698309592;
	bh=GptSb4tgLqbiqWaAXth1Ov2CsDjUh0PpXKxxb30S2xo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=kn7usTuCLDn4idVrWpLNRdDrQgIBhUqUBXtsJxtaPcWlHhlbbbd9g4IR1R+KhryL0
	 /GCaVfiS9GFKB5Q2eTbhOcbS8LNLZSPyYsfImMnn/rC+cKb/lwRVwBUQfPOqWPMPpa
	 FztF8uzXgjqDfrcGiRbKlhnE5fPP+Md1VhVRlELUVGAMFJ1y17Im9L8vy6LejTJpiL
	 SaN8tJviksejmeebb4ilitATOp2X8FpaYSE6IOUjrLWvel07Q+/gTO5T6y6myipkyc
	 ufUwWHEYIlqk0jm3x4shbTlMYgABDAaPnZupM9n65ih7i9NYHiMvQUweTFN6XGXsOx
	 dUgTXLTv/h+xA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xGu02BWDYZNC; Thu, 26 Oct 2023 08:39:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 620F841706;
	Thu, 26 Oct 2023 08:39:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 620F841706
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82C871BF476
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 08:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B4EB61223
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 08:39:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B4EB61223
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x0JRcfV-Cs02 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 08:39:43 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4098961219
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 08:39:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4098961219
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-455-ljUTGsX1M-maIY2mQBdNoA-1; Thu,
 26 Oct 2023 04:39:35 -0400
X-MC-Unique: ljUTGsX1M-maIY2mQBdNoA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F0F4D29ABA17;
 Thu, 26 Oct 2023 08:39:34 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 38740C1596D;
 Thu, 26 Oct 2023 08:39:33 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 26 Oct 2023 10:39:32 +0200
Message-ID: <20231026083932.2623631-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698309582;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=bQ+kIwosFjC7uy9ZZr9H4BtGhhZj5EmLC8yhuUr2RT0=;
 b=WRtl9ScKOoJKY6fQH+Ni1LIZzhjeQEkqcoCd1z+f1MUjavF9YOVF47o+XcrnS58Ueih+7Y
 NG39kObvyNNbkIjbzjX38VbZ/swSbYhZhmrcEpjcvLp3SlgdEqfHk0Mmrj44tMztKJiGx+
 ymUS7AZu9K/ZXHG4gpIZuxZAAUgC2OU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WRtl9ScK
Subject: [Intel-wired-lan] [PATCH iwl-next] iavf: Remove queue tracking
 fields from iavf_adminq_ring
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

Fields 'head', 'tail', 'len', 'bah' and 'bal' in iavf_adminq_ring
are used to store register offsets. These offsets are initialized
and remains constant so there is no need to store them in the
iavf_adminq_ring structure.

Remove these fields from iavf_adminq_ring and use register offset
constants instead. Remove iavf_adminq_init_regs() that originally
stores these constants into these fields.

Finally improve iavf_check_asq_alive() that assumes that
non-zero value of hw->aq.asq.len indicates fully initialized
AdminQ send queue. Replace it by check for non-zero value
of field hw->aq.asq.count that is non-zero when the sending
queue is initialized and is zeroed during shutdown of
the queue.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_adminq.c | 86 +++++++------------
 drivers/net/ethernet/intel/iavf/iavf_adminq.h |  7 --
 drivers/net/ethernet/intel/iavf/iavf_common.c |  8 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  8 +-
 4 files changed, 39 insertions(+), 70 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.c b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
index 9ffbd24d83cb..82fcd18ad660 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
@@ -7,27 +7,6 @@
 #include "iavf_adminq.h"
 #include "iavf_prototype.h"
 
-/**
- *  iavf_adminq_init_regs - Initialize AdminQ registers
- *  @hw: pointer to the hardware structure
- *
- *  This assumes the alloc_asq and alloc_arq functions have already been called
- **/
-static void iavf_adminq_init_regs(struct iavf_hw *hw)
-{
-	/* set head and tail registers in our local struct */
-	hw->aq.asq.tail = IAVF_VF_ATQT1;
-	hw->aq.asq.head = IAVF_VF_ATQH1;
-	hw->aq.asq.len  = IAVF_VF_ATQLEN1;
-	hw->aq.asq.bal  = IAVF_VF_ATQBAL1;
-	hw->aq.asq.bah  = IAVF_VF_ATQBAH1;
-	hw->aq.arq.tail = IAVF_VF_ARQT1;
-	hw->aq.arq.head = IAVF_VF_ARQH1;
-	hw->aq.arq.len  = IAVF_VF_ARQLEN1;
-	hw->aq.arq.bal  = IAVF_VF_ARQBAL1;
-	hw->aq.arq.bah  = IAVF_VF_ARQBAH1;
-}
-
 /**
  *  iavf_alloc_adminq_asq_ring - Allocate Admin Queue send rings
  *  @hw: pointer to the hardware structure
@@ -259,17 +238,17 @@ static enum iavf_status iavf_config_asq_regs(struct iavf_hw *hw)
 	u32 reg = 0;
 
 	/* Clear Head and Tail */
-	wr32(hw, hw->aq.asq.head, 0);
-	wr32(hw, hw->aq.asq.tail, 0);
+	wr32(hw, IAVF_VF_ATQH1, 0);
+	wr32(hw, IAVF_VF_ATQT1, 0);
 
 	/* set starting point */
-	wr32(hw, hw->aq.asq.len, (hw->aq.num_asq_entries |
+	wr32(hw, IAVF_VF_ATQLEN1, (hw->aq.num_asq_entries |
 				  IAVF_VF_ATQLEN1_ATQENABLE_MASK));
-	wr32(hw, hw->aq.asq.bal, lower_32_bits(hw->aq.asq.desc_buf.pa));
-	wr32(hw, hw->aq.asq.bah, upper_32_bits(hw->aq.asq.desc_buf.pa));
+	wr32(hw, IAVF_VF_ATQBAL1, lower_32_bits(hw->aq.asq.desc_buf.pa));
+	wr32(hw, IAVF_VF_ATQBAH1, upper_32_bits(hw->aq.asq.desc_buf.pa));
 
 	/* Check one register to verify that config was applied */
-	reg = rd32(hw, hw->aq.asq.bal);
+	reg = rd32(hw, IAVF_VF_ATQBAL1);
 	if (reg != lower_32_bits(hw->aq.asq.desc_buf.pa))
 		ret_code = IAVF_ERR_ADMIN_QUEUE_ERROR;
 
@@ -288,20 +267,20 @@ static enum iavf_status iavf_config_arq_regs(struct iavf_hw *hw)
 	u32 reg = 0;
 
 	/* Clear Head and Tail */
-	wr32(hw, hw->aq.arq.head, 0);
-	wr32(hw, hw->aq.arq.tail, 0);
+	wr32(hw, IAVF_VF_ARQH1, 0);
+	wr32(hw, IAVF_VF_ARQT1, 0);
 
 	/* set starting point */
-	wr32(hw, hw->aq.arq.len, (hw->aq.num_arq_entries |
+	wr32(hw, IAVF_VF_ARQLEN1, (hw->aq.num_arq_entries |
 				  IAVF_VF_ARQLEN1_ARQENABLE_MASK));
-	wr32(hw, hw->aq.arq.bal, lower_32_bits(hw->aq.arq.desc_buf.pa));
-	wr32(hw, hw->aq.arq.bah, upper_32_bits(hw->aq.arq.desc_buf.pa));
+	wr32(hw, IAVF_VF_ARQBAL1, lower_32_bits(hw->aq.arq.desc_buf.pa));
+	wr32(hw, IAVF_VF_ARQBAH1, upper_32_bits(hw->aq.arq.desc_buf.pa));
 
 	/* Update tail in the HW to post pre-allocated buffers */
-	wr32(hw, hw->aq.arq.tail, hw->aq.num_arq_entries - 1);
+	wr32(hw, IAVF_VF_ARQT1, hw->aq.num_arq_entries - 1);
 
 	/* Check one register to verify that config was applied */
-	reg = rd32(hw, hw->aq.arq.bal);
+	reg = rd32(hw, IAVF_VF_ARQBAL1);
 	if (reg != lower_32_bits(hw->aq.arq.desc_buf.pa))
 		ret_code = IAVF_ERR_ADMIN_QUEUE_ERROR;
 
@@ -455,11 +434,11 @@ static enum iavf_status iavf_shutdown_asq(struct iavf_hw *hw)
 	}
 
 	/* Stop firmware AdminQ processing */
-	wr32(hw, hw->aq.asq.head, 0);
-	wr32(hw, hw->aq.asq.tail, 0);
-	wr32(hw, hw->aq.asq.len, 0);
-	wr32(hw, hw->aq.asq.bal, 0);
-	wr32(hw, hw->aq.asq.bah, 0);
+	wr32(hw, IAVF_VF_ATQH1, 0);
+	wr32(hw, IAVF_VF_ATQT1, 0);
+	wr32(hw, IAVF_VF_ATQLEN1, 0);
+	wr32(hw, IAVF_VF_ATQBAL1, 0);
+	wr32(hw, IAVF_VF_ATQBAH1, 0);
 
 	hw->aq.asq.count = 0; /* to indicate uninitialized queue */
 
@@ -489,11 +468,11 @@ static enum iavf_status iavf_shutdown_arq(struct iavf_hw *hw)
 	}
 
 	/* Stop firmware AdminQ processing */
-	wr32(hw, hw->aq.arq.head, 0);
-	wr32(hw, hw->aq.arq.tail, 0);
-	wr32(hw, hw->aq.arq.len, 0);
-	wr32(hw, hw->aq.arq.bal, 0);
-	wr32(hw, hw->aq.arq.bah, 0);
+	wr32(hw, IAVF_VF_ARQH1, 0);
+	wr32(hw, IAVF_VF_ARQT1, 0);
+	wr32(hw, IAVF_VF_ARQLEN1, 0);
+	wr32(hw, IAVF_VF_ARQBAL1, 0);
+	wr32(hw, IAVF_VF_ARQBAH1, 0);
 
 	hw->aq.arq.count = 0; /* to indicate uninitialized queue */
 
@@ -529,9 +508,6 @@ enum iavf_status iavf_init_adminq(struct iavf_hw *hw)
 		goto init_adminq_exit;
 	}
 
-	/* Set up register offsets */
-	iavf_adminq_init_regs(hw);
-
 	/* setup ASQ command write back timeout */
 	hw->aq.asq_cmd_timeout = IAVF_ASQ_CMD_TIMEOUT;
 
@@ -587,9 +563,9 @@ static u16 iavf_clean_asq(struct iavf_hw *hw)
 
 	desc = IAVF_ADMINQ_DESC(*asq, ntc);
 	details = IAVF_ADMINQ_DETAILS(*asq, ntc);
-	while (rd32(hw, hw->aq.asq.head) != ntc) {
+	while (rd32(hw, IAVF_VF_ATQH1) != ntc) {
 		iavf_debug(hw, IAVF_DEBUG_AQ_MESSAGE,
-			   "ntc %d head %d.\n", ntc, rd32(hw, hw->aq.asq.head));
+			   "ntc %d head %d.\n", ntc, rd32(hw, IAVF_VF_ATQH1));
 
 		if (details->callback) {
 			IAVF_ADMINQ_CALLBACK cb_func =
@@ -624,7 +600,7 @@ bool iavf_asq_done(struct iavf_hw *hw)
 	/* AQ designers suggest use of head for better
 	 * timing reliability than DD bit
 	 */
-	return rd32(hw, hw->aq.asq.head) == hw->aq.asq.next_to_use;
+	return rd32(hw, IAVF_VF_ATQH1) == hw->aq.asq.next_to_use;
 }
 
 /**
@@ -663,7 +639,7 @@ enum iavf_status iavf_asq_send_command(struct iavf_hw *hw,
 
 	hw->aq.asq_last_status = IAVF_AQ_RC_OK;
 
-	val = rd32(hw, hw->aq.asq.head);
+	val = rd32(hw, IAVF_VF_ATQH1);
 	if (val >= hw->aq.num_asq_entries) {
 		iavf_debug(hw, IAVF_DEBUG_AQ_MESSAGE,
 			   "AQTX: head overrun at %d\n", val);
@@ -755,7 +731,7 @@ enum iavf_status iavf_asq_send_command(struct iavf_hw *hw,
 	if (hw->aq.asq.next_to_use == hw->aq.asq.count)
 		hw->aq.asq.next_to_use = 0;
 	if (!details->postpone)
-		wr32(hw, hw->aq.asq.tail, hw->aq.asq.next_to_use);
+		wr32(hw, IAVF_VF_ATQT1, hw->aq.asq.next_to_use);
 
 	/* if cmd_details are not defined or async flag is not set,
 	 * we need to wait for desc write back
@@ -810,7 +786,7 @@ enum iavf_status iavf_asq_send_command(struct iavf_hw *hw,
 	/* update the error if time out occurred */
 	if ((!cmd_completed) &&
 	    (!details->async && !details->postpone)) {
-		if (rd32(hw, hw->aq.asq.len) & IAVF_VF_ATQLEN1_ATQCRIT_MASK) {
+		if (rd32(hw, IAVF_VF_ATQLEN1) & IAVF_VF_ATQLEN1_ATQCRIT_MASK) {
 			iavf_debug(hw, IAVF_DEBUG_AQ_MESSAGE,
 				   "AQTX: AQ Critical error.\n");
 			status = IAVF_ERR_ADMIN_QUEUE_CRITICAL_ERROR;
@@ -878,7 +854,7 @@ enum iavf_status iavf_clean_arq_element(struct iavf_hw *hw,
 	}
 
 	/* set next_to_use to head */
-	ntu = rd32(hw, hw->aq.arq.head) & IAVF_VF_ARQH1_ARQH_MASK;
+	ntu = rd32(hw, IAVF_VF_ARQH1) & IAVF_VF_ARQH1_ARQH_MASK;
 	if (ntu == ntc) {
 		/* nothing to do - shouldn't need to update ring's values */
 		ret_code = IAVF_ERR_ADMIN_QUEUE_NO_WORK;
@@ -926,7 +902,7 @@ enum iavf_status iavf_clean_arq_element(struct iavf_hw *hw,
 	desc->params.external.addr_low = cpu_to_le32(lower_32_bits(bi->pa));
 
 	/* set tail = the last cleaned desc index. */
-	wr32(hw, hw->aq.arq.tail, ntc);
+	wr32(hw, IAVF_VF_ARQT1, ntc);
 	/* ntc is updated to tail + 1 */
 	ntc++;
 	if (ntc == hw->aq.num_arq_entries)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.h b/drivers/net/ethernet/intel/iavf/iavf_adminq.h
index 1f60518eb0e5..406506f64bdd 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.h
@@ -29,13 +29,6 @@ struct iavf_adminq_ring {
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
diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index 8091e6feca01..89d2bce529ae 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -279,11 +279,11 @@ void iavf_debug_aq(struct iavf_hw *hw, enum iavf_debug_mask mask, void *desc,
  **/
 bool iavf_check_asq_alive(struct iavf_hw *hw)
 {
-	if (hw->aq.asq.len)
-		return !!(rd32(hw, hw->aq.asq.len) &
-			  IAVF_VF_ATQLEN1_ATQENABLE_MASK);
-	else
+	/* Check if the queue is initialized */
+	if (!hw->aq.asq.count)
 		return false;
+
+	return !!(rd32(hw, IAVF_VF_ATQLEN1) & IAVF_VF_ATQLEN1_ATQENABLE_MASK);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6e27b7938b8a..146755498feb 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3253,7 +3253,7 @@ static void iavf_adminq_task(struct work_struct *work)
 		goto freedom;
 
 	/* check for error indications */
-	val = rd32(hw, hw->aq.arq.len);
+	val = rd32(hw, IAVF_VF_ARQLEN1);
 	if (val == 0xdeadbeef || val == 0xffffffff) /* device in reset */
 		goto freedom;
 	oldval = val;
@@ -3270,9 +3270,9 @@ static void iavf_adminq_task(struct work_struct *work)
 		val &= ~IAVF_VF_ARQLEN1_ARQCRIT_MASK;
 	}
 	if (oldval != val)
-		wr32(hw, hw->aq.arq.len, val);
+		wr32(hw, IAVF_VF_ARQLEN1, val);
 
-	val = rd32(hw, hw->aq.asq.len);
+	val = rd32(hw, IAVF_VF_ATQLEN1);
 	oldval = val;
 	if (val & IAVF_VF_ATQLEN1_ATQVFE_MASK) {
 		dev_info(&adapter->pdev->dev, "ASQ VF Error detected\n");
@@ -3287,7 +3287,7 @@ static void iavf_adminq_task(struct work_struct *work)
 		val &= ~IAVF_VF_ATQLEN1_ATQCRIT_MASK;
 	}
 	if (oldval != val)
-		wr32(hw, hw->aq.asq.len, val);
+		wr32(hw, IAVF_VF_ATQLEN1, val);
 
 freedom:
 	kfree(event.msg_buf);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

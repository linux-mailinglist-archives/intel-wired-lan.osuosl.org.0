Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D62ABD623
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 13:08:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7CEF60769;
	Tue, 20 May 2025 11:08:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aTffHEqB3fnn; Tue, 20 May 2025 11:08:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C814C60770
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747739322;
	bh=AlDtQ4wQi3BlEM8wgkVRN0eVYU6iMCBm3bByH10KTPY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Kglm+HMrgPqs3UtiPaAfsQjrmBimXQ4fyptacvfkcSpBNUWmOTcytuBxPukS4srTG
	 cFmVipSghKM7IXNJX4NSyIn9aUhtSz7iEe82NQIC58JyeiHljy+qnVF5cRgs14N2ub
	 wM3EDk8XBq1fYWoxjGg9sbu8CaIYK9hbSdAMQh9JnUia4mCzSZ2POV1KaPB5+yFq4w
	 Ck2U0/F7SgwXiEAHKZqh2mxqFYWIrTJ7nnZt6Qq34jBhqRL71+sfMz8VNllFqTrlLV
	 luSZAABqABSKgL165Sv6uZs+7jhneuGYPf8khQCpwdjx/wLiGcxZiUNaxzMzVZ+o02
	 yGxYjStNivgOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C814C60770;
	Tue, 20 May 2025 11:08:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FFDBD4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 11:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6958A40514
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 11:08:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EwFdyl9PoVD7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 11:08:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8E2F8404CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E2F8404CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8E2F8404CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 11:08:38 +0000 (UTC)
X-CSE-ConnectionGUID: FoHOj7maQfmbdMa3B3Y0Qw==
X-CSE-MsgGUID: /nc9lEO4Tney85lOtQqEeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="75069270"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="75069270"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 04:08:38 -0700
X-CSE-ConnectionGUID: cyiam4L1SMGuKxH6WjvuAg==
X-CSE-MsgGUID: NJLlTBXvRkOPtZQyzcCsJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140173010"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by orviesa007.jf.intel.com with ESMTP; 20 May 2025 04:08:37 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Tue, 20 May 2025 13:06:27 +0200
Message-ID: <20250520110823.1937981-8-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250520110823.1937981-6-karol.kolacinski@intel.com>
References: <20250520110823.1937981-6-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747739318; x=1779275318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bcCKb0KaJeCEq1X8BWOkiQ1irtSZA//moyW5UfSE7E0=;
 b=bqya3Q5NvKIFSb/2jsRqmAzExe9d2g4Ae7vmLkGHmhf1FNSlGUEP4B3s
 eqwn3iL97qaVHTi0kslhYPmWQp8wciGx6g/h/5Bm4o28OZAk9wkt1icXa
 sb1xKuNstNF3/dW+ivn5BbnqFddrKlRklhtcJ86IDtZO8XfbXW+Jw2ufw
 O2cGQLc6amewp+zQMomlOmc38rlNDSeJnF8+iUrp5Mdg3OHcejA87cS7M
 2JS2UctdZ5iJvgCxXep/09P5NI/Bn8vBT3+WjE48Anb5icgZ6Iar7+oZ9
 V4J2/0sHPquOR+6ar0439RpXMdGjASnyQY0P5xOj7uiXamNLVEThvbNVv
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bqya3Q5N
Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: refactor
 ice_sq_send_cmd and ice_shutdown_sq
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

Refactor ice_sq_send_cmd() and ice_shutdown_sq() to be able to use
a simpler locking, e.g. for new methods, which depend on the control
queue.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.c | 155 ++++++++----------
 1 file changed, 72 insertions(+), 83 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 5fb3a8441beb..fb7e1218797c 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -456,35 +456,34 @@ static int ice_init_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  * @hw: pointer to the hardware structure
  * @cq: pointer to the specific Control queue
  *
- * The main shutdown routine for the Control Transmit Queue
+ * The main shutdown routine for the Control Transmit Queue.
+ *
+ * Return:
+ * * %0      - success
+ * * %-EBUSY - no send queue descriptors
  */
 static int ice_shutdown_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
-	int ret_code = 0;
+	if (!cq->sq.count)
+		return -EBUSY;
 
 	mutex_lock(&cq->sq_lock);
 
-	if (!cq->sq.count) {
-		ret_code = -EBUSY;
-		goto shutdown_sq_out;
-	}
-
 	/* Stop processing of the control queue */
 	wr32(hw, cq->sq.head, 0);
 	wr32(hw, cq->sq.tail, 0);
 	wr32(hw, cq->sq.len, 0);
 	wr32(hw, cq->sq.bal, 0);
 	wr32(hw, cq->sq.bah, 0);
-
 	cq->sq.count = 0;	/* to indicate uninitialized queue */
 
+	mutex_unlock(&cq->sq_lock);
+
 	/* free ring buffers and the ring itself */
 	ICE_FREE_CQ_BUFS(hw, cq, sq);
 	ice_free_cq_ring(hw, &cq->sq);
 
-shutdown_sq_out:
-	mutex_unlock(&cq->sq_lock);
-	return ret_code;
+	return 0;
 }
 
 /**
@@ -990,56 +989,55 @@ static bool ice_sq_done(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  * Main command for the transmit side of a control queue. It puts the command
  * on the queue, bumps the tail, waits for processing of the command, captures
  * command status and results, etc.
+ *
+ * Return:
+ * * %0       - success
+ * * %-EIO    - incorrect control send queue state, timeout or FW error
+ * * %-EINVAL - incorrect arguments
+ * * %-ENOSPC - control send queue is full
  */
-int
-ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
-		struct libie_aq_desc *desc, void *buf, u16 buf_size,
-		struct ice_sq_cd *cd)
+int ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
+		    struct libie_aq_desc *desc, void *buf, u16 buf_size,
+		    struct ice_sq_cd *cd)
 {
-	struct ice_dma_mem *dma_buf = NULL;
 	struct libie_aq_desc *desc_on_ring;
-	bool cmd_completed = false;
-	int status = 0;
-	u16 retval = 0;
-	u32 val = 0;
-
-	/* if reset is in progress return a soft error */
+	struct ice_dma_mem *dma_buf;
+	int err = 0;
+	u32 val;
+	/* If reset is in progress return a soft error. */
 	if (hw->reset_ongoing)
 		return -EBUSY;
-	mutex_lock(&cq->sq_lock);
 
+	if (!buf && buf_size)
+		return -EINVAL;
+
+	mutex_lock(&cq->sq_lock);
 	cq->sq_last_status = LIBIE_AQ_RC_OK;
 
 	if (!cq->sq.count) {
 		ice_debug(hw, ICE_DBG_AQ_MSG, "Control Send queue not initialized.\n");
-		status = -EIO;
-		goto sq_send_command_error;
-	}
-
-	if ((buf && !buf_size) || (!buf && buf_size)) {
-		status = -EINVAL;
-		goto sq_send_command_error;
+		err = -EIO;
+		goto err;
 	}
 
 	if (buf) {
-		if (buf_size > cq->sq_buf_size) {
+		if (!buf_size || buf_size > cq->sq_buf_size) {
 			ice_debug(hw, ICE_DBG_AQ_MSG, "Invalid buffer size for Control Send queue: %d.\n",
 				  buf_size);
-			status = -EINVAL;
-			goto sq_send_command_error;
+			err = -EINVAL;
+			goto err;
 		}
 
 		desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_BUF);
 		if (buf_size > LIBIE_AQ_LG_BUF)
 			desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_LB);
 	}
-
 	val = rd32(hw, cq->sq.head);
 	if (val >= cq->num_sq_entries) {
 		ice_debug(hw, ICE_DBG_AQ_MSG, "head overrun at %d in the Control Send Queue ring\n",
 			  val);
-		status = -EIO;
-		goto sq_send_command_error;
+		err = -EIO;
+		goto err;
 	}
 
 	/* Call clean and check queue available function to reclaim the
@@ -1049,25 +1047,23 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	 */
 	if (ice_clean_sq(hw, cq) == 0) {
 		ice_debug(hw, ICE_DBG_AQ_MSG, "Error: Control Send Queue is full.\n");
-		status = -ENOSPC;
-		goto sq_send_command_error;
+		err = -ENOSPC;
+		goto err;
 	}
 
-	/* initialize the temp desc pointer with the right desc */
+	/* Initialize the desc_on_ring with the right descriptor. */
 	desc_on_ring = ICE_CTL_Q_DESC(cq->sq, cq->sq.next_to_use);
-
-	/* if the desc is available copy the temp desc to the right place */
 	memcpy(desc_on_ring, desc, sizeof(*desc_on_ring));
 
-	/* if buf is not NULL assume indirect command */
+	/* If buf is not NULL, assume indirect command. */
 	if (buf) {
 		dma_buf = &cq->sq.r.sq_bi[cq->sq.next_to_use];
-		/* copy the user buf into the respective DMA buf */
+		/* Copy the user buf into the respective DMA buf. */
 		memcpy(dma_buf->va, buf, buf_size);
 		desc_on_ring->datalen = cpu_to_le16(buf_size);
 
-		/* Update the address values in the desc with the pa value
-		 * for respective buffer
+		/* Update the address values in the desc with the pa value for
+		 * respective buffer.
 		 */
 		desc_on_ring->params.generic.addr_high =
 			cpu_to_le32(upper_32_bits(dma_buf->pa));
@@ -1075,9 +1071,7 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 			cpu_to_le32(lower_32_bits(dma_buf->pa));
 	}
 
-	/* Debug desc and buffer */
 	ice_debug(hw, ICE_DBG_AQ_DESC, "ATQ: Control Send queue desc and buffer:\n");
-
 	ice_debug_cq(hw, cq, (void *)desc_on_ring, buf, buf_size, false);
 
 	(cq->sq.next_to_use)++;
@@ -1086,65 +1080,60 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	wr32(hw, cq->sq.tail, cq->sq.next_to_use);
 	ice_flush(hw);
 
-	/* If the message is posted, don't wait for completion. */
-	if (cd && cd->postpone)
-		goto sq_send_command_error;
-
-	/* Wait for the command to complete. If it finishes within the
-	 * timeout, copy the descriptor back to temp.
-	 */
-	if (ice_sq_done(hw, cq)) {
+	if (cd && cd->postpone) {
+		/* If the message is postponed, don't wait for completion. */
+		ice_debug(hw, ICE_DBG_AQ_MSG, "ATQ: Skipping completion\n");
+	} else if (ice_sq_done(hw, cq)) {
+		/* Wait for the command to complete. If it finishes within
+		 * the timeout, copy the descriptor back to temp.
+		 */
 		memcpy(desc, desc_on_ring, sizeof(*desc));
 		if (buf) {
-			/* get returned length to copy */
+			/* Get returned length to copy. */
 			u16 copy_size = le16_to_cpu(desc->datalen);
 
 			if (copy_size > buf_size) {
 				ice_debug(hw, ICE_DBG_AQ_MSG, "Return len %d > than buf len %d\n",
 					  copy_size, buf_size);
-				status = -EIO;
+				err = -EIO;
 			} else {
 				memcpy(buf, dma_buf->va, copy_size);
 			}
 		}
-		retval = le16_to_cpu(desc->retval);
-		if (retval) {
+
+		/* Strip off FW internal code. */
+		cq->sq_last_status =
+			(enum libie_aq_err)(le16_to_cpu(desc->retval) & 0xFF);
+		if (cq->sq_last_status) {
 			ice_debug(hw, ICE_DBG_AQ_MSG, "Control Send Queue command 0x%04X completed with error 0x%X\n",
 				  le16_to_cpu(desc->opcode),
-				  retval);
-
-			/* strip off FW internal code */
-			retval &= 0xff;
+				  cq->sq_last_status);
+			err = -EIO;
 		}
-		cmd_completed = true;
-		if (!status && retval != LIBIE_AQ_RC_OK)
-			status = -EIO;
-		cq->sq_last_status = (enum libie_aq_err)retval;
-	}
-
-	ice_debug(hw, ICE_DBG_AQ_MSG, "ATQ: desc and buffer writeback:\n");
 
-	ice_debug_cq(hw, cq, (void *)desc, buf, buf_size, true);
+		if (err)
+			goto err;
 
-	/* save writeback AQ if requested */
-	if (cd && cd->wb_desc)
-		memcpy(cd->wb_desc, desc_on_ring, sizeof(*cd->wb_desc));
+		ice_debug(hw, ICE_DBG_AQ_MSG, "ATQ: desc and buffer writeback:\n");
+		ice_debug_cq(hw, cq, (void *)desc, buf, buf_size, true);
 
-	/* update the error if time out occurred */
-	if (!cmd_completed) {
+		/* Save writeback AQ if requested. */
+		if (cd && cd->wb_desc)
+			memcpy(cd->wb_desc, desc_on_ring, sizeof(*cd->wb_desc));
+	} else {
+		/* Update the error if timeout occurred. */
 		if (rd32(hw, cq->rq.len) & cq->rq.len_crit_mask ||
-		    rd32(hw, cq->sq.len) & cq->sq.len_crit_mask) {
+		    rd32(hw, cq->sq.len) & cq->sq.len_crit_mask)
 			ice_debug(hw, ICE_DBG_AQ_MSG, "Critical FW error.\n");
-			status = -EIO;
-		} else {
+		else
 			ice_debug(hw, ICE_DBG_AQ_MSG, "Control Send Queue Writeback timeout.\n");
-			status = -EIO;
-		}
+
+		err = -EIO;
 	}
 
-sq_send_command_error:
+err:
 	mutex_unlock(&cq->sq_lock);
-	return status;
+	return err;
 }
 
 /**
-- 
2.49.0


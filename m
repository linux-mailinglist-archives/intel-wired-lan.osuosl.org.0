Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A90AE891B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 18:04:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86CD041EAB;
	Wed, 25 Jun 2025 16:04:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kgm5ZG3tU3NU; Wed, 25 Jun 2025 16:04:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDA1241EA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750867482;
	bh=2l76MF7YDQIweV78DaVuX3KM4uxhbb564X+KD9Z2DjU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XuiEziGXezrIWWFFU/oZlDzAcAf2NsThm8JzKJUNp7ktuC4eE+XtygXchw9Wx9Uws
	 d32AJLPwCMtb3lrjkqtIUMgKequgtt7RvW/Ghw6gvdYx4TqlJfdSZ8vKELx1tVv/uC
	 c63zmrCV2FKsbiu0AEuC7cBtiUWmhCBz+PfKGXX0D40L2/uq5p1bIBXAbURr2I6JDq
	 PSaXZotCVYROgwOR4G5842ix8MTDLGXdQ9ONt4WyR3jE4Q86BGS6IH7FLfQvgnUc82
	 PBZxkBvleHPaoBz417C6ffwHl4kyewJBEmsLwJC4daysEGPw1xwZ8KbPsm+2pwPw93
	 8c0Gn581enS5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDA1241EA6;
	Wed, 25 Jun 2025 16:04:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 99BFCE27
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:04:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8085941EA9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:04:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xX1haK-Egikq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 16:04:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C79C841EA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C79C841EA6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C79C841EA6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:04:40 +0000 (UTC)
X-CSE-ConnectionGUID: entcLWVDRm+LVnKt6mkfSw==
X-CSE-MsgGUID: 3t+5umekSIuRrFM55bRNpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="70714944"
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="70714944"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 09:04:40 -0700
X-CSE-ConnectionGUID: T3vDO9lQQGqAuOXXh7XJ9A==
X-CSE-MsgGUID: SeyCdqZuSQ+UGeyJf9y+Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="157752616"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by fmviesa004.fm.intel.com with ESMTP; 25 Jun 2025 09:04:41 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 Luigi Rizzo <lrizzo@google.com>, Brian Vazquez <brianvv@google.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Wed, 25 Jun 2025 09:11:53 -0700
Message-Id: <20250625161156.338777-3-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20250625161156.338777-1-joshua.a.hay@intel.com>
References: <20250625161156.338777-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750867480; x=1782403480;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mphaBg0vPzuH8KiV3Z0vdLb5CbCjJL1sjqSHPBEY/so=;
 b=QwoZEwBTZEQFwWJstkHdjLLjegz0o3Jjnft6En4+EynjWxgmrP1SaQR/
 Abp7C1TEnXalkplXJ/YH6G0FfwvEMmBbRnuRYLGJNi7a5g+2PmU5Scp9O
 /UggS78PO7oFw8EDylR9wtvggE4mYK2hjdXCbzthO0wfVSMxxGhZFRpon
 AQD0NWPGqLdqXquy1AgibxwDJY4Yycm2aQ7Vlhyz6mU48CWJZW2l6WaiS
 AVoMC+JQVpXtNFGtZV94yfvHOAb5kEUs2QudqiM5m9fUD6qW8tak49Onp
 ZZ2F+JS6W/FlgAxiFxEqjwZlKZLWH2gtB04tJtL8war0g33AKzryGGqH5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QwoZEwBT
Subject: [Intel-wired-lan] [PATCH net 2/5] idpf: improve when to set RE bit
 logic
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

Track the gap between next_to_use and the last RE index. Set RE again
if the gap is large enough to ensure RE bit is set frequently. This is
critical before removing the stashing mechanisms because the
opportunistic descriptor ring cleaning from the out-of-order completions
will go away. Previously the descriptors would be "cleaned" by both the
descriptor (RE) completion and the out-of-order completions. Without the
latter, we must ensure the RE bit is set more frequently. Otherwise,
it's theoretically possible for the descriptor ring next_to_clean to
never advance.  The previous implementation was dependent on the start
of a packet falling on a 64th index in the descriptor ring, which is not
guaranteed with large packets.

Signed-off-by: Luigi Rizzo <lrizzo@google.com>
Signed-off-by: Brian Vazquez <brianvv@google.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 20 +++++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 ++++--
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 6a16b80a8ac2..cdecf558d7ec 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -293,6 +293,8 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
 		 * up the ring, i.e. we already ring wrapped.
 		 */
 		idpf_queue_change(GEN_CHK, refillq);
+
+		tx_q->last_re = tx_q->desc_count - IDPF_TX_SPLITQ_RE_MIN_GAP;
 	}
 
 	return 0;
@@ -2913,6 +2915,21 @@ static void idpf_tx_set_tstamp_desc(union idpf_flex_tx_ctx_desc *ctx_desc,
 { }
 #endif /* CONFIG_PTP_1588_CLOCK */
 
+/**
+ * idpf_tx_splitq_need_re - check whether RE bit needs to be set
+ * @tx_q: pointer to Tx queue
+ *
+ * Return: true if RE bit needs to be set, false otherwise
+ */
+static bool idpf_tx_splitq_need_re(struct idpf_tx_queue *tx_q)
+{
+	int gap = tx_q->next_to_use - tx_q->last_re;
+
+	gap += (gap < 0) ? tx_q->desc_count : 0;
+
+	return gap >= IDPF_TX_SPLITQ_RE_MIN_GAP;
+}
+
 /**
  * idpf_tx_splitq_frame - Sends buffer on Tx ring using flex descriptors
  * @skb: send buffer
@@ -2996,9 +3013,10 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 		 * MIN_RING size to ensure it will be set at least once each
 		 * time around the ring.
 		 */
-		if (!(tx_q->next_to_use % IDPF_TX_SPLITQ_RE_MIN_GAP)) {
+		if (idpf_tx_splitq_need_re(tx_q)) {
 			tx_params.eop_cmd |= IDPF_TXD_FLEX_FLOW_CMD_RE;
 			tx_q->txq_grp->num_completions_pending++;
+			tx_q->last_re = tx_q->next_to_use;
 		}
 
 		if (skb->ip_summed == CHECKSUM_PARTIAL)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 6924bee6ff5b..65acad4c929d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -609,6 +609,8 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  * @netdev: &net_device corresponding to this queue
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
+ * @last_re: last descriptor index that RE bit was set
+ * @tx_max_bufs: Max buffers that can be transmitted with scatter-gather
  * @cleaned_bytes: Splitq only, TXQ only: When a TX completion is received on
  *		   the TX completion queue, it can be for any TXQ associated
  *		   with that completion queue. This means we can clean up to
@@ -619,7 +621,6 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  *		   only once at the end of the cleaning routine.
  * @clean_budget: singleq only, queue cleaning budget
  * @cleaned_pkts: Number of packets cleaned for the above said case
- * @tx_max_bufs: Max buffers that can be transmitted with scatter-gather
  * @stash: Tx buffer stash for Flow-based scheduling mode
  * @refillq: Pointer to refill queue
  * @compl_tag_bufid_m: Completion tag buffer id mask
@@ -662,6 +663,8 @@ struct idpf_tx_queue {
 	__cacheline_group_begin_aligned(read_write);
 	u16 next_to_use;
 	u16 next_to_clean;
+	u16 last_re;
+	u16 tx_max_bufs;
 
 	union {
 		u32 cleaned_bytes;
@@ -669,7 +672,6 @@ struct idpf_tx_queue {
 	};
 	u16 cleaned_pkts;
 
-	u16 tx_max_bufs;
 	struct idpf_txq_stash *stash;
 	struct idpf_sw_queue *refillq;
 
-- 
2.39.2


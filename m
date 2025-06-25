Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81455AE891E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 18:04:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF9A041E90;
	Wed, 25 Jun 2025 16:04:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gRs6U7_cCAm7; Wed, 25 Jun 2025 16:04:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71A9941EB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750867490;
	bh=5AuduL1RLALt60VaUJDf40xIQEauAcGoriswbKgkMs8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GTpkRc67aRPWWzGVU8Wr2Db4MPBCfjM+BLS2If3V7lRnchN2YJ5ARaRJg+ZGrue+M
	 aPhi3OS/omPvFqahbwNSRN/NLX1xCZh1gS5zndrC3XRH3jFnBr3e+oPj0nm8c7q7Qt
	 MDyeXYVMndT9NkGMj258hLz/RW1ZxNeIQof2oxJopYB3lBz4nrnUCwK4JqMy8Ei7UA
	 NkS0In8U3hDFvXphCwTC2wBN6szSsIWr1u9ZKwedTy91JsB4e+yWMgoIpAoC3doMjJ
	 ptPM2GGsxGLQ+6Gmg6Hqj3ueUZLYcsY0PAbgfwgLxrlKgubJitr9kMd4pTcmA0p4gr
	 vcIJV4RnhmSEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71A9941EB3;
	Wed, 25 Jun 2025 16:04:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 40F5843F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:04:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 26EAB41EBA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:04:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VXFuzcJUYsBv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 16:04:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B538241EA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B538241EA6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B538241EA6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:04:46 +0000 (UTC)
X-CSE-ConnectionGUID: D0Uc3BHJQf+FxHiiK6UXPQ==
X-CSE-MsgGUID: aCIV0qVARgeKQDjuW3TlNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="70714959"
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="70714959"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 09:04:46 -0700
X-CSE-ConnectionGUID: zp5zuK66Q1i31FuenNQv0g==
X-CSE-MsgGUID: ksjyFLWDS1mow++ltyF7mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="157752642"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by fmviesa004.fm.intel.com with ESMTP; 25 Jun 2025 09:04:46 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Wed, 25 Jun 2025 09:11:56 -0700
Message-Id: <20250625161156.338777-6-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20250625161156.338777-1-joshua.a.hay@intel.com>
References: <20250625161156.338777-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750867486; x=1782403486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JyhUjD09u3apPVlb7ToMvriWIkjcn/l/KUifBwIf4xY=;
 b=U4xVz1PofpBz69gy5GQh88X3Mxt4c0Bo2BvSmr6Q9awQUxwCOawfhzuj
 11rTOftNq2ED1Ddtc3OoRFFF7LrAeWqPOrSTQN79ZZnL4G+d+6x6mIlui
 BlGKgX5d7vZYcfbJHk6/xxKnbHW+KUimtrvouHJRW5zjic7ViIfGN75gs
 uwo29fmjibhgUl/5p/ZF6Sg37w4oiNFXtkUeBP46tNJeP8v+L63s0BiyJ
 zJ8VtjoYQvcacRgvYVckByrGTVddEe/qJUs3ibnFEbx/KKlDhqPXrtSC4
 EqVISoSeOO/pXcQvtYT2YNhFWmaXmVoC6dG3ncqWiJ6NVeHTx6TwXw/r2
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U4xVz1Po
Subject: [Intel-wired-lan] [PATCH net 5/5] idpf: remove obsolete stashing
 code
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

With the new Tx buffer management scheme, there is no need for all of
the stashing mechanisms, the hash table, the reserve buffer stack, etc.
Remove all of that.

Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 375 ++------------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  47 +--
 2 files changed, 23 insertions(+), 399 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 674b7a382bf1..811fc6d124a7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -8,48 +8,12 @@
 #include "idpf_ptp.h"
 #include "idpf_virtchnl.h"
 
-struct idpf_tx_stash {
-	struct hlist_node hlist;
-	struct libeth_sqe buf;
-};
-
 #define idpf_tx_buf_next(buf)  (*(u32 *)&(buf)->priv)
-#define idpf_tx_buf_compl_tag(buf)	(*(u32 *)&(buf)->priv)
 LIBETH_SQE_CHECK_PRIV(u32);
 
 static bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
 			       unsigned int count);
 
-/**
- * idpf_buf_lifo_push - push a buffer pointer onto stack
- * @stack: pointer to stack struct
- * @buf: pointer to buf to push
- *
- * Returns 0 on success, negative on failure
- **/
-static int idpf_buf_lifo_push(struct idpf_buf_lifo *stack,
-			      struct idpf_tx_stash *buf)
-{
-	if (unlikely(stack->top == stack->size))
-		return -ENOSPC;
-
-	stack->bufs[stack->top++] = buf;
-
-	return 0;
-}
-
-/**
- * idpf_buf_lifo_pop - pop a buffer pointer from stack
- * @stack: pointer to stack struct
- **/
-static struct idpf_tx_stash *idpf_buf_lifo_pop(struct idpf_buf_lifo *stack)
-{
-	if (unlikely(!stack->top))
-		return NULL;
-
-	return stack->bufs[--stack->top];
-}
-
 /**
  * idpf_tx_timeout - Respond to a Tx Hang
  * @netdev: network interface device structure
@@ -78,14 +42,11 @@ void idpf_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
 {
 	struct libeth_sq_napi_stats ss = { };
-	struct idpf_buf_lifo *buf_stack;
-	struct idpf_tx_stash *stash;
 	struct libeth_cq_pp cp = {
 		.dev	= txq->dev,
 		.ss	= &ss,
 	};
-	struct hlist_node *tmp;
-	u32 i, tag;
+	u32 i;
 
 	/* Buffers already cleared, nothing to do */
 	if (!txq->tx_buf)
@@ -97,33 +58,6 @@ static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
 
 	kfree(txq->tx_buf);
 	txq->tx_buf = NULL;
-
-	if (!idpf_queue_has(FLOW_SCH_EN, txq))
-		return;
-
-	buf_stack = &txq->stash->buf_stack;
-	if (!buf_stack->bufs)
-		return;
-
-	/*
-	 * If a Tx timeout occurred, there are potentially still bufs in the
-	 * hash table, free them here.
-	 */
-	hash_for_each_safe(txq->stash->sched_buf_hash, tag, tmp, stash,
-			   hlist) {
-		if (!stash)
-			continue;
-
-		libeth_tx_complete(&stash->buf, &cp);
-		hash_del(&stash->hlist);
-		idpf_buf_lifo_push(buf_stack, stash);
-	}
-
-	for (i = 0; i < buf_stack->size; i++)
-		kfree(buf_stack->bufs[i]);
-
-	kfree(buf_stack->bufs);
-	buf_stack->bufs = NULL;
 }
 
 /**
@@ -199,9 +133,7 @@ static void idpf_tx_desc_rel_all(struct idpf_vport *vport)
  */
 static int idpf_tx_buf_alloc_all(struct idpf_tx_queue *tx_q)
 {
-	struct idpf_buf_lifo *buf_stack;
 	int buf_size;
-	int i;
 
 	/* Allocate book keeping buffers only. Buffers to be supplied to HW
 	 * are allocated by kernel network stack and received as part of skb
@@ -215,29 +147,6 @@ static int idpf_tx_buf_alloc_all(struct idpf_tx_queue *tx_q)
 	if (!tx_q->tx_buf)
 		return -ENOMEM;
 
-	if (!idpf_queue_has(FLOW_SCH_EN, tx_q))
-		return 0;
-
-	buf_stack = &tx_q->stash->buf_stack;
-
-	/* Initialize tx buf stack for out-of-order completions if
-	 * flow scheduling offload is enabled
-	 */
-	buf_stack->bufs = kcalloc(tx_q->desc_count, sizeof(*buf_stack->bufs),
-				  GFP_KERNEL);
-	if (!buf_stack->bufs)
-		return -ENOMEM;
-
-	buf_stack->size = tx_q->desc_count;
-	buf_stack->top = tx_q->desc_count;
-
-	for (i = 0; i < tx_q->desc_count; i++) {
-		buf_stack->bufs[i] = kzalloc(sizeof(*buf_stack->bufs[i]),
-					     GFP_KERNEL);
-		if (!buf_stack->bufs[i])
-			return -ENOMEM;
-	}
-
 	return 0;
 }
 
@@ -352,8 +261,6 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
 	for (i = 0; i < vport->num_txq_grp; i++) {
 		for (j = 0; j < vport->txq_grps[i].num_txq; j++) {
 			struct idpf_tx_queue *txq = vport->txq_grps[i].txqs[j];
-			u8 gen_bits = 0;
-			u16 bufidx_mask;
 
 			err = idpf_tx_desc_alloc(vport, txq);
 			if (err) {
@@ -362,34 +269,6 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
 					i);
 				goto err_out;
 			}
-
-			if (!idpf_is_queue_model_split(vport->txq_model))
-				continue;
-
-			txq->compl_tag_cur_gen = 0;
-
-			/* Determine the number of bits in the bufid
-			 * mask and add one to get the start of the
-			 * generation bits
-			 */
-			bufidx_mask = txq->desc_count - 1;
-			while (bufidx_mask >> 1) {
-				txq->compl_tag_gen_s++;
-				bufidx_mask = bufidx_mask >> 1;
-			}
-			txq->compl_tag_gen_s++;
-
-			gen_bits = IDPF_TX_SPLITQ_COMPL_TAG_WIDTH -
-							txq->compl_tag_gen_s;
-			txq->compl_tag_gen_max = GETMAXVAL(gen_bits);
-
-			/* Set bufid mask based on location of first
-			 * gen bit; it cannot simply be the descriptor
-			 * ring size-1 since we can have size values
-			 * where not all of those bits are set.
-			 */
-			txq->compl_tag_bufid_m =
-				GETMAXVAL(txq->compl_tag_gen_s);
 		}
 
 		if (!idpf_is_queue_model_split(vport->txq_model))
@@ -1044,9 +923,6 @@ static void idpf_txq_group_rel(struct idpf_vport *vport)
 
 		kfree(txq_grp->complq);
 		txq_grp->complq = NULL;
-
-		if (flow_sch_en)
-			kfree(txq_grp->stashes);
 	}
 	kfree(vport->txq_grps);
 	vport->txq_grps = NULL;
@@ -1407,7 +1283,6 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 	for (i = 0; i < vport->num_txq_grp; i++) {
 		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
 		struct idpf_adapter *adapter = vport->adapter;
-		struct idpf_txq_stash *stashes;
 		int j;
 
 		tx_qgrp->vport = vport;
@@ -1420,15 +1295,6 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 				goto err_alloc;
 		}
 
-		if (split && flow_sch_en) {
-			stashes = kcalloc(num_txq, sizeof(*stashes),
-					  GFP_KERNEL);
-			if (!stashes)
-				goto err_alloc;
-
-			tx_qgrp->stashes = stashes;
-		}
-
 		for (j = 0; j < tx_qgrp->num_txq; j++) {
 			struct idpf_tx_queue *q = tx_qgrp->txqs[j];
 
@@ -1448,11 +1314,6 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 			if (!flow_sch_en)
 				continue;
 
-			if (split) {
-				q->stash = &stashes[j];
-				hash_init(q->stash->sched_buf_hash);
-			}
-
 			idpf_queue_set(FLOW_SCH_EN, q);
 
 			q->refillq = kzalloc(sizeof(*q->refillq), GFP_KERNEL);
@@ -1744,87 +1605,6 @@ static void idpf_tx_read_tstamp(struct idpf_tx_queue *txq, struct sk_buff *skb)
 	spin_unlock_bh(&tx_tstamp_caps->status_lock);
 }
 
-/**
- * idpf_tx_clean_stashed_bufs - clean bufs that were stored for
- * out of order completions
- * @txq: queue to clean
- * @compl_tag: completion tag of packet to clean (from completion descriptor)
- * @cleaned: pointer to stats struct to track cleaned packets/bytes
- * @budget: Used to determine if we are in netpoll
- */
-static void idpf_tx_clean_stashed_bufs(struct idpf_tx_queue *txq,
-				       u16 compl_tag,
-				       struct libeth_sq_napi_stats *cleaned,
-				       int budget)
-{
-	struct idpf_tx_stash *stash;
-	struct hlist_node *tmp_buf;
-	struct libeth_cq_pp cp = {
-		.dev	= txq->dev,
-		.ss	= cleaned,
-		.napi	= budget,
-	};
-
-	/* Buffer completion */
-	hash_for_each_possible_safe(txq->stash->sched_buf_hash, stash, tmp_buf,
-				    hlist, compl_tag) {
-		if (unlikely(idpf_tx_buf_compl_tag(&stash->buf) != compl_tag))
-			continue;
-
-		hash_del(&stash->hlist);
-
-		if (stash->buf.type == LIBETH_SQE_SKB &&
-		    (skb_shinfo(stash->buf.skb)->tx_flags & SKBTX_IN_PROGRESS))
-			idpf_tx_read_tstamp(txq, stash->buf.skb);
-
-		libeth_tx_complete(&stash->buf, &cp);
-
-		/* Push shadow buf back onto stack */
-		idpf_buf_lifo_push(&txq->stash->buf_stack, stash);
-	}
-}
-
-/**
- * idpf_stash_flow_sch_buffers - store buffer parameters info to be freed at a
- * later time (only relevant for flow scheduling mode)
- * @txq: Tx queue to clean
- * @tx_buf: buffer to store
- */
-static int idpf_stash_flow_sch_buffers(struct idpf_tx_queue *txq,
-				       struct idpf_tx_buf *tx_buf)
-{
-	struct idpf_tx_stash *stash;
-
-	if (unlikely(tx_buf->type <= LIBETH_SQE_CTX))
-		return 0;
-
-	stash = idpf_buf_lifo_pop(&txq->stash->buf_stack);
-	if (unlikely(!stash)) {
-		net_err_ratelimited("%s: No out-of-order TX buffers left!\n",
-				    netdev_name(txq->netdev));
-
-		return -ENOMEM;
-	}
-
-	/* Store buffer params in shadow buffer */
-	stash->buf.skb = tx_buf->skb;
-	stash->buf.bytes = tx_buf->bytes;
-	stash->buf.packets = tx_buf->packets;
-	stash->buf.type = tx_buf->type;
-	stash->buf.nr_frags = tx_buf->nr_frags;
-	dma_unmap_addr_set(&stash->buf, dma, dma_unmap_addr(tx_buf, dma));
-	dma_unmap_len_set(&stash->buf, len, dma_unmap_len(tx_buf, len));
-	idpf_tx_buf_compl_tag(&stash->buf) = idpf_tx_buf_compl_tag(tx_buf);
-
-	/* Add buffer to buf_hash table to be freed later */
-	hash_add(txq->stash->sched_buf_hash, &stash->hlist,
-		 idpf_tx_buf_compl_tag(&stash->buf));
-
-	tx_buf->type = LIBETH_SQE_EMPTY;
-
-	return 0;
-}
-
 #define idpf_tx_splitq_clean_bump_ntc(txq, ntc, desc, buf)	\
 do {								\
 	if (unlikely(++(ntc) == (txq)->desc_count)) {		\
@@ -1852,14 +1632,8 @@ do {								\
  * Separate packet completion events will be reported on the completion queue,
  * and the buffers will be cleaned separately. The stats are not updated from
  * this function when using flow-based scheduling.
- *
- * Furthermore, in flow scheduling mode, check to make sure there are enough
- * reserve buffers to stash the packet. If there are not, return early, which
- * will leave next_to_clean pointing to the packet that failed to be stashed.
- *
- * Return: false in the scenario above, true otherwise.
  */
-static bool idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
+static void idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
 				 int napi_budget,
 				 struct libeth_sq_napi_stats *cleaned,
 				 bool descs_only)
@@ -1873,12 +1647,11 @@ static bool idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
 		.napi	= napi_budget,
 	};
 	struct idpf_tx_buf *tx_buf;
-	bool clean_complete = true;
 
 	if (descs_only) {
 		/* Bump ring index to mark as cleaned. */
 		tx_q->next_to_clean = end;
-		return true;
+		return;
 	}
 
 	tx_desc = &tx_q->flex_tx[ntc];
@@ -1899,53 +1672,24 @@ static bool idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
 			break;
 
 		eop_idx = tx_buf->rs_idx;
+		libeth_tx_complete(tx_buf, &cp);
 
-		if (descs_only) {
-			if (IDPF_TX_BUF_RSV_UNUSED(tx_q) < tx_buf->nr_frags) {
-				clean_complete = false;
-				goto tx_splitq_clean_out;
-			}
-
-			idpf_stash_flow_sch_buffers(tx_q, tx_buf);
+		/* unmap remaining buffers */
+		while (ntc != eop_idx) {
+			idpf_tx_splitq_clean_bump_ntc(tx_q, ntc,
+						      tx_desc, tx_buf);
 
-			while (ntc != eop_idx) {
-				idpf_tx_splitq_clean_bump_ntc(tx_q, ntc,
-							      tx_desc, tx_buf);
-				idpf_stash_flow_sch_buffers(tx_q, tx_buf);
-			}
-		} else {
+			/* unmap any remaining paged data */
 			libeth_tx_complete(tx_buf, &cp);
-
-			/* unmap remaining buffers */
-			while (ntc != eop_idx) {
-				idpf_tx_splitq_clean_bump_ntc(tx_q, ntc,
-							      tx_desc, tx_buf);
-
-				/* unmap any remaining paged data */
-				libeth_tx_complete(tx_buf, &cp);
-			}
 		}
 
 fetch_next_txq_desc:
 		idpf_tx_splitq_clean_bump_ntc(tx_q, ntc, tx_desc, tx_buf);
 	}
 
-tx_splitq_clean_out:
 	tx_q->next_to_clean = ntc;
-
-	return clean_complete;
 }
 
-#define idpf_tx_clean_buf_ring_bump_ntc(txq, ntc, buf)	\
-do {							\
-	(buf)++;					\
-	(ntc)++;					\
-	if (unlikely((ntc) == (txq)->desc_count)) {	\
-		buf = (txq)->tx_buf;			\
-		ntc = 0;				\
-	}						\
-} while (0)
-
 /**
  * idpf_tx_clean_bufs - clean flow scheduling TX queue buffers
  * @txq: queue to clean
@@ -1956,18 +1700,16 @@ do {							\
  * Clean all buffers associated with the packet starting at buf_id. Returns the
  * byte/segment count for the cleaned packet.
  */
-static bool idpf_tx_clean_bufs(struct idpf_tx_queue *txq, u16 buf_id,
+static void idpf_tx_clean_bufs(struct idpf_tx_queue *txq, u16 buf_id,
 			       struct libeth_sq_napi_stats *cleaned,
 			       int budget)
 {
-	u16 idx = buf_id & txq->compl_tag_bufid_m;
 	struct idpf_tx_buf *tx_buf = NULL;
 	struct libeth_cq_pp cp = {
 		.dev	= txq->dev,
 		.ss	= cleaned,
 		.napi	= budget,
 	};
-	u16 ntc, orig_idx = idx;
 
 	tx_buf = &txq->tx_buf[buf_id];
 	if (tx_buf->type == LIBETH_SQE_SKB) {
@@ -1985,67 +1727,6 @@ static bool idpf_tx_clean_bufs(struct idpf_tx_queue *txq, u16 buf_id,
 		libeth_tx_complete(tx_buf, &cp);
 		idpf_post_buf_refill(txq->refillq, buf_id);
 	}
-
-	return true;
-
-	tx_buf = &txq->tx_buf[idx];
-
-	if (unlikely(tx_buf->type <= LIBETH_SQE_CTX ||
-		     idpf_tx_buf_compl_tag(tx_buf) != buf_id))
-		return false;
-
-	if (tx_buf->type == LIBETH_SQE_SKB) {
-		if (skb_shinfo(tx_buf->skb)->tx_flags & SKBTX_IN_PROGRESS)
-			idpf_tx_read_tstamp(txq, tx_buf->skb);
-
-		libeth_tx_complete(tx_buf, &cp);
-	}
-
-	idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
-
-	while (idpf_tx_buf_compl_tag(tx_buf) == buf_id) {
-		libeth_tx_complete(tx_buf, &cp);
-		idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
-	}
-
-	/*
-	 * It's possible the packet we just cleaned was an out of order
-	 * completion, which means we can stash the buffers starting from
-	 * the original next_to_clean and reuse the descriptors. We need
-	 * to compare the descriptor ring next_to_clean packet's "first" buffer
-	 * to the "first" buffer of the packet we just cleaned to determine if
-	 * this is the case. Howevever, next_to_clean can point to either a
-	 * reserved buffer that corresponds to a context descriptor used for the
-	 * next_to_clean packet (TSO packet) or the "first" buffer (single
-	 * packet). The orig_idx from the packet we just cleaned will always
-	 * point to the "first" buffer. If next_to_clean points to a reserved
-	 * buffer, let's bump ntc once and start the comparison from there.
-	 */
-	ntc = txq->next_to_clean;
-	tx_buf = &txq->tx_buf[ntc];
-
-	if (tx_buf->type == LIBETH_SQE_CTX)
-		idpf_tx_clean_buf_ring_bump_ntc(txq, ntc, tx_buf);
-
-	/*
-	 * If ntc still points to a different "first" buffer, clean the
-	 * descriptor ring and stash all of the buffers for later cleaning. If
-	 * we cannot stash all of the buffers, next_to_clean will point to the
-	 * "first" buffer of the packet that could not be stashed and cleaning
-	 * will start there next time.
-	 */
-	if (unlikely(tx_buf != &txq->tx_buf[orig_idx] &&
-		     !idpf_tx_splitq_clean(txq, orig_idx, budget, cleaned,
-					   true)))
-		return true;
-
-	/*
-	 * Otherwise, update next_to_clean to reflect the cleaning that was
-	 * done above.
-	 */
-	txq->next_to_clean = idx;
-
-	return true;
 }
 
 /**
@@ -2064,22 +1745,18 @@ static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
 					 struct libeth_sq_napi_stats *cleaned,
 					 int budget)
 {
-	u16 compl_tag;
+	/*
+	 * RS completion contains queue head for queue based scheduling or
+	 * completion tag for flow based scheduling.
+	 */
+	u16 rs_compl_val = le16_to_cpu(desc->q_head_compl_tag.q_head);
 
 	if (!idpf_queue_has(FLOW_SCH_EN, txq)) {
-		u16 head = le16_to_cpu(desc->q_head_compl_tag.q_head);
-
-		idpf_tx_splitq_clean(txq, head, budget, cleaned, false);
+		idpf_tx_splitq_clean(txq, rs_compl_val, budget, cleaned, false);
 		return;
 	}
 
-	compl_tag = le16_to_cpu(desc->q_head_compl_tag.compl_tag);
-
-	/* If we didn't clean anything on the ring, this packet must be
-	 * in the hash table. Go clean it there.
-	 */
-	if (!idpf_tx_clean_bufs(txq, compl_tag, cleaned, budget))
-		idpf_tx_clean_stashed_bufs(txq, compl_tag, cleaned, budget);
+	idpf_tx_clean_bufs(txq, rs_compl_val, cleaned, budget);
 }
 
 /**
@@ -2196,8 +1873,7 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 		/* Update BQL */
 		nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
 
-		dont_wake = !complq_ok || IDPF_TX_BUF_RSV_LOW(tx_q) ||
-			    np->state != __IDPF_VPORT_UP ||
+		dont_wake = !complq_ok || np->state != __IDPF_VPORT_UP ||
 			    !netif_carrier_ok(tx_q->netdev);
 		/* Check if the TXQ needs to and can be restarted */
 		__netif_txq_completed_wake(nq, tx_q->cleaned_pkts, tx_q->cleaned_bytes,
@@ -2268,7 +1944,6 @@ static int idpf_txq_has_room(struct idpf_tx_queue *tx_q, u32 descs_needed,
 	if (IDPF_DESC_UNUSED(tx_q) < descs_needed ||
 	    IDPF_TX_COMPLQ_PENDING(tx_q->txq_grp) >
 		IDPF_TX_COMPLQ_OVERFLOW_THRESH(tx_q->txq_grp->complq) ||
-	    IDPF_TX_BUF_RSV_LOW(tx_q) ||
 	    IDPF_BUFS_UNUSED(tx_q->refillq) < bufs_needed)
 		return 0;
 	return 1;
@@ -2445,10 +2120,8 @@ static unsigned int idpf_tx_splitq_bump_ntu(struct idpf_tx_queue *txq, u16 ntu)
 {
 	ntu++;
 
-	if (ntu == txq->desc_count) {
+	if (ntu == txq->desc_count)
 		ntu = 0;
-		txq->compl_tag_cur_gen = IDPF_TX_ADJ_COMPL_TAG_GEN(txq);
-	}
 
 	return ntu;
 }
@@ -2587,8 +2260,6 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 			if (unlikely(++i == tx_q->desc_count)) {
 				tx_desc = &tx_q->flex_tx[0];
 				i = 0;
-				tx_q->compl_tag_cur_gen =
-					IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
 			} else {
 				tx_desc++;
 			}
@@ -2619,7 +2290,6 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 		if (unlikely(++i == tx_q->desc_count)) {
 			tx_desc = &tx_q->flex_tx[0];
 			i = 0;
-			tx_q->compl_tag_cur_gen = IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
 		} else {
 			tx_desc++;
 		}
@@ -3032,10 +2702,9 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 
 		tx_params.dtype = IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE;
 		tx_params.eop_cmd = IDPF_TXD_FLEX_FLOW_CMD_EOP;
-		/* Set the RE bit to catch any packets that may have not been
-		 * stashed during RS completion cleaning. MIN_GAP is set to
-		 * MIN_RING size to ensure it will be set at least once each
-		 * time around the ring.
+		/* Set the RE bit to periodically "clean" the descriptor ring.
+		 * MIN_GAP is set to MIN_RING size to ensure it will be set at
+		 * least once each time around the ring.
 		 */
 		if (idpf_tx_splitq_need_re(tx_q)) {
 			tx_params.eop_cmd |= IDPF_TXD_FLEX_FLOW_CMD_RE;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 2d4846793f5a..7ec35a6c5a56 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -121,10 +121,6 @@ do {								\
 	  0 : (refillq)->desc_count) + \
 	 (refillq)->next_to_use - (refillq)->next_to_clean)
 
-#define IDPF_TX_BUF_RSV_UNUSED(txq)	((txq)->stash->buf_stack.top)
-#define IDPF_TX_BUF_RSV_LOW(txq)	(IDPF_TX_BUF_RSV_UNUSED(txq) < \
-					 (txq)->desc_count >> 2)
-
 #define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)	((txcq)->desc_count >> 1)
 /* Determine the absolute number of completions pending, i.e. the number of
  * completions that are expected to arrive on the TX completion queue.
@@ -134,12 +130,6 @@ do {								\
 	0 : U32_MAX) + \
 	(txq)->num_completions_pending - (txq)->complq->num_completions)
 
-#define IDPF_TX_SPLITQ_COMPL_TAG_WIDTH	16
-/* Adjust the generation for the completion tag and wrap if necessary */
-#define IDPF_TX_ADJ_COMPL_TAG_GEN(txq) \
-	((++(txq)->compl_tag_cur_gen) >= (txq)->compl_tag_gen_max ? \
-	0 : (txq)->compl_tag_cur_gen)
-
 #define IDPF_TXBUF_NULL			U32_MAX
 
 #define IDPF_TXD_LAST_DESC_CMD (IDPF_TX_DESC_CMD_EOP | IDPF_TX_DESC_CMD_RS)
@@ -157,18 +147,6 @@ union idpf_tx_flex_desc {
 
 #define idpf_tx_buf libeth_sqe
 
-/**
- * struct idpf_buf_lifo - LIFO for managing OOO completions
- * @top: Used to know how many buffers are left
- * @size: Total size of LIFO
- * @bufs: Backing array
- */
-struct idpf_buf_lifo {
-	u16 top;
-	u16 size;
-	struct idpf_tx_stash **bufs;
-};
-
 /**
  * struct idpf_tx_offload_params - Offload parameters for a given packet
  * @tx_flags: Feature flags enabled for this packet
@@ -472,17 +450,6 @@ struct idpf_tx_queue_stats {
 #define IDPF_ITR_IDX_SPACING(spacing, dflt)	(spacing ? spacing : dflt)
 #define IDPF_DIM_DEFAULT_PROFILE_IX		1
 
-/**
- * struct idpf_txq_stash - Tx buffer stash for Flow-based scheduling mode
- * @buf_stack: Stack of empty buffers to store buffer info for out of order
- *	       buffer completions. See struct idpf_buf_lifo
- * @sched_buf_hash: Hash table to store buffers
- */
-struct idpf_txq_stash {
-	struct idpf_buf_lifo buf_stack;
-	DECLARE_HASHTABLE(sched_buf_hash, 12);
-} ____cacheline_aligned;
-
 /**
  * struct idpf_rx_queue - software structure representing a receive queue
  * @rx: universal receive descriptor array
@@ -627,11 +594,7 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  *		   only once at the end of the cleaning routine.
  * @clean_budget: singleq only, queue cleaning budget
  * @cleaned_pkts: Number of packets cleaned for the above said case
- * @stash: Tx buffer stash for Flow-based scheduling mode
  * @refillq: Pointer to refill queue
- * @compl_tag_bufid_m: Completion tag buffer id mask
- * @compl_tag_cur_gen: Used to keep track of current completion tag generation
- * @compl_tag_gen_max: To determine when compl_tag_cur_gen should be reset
  * @cached_tstamp_caps: Tx timestamp capabilities negotiated with the CP
  * @tstamp_task: Work that handles Tx timestamp read
  * @stats_sync: See struct u64_stats_sync
@@ -662,7 +625,6 @@ struct idpf_tx_queue {
 	u16 desc_count;
 
 	u16 tx_min_pkt_len;
-	u16 compl_tag_gen_s;
 
 	struct net_device *netdev;
 	__cacheline_group_end_aligned(read_mostly);
@@ -679,13 +641,8 @@ struct idpf_tx_queue {
 	};
 	u16 cleaned_pkts;
 
-	struct idpf_txq_stash *stash;
 	struct idpf_sw_queue *refillq;
 
-	u16 compl_tag_bufid_m;
-	u16 compl_tag_cur_gen;
-	u16 compl_tag_gen_max;
-
 	struct idpf_ptp_vport_tx_tstamp_caps *cached_tstamp_caps;
 	struct work_struct *tstamp_task;
 
@@ -703,7 +660,7 @@ struct idpf_tx_queue {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
-			    120 + sizeof(struct u64_stats_sync),
+			    104 + sizeof(struct u64_stats_sync),
 			    32);
 
 /**
@@ -914,7 +871,6 @@ struct idpf_rxq_group {
  * @vport: Vport back pointer
  * @num_txq: Number of TX queues associated
  * @txqs: Array of TX queue pointers
- * @stashes: array of OOO stashes for the queues
  * @complq: Associated completion queue pointer, split queue only
  * @num_completions_pending: Total number of completions pending for the
  *			     completion queue, acculumated for all TX queues
@@ -929,7 +885,6 @@ struct idpf_txq_group {
 
 	u16 num_txq;
 	struct idpf_tx_queue *txqs[IDPF_LARGE_MAX_Q];
-	struct idpf_txq_stash *stashes;
 
 	struct idpf_compl_queue *complq;
 
-- 
2.39.2


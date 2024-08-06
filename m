Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD3B94907C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 15:13:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25512405C7;
	Tue,  6 Aug 2024 13:13:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 28Wd9MchZTa2; Tue,  6 Aug 2024 13:13:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBF9F40A38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722950012;
	bh=TadwsPXmYdLDXUanGr6b9E4E4+lNc+MkYNvkDwZG5Tg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AbAAw0aXBbTxVJj0j27JcUnxp+b1LWp6dY7ZxDX82UqGgawzLO1kXGMu+gDO16NyF
	 CRQ4HCd7yEeYaqPiloEqKJDERbg6JMo7qZbnYFK19dl253HSF6b3i0wUuVYN3sYo7D
	 oSS4tXsr+R6SwjU+uPsXTcbktQI/gGSOpNtBx5jlBsZBJrKsHg9vFLf7f3Ljmh2cyY
	 7ZpcLE+xb5O3NTHsHiNu62znNd4JD+df25gQW+McjHo3TkzRZjBHO1pJ9DY4lNgIeI
	 j4CXaqlmTmCzJyEb8E+r2yGLOVx/oxDmVHN9Syf/CFx5r7RYCmnyL22vqz/7ifMPVJ
	 5uMeeCGzQDyRg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBF9F40A38;
	Tue,  6 Aug 2024 13:13:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81AD61BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E86E1403B2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bwe2bzbebGda for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 13:13:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DDCAE40201
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDCAE40201
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DDCAE40201
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:26 +0000 (UTC)
X-CSE-ConnectionGUID: cf4CSGOHSY6VCSchzPjRmQ==
X-CSE-MsgGUID: SQbQ1qXjTH+C0mYFQ1LVAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20842128"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="20842128"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:13:26 -0700
X-CSE-ConnectionGUID: Tpypg+iWQSuDKbxCOb8p3A==
X-CSE-MsgGUID: xQFUF5Q6SsiJPmfY8L/ZpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="56475817"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa009.fm.intel.com with ESMTP; 06 Aug 2024 06:13:23 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Aug 2024 15:12:37 +0200
Message-ID: <20240806131240.800259-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240806131240.800259-1-aleksander.lobakin@intel.com>
References: <20240806131240.800259-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722950006; x=1754486006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eaWZyTQ2XalqFwDbW9gpTfw9XamKnJ7bg8OGlpqr06w=;
 b=ED3+dkN4Gaa/i0MV734BMO2z9aFdfL0hR6JMv67yWgIhEUFxbs5+zFx8
 I6rdpwfPwhC+w38d6sKt89xiH72ptBwQqBFjuo0yOVds/Z6DDGH/pFzbb
 zs9D/aATlWczeBSY+0qXl4oElix9CfkESh0nVx0AL33msBJK75pUTe7UB
 MgpUIJHalpd9mZjOHLUsN3ghjVwq1e4mAdhQW6Jk4tniuyzLvHTDKOYu2
 xAjhaHslUcY/RGHBO/AAwHSKPJ9Uv2gHqLOeNQ3pO6O8XC89EUEOVaw8t
 FIMeE3XEXyiPKC35YSJNTGVLVabDEJvBl0ykxZbRT0JMYVVxf47cg/tM4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ED3+dkN4
Subject: [Intel-wired-lan] [PATCH iwl-next 6/9] idpf: refactor Tx completion
 routines
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joshua Hay <joshua.a.hay@intel.com>

Add a mechanism to guard against stashing partial packets into the hash
table to make the driver more robust, with more efficient decision
making when cleaning.

Don't stash partial packets. This can happen when an RE (Report Event)
completion is received in flow scheduling mode, or when an out of order
RS (Report Status) completion is received. The first buffer with the skb
is stashed, but some or all of its frags are not because the stack is
out of reserve buffers. This leaves the ring in a weird state since
the frags are still on the ring.

Use the field libeth_sqe::nr_frags to track the number of
fragments/tx_bufs representing the packet. The clean routines check to
make sure there are enough reserve buffers on the stack before stashing
any part of the packet. If there are not, next_to_clean is left pointing
to the first buffer of the packet that failed to be stashed. This leaves
the whole packet on the ring, and the next time around, cleaning will
start from this packet.

An RS completion is still expected for this packet in either case. So
instead of being cleaned from the hash table, it will be cleaned from
the ring directly. This should all still be fine since the DESC_UNUSED
and BUFS_UNUSED will reflect the state of the ring. If we ever fall
below the thresholds, the TxQ will still be stopped, giving the
completion queue time to catch up. This may lead to stopping the queue
more frequently, but it guarantees the Tx ring will always be in a good
state.

Also, always use the idpf_tx_splitq_clean function to clean descriptors,
i.e. use it from clean_buf_ring as well. This way we avoid duplicating
the logic and make sure we're using the same reserve buffers guard rail.

This does require a switch from the s16 next_to_clean overflow
descriptor ring wrap calculation to u16 and the normal ring size check.

Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   6 +-
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  24 +--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 163 +++++++++++-------
 3 files changed, 117 insertions(+), 76 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index fa87754c7340..2478f71adb95 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -127,7 +127,7 @@ do {								\
  */
 #define IDPF_TX_COMPLQ_PENDING(txq)	\
 	(((txq)->num_completions_pending >= (txq)->complq->num_completions ? \
-	0 : U64_MAX) + \
+	0 : U32_MAX) + \
 	(txq)->num_completions_pending - (txq)->complq->num_completions)
 
 #define IDPF_TX_SPLITQ_COMPL_TAG_WIDTH	16
@@ -787,7 +787,7 @@ struct idpf_compl_queue {
 	u32 next_to_use;
 	u32 next_to_clean;
 
-	u32 num_completions;
+	aligned_u64 num_completions;
 	__cacheline_group_end_aligned(read_write);
 
 	__cacheline_group_begin_aligned(cold);
@@ -919,7 +919,7 @@ struct idpf_txq_group {
 
 	struct idpf_compl_queue *complq;
 
-	u32 num_completions_pending;
+	aligned_u64 num_completions_pending;
 };
 
 static inline int idpf_q_vector_to_mem(const struct idpf_q_vector *q_vector)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 98f26a4b835f..947d3ff9677c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -239,15 +239,16 @@ static void idpf_tx_singleq_map(struct idpf_tx_queue *tx_q,
 								  offsets,
 								  max_data,
 								  td_tag);
-			tx_desc++;
-			i++;
-
-			if (i == tx_q->desc_count) {
+			if (unlikely(++i == tx_q->desc_count)) {
+				tx_buf = &tx_q->tx_buf[0];
 				tx_desc = &tx_q->base_tx[0];
 				i = 0;
+			} else {
+				tx_buf++;
+				tx_desc++;
 			}
 
-			tx_q->tx_buf[i].type = LIBETH_SQE_EMPTY;
+			tx_buf->type = LIBETH_SQE_EMPTY;
 
 			dma += max_data;
 			size -= max_data;
@@ -261,12 +262,14 @@ static void idpf_tx_singleq_map(struct idpf_tx_queue *tx_q,
 
 		tx_desc->qw1 = idpf_tx_singleq_build_ctob(td_cmd, offsets,
 							  size, td_tag);
-		tx_desc++;
-		i++;
 
-		if (i == tx_q->desc_count) {
+		if (unlikely(++i == tx_q->desc_count)) {
+			tx_buf = &tx_q->tx_buf[0];
 			tx_desc = &tx_q->base_tx[0];
 			i = 0;
+		} else {
+			tx_buf++;
+			tx_desc++;
 		}
 
 		size = skb_frag_size(frag);
@@ -274,8 +277,6 @@ static void idpf_tx_singleq_map(struct idpf_tx_queue *tx_q,
 
 		dma = skb_frag_dma_map(tx_q->dev, frag, 0, size,
 				       DMA_TO_DEVICE);
-
-		tx_buf = &tx_q->tx_buf[i];
 	}
 
 	skb_tx_timestamp(first->skb);
@@ -454,6 +455,9 @@ static bool idpf_tx_singleq_clean(struct idpf_tx_queue *tx_q, int napi_budget,
 			goto fetch_next_txq_desc;
 		}
 
+		if (unlikely(tx_buf->type != LIBETH_SQE_SKB))
+			break;
+
 		/* prevent any other reads prior to type */
 		smp_rmb();
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index de35736143de..fd44a65a0537 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -12,8 +12,8 @@ struct idpf_tx_stash {
 	struct libeth_sqe buf;
 };
 
-#define idpf_tx_buf_compl_tag(buf)	(*(int *)&(buf)->priv)
-LIBETH_SQE_CHECK_PRIV(int);
+#define idpf_tx_buf_compl_tag(buf)	(*(u32 *)&(buf)->priv)
+LIBETH_SQE_CHECK_PRIV(u32);
 
 static bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
 			       unsigned int count);
@@ -77,11 +77,13 @@ static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
 {
 	struct libeth_sq_napi_stats ss = { };
 	struct idpf_buf_lifo *buf_stack;
+	struct idpf_tx_stash *stash;
 	struct libeth_cq_pp cp = {
 		.dev	= txq->dev,
 		.ss	= &ss,
 	};
-	u16 i;
+	struct hlist_node *tmp;
+	u16 i, tag;
 
 	/* Buffers already cleared, nothing to do */
 	if (!txq->tx_buf)
@@ -101,6 +103,19 @@ static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
 	if (!buf_stack->bufs)
 		return;
 
+	/* If a Tx timeout occurred, there are potentially still bufs in the
+	 * hash table, free them here.
+	 */
+	hash_for_each_safe(txq->stash->sched_buf_hash, tag, tmp, stash,
+			   hlist) {
+		if (!stash)
+			continue;
+
+		libeth_tx_complete(&stash->buf, &cp);
+		hash_del(&stash->hlist);
+		idpf_buf_lifo_push(buf_stack, stash);
+	}
+
 	for (i = 0; i < buf_stack->size; i++)
 		kfree(buf_stack->bufs[i]);
 
@@ -117,6 +132,7 @@ static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
 static void idpf_tx_desc_rel(struct idpf_tx_queue *txq)
 {
 	idpf_tx_buf_rel_all(txq);
+	netdev_tx_reset_subqueue(txq->netdev, txq->idx);
 
 	if (!txq->desc_ring)
 		return;
@@ -1661,16 +1677,14 @@ static void idpf_tx_clean_stashed_bufs(struct idpf_tx_queue *txq,
 	/* Buffer completion */
 	hash_for_each_possible_safe(txq->stash->sched_buf_hash, stash, tmp_buf,
 				    hlist, compl_tag) {
-		if (unlikely(idpf_tx_buf_compl_tag(&stash->buf) !=
-			     (int)compl_tag))
+		if (unlikely(idpf_tx_buf_compl_tag(&stash->buf) != compl_tag))
 			continue;
 
+		hash_del(&stash->hlist);
 		libeth_tx_complete(&stash->buf, &cp);
 
 		/* Push shadow buf back onto stack */
 		idpf_buf_lifo_push(&txq->stash->buf_stack, stash);
-
-		hash_del(&stash->hlist);
 	}
 }
 
@@ -1701,6 +1715,7 @@ static int idpf_stash_flow_sch_buffers(struct idpf_tx_queue *txq,
 	stash->buf.bytes = tx_buf->bytes;
 	stash->buf.packets = tx_buf->packets;
 	stash->buf.type = tx_buf->type;
+	stash->buf.nr_frags = tx_buf->nr_frags;
 	dma_unmap_addr_set(&stash->buf, dma, dma_unmap_addr(tx_buf, dma));
 	dma_unmap_len_set(&stash->buf, len, dma_unmap_len(tx_buf, len));
 	idpf_tx_buf_compl_tag(&stash->buf) = idpf_tx_buf_compl_tag(tx_buf);
@@ -1716,9 +1731,8 @@ static int idpf_stash_flow_sch_buffers(struct idpf_tx_queue *txq,
 
 #define idpf_tx_splitq_clean_bump_ntc(txq, ntc, desc, buf)	\
 do {								\
-	(ntc)++;						\
-	if (unlikely(!(ntc))) {					\
-		ntc -= (txq)->desc_count;			\
+	if (unlikely(++(ntc) == (txq)->desc_count)) {		\
+		ntc = 0;					\
 		buf = (txq)->tx_buf;				\
 		desc = &(txq)->flex_tx[0];			\
 	} else {						\
@@ -1742,59 +1756,65 @@ do {								\
  * Separate packet completion events will be reported on the completion queue,
  * and the buffers will be cleaned separately. The stats are not updated from
  * this function when using flow-based scheduling.
+ *
+ * Furthermore, in flow scheduling mode, check to make sure there are enough
+ * reserve buffers to stash the packet. If there are not, return early, which
+ * will leave next_to_clean pointing to the packet that failed to be stashed.
+ * Return false in this scenario. Otherwise, return true.
  */
-static void idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
+static bool idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
 				 int napi_budget,
 				 struct idpf_cleaned_stats *cleaned,
 				 bool descs_only)
 {
 	union idpf_tx_flex_desc *next_pending_desc = NULL;
 	union idpf_tx_flex_desc *tx_desc;
-	s16 ntc = tx_q->next_to_clean;
+	u32 ntc = tx_q->next_to_clean;
 	struct libeth_cq_pp cp = {
 		.dev	= tx_q->dev,
 		.ss	= cleaned,
 		.napi	= napi_budget,
 	};
 	struct idpf_tx_buf *tx_buf;
+	bool clean_complete = true;
 
 	tx_desc = &tx_q->flex_tx[ntc];
 	next_pending_desc = &tx_q->flex_tx[end];
 	tx_buf = &tx_q->tx_buf[ntc];
-	ntc -= tx_q->desc_count;
 
 	while (tx_desc != next_pending_desc) {
-		union idpf_tx_flex_desc *eop_desc;
+		u32 eop_idx;
 
 		/* If this entry in the ring was used as a context descriptor,
-		 * it's corresponding entry in the buffer ring will have an
-		 * invalid completion tag since no buffer was used.  We can
-		 * skip this descriptor since there is no buffer to clean.
+		 * it's corresponding entry in the buffer ring is reserved. We
+		 * can skip this descriptor since there is no buffer to clean.
 		 */
 		if (tx_buf->type <= LIBETH_SQE_CTX)
 			goto fetch_next_txq_desc;
 
-		eop_desc = &tx_q->flex_tx[tx_buf->rs_idx];
+		if (unlikely(tx_buf->type != LIBETH_SQE_SKB))
+			break;
+
+		eop_idx = tx_buf->rs_idx;
 
 		if (descs_only) {
-			if (idpf_stash_flow_sch_buffers(tx_q, tx_buf))
+			if (IDPF_TX_BUF_RSV_UNUSED(tx_q) < tx_buf->nr_frags) {
+				clean_complete = false;
 				goto tx_splitq_clean_out;
+			}
+
+			idpf_stash_flow_sch_buffers(tx_q, tx_buf);
 
-			while (tx_desc != eop_desc) {
+			while (ntc != eop_idx) {
 				idpf_tx_splitq_clean_bump_ntc(tx_q, ntc,
 							      tx_desc, tx_buf);
-
-				if (dma_unmap_len(tx_buf, len)) {
-					if (idpf_stash_flow_sch_buffers(tx_q,
-									tx_buf))
-						goto tx_splitq_clean_out;
-				}
+				idpf_stash_flow_sch_buffers(tx_q, tx_buf);
 			}
 		} else {
 			libeth_tx_complete(tx_buf, &cp);
 
 			/* unmap remaining buffers */
-			while (tx_desc != eop_desc) {
+			while (ntc != eop_idx) {
 				idpf_tx_splitq_clean_bump_ntc(tx_q, ntc,
 							      tx_desc, tx_buf);
 
@@ -1808,8 +1828,9 @@ static void idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
 	}
 
 tx_splitq_clean_out:
-	ntc += tx_q->desc_count;
 	tx_q->next_to_clean = ntc;
+
+	return clean_complete;
 }
 
 #define idpf_tx_clean_buf_ring_bump_ntc(txq, ntc, buf)	\
@@ -1840,48 +1861,60 @@ static bool idpf_tx_clean_buf_ring(struct idpf_tx_queue *txq, u16 compl_tag,
 {
 	u16 idx = compl_tag & txq->compl_tag_bufid_m;
 	struct idpf_tx_buf *tx_buf = NULL;
-	u16 ntc = txq->next_to_clean;
 	struct libeth_cq_pp cp = {
 		.dev	= txq->dev,
 		.ss	= cleaned,
 		.napi	= budget,
 	};
-	u16 num_descs_cleaned = 0;
-	u16 orig_idx = idx;
+	u16 ntc, orig_idx = idx;
 
 	tx_buf = &txq->tx_buf[idx];
-	if (unlikely(tx_buf->type <= LIBETH_SQE_CTX))
+
+	if (unlikely(tx_buf->type <= LIBETH_SQE_CTX ||
+		     idpf_tx_buf_compl_tag(tx_buf) != compl_tag))
 		return false;
 
-	while (idpf_tx_buf_compl_tag(tx_buf) == (int)compl_tag) {
+	if (tx_buf->type == LIBETH_SQE_SKB)
 		libeth_tx_complete(tx_buf, &cp);
 
-		num_descs_cleaned++;
+	idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
+
+	while (idpf_tx_buf_compl_tag(tx_buf) == compl_tag) {
+		libeth_tx_complete(tx_buf, &cp);
 		idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
 	}
 
-	/* If we didn't clean anything on the ring for this completion, there's
-	 * nothing more to do.
-	 */
-	if (unlikely(!num_descs_cleaned))
-		return false;
-
-	/* Otherwise, if we did clean a packet on the ring directly, it's safe
-	 * to assume that the descriptors starting from the original
-	 * next_to_clean up until the previously cleaned packet can be reused.
-	 * Therefore, we will go back in the ring and stash any buffers still
-	 * in the ring into the hash table to be cleaned later.
+	/* It's possible the packet we just cleaned was an out of order
+	 * completion, which means we can stash the buffers starting from
+	 * the original next_to_clean and reuse the descriptors. We need
+	 * to compare the descriptor ring next_to_clean packet's "first" buffer
+	 * to the "first" buffer of the packet we just cleaned to determine if
+	 * this is the case. Howevever, next_to_clean can point to either a
+	 * reserved buffer that corresponds to a context descriptor used for the
+	 * next_to_clean packet (TSO packet) or the "first" buffer (single
+	 * packet). The orig_idx from the packet we just cleaned will always
+	 * point to the "first" buffer. If next_to_clean points to a reserved
+	 * buffer, let's bump ntc once and start the comparison from there.
 	 */
+	ntc = txq->next_to_clean;
 	tx_buf = &txq->tx_buf[ntc];
-	while (tx_buf != &txq->tx_buf[orig_idx]) {
-		idpf_stash_flow_sch_buffers(txq, tx_buf);
+
+	if (tx_buf->type == LIBETH_SQE_CTX)
 		idpf_tx_clean_buf_ring_bump_ntc(txq, ntc, tx_buf);
-	}
 
-	/* Finally, update next_to_clean to reflect the work that was just done
-	 * on the ring, if any. If the packet was only cleaned from the hash
-	 * table, the ring will not be impacted, therefore we should not touch
-	 * next_to_clean. The updated idx is used here
+	/* If ntc still points to a different "first" buffer, clean the
+	 * descriptor ring and stash all of the buffers for later cleaning. If
+	 * we cannot stash all of the buffers, next_to_clean will point to the
+	 * "first" buffer of the packet that could not be stashed and cleaning
+	 * will start there next time.
+	 */
+	if (unlikely(tx_buf != &txq->tx_buf[orig_idx] &&
+		     !idpf_tx_splitq_clean(txq, orig_idx, budget, cleaned,
+					   true)))
+		return true;
+
+	/* Otherwise, update next_to_clean to reflect the cleaning that was
+	 * done above.
 	 */
 	txq->next_to_clean = idx;
 
@@ -1909,7 +1942,8 @@ static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
 	if (!idpf_queue_has(FLOW_SCH_EN, txq)) {
 		u16 head = le16_to_cpu(desc->q_head_compl_tag.q_head);
 
-		return idpf_tx_splitq_clean(txq, head, budget, cleaned, false);
+		idpf_tx_splitq_clean(txq, head, budget, cleaned, false);
+		return;
 	}
 
 	compl_tag = le16_to_cpu(desc->q_head_compl_tag.compl_tag);
@@ -2337,6 +2371,7 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 	dma = dma_map_single(tx_q->dev, skb->data, size, DMA_TO_DEVICE);
 
 	tx_buf = first;
+	first->nr_frags = 0;
 
 	params->compl_tag =
 		(tx_q->compl_tag_cur_gen << tx_q->compl_tag_gen_s) | i;
@@ -2347,6 +2382,7 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 		if (dma_mapping_error(tx_q->dev, dma))
 			return idpf_tx_dma_map_error(tx_q, skb, first, i);
 
+		first->nr_frags++;
 		idpf_tx_buf_compl_tag(tx_buf) = params->compl_tag;
 		tx_buf->type = LIBETH_SQE_FRAG;
 
@@ -2402,14 +2438,15 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 			idpf_tx_splitq_build_desc(tx_desc, params, td_cmd,
 						  max_data);
 
-			tx_desc++;
-			i++;
-
-			if (i == tx_q->desc_count) {
+			if (unlikely(++i == tx_q->desc_count)) {
+				tx_buf = tx_q->tx_buf;
 				tx_desc = &tx_q->flex_tx[0];
 				i = 0;
 				tx_q->compl_tag_cur_gen =
 					IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
+			} else {
+				tx_buf++;
+				tx_desc++;
 			}
 
 			/* Since this packet has a buffer that is going to span
@@ -2422,7 +2459,7 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 			 * simply pass over these holes and finish cleaning the
 			 * rest of the packet.
 			 */
-			tx_q->tx_buf[i].type = LIBETH_SQE_EMPTY;
+			tx_buf->type = LIBETH_SQE_EMPTY;
 
 			/* Adjust the DMA offset and the remaining size of the
 			 * fragment.  On the first iteration of this loop,
@@ -2446,13 +2483,15 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 			break;
 
 		idpf_tx_splitq_build_desc(tx_desc, params, td_cmd, size);
-		tx_desc++;
-		i++;
 
-		if (i == tx_q->desc_count) {
+		if (unlikely(++i == tx_q->desc_count)) {
+			tx_buf = tx_q->tx_buf;
 			tx_desc = &tx_q->flex_tx[0];
 			i = 0;
 			tx_q->compl_tag_cur_gen = IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
+		} else {
+			tx_buf++;
+			tx_desc++;
 		}
 
 		size = skb_frag_size(frag);
@@ -2460,8 +2499,6 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 
 		dma = skb_frag_dma_map(tx_q->dev, frag, 0, size,
 				       DMA_TO_DEVICE);
-
-		tx_buf = &tx_q->tx_buf[i];
 	}
 
 	/* record SW timestamp if HW timestamp is not available */
-- 
2.45.2


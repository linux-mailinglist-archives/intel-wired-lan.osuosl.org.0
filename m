Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE5FB16417
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 18:08:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5D5F60D77;
	Wed, 30 Jul 2025 16:08:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WdbvJfsCH_uz; Wed, 30 Jul 2025 16:08:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28B1260B67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753891689;
	bh=Oy4/8Ye7iMyt1Jfp+uv/eefALgwS8LtaxyiZloZXDDc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HRFhKHhic8gXw6HmwrVaPC5dAdP8aZ8E7uFP19HOtv/RhiyCPISk2JVtvrZgquzcy
	 msVPHufuNPil7TjgHCNrXpAHLDp8hOqP2OjnKlKG4vnniGyEKSk/wmyIBL4a+RI5mE
	 OFWUZ95U7rwKqURePxhd3Zlbm9rnA3t8c9s5AiaUYDQ8wDHMMhopD/GS380tgn5diL
	 0KpB5dq1T+dhonrL7l8xm/8OUsZFklIUoE31I2ZVulYEBEQg40nPwofjo8/RneTqXk
	 kGHuwOZZb5/MB5veP2EVMkVLr0wcIT+Mxb2PnnstwIED5O0hg1IBcB671IjsN6HXc7
	 7TaxN2yIBFwEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28B1260B67;
	Wed, 30 Jul 2025 16:08:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EDCD013D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:08:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB1C660AA5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:08:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cg6S4dEJ7k1c for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 16:08:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AE02C607EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE02C607EA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE02C607EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 16:08:05 +0000 (UTC)
X-CSE-ConnectionGUID: ALrhcT/NRz6Krt0pyd7bPw==
X-CSE-MsgGUID: ip7+d5YiSbm880lle1v0cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="67278781"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="67278781"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 09:08:05 -0700
X-CSE-ConnectionGUID: ftS8O6gyT5WCKB5NcSOQkg==
X-CSE-MsgGUID: ac7bghIiQp6sGPrVMXYIbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="163812879"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 30 Jul 2025 09:07:59 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>, Luigi Rizzo <lrizzo@google.com>,
 Brian Vazquez <brianvv@google.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 30 Jul 2025 18:07:03 +0200
Message-ID: <20250730160717.28976-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250730160717.28976-1-aleksander.lobakin@intel.com>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753891686; x=1785427686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pd/xubed9OtTec+04P6N76v0lNbWDmHHMsi+GqXeY5I=;
 b=O/JLxQP/xRkwj4SSxs1WjTZyXNK26BzrsB369GdOa/NxhIM6XC+8gsp+
 G+P2HRF1MpQ2GV1Xkwm8N04dm5esSMa1p867i1s5rbrcqJRdQObAphSn4
 iNv7FlYSN49xQVM0lWa+sdDXRBLe8BaRGFUYTpNOTRn3tXCaMoxqbT34t
 LdiCILcfSIW79zmqxjh4vql5jLmeoBN8rpk4q+rRyDTvX/KB55Moc3GQc
 +MLMmzZbl3HnyTwBzRY7IWplI788rnkjD9cDtkAU7yvXRy218e9SjNDZ7
 vVjnxVH2t7BMfkImvmee9K+MnSRVemssYiMRKtVJW5NlgWLrF71Ov7lQ9
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O/JLxQP/
Subject: [Intel-wired-lan] [PATCH iwl-next v3 04/18] idpf: replace flow
 scheduling buffer ring with buffer pool
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

From: Joshua Hay <joshua.a.hay@intel.com>

Replace the TxQ buffer ring with one large pool/array of buffers (only
for flow scheduling). This eliminates the tag generation and makes it
impossible for a tag to be associated with more than one packet.

The completion tag passed to HW through the descriptor is the index into
the array. That same completion tag is posted back to the driver in the
completion descriptor, and used to index into the array to quickly
retrieve the buffer during cleaning.  In this way, the tags are treated
as a fix sized resource. If all tags are in use, no more packets can be
sent on that particular queue (until some are freed up). The tag pool
size is 64K since the completion tag width is 16 bits.

For each packet, the driver pulls a free tag from the refillq to get the
next free buffer index. When cleaning is complete, the tag is posted
back to the refillq. A multi-frag packet spans multiple buffers in the
driver, therefore it uses multiple buffer indexes/tags from the pool.
Each frag pulls from the refillq to get the next free buffer index.
These are tracked in a next_buf field that replaces the completion tag
field in the buffer struct. This chains the buffers together so that the
packet can be cleaned from the starting completion tag taken from the
completion descriptor, then from the next_buf field for each subsequent
buffer.

In case of a dma_mapping_error occurs or the refillq runs out of free
buf_ids, the packet will execute the rollback error path. This unmaps
any buffers previously mapped for the packet. Since several free
buf_ids could have already been pulled from the refillq, we need to
restore its original state as well. Otherwise, the buf_ids/tags
will be leaked and not used again until the queue is reallocated.

Descriptor completions only advance the descriptor ring index to "clean"
the descriptors. The packet completions only clean the buffers
associated with the given packet completion tag and do not update the
descriptor ring index.

When operating in queue based scheduling mode, the array still acts as a
ring and will only have TxQ descriptor count entries. The tx_bufs are
still associated 1:1 with the descriptor ring entries and we can use the
conventional indexing mechanisms.

Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
Signed-off-by: Luigi Rizzo <lrizzo@google.com>
Signed-off-by: Brian Vazquez <brianvv@google.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  10 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 203 +++++++++-----------
 2 files changed, 102 insertions(+), 111 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index a7632d845a2a..d86246c320c8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -137,6 +137,8 @@ do {								\
 	((++(txq)->compl_tag_cur_gen) >= (txq)->compl_tag_gen_max ? \
 	0 : (txq)->compl_tag_cur_gen)
 
+#define IDPF_TXBUF_NULL			U32_MAX
+
 #define IDPF_TXD_LAST_DESC_CMD (IDPF_TX_DESC_CMD_EOP | IDPF_TX_DESC_CMD_RS)
 
 #define IDPF_TX_FLAGS_TSO		BIT(0)
@@ -197,6 +199,8 @@ struct idpf_tx_offload_params {
  * @td_tag: Descriptor tunneling tag
  * @offload: Offload parameters
  * @prev_ntu: stored TxQ next_to_use in case of rollback
+ * @prev_refill_ntc: stored refillq next_to_clean in case of packet rollback
+ * @prev_refill_gen: stored refillq generation bit in case of packet rollback
  */
 struct idpf_tx_splitq_params {
 	enum idpf_tx_desc_dtype_value dtype;
@@ -209,6 +213,8 @@ struct idpf_tx_splitq_params {
 	struct idpf_tx_offload_params offload;
 
 	u16 prev_ntu;
+	u16 prev_refill_ntc;
+	bool prev_refill_gen;
 };
 
 enum idpf_tx_ctx_desc_eipt_offload {
@@ -638,6 +644,7 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
  * @q_vector: Backreference to associated vector
+ * @buf_pool_size: Total number of idpf_tx_buf
  */
 struct idpf_tx_queue {
 	__cacheline_group_begin_aligned(read_mostly);
@@ -696,11 +703,12 @@ struct idpf_tx_queue {
 	dma_addr_t dma;
 
 	struct idpf_q_vector *q_vector;
+	u32 buf_pool_size;
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
 			    120 + sizeof(struct u64_stats_sync),
-			    24);
+			    32);
 
 /**
  * struct idpf_buf_queue - software structure representing a buffer queue
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 99d9081beef0..97bafd83ca5e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -13,6 +13,7 @@ struct idpf_tx_stash {
 	struct libeth_sqe buf;
 };
 
+#define idpf_tx_buf_next(buf)		(*(u32 *)&(buf)->priv)
 #define idpf_tx_buf_compl_tag(buf)	(*(u32 *)&(buf)->priv)
 LIBETH_SQE_CHECK_PRIV(u32);
 
@@ -91,7 +92,7 @@ static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
 		return;
 
 	/* Free all the Tx buffer sk_buffs */
-	for (i = 0; i < txq->desc_count; i++)
+	for (i = 0; i < txq->buf_pool_size; i++)
 		libeth_tx_complete(&txq->tx_buf[i], &cp);
 
 	kfree(txq->tx_buf);
@@ -199,14 +200,16 @@ static void idpf_tx_desc_rel_all(struct idpf_vport *vport)
 static int idpf_tx_buf_alloc_all(struct idpf_tx_queue *tx_q)
 {
 	struct idpf_buf_lifo *buf_stack;
-	int buf_size;
 	int i;
 
 	/* Allocate book keeping buffers only. Buffers to be supplied to HW
 	 * are allocated by kernel network stack and received as part of skb
 	 */
-	buf_size = sizeof(struct idpf_tx_buf) * tx_q->desc_count;
-	tx_q->tx_buf = kzalloc(buf_size, GFP_KERNEL);
+	if (idpf_queue_has(FLOW_SCH_EN, tx_q))
+		tx_q->buf_pool_size = U16_MAX;
+	else
+		tx_q->buf_pool_size = tx_q->desc_count;
+	tx_q->tx_buf = kcalloc(tx_q->buf_pool_size, sizeof(*tx_q->tx_buf), GFP_KERNEL);
 	if (!tx_q->tx_buf)
 		return -ENOMEM;
 
@@ -275,7 +278,7 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
 		return 0;
 
 	refillq = tx_q->refillq;
-	refillq->desc_count = tx_q->desc_count;
+	refillq->desc_count = tx_q->buf_pool_size;
 	refillq->ring = kcalloc(refillq->desc_count, sizeof(u32),
 				GFP_KERNEL);
 	if (!refillq->ring) {
@@ -1869,6 +1872,12 @@ static bool idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
 	struct idpf_tx_buf *tx_buf;
 	bool clean_complete = true;
 
+	if (descs_only) {
+		/* Bump ring index to mark as cleaned. */
+		tx_q->next_to_clean = end;
+		return true;
+	}
+
 	tx_desc = &tx_q->flex_tx[ntc];
 	next_pending_desc = &tx_q->flex_tx[end];
 	tx_buf = &tx_q->tx_buf[ntc];
@@ -1935,87 +1944,43 @@ do {							\
 } while (0)
 
 /**
- * idpf_tx_clean_buf_ring - clean flow scheduling TX queue buffers
+ * idpf_tx_clean_bufs - clean flow scheduling TX queue buffers
  * @txq: queue to clean
- * @compl_tag: completion tag of packet to clean (from completion descriptor)
+ * @buf_id: packet's starting buffer ID, from completion descriptor
  * @cleaned: pointer to stats struct to track cleaned packets/bytes
  * @budget: Used to determine if we are in netpoll
  *
- * Cleans all buffers associated with the input completion tag either from the
- * TX buffer ring or from the hash table if the buffers were previously
- * stashed. Returns the byte/segment count for the cleaned packet associated
- * this completion tag.
+ * Clean all buffers associated with the packet starting at buf_id. Returns the
+ * byte/segment count for the cleaned packet.
  */
-static bool idpf_tx_clean_buf_ring(struct idpf_tx_queue *txq, u16 compl_tag,
-				   struct libeth_sq_napi_stats *cleaned,
-				   int budget)
+static bool idpf_tx_clean_bufs(struct idpf_tx_queue *txq, u32 buf_id,
+			       struct libeth_sq_napi_stats *cleaned,
+			       int budget)
 {
-	u16 idx = compl_tag & txq->compl_tag_bufid_m;
 	struct idpf_tx_buf *tx_buf = NULL;
 	struct libeth_cq_pp cp = {
 		.dev	= txq->dev,
 		.ss	= cleaned,
 		.napi	= budget,
 	};
-	u16 ntc, orig_idx = idx;
-
-	tx_buf = &txq->tx_buf[idx];
-
-	if (unlikely(tx_buf->type <= LIBETH_SQE_CTX ||
-		     idpf_tx_buf_compl_tag(tx_buf) != compl_tag))
-		return false;
 
+	tx_buf = &txq->tx_buf[buf_id];
 	if (tx_buf->type == LIBETH_SQE_SKB) {
 		if (skb_shinfo(tx_buf->skb)->tx_flags & SKBTX_IN_PROGRESS)
 			idpf_tx_read_tstamp(txq, tx_buf->skb);
 
 		libeth_tx_complete(tx_buf, &cp);
+		idpf_post_buf_refill(txq->refillq, buf_id);
 	}
 
-	idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
+	while (idpf_tx_buf_next(tx_buf) != IDPF_TXBUF_NULL) {
+		u16 buf_id = idpf_tx_buf_next(tx_buf);
 
-	while (idpf_tx_buf_compl_tag(tx_buf) == compl_tag) {
+		tx_buf = &txq->tx_buf[buf_id];
 		libeth_tx_complete(tx_buf, &cp);
-		idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
+		idpf_post_buf_refill(txq->refillq, buf_id);
 	}
 
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
 	return true;
 }
 
@@ -2046,12 +2011,10 @@ static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
 
 	compl_tag = le16_to_cpu(desc->q_head_compl_tag.compl_tag);
 
-	idpf_post_buf_refill(txq->refillq, compl_tag);
-
 	/* If we didn't clean anything on the ring, this packet must be
 	 * in the hash table. Go clean it there.
 	 */
-	if (!idpf_tx_clean_buf_ring(txq, compl_tag, cleaned, budget))
+	if (!idpf_tx_clean_bufs(txq, compl_tag, cleaned, budget))
 		idpf_tx_clean_stashed_bufs(txq, compl_tag, cleaned, budget);
 }
 
@@ -2364,7 +2327,7 @@ static unsigned int idpf_tx_splitq_bump_ntu(struct idpf_tx_queue *txq, u16 ntu)
  * Return: true if a buffer ID was found, false if not
  */
 static bool idpf_tx_get_free_buf_id(struct idpf_sw_queue *refillq,
-				    u16 *buf_id)
+				    u32 *buf_id)
 {
 	u16 ntc = refillq->next_to_clean;
 	u32 refill_desc;
@@ -2397,25 +2360,34 @@ static void idpf_tx_splitq_pkt_err_unmap(struct idpf_tx_queue *txq,
 					 struct idpf_tx_splitq_params *params,
 					 struct idpf_tx_buf *first)
 {
+	struct idpf_sw_queue *refillq = txq->refillq;
 	struct libeth_sq_napi_stats ss = { };
 	struct idpf_tx_buf *tx_buf = first;
 	struct libeth_cq_pp cp = {
 		.dev    = txq->dev,
 		.ss     = &ss,
 	};
-	u32 idx = 0;
 
 	u64_stats_update_begin(&txq->stats_sync);
 	u64_stats_inc(&txq->q_stats.dma_map_errs);
 	u64_stats_update_end(&txq->stats_sync);
 
-	do {
+	libeth_tx_complete(tx_buf, &cp);
+	while (idpf_tx_buf_next(tx_buf) != IDPF_TXBUF_NULL) {
+		tx_buf = &txq->tx_buf[idpf_tx_buf_next(tx_buf)];
 		libeth_tx_complete(tx_buf, &cp);
-		idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
-	} while (idpf_tx_buf_compl_tag(tx_buf) == params->compl_tag);
+	}
 
 	/* Update tail in case netdev_xmit_more was previously true. */
 	idpf_tx_buf_hw_update(txq, params->prev_ntu, false);
+
+	if (!refillq)
+		return;
+
+	/* Restore refillq state to avoid leaking tags. */
+	if (params->prev_refill_gen != idpf_queue_has(RFL_GEN_CHK, refillq))
+		idpf_queue_change(RFL_GEN_CHK, refillq);
+	refillq->next_to_clean = params->prev_refill_ntc;
 }
 
 /**
@@ -2439,6 +2411,7 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 	struct netdev_queue *nq;
 	struct sk_buff *skb;
 	skb_frag_t *frag;
+	u32 next_buf_id;
 	u16 td_cmd = 0;
 	dma_addr_t dma;
 
@@ -2456,18 +2429,16 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 	tx_buf = first;
 	first->nr_frags = 0;
 
-	params->compl_tag =
-		(tx_q->compl_tag_cur_gen << tx_q->compl_tag_gen_s) | i;
-
 	for (frag = &skb_shinfo(skb)->frags[0];; frag++) {
 		unsigned int max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
 
-		if (unlikely(dma_mapping_error(tx_q->dev, dma)))
+		if (unlikely(dma_mapping_error(tx_q->dev, dma))) {
+			idpf_tx_buf_next(tx_buf) = IDPF_TXBUF_NULL;
 			return idpf_tx_splitq_pkt_err_unmap(tx_q, params,
 							    first);
+		}
 
 		first->nr_frags++;
-		idpf_tx_buf_compl_tag(tx_buf) = params->compl_tag;
 		tx_buf->type = LIBETH_SQE_FRAG;
 
 		/* record length, and DMA address */
@@ -2523,29 +2494,14 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 						  max_data);
 
 			if (unlikely(++i == tx_q->desc_count)) {
-				tx_buf = tx_q->tx_buf;
 				tx_desc = &tx_q->flex_tx[0];
 				i = 0;
 				tx_q->compl_tag_cur_gen =
 					IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
 			} else {
-				tx_buf++;
 				tx_desc++;
 			}
 
-			/* Since this packet has a buffer that is going to span
-			 * multiple descriptors, it's going to leave holes in
-			 * to the TX buffer ring. To ensure these holes do not
-			 * cause issues in the cleaning routines, we will clear
-			 * them of any stale data and assign them the same
-			 * completion tag as the current packet. Then when the
-			 * packet is being cleaned, the cleaning routines will
-			 * simply pass over these holes and finish cleaning the
-			 * rest of the packet.
-			 */
-			tx_buf->type = LIBETH_SQE_EMPTY;
-			idpf_tx_buf_compl_tag(tx_buf) = params->compl_tag;
-
 			/* Adjust the DMA offset and the remaining size of the
 			 * fragment.  On the first iteration of this loop,
 			 * max_data will be >= 12K and <= 16K-1.  On any
@@ -2570,15 +2526,26 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 		idpf_tx_splitq_build_desc(tx_desc, params, td_cmd, size);
 
 		if (unlikely(++i == tx_q->desc_count)) {
-			tx_buf = tx_q->tx_buf;
 			tx_desc = &tx_q->flex_tx[0];
 			i = 0;
 			tx_q->compl_tag_cur_gen = IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
 		} else {
-			tx_buf++;
 			tx_desc++;
 		}
 
+		if (idpf_queue_has(FLOW_SCH_EN, tx_q)) {
+			if (unlikely(!idpf_tx_get_free_buf_id(tx_q->refillq,
+							      &next_buf_id))) {
+				idpf_tx_buf_next(tx_buf) = IDPF_TXBUF_NULL;
+				return idpf_tx_splitq_pkt_err_unmap(tx_q, params,
+								    first);
+			}
+		} else {
+			next_buf_id = i;
+		}
+		idpf_tx_buf_next(tx_buf) = next_buf_id;
+		tx_buf = &tx_q->tx_buf[next_buf_id];
+
 		size = skb_frag_size(frag);
 		data_len -= size;
 
@@ -2593,6 +2560,7 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 
 	/* write last descriptor with RS and EOP bits */
 	first->rs_idx = i;
+	idpf_tx_buf_next(tx_buf) = IDPF_TXBUF_NULL;
 	td_cmd |= params->eop_cmd;
 	idpf_tx_splitq_build_desc(tx_desc, params, td_cmd, size);
 	i = idpf_tx_splitq_bump_ntu(tx_q, i);
@@ -2801,8 +2769,6 @@ idpf_tx_splitq_get_ctx_desc(struct idpf_tx_queue *txq)
 	union idpf_flex_tx_ctx_desc *desc;
 	int i = txq->next_to_use;
 
-	txq->tx_buf[i].type = LIBETH_SQE_CTX;
-
 	/* grab the next descriptor */
 	desc = &txq->flex_ctx[i];
 	txq->next_to_use = idpf_tx_splitq_bump_ntu(txq, i);
@@ -2927,6 +2893,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 	struct idpf_tx_buf *first;
 	unsigned int count;
 	int tso, idx;
+	u32 buf_id;
 
 	count = idpf_tx_desc_count_required(tx_q, skb);
 	if (unlikely(!count))
@@ -2970,26 +2937,28 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 		idpf_tx_set_tstamp_desc(ctx_desc, idx);
 	}
 
-	/* record the location of the first descriptor for this packet */
-	first = &tx_q->tx_buf[tx_q->next_to_use];
-	first->skb = skb;
+	if (idpf_queue_has(FLOW_SCH_EN, tx_q)) {
+		struct idpf_sw_queue *refillq = tx_q->refillq;
 
-	if (tso) {
-		first->packets = tx_params.offload.tso_segs;
-		first->bytes = skb->len +
-			((first->packets - 1) * tx_params.offload.tso_hdr_len);
-	} else {
-		first->packets = 1;
-		first->bytes = max_t(unsigned int, skb->len, ETH_ZLEN);
-	}
+		/* Save refillq state in case of a packet rollback.  Otherwise,
+		 * the tags will be leaked since they will be popped from the
+		 * refillq but never reposted during cleaning.
+		 */
+		tx_params.prev_refill_gen =
+			idpf_queue_has(RFL_GEN_CHK, refillq);
+		tx_params.prev_refill_ntc = refillq->next_to_clean;
 
-	if (idpf_queue_has(FLOW_SCH_EN, tx_q)) {
 		if (unlikely(!idpf_tx_get_free_buf_id(tx_q->refillq,
-						      &tx_params.compl_tag))) {
-			u64_stats_update_begin(&tx_q->stats_sync);
-			u64_stats_inc(&tx_q->q_stats.q_busy);
-			u64_stats_update_end(&tx_q->stats_sync);
+						      &buf_id))) {
+			if (tx_params.prev_refill_gen !=
+			    idpf_queue_has(RFL_GEN_CHK, refillq))
+				idpf_queue_change(RFL_GEN_CHK, refillq);
+			refillq->next_to_clean = tx_params.prev_refill_ntc;
+
+			tx_q->next_to_use = tx_params.prev_ntu;
+			return idpf_tx_drop_skb(tx_q, skb);
 		}
+		tx_params.compl_tag = buf_id;
 
 		tx_params.dtype = IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE;
 		tx_params.eop_cmd = IDPF_TXD_FLEX_FLOW_CMD_EOP;
@@ -3008,6 +2977,8 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 			tx_params.offload.td_cmd |= IDPF_TXD_FLEX_FLOW_CMD_CS_EN;
 
 	} else {
+		buf_id = tx_q->next_to_use;
+
 		tx_params.dtype = IDPF_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2;
 		tx_params.eop_cmd = IDPF_TXD_LAST_DESC_CMD;
 
@@ -3015,6 +2986,18 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 			tx_params.offload.td_cmd |= IDPF_TX_FLEX_DESC_CMD_CS_EN;
 	}
 
+	first = &tx_q->tx_buf[buf_id];
+	first->skb = skb;
+
+	if (tso) {
+		first->packets = tx_params.offload.tso_segs;
+		first->bytes = skb->len +
+			((first->packets - 1) * tx_params.offload.tso_hdr_len);
+	} else {
+		first->packets = 1;
+		first->bytes = max_t(unsigned int, skb->len, ETH_ZLEN);
+	}
+
 	idpf_tx_splitq_map(tx_q, &tx_params, first);
 
 	return NETDEV_TX_OK;
-- 
2.50.1


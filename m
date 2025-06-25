Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4557CAE891C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 18:04:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2D2961574;
	Wed, 25 Jun 2025 16:04:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b1xYGGgDhywm; Wed, 25 Jun 2025 16:04:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CF4561573
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750867484;
	bh=KOj65Z55rYL0IIUplUcG8wG5i7etAG9nknNeZZWCsow=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SJem6sfmpR/mWQdr5Nw8YbtFF3+kCC9l8Cgxzpq2FuXDkqaVl0ZrlevjVw2c/Yory
	 T4Ns+IGPjS4tcfTe7aSTHzvgPo9/zS4v26JP8O/b2qo+l+lN4e0/LRkQDdHrnk3Q26
	 bRvJnzwmX/hm9UYSwjXjoCJXSMCpQtAsnJNFxF0Trly2icmEtoy1Sp5BJwyCr8iMgX
	 ps7cemg7YCekzA1Ej5org9fbQnP78EBozTo/ZUQbNdnCTQ5CYYA1EQEYSIlQZmeiP4
	 tm7PBceOI8l+lg2A94ObZ1549SgC8QgAucv+EHpUxKgx2t69eDCbIw2jc9j1W//qEp
	 OMnFB78FmQG3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CF4561573;
	Wed, 25 Jun 2025 16:04:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DF7C843F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C61FD41E90
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:04:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lYAmfNkWNLrp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 16:04:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C296841EA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C296841EA6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C296841EA6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:04:41 +0000 (UTC)
X-CSE-ConnectionGUID: LWcaSFuPR4+WHTx/aIe2QA==
X-CSE-MsgGUID: 6zelKAP0QziQ6adFkKu5Xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="70714947"
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="70714947"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 09:04:41 -0700
X-CSE-ConnectionGUID: B8+tJBpVRTy9zFI5wggy1w==
X-CSE-MsgGUID: /em1Xq0XQ52ByE3NaEOmSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="157752621"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by fmviesa004.fm.intel.com with ESMTP; 25 Jun 2025 09:04:41 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 Luigi Rizzo <lrizzo@google.com>, Brian Vazquez <brianvv@google.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Wed, 25 Jun 2025 09:11:54 -0700
Message-Id: <20250625161156.338777-4-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20250625161156.338777-1-joshua.a.hay@intel.com>
References: <20250625161156.338777-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750867481; x=1782403481;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0J900oI/ulFUITSj4phLsecRvPs87dvoaFWBRn+9tZo=;
 b=Avvvl5fsbpKp7pGa4ZebLvAxNkqN8tF74llNpgQgcL4iJfT2DLpgbeir
 LzSMXRYuscCZXCIBq3Phw3wSrvuBuuKMyaNqJZ2cp5UfKQjk91qrKoewQ
 GDNqxbjc3NgBtv7DZ+WgkRDKh0a2+N/ePdvBQl8ww0VFi+gn+RNP30vi7
 IGiROoV73Q42QcCAX5NYEm9NXC9/8kLiwqXfGecy42uWxWcuCu0ITEBDp
 dpwmTAfll/RvO2xj9sA2dWKgvJi/ap5hnU33ALJJd3b4nn2TJ9wV67LeP
 cbD7sV6mALj+kXCetT83E59UZMrhrc4cLJugB0AFNISv+gfpangBiZu7t
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Avvvl5fs
Subject: [Intel-wired-lan] [PATCH net 3/5] idpf: replace flow scheduling
 buffer ring with buffer pool
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

Replace the TxQ buffer ring with one large pool/array of buffers (only
for flow scheduling). The completion tag passed to HW through the
descriptor is the index into this array. That same completion tag is
posted back to the driver in the completion descriptor, and used to
index into the array to quickly retrieve the buffer during cleaning.  In
this way, the tags are treated as a fix sized resource. If all tags are
in use, no more packets can be sent on that particular queue (until some
are freed up). The tag pool size is 64K since the completion tag width
is 16 bits.

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
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |   2 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 135 ++++++++++--------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  10 +-
 3 files changed, 85 insertions(+), 62 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 993c354aa27a..4c1d7235a073 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -220,7 +220,7 @@ static void idpf_tx_singleq_map(struct idpf_tx_queue *tx_q,
 		unsigned int max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
 
 		if (dma_mapping_error(tx_q->dev, dma))
-			return idpf_tx_dma_map_error(tx_q, skb, first, i);
+			return idpf_tx_dma_map_unwind(tx_q, skb, first, i);
 
 		/* record length, and DMA address */
 		dma_unmap_len_set(tx_buf, len, size);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index cdecf558d7ec..25eea632a966 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -13,6 +13,7 @@ struct idpf_tx_stash {
 	struct libeth_sqe buf;
 };
 
+#define idpf_tx_buf_next(buf)  (*(u32 *)&(buf)->priv)
 #define idpf_tx_buf_compl_tag(buf)	(*(u32 *)&(buf)->priv)
 LIBETH_SQE_CHECK_PRIV(u32);
 
@@ -91,7 +92,7 @@ static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
 		return;
 
 	/* Free all the Tx buffer sk_buffs */
-	for (i = 0; i < txq->desc_count; i++)
+	for (i = 0; i < txq->buf_pool_size; i++)
 		libeth_tx_complete(&txq->tx_buf[i], &cp);
 
 	kfree(txq->tx_buf);
@@ -205,7 +206,11 @@ static int idpf_tx_buf_alloc_all(struct idpf_tx_queue *tx_q)
 	/* Allocate book keeping buffers only. Buffers to be supplied to HW
 	 * are allocated by kernel network stack and received as part of skb
 	 */
-	buf_size = sizeof(struct idpf_tx_buf) * tx_q->desc_count;
+	if (idpf_queue_has(FLOW_SCH_EN, tx_q))
+		tx_q->buf_pool_size = U16_MAX;
+	else
+		tx_q->buf_pool_size = tx_q->desc_count;
+	buf_size = sizeof(struct idpf_tx_buf) * tx_q->buf_pool_size;
 	tx_q->tx_buf = kzalloc(buf_size, GFP_KERNEL);
 	if (!tx_q->tx_buf)
 		return -ENOMEM;
@@ -273,7 +278,7 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
 	if (idpf_queue_has(FLOW_SCH_EN, tx_q)) {
 		struct idpf_sw_queue *refillq = tx_q->refillq;
 
-		refillq->desc_count = tx_q->desc_count;
+		refillq->desc_count = tx_q->buf_pool_size;
 
 		refillq->ring = kcalloc(refillq->desc_count, sizeof(u32),
 					GFP_KERNEL);
@@ -1870,6 +1875,12 @@ static bool idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
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
@@ -1936,22 +1947,20 @@ do {							\
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
+static bool idpf_tx_clean_bufs(struct idpf_tx_queue *txq, u16 buf_id,
+			       struct libeth_sq_napi_stats *cleaned,
+			       int budget)
 {
-	u16 idx = compl_tag & txq->compl_tag_bufid_m;
+	u16 idx = buf_id & txq->compl_tag_bufid_m;
 	struct idpf_tx_buf *tx_buf = NULL;
 	struct libeth_cq_pp cp = {
 		.dev	= txq->dev,
@@ -1960,10 +1969,29 @@ static bool idpf_tx_clean_buf_ring(struct idpf_tx_queue *txq, u16 compl_tag,
 	};
 	u16 ntc, orig_idx = idx;
 
+	tx_buf = &txq->tx_buf[buf_id];
+	if (tx_buf->type == LIBETH_SQE_SKB) {
+		if (skb_shinfo(tx_buf->skb)->tx_flags & SKBTX_IN_PROGRESS)
+			idpf_tx_read_tstamp(txq, tx_buf->skb);
+
+		libeth_tx_complete(tx_buf, &cp);
+		idpf_post_buf_refill(txq->refillq, buf_id);
+	}
+
+	while (idpf_tx_buf_next(tx_buf) != IDPF_TXBUF_NULL) {
+		u16 buf_id = idpf_tx_buf_next(tx_buf);
+
+		tx_buf = &txq->tx_buf[buf_id];
+		libeth_tx_complete(tx_buf, &cp);
+		idpf_post_buf_refill(txq->refillq, buf_id);
+	}
+
+	return true;
+
 	tx_buf = &txq->tx_buf[idx];
 
 	if (unlikely(tx_buf->type <= LIBETH_SQE_CTX ||
-		     idpf_tx_buf_compl_tag(tx_buf) != compl_tag))
+		     idpf_tx_buf_compl_tag(tx_buf) != buf_id))
 		return false;
 
 	if (tx_buf->type == LIBETH_SQE_SKB) {
@@ -1975,7 +2003,7 @@ static bool idpf_tx_clean_buf_ring(struct idpf_tx_queue *txq, u16 compl_tag,
 
 	idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
 
-	while (idpf_tx_buf_compl_tag(tx_buf) == compl_tag) {
+	while (idpf_tx_buf_compl_tag(tx_buf) == buf_id) {
 		libeth_tx_complete(tx_buf, &cp);
 		idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
 	}
@@ -2047,12 +2075,10 @@ static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
 
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
 
@@ -2341,14 +2367,14 @@ unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
 }
 
 /**
- * idpf_tx_dma_map_error - handle TX DMA map errors
+ * idpf_tx_dma_map_unwind - handle TX DMA map errors
  * @txq: queue to send buffer on
  * @skb: send buffer
  * @first: original first buffer info buffer for packet
  * @idx: starting point on ring to unwind
  */
-void idpf_tx_dma_map_error(struct idpf_tx_queue *txq, struct sk_buff *skb,
-			   struct idpf_tx_buf *first, u16 idx)
+void idpf_tx_dma_map_unwind(struct idpf_tx_queue *txq, struct sk_buff *skb,
+			    struct idpf_tx_buf *first, u16 idx)
 {
 	struct libeth_sq_napi_stats ss = { };
 	struct libeth_cq_pp cp = {
@@ -2460,6 +2486,7 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 	struct netdev_queue *nq;
 	struct sk_buff *skb;
 	skb_frag_t *frag;
+	u16 next_buf_id;
 	u16 td_cmd = 0;
 	dma_addr_t dma;
 
@@ -2477,17 +2504,13 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 	tx_buf = first;
 	first->nr_frags = 0;
 
-	params->compl_tag =
-		(tx_q->compl_tag_cur_gen << tx_q->compl_tag_gen_s) | i;
-
 	for (frag = &skb_shinfo(skb)->frags[0];; frag++) {
 		unsigned int max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
 
 		if (dma_mapping_error(tx_q->dev, dma))
-			return idpf_tx_dma_map_error(tx_q, skb, first, i);
+			return idpf_tx_dma_map_unwind(tx_q, skb, first, i);
 
 		first->nr_frags++;
-		idpf_tx_buf_compl_tag(tx_buf) = params->compl_tag;
 		tx_buf->type = LIBETH_SQE_FRAG;
 
 		/* record length, and DMA address */
@@ -2543,29 +2566,14 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
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
@@ -2590,15 +2598,24 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
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
+							      &next_buf_id)))
+				return idpf_tx_dma_map_unwind(tx_q, skb, first, i);
+
+			idpf_tx_buf_next(tx_buf) = next_buf_id;
+		} else {
+			next_buf_id = i;
+		}
+		tx_buf = &tx_q->tx_buf[next_buf_id];
+
 		size = skb_frag_size(frag);
 		data_len -= size;
 
@@ -2613,6 +2630,7 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 
 	/* write last descriptor with RS and EOP bits */
 	first->rs_idx = i;
+	idpf_tx_buf_next(tx_buf) = IDPF_TXBUF_NULL;
 	td_cmd |= params->eop_cmd;
 	idpf_tx_splitq_build_desc(tx_desc, params, td_cmd, size);
 	i = idpf_tx_splitq_bump_ntu(tx_q, i);
@@ -2821,8 +2839,6 @@ idpf_tx_splitq_get_ctx_desc(struct idpf_tx_queue *txq)
 	union idpf_flex_tx_ctx_desc *desc;
 	int i = txq->next_to_use;
 
-	txq->tx_buf[i].type = LIBETH_SQE_CTX;
-
 	/* grab the next descriptor */
 	desc = &txq->flex_ctx[i];
 	txq->next_to_use = idpf_tx_splitq_bump_ntu(txq, i);
@@ -2945,6 +2961,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 	struct idpf_tx_buf *first;
 	unsigned int count;
 	int tso, idx;
+	u16 buf_id;
 
 	count = idpf_tx_desc_count_required(tx_q, skb);
 	if (unlikely(!count))
@@ -2988,23 +3005,11 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 		idpf_tx_set_tstamp_desc(ctx_desc, idx);
 	}
 
-	/* record the location of the first descriptor for this packet */
-	first = &tx_q->tx_buf[tx_q->next_to_use];
-	first->skb = skb;
-
-	if (tso) {
-		first->packets = tx_params.offload.tso_segs;
-		first->bytes = skb->len +
-			((first->packets - 1) * tx_params.offload.tso_hdr_len);
-	} else {
-		first->packets = 1;
-		first->bytes = max_t(unsigned int, skb->len, ETH_ZLEN);
-	}
-
 	if (idpf_queue_has(FLOW_SCH_EN, tx_q)) {
 		if (unlikely(!idpf_tx_get_free_buf_id(tx_q->refillq,
 						      &tx_params.compl_tag)))
 			return idpf_tx_drop_skb(tx_q, skb);
+		buf_id = tx_params.compl_tag;
 
 		tx_params.dtype = IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE;
 		tx_params.eop_cmd = IDPF_TXD_FLEX_FLOW_CMD_EOP;
@@ -3023,6 +3028,8 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 			tx_params.offload.td_cmd |= IDPF_TXD_FLEX_FLOW_CMD_CS_EN;
 
 	} else {
+		buf_id = tx_q->next_to_use;
+
 		tx_params.dtype = IDPF_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2;
 		tx_params.eop_cmd = IDPF_TXD_LAST_DESC_CMD;
 
@@ -3030,6 +3037,18 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
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
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 65acad4c929d..a79a6a89c5e3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -136,6 +136,8 @@ do {								\
 	((++(txq)->compl_tag_cur_gen) >= (txq)->compl_tag_gen_max ? \
 	0 : (txq)->compl_tag_cur_gen)
 
+#define IDPF_TXBUF_NULL			U32_MAX
+
 #define IDPF_TXD_LAST_DESC_CMD (IDPF_TX_DESC_CMD_EOP | IDPF_TX_DESC_CMD_RS)
 
 #define IDPF_TX_FLAGS_TSO		BIT(0)
@@ -634,6 +636,7 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
  * @q_vector: Backreference to associated vector
+ * @buf_pool_size: Total number of idpf_tx_buf
  */
 struct idpf_tx_queue {
 	__cacheline_group_begin_aligned(read_mostly);
@@ -692,11 +695,12 @@ struct idpf_tx_queue {
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
@@ -1041,8 +1045,8 @@ void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
 			   bool xmit_more);
 unsigned int idpf_size_to_txd_count(unsigned int size);
 netdev_tx_t idpf_tx_drop_skb(struct idpf_tx_queue *tx_q, struct sk_buff *skb);
-void idpf_tx_dma_map_error(struct idpf_tx_queue *txq, struct sk_buff *skb,
-			   struct idpf_tx_buf *first, u16 ring_idx);
+void idpf_tx_dma_map_unwind(struct idpf_tx_queue *txq, struct sk_buff *skb,
+			    struct idpf_tx_buf *first, u16 ring_idx);
 unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
 					 struct sk_buff *skb);
 void idpf_tx_timeout(struct net_device *netdev, unsigned int txqueue);
-- 
2.39.2


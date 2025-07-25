Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A666B123F8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 20:35:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 811B183938;
	Fri, 25 Jul 2025 18:35:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nZV6cus4NniX; Fri, 25 Jul 2025 18:34:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92AA7838AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753468499;
	bh=NLqjYXhNHk76/meiRspqLv8BMCi/WXb7U58B3xIIy0E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2azYjaAM6moVQxh1eGGauzAPCZGw5++bN/FFCFbtd9gND204vZEySIoCjihUG3Ln8
	 xydUUDgf5fXdTyqzssYGU+2RnD3ApQo+u0dG8i7DftcKlBQK+/YMZC04AgAh83Eayi
	 VJtC44zT3M+U1RcsFESqO1mayhIrUnKoiH6JDX9GlZWHU02BBMpWodPrKidA5Q+4U5
	 cCbjgHgEl5xBd0FLyWoebzH2oLqWhaGbIx+EDSIz23lDLy0cziUZQrXYJfWhIxYW1I
	 ES8KG40xshhj65vB7wiedOqXNiuMy4/sZrlA5E91GTCZTb4+kf5kowao7oSKVyEl83
	 h5u6e67XaJ8oA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92AA7838AC;
	Fri, 25 Jul 2025 18:34:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9306F177
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 18:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE19B408AC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 18:34:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vPOMI8rt1KIo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 18:34:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 10342402C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10342402C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10342402C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 18:34:53 +0000 (UTC)
X-CSE-ConnectionGUID: 2FL2izWZRSyhCYYraBs6Kg==
X-CSE-MsgGUID: aQkL72JJQ2Wkrdq/C+mHUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="81252343"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="81252343"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 11:34:52 -0700
X-CSE-ConnectionGUID: zeuoPtauSCOhp3CPk6/xfQ==
X-CSE-MsgGUID: CFwVHjxxRPOKZ26P5eWu+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="160803953"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by orviesa009.jf.intel.com with ESMTP; 25 Jul 2025 11:34:53 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Fri, 25 Jul 2025 11:42:20 -0700
Message-Id: <20250725184223.4084821-4-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20250725184223.4084821-1-joshua.a.hay@intel.com>
References: <20250725184223.4084821-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753468493; x=1785004493;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/bDwmFFINpIWRR5SK/PG7nXu1gtBUvYiwYzW8LY6Lw4=;
 b=XVfgczRLfDqdXzexuEHlsxIQcUrw//eZkCsou9kJkk+qBT5qJIvJVjhM
 x/mi4+ZNJSACG/i7KEPzxtIPUCx7dUpQGr44Yv+lBg944uus3UYc2BiLF
 e5RprI9WcwqvmUO0eGKMV1EEFqfhXkF06/Qr/8y0T9HTbVcA+V7a8hQRI
 6P/phzf3i5Aj15Lr8XtftdBzN0Byicun20BcNdpT8KYYkDu/fr6UoX8VN
 uL8ceVqBT2q1xnP8YBzQxcEMPPv1vVD8zQ7crF9oqhLOP1XS9LU+E7Ys0
 9t4cb40uOLG7HUyKa9W7hIs352Vf5Aa8wEqT+JKRUs8csO+qZYqTB/9mJ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XVfgczRL
Subject: [Intel-wired-lan] [PATCH iwl-net v3 3/6] idpf: simplify and fix
 splitq Tx packet rollback error path
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

Move (and rename) the existing rollback logic to singleq.c since that
will be the only consumer. Create a simplified splitq specific rollback
function to loop through and unmap tx_bufs based on the completion tag.
This is critical before replacing the Tx buffer ring with the buffer
pool since the previous rollback indexing will not work to unmap the
chained buffers from the pool.

Cache the next_to_use index before any portion of the packet is put on
the descriptor ring. In case of an error, the rollback will bump tail to
the correct next_to_use value. Because the splitq path now supports
different types of context descriptors (and potentially multiple in the
future), this will take care of rolling back any and all context
descriptors encoded on the ring for the erroneous packet. The previous
rollback logic was broken for PTP packets since it would not account for
the PTP context descriptor.

Fixes: 1a49cf814fe1 ("idpf: add Tx timestamp flows")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 57 +++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 91 ++++++++-----------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  5 +-
 3 files changed, 95 insertions(+), 58 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 993c354aa27a..a3b3261bbdfa 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -179,6 +179,58 @@ static int idpf_tx_singleq_csum(struct sk_buff *skb,
 	return 1;
 }
 
+/**
+ * idpf_tx_singleq_dma_map_error - handle TX DMA map errors
+ * @txq: queue to send buffer on
+ * @skb: send buffer
+ * @first: original first buffer info buffer for packet
+ * @idx: starting point on ring to unwind
+ */
+static void idpf_tx_singleq_dma_map_error(struct idpf_tx_queue *txq,
+					  struct sk_buff *skb,
+					  struct idpf_tx_buf *first, u16 idx)
+{
+	struct libeth_sq_napi_stats ss = { };
+	struct libeth_cq_pp cp = {
+		.dev	= txq->dev,
+		.ss	= &ss,
+	};
+
+	u64_stats_update_begin(&txq->stats_sync);
+	u64_stats_inc(&txq->q_stats.dma_map_errs);
+	u64_stats_update_end(&txq->stats_sync);
+
+	/* clear dma mappings for failed tx_buf map */
+	for (;;) {
+		struct idpf_tx_buf *tx_buf;
+
+		tx_buf = &txq->tx_buf[idx];
+		libeth_tx_complete(tx_buf, &cp);
+		if (tx_buf == first)
+			break;
+		if (idx == 0)
+			idx = txq->desc_count;
+		idx--;
+	}
+
+	if (skb_is_gso(skb)) {
+		union idpf_tx_flex_desc *tx_desc;
+
+		/* If we failed a DMA mapping for a TSO packet, we will have
+		 * used one additional descriptor for a context
+		 * descriptor. Reset that here.
+		 */
+		tx_desc = &txq->flex_tx[idx];
+		memset(tx_desc, 0, sizeof(*tx_desc));
+		if (idx == 0)
+			idx = txq->desc_count;
+		idx--;
+	}
+
+	/* Update tail in case netdev_xmit_more was previously true */
+	idpf_tx_buf_hw_update(txq, idx, false);
+}
+
 /**
  * idpf_tx_singleq_map - Build the Tx base descriptor
  * @tx_q: queue to send buffer on
@@ -219,8 +271,9 @@ static void idpf_tx_singleq_map(struct idpf_tx_queue *tx_q,
 	for (frag = &skb_shinfo(skb)->frags[0];; frag++) {
 		unsigned int max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
 
-		if (dma_mapping_error(tx_q->dev, dma))
-			return idpf_tx_dma_map_error(tx_q, skb, first, i);
+		if (unlikely(dma_mapping_error(tx_q->dev, dma)))
+			return idpf_tx_singleq_dma_map_error(tx_q, skb,
+							     first, i);
 
 		/* record length, and DMA address */
 		dma_unmap_len_set(tx_buf, len, size);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 3359b3b52625..2362d8588e5b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2339,57 +2339,6 @@ unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
 	return count;
 }
 
-/**
- * idpf_tx_dma_map_error - handle TX DMA map errors
- * @txq: queue to send buffer on
- * @skb: send buffer
- * @first: original first buffer info buffer for packet
- * @idx: starting point on ring to unwind
- */
-void idpf_tx_dma_map_error(struct idpf_tx_queue *txq, struct sk_buff *skb,
-			   struct idpf_tx_buf *first, u16 idx)
-{
-	struct libeth_sq_napi_stats ss = { };
-	struct libeth_cq_pp cp = {
-		.dev	= txq->dev,
-		.ss	= &ss,
-	};
-
-	u64_stats_update_begin(&txq->stats_sync);
-	u64_stats_inc(&txq->q_stats.dma_map_errs);
-	u64_stats_update_end(&txq->stats_sync);
-
-	/* clear dma mappings for failed tx_buf map */
-	for (;;) {
-		struct idpf_tx_buf *tx_buf;
-
-		tx_buf = &txq->tx_buf[idx];
-		libeth_tx_complete(tx_buf, &cp);
-		if (tx_buf == first)
-			break;
-		if (idx == 0)
-			idx = txq->desc_count;
-		idx--;
-	}
-
-	if (skb_is_gso(skb)) {
-		union idpf_tx_flex_desc *tx_desc;
-
-		/* If we failed a DMA mapping for a TSO packet, we will have
-		 * used one additional descriptor for a context
-		 * descriptor. Reset that here.
-		 */
-		tx_desc = &txq->flex_tx[idx];
-		memset(tx_desc, 0, sizeof(*tx_desc));
-		if (idx == 0)
-			idx = txq->desc_count;
-		idx--;
-	}
-
-	/* Update tail in case netdev_xmit_more was previously true */
-	idpf_tx_buf_hw_update(txq, idx, false);
-}
-
 /**
  * idpf_tx_splitq_bump_ntu - adjust NTU and generation
  * @txq: the tx ring to wrap
@@ -2438,6 +2387,37 @@ static bool idpf_tx_get_free_buf_id(struct idpf_sw_queue *refillq,
 	return true;
 }
 
+/**
+ * idpf_tx_splitq_pkt_err_unmap - Unmap buffers and bump tail in case of error
+ * @txq: Tx queue to unwind
+ * @params: pointer to splitq params struct
+ * @first: starting buffer for packet to unmap
+ */
+static void idpf_tx_splitq_pkt_err_unmap(struct idpf_tx_queue *txq,
+					 struct idpf_tx_splitq_params *params,
+					 struct idpf_tx_buf *first)
+{
+	struct libeth_sq_napi_stats ss = { };
+	struct idpf_tx_buf *tx_buf = first;
+	struct libeth_cq_pp cp = {
+		.dev    = txq->dev,
+		.ss     = &ss,
+	};
+	u32 idx = 0;
+
+	u64_stats_update_begin(&txq->stats_sync);
+	u64_stats_inc(&txq->q_stats.dma_map_errs);
+	u64_stats_update_end(&txq->stats_sync);
+
+	do {
+		libeth_tx_complete(tx_buf, &cp);
+		idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
+	} while (idpf_tx_buf_compl_tag(tx_buf) == params->compl_tag);
+
+	/* Update tail in case netdev_xmit_more was previously true. */
+	idpf_tx_buf_hw_update(txq, params->prev_ntu, false);
+}
+
 /**
  * idpf_tx_splitq_map - Build the Tx flex descriptor
  * @tx_q: queue to send buffer on
@@ -2482,8 +2462,9 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 	for (frag = &skb_shinfo(skb)->frags[0];; frag++) {
 		unsigned int max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
 
-		if (dma_mapping_error(tx_q->dev, dma))
-			return idpf_tx_dma_map_error(tx_q, skb, first, i);
+		if (unlikely(dma_mapping_error(tx_q->dev, dma)))
+			return idpf_tx_splitq_pkt_err_unmap(tx_q, params,
+							    first);
 
 		first->nr_frags++;
 		idpf_tx_buf_compl_tag(tx_buf) = params->compl_tag;
@@ -2939,7 +2920,9 @@ static bool idpf_tx_splitq_need_re(struct idpf_tx_queue *tx_q)
 static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 					struct idpf_tx_queue *tx_q)
 {
-	struct idpf_tx_splitq_params tx_params = { };
+	struct idpf_tx_splitq_params tx_params = {
+		.prev_ntu = tx_q->next_to_use,
+	};
 	union idpf_flex_tx_ctx_desc *ctx_desc;
 	struct idpf_tx_buf *first;
 	unsigned int count;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 65acad4c929d..e07e21f6a67c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -195,6 +195,7 @@ struct idpf_tx_offload_params {
  * @compl_tag: Associated tag for completion
  * @td_tag: Descriptor tunneling tag
  * @offload: Offload parameters
+ * @prev_ntu: stored TxQ next_to_use in case of rollback
  */
 struct idpf_tx_splitq_params {
 	enum idpf_tx_desc_dtype_value dtype;
@@ -205,6 +206,8 @@ struct idpf_tx_splitq_params {
 	};
 
 	struct idpf_tx_offload_params offload;
+
+	u16 prev_ntu;
 };
 
 enum idpf_tx_ctx_desc_eipt_offload {
@@ -1041,8 +1044,6 @@ void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
 			   bool xmit_more);
 unsigned int idpf_size_to_txd_count(unsigned int size);
 netdev_tx_t idpf_tx_drop_skb(struct idpf_tx_queue *tx_q, struct sk_buff *skb);
-void idpf_tx_dma_map_error(struct idpf_tx_queue *txq, struct sk_buff *skb,
-			   struct idpf_tx_buf *first, u16 ring_idx);
 unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
 					 struct sk_buff *skb);
 void idpf_tx_timeout(struct net_device *netdev, unsigned int txqueue);
-- 
2.39.2


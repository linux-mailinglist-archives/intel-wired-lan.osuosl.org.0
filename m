Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 113EA81D172
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 03:59:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 978CC42DBD;
	Sat, 23 Dec 2023 02:59:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 978CC42DBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300385;
	bh=OwgqkxXyakmlOj74f1ESnV8H8DzylCJJrWPGMKtwgeQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Dr088Bn8ifrxyeQvPrGB5eTCogXGHnrROWITpuPVCMRyKgMT1jvAB8HBQn8sb2mqJ
	 3QHsVW4wSunu8Lm/ZhO9SAD0LKur29MnI1UBvD5sOpcpKpU0oX7V6u4hbPUj8oZ1S/
	 Z04GA26Ria0PT3OQH3jCniDwyNYAnFghHowNKqK4DSuDRY/qAd2lJ/XbpH7w6YioOA
	 DbyY9SPXK3lVEnsVQBxbMGO/G+5kxBYtFE8hCR4Nnw45YUU6CI37Xc7ayUlqBRE55i
	 mJmxHDktI2HZbherCNllOV59+OSTcFrk1PW2QfF5FCHLRyE8VNIcrQvK1yXcDI8Ej4
	 3+IdRES8cVW6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VJHoD6idoIVm; Sat, 23 Dec 2023 02:59:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E906440348;
	Sat, 23 Dec 2023 02:59:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E906440348
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F3181BF255
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4604B42D05
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4604B42D05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id de--3F8Euqlz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:59:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F64F42D6E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F64F42D6E
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386610979"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386610979"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:59:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537556"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:59:14 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:39 +0100
Message-ID: <20231223025554.2316836-20-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300358; x=1734836358;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=55nUHP1btzkRwh2wBgXXfQGCTaUg8xL69mt9JVj+8po=;
 b=mdCo6+IY9QguRuLFZXWLuL406SDbM7TMgXhi/hp12mT+TKgsACA3ZYLG
 NNggdbXavddypYg9DMSsb4W0L8hQ4t8PUE0Ndi0JCnBASk0n/foKnv9Nm
 v59Enzf2sJkDQbL55Heq3EuYLThR4srsxsDH+s3ZJ/leBs65tCAVMpvpC
 Xrnoeh1WTc6mHatn8SLUVduzKyqrw5/rcbf8kuGXkxun95zc9ayWFx5cE
 MdMwSmqUs9dlcOwNEQp4lNlKu37tiDW7wRgLZECS9a5r8SYiy1u9xTKL3
 IvX86o1iUM6AC3tfBlDtnd6t7uVdU2mn0qbO/6GeDrD0ZZuOdYjmGURuN
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mdCo6+IY
Subject: [Intel-wired-lan] [PATCH RFC net-next 19/34] idpf: stop using
 macros for accessing queue descriptors
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In C, we have structures and unions.
Casting `void *` via macros is not only error-prone, but also looks
confusing and awful in general.
Replace it with a union and direct array dereferences. Had idpf had
separate queue structures, it would look way more elegant -- will do
one day.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 20 +++++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 30 +++++++--------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 37 ++++++++-----------
 3 files changed, 40 insertions(+), 47 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 23dcc02e6976..7072d45f007b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -206,7 +206,7 @@ static void idpf_tx_singleq_map(struct idpf_queue *tx_q,
 	data_len = skb->data_len;
 	size = skb_headlen(skb);
 
-	tx_desc = IDPF_BASE_TX_DESC(tx_q, i);
+	tx_desc = &tx_q->base_tx[i];
 
 	dma = dma_map_single(tx_q->dev, skb->data, size, DMA_TO_DEVICE);
 
@@ -242,7 +242,7 @@ static void idpf_tx_singleq_map(struct idpf_queue *tx_q,
 			i++;
 
 			if (i == tx_q->desc_count) {
-				tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+				tx_desc = &tx_q->base_tx[0];
 				i = 0;
 			}
 
@@ -262,7 +262,7 @@ static void idpf_tx_singleq_map(struct idpf_queue *tx_q,
 		i++;
 
 		if (i == tx_q->desc_count) {
-			tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+			tx_desc = &tx_q->base_tx[0];
 			i = 0;
 		}
 
@@ -311,7 +311,7 @@ idpf_tx_singleq_get_ctx_desc(struct idpf_queue *txq)
 	memset(&txq->tx_buf[ntu], 0, sizeof(struct idpf_tx_buf));
 	txq->tx_buf[ntu].ctx_entry = true;
 
-	ctx_desc = IDPF_BASE_TX_CTX_DESC(txq, ntu);
+	ctx_desc = &txq->base_ctx[ntu];
 
 	IDPF_SINGLEQ_BUMP_RING_IDX(txq, ntu);
 	txq->next_to_use = ntu;
@@ -460,7 +460,7 @@ static bool idpf_tx_singleq_clean(struct idpf_queue *tx_q, int napi_budget,
 	struct netdev_queue *nq;
 	bool dont_wake;
 
-	tx_desc = IDPF_BASE_TX_DESC(tx_q, ntc);
+	tx_desc = &tx_q->base_tx[ntc];
 	tx_buf = &tx_q->tx_buf[ntc];
 	ntc -= tx_q->desc_count;
 
@@ -509,7 +509,7 @@ static bool idpf_tx_singleq_clean(struct idpf_queue *tx_q, int napi_budget,
 			if (unlikely(!ntc)) {
 				ntc -= tx_q->desc_count;
 				tx_buf = tx_q->tx_buf;
-				tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+				tx_desc = &tx_q->base_tx[0];
 			}
 
 			/* unmap any remaining paged data */
@@ -527,7 +527,7 @@ static bool idpf_tx_singleq_clean(struct idpf_queue *tx_q, int napi_budget,
 		if (unlikely(!ntc)) {
 			ntc -= tx_q->desc_count;
 			tx_buf = tx_q->tx_buf;
-			tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+			tx_desc = &tx_q->base_tx[0];
 		}
 	} while (likely(budget));
 
@@ -880,7 +880,7 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
 	if (!cleaned_count)
 		return false;
 
-	desc = IDPF_SINGLEQ_RX_BUF_DESC(rx_q, nta);
+	desc = &rx_q->single_buf[nta];
 
 	do {
 		dma_addr_t addr;
@@ -898,7 +898,7 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
 
 		nta++;
 		if (unlikely(nta == rx_q->desc_count)) {
-			desc = IDPF_SINGLEQ_RX_BUF_DESC(rx_q, 0);
+			desc = &rx_q->single_buf[0];
 			nta = 0;
 		}
 
@@ -998,7 +998,7 @@ static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
 		struct idpf_rx_buf *rx_buf;
 
 		/* get the Rx desc from Rx queue based on 'next_to_clean' */
-		rx_desc = IDPF_RX_DESC(rx_q, ntc);
+		rx_desc = &rx_q->rx[ntc];
 
 		/* status_error_ptype_len will always be zero for unused
 		 * descriptors because it's cleared in cleanup, and overlaps
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 6fd9128e61d8..40b8d8b17827 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -533,7 +533,7 @@ static bool idpf_rx_post_buf_desc(struct idpf_queue *bufq, u16 buf_id)
 	u16 nta = bufq->next_to_alloc;
 	dma_addr_t addr;
 
-	splitq_rx_desc = IDPF_SPLITQ_RX_BUF_DESC(bufq, nta);
+	splitq_rx_desc = &bufq->split_buf[nta];
 
 	if (bufq->rx_hsplit_en) {
 		bq.pp = bufq->hdr_pp;
@@ -1560,7 +1560,7 @@ do {								\
 	if (unlikely(!(ntc))) {					\
 		ntc -= (txq)->desc_count;			\
 		buf = (txq)->tx_buf;				\
-		desc = IDPF_FLEX_TX_DESC(txq, 0);		\
+		desc = &(txq)->flex_tx[0];			\
 	} else {						\
 		(buf)++;					\
 		(desc)++;					\
@@ -1593,8 +1593,8 @@ static void idpf_tx_splitq_clean(struct idpf_queue *tx_q, u16 end,
 	s16 ntc = tx_q->next_to_clean;
 	struct idpf_tx_buf *tx_buf;
 
-	tx_desc = IDPF_FLEX_TX_DESC(tx_q, ntc);
-	next_pending_desc = IDPF_FLEX_TX_DESC(tx_q, end);
+	tx_desc = &tx_q->flex_tx[ntc];
+	next_pending_desc = &tx_q->flex_tx[end];
 	tx_buf = &tx_q->tx_buf[ntc];
 	ntc -= tx_q->desc_count;
 
@@ -1774,7 +1774,7 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 	int i;
 
 	complq_budget = vport->compln_clean_budget;
-	tx_desc = IDPF_SPLITQ_TX_COMPLQ_DESC(complq, ntc);
+	tx_desc = &complq->comp[ntc];
 	ntc -= complq->desc_count;
 
 	do {
@@ -1840,7 +1840,7 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 		ntc++;
 		if (unlikely(!ntc)) {
 			ntc -= complq->desc_count;
-			tx_desc = IDPF_SPLITQ_TX_COMPLQ_DESC(complq, 0);
+			tx_desc = &complq->comp[0];
 			change_bit(__IDPF_Q_GEN_CHK, complq->flags);
 		}
 
@@ -2107,7 +2107,7 @@ void idpf_tx_dma_map_error(struct idpf_queue *txq, struct sk_buff *skb,
 		 * used one additional descriptor for a context
 		 * descriptor. Reset that here.
 		 */
-		tx_desc = IDPF_FLEX_TX_DESC(txq, idx);
+		tx_desc = &txq->flex_tx[idx];
 		memset(tx_desc, 0, sizeof(struct idpf_flex_tx_ctx_desc));
 		if (idx == 0)
 			idx = txq->desc_count;
@@ -2167,7 +2167,7 @@ static void idpf_tx_splitq_map(struct idpf_queue *tx_q,
 	data_len = skb->data_len;
 	size = skb_headlen(skb);
 
-	tx_desc = IDPF_FLEX_TX_DESC(tx_q, i);
+	tx_desc = &tx_q->flex_tx[i];
 
 	dma = dma_map_single(tx_q->dev, skb->data, size, DMA_TO_DEVICE);
 
@@ -2241,7 +2241,7 @@ static void idpf_tx_splitq_map(struct idpf_queue *tx_q,
 			i++;
 
 			if (i == tx_q->desc_count) {
-				tx_desc = IDPF_FLEX_TX_DESC(tx_q, 0);
+				tx_desc = &tx_q->flex_tx[0];
 				i = 0;
 				tx_q->compl_tag_cur_gen =
 					IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
@@ -2286,7 +2286,7 @@ static void idpf_tx_splitq_map(struct idpf_queue *tx_q,
 		i++;
 
 		if (i == tx_q->desc_count) {
-			tx_desc = IDPF_FLEX_TX_DESC(tx_q, 0);
+			tx_desc = &tx_q->flex_tx[0];
 			i = 0;
 			tx_q->compl_tag_cur_gen = IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
 		}
@@ -2520,7 +2520,7 @@ idpf_tx_splitq_get_ctx_desc(struct idpf_queue *txq)
 	txq->tx_buf[i].compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
 
 	/* grab the next descriptor */
-	desc = IDPF_FLEX_TX_CTX_DESC(txq, i);
+	desc = &txq->flex_ctx[i];
 	txq->next_to_use = idpf_tx_splitq_bump_ntu(txq, i);
 
 	return desc;
@@ -3020,7 +3020,7 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 		u8 rxdid;
 
 		/* get the Rx desc from Rx queue based on 'next_to_clean' */
-		desc = IDPF_RX_DESC(rxq, ntc);
+		desc = &rxq->rx[ntc];
 		rx_desc = (struct virtchnl2_rx_flex_desc_adv_nic_3 *)desc;
 
 		/* This memory barrier is needed to keep us from reading
@@ -3225,11 +3225,11 @@ static void idpf_rx_clean_refillq(struct idpf_queue *bufq,
 	int cleaned = 0;
 	u16 gen;
 
-	buf_desc = IDPF_SPLITQ_RX_BUF_DESC(bufq, bufq_nta);
+	buf_desc = &bufq->split_buf[bufq_nta];
 
 	/* make sure we stop at ring wrap in the unlikely case ring is full */
 	while (likely(cleaned < refillq->desc_count)) {
-		u16 refill_desc = IDPF_SPLITQ_RX_BI_DESC(refillq, ntc);
+		u16 refill_desc = refillq->ring[ntc];
 		bool failure;
 
 		gen = FIELD_GET(IDPF_RX_BI_GEN_M, refill_desc);
@@ -3247,7 +3247,7 @@ static void idpf_rx_clean_refillq(struct idpf_queue *bufq,
 		}
 
 		if (unlikely(++bufq_nta == bufq->desc_count)) {
-			buf_desc = IDPF_SPLITQ_RX_BUF_DESC(bufq, 0);
+			buf_desc = &bufq->split_buf[0];
 			bufq_nta = 0;
 		} else {
 			buf_desc++;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 5975c6d029d7..2584bd94363f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -112,24 +112,6 @@ do {								\
 #define IDPF_RXD_EOF_SPLITQ		VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_EOF_M
 #define IDPF_RXD_EOF_SINGLEQ		VIRTCHNL2_RX_BASE_DESC_STATUS_EOF_M
 
-#define IDPF_SINGLEQ_RX_BUF_DESC(rxq, i)	\
-	(&(((struct virtchnl2_singleq_rx_buf_desc *)((rxq)->desc_ring))[i]))
-#define IDPF_SPLITQ_RX_BUF_DESC(rxq, i)	\
-	(&(((struct virtchnl2_splitq_rx_buf_desc *)((rxq)->desc_ring))[i]))
-#define IDPF_SPLITQ_RX_BI_DESC(rxq, i) ((((rxq)->ring))[i])
-
-#define IDPF_BASE_TX_DESC(txq, i)	\
-	(&(((struct idpf_base_tx_desc *)((txq)->desc_ring))[i]))
-#define IDPF_BASE_TX_CTX_DESC(txq, i) \
-	(&(((struct idpf_base_tx_ctx_desc *)((txq)->desc_ring))[i]))
-#define IDPF_SPLITQ_TX_COMPLQ_DESC(txcq, i)	\
-	(&(((struct idpf_splitq_tx_compl_desc *)((txcq)->desc_ring))[i]))
-
-#define IDPF_FLEX_TX_DESC(txq, i) \
-	(&(((union idpf_tx_flex_desc *)((txq)->desc_ring))[i]))
-#define IDPF_FLEX_TX_CTX_DESC(txq, i)	\
-	(&(((struct idpf_flex_tx_ctx_desc *)((txq)->desc_ring))[i]))
-
 #define IDPF_DESC_UNUSED(txq)     \
 	((((txq)->next_to_clean > (txq)->next_to_use) ? 0 : (txq)->desc_count) + \
 	(txq)->next_to_clean - (txq)->next_to_use - 1)
@@ -275,9 +257,6 @@ struct idpf_rx_extracted {
 #define IDPF_TX_MAX_DESC_DATA_ALIGNED \
 	ALIGN_DOWN(IDPF_TX_MAX_DESC_DATA, IDPF_TX_MAX_READ_REQ_SIZE)
 
-#define IDPF_RX_DESC(rxq, i)	\
-	(&(((union virtchnl2_rx_desc *)((rxq)->desc_ring))[i]))
-
 #define idpf_rx_buf libie_rx_buffer
 
 #define IDPF_RX_MAX_PTYPE_PROTO_IDS    32
@@ -586,7 +565,21 @@ struct idpf_queue {
 		struct page_pool *pp;
 		struct device *dev;
 	};
-	void *desc_ring;
+	union {
+		union virtchnl2_rx_desc *rx;
+
+		struct virtchnl2_singleq_rx_buf_desc *single_buf;
+		struct virtchnl2_splitq_rx_buf_desc *split_buf;
+
+		struct idpf_base_tx_desc *base_tx;
+		struct idpf_base_tx_ctx_desc *base_ctx;
+		union idpf_tx_flex_desc *flex_tx;
+		struct idpf_flex_tx_ctx_desc *flex_ctx;
+
+		struct idpf_splitq_tx_compl_desc *comp;
+
+		void *desc_ring;
+	};
 
 	u32 hdr_truesize;
 	u32 truesize;
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB5F9106EA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 15:56:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6312A84769;
	Thu, 20 Jun 2024 13:56:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tMkKnPzHKZdF; Thu, 20 Jun 2024 13:56:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7EC28470B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718891799;
	bh=gK9vBFvdYJwDw4pPVmfP0LuDHaxJd4o4p0dimogBxjE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=68wtZxdnmbjcuRWPGY+DivpUQlhHDAWPIAVvYgdK5GrSP7R4pc9sq/g3yuCRO2nDp
	 JFWjXq9799PFjXBMelyIm+Fv+G7wHVGcEmBfCHZLLFdwOs4p5NTQ7Fbu+iaRWtuQeq
	 VtGPTtUTLmaOQ3iWXIBLZKUKeoG/ULeKDN+ZrQR2ysg2RaEBADxBdahWHEfDJvIg22
	 iDVzN5EKv+aLQHKDfjizLPt1zcXkxktjRp3xk5Gq5wsXOuNd4M/+n74hP7Hfh/UykS
	 id+3S0zMwoHxNXQAeaBBSFrKj2NVzVxY47OYjgWg5vxY2ShhtxLjl7G6+SuNPlXThj
	 wkRP4/Ojk3BfA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7EC28470B;
	Thu, 20 Jun 2024 13:56:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CB741BF315
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 08E9D42EE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wqT1HVH_hsAQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 13:56:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6CAA242E6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CAA242E6A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6CAA242E6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:35 +0000 (UTC)
X-CSE-ConnectionGUID: L2UdBGrWRS2LPDn7nEj0DA==
X-CSE-MsgGUID: USITbY/eQGe3Yoi7y0GNuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15987830"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="15987830"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 06:56:35 -0700
X-CSE-ConnectionGUID: HUwdQ21VQ8GvtPNZLotLuQ==
X-CSE-MsgGUID: 3AiqlEikS+6gL/gTQMGRcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="46772071"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jun 2024 06:56:31 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jun 2024 15:53:37 +0200
Message-ID: <20240620135347.3006818-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
References: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718891796; x=1750427796;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tBpgWNrGObEE7uxZdOt/eYtpFaomwDlWs/XbxltPbEY=;
 b=WHTAGcR3wE6wh1CVgnaGg7L9oDBgqe9rVk5MWjijAQAnLY7q4urY5i00
 n7hyVApQHXhpcMJUPBBwUEF6FJtVPkvRdmshaCVJeX8hRWE5GLSsj2x/6
 Hng1Ug5aN3Te77qb0ETfIJvuqk6DBbCeJpcpv0jobdAI42Yy9AZJQN0Ia
 Y62Q8GUk55rPFHsWfOvC5RZrKXl2BRmc8Ovll6WyhoB76pHFPUum9Jgt8
 yatMaMMPUNx59m/vTRn+p4brZQpmIzGgz3WoFPdw3Nz+MfgqkNL4DT4Ew
 cJHESPgYr03P96sTW0XdnUBNcLxgL/dDBcOTFmC5QerPHKhmp3PJlGfhY
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WHTAGcR3
Subject: [Intel-wired-lan] [PATCH iwl-next v2 04/14] idpf: stop using macros
 for accessing queue descriptors
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
Cc: Mina Almasry <almasrymina@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In C, we have structures and unions.
Casting `void *` via macros is not only error-prone, but also looks
confusing and awful in general.
In preparation for splitting the queue structs, replace it with a
union and direct array dereferences.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Mina Almasry <almasrymina@google.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  1 -
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  2 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 47 ++++++++++---------
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 20 ++++----
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 32 ++++++-------
 5 files changed, 52 insertions(+), 50 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index e7a036538246..0b26dd9b8a51 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -20,7 +20,6 @@ struct idpf_vport_max_q;
 #include <linux/dim.h>
 
 #include "virtchnl2.h"
-#include "idpf_lan_txrx.h"
 #include "idpf_txrx.h"
 #include "idpf_controlq.h"
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
index a5752dcab888..8c7f8ef8f1a1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
@@ -4,6 +4,8 @@
 #ifndef _IDPF_LAN_TXRX_H_
 #define _IDPF_LAN_TXRX_H_
 
+#include <linux/bits.h>
+
 enum idpf_rss_hash {
 	IDPF_HASH_INVALID			= 0,
 	/* Values 1 - 28 are reserved for future use */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 551391e20464..6dce14483215 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -8,6 +8,7 @@
 #include <net/tcp.h>
 #include <net/netdev_queues.h>
 
+#include "idpf_lan_txrx.h"
 #include "virtchnl2_lan_desc.h"
 
 #define IDPF_LARGE_MAX_Q			256
@@ -117,24 +118,6 @@ do {								\
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
@@ -317,8 +300,6 @@ struct idpf_rx_extracted {
 
 #define IDPF_RX_DMA_ATTR \
 	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
-#define IDPF_RX_DESC(rxq, i)	\
-	(&(((union virtchnl2_rx_desc *)((rxq)->desc_ring))[i]))
 
 struct idpf_rx_buf {
 	struct page *page;
@@ -655,7 +636,15 @@ union idpf_queue_stats {
  * @q_vector: Backreference to associated vector
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
- * @desc_ring: Descriptor ring memory
+ * @rx: universal receive descriptor array
+ * @single_buf: Rx buffer descriptor array in singleq
+ * @split_buf: Rx buffer descriptor array in splitq
+ * @base_tx: basic Tx descriptor array
+ * @base_ctx: basic Tx context descriptor array
+ * @flex_tx: flex Tx descriptor array
+ * @flex_ctx: flex Tx context descriptor array
+ * @comp: completion descriptor array
+ * @desc_ring: virtual descriptor ring address
  * @tx_max_bufs: Max buffers that can be transmitted with scatter-gather
  * @tx_min_pkt_len: Min supported packet length
  * @num_completions: Only relevant for TX completion queue. It tracks the
@@ -733,7 +722,21 @@ struct idpf_queue {
 	struct idpf_q_vector *q_vector;
 	unsigned int size;
 	dma_addr_t dma;
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
 
 	u16 tx_max_bufs;
 	u8 tx_min_pkt_len;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 27b93592c4ba..b17d88e15000 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -205,7 +205,7 @@ static void idpf_tx_singleq_map(struct idpf_queue *tx_q,
 	data_len = skb->data_len;
 	size = skb_headlen(skb);
 
-	tx_desc = IDPF_BASE_TX_DESC(tx_q, i);
+	tx_desc = &tx_q->base_tx[i];
 
 	dma = dma_map_single(tx_q->dev, skb->data, size, DMA_TO_DEVICE);
 
@@ -239,7 +239,7 @@ static void idpf_tx_singleq_map(struct idpf_queue *tx_q,
 			i++;
 
 			if (i == tx_q->desc_count) {
-				tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+				tx_desc = &tx_q->base_tx[0];
 				i = 0;
 			}
 
@@ -259,7 +259,7 @@ static void idpf_tx_singleq_map(struct idpf_queue *tx_q,
 		i++;
 
 		if (i == tx_q->desc_count) {
-			tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+			tx_desc = &tx_q->base_tx[0];
 			i = 0;
 		}
 
@@ -307,7 +307,7 @@ idpf_tx_singleq_get_ctx_desc(struct idpf_queue *txq)
 	memset(&txq->tx_buf[ntu], 0, sizeof(struct idpf_tx_buf));
 	txq->tx_buf[ntu].ctx_entry = true;
 
-	ctx_desc = IDPF_BASE_TX_CTX_DESC(txq, ntu);
+	ctx_desc = &txq->base_ctx[ntu];
 
 	IDPF_SINGLEQ_BUMP_RING_IDX(txq, ntu);
 	txq->next_to_use = ntu;
@@ -455,7 +455,7 @@ static bool idpf_tx_singleq_clean(struct idpf_queue *tx_q, int napi_budget,
 	struct netdev_queue *nq;
 	bool dont_wake;
 
-	tx_desc = IDPF_BASE_TX_DESC(tx_q, ntc);
+	tx_desc = &tx_q->base_tx[ntc];
 	tx_buf = &tx_q->tx_buf[ntc];
 	ntc -= tx_q->desc_count;
 
@@ -517,7 +517,7 @@ static bool idpf_tx_singleq_clean(struct idpf_queue *tx_q, int napi_budget,
 			if (unlikely(!ntc)) {
 				ntc -= tx_q->desc_count;
 				tx_buf = tx_q->tx_buf;
-				tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+				tx_desc = &tx_q->base_tx[0];
 			}
 
 			/* unmap any remaining paged data */
@@ -540,7 +540,7 @@ static bool idpf_tx_singleq_clean(struct idpf_queue *tx_q, int napi_budget,
 		if (unlikely(!ntc)) {
 			ntc -= tx_q->desc_count;
 			tx_buf = tx_q->tx_buf;
-			tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+			tx_desc = &tx_q->base_tx[0];
 		}
 	} while (likely(budget));
 
@@ -895,7 +895,7 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
 	if (!cleaned_count)
 		return false;
 
-	desc = IDPF_SINGLEQ_RX_BUF_DESC(rx_q, nta);
+	desc = &rx_q->single_buf[nta];
 	buf = &rx_q->rx_buf.buf[nta];
 
 	do {
@@ -915,7 +915,7 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
 		buf++;
 		nta++;
 		if (unlikely(nta == rx_q->desc_count)) {
-			desc = IDPF_SINGLEQ_RX_BUF_DESC(rx_q, 0);
+			desc = &rx_q->single_buf[0];
 			buf = rx_q->rx_buf.buf;
 			nta = 0;
 		}
@@ -1016,7 +1016,7 @@ static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
 		struct idpf_rx_buf *rx_buf;
 
 		/* get the Rx desc from Rx queue based on 'next_to_clean' */
-		rx_desc = IDPF_RX_DESC(rx_q, ntc);
+		rx_desc = &rx_q->rx[ntc];
 
 		/* status_error_ptype_len will always be zero for unused
 		 * descriptors because it's cleared in cleanup, and overlaps
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index b023704bbbda..01301e640fba 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -531,7 +531,7 @@ static bool idpf_rx_post_buf_desc(struct idpf_queue *bufq, u16 buf_id)
 	struct idpf_rx_buf *buf;
 	dma_addr_t addr;
 
-	splitq_rx_desc = IDPF_SPLITQ_RX_BUF_DESC(bufq, nta);
+	splitq_rx_desc = &bufq->split_buf[nta];
 	buf = &bufq->rx_buf.buf[buf_id];
 
 	if (bufq->rx_hsplit_en) {
@@ -1584,7 +1584,7 @@ do {								\
 	if (unlikely(!(ntc))) {					\
 		ntc -= (txq)->desc_count;			\
 		buf = (txq)->tx_buf;				\
-		desc = IDPF_FLEX_TX_DESC(txq, 0);		\
+		desc = &(txq)->flex_tx[0];			\
 	} else {						\
 		(buf)++;					\
 		(desc)++;					\
@@ -1617,8 +1617,8 @@ static void idpf_tx_splitq_clean(struct idpf_queue *tx_q, u16 end,
 	s16 ntc = tx_q->next_to_clean;
 	struct idpf_tx_buf *tx_buf;
 
-	tx_desc = IDPF_FLEX_TX_DESC(tx_q, ntc);
-	next_pending_desc = IDPF_FLEX_TX_DESC(tx_q, end);
+	tx_desc = &tx_q->flex_tx[ntc];
+	next_pending_desc = &tx_q->flex_tx[end];
 	tx_buf = &tx_q->tx_buf[ntc];
 	ntc -= tx_q->desc_count;
 
@@ -1814,7 +1814,7 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 	int i;
 
 	complq_budget = vport->compln_clean_budget;
-	tx_desc = IDPF_SPLITQ_TX_COMPLQ_DESC(complq, ntc);
+	tx_desc = &complq->comp[ntc];
 	ntc -= complq->desc_count;
 
 	do {
@@ -1879,7 +1879,7 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 		ntc++;
 		if (unlikely(!ntc)) {
 			ntc -= complq->desc_count;
-			tx_desc = IDPF_SPLITQ_TX_COMPLQ_DESC(complq, 0);
+			tx_desc = &complq->comp[0];
 			change_bit(__IDPF_Q_GEN_CHK, complq->flags);
 		}
 
@@ -2143,7 +2143,7 @@ void idpf_tx_dma_map_error(struct idpf_queue *txq, struct sk_buff *skb,
 		 * used one additional descriptor for a context
 		 * descriptor. Reset that here.
 		 */
-		tx_desc = IDPF_FLEX_TX_DESC(txq, idx);
+		tx_desc = &txq->flex_tx[idx];
 		memset(tx_desc, 0, sizeof(struct idpf_flex_tx_ctx_desc));
 		if (idx == 0)
 			idx = txq->desc_count;
@@ -2202,7 +2202,7 @@ static void idpf_tx_splitq_map(struct idpf_queue *tx_q,
 	data_len = skb->data_len;
 	size = skb_headlen(skb);
 
-	tx_desc = IDPF_FLEX_TX_DESC(tx_q, i);
+	tx_desc = &tx_q->flex_tx[i];
 
 	dma = dma_map_single(tx_q->dev, skb->data, size, DMA_TO_DEVICE);
 
@@ -2275,7 +2275,7 @@ static void idpf_tx_splitq_map(struct idpf_queue *tx_q,
 			i++;
 
 			if (i == tx_q->desc_count) {
-				tx_desc = IDPF_FLEX_TX_DESC(tx_q, 0);
+				tx_desc = &tx_q->flex_tx[0];
 				i = 0;
 				tx_q->compl_tag_cur_gen =
 					IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
@@ -2320,7 +2320,7 @@ static void idpf_tx_splitq_map(struct idpf_queue *tx_q,
 		i++;
 
 		if (i == tx_q->desc_count) {
-			tx_desc = IDPF_FLEX_TX_DESC(tx_q, 0);
+			tx_desc = &tx_q->flex_tx[0];
 			i = 0;
 			tx_q->compl_tag_cur_gen = IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
 		}
@@ -2553,7 +2553,7 @@ idpf_tx_splitq_get_ctx_desc(struct idpf_queue *txq)
 	txq->tx_buf[i].compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
 
 	/* grab the next descriptor */
-	desc = IDPF_FLEX_TX_CTX_DESC(txq, i);
+	desc = &txq->flex_ctx[i];
 	txq->next_to_use = idpf_tx_splitq_bump_ntu(txq, i);
 
 	return desc;
@@ -3128,7 +3128,6 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 		struct idpf_sw_queue *refillq = NULL;
 		struct idpf_rxq_set *rxq_set = NULL;
 		struct idpf_rx_buf *rx_buf = NULL;
-		union virtchnl2_rx_desc *desc;
 		unsigned int pkt_len = 0;
 		unsigned int hdr_len = 0;
 		u16 gen_id, buf_id = 0;
@@ -3138,8 +3137,7 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 		u8 rxdid;
 
 		/* get the Rx desc from Rx queue based on 'next_to_clean' */
-		desc = IDPF_RX_DESC(rxq, ntc);
-		rx_desc = (struct virtchnl2_rx_flex_desc_adv_nic_3 *)desc;
+		rx_desc = &rxq->rx[ntc].flex_adv_nic_3_wb;
 
 		/* This memory barrier is needed to keep us from reading
 		 * any other fields out of the rx_desc
@@ -3320,11 +3318,11 @@ static void idpf_rx_clean_refillq(struct idpf_queue *bufq,
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
@@ -3342,7 +3340,7 @@ static void idpf_rx_clean_refillq(struct idpf_queue *bufq,
 		}
 
 		if (unlikely(++bufq_nta == bufq->desc_count)) {
-			buf_desc = IDPF_SPLITQ_RX_BUF_DESC(bufq, 0);
+			buf_desc = &bufq->split_buf[0];
 			bufq_nta = 0;
 		} else {
 			buf_desc++;
-- 
2.45.2


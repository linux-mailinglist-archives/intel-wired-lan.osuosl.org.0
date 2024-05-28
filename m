Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7C68D1D71
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:50:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68517820DC;
	Tue, 28 May 2024 13:50:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o3PCN_IoE_BO; Tue, 28 May 2024 13:50:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34F8A80C41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716904201;
	bh=ti1pfv7CRs18tBMkFRbJ88nALmrcUK56/YpGGUv/ATY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WHAoP1BEl7DHliityPYipjSqXkPr7+CGNZhWKtEKbmeRsvX3b0vTiC/OEfVaYsNLx
	 d1fZnt+yFGT/na7ltGxs+uPp7SdxvNdsR7+V1WLdbGw2IxyNidqQ9ghFRfnD1fjKhb
	 QXPWO1fhlvLlLs4dVjw6i0AZPhhGpYTrA6ouRmh9uIyUnwTCjdukIjYSlvXe1c9Tct
	 4qAnXLXM7Ylk4qrhL4iEsOnn3NA8GVq0jsrXBpIi3HQxD38dqHh+eYcUItZGdgqN6N
	 Paqfpcb7jwh4zhcsRJJNWRQQNyX6w5h5+E6f9JOH//JCJkfzriW7yCCpn/9eM+rhAX
	 gyyimVy2YL3VQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34F8A80C41;
	Tue, 28 May 2024 13:50:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BEAF1D2878
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3787060784
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9-w6wE3TxeCN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:49:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B0EAD6077A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0EAD6077A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0EAD6077A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:55 +0000 (UTC)
X-CSE-ConnectionGUID: LtiIg2U8TAmUajpXFtYsRA==
X-CSE-MsgGUID: ITblBEosSeqSoYZ8ZrYYdw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13437069"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13437069"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:49:56 -0700
X-CSE-ConnectionGUID: 7pi4YsxxQ36k9YT0pFLqVw==
X-CSE-MsgGUID: BTBtHngjQRmnc5cD8/wY4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35577459"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 28 May 2024 06:49:53 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:48:45 +0200
Message-ID: <20240528134846.148890-12-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240528134846.148890-1-aleksander.lobakin@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716904196; x=1748440196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0DWFT1RQBjdwLCnc1phhdeO8YxOn2gnLtGwPO9e4HW4=;
 b=bPMfKijXcBORSOkSDvXwncCro0mRyx46mX0p0ecRsNC9c4i7dop25XuP
 Q7fSejvjCVHrqS4pffNY870kVPfBKnwvDAEnKfBmVXbEEr528s8pA8K6/
 xM1ifuc8QkUapVA58xXtMYE1TM5EKdbJBRgr/eVnahq1iBs4an4qiGgtC
 IKbmZC+/PjGECnmTOsXwJmQVPNnMnIsm7/6hiHQMMhzLf+Bye1r6yisvc
 CcfJFiFn9w2TWAcaD1k6gPVzAVZ7PZR4dI1g+FDs4qRam73K0bKuQndpO
 fHF4GZL088p9jcI/Ih0E0gfYmWvkSHUX9spM6tIq9nn8enUmVq29uCuzy
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bPMfKijX
Subject: [Intel-wired-lan] [PATCH iwl-next 11/12] idpf: convert header split
 mode to libeth + napi_build_skb()
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
Cc: Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, idpf uses the following model for the header buffers:

* buffers are allocated via dma_alloc_coherent();
* when receiving, napi_alloc_skb() is called and then the header is
  copied to the newly allocated linear part.

This is far from optimal as DMA coherent zone is slow on many systems
and memcpy() neutralizes the idea and benefits of the header split. Not
speaking of that XDP can't be run on DMA coherent buffers, but at the
same time the idea of allocating an skb to run XDP program is ill.
Instead, use libeth to create page_pools for the header buffers, allocate
them dynamically and then build an skb via napi_build_skb() around them
with no memory copy. With one exception...
When you enable header split, you except you'll always have a separate
header buffer, so that you could reserve headroom and tailroom only
there and then use full buffers for the data. For example, this is how
TCP zerocopy works -- you have to have the payload aligned to PAGE_SIZE.
The current hardware running idpf does *not* guarantee that you'll
always have headers placed separately. For example, on my setup, even
ICMP packets are written as one piece to the data buffers. You can't
build a valid skb around a data buffer in this case.
To not complicate things and not lose TCP zerocopy etc., when such thing
happens, use the empty header buffer and pull either full frame (if it's
short) or the Ethernet header there and build an skb around it. GRO
layer will pull more from the data buffer later. This W/A will hopefully
be removed one day.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  52 ++--
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |   1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 253 ++++++++++++------
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  14 +-
 4 files changed, 204 insertions(+), 116 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index a6f5916bee8e..86a1efc24caf 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -7,7 +7,7 @@
 #include <linux/dim.h>
 
 #include <net/libeth/cache.h>
-#include <net/page_pool/helpers.h>
+#include <net/libeth/rx.h>
 #include <net/tcp.h>
 #include <net/netdev_queues.h>
 
@@ -103,8 +103,6 @@ do {								\
 #define IDPF_RX_BUF_STRIDE			32
 #define IDPF_RX_BUF_POST_STRIDE			16
 #define IDPF_LOW_WATERMARK			64
-/* Size of header buffer specifically for header split */
-#define IDPF_HDR_BUF_SIZE			256
 #define IDPF_PACKET_HDR_PAD	\
 	(ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN * 2)
 #define IDPF_TX_TSO_MIN_MSS			88
@@ -300,14 +298,7 @@ struct idpf_rx_extracted {
 #define IDPF_TX_MAX_DESC_DATA_ALIGNED \
 	ALIGN_DOWN(IDPF_TX_MAX_DESC_DATA, IDPF_TX_MAX_READ_REQ_SIZE)
 
-#define IDPF_RX_DMA_ATTR \
-	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
-
-struct idpf_rx_buf {
-	struct page *page;
-	unsigned int page_offset;
-	u16 truesize;
-};
+#define idpf_rx_buf libeth_fqe
 
 #define IDPF_RX_MAX_PTYPE_PROTO_IDS    32
 #define IDPF_RX_MAX_PTYPE_SZ	(sizeof(struct virtchnl2_ptype) + \
@@ -755,14 +746,14 @@ libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
  * struct idpf_buf_queue - software structure representing a buffer queue
  * @read_mostly: CL group with rarely written hot fields
  * @split_buf: buffer descriptor array
- * @rx_buf: Struct with RX buffer related members
- * @rx_buf.buf: See struct idpf_rx_buf
- * @rx_buf.hdr_buf_pa: DMA handle
- * @rx_buf.hdr_buf_va: Virtual address
- * @pp: Page pool pointer
+ * @hdr_buf: &libeth_fqe for header buffers
+ * @hdr_pp: &page_pool for header buffers
+ * @buf: &idpf_rx_buf for data buffers
+ * @pp: &page_pool for data buffers
  * @tail: Tail offset
  * @flags: See enum idpf_queue_flags_t
  * @desc_count: Number of descriptors
+ * @hdr_truesize: truesize for buffer headers
  * @read_write: CL group with both read/write hot fields
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
@@ -779,16 +770,16 @@ libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
 struct idpf_buf_queue {
 	libeth_cacheline_group(read_mostly,
 		struct virtchnl2_splitq_rx_buf_desc *split_buf;
-		struct {
-			struct idpf_rx_buf *buf;
-			dma_addr_t hdr_buf_pa;
-			void *hdr_buf_va;
-		} rx_buf;
+		struct libeth_fqe *hdr_buf;
+		struct page_pool *hdr_pp;
+		struct idpf_rx_buf *buf;
 		struct page_pool *pp;
 		void __iomem *tail;
 
 		DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 		u32 desc_count;
+
+		u32 hdr_truesize;
 	);
 	libeth_cacheline_group(read_write,
 		u32 next_to_use;
@@ -982,6 +973,18 @@ struct idpf_txq_group {
 	u32 num_completions_pending;
 };
 
+static inline int idpf_q_vector_to_mem(const struct idpf_q_vector *q_vector)
+{
+	u32 cpu;
+
+	if (!q_vector)
+		return NUMA_NO_NODE;
+
+	cpu = cpumask_first(q_vector->affinity_mask);
+
+	return cpu < nr_cpu_ids ? cpu_to_mem(cpu) : NUMA_NO_NODE;
+}
+
 /**
  * idpf_size_to_txd_count - Get number of descriptors needed for large Tx frag
  * @size: transmit request size in bytes
@@ -1050,7 +1053,7 @@ static inline dma_addr_t idpf_alloc_page(struct page_pool *pool,
 					 unsigned int buf_size)
 {
 	if (buf_size == IDPF_RX_BUF_2048)
-		buf->page = page_pool_dev_alloc_frag(pool, &buf->page_offset,
+		buf->page = page_pool_dev_alloc_frag(pool, &buf->offset,
 						     buf_size);
 	else
 		buf->page = page_pool_dev_alloc_pages(pool);
@@ -1060,7 +1063,7 @@ static inline dma_addr_t idpf_alloc_page(struct page_pool *pool,
 
 	buf->truesize = buf_size;
 
-	return page_pool_get_dma_addr(buf->page) + buf->page_offset +
+	return page_pool_get_dma_addr(buf->page) + buf->offset +
 	       pool->p.offset;
 }
 
@@ -1087,7 +1090,7 @@ static inline void idpf_rx_sync_for_cpu(struct idpf_rx_buf *rx_buf, u32 len)
 
 	dma_sync_single_range_for_cpu(pp->p.dev,
 				      page_pool_get_dma_addr(page),
-				      rx_buf->page_offset + pp->p.offset, len,
+				      rx_buf->offset + pp->p.offset, len,
 				      page_pool_get_dma_dir(pp));
 }
 
@@ -1116,6 +1119,7 @@ void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
 struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
 				      struct idpf_rx_buf *rx_buf,
 				      unsigned int size);
+struct sk_buff *idpf_rx_build_skb(const struct libeth_fqe *buf, u32 size);
 void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
 			   bool xmit_more);
 unsigned int idpf_size_to_txd_count(unsigned int size);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 7c71c72b814f..cde768082fc4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -828,6 +828,7 @@ idpf_rx_singleq_process_skb_fields(struct idpf_rx_queue *rx_q,
 	}
 
 	idpf_rx_singleq_csum(rx_q, skb, csum_bits, decoded);
+	skb_record_rx_queue(skb, rx_q->idx);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 2af9a482652a..689668e0ca51 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -381,7 +381,7 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
  * idpf_rx_page_rel - Release an rx buffer page
  * @rx_buf: the buffer to free
  */
-static void idpf_rx_page_rel(struct idpf_rx_buf *rx_buf)
+static void idpf_rx_page_rel(struct libeth_fqe *rx_buf)
 {
 	if (unlikely(!rx_buf->page))
 		return;
@@ -389,46 +389,50 @@ static void idpf_rx_page_rel(struct idpf_rx_buf *rx_buf)
 	page_pool_put_full_page(rx_buf->page->pp, rx_buf->page, false);
 
 	rx_buf->page = NULL;
-	rx_buf->page_offset = 0;
+	rx_buf->offset = 0;
 }
 
 /**
  * idpf_rx_hdr_buf_rel_all - Release header buffer memory
  * @bufq: queue to use
- * @dev: device to free DMA memory
  */
-static void idpf_rx_hdr_buf_rel_all(struct idpf_buf_queue *bufq,
-				    struct device *dev)
+static void idpf_rx_hdr_buf_rel_all(struct idpf_buf_queue *bufq)
 {
-	dma_free_coherent(dev, bufq->desc_count * IDPF_HDR_BUF_SIZE,
-			  bufq->rx_buf.hdr_buf_va, bufq->rx_buf.hdr_buf_pa);
-	bufq->rx_buf.hdr_buf_va = NULL;
+	struct libeth_fq fq = {
+		.fqes	= bufq->hdr_buf,
+		.pp	= bufq->hdr_pp,
+	};
+
+	for (u32 i = 0; i < bufq->desc_count; i++)
+		idpf_rx_page_rel(&bufq->hdr_buf[i]);
+
+	libeth_rx_fq_destroy(&fq);
+	bufq->hdr_buf = NULL;
+	bufq->hdr_pp = NULL;
 }
 
 /**
  * idpf_rx_buf_rel_bufq - Free all Rx buffer resources for a buffer queue
  * @bufq: queue to be cleaned
- * @dev: device to free DMA memory
  */
-static void idpf_rx_buf_rel_bufq(struct idpf_buf_queue *bufq,
-				 struct device *dev)
+static void idpf_rx_buf_rel_bufq(struct idpf_buf_queue *bufq)
 {
 	/* queue already cleared, nothing to do */
-	if (!bufq->rx_buf.buf)
+	if (!bufq->buf)
 		return;
 
 	/* Free all the bufs allocated and given to hw on Rx queue */
 	for (u32 i = 0; i < bufq->desc_count; i++)
-		idpf_rx_page_rel(&bufq->rx_buf.buf[i]);
+		idpf_rx_page_rel(&bufq->buf[i]);
 
 	if (idpf_queue_has(HSPLIT_EN, bufq))
-		idpf_rx_hdr_buf_rel_all(bufq, dev);
+		idpf_rx_hdr_buf_rel_all(bufq);
 
 	page_pool_destroy(bufq->pp);
 	bufq->pp = NULL;
 
-	kfree(bufq->rx_buf.buf);
-	bufq->rx_buf.buf = NULL;
+	kfree(bufq->buf);
+	bufq->buf = NULL;
 }
 
 /**
@@ -493,7 +497,7 @@ static void idpf_rx_desc_rel_bufq(struct idpf_buf_queue *bufq,
 	if (!bufq)
 		return;
 
-	idpf_rx_buf_rel_bufq(bufq, dev);
+	idpf_rx_buf_rel_bufq(bufq);
 
 	bufq->next_to_alloc = 0;
 	bufq->next_to_clean = 0;
@@ -573,12 +577,21 @@ static void idpf_rx_buf_hw_update(struct idpf_buf_queue *bufq, u32 val)
  */
 static int idpf_rx_hdr_buf_alloc_all(struct idpf_buf_queue *bufq)
 {
-	bufq->rx_buf.hdr_buf_va =
-		dma_alloc_coherent(bufq->q_vector->vport->netdev->dev.parent,
-				   IDPF_HDR_BUF_SIZE * bufq->desc_count,
-				   &bufq->rx_buf.hdr_buf_pa, GFP_KERNEL);
-	if (!bufq->rx_buf.hdr_buf_va)
-		return -ENOMEM;
+	struct libeth_fq fq = {
+		.count	= bufq->desc_count,
+		.type	= LIBETH_FQE_HDR,
+		.nid	= idpf_q_vector_to_mem(bufq->q_vector),
+	};
+	int ret;
+
+	ret = libeth_rx_fq_create(&fq, &bufq->q_vector->napi);
+	if (ret)
+		return ret;
+
+	bufq->hdr_pp = fq.pp;
+	bufq->hdr_buf = fq.fqes;
+	bufq->hdr_truesize = fq.truesize;
+	bufq->rx_hbuf_size = fq.buf_len;
 
 	return 0;
 }
@@ -616,17 +629,27 @@ static void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
 static bool idpf_rx_post_buf_desc(struct idpf_buf_queue *bufq, u16 buf_id)
 {
 	struct virtchnl2_splitq_rx_buf_desc *splitq_rx_desc = NULL;
+	struct libeth_fq_fp fq = {
+		.count	= bufq->desc_count,
+	};
 	u16 nta = bufq->next_to_alloc;
 	struct idpf_rx_buf *buf;
 	dma_addr_t addr;
 
 	splitq_rx_desc = &bufq->split_buf[nta];
-	buf = &bufq->rx_buf.buf[buf_id];
+	buf = &bufq->buf[buf_id];
 
-	if (idpf_queue_has(HSPLIT_EN, bufq))
-		splitq_rx_desc->hdr_addr =
-			cpu_to_le64(bufq->rx_buf.hdr_buf_pa +
-				    (u32)buf_id * IDPF_HDR_BUF_SIZE);
+	if (idpf_queue_has(HSPLIT_EN, bufq)) {
+		fq.pp = bufq->hdr_pp;
+		fq.fqes = bufq->hdr_buf;
+		fq.truesize = bufq->hdr_truesize;
+
+		addr = libeth_rx_alloc(&fq, buf_id);
+		if (addr == DMA_MAPPING_ERROR)
+			return false;
+
+		splitq_rx_desc->hdr_addr = cpu_to_le64(addr);
+	}
 
 	addr = idpf_alloc_page(bufq->pp, buf, bufq->rx_buf_size);
 	if (unlikely(addr == DMA_MAPPING_ERROR))
@@ -741,13 +764,12 @@ static int idpf_rx_bufs_init_singleq(struct idpf_rx_queue *rxq)
  */
 static int idpf_rx_buf_alloc_all(struct idpf_buf_queue *rxbufq)
 {
-	struct device *dev = rxbufq->q_vector->vport->netdev->dev.parent;
 	int err = 0;
 
 	/* Allocate book keeping buffers */
-	rxbufq->rx_buf.buf = kcalloc(rxbufq->desc_count,
-				     sizeof(struct idpf_rx_buf), GFP_KERNEL);
-	if (!rxbufq->rx_buf.buf) {
+	rxbufq->buf = kcalloc(rxbufq->desc_count, sizeof(*rxbufq->buf),
+			      GFP_KERNEL);
+	if (!rxbufq->buf) {
 		err = -ENOMEM;
 		goto rx_buf_alloc_all_out;
 	}
@@ -764,7 +786,7 @@ static int idpf_rx_buf_alloc_all(struct idpf_buf_queue *rxbufq)
 
 rx_buf_alloc_all_out:
 	if (err)
-		idpf_rx_buf_rel_bufq(rxbufq, dev);
+		idpf_rx_buf_rel_bufq(rxbufq);
 
 	return err;
 }
@@ -1489,7 +1511,6 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
 
 			idpf_queue_assign(HSPLIT_EN, q, hs);
-			q->rx_hbuf_size = hs ? IDPF_HDR_BUF_SIZE : 0;
 
 			bufq_set->num_refillqs = num_rxq;
 			bufq_set->refillqs = kcalloc(num_rxq, swq_size,
@@ -1532,7 +1553,6 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 				      &rx_qgrp->splitq.bufq_sets[1].refillqs[j];
 
 			idpf_queue_assign(HSPLIT_EN, q, hs);
-			q->rx_hbuf_size = hs ? IDPF_HDR_BUF_SIZE : 0;
 
 setup_rxq:
 			q->desc_count = vport->rxq_desc_count;
@@ -3107,6 +3127,8 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	csum_bits = idpf_rx_splitq_extract_csum_bits(rx_desc);
 	idpf_rx_csum(rxq, skb, csum_bits, decoded);
 
+	skb_record_rx_queue(skb, rxq->idx);
+
 	return 0;
 }
 
@@ -3124,7 +3146,7 @@ void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
 		      unsigned int size)
 {
 	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
-			rx_buf->page_offset, size, rx_buf->truesize);
+			rx_buf->offset, size, rx_buf->truesize);
 
 	rx_buf->page = NULL;
 }
@@ -3147,7 +3169,7 @@ struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
 	struct sk_buff *skb;
 	void *va;
 
-	va = page_address(rx_buf->page) + rx_buf->page_offset;
+	va = page_address(rx_buf->page) + rx_buf->offset;
 
 	/* prefetch first cache line of first page */
 	net_prefetch(va);
@@ -3159,7 +3181,6 @@ struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
 		return NULL;
 	}
 
-	skb_record_rx_queue(skb, rxq->idx);
 	skb_mark_for_recycle(skb);
 
 	/* Determine available headroom for copy */
@@ -3178,7 +3199,7 @@ struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
 		return skb;
 	}
 
-	skb_add_rx_frag(skb, 0, rx_buf->page, rx_buf->page_offset + headlen,
+	skb_add_rx_frag(skb, 0, rx_buf->page, rx_buf->offset + headlen,
 			size, rx_buf->truesize);
 
 	/* Since we're giving the page to the stack, clear our reference to it.
@@ -3190,36 +3211,66 @@ struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
 }
 
 /**
- * idpf_rx_hdr_construct_skb - Allocate skb and populate it from header buffer
- * @rxq: Rx descriptor queue
- * @va: Rx buffer to pull data from
+ * idpf_rx_hsplit_wa - handle header buffer overflows and split errors
+ * @hdr: Rx buffer for the headers
+ * @buf: Rx buffer for the payload
+ * @data_len: number of bytes received to the payload buffer
+ *
+ * When a header buffer overflow occurs or the HW was unable do parse the
+ * packet type to perform header split, the whole frame gets placed to the
+ * payload buffer. We can't build a valid skb around a payload buffer when
+ * the header split is active since it doesn't reserve any head- or tailroom.
+ * In that case, copy either the whole frame when it's short or just the
+ * Ethernet header to the header buffer to be able to build an skb and adjust
+ * the data offset in the payload buffer, IOW emulate the header split.
+ *
+ * Return: number of bytes copied to the header buffer.
+ */
+static u32 idpf_rx_hsplit_wa(const struct libeth_fqe *hdr,
+			     struct libeth_fqe *buf, u32 data_len)
+{
+	u32 copy = data_len <= L1_CACHE_BYTES ? data_len : ETH_HLEN;
+	const void *src;
+	void *dst;
+
+	if (!libeth_rx_sync_for_cpu(buf, copy))
+		return 0;
+
+	dst = page_address(hdr->page) + hdr->offset + hdr->page->pp->p.offset;
+	src = page_address(buf->page) + buf->offset + buf->page->pp->p.offset;
+	memcpy(dst, src, ALIGN(copy, sizeof(long)));
+
+	buf->offset += copy;
+
+	return copy;
+}
+
+/**
+ * idpf_rx_build_skb - Allocate skb and populate it from header buffer
+ * @buf: Rx buffer to pull data from
  * @size: the length of the packet
  *
  * This function allocates an skb. It then populates it with the page data from
  * the current receive descriptor, taking care to set up the skb correctly.
- * This specifically uses a header buffer to start building the skb.
  */
-static struct sk_buff *
-idpf_rx_hdr_construct_skb(const struct idpf_rx_queue *rxq, const void *va,
-			  unsigned int size)
+struct sk_buff *idpf_rx_build_skb(const struct libeth_fqe *buf, u32 size)
 {
+	u32 hr = buf->page->pp->p.offset;
 	struct sk_buff *skb;
+	void *va;
 
-	/* allocate a skb to store the frags */
-	skb = napi_alloc_skb(rxq->napi, size);
+	va = page_address(buf->page) + buf->offset;
+	prefetch(va + hr);
+
+	skb = napi_build_skb(va, buf->truesize);
 	if (unlikely(!skb))
 		return NULL;
 
-	skb_record_rx_queue(skb, rxq->idx);
-
-	memcpy(__skb_put(skb, size), va, ALIGN(size, sizeof(long)));
-
-	/* More than likely, a payload fragment, which will use a page from
-	 * page_pool will be added to the SKB so mark it for recycle
-	 * preemptively. And if not, it's inconsequential.
-	 */
 	skb_mark_for_recycle(skb);
 
+	skb_reserve(skb, hr);
+	__skb_put(skb, size);
+
 	return skb;
 }
 
@@ -3272,14 +3323,12 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 	/* Process Rx packets bounded by budget */
 	while (likely(total_rx_pkts < budget)) {
 		struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc;
+		struct libeth_fqe *hdr, *rx_buf = NULL;
 		struct idpf_sw_queue *refillq = NULL;
 		struct idpf_rxq_set *rxq_set = NULL;
-		struct idpf_rx_buf *rx_buf = NULL;
 		unsigned int pkt_len = 0;
 		unsigned int hdr_len = 0;
 		u16 gen_id, buf_id = 0;
-		 /* Header buffer overflow only valid for header split */
-		bool hbo = false;
 		int bufq_id;
 		u8 rxdid;
 
@@ -3311,25 +3360,6 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 		pkt_len = le16_get_bits(rx_desc->pktlen_gen_bufq_id,
 					VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_M);
 
-		hbo = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_HBO_M,
-				rx_desc->status_err0_qw1);
-
-		if (unlikely(hbo)) {
-			/* If a header buffer overflow, occurs, i.e. header is
-			 * too large to fit in the header split buffer, HW will
-			 * put the entire packet, including headers, in the
-			 * data/payload buffer.
-			 */
-			u64_stats_update_begin(&rxq->stats_sync);
-			u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
-			u64_stats_update_end(&rxq->stats_sync);
-			goto bypass_hsplit;
-		}
-
-		hdr_len = le16_get_bits(rx_desc->hdrlen_flags,
-					VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_M);
-
-bypass_hsplit:
 		bufq_id = le16_get_bits(rx_desc->pktlen_gen_bufq_id,
 					VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_M);
 
@@ -3341,18 +3371,48 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 
 		buf_id = le16_to_cpu(rx_desc->buf_id);
 
-		rx_buf = &rx_bufq->rx_buf.buf[buf_id];
+		rx_buf = &rx_bufq->buf[buf_id];
 
-		if (hdr_len) {
-			const void *va = (u8 *)rx_bufq->rx_buf.hdr_buf_va +
-						(u32)buf_id * IDPF_HDR_BUF_SIZE;
+		if (!rx_bufq->hdr_pp)
+			goto payload;
+
+#define __HBO_BIT	VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_HBO_M
+#define __HDR_LEN_MASK	VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_M
+		if (likely(!(rx_desc->status_err0_qw1 & __HBO_BIT)))
+			/* If a header buffer overflow, occurs, i.e. header is
+			 * too large to fit in the header split buffer, HW will
+			 * put the entire packet, including headers, in the
+			 * data/payload buffer.
+			 */
+			hdr_len = le16_get_bits(rx_desc->hdrlen_flags,
+						__HDR_LEN_MASK);
+#undef __HDR_LEN_MASK
+#undef __HBO_BIT
+
+		hdr = &rx_bufq->hdr_buf[buf_id];
+
+		if (unlikely(!hdr_len && !skb)) {
+			hdr_len = idpf_rx_hsplit_wa(hdr, rx_buf, pkt_len);
+			pkt_len -= hdr_len;
+
+			u64_stats_update_begin(&rxq->stats_sync);
+			u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
+			u64_stats_update_end(&rxq->stats_sync);
+		}
+
+		if (libeth_rx_sync_for_cpu(hdr, hdr_len)) {
+			skb = idpf_rx_build_skb(hdr, hdr_len);
+			if (!skb)
+				break;
 
-			skb = idpf_rx_hdr_construct_skb(rxq, va, hdr_len);
 			u64_stats_update_begin(&rxq->stats_sync);
 			u64_stats_inc(&rxq->q_stats.hsplit_pkts);
 			u64_stats_update_end(&rxq->stats_sync);
 		}
 
+		hdr->page = NULL;
+
+payload:
 		if (pkt_len) {
 			idpf_rx_sync_for_cpu(rx_buf, pkt_len);
 			if (skb)
@@ -3422,10 +3482,13 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 static int idpf_rx_update_bufq_desc(struct idpf_buf_queue *bufq, u32 buf_id,
 				    struct virtchnl2_splitq_rx_buf_desc *buf_desc)
 {
+	struct libeth_fq_fp fq = {
+		.count		= bufq->desc_count,
+	};
 	struct idpf_rx_buf *buf;
 	dma_addr_t addr;
 
-	buf = &bufq->rx_buf.buf[buf_id];
+	buf = &bufq->buf[buf_id];
 
 	addr = idpf_alloc_page(bufq->pp, buf, bufq->rx_buf_size);
 	if (unlikely(addr == DMA_MAPPING_ERROR))
@@ -3437,8 +3500,15 @@ static int idpf_rx_update_bufq_desc(struct idpf_buf_queue *bufq, u32 buf_id,
 	if (!idpf_queue_has(HSPLIT_EN, bufq))
 		return 0;
 
-	buf_desc->hdr_addr = cpu_to_le64(bufq->rx_buf.hdr_buf_pa +
-					 (u32)buf_id * IDPF_HDR_BUF_SIZE);
+	fq.pp = bufq->hdr_pp;
+	fq.fqes = bufq->hdr_buf;
+	fq.truesize = bufq->hdr_truesize;
+
+	addr = libeth_rx_alloc(&fq, buf_id);
+	if (addr == DMA_MAPPING_ERROR)
+		return -ENOMEM;
+
+	buf_desc->hdr_addr = cpu_to_le64(addr);
 
 	return 0;
 }
@@ -3509,16 +3579,20 @@ static void idpf_rx_clean_refillq(struct idpf_buf_queue *bufq,
 /**
  * idpf_rx_clean_refillq_all - Clean all refill queues
  * @bufq: buffer queue with refill queues
+ * @nid: ID of the closest NUMA node with memory
  *
  * Iterates through all refill queues assigned to the buffer queue assigned to
  * this vector.  Returns true if clean is complete within budget, false
  * otherwise.
  */
-static void idpf_rx_clean_refillq_all(struct idpf_buf_queue *bufq)
+static void idpf_rx_clean_refillq_all(struct idpf_buf_queue *bufq, int nid)
 {
 	struct idpf_bufq_set *bufq_set;
 	int i;
 
+	if (bufq->hdr_pp)
+		page_pool_nid_changed(bufq->hdr_pp, nid);
+
 	bufq_set = container_of(bufq, struct idpf_bufq_set, bufq);
 	for (i = 0; i < bufq_set->num_refillqs; i++)
 		idpf_rx_clean_refillq(bufq, &bufq_set->refillqs[i]);
@@ -4020,6 +4094,7 @@ static bool idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
 	bool clean_complete = true;
 	int pkts_cleaned = 0;
 	int i, budget_per_q;
+	int nid;
 
 	/* We attempt to distribute budget to each Rx queue fairly, but don't
 	 * allow the budget to go below 1 because that would exit polling early.
@@ -4037,8 +4112,10 @@ static bool idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
 	}
 	*cleaned = pkts_cleaned;
 
+	nid = numa_mem_id();
+
 	for (i = 0; i < q_vec->num_bufq; i++)
-		idpf_rx_clean_refillq_all(q_vec->bufq[i]);
+		idpf_rx_clean_refillq_all(q_vec->bufq[i], nid);
 
 	return clean_complete;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 83f3543a30e1..50dcb3ab02b1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1604,32 +1604,38 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 			num_rxq = rx_qgrp->singleq.num_rxq;
 
 		for (j = 0; j < num_rxq; j++, k++) {
+			const struct idpf_bufq_set *sets;
 			struct idpf_rx_queue *rxq;
 
 			if (!idpf_is_queue_model_split(vport->rxq_model)) {
 				rxq = rx_qgrp->singleq.rxqs[j];
 				goto common_qi_fields;
 			}
+
 			rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
-			qi[k].rx_bufq1_id =
-			  cpu_to_le16(rxq->bufq_sets[0].bufq.q_id);
+			sets = rxq->bufq_sets;
+
+			qi[k].rx_bufq1_id = cpu_to_le16(sets[0].bufq.q_id);
 			if (vport->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP) {
 				qi[k].bufq2_ena = IDPF_BUFQ2_ENA;
 				qi[k].rx_bufq2_id =
-				  cpu_to_le16(rxq->bufq_sets[1].bufq.q_id);
+					cpu_to_le16(sets[1].bufq.q_id);
 			}
 			qi[k].rx_buffer_low_watermark =
 				cpu_to_le16(rxq->rx_buffer_low_watermark);
 			if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
 				qi[k].qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
 
-common_qi_fields:
+			rxq->rx_hbuf_size = sets[0].bufq.rx_hbuf_size;
+
 			if (idpf_queue_has(HSPLIT_EN, rxq)) {
 				qi[k].qflags |=
 					cpu_to_le16(VIRTCHNL2_RXQ_HDR_SPLIT);
 				qi[k].hdr_buffer_size =
 					cpu_to_le16(rxq->rx_hbuf_size);
 			}
+
+common_qi_fields:
 			qi[k].queue_id = cpu_to_le32(rxq->q_id);
 			qi[k].model = cpu_to_le16(vport->rxq_model);
 			qi[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX);
-- 
2.45.1


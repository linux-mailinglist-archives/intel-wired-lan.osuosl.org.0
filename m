Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6536A8C27B8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 17:28:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25834845ED;
	Fri, 10 May 2024 15:28:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 861Ns9TIH6kk; Fri, 10 May 2024 15:27:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4ADD084562
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715354877;
	bh=Q8qEC/Z7CuWUbohl/E9o9jDCGa/4qDK4WWW6FnuoA2E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5Usf5JLj1Y9PLuWPNI6Ts18B8hLFbINNOrObzqN+NIKIoA0FrH1/tLdxbFCU0TFvY
	 UQzDDoij0yICiBzSuS+VSi0Hx6f7uc5916ZJnLikPuAvXztwd8LMGl6+WSpSMc9NHD
	 b4vKWnolO9zb036OeKBg5cPN6078k05YHkXSiHMkzJNwEoJTMvpuVo5lwSNvgGNWiR
	 jsOzldNDCXvksi+dq0owUKEKAlhHYjn/bgg5SIO3hYsHmXeCeYLoOhvpt63omramIF
	 jz/XOG43NgbnNNmzpdguY+OCJSGPipWe1Dx+5nFiOu52insMfnyYcBdxDEeh3EuziG
	 EY6OFcnok+gcA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4ADD084562;
	Fri, 10 May 2024 15:27:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8BDB51BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 76F9442243
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WuMV0KIL5G9C for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 15:27:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A3D4742048
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3D4742048
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A3D4742048
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:52 +0000 (UTC)
X-CSE-ConnectionGUID: SXwv6fPuREG/1CXNrT95oQ==
X-CSE-MsgGUID: lnrE8YPeTKq3F1l9xcgCfw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15152668"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="15152668"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:27:52 -0700
X-CSE-ConnectionGUID: CvnXkWsNQBa9qB3mEtt+LA==
X-CSE-MsgGUID: bdtVje7ITPWtUH8rH85U5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="30208308"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 10 May 2024 08:27:49 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 May 2024 17:26:19 +0200
Message-ID: <20240510152620.2227312-12-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354873; x=1746890873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wMvjXOtHYAGT/jNXtFxu7dQItSwBFbmtPQCdpUiP21Q=;
 b=avGRe72mF5txB4Bnjj6gzizMvjXT3hnyJcKsEU6k/3VsOKI56yatYzBw
 Yv8ruXaeLjGRmCNrzivsnloUa83lXKEjtPZ1gTwSjp2dKRvYxBEWhhfTo
 VhhXRxNWE4poYt+VF47KlWpqQWPwuIhwff3hAb9pwkv5v1oNMlYgOUdEK
 HXygK+0ODkxZ9+kF3ijZVHzZ2P/sDgWVvuLFhaJI6HyeaOFC3aKRzRkrG
 sKlvYPPzAD1WAyCPRZcRpZJD9oJbomevQmJMoAjcPXXcy75B76b7W6069
 PifaHv1TLrGQRD9L7Jmja1DOYhWFek+KF+LknAGPIR3fnb2nBScUgjgKx
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=avGRe72m
Subject: [Intel-wired-lan] [PATCH RFC iwl-next 11/12] idpf: convert header
 split mode to libeth + napi_build_skb()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
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
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  54 ++--
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |   1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 237 +++++++++++-------
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  14 +-
 4 files changed, 189 insertions(+), 117 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 83e960a1549e..f6885ad3da94 100644
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
@@ -744,18 +735,18 @@ libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
 
 /**
  * struct idpf_buf_queue - software structure represting a buffer queue
- * @rx_buf: Struct with RX buffer related members
- * @rx_buf.buf: See struct idpf_rx_buf
- * @rx_buf.hdr_buf_pa: DMA handle
- * @rx_buf.hdr_buf_va: Virtual address
+ * @hdr_buf: &libeth_fqe for header buffers
+ * @buf: &idpf_rx_buf for data buffers
  * @split_buf: Descriptor ring memory
- * @pp: Page pool pointer
+ * @hdr_pp: &page_pool for header buffers
+ * @pp: &page_pool for data buffers
  * @tail: Tail offset
  * @flags: See enum idpf_queue_flags_t
  * @desc_count: Number of descriptors
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
  * @next_to_alloc: RX buffer to allocate at
+ * @hdr_truesize: truesize for buffer headers
  * @q_id: Queue id
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
@@ -767,16 +758,16 @@ libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
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
@@ -795,7 +786,7 @@ struct idpf_buf_queue {
 		u16 rx_buf_size;
 	);
 };
-libeth_cacheline_set_assert(struct idpf_buf_queue, 60, 12, 32);
+libeth_cacheline_set_assert(struct idpf_buf_queue, 64, 12, 32);
 
 /**
  * struct idpf_compl_queue - software structure represting a completion queue
@@ -964,6 +955,18 @@ struct idpf_txq_group {
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
@@ -1032,7 +1035,7 @@ static inline dma_addr_t idpf_alloc_page(struct page_pool *pool,
 					 unsigned int buf_size)
 {
 	if (buf_size == IDPF_RX_BUF_2048)
-		buf->page = page_pool_dev_alloc_frag(pool, &buf->page_offset,
+		buf->page = page_pool_dev_alloc_frag(pool, &buf->offset,
 						     buf_size);
 	else
 		buf->page = page_pool_dev_alloc_pages(pool);
@@ -1042,7 +1045,7 @@ static inline dma_addr_t idpf_alloc_page(struct page_pool *pool,
 
 	buf->truesize = buf_size;
 
-	return page_pool_get_dma_addr(buf->page) + buf->page_offset +
+	return page_pool_get_dma_addr(buf->page) + buf->offset +
 	       pool->p.offset;
 }
 
@@ -1069,7 +1072,7 @@ static inline void idpf_rx_sync_for_cpu(struct idpf_rx_buf *rx_buf, u32 len)
 
 	dma_sync_single_range_for_cpu(pp->p.dev,
 				      page_pool_get_dma_addr(page),
-				      rx_buf->page_offset + pp->p.offset, len,
+				      rx_buf->offset + pp->p.offset, len,
 				      page_pool_get_dma_dir(pp));
 }
 
@@ -1098,6 +1101,7 @@ void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
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
index 44e6fa2c8afc..930d08379fa7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -378,7 +378,7 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
  * idpf_rx_page_rel - Release an rx buffer page
  * @rx_buf: the buffer to free
  */
-static void idpf_rx_page_rel(struct idpf_rx_buf *rx_buf)
+static void idpf_rx_page_rel(struct libeth_fqe *rx_buf)
 {
 	if (unlikely(!rx_buf->page))
 		return;
@@ -386,46 +386,50 @@ static void idpf_rx_page_rel(struct idpf_rx_buf *rx_buf)
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
@@ -490,7 +494,7 @@ static void idpf_rx_desc_rel_bufq(struct idpf_buf_queue *bufq,
 	if (!bufq)
 		return;
 
-	idpf_rx_buf_rel_bufq(bufq, dev);
+	idpf_rx_buf_rel_bufq(bufq);
 
 	bufq->next_to_alloc = 0;
 	bufq->next_to_clean = 0;
@@ -570,12 +574,21 @@ static void idpf_rx_buf_hw_update(struct idpf_buf_queue *bufq, u32 val)
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
@@ -613,17 +626,27 @@ static void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
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
@@ -738,13 +761,12 @@ static int idpf_rx_bufs_init_singleq(struct idpf_rx_queue *rxq)
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
@@ -761,7 +783,7 @@ static int idpf_rx_buf_alloc_all(struct idpf_buf_queue *rxbufq)
 
 rx_buf_alloc_all_out:
 	if (err)
-		idpf_rx_buf_rel_bufq(rxbufq, dev);
+		idpf_rx_buf_rel_bufq(rxbufq);
 
 	return err;
 }
@@ -1486,7 +1508,6 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
 
 			idpf_queue_assign(HSPLIT_EN, q, hs);
-			q->rx_hbuf_size = hs ? IDPF_HDR_BUF_SIZE : 0;
 
 			bufq_set->num_refillqs = num_rxq;
 			bufq_set->refillqs = kcalloc(num_rxq, swq_size,
@@ -1529,7 +1550,6 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 				      &rx_qgrp->splitq.bufq_sets[1].refillqs[j];
 
 			idpf_queue_assign(HSPLIT_EN, q, hs);
-			q->rx_hbuf_size = hs ? IDPF_HDR_BUF_SIZE : 0;
 
 setup_rxq:
 			q->desc_count = vport->rxq_desc_count;
@@ -3104,9 +3124,30 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	csum_bits = idpf_rx_splitq_extract_csum_bits(rx_desc);
 	idpf_rx_csum(rxq, skb, csum_bits, decoded);
 
+	skb_record_rx_queue(skb, rxq->idx);
+
 	return 0;
 }
 
+static u32 idpf_rx_hsplit_wa(struct libeth_fqe *hdr, struct libeth_fqe *buf,
+			     u32 data_len)
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
 /**
  * idpf_rx_add_frag - Add contents of Rx buffer to sk_buff as a frag
  * @rx_buf: buffer containing page to add
@@ -3121,7 +3162,7 @@ void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
 		      unsigned int size)
 {
 	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
-			rx_buf->page_offset, size, rx_buf->truesize);
+			rx_buf->offset, size, rx_buf->truesize);
 
 	rx_buf->page = NULL;
 }
@@ -3144,7 +3185,7 @@ struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
 	struct sk_buff *skb;
 	void *va;
 
-	va = page_address(rx_buf->page) + rx_buf->page_offset;
+	va = page_address(rx_buf->page) + rx_buf->offset;
 
 	/* prefetch first cache line of first page */
 	net_prefetch(va);
@@ -3156,7 +3197,6 @@ struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
 		return NULL;
 	}
 
-	skb_record_rx_queue(skb, rxq->idx);
 	skb_mark_for_recycle(skb);
 
 	/* Determine available headroom for copy */
@@ -3175,7 +3215,7 @@ struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
 		return skb;
 	}
 
-	skb_add_rx_frag(skb, 0, rx_buf->page, rx_buf->page_offset + headlen,
+	skb_add_rx_frag(skb, 0, rx_buf->page, rx_buf->offset + headlen,
 			size, rx_buf->truesize);
 
 	/* Since we're giving the page to the stack, clear our reference to it.
@@ -3187,36 +3227,31 @@ struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
 }
 
 /**
- * idpf_rx_hdr_construct_skb - Allocate skb and populate it from header buffer
- * @rxq: Rx descriptor queue
- * @va: Rx buffer to pull data from
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
+	net_prefetch(va + hr);
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
 
@@ -3269,14 +3304,12 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
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
 
@@ -3308,25 +3341,6 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
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
 
@@ -3338,18 +3352,48 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 
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
@@ -3419,10 +3463,13 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
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
@@ -3434,8 +3481,15 @@ static int idpf_rx_update_bufq_desc(struct idpf_buf_queue *bufq, u32 buf_id,
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
@@ -3506,16 +3560,20 @@ static void idpf_rx_clean_refillq(struct idpf_buf_queue *bufq,
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
@@ -4017,6 +4075,7 @@ static bool idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
 	bool clean_complete = true;
 	int pkts_cleaned = 0;
 	int i, budget_per_q;
+	int nid;
 
 	/* We attempt to distribute budget to each Rx queue fairly, but don't
 	 * allow the budget to go below 1 because that would exit polling early.
@@ -4034,8 +4093,10 @@ static bool idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
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
index 476b34d21618..42534edf38db 100644
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
2.45.0


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3716716609
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 17:04:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8143181FD4;
	Tue, 30 May 2023 15:04:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8143181FD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685459078;
	bh=B7uEWnFkzSSmAVTZ9y0iN99dHYR/zBy60glodcdj6UI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HhUlNha3nNsnXIB1qywe5u/jfIzPheX1mIIpFZo2l3JajweEZrOpjWrGR50658gdD
	 PCClJPG5Q+ueAOSCNw1wIJAGGf8cxTiKeSBsR5xt2V096RBDEUe4ABL4TQOMPljSvp
	 6NYUSggx33h8QcRZ8krmvjwmn9yR7Frh7yLa6cprN3/fqn7AnIaMaMbF6ASOy+tdhv
	 9ar54o/M4jzTmjqTwRKQ5LaZuWn2+gXrCDtrzM9SmKWTksslrqfCsAAzuhS3eYWLw8
	 VMhe1BdV1QTCjmVZ5G2TSYOObrbsHRo/rZMUJLVbC+A7UqEgbN2ENqUW0BOqeYciE8
	 k5kWZnPmHq79w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wfndWvPOezGw; Tue, 30 May 2023 15:04:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC74681EF6;
	Tue, 30 May 2023 15:04:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC74681EF6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 012921BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DC05040901
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC05040901
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dKvlFFVkJOW8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 15:04:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 353C540574
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 353C540574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358192367"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="358192367"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 08:03:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="796304155"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="796304155"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by FMSMGA003.fm.intel.com with ESMTP; 30 May 2023 08:03:20 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 30 May 2023 17:00:27 +0200
Message-Id: <20230530150035.1943669-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
References: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685459062; x=1716995062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QfdoGFlJ8yMDkA8/gAo9Nh/W8B7hE6+yXQ8lf/2FX3U=;
 b=n+IGZHrt+bJyFZoPTeFSuEyb38+nNF7CzAoYEcil9RxmYTvipbtBJYUk
 qXl21hWeHvC4V/HWzL1ME5g94mr/BngBYRX1CiVzeBM5gblfkIpcXqKze
 egWO0W1Ko8rB/U7okeHSDFs1PmtWNuuhcZMcUW5cq9b9BoD+p38p6KQZx
 bSrUsKM040ZD1IHjJWzRrsXzYd6bHzCgm3ZBMUCW3jh3Ox1jh9Tf6hj4u
 WP9xLc6WrPDZgiHqBl6oD4adu1MFK57b1o3oRJWFRUXeB3ZmIS6JOics1
 cAao/dkEQk7SAAQU2Mh6ZldCMyApNo/LXa1nnQ84vxplefpGbdLpsfMDw
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n+IGZHrt
Subject: [Intel-wired-lan] [PATCH net-next v3 04/12] iavf: remove page
 splitting/recycling
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Christoph Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As an intermediate step, remove all page splitting/recyclig code. Just
always allocate a new page and don't touch its refcount, so that it gets
freed by the core stack later.
The change allows to greatly simplify certain parts of the code:

Function: add/remove: 2/3 grow/shrink: 0/5 up/down: 543/-963 (-420)

&iavf_rx_buf can even now retire in favor of just storing an array of
pages used for Rx. Their DMA addresses can be stored in page::dma_addr
-- use Page Pool's function for that.
No surprise perf loses up to 30% here, but that regression will go away
once PP lands.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 280 ++++++--------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h |  17 +-
 3 files changed, 88 insertions(+), 211 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ade32aa1ed78..2d00be69fcde 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1236,7 +1236,7 @@ static void iavf_configure(struct iavf_adapter *adapter)
 	for (i = 0; i < adapter->num_active_queues; i++) {
 		struct iavf_ring *ring = &adapter->rx_rings[i];
 
-		iavf_alloc_rx_buffers(ring);
+		iavf_alloc_rx_pages(ring);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index fd08ce67380e..10aaa18e467c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -3,6 +3,7 @@
 
 #include <linux/net/intel/libie/rx.h>
 #include <linux/prefetch.h>
+#include <net/page_pool.h>
 
 #include "iavf.h"
 #include "iavf_trace.h"
@@ -690,11 +691,10 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
  **/
 void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 {
-	unsigned long bi_size;
 	u16 i;
 
 	/* ring already cleared, nothing to do */
-	if (!rx_ring->rx_bi)
+	if (!rx_ring->rx_pages)
 		return;
 
 	if (rx_ring->skb) {
@@ -704,38 +704,30 @@ void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 
 	/* Free all the Rx ring sk_buffs */
 	for (i = 0; i < rx_ring->count; i++) {
-		struct iavf_rx_buffer *rx_bi = &rx_ring->rx_bi[i];
+		struct page *page = rx_ring->rx_pages[i];
+		dma_addr_t dma;
 
-		if (!rx_bi->page)
+		if (!page)
 			continue;
 
+		dma = page_pool_get_dma_addr(page);
+
 		/* Invalidate cache lines that may have been written to by
 		 * device so that we avoid corrupting memory.
 		 */
-		dma_sync_single_range_for_cpu(rx_ring->dev,
-					      rx_bi->dma,
-					      rx_bi->page_offset,
+		dma_sync_single_range_for_cpu(rx_ring->dev, dma, IAVF_SKB_PAD,
 					      rx_ring->rx_buf_len,
 					      DMA_FROM_DEVICE);
 
 		/* free resources associated with mapping */
-		dma_unmap_page_attrs(rx_ring->dev, rx_bi->dma,
+		dma_unmap_page_attrs(rx_ring->dev, dma,
 				     iavf_rx_pg_size(rx_ring),
 				     DMA_FROM_DEVICE,
 				     IAVF_RX_DMA_ATTR);
 
-		__page_frag_cache_drain(rx_bi->page, rx_bi->pagecnt_bias);
-
-		rx_bi->page = NULL;
-		rx_bi->page_offset = 0;
+		__free_pages(page, iavf_rx_pg_order(rx_ring));
 	}
 
-	bi_size = sizeof(struct iavf_rx_buffer) * rx_ring->count;
-	memset(rx_ring->rx_bi, 0, bi_size);
-
-	/* Zero out the descriptor ring */
-	memset(rx_ring->desc, 0, rx_ring->size);
-
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
 }
@@ -749,8 +741,8 @@ void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 void iavf_free_rx_resources(struct iavf_ring *rx_ring)
 {
 	iavf_clean_rx_ring(rx_ring);
-	kfree(rx_ring->rx_bi);
-	rx_ring->rx_bi = NULL;
+	kfree(rx_ring->rx_pages);
+	rx_ring->rx_pages = NULL;
 
 	if (rx_ring->desc) {
 		dma_free_coherent(rx_ring->dev, rx_ring->size,
@@ -768,14 +760,13 @@ void iavf_free_rx_resources(struct iavf_ring *rx_ring)
 int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 {
 	struct device *dev = rx_ring->dev;
-	int bi_size;
 
 	/* warn if we are about to overwrite the pointer */
-	WARN_ON(rx_ring->rx_bi);
-	bi_size = sizeof(struct iavf_rx_buffer) * rx_ring->count;
-	rx_ring->rx_bi = kzalloc(bi_size, GFP_KERNEL);
-	if (!rx_ring->rx_bi)
-		goto err;
+	WARN_ON(rx_ring->rx_pages);
+	rx_ring->rx_pages = kcalloc(rx_ring->count, sizeof(*rx_ring->rx_pages),
+				    GFP_KERNEL);
+	if (!rx_ring->rx_pages)
+		return -ENOMEM;
 
 	u64_stats_init(&rx_ring->syncp);
 
@@ -796,8 +787,9 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 
 	return 0;
 err:
-	kfree(rx_ring->rx_bi);
-	rx_ring->rx_bi = NULL;
+	kfree(rx_ring->rx_pages);
+	rx_ring->rx_pages = NULL;
+
 	return -ENOMEM;
 }
 
@@ -820,36 +812,23 @@ static inline void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
 }
 
 /**
- * iavf_alloc_mapped_page - recycle or make a new page
- * @rx_ring: ring to use
- * @bi: rx_buffer struct to modify
+ * iavf_alloc_mapped_page - allocate and map a new page
  * @dev: device used for DMA mapping
  * @order: page order to allocate
  * @gfp: GFP mask to allocate page
  *
- * Returns true if the page was successfully allocated or
- * reused.
+ * Returns a new &page if the it was successfully allocated, %NULL otherwise.
  **/
-static bool iavf_alloc_mapped_page(struct iavf_ring *rx_ring,
-				   struct iavf_rx_buffer *bi,
-				   struct device *dev, u32 order,
-				   gfp_t gfp)
+static struct page *iavf_alloc_mapped_page(struct device *dev, u32 order,
+					   gfp_t gfp)
 {
-	struct page *page = bi->page;
+	struct page *page;
 	dma_addr_t dma;
 
-	/* since we are recycling buffers we should seldom need to alloc */
-	if (likely(page)) {
-		rx_ring->rx_stats.page_reuse_count++;
-		return true;
-	}
-
 	/* alloc new page for storage */
 	page = __dev_alloc_pages(gfp, order);
-	if (unlikely(!page)) {
-		rx_ring->rx_stats.alloc_page_failed++;
-		return false;
-	}
+	if (unlikely(!page))
+		return NULL;
 
 	/* map page for use */
 	dma = dma_map_page_attrs(dev, page, 0, PAGE_SIZE << order,
@@ -860,18 +839,12 @@ static bool iavf_alloc_mapped_page(struct iavf_ring *rx_ring,
 	 */
 	if (dma_mapping_error(dev, dma)) {
 		__free_pages(page, order);
-		rx_ring->rx_stats.alloc_page_failed++;
-		return false;
+		return NULL;
 	}
 
-	bi->dma = dma;
-	bi->page = page;
-	bi->page_offset = IAVF_SKB_PAD;
-
-	/* initialize pagecnt_bias to 1 representing we fully own page */
-	bi->pagecnt_bias = 1;
+	page_pool_set_dma_addr(page, dma);
 
-	return true;
+	return page;
 }
 
 /**
@@ -896,7 +869,7 @@ static void iavf_receive_skb(struct iavf_ring *rx_ring,
 }
 
 /**
- * __iavf_alloc_rx_buffers - Replace used receive buffers
+ * __iavf_alloc_rx_pages - Replace used receive pages
  * @rx_ring: ring to place buffers on
  * @to_refill: number of buffers to replace
  * @gfp: GFP mask to allocate pages
@@ -904,42 +877,47 @@ static void iavf_receive_skb(struct iavf_ring *rx_ring,
  * Returns 0 if all allocations were successful or the number of buffers left
  * to refill in case of an allocation failure.
  **/
-static u32 __iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u32 to_refill,
-				   gfp_t gfp)
+static u32 __iavf_alloc_rx_pages(struct iavf_ring *rx_ring, u32 to_refill,
+				 gfp_t gfp)
 {
 	u32 order = iavf_rx_pg_order(rx_ring);
 	struct device *dev = rx_ring->dev;
 	u32 ntu = rx_ring->next_to_use;
 	union iavf_rx_desc *rx_desc;
-	struct iavf_rx_buffer *bi;
 
 	/* do nothing if no valid netdev defined */
 	if (unlikely(!rx_ring->netdev || !to_refill))
 		return 0;
 
 	rx_desc = IAVF_RX_DESC(rx_ring, ntu);
-	bi = &rx_ring->rx_bi[ntu];
 
 	do {
-		if (!iavf_alloc_mapped_page(rx_ring, bi, dev, order, gfp))
+		struct page *page;
+		dma_addr_t dma;
+
+		page = iavf_alloc_mapped_page(dev, order, gfp);
+		if (!page) {
+			rx_ring->rx_stats.alloc_page_failed++;
 			break;
+		}
+
+		rx_ring->rx_pages[ntu] = page;
+		dma = page_pool_get_dma_addr(page);
 
 		/* sync the buffer for use by the device */
-		dma_sync_single_range_for_device(dev, bi->dma, bi->page_offset,
+		dma_sync_single_range_for_device(dev, dma, IAVF_SKB_PAD,
 						 rx_ring->rx_buf_len,
 						 DMA_FROM_DEVICE);
 
 		/* Refresh the desc even if buffer_addrs didn't change
 		 * because each write-back erases this info.
 		 */
-		rx_desc->read.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);
+		rx_desc->read.pkt_addr = cpu_to_le64(dma + IAVF_SKB_PAD);
 
 		rx_desc++;
-		bi++;
 		ntu++;
 		if (unlikely(ntu == rx_ring->count)) {
 			rx_desc = IAVF_RX_DESC(rx_ring, 0);
-			bi = rx_ring->rx_bi;
 			ntu = 0;
 		}
 
@@ -953,9 +931,9 @@ static u32 __iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u32 to_refill,
 	return to_refill;
 }
 
-void iavf_alloc_rx_buffers(struct iavf_ring *rxr)
+void iavf_alloc_rx_pages(struct iavf_ring *rxr)
 {
-	__iavf_alloc_rx_buffers(rxr, IAVF_DESC_UNUSED(rxr), GFP_KERNEL);
+	__iavf_alloc_rx_pages(rxr, IAVF_DESC_UNUSED(rxr), GFP_KERNEL);
 }
 
 /**
@@ -1100,80 +1078,20 @@ static bool iavf_cleanup_headers(struct iavf_ring *rx_ring, struct sk_buff *skb)
 	return false;
 }
 
-/**
- * iavf_can_reuse_rx_page - Determine if this page can be reused by
- * the adapter for another receive
- *
- * @rx_buffer: buffer containing the page
- *
- * If page is reusable, rx_buffer->page_offset is adjusted to point to
- * an unused region in the page.
- *
- * For small pages, @truesize will be a constant value, half the size
- * of the memory at page.  We'll attempt to alternate between high and
- * low halves of the page, with one half ready for use by the hardware
- * and the other half being consumed by the stack.  We use the page
- * ref count to determine whether the stack has finished consuming the
- * portion of this page that was passed up with a previous packet.  If
- * the page ref count is >1, we'll assume the "other" half page is
- * still busy, and this page cannot be reused.
- *
- * For larger pages, @truesize will be the actual space used by the
- * received packet (adjusted upward to an even multiple of the cache
- * line size).  This will advance through the page by the amount
- * actually consumed by the received packets while there is still
- * space for a buffer.  Each region of larger pages will be used at
- * most once, after which the page will not be reused.
- *
- * In either case, if the page is reusable its refcount is increased.
- **/
-static bool iavf_can_reuse_rx_page(struct iavf_rx_buffer *rx_buffer)
-{
-	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
-	struct page *page = rx_buffer->page;
-
-	/* Is any reuse possible? */
-	if (!dev_page_is_reusable(page))
-		return false;
-
-#if (PAGE_SIZE < 8192)
-	/* if we are only owner of page we can reuse it */
-	if (unlikely((page_count(page) - pagecnt_bias) > 1))
-		return false;
-#else
-#define IAVF_LAST_OFFSET \
-	(SKB_WITH_OVERHEAD(PAGE_SIZE) - IAVF_RXBUFFER_2048)
-	if (rx_buffer->page_offset > IAVF_LAST_OFFSET)
-		return false;
-#endif
-
-	/* If we have drained the page fragment pool we need to update
-	 * the pagecnt_bias and page count so that we fully restock the
-	 * number of references the driver holds.
-	 */
-	if (unlikely(!pagecnt_bias)) {
-		page_ref_add(page, USHRT_MAX);
-		rx_buffer->pagecnt_bias = USHRT_MAX;
-	}
-
-	return true;
-}
-
 /**
  * iavf_add_rx_frag - Add contents of Rx buffer to sk_buff
  * @skb: sk_buff to place the data into
- * @rx_buffer: buffer containing page to add
+ * @page: page containing data to add
  * @size: packet length from rx_desc
  * @pg_size: Rx buffer page size
  *
- * This function will add the data contained in rx_buffer->page to the skb.
+ * This function will add the data contained in page to the skb.
  * It will just attach the page as a frag to the skb.
  *
  * The function will then update the page offset.
  **/
-static void iavf_add_rx_frag(struct sk_buff *skb,
-			     struct iavf_rx_buffer *rx_buffer,
-			     u32 size, u32 pg_size)
+static void iavf_add_rx_frag(struct sk_buff *skb, struct page *page, u32 size,
+			     u32 pg_size)
 {
 #if (PAGE_SIZE < 8192)
 	unsigned int truesize = pg_size / 2;
@@ -1181,46 +1099,34 @@ static void iavf_add_rx_frag(struct sk_buff *skb,
 	unsigned int truesize = SKB_DATA_ALIGN(size + IAVF_SKB_PAD);
 #endif
 
-	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buffer->page,
-			rx_buffer->page_offset, size, truesize);
-
-	/* page is being used so we must update the page offset */
-#if (PAGE_SIZE < 8192)
-	rx_buffer->page_offset ^= truesize;
-#else
-	rx_buffer->page_offset += truesize;
-#endif
-
-	/* We have pulled a buffer for use, so decrement pagecnt_bias */
-	rx_buffer->pagecnt_bias--;
+	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page, IAVF_SKB_PAD,
+			size, truesize);
 }
 
 /**
- * iavf_sync_rx_buffer - Synchronize received data for use
+ * iavf_sync_rx_page - Synchronize received data for use
  * @dev: device used for DMA mapping
- * @buf: Rx buffer containing the data
+ * @page: Rx page containing the data
  * @size: size of the received data
  *
  * This function will synchronize the Rx buffer for use by the CPU.
  */
-static void iavf_sync_rx_buffer(struct device *dev, struct iavf_rx_buffer *buf,
-				u32 size)
+static void iavf_sync_rx_page(struct device *dev, struct page *page, u32 size)
 {
-	dma_sync_single_range_for_cpu(dev, buf->dma, buf->page_offset, size,
-				      DMA_FROM_DEVICE);
+	dma_sync_single_range_for_cpu(dev, page_pool_get_dma_addr(page),
+				      IAVF_SKB_PAD, size, DMA_FROM_DEVICE);
 }
 
 /**
  * iavf_build_skb - Build skb around an existing buffer
- * @rx_buffer: Rx buffer with the data
+ * @page: Rx page to with the data
  * @size: size of the data
  * @pg_size: size of the Rx page
  *
  * This function builds an skb around an existing Rx buffer, taking care
  * to set up the skb correctly and avoid any memcpy overhead.
  */
-static struct sk_buff *iavf_build_skb(struct iavf_rx_buffer *rx_buffer,
-				      u32 size, u32 pg_size)
+static struct sk_buff *iavf_build_skb(struct page *page, u32 size, u32 pg_size)
 {
 	void *va;
 #if (PAGE_SIZE < 8192)
@@ -1232,11 +1138,11 @@ static struct sk_buff *iavf_build_skb(struct iavf_rx_buffer *rx_buffer,
 	struct sk_buff *skb;
 
 	/* prefetch first cache line of first page */
-	va = page_address(rx_buffer->page) + rx_buffer->page_offset;
-	net_prefetch(va);
+	va = page_address(page);
+	net_prefetch(va + IAVF_SKB_PAD);
 
 	/* build an skb around the page buffer */
-	skb = napi_build_skb(va - IAVF_SKB_PAD, truesize);
+	skb = napi_build_skb(va, truesize);
 	if (unlikely(!skb))
 		return NULL;
 
@@ -1244,42 +1150,21 @@ static struct sk_buff *iavf_build_skb(struct iavf_rx_buffer *rx_buffer,
 	skb_reserve(skb, IAVF_SKB_PAD);
 	__skb_put(skb, size);
 
-	/* buffer is used by skb, update page_offset */
-#if (PAGE_SIZE < 8192)
-	rx_buffer->page_offset ^= truesize;
-#else
-	rx_buffer->page_offset += truesize;
-#endif
-
-	rx_buffer->pagecnt_bias--;
-
 	return skb;
 }
 
 /**
- * iavf_put_rx_buffer - Recycle or free used buffer
- * @rx_ring: rx descriptor ring to transact packets on
+ * iavf_unmap_rx_page - Unmap used page
  * @dev: device used for DMA mapping
- * @rx_buffer: Rx buffer to handle
+ * @page: page to release
  * @pg_size: Rx page size
- *
- * Either recycle the buffer if possible or unmap and free the page.
  */
-static void iavf_put_rx_buffer(struct iavf_ring *rx_ring, struct device *dev,
-			       struct iavf_rx_buffer *rx_buffer, u32 pg_size)
+static void iavf_unmap_rx_page(struct device *dev, struct page *page,
+			       u32 pg_size)
 {
-	if (iavf_can_reuse_rx_page(rx_buffer)) {
-		rx_ring->rx_stats.page_reuse_count++;
-		return;
-	}
-
-	/* we are not reusing the buffer so unmap it */
-	dma_unmap_page_attrs(dev, rx_buffer->dma, pg_size,
+	dma_unmap_page_attrs(dev, page_pool_get_dma_addr(page), pg_size,
 			     DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
-	__page_frag_cache_drain(rx_buffer->page, rx_buffer->pagecnt_bias);
-
-	/* clear contents of buffer_info */
-	rx_buffer->page = NULL;
+	page_pool_set_dma_addr(page, 0);
 }
 
 /**
@@ -1332,8 +1217,8 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 	u32 cleaned_count = 0;
 
 	while (likely(cleaned_count < budget)) {
-		struct iavf_rx_buffer *rx_buffer;
 		union iavf_rx_desc *rx_desc;
+		struct page *page;
 		unsigned int size;
 		u16 vlan_tag = 0;
 		u8 rx_ptype;
@@ -1341,8 +1226,8 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
 		/* return some buffers to hardware, one at a time is too slow */
 		if (to_refill >= IAVF_RX_BUFFER_WRITE)
-			to_refill = __iavf_alloc_rx_buffers(rx_ring, to_refill,
-							    gfp);
+			to_refill = __iavf_alloc_rx_pages(rx_ring, to_refill,
+							  gfp);
 
 		rx_desc = IAVF_RX_DESC(rx_ring, ntc);
 
@@ -1366,32 +1251,37 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		       IAVF_RXD_QW1_LENGTH_PBUF_SHIFT;
 
 		iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
-		rx_buffer = &rx_ring->rx_bi[ntc];
+
+		page = rx_ring->rx_pages[ntc];
+		rx_ring->rx_pages[ntc] = NULL;
 
 		/* Very rare, but possible case. The most common reason:
 		 * the last fragment contained FCS only, which was then
 		 * stripped by the HW.
 		 */
-		if (unlikely(!size))
+		if (unlikely(!size)) {
+			iavf_unmap_rx_page(dev, page, pg_size);
+			__free_pages(page, get_order(pg_size));
 			goto skip_data;
+		}
 
-		iavf_sync_rx_buffer(dev, rx_buffer, size);
+		iavf_sync_rx_page(dev, page, size);
+		iavf_unmap_rx_page(dev, page, pg_size);
 
 		/* retrieve a buffer from the ring */
 		if (skb)
-			iavf_add_rx_frag(skb, rx_buffer, size, pg_size);
+			iavf_add_rx_frag(skb, page, size, pg_size);
 		else
-			skb = iavf_build_skb(rx_buffer, size, pg_size);
+			skb = iavf_build_skb(page, size, pg_size);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
+			__free_pages(page, get_order(pg_size));
 			rx_ring->rx_stats.alloc_buff_failed++;
 			break;
 		}
 
 skip_data:
-		iavf_put_rx_buffer(rx_ring, dev, rx_buffer, pg_size);
-
 		cleaned_count++;
 		to_refill++;
 		if (unlikely(++ntc == ring_size))
@@ -1448,7 +1338,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 	rx_ring->skb = skb;
 
 	if (to_refill >= IAVF_RX_BUFFER_WRITE) {
-		to_refill = __iavf_alloc_rx_buffers(rx_ring, to_refill, gfp);
+		to_refill = __iavf_alloc_rx_pages(rx_ring, to_refill, gfp);
 		/* guarantee a trip back through this routine if there was
 		 * a failure
 		 */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 9c6661a6edf2..c09ac580fe84 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -272,17 +272,6 @@ struct iavf_tx_buffer {
 	u32 tx_flags;
 };
 
-struct iavf_rx_buffer {
-	dma_addr_t dma;
-	struct page *page;
-#if (BITS_PER_LONG > 32) || (PAGE_SIZE >= 65536)
-	__u32 page_offset;
-#else
-	__u16 page_offset;
-#endif
-	__u16 pagecnt_bias;
-};
-
 struct iavf_queue_stats {
 	u64 packets;
 	u64 bytes;
@@ -302,8 +291,6 @@ struct iavf_rx_queue_stats {
 	u64 non_eop_descs;
 	u64 alloc_page_failed;
 	u64 alloc_buff_failed;
-	u64 page_reuse_count;
-	u64 realloc_count;
 };
 
 enum iavf_ring_state_t {
@@ -331,7 +318,7 @@ struct iavf_ring {
 	struct net_device *netdev;	/* netdev ring maps to */
 	union {
 		struct iavf_tx_buffer *tx_bi;
-		struct iavf_rx_buffer *rx_bi;
+		struct page **rx_pages;
 	};
 	DECLARE_BITMAP(state, __IAVF_RING_STATE_NBITS);
 	u16 queue_index;		/* Queue number of ring */
@@ -425,7 +412,7 @@ static inline unsigned int iavf_rx_pg_order(struct iavf_ring *ring)
 
 #define iavf_rx_pg_size(_ring) (PAGE_SIZE << iavf_rx_pg_order(_ring))
 
-void iavf_alloc_rx_buffers(struct iavf_ring *rxr);
+void iavf_alloc_rx_pages(struct iavf_ring *rxr);
 netdev_tx_t iavf_xmit_frame(struct sk_buff *skb, struct net_device *netdev);
 void iavf_clean_tx_ring(struct iavf_ring *tx_ring);
 void iavf_clean_rx_ring(struct iavf_ring *rx_ring);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

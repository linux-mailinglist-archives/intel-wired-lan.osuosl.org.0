Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4919B716613
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 17:05:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6AAE83D0C;
	Tue, 30 May 2023 15:05:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6AAE83D0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685459100;
	bh=OsXZI8m2YmkAHMg335JWRzuAFHBgRiMrmhRdvYUIiSc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uVauPvJxPsxgTZT5Hratuiafw2GW1Rh50qeh6A44cpaLWDY9Ywr60Nj98TyrWq96j
	 mKczRP+FXVTV1snfpOqHDzp+a9EFQffx3wI8/r90U0TKg2g1El+6VIzCGbRMSBrgBo
	 z+fpYGm2QnFOxYfdwmvVHiRE78sWMmP4iqWuC9YMjlFYS38Io6cB8QkgUQKi3yhKpq
	 WB4Jopp7ECoW5672b2SvljKEQhA5zQj6Kxzy8IiSs719hFp4pXLfP0Dt+e67uOf+dB
	 4ERlFthbVwiNMiSfKwQt8GKLjvGBtGsLHMv+vTJw3mOKGPAJEF3DAVLd1Vc3ltiEgK
	 fPlZ13ibcBdBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LXGKXwV7zTdf; Tue, 30 May 2023 15:04:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 289BB81FD4;
	Tue, 30 May 2023 15:04:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 289BB81FD4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD4771BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A407740901
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A407740901
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TpleVi3U2a3s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 15:04:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6367540574
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6367540574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358192598"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="358192598"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 08:03:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="796304200"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="796304200"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by FMSMGA003.fm.intel.com with ESMTP; 30 May 2023 08:03:38 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 30 May 2023 17:00:32 +0200
Message-Id: <20230530150035.1943669-10-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
References: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685459078; x=1716995078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ih4pWia4593lfLBI9RUCclowfWqTc2GsQI8Csct9dig=;
 b=Voa0KUJzPTv/5XZAaKClO6d8Sv4LkJa6W+qM3JE2YibikhD8C6R817KJ
 C4vLFZsqDoRATG9xYPkQwRcICVj0geERfw6RJx11VQ23EPHmyUBRpmMtQ
 SYBaU36v13rON7hhYwrhfQJYn6ESoHI8EBbicApx5yaEqBLwBTfuFh3Fu
 LCeO8FmwgvXDG0HmSRKoJX67EmJ+MrUZEZMQ09trgKlIzUn14tFyL4tgE
 OB0Q9GQaP0sa+4iqBWF1IyTRrKYffoIPw52vC2HG/wikAcYlPe3UKVm6b
 ehJQryzVIReJJrxqofW3bM5E25e2WWmuRs4scKkfG+pn7CAtlU2AHFCZV
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Voa0KUJz
Subject: [Intel-wired-lan] [PATCH net-next v3 09/12] iavf: switch to Page
 Pool
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

Now that the IAVF driver simply uses dev_alloc_page() + free_page() with
no custom recycling logics and one whole page per frame, it can easily
be switched to using Page Pool API instead.
Introduce libie_rx_page_pool_create(), a wrapper for creating a PP with
the default libie settings applicable to all Intel hardware, and replace
the alloc/free calls with the corresponding PP functions, including the
newly added sync-for-CPU helpers. Use skb_mark_for_recycle() to bring
back the recycling and restore the initial performance.

From the important object code changes, worth mentioning that
__iavf_alloc_rx_pages() is now inlined due to the greatly reduced size.
The resulting driver is on par with the pre-series code and 1-2% slower
than the "optimized" version right before the recycling removal.
But the number of locs and object code bytes slaughtered is much more
important here after all, not speaking of that there's still a vast
space for optimization and improvements.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/Kconfig          |   1 +
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 126 +++++---------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h |   8 +-
 drivers/net/ethernet/intel/libie/rx.c       |  28 +++++
 include/linux/net/intel/libie/rx.h          |   5 +-
 5 files changed, 69 insertions(+), 99 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index cec4a938fbd0..a368afc42b8d 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -86,6 +86,7 @@ config E1000E_HWTS
 
 config LIBIE
 	tristate
+	select PAGE_POOL
 	help
 	  libie (Intel Ethernet library) is a common library containing
 	  routines shared by several Intel Ethernet drivers.
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index c33a3d681c83..1de67a70f045 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -3,7 +3,6 @@
 
 #include <linux/net/intel/libie/rx.h>
 #include <linux/prefetch.h>
-#include <net/page_pool.h>
 
 #include "iavf.h"
 #include "iavf_trace.h"
@@ -691,8 +690,6 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
  **/
 void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 {
-	u16 i;
-
 	/* ring already cleared, nothing to do */
 	if (!rx_ring->rx_pages)
 		return;
@@ -703,28 +700,17 @@ void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 	}
 
 	/* Free all the Rx ring sk_buffs */
-	for (i = 0; i < rx_ring->count; i++) {
+	for (u32 i = 0; i < rx_ring->count; i++) {
 		struct page *page = rx_ring->rx_pages[i];
-		dma_addr_t dma;
 
 		if (!page)
 			continue;
 
-		dma = page_pool_get_dma_addr(page);
-
 		/* Invalidate cache lines that may have been written to by
 		 * device so that we avoid corrupting memory.
 		 */
-		dma_sync_single_range_for_cpu(rx_ring->dev, dma,
-					      LIBIE_SKB_HEADROOM,
-					      LIBIE_RX_BUF_LEN,
-					      DMA_FROM_DEVICE);
-
-		/* free resources associated with mapping */
-		dma_unmap_page_attrs(rx_ring->dev, dma, LIBIE_RX_TRUESIZE,
-				     DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
-
-		__free_page(page);
+		page_pool_dma_sync_full_for_cpu(rx_ring->pool, page);
+		page_pool_put_full_page(rx_ring->pool, page, false);
 	}
 
 	rx_ring->next_to_clean = 0;
@@ -739,10 +725,15 @@ void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
  **/
 void iavf_free_rx_resources(struct iavf_ring *rx_ring)
 {
+	struct device *dev = rx_ring->pool->p.dev;
+
 	iavf_clean_rx_ring(rx_ring);
 	kfree(rx_ring->rx_pages);
 	rx_ring->rx_pages = NULL;
 
+	page_pool_destroy(rx_ring->pool);
+	rx_ring->dev = dev;
+
 	if (rx_ring->desc) {
 		dma_free_coherent(rx_ring->dev, rx_ring->size,
 				  rx_ring->desc, rx_ring->dma);
@@ -759,13 +750,15 @@ void iavf_free_rx_resources(struct iavf_ring *rx_ring)
 int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 {
 	struct device *dev = rx_ring->dev;
+	struct page_pool *pool;
+	int ret = -ENOMEM;
 
 	/* warn if we are about to overwrite the pointer */
 	WARN_ON(rx_ring->rx_pages);
 	rx_ring->rx_pages = kcalloc(rx_ring->count, sizeof(*rx_ring->rx_pages),
 				    GFP_KERNEL);
 	if (!rx_ring->rx_pages)
-		return -ENOMEM;
+		return ret;
 
 	u64_stats_init(&rx_ring->syncp);
 
@@ -781,15 +774,27 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 		goto err;
 	}
 
+	pool = libie_rx_page_pool_create(&rx_ring->q_vector->napi,
+					 rx_ring->count);
+	if (IS_ERR(pool)) {
+		ret = PTR_ERR(pool);
+		goto err_free_dma;
+	}
+
+	rx_ring->pool = pool;
+
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
 
 	return 0;
+
+err_free_dma:
+	dma_free_coherent(dev, rx_ring->size, rx_ring->desc, rx_ring->dma);
 err:
 	kfree(rx_ring->rx_pages);
 	rx_ring->rx_pages = NULL;
 
-	return -ENOMEM;
+	return ret;
 }
 
 /**
@@ -810,40 +815,6 @@ static inline void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
 	writel(val, rx_ring->tail);
 }
 
-/**
- * iavf_alloc_mapped_page - allocate and map a new page
- * @dev: device used for DMA mapping
- * @gfp: GFP mask to allocate page
- *
- * Returns a new &page if the it was successfully allocated, %NULL otherwise.
- **/
-static struct page *iavf_alloc_mapped_page(struct device *dev, gfp_t gfp)
-{
-	struct page *page;
-	dma_addr_t dma;
-
-	/* alloc new page for storage */
-	page = __dev_alloc_page(gfp);
-	if (unlikely(!page))
-		return NULL;
-
-	/* map page for use */
-	dma = dma_map_page_attrs(dev, page, 0, PAGE_SIZE, DMA_FROM_DEVICE,
-				 IAVF_RX_DMA_ATTR);
-
-	/* if mapping failed free memory back to system since
-	 * there isn't much point in holding memory we can't use
-	 */
-	if (dma_mapping_error(dev, dma)) {
-		__free_page(page);
-		return NULL;
-	}
-
-	page_pool_set_dma_addr(page, dma);
-
-	return page;
-}
-
 /**
  * iavf_receive_skb - Send a completed packet up the stack
  * @rx_ring:  rx ring in play
@@ -877,7 +848,7 @@ static void iavf_receive_skb(struct iavf_ring *rx_ring,
 static u32 __iavf_alloc_rx_pages(struct iavf_ring *rx_ring, u32 to_refill,
 				 gfp_t gfp)
 {
-	struct device *dev = rx_ring->dev;
+	struct page_pool *pool = rx_ring->pool;
 	u32 ntu = rx_ring->next_to_use;
 	union iavf_rx_desc *rx_desc;
 
@@ -891,7 +862,7 @@ static u32 __iavf_alloc_rx_pages(struct iavf_ring *rx_ring, u32 to_refill,
 		struct page *page;
 		dma_addr_t dma;
 
-		page = iavf_alloc_mapped_page(dev, gfp);
+		page = page_pool_alloc_pages(pool, gfp);
 		if (!page) {
 			rx_ring->rx_stats.alloc_page_failed++;
 			break;
@@ -900,11 +871,6 @@ static u32 __iavf_alloc_rx_pages(struct iavf_ring *rx_ring, u32 to_refill,
 		rx_ring->rx_pages[ntu] = page;
 		dma = page_pool_get_dma_addr(page);
 
-		/* sync the buffer for use by the device */
-		dma_sync_single_range_for_device(dev, dma, LIBIE_SKB_HEADROOM,
-						 LIBIE_RX_BUF_LEN,
-						 DMA_FROM_DEVICE);
-
 		/* Refresh the desc even if buffer_addrs didn't change
 		 * because each write-back erases this info.
 		 */
@@ -1091,21 +1057,6 @@ static void iavf_add_rx_frag(struct sk_buff *skb, struct page *page, u32 size)
 			LIBIE_SKB_HEADROOM, size, LIBIE_RX_TRUESIZE);
 }
 
-/**
- * iavf_sync_rx_page - Synchronize received data for use
- * @dev: device used for DMA mapping
- * @page: Rx page containing the data
- * @size: size of the received data
- *
- * This function will synchronize the Rx buffer for use by the CPU.
- */
-static void iavf_sync_rx_page(struct device *dev, struct page *page, u32 size)
-{
-	dma_sync_single_range_for_cpu(dev, page_pool_get_dma_addr(page),
-				      LIBIE_SKB_HEADROOM, size,
-				      DMA_FROM_DEVICE);
-}
-
 /**
  * iavf_build_skb - Build skb around an existing buffer
  * @page: Rx page to with the data
@@ -1128,6 +1079,8 @@ static struct sk_buff *iavf_build_skb(struct page *page, u32 size)
 	if (unlikely(!skb))
 		return NULL;
 
+	skb_mark_for_recycle(skb);
+
 	/* update pointers within the skb to store the data */
 	skb_reserve(skb, LIBIE_SKB_HEADROOM);
 	__skb_put(skb, size);
@@ -1135,19 +1088,6 @@ static struct sk_buff *iavf_build_skb(struct page *page, u32 size)
 	return skb;
 }
 
-/**
- * iavf_unmap_rx_page - Unmap used page
- * @dev: device used for DMA mapping
- * @page: page to release
- */
-static void iavf_unmap_rx_page(struct device *dev, struct page *page)
-{
-	dma_unmap_page_attrs(dev, page_pool_get_dma_addr(page),
-			     LIBIE_RX_TRUESIZE, DMA_FROM_DEVICE,
-			     IAVF_RX_DMA_ATTR);
-	page_pool_set_dma_addr(page, 0);
-}
-
 /**
  * iavf_is_non_eop - process handling of non-EOP buffers
  * @rx_ring: Rx ring being processed
@@ -1190,8 +1130,8 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 	const gfp_t gfp = GFP_ATOMIC | __GFP_NOWARN;
 	u32 to_refill = IAVF_DESC_UNUSED(rx_ring);
+	struct page_pool *pool = rx_ring->pool;
 	struct sk_buff *skb = rx_ring->skb;
-	struct device *dev = rx_ring->dev;
 	u32 ntc = rx_ring->next_to_clean;
 	u32 ring_size = rx_ring->count;
 	u32 cleaned_count = 0;
@@ -1240,13 +1180,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		 * stripped by the HW.
 		 */
 		if (unlikely(!size)) {
-			iavf_unmap_rx_page(dev, page);
-			__free_page(page);
+			page_pool_recycle_direct(pool, page);
 			goto skip_data;
 		}
 
-		iavf_sync_rx_page(dev, page, size);
-		iavf_unmap_rx_page(dev, page);
+		page_pool_dma_sync_for_cpu(pool, page, size);
 
 		/* retrieve a buffer from the ring */
 		if (skb)
@@ -1256,7 +1194,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
-			__free_page(page);
+			page_pool_put_page(pool, page, size, true);
 			rx_ring->rx_stats.alloc_buff_failed++;
 			break;
 		}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 1421e90c7c4e..8fbe549ce6a5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -83,9 +83,6 @@ enum iavf_dyn_idx_t {
 
 #define iavf_rx_desc iavf_32byte_rx_desc
 
-#define IAVF_RX_DMA_ATTR \
-	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
-
 /**
  * iavf_test_staterr - tests bits in Rx descriptor status and error fields
  * @rx_desc: pointer to receive descriptor (in le64 format)
@@ -240,7 +237,10 @@ struct iavf_rx_queue_stats {
 struct iavf_ring {
 	struct iavf_ring *next;		/* pointer to next ring in q_vector */
 	void *desc;			/* Descriptor ring memory */
-	struct device *dev;		/* Used for DMA mapping */
+	union {
+		struct page_pool *pool;	/* Used for Rx page management */
+		struct device *dev;	/* Used for DMA mapping on Tx */
+	};
 	struct net_device *netdev;	/* netdev ring maps to */
 	union {
 		struct iavf_tx_buffer *tx_bi;
diff --git a/drivers/net/ethernet/intel/libie/rx.c b/drivers/net/ethernet/intel/libie/rx.c
index f503476d8eef..d68eab76593c 100644
--- a/drivers/net/ethernet/intel/libie/rx.c
+++ b/drivers/net/ethernet/intel/libie/rx.c
@@ -105,6 +105,34 @@ const struct libie_rx_ptype_parsed libie_rx_ptype_lut[LIBIE_RX_PTYPE_NUM] = {
 };
 EXPORT_SYMBOL_NS_GPL(libie_rx_ptype_lut, LIBIE);
 
+/* Page Pool */
+
+/**
+ * libie_rx_page_pool_create - create a PP with the default libie settings
+ * @napi: &napi_struct covering this PP (no usage outside its poll loops)
+ * @size: size of the PP, usually simply Rx queue len
+ *
+ * Returns &page_pool on success, casted -errno on failure.
+ */
+struct page_pool *libie_rx_page_pool_create(struct napi_struct *napi,
+					    u32 size)
+{
+	const struct page_pool_params pp = {
+		.flags		= PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
+		.order		= LIBIE_RX_PAGE_ORDER,
+		.pool_size	= size,
+		.nid		= NUMA_NO_NODE,
+		.dev		= napi->dev->dev.parent,
+		.napi		= napi,
+		.dma_dir	= DMA_FROM_DEVICE,
+		.max_len	= LIBIE_RX_BUF_LEN,
+		.offset		= LIBIE_SKB_HEADROOM,
+	};
+
+	return page_pool_create(&pp);
+}
+EXPORT_SYMBOL_NS_GPL(libie_rx_page_pool_create, LIBIE);
+
 MODULE_AUTHOR("Intel Corporation");
 MODULE_DESCRIPTION("Intel(R) Ethernet common library");
 MODULE_LICENSE("GPL");
diff --git a/include/linux/net/intel/libie/rx.h b/include/linux/net/intel/libie/rx.h
index 3e8d0d5206e1..b86cadd281f1 100644
--- a/include/linux/net/intel/libie/rx.h
+++ b/include/linux/net/intel/libie/rx.h
@@ -5,7 +5,7 @@
 #define __LIBIE_RX_H
 
 #include <linux/if_vlan.h>
-#include <linux/netdevice.h>
+#include <net/page_pool.h>
 
 /* O(1) converting i40e/ice/iavf's 8/10-bit hardware packet type to a parsed
  * bitfield struct.
@@ -160,4 +160,7 @@ static inline void libie_skb_set_hash(struct sk_buff *skb, u32 hash,
 /* Maximum frame size minus LL overhead */
 #define LIBIE_MAX_MTU		(LIBIE_MAX_RX_FRM_LEN - LIBIE_RX_LL_LEN)
 
+struct page_pool *libie_rx_page_pool_create(struct napi_struct *napi,
+					    u32 size);
+
 #endif /* __LIBIE_RX_H */
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

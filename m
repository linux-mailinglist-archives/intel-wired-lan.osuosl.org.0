Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D483811002
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 12:31:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDF0181A5C;
	Wed, 13 Dec 2023 11:31:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDF0181A5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702467116;
	bh=5V5STZfRMPeeEezH7uhpgHM5AS1+Zg0rEcoh9hSJXVk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=50o+RIXz9J5A8uHVRgATsvzNq6sPfFHiRaTLK2GMpILCIqf/M/qvgk5FJNej2HLFH
	 7Z00Q1npyQodlGxv9i6IbDTAbOBfI+GtRb0IF+T0Fy/UI4NcOY7ILU/O2SCDy4qDE/
	 RYf9ZMetBJfN2PQ1Insms3alionq46O1s6y0UPUhMxKFi7QVXpjQ8iE1GiDC3vPC+p
	 /4JihoHxC39SiFjq/0ULT6EWxawxFHNrD0zsrBubCO8nFnuo2wWse54qrvmh5mXXrG
	 rXptLkeX0vqR2WIsIUTzSZoNDlUhLe01X/grc4K1m2C711V9PZ5wmDjVXPHntqnzTr
	 kPiGZdgSFCKlw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXHU3FnQpUP9; Wed, 13 Dec 2023 11:31:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0A4081AAC;
	Wed, 13 Dec 2023 11:31:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0A4081AAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 76EBC1BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4EFB841953
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:31:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EFB841953
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0IX7DIqjtCuE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 11:31:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D062440608
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:31:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D062440608
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="375104080"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="375104080"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 03:31:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="844279639"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="844279639"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga004.fm.intel.com with ESMTP; 13 Dec 2023 03:31:16 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 13 Dec 2023 12:28:33 +0100
Message-ID: <20231213112835.2262651-11-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213112835.2262651-1-aleksander.lobakin@intel.com>
References: <20231213112835.2262651-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702467080; x=1734003080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ndjMLP0ATBaaQi88qO65XNiR067IxjtKKqm0V198mNY=;
 b=Cn4u5MyBdXkw13pbJ4qbfMI+Spd9LBFoGdMg0m5iwSC4B9yteLUyJrQB
 PjIsP5p2zwY5yzuTB53drtijWDQkl1iFQT89+h97OZlvF02eVZg5Ljh/5
 SFkUbXMmv2Lw0CY86iEvc6a10ri9+wH+noseHC9QhQecatqD69FaYkWXA
 L08QtA7gbMXXR58wVuudl0vAfdO36Pgfzd6GsrsZyAFVyK0a+VQFfbYf5
 3BIqZiVsdSjd+PB5v7NMa5J162mAxgzRV/euQXKmw2jClwujBq94owkj+
 6OF/0Ux+F/7KMjamzNgLk1e7OsNmlKai0K4LtQT1NRnTCagxZBhuEnnHN
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cn4u5MyB
Subject: [Intel-wired-lan] [PATCH net-next v7 10/12] iavf: switch to Page
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
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now that the IAVF driver simply uses dev_alloc_page() + free_page() with
no custom recycling logics, it can easily be switched to using Page
Pool / libie API instead.
This allows to removing the whole dancing around headroom, HW buffer
size, and page order. All DMA-for-device is now done in the PP core,
for-CPU -- in the libie helper.
Use skb_mark_for_recycle() to bring back the recycling and restore the
performance. Speaking of performance: on par with the baseline and
faster with the PP optimization series applied. But the memory usage for
1500b MTU is now almost 2x lower (x86_64) thanks to allocating a page
every second descriptor.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   7 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 246 ++++++------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  34 +--
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  10 +-
 4 files changed, 92 insertions(+), 205 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 060002d1ebf0..0becfdf2ed99 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
+#include <linux/net/intel/libie/rx.h>
+
 #include "iavf.h"
 #include "iavf_prototype.h"
 /* All iavf tracepoints are defined by the include below, which must
@@ -1605,7 +1607,6 @@ static int iavf_alloc_queues(struct iavf_adapter *adapter)
 		rx_ring = &adapter->rx_rings[i];
 		rx_ring->queue_index = i;
 		rx_ring->netdev = adapter->netdev;
-		rx_ring->dev = &adapter->pdev->dev;
 		rx_ring->count = adapter->rx_desc_count;
 		rx_ring->itr_setting = IAVF_ITR_RX_DEF;
 	}
@@ -2637,9 +2638,9 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 	iavf_set_ethtool_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
 
-	/* MTU range: 68 - 9710 */
+	/* MTU range: 68 - 16356 */
 	netdev->min_mtu = ETH_MIN_MTU;
-	netdev->max_mtu = IAVF_MAX_RXBUFFER - IAVF_PACKET_HDR_PAD;
+	netdev->max_mtu = LIBIE_MAX_MTU;
 
 	if (!is_valid_ether_addr(adapter->hw.mac.addr)) {
 		dev_info(&pdev->dev, "Invalid MAC address %pM, using random\n",
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 62f976d322ab..aa86a0f926c6 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -689,9 +689,6 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
  **/
 static void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 {
-	unsigned long bi_size;
-	u16 i;
-
 	/* ring already cleared, nothing to do */
 	if (!rx_ring->rx_bi)
 		return;
@@ -701,40 +698,16 @@ static void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 		rx_ring->skb = NULL;
 	}
 
-	/* Free all the Rx ring sk_buffs */
-	for (i = 0; i < rx_ring->count; i++) {
-		struct iavf_rx_buffer *rx_bi = &rx_ring->rx_bi[i];
+	/* Free all the Rx ring buffers */
+	for (u32 i = rx_ring->next_to_clean; i != rx_ring->next_to_use; ) {
+		const struct libie_rx_buffer *rx_bi = &rx_ring->rx_bi[i];
 
-		if (!rx_bi->page)
-			continue;
+		page_pool_put_full_page(rx_ring->pp, rx_bi->page, false);
 
-		/* Invalidate cache lines that may have been written to by
-		 * device so that we avoid corrupting memory.
-		 */
-		dma_sync_single_range_for_cpu(rx_ring->dev,
-					      rx_bi->dma,
-					      rx_bi->page_offset,
-					      IAVF_RXBUFFER_3072,
-					      DMA_FROM_DEVICE);
-
-		/* free resources associated with mapping */
-		dma_unmap_page_attrs(rx_ring->dev, rx_bi->dma,
-				     iavf_rx_pg_size(rx_ring),
-				     DMA_FROM_DEVICE,
-				     IAVF_RX_DMA_ATTR);
-
-		__free_page(rx_bi->page);
-
-		rx_bi->page = NULL;
-		rx_bi->page_offset = 0;
+		if (unlikely(++i == rx_ring->count))
+			i = 0;
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
@@ -747,15 +720,22 @@ static void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
  **/
 void iavf_free_rx_resources(struct iavf_ring *rx_ring)
 {
+	struct libie_buf_queue bq = {
+		.pp	= rx_ring->pp,
+	};
+
 	iavf_clean_rx_ring(rx_ring);
 	kfree(rx_ring->rx_bi);
 	rx_ring->rx_bi = NULL;
 
 	if (rx_ring->desc) {
-		dma_free_coherent(rx_ring->dev, rx_ring->size,
+		dma_free_coherent(rx_ring->pp->p.dev, rx_ring->size,
 				  rx_ring->desc, rx_ring->dma);
 		rx_ring->desc = NULL;
 	}
+
+	libie_rx_page_pool_destroy(&bq);
+	rx_ring->pp = bq.pp;
 }
 
 /**
@@ -766,13 +746,23 @@ void iavf_free_rx_resources(struct iavf_ring *rx_ring)
  **/
 int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 {
-	struct device *dev = rx_ring->dev;
-	int bi_size;
+	struct libie_buf_queue bq = {
+		.count	= rx_ring->count,
+	};
+	int ret;
+
+	ret = libie_rx_page_pool_create(&bq, &rx_ring->q_vector->napi);
+	if (ret)
+		return ret;
+
+	rx_ring->pp = bq.pp;
+	rx_ring->truesize = bq.truesize;
+	rx_ring->rx_buf_len = bq.rx_buf_len;
 
 	/* warn if we are about to overwrite the pointer */
 	WARN_ON(rx_ring->rx_bi);
-	bi_size = sizeof(struct iavf_rx_buffer) * rx_ring->count;
-	rx_ring->rx_bi = kzalloc(bi_size, GFP_KERNEL);
+	rx_ring->rx_bi = kcalloc(rx_ring->count, sizeof(*rx_ring->rx_bi),
+				 GFP_KERNEL);
 	if (!rx_ring->rx_bi)
 		goto err;
 
@@ -781,22 +771,28 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 	/* Round up to nearest 4K */
 	rx_ring->size = rx_ring->count * sizeof(union iavf_32byte_rx_desc);
 	rx_ring->size = ALIGN(rx_ring->size, 4096);
-	rx_ring->desc = dma_alloc_coherent(dev, rx_ring->size,
+	rx_ring->desc = dma_alloc_coherent(bq.pp->p.dev, rx_ring->size,
 					   &rx_ring->dma, GFP_KERNEL);
 
 	if (!rx_ring->desc) {
-		dev_info(dev, "Unable to allocate memory for the Rx descriptor ring, size=%d\n",
+		dev_info(bq.pp->p.dev, "Unable to allocate memory for the Rx descriptor ring, size=%d\n",
 			 rx_ring->size);
-		goto err;
+		goto err_free_buf;
 	}
 
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
 
 	return 0;
-err:
+
+err_free_buf:
 	kfree(rx_ring->rx_bi);
 	rx_ring->rx_bi = NULL;
+
+err:
+	libie_rx_page_pool_destroy(&bq);
+	rx_ring->pp = bq.pp;
+
 	return -ENOMEM;
 }
 
@@ -818,49 +814,6 @@ static void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
 	writel(val, rx_ring->tail);
 }
 
-/**
- * iavf_alloc_mapped_page - recycle or make a new page
- * @rx_ring: ring to use
- * @bi: rx_buffer struct to modify
- *
- * Returns true if the page was successfully allocated or
- * reused.
- **/
-static bool iavf_alloc_mapped_page(struct iavf_ring *rx_ring,
-				   struct iavf_rx_buffer *bi)
-{
-	struct page *page = bi->page;
-	dma_addr_t dma;
-
-	/* alloc new page for storage */
-	page = dev_alloc_pages(iavf_rx_pg_order(rx_ring));
-	if (unlikely(!page)) {
-		rx_ring->rx_stats.alloc_page_failed++;
-		return false;
-	}
-
-	/* map page for use */
-	dma = dma_map_page_attrs(rx_ring->dev, page, 0,
-				 iavf_rx_pg_size(rx_ring),
-				 DMA_FROM_DEVICE,
-				 IAVF_RX_DMA_ATTR);
-
-	/* if mapping failed free memory back to system since
-	 * there isn't much point in holding memory we can't use
-	 */
-	if (dma_mapping_error(rx_ring->dev, dma)) {
-		__free_pages(page, iavf_rx_pg_order(rx_ring));
-		rx_ring->rx_stats.alloc_page_failed++;
-		return false;
-	}
-
-	bi->dma = dma;
-	bi->page = page;
-	bi->page_offset = IAVF_SKB_PAD;
-
-	return true;
-}
-
 /**
  * iavf_receive_skb - Send a completed packet up the stack
  * @rx_ring:  rx ring in play
@@ -891,38 +844,37 @@ static void iavf_receive_skb(struct iavf_ring *rx_ring,
  **/
 bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
 {
+	const struct libie_buf_queue bq = {
+		.pp		= rx_ring->pp,
+		.rx_bi		= rx_ring->rx_bi,
+		.truesize	= rx_ring->truesize,
+		.count		= rx_ring->count,
+	};
 	u16 ntu = rx_ring->next_to_use;
 	union iavf_rx_desc *rx_desc;
-	struct iavf_rx_buffer *bi;
 
 	/* do nothing if no valid netdev defined */
 	if (!rx_ring->netdev || !cleaned_count)
 		return false;
 
 	rx_desc = IAVF_RX_DESC(rx_ring, ntu);
-	bi = &rx_ring->rx_bi[ntu];
 
 	do {
-		if (!iavf_alloc_mapped_page(rx_ring, bi))
-			goto no_buffers;
+		dma_addr_t addr;
 
-		/* sync the buffer for use by the device */
-		dma_sync_single_range_for_device(rx_ring->dev, bi->dma,
-						 bi->page_offset,
-						 IAVF_RXBUFFER_3072,
-						 DMA_FROM_DEVICE);
+		addr = libie_rx_alloc(&bq, ntu);
+		if (addr == DMA_MAPPING_ERROR)
+			goto no_buffers;
 
 		/* Refresh the desc even if buffer_addrs didn't change
 		 * because each write-back erases this info.
 		 */
-		rx_desc->read.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);
+		rx_desc->read.pkt_addr = cpu_to_le64(addr);
 
 		rx_desc++;
-		bi++;
 		ntu++;
 		if (unlikely(ntu == rx_ring->count)) {
 			rx_desc = IAVF_RX_DESC(rx_ring, 0);
-			bi = rx_ring->rx_bi;
 			ntu = 0;
 		}
 
@@ -941,6 +893,8 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
 	if (rx_ring->next_to_use != ntu)
 		iavf_release_rx_desc(rx_ring, ntu);
 
+	rx_ring->rx_stats.alloc_page_failed++;
+
 	/* make sure to come back via polling to try again after
 	 * allocation failure
 	 */
@@ -1091,9 +1045,8 @@ static bool iavf_cleanup_headers(struct iavf_ring *rx_ring, struct sk_buff *skb)
 
 /**
  * iavf_add_rx_frag - Add contents of Rx buffer to sk_buff
- * @rx_ring: rx descriptor ring to transact packets on
- * @rx_buffer: buffer containing page to add
  * @skb: sk_buff to place the data into
+ * @rx_buffer: buffer containing page to add
  * @size: packet length from rx_desc
  *
  * This function will add the data contained in rx_buffer->page to the skb.
@@ -1101,105 +1054,49 @@ static bool iavf_cleanup_headers(struct iavf_ring *rx_ring, struct sk_buff *skb)
  *
  * The function will then update the page offset.
  **/
-static void iavf_add_rx_frag(struct iavf_ring *rx_ring,
-			     struct iavf_rx_buffer *rx_buffer,
-			     struct sk_buff *skb,
+static void iavf_add_rx_frag(struct sk_buff *skb,
+			     const struct libie_rx_buffer *rx_buffer,
 			     unsigned int size)
 {
-	unsigned int truesize = SKB_DATA_ALIGN(size + IAVF_SKB_PAD);
-
-	if (!size)
-		return;
+	u32 hr = rx_buffer->page->pp->p.offset;
 
 	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buffer->page,
-			rx_buffer->page_offset, size, truesize);
-}
-
-/**
- * iavf_get_rx_buffer - Fetch Rx buffer and synchronize data for use
- * @rx_ring: rx descriptor ring to transact packets on
- * @size: size of buffer to add to skb
- *
- * This function will pull an Rx buffer from the ring and synchronize it
- * for use by the CPU.
- */
-static struct iavf_rx_buffer *iavf_get_rx_buffer(struct iavf_ring *rx_ring,
-						 const unsigned int size)
-{
-	struct iavf_rx_buffer *rx_buffer;
-
-	rx_buffer = &rx_ring->rx_bi[rx_ring->next_to_clean];
-	prefetchw(rx_buffer->page);
-	if (!size)
-		return rx_buffer;
-
-	/* we are reusing so sync this buffer for CPU use */
-	dma_sync_single_range_for_cpu(rx_ring->dev,
-				      rx_buffer->dma,
-				      rx_buffer->page_offset,
-				      size,
-				      DMA_FROM_DEVICE);
-
-	return rx_buffer;
+			rx_buffer->offset + hr, size, rx_buffer->truesize);
 }
 
 /**
  * iavf_build_skb - Build skb around an existing buffer
- * @rx_ring: Rx descriptor ring to transact packets on
  * @rx_buffer: Rx buffer to pull data from
  * @size: size of buffer to add to skb
  *
  * This function builds an skb around an existing Rx buffer, taking care
  * to set up the skb correctly and avoid any memcpy overhead.
  */
-static struct sk_buff *iavf_build_skb(struct iavf_ring *rx_ring,
-				      struct iavf_rx_buffer *rx_buffer,
+static struct sk_buff *iavf_build_skb(const struct libie_rx_buffer *rx_buffer,
 				      unsigned int size)
 {
-	void *va;
-	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
-				SKB_DATA_ALIGN(IAVF_SKB_PAD + size);
+	u32 hr = rx_buffer->page->pp->p.offset;
 	struct sk_buff *skb;
+	void *va;
 
-	if (!rx_buffer || !size)
-		return NULL;
 	/* prefetch first cache line of first page */
-	va = page_address(rx_buffer->page) + rx_buffer->page_offset;
-	net_prefetch(va);
+	va = page_address(rx_buffer->page) + rx_buffer->offset;
+	net_prefetch(va + hr);
 
 	/* build an skb around the page buffer */
-	skb = napi_build_skb(va - IAVF_SKB_PAD, truesize);
+	skb = napi_build_skb(va, rx_buffer->truesize);
 	if (unlikely(!skb))
 		return NULL;
 
+	skb_mark_for_recycle(skb);
+
 	/* update pointers within the skb to store the data */
-	skb_reserve(skb, IAVF_SKB_PAD);
+	skb_reserve(skb, hr);
 	__skb_put(skb, size);
 
 	return skb;
 }
 
-/**
- * iavf_put_rx_buffer - Unmap used buffer
- * @rx_ring: rx descriptor ring to transact packets on
- * @rx_buffer: rx buffer to pull data from
- *
- * This function will unmap the buffer after it's written by HW.
- */
-static void iavf_put_rx_buffer(struct iavf_ring *rx_ring,
-			       struct iavf_rx_buffer *rx_buffer)
-{
-	if (!rx_buffer)
-		return;
-
-	/* we are not reusing the buffer so unmap it */
-	dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma, PAGE_SIZE,
-			     DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
-
-	/* clear contents of buffer_info */
-	rx_buffer->page = NULL;
-}
-
 /**
  * iavf_is_non_eop - process handling of non-EOP buffers
  * @rx_ring: Rx ring being processed
@@ -1253,7 +1150,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 	bool failure = false;
 
 	while (likely(total_rx_packets < (unsigned int)budget)) {
-		struct iavf_rx_buffer *rx_buffer;
+		struct libie_rx_buffer *rx_buffer;
 		union iavf_rx_desc *rx_desc;
 		unsigned int size;
 		u16 vlan_tag = 0;
@@ -1289,13 +1186,16 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		       IAVF_RXD_QW1_LENGTH_PBUF_SHIFT;
 
 		iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
-		rx_buffer = iavf_get_rx_buffer(rx_ring, size);
+
+		rx_buffer = &rx_ring->rx_bi[rx_ring->next_to_clean];
+		if (!libie_rx_sync_for_cpu(rx_buffer, size))
+			goto skip_data;
 
 		/* retrieve a buffer from the ring */
 		if (skb)
-			iavf_add_rx_frag(rx_ring, rx_buffer, skb, size);
+			iavf_add_rx_frag(skb, rx_buffer, size);
 		else
-			skb = iavf_build_skb(rx_ring, rx_buffer, size);
+			skb = iavf_build_skb(rx_buffer, size);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
@@ -1303,7 +1203,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 			break;
 		}
 
-		iavf_put_rx_buffer(rx_ring, rx_buffer);
+skip_data:
 		cleaned_count++;
 
 		if (iavf_is_non_eop(rx_ring, rx_desc, skb))
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index ed559fa6f214..1045ccb43f29 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -80,18 +80,8 @@ enum iavf_dyn_idx_t {
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP) | \
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
 
-/* Supported Rx Buffer Sizes (a multiple of 128) */
-#define IAVF_RXBUFFER_3072  3072  /* Used for large frames w/ padding */
-#define IAVF_MAX_RXBUFFER   9728  /* largest size for single descriptor */
-
-#define IAVF_PACKET_HDR_PAD (ETH_HLEN + ETH_FCS_LEN + (VLAN_HLEN * 2))
 #define iavf_rx_desc iavf_32byte_rx_desc
 
-#define IAVF_RX_DMA_ATTR \
-	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
-
-#define IAVF_SKB_PAD (NET_SKB_PAD + NET_IP_ALIGN)
-
 /**
  * iavf_test_staterr - tests bits in Rx descriptor status and error fields
  * @rx_desc: pointer to receive descriptor (in le64 format)
@@ -210,12 +200,6 @@ struct iavf_tx_buffer {
 	u32 tx_flags;
 };
 
-struct iavf_rx_buffer {
-	dma_addr_t dma;
-	struct page *page;
-	__u32 page_offset;
-};
-
 struct iavf_queue_stats {
 	u64 packets;
 	u64 bytes;
@@ -251,13 +235,18 @@ struct iavf_rx_queue_stats {
 struct iavf_ring {
 	struct iavf_ring *next;		/* pointer to next ring in q_vector */
 	void *desc;			/* Descriptor ring memory */
-	struct device *dev;		/* Used for DMA mapping */
+	union {
+		struct page_pool *pp;	/* Used on Rx for buffer management */
+		struct device *dev;	/* Used on Tx for DMA mapping */
+	};
 	struct net_device *netdev;	/* netdev ring maps to */
 	union {
+		struct libie_rx_buffer *rx_bi;
 		struct iavf_tx_buffer *tx_bi;
-		struct iavf_rx_buffer *rx_bi;
 	};
 	u8 __iomem *tail;
+	u32 truesize;
+
 	u16 queue_index;		/* Queue number of ring */
 
 	/* high bit set means dynamic, use accessors routines to read/write.
@@ -305,6 +294,8 @@ struct iavf_ring {
 					 * iavf_clean_rx_ring_irq() is called
 					 * for this ring.
 					 */
+
+	u32 rx_buf_len;
 } ____cacheline_internodealigned_in_smp;
 
 #define IAVF_ITR_ADAPTIVE_MIN_INC	0x0002
@@ -328,13 +319,6 @@ struct iavf_ring_container {
 #define iavf_for_each_ring(pos, head) \
 	for (pos = (head).ring; pos != NULL; pos = pos->next)
 
-static inline unsigned int iavf_rx_pg_order(struct iavf_ring *ring)
-{
-	return 0;
-}
-
-#define iavf_rx_pg_size(_ring) (PAGE_SIZE << iavf_rx_pg_order(_ring))
-
 bool iavf_alloc_rx_buffers(struct iavf_ring *rxr, u16 cleaned_count);
 netdev_tx_t iavf_xmit_frame(struct sk_buff *skb, struct net_device *netdev);
 int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 12da9401c46d..58dad471004d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
+#include <linux/net/intel/libie/rx.h>
+
 #include "iavf.h"
 #include "iavf_prototype.h"
 
@@ -268,13 +270,13 @@ int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter)
 void iavf_configure_queues(struct iavf_adapter *adapter)
 {
 	struct virtchnl_vsi_queue_config_info *vqci;
-	int i, max_frame = adapter->vf_res->max_mtu;
 	int pairs = adapter->num_active_queues;
 	struct virtchnl_queue_pair_info *vqpi;
+	u32 i, max_frame;
 	size_t len;
 
-	if (max_frame > IAVF_MAX_RXBUFFER || !max_frame)
-		max_frame = IAVF_MAX_RXBUFFER;
+	max_frame = LIBIE_MAX_RX_FRM_LEN(adapter->rx_rings->pp->p.offset);
+	max_frame = min_not_zero(adapter->vf_res->max_mtu, max_frame);
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
@@ -304,7 +306,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 		vqpi->rxq.ring_len = adapter->rx_rings[i].count;
 		vqpi->rxq.dma_ring_addr = adapter->rx_rings[i].dma;
 		vqpi->rxq.max_pkt_size = max_frame;
-		vqpi->rxq.databuffer_size = IAVF_RXBUFFER_3072;
+		vqpi->rxq.databuffer_size = adapter->rx_rings[i].rx_buf_len;
 		if (CRC_OFFLOAD_ALLOWED(adapter))
 			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
 						   NETIF_F_RXFCS);
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C915C710CB1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 May 2023 14:59:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBD7061692;
	Thu, 25 May 2023 12:59:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBD7061692
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685019549;
	bh=qa1q2LPIZVvyi9Q6o32jHcnMmgtUuIW2R6/jLXIS/Yk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PFVAehP3GLdxX0dPE9kk+jwWv3sHuYB0SfyIrUh64pMhMvjOz2TCDPCAzbx+yfvW5
	 gl8sbj78fvrkxLdcIktPAvTmXAuJpT/37tGWjjh7QK5aoi6LuGS1fbwLdcPrJ0FVPm
	 3kWEGxdnWAxsBTI7SOJhrnfOfY9oLvwhQYIfrCaovZdQb8U1L3PbnZVDMN5FomnLQA
	 eJ0TNBaZfFSd/zu+xhfQNO2l/YEXGI/2cZHCA//n1tpF35j4y6JiE0p4q3fP1zLvVI
	 IZUxCvl50Ffn8GVJKQeojEJHJ3c5sg9shz4XeYeJHWx3NZjC1Uf3mBYv1F1ZOa2ibF
	 ErGv5NP/BXZuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rOSZHqD1TmJa; Thu, 25 May 2023 12:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8587161698;
	Thu, 25 May 2023 12:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8587161698
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B19F31BF27A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 12:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 89BFE41F2B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 12:58:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89BFE41F2B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8zXRLgvXeWhS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 May 2023 12:58:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D86F41B4E
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D86F41B4E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 12:58:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="351384387"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="351384387"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 05:58:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="817075129"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="817075129"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga002.fm.intel.com with ESMTP; 25 May 2023 05:58:47 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu, 25 May 2023 14:57:39 +0200
Message-Id: <20230525125746.553874-6-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230525125746.553874-1-aleksander.lobakin@intel.com>
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685019531; x=1716555531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u6fOZJx2A2eehQenBa9Q4w9Om2mu/zqE0PB7xsCryKY=;
 b=NaNSBEKdVfU9nKa/uNVAVoUY5l4wrp4X7M+m8Yz0dwhNTgvATYghS7R0
 cztA0VC+9VdKJYRiKsfM5ShbUe8we4pz1d2AqFGZ0zzaJ7vbSTRPP8pNT
 YhoCqrkObYZXR6qbbv8mye+y/0w8h2UnY7z7xt/ofpZLpM/5L6wZjAk53
 aWH3vjKO9J+mXLdKqyAsKYMDRRC7GDLzAyGcqxP3pkszi01qdGcp4Ya3b
 JleIrn8oY+saQDxEjpiKRQfVP7Dop7Q7zEEVCWbYLCevlm1mrsz4IspW9
 XNmQDjNVfIe9/cI0GM0Th2Ow1ZkXamZ6RlWP9o4Hj1KelaouMqpgJogCs
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NaNSBEKd
Subject: [Intel-wired-lan] [PATCH net-next v2 05/12] iavf: always use a full
 order-0 page
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

The current scheme with trying to pick the smallest buffer possible for
the current MTU in order to flip/split pages is not very optimal.
For example, on default MTU of 1500 it gives only 192 bytes of headroom,
while XDP may require up to 258. But this also involves unnecessary code
complication, which sometimes is even hard to follow.
As page split is no more, always allocate order-0 pages. This optimizes
performance a bit and drops some bytes off the object code. Next, always
pick the maximum buffer length available for this %PAGE_SIZE to set it
up in the hardware. This means it now becomes a constant value, which
also has its positive impact.
On x64 this means (without XDP):

4096 page
64 head, 320 tail
3712 HW buffer size
3686 max MTU w/o frags

Previously, the maximum MTU w/o splitting a frame into several buffers
was 3046.
Increased buffer size allows us to reach the maximum frame size w/ frags
supported by HW: 16382 bytes (MTU 16356). Reflect it in the netdev
config as well. Relying on max single buffer size when calculating MTU
was not correct.
Move around a couple of fields in &iavf_ring after ::rx_buf_len removal
to reduce holes and improve cache locality.
Instead of providing the Rx definitions, which can and will be reused in
rest of the drivers, exclusively for IAVF, do that in the libie header.
Non-PP drivers could still use at least some of them and lose a couple
copied lines.

Function: add/remove: 0/0 grow/shrink: 3/9 up/down: 18/-265 (-247)

+ even reclaims a half percent of performance, nice.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  32 +-----
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  96 +++++++----------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   | 100 +-----------------
 drivers/net/ethernet/intel/iavf/iavf_type.h   |   2 -
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  15 +--
 include/linux/net/intel/libie/rx.h            |  35 ++++++
 6 files changed, 85 insertions(+), 195 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 2d00be69fcde..120bb6a09ceb 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
+#include <linux/net/intel/libie/rx.h>
+
 #include "iavf.h"
 #include "iavf_prototype.h"
 #include "iavf_client.h"
@@ -709,32 +711,10 @@ static void iavf_configure_tx(struct iavf_adapter *adapter)
  **/
 static void iavf_configure_rx(struct iavf_adapter *adapter)
 {
-	unsigned int rx_buf_len = IAVF_RXBUFFER_2048;
 	struct iavf_hw *hw = &adapter->hw;
-	int i;
-
-	if (PAGE_SIZE < 8192) {
-		struct net_device *netdev = adapter->netdev;
 
-		/* For jumbo frames on systems with 4K pages we have to use
-		 * an order 1 page, so we might as well increase the size
-		 * of our Rx buffer to make better use of the available space
-		 */
-		rx_buf_len = IAVF_RXBUFFER_3072;
-
-		/* We use a 1536 buffer size for configurations with
-		 * standard Ethernet mtu.  On x86 this gives us enough room
-		 * for shared info and 192 bytes of padding.
-		 */
-		if (!IAVF_2K_TOO_SMALL_WITH_PADDING &&
-		    (netdev->mtu <= ETH_DATA_LEN))
-			rx_buf_len = IAVF_RXBUFFER_1536 - NET_IP_ALIGN;
-	}
-
-	for (i = 0; i < adapter->num_active_queues; i++) {
+	for (u32 i = 0; i < adapter->num_active_queues; i++)
 		adapter->rx_rings[i].tail = hw->hw_addr + IAVF_QRX_TAIL1(i);
-		adapter->rx_rings[i].rx_buf_len = rx_buf_len;
-	}
 }
 
 /**
@@ -2577,11 +2557,7 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 
 	netdev->netdev_ops = &iavf_netdev_ops;
 	iavf_set_ethtool_ops(netdev);
-	netdev->watchdog_timeo = 5 * HZ;
-
-	/* MTU range: 68 - 9710 */
-	netdev->min_mtu = ETH_MIN_MTU;
-	netdev->max_mtu = IAVF_MAX_RXBUFFER - IAVF_PACKET_HDR_PAD;
+	netdev->max_mtu = LIBIE_MAX_MTU;
 
 	if (!is_valid_ether_addr(adapter->hw.mac.addr)) {
 		dev_info(&pdev->dev, "Invalid MAC address %pM, using random\n",
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 10aaa18e467c..c33a3d681c83 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -302,7 +302,7 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 		    ((j / WB_STRIDE) == 0) && (j > 0) &&
 		    !test_bit(__IAVF_VSI_DOWN, vsi->state) &&
 		    (IAVF_DESC_UNUSED(tx_ring) != tx_ring->count))
-			tx_ring->arm_wb = true;
+			tx_ring->flags |= IAVF_TXRX_FLAGS_ARM_WB;
 	}
 
 	/* notify netdev of completed buffers */
@@ -715,17 +715,16 @@ void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 		/* Invalidate cache lines that may have been written to by
 		 * device so that we avoid corrupting memory.
 		 */
-		dma_sync_single_range_for_cpu(rx_ring->dev, dma, IAVF_SKB_PAD,
-					      rx_ring->rx_buf_len,
+		dma_sync_single_range_for_cpu(rx_ring->dev, dma,
+					      LIBIE_SKB_HEADROOM,
+					      LIBIE_RX_BUF_LEN,
 					      DMA_FROM_DEVICE);
 
 		/* free resources associated with mapping */
-		dma_unmap_page_attrs(rx_ring->dev, dma,
-				     iavf_rx_pg_size(rx_ring),
-				     DMA_FROM_DEVICE,
-				     IAVF_RX_DMA_ATTR);
+		dma_unmap_page_attrs(rx_ring->dev, dma, LIBIE_RX_TRUESIZE,
+				     DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
 
-		__free_pages(page, iavf_rx_pg_order(rx_ring));
+		__free_page(page);
 	}
 
 	rx_ring->next_to_clean = 0;
@@ -814,31 +813,29 @@ static inline void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
 /**
  * iavf_alloc_mapped_page - allocate and map a new page
  * @dev: device used for DMA mapping
- * @order: page order to allocate
  * @gfp: GFP mask to allocate page
  *
  * Returns a new &page if the it was successfully allocated, %NULL otherwise.
  **/
-static struct page *iavf_alloc_mapped_page(struct device *dev, u32 order,
-					   gfp_t gfp)
+static struct page *iavf_alloc_mapped_page(struct device *dev, gfp_t gfp)
 {
 	struct page *page;
 	dma_addr_t dma;
 
 	/* alloc new page for storage */
-	page = __dev_alloc_pages(gfp, order);
+	page = __dev_alloc_page(gfp);
 	if (unlikely(!page))
 		return NULL;
 
 	/* map page for use */
-	dma = dma_map_page_attrs(dev, page, 0, PAGE_SIZE << order,
-				 DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
+	dma = dma_map_page_attrs(dev, page, 0, PAGE_SIZE, DMA_FROM_DEVICE,
+				 IAVF_RX_DMA_ATTR);
 
 	/* if mapping failed free memory back to system since
 	 * there isn't much point in holding memory we can't use
 	 */
 	if (dma_mapping_error(dev, dma)) {
-		__free_pages(page, order);
+		__free_page(page);
 		return NULL;
 	}
 
@@ -880,7 +877,6 @@ static void iavf_receive_skb(struct iavf_ring *rx_ring,
 static u32 __iavf_alloc_rx_pages(struct iavf_ring *rx_ring, u32 to_refill,
 				 gfp_t gfp)
 {
-	u32 order = iavf_rx_pg_order(rx_ring);
 	struct device *dev = rx_ring->dev;
 	u32 ntu = rx_ring->next_to_use;
 	union iavf_rx_desc *rx_desc;
@@ -895,7 +891,7 @@ static u32 __iavf_alloc_rx_pages(struct iavf_ring *rx_ring, u32 to_refill,
 		struct page *page;
 		dma_addr_t dma;
 
-		page = iavf_alloc_mapped_page(dev, order, gfp);
+		page = iavf_alloc_mapped_page(dev, gfp);
 		if (!page) {
 			rx_ring->rx_stats.alloc_page_failed++;
 			break;
@@ -905,14 +901,14 @@ static u32 __iavf_alloc_rx_pages(struct iavf_ring *rx_ring, u32 to_refill,
 		dma = page_pool_get_dma_addr(page);
 
 		/* sync the buffer for use by the device */
-		dma_sync_single_range_for_device(dev, dma, IAVF_SKB_PAD,
-						 rx_ring->rx_buf_len,
+		dma_sync_single_range_for_device(dev, dma, LIBIE_SKB_HEADROOM,
+						 LIBIE_RX_BUF_LEN,
 						 DMA_FROM_DEVICE);
 
 		/* Refresh the desc even if buffer_addrs didn't change
 		 * because each write-back erases this info.
 		 */
-		rx_desc->read.pkt_addr = cpu_to_le64(dma + IAVF_SKB_PAD);
+		rx_desc->read.pkt_addr = cpu_to_le64(dma + LIBIE_SKB_HEADROOM);
 
 		rx_desc++;
 		ntu++;
@@ -1083,24 +1079,16 @@ static bool iavf_cleanup_headers(struct iavf_ring *rx_ring, struct sk_buff *skb)
  * @skb: sk_buff to place the data into
  * @page: page containing data to add
  * @size: packet length from rx_desc
- * @pg_size: Rx buffer page size
  *
  * This function will add the data contained in page to the skb.
  * It will just attach the page as a frag to the skb.
  *
  * The function will then update the page offset.
  **/
-static void iavf_add_rx_frag(struct sk_buff *skb, struct page *page, u32 size,
-			     u32 pg_size)
+static void iavf_add_rx_frag(struct sk_buff *skb, struct page *page, u32 size)
 {
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = pg_size / 2;
-#else
-	unsigned int truesize = SKB_DATA_ALIGN(size + IAVF_SKB_PAD);
-#endif
-
-	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page, IAVF_SKB_PAD,
-			size, truesize);
+	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page,
+			LIBIE_SKB_HEADROOM, size, LIBIE_RX_TRUESIZE);
 }
 
 /**
@@ -1114,40 +1102,34 @@ static void iavf_add_rx_frag(struct sk_buff *skb, struct page *page, u32 size,
 static void iavf_sync_rx_page(struct device *dev, struct page *page, u32 size)
 {
 	dma_sync_single_range_for_cpu(dev, page_pool_get_dma_addr(page),
-				      IAVF_SKB_PAD, size, DMA_FROM_DEVICE);
+				      LIBIE_SKB_HEADROOM, size,
+				      DMA_FROM_DEVICE);
 }
 
 /**
  * iavf_build_skb - Build skb around an existing buffer
  * @page: Rx page to with the data
  * @size: size of the data
- * @pg_size: size of the Rx page
  *
  * This function builds an skb around an existing Rx buffer, taking care
  * to set up the skb correctly and avoid any memcpy overhead.
  */
-static struct sk_buff *iavf_build_skb(struct page *page, u32 size, u32 pg_size)
+static struct sk_buff *iavf_build_skb(struct page *page, u32 size)
 {
-	void *va;
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = pg_size / 2;
-#else
-	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
-				SKB_DATA_ALIGN(IAVF_SKB_PAD + size);
-#endif
 	struct sk_buff *skb;
+	void *va;
 
 	/* prefetch first cache line of first page */
 	va = page_address(page);
-	net_prefetch(va + IAVF_SKB_PAD);
+	net_prefetch(va + LIBIE_SKB_HEADROOM);
 
 	/* build an skb around the page buffer */
-	skb = napi_build_skb(va, truesize);
+	skb = napi_build_skb(va, LIBIE_RX_TRUESIZE);
 	if (unlikely(!skb))
 		return NULL;
 
 	/* update pointers within the skb to store the data */
-	skb_reserve(skb, IAVF_SKB_PAD);
+	skb_reserve(skb, LIBIE_SKB_HEADROOM);
 	__skb_put(skb, size);
 
 	return skb;
@@ -1157,13 +1139,12 @@ static struct sk_buff *iavf_build_skb(struct page *page, u32 size, u32 pg_size)
  * iavf_unmap_rx_page - Unmap used page
  * @dev: device used for DMA mapping
  * @page: page to release
- * @pg_size: Rx page size
  */
-static void iavf_unmap_rx_page(struct device *dev, struct page *page,
-			       u32 pg_size)
+static void iavf_unmap_rx_page(struct device *dev, struct page *page)
 {
-	dma_unmap_page_attrs(dev, page_pool_get_dma_addr(page), pg_size,
-			     DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
+	dma_unmap_page_attrs(dev, page_pool_get_dma_addr(page),
+			     LIBIE_RX_TRUESIZE, DMA_FROM_DEVICE,
+			     IAVF_RX_DMA_ATTR);
 	page_pool_set_dma_addr(page, 0);
 }
 
@@ -1209,7 +1190,6 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 	const gfp_t gfp = GFP_ATOMIC | __GFP_NOWARN;
 	u32 to_refill = IAVF_DESC_UNUSED(rx_ring);
-	u32 pg_size = iavf_rx_pg_size(rx_ring);
 	struct sk_buff *skb = rx_ring->skb;
 	struct device *dev = rx_ring->dev;
 	u32 ntc = rx_ring->next_to_clean;
@@ -1260,23 +1240,23 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		 * stripped by the HW.
 		 */
 		if (unlikely(!size)) {
-			iavf_unmap_rx_page(dev, page, pg_size);
-			__free_pages(page, get_order(pg_size));
+			iavf_unmap_rx_page(dev, page);
+			__free_page(page);
 			goto skip_data;
 		}
 
 		iavf_sync_rx_page(dev, page, size);
-		iavf_unmap_rx_page(dev, page, pg_size);
+		iavf_unmap_rx_page(dev, page);
 
 		/* retrieve a buffer from the ring */
 		if (skb)
-			iavf_add_rx_frag(skb, page, size, pg_size);
+			iavf_add_rx_frag(skb, page, size);
 		else
-			skb = iavf_build_skb(page, size, pg_size);
+			skb = iavf_build_skb(page, size);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
-			__free_pages(page, get_order(pg_size));
+			__free_page(page);
 			rx_ring->rx_stats.alloc_buff_failed++;
 			break;
 		}
@@ -1486,8 +1466,8 @@ int iavf_napi_poll(struct napi_struct *napi, int budget)
 			clean_complete = false;
 			continue;
 		}
-		arm_wb |= ring->arm_wb;
-		ring->arm_wb = false;
+		arm_wb |= !!(ring->flags & IAVF_TXRX_FLAGS_ARM_WB);
+		ring->flags &= ~IAVF_TXRX_FLAGS_ARM_WB;
 	}
 
 	/* Handle case where we are called by netpoll with a budget of 0 */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index c09ac580fe84..1421e90c7c4e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -81,79 +81,11 @@ enum iavf_dyn_idx_t {
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP) | \
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
 
-/* Supported Rx Buffer Sizes (a multiple of 128) */
-#define IAVF_RXBUFFER_256   256
-#define IAVF_RXBUFFER_1536  1536  /* 128B aligned standard Ethernet frame */
-#define IAVF_RXBUFFER_2048  2048
-#define IAVF_RXBUFFER_3072  3072  /* Used for large frames w/ padding */
-#define IAVF_MAX_RXBUFFER   9728  /* largest size for single descriptor */
-
-/* NOTE: netdev_alloc_skb reserves up to 64 bytes, NET_IP_ALIGN means we
- * reserve 2 more, and skb_shared_info adds an additional 384 bytes more,
- * this adds up to 512 bytes of extra data meaning the smallest allocation
- * we could have is 1K.
- * i.e. RXBUFFER_256 --> 960 byte skb (size-1024 slab)
- * i.e. RXBUFFER_512 --> 1216 byte skb (size-2048 slab)
- */
-#define IAVF_RX_HDR_SIZE IAVF_RXBUFFER_256
-#define IAVF_PACKET_HDR_PAD (ETH_HLEN + ETH_FCS_LEN + (VLAN_HLEN * 2))
 #define iavf_rx_desc iavf_32byte_rx_desc
 
 #define IAVF_RX_DMA_ATTR \
 	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
 
-/* Attempt to maximize the headroom available for incoming frames.  We
- * use a 2K buffer for receives and need 1536/1534 to store the data for
- * the frame.  This leaves us with 512 bytes of room.  From that we need
- * to deduct the space needed for the shared info and the padding needed
- * to IP align the frame.
- *
- * Note: For cache line sizes 256 or larger this value is going to end
- *	 up negative.  In these cases we should fall back to the legacy
- *	 receive path.
- */
-#if (PAGE_SIZE < 8192)
-#define IAVF_2K_TOO_SMALL_WITH_PADDING \
-((NET_SKB_PAD + IAVF_RXBUFFER_1536) > SKB_WITH_OVERHEAD(IAVF_RXBUFFER_2048))
-
-static inline int iavf_compute_pad(int rx_buf_len)
-{
-	int page_size, pad_size;
-
-	page_size = ALIGN(rx_buf_len, PAGE_SIZE / 2);
-	pad_size = SKB_WITH_OVERHEAD(page_size) - rx_buf_len;
-
-	return pad_size;
-}
-
-static inline int iavf_skb_pad(void)
-{
-	int rx_buf_len;
-
-	/* If a 2K buffer cannot handle a standard Ethernet frame then
-	 * optimize padding for a 3K buffer instead of a 1.5K buffer.
-	 *
-	 * For a 3K buffer we need to add enough padding to allow for
-	 * tailroom due to NET_IP_ALIGN possibly shifting us out of
-	 * cache-line alignment.
-	 */
-	if (IAVF_2K_TOO_SMALL_WITH_PADDING)
-		rx_buf_len = IAVF_RXBUFFER_3072 + SKB_DATA_ALIGN(NET_IP_ALIGN);
-	else
-		rx_buf_len = IAVF_RXBUFFER_1536;
-
-	/* if needed make room for NET_IP_ALIGN */
-	rx_buf_len -= NET_IP_ALIGN;
-
-	return iavf_compute_pad(rx_buf_len);
-}
-
-#define IAVF_SKB_PAD iavf_skb_pad()
-#else
-#define IAVF_2K_TOO_SMALL_WITH_PADDING false
-#define IAVF_SKB_PAD (NET_SKB_PAD + NET_IP_ALIGN)
-#endif
-
 /**
  * iavf_test_staterr - tests bits in Rx descriptor status and error fields
  * @rx_desc: pointer to receive descriptor (in le64 format)
@@ -293,12 +225,6 @@ struct iavf_rx_queue_stats {
 	u64 alloc_buff_failed;
 };
 
-enum iavf_ring_state_t {
-	__IAVF_TX_FDIR_INIT_DONE,
-	__IAVF_TX_XPS_INIT_DONE,
-	__IAVF_RING_STATE_NBITS /* must be last */
-};
-
 /* some useful defines for virtchannel interface, which
  * is the only remaining user of header split
  */
@@ -320,10 +246,9 @@ struct iavf_ring {
 		struct iavf_tx_buffer *tx_bi;
 		struct page **rx_pages;
 	};
-	DECLARE_BITMAP(state, __IAVF_RING_STATE_NBITS);
+	u8 __iomem *tail;
 	u16 queue_index;		/* Queue number of ring */
 	u8 dcb_tc;			/* Traffic class of ring */
-	u8 __iomem *tail;
 
 	/* high bit set means dynamic, use accessors routines to read/write.
 	 * hardware only supports 2us resolution for the ITR registers.
@@ -332,24 +257,16 @@ struct iavf_ring {
 	 */
 	u16 itr_setting;
 
-	u16 count;			/* Number of descriptors */
 	u16 reg_idx;			/* HW register index of the ring */
-	u16 rx_buf_len;
+	u16 count;			/* Number of descriptors */
 
 	/* used in interrupt processing */
 	u16 next_to_use;
 	u16 next_to_clean;
 
-	u8 atr_sample_rate;
-	u8 atr_count;
-
-	bool ring_active;		/* is ring online or not */
-	bool arm_wb;		/* do something to arm write back */
-	u8 packet_stride;
-
 	u16 flags;
 #define IAVF_TXR_FLAGS_WB_ON_ITR		BIT(0)
-/* BIT(1) is free, was IAVF_RXR_FLAGS_BUILD_SKB_ENABLED */
+#define IAVF_TXRX_FLAGS_ARM_WB			BIT(1)
 /* BIT(2) is free */
 #define IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1	BIT(3)
 #define IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2	BIT(4)
@@ -401,17 +318,6 @@ struct iavf_ring_container {
 #define iavf_for_each_ring(pos, head) \
 	for (pos = (head).ring; pos != NULL; pos = pos->next)
 
-static inline unsigned int iavf_rx_pg_order(struct iavf_ring *ring)
-{
-#if (PAGE_SIZE < 8192)
-	if (ring->rx_buf_len > (PAGE_SIZE / 2))
-		return 1;
-#endif
-	return 0;
-}
-
-#define iavf_rx_pg_size(_ring) (PAGE_SIZE << iavf_rx_pg_order(_ring))
-
 void iavf_alloc_rx_pages(struct iavf_ring *rxr);
 netdev_tx_t iavf_xmit_frame(struct sk_buff *skb, struct net_device *netdev);
 void iavf_clean_tx_ring(struct iavf_ring *tx_ring);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index 3030ba330326..bb90d8f3ad7e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -10,8 +10,6 @@
 #include "iavf_adminq.h"
 #include "iavf_devids.h"
 
-#define IAVF_RXQ_CTX_DBUFF_SHIFT 7
-
 /* IAVF_MASK is a macro used on 32 bit registers */
 #define IAVF_MASK(mask, shift) ((u32)(mask) << (shift))
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index fdddc3588487..c726d0c91cd8 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
+#include <linux/net/intel/libie/rx.h>
+
 #include "iavf.h"
 #include "iavf_prototype.h"
 #include "iavf_client.h"
@@ -269,13 +271,12 @@ int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter)
 void iavf_configure_queues(struct iavf_adapter *adapter)
 {
 	struct virtchnl_vsi_queue_config_info *vqci;
-	int i, max_frame = adapter->vf_res->max_mtu;
+	u32 i, max_frame = adapter->vf_res->max_mtu;
 	int pairs = adapter->num_active_queues;
 	struct virtchnl_queue_pair_info *vqpi;
 	size_t len;
 
-	if (max_frame > IAVF_MAX_RXBUFFER || !max_frame)
-		max_frame = IAVF_MAX_RXBUFFER;
+	max_frame = min_not_zero(max_frame, LIBIE_MAX_RX_FRM_LEN);
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
@@ -289,10 +290,6 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 	if (!vqci)
 		return;
 
-	/* Limit maximum frame size when jumbo frames is not enabled */
-	if (adapter->netdev->mtu <= ETH_DATA_LEN)
-		max_frame = IAVF_RXBUFFER_1536 - NET_IP_ALIGN;
-
 	vqci->vsi_id = adapter->vsi_res->vsi_id;
 	vqci->num_queue_pairs = pairs;
 	vqpi = vqci->qpair;
@@ -309,9 +306,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 		vqpi->rxq.ring_len = adapter->rx_rings[i].count;
 		vqpi->rxq.dma_ring_addr = adapter->rx_rings[i].dma;
 		vqpi->rxq.max_pkt_size = max_frame;
-		vqpi->rxq.databuffer_size =
-			ALIGN(adapter->rx_rings[i].rx_buf_len,
-			      BIT_ULL(IAVF_RXQ_CTX_DBUFF_SHIFT));
+		vqpi->rxq.databuffer_size = LIBIE_RX_BUF_LEN;
 		vqpi++;
 	}
 
diff --git a/include/linux/net/intel/libie/rx.h b/include/linux/net/intel/libie/rx.h
index 58bd0f35d025..3e8d0d5206e1 100644
--- a/include/linux/net/intel/libie/rx.h
+++ b/include/linux/net/intel/libie/rx.h
@@ -4,6 +4,7 @@
 #ifndef __LIBIE_RX_H
 #define __LIBIE_RX_H
 
+#include <linux/if_vlan.h>
 #include <linux/netdevice.h>
 
 /* O(1) converting i40e/ice/iavf's 8/10-bit hardware packet type to a parsed
@@ -125,4 +126,38 @@ static inline void libie_skb_set_hash(struct sk_buff *skb, u32 hash,
 	skb_set_hash(skb, hash, parsed.payload_layer);
 }
 
+/* Rx MTU/buffer/truesize helpers. Mostly pure software-side; HW-defined values
+ * are valid for all Intel HW.
+ */
+
+/* Space reserved in front of each frame */
+#define LIBIE_SKB_HEADROOM	(NET_SKB_PAD + NET_IP_ALIGN)
+/* Link layer / L2 overhead: Ethernet, 2 VLAN tags (C + S), FCS */
+#define LIBIE_RX_LL_LEN		(ETH_HLEN + 2 * VLAN_HLEN + ETH_FCS_LEN)
+
+/* Truesize: total space wasted on each frame. Always use order-0 pages */
+#define LIBIE_RX_PAGE_ORDER	0
+#define LIBIE_RX_TRUESIZE	(PAGE_SIZE << LIBIE_RX_PAGE_ORDER)
+/* Rx buffer size config is a multiple of 128 */
+#define LIBIE_RX_BUF_LEN_ALIGN	128
+/* HW-writeable space in one buffer: truesize - headroom/tailroom,
+ * HW-aligned
+ */
+#define __LIBIE_RX_BUF_LEN						    \
+	ALIGN_DOWN(SKB_MAX_ORDER(LIBIE_SKB_HEADROOM, LIBIE_RX_PAGE_ORDER),  \
+		   LIBIE_RX_BUF_LEN_ALIGN)
+/* The largest size for a single descriptor as per HW */
+#define LIBIE_MAX_RX_BUF_LEN	9728U
+/* "True" HW-writeable space: minimum from SW and HW values */
+#define LIBIE_RX_BUF_LEN	min_t(u32, __LIBIE_RX_BUF_LEN,		    \
+				      LIBIE_MAX_RX_BUF_LEN)
+
+/* The maximum frame size as per HW (S/G) */
+#define __LIBIE_MAX_RX_FRM_LEN	16382U
+/* ATST, HW can chain up to 5 Rx descriptors */
+#define LIBIE_MAX_RX_FRM_LEN	min_t(u32, __LIBIE_MAX_RX_FRM_LEN,	    \
+				      LIBIE_RX_BUF_LEN * 5)
+/* Maximum frame size minus LL overhead */
+#define LIBIE_MAX_MTU		(LIBIE_MAX_RX_FRM_LEN - LIBIE_RX_LL_LEN)
+
 #endif /* __LIBIE_RX_H */
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

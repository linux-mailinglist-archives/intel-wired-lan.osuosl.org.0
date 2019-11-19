Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C4110237F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:44:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E43587034;
	Tue, 19 Nov 2019 11:44:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gSWt4KlHUifl; Tue, 19 Nov 2019 11:44:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32CA98742D;
	Tue, 19 Nov 2019 11:44:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4214E1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3D10188303
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uvD42km-tUOF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:44:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8FD7B86963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:44:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="357087004"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga004.jf.intel.com with ESMTP; 19 Nov 2019 03:44:11 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:44:11 +0200
Message-Id: <20191119114411.41911-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 05/15] igc: Remove no need declaration
 of the igc_alloc_mapped_page
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We want to avoid forward-declarations of function if possible.
Rearrange the igc_alloc_mapped_page function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 94 +++++++++++++++----------------
 1 file changed, 46 insertions(+), 48 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 8a2baf8ad956..d26875592937 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -63,8 +63,6 @@ static void igc_free_q_vectors(struct igc_adapter *adapter);
 static void igc_irq_disable(struct igc_adapter *adapter);
 static void igc_irq_enable(struct igc_adapter *adapter);
 static void igc_configure_msix(struct igc_adapter *adapter);
-static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
-				  struct igc_rx_buffer *bi);
 
 enum latency_range {
 	lowest_latency = 0,
@@ -1606,6 +1604,52 @@ static void igc_put_rx_buffer(struct igc_ring *rx_ring,
 	rx_buffer->page = NULL;
 }
 
+static inline unsigned int igc_rx_offset(struct igc_ring *rx_ring)
+{
+	return ring_uses_build_skb(rx_ring) ? IGC_SKB_PAD : 0;
+}
+
+static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
+				  struct igc_rx_buffer *bi)
+{
+	struct page *page = bi->page;
+	dma_addr_t dma;
+
+	/* since we are recycling buffers we should seldom need to alloc */
+	if (likely(page))
+		return true;
+
+	/* alloc new page for storage */
+	page = dev_alloc_pages(igc_rx_pg_order(rx_ring));
+	if (unlikely(!page)) {
+		rx_ring->rx_stats.alloc_failed++;
+		return false;
+	}
+
+	/* map page for use */
+	dma = dma_map_page_attrs(rx_ring->dev, page, 0,
+				 igc_rx_pg_size(rx_ring),
+				 DMA_FROM_DEVICE,
+				 IGC_RX_DMA_ATTR);
+
+	/* if mapping failed free memory back to system since
+	 * there isn't much point in holding memory we can't use
+	 */
+	if (dma_mapping_error(rx_ring->dev, dma)) {
+		__free_page(page);
+
+		rx_ring->rx_stats.alloc_failed++;
+		return false;
+	}
+
+	bi->dma = dma;
+	bi->page = page;
+	bi->page_offset = igc_rx_offset(rx_ring);
+	bi->pagecnt_bias = 1;
+
+	return true;
+}
+
 /**
  * igc_alloc_rx_buffers - Replace used receive buffers; packet split
  * @rx_ring: rx descriptor ring
@@ -1767,52 +1811,6 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 	return total_packets;
 }
 
-static inline unsigned int igc_rx_offset(struct igc_ring *rx_ring)
-{
-	return ring_uses_build_skb(rx_ring) ? IGC_SKB_PAD : 0;
-}
-
-static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
-				  struct igc_rx_buffer *bi)
-{
-	struct page *page = bi->page;
-	dma_addr_t dma;
-
-	/* since we are recycling buffers we should seldom need to alloc */
-	if (likely(page))
-		return true;
-
-	/* alloc new page for storage */
-	page = dev_alloc_pages(igc_rx_pg_order(rx_ring));
-	if (unlikely(!page)) {
-		rx_ring->rx_stats.alloc_failed++;
-		return false;
-	}
-
-	/* map page for use */
-	dma = dma_map_page_attrs(rx_ring->dev, page, 0,
-				 igc_rx_pg_size(rx_ring),
-				 DMA_FROM_DEVICE,
-				 IGC_RX_DMA_ATTR);
-
-	/* if mapping failed free memory back to system since
-	 * there isn't much point in holding memory we can't use
-	 */
-	if (dma_mapping_error(rx_ring->dev, dma)) {
-		__free_page(page);
-
-		rx_ring->rx_stats.alloc_failed++;
-		return false;
-	}
-
-	bi->dma = dma;
-	bi->page = page;
-	bi->page_offset = igc_rx_offset(rx_ring);
-	bi->pagecnt_bias = 1;
-
-	return true;
-}
-
 /**
  * igc_clean_tx_irq - Reclaim resources after transmit completes
  * @q_vector: pointer to q_vector containing needed info
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

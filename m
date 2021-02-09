Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C81743146BF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 04:00:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 864E6861C7;
	Tue,  9 Feb 2021 03:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kq1iRnWF-zMG; Tue,  9 Feb 2021 03:00:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D377B86190;
	Tue,  9 Feb 2021 03:00:02 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2CDEC1BF27E
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 03:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F2BC86F519
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 03:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xdxN34X5eC30 for <intel-wired-lan@osuosl.org>;
 Tue,  9 Feb 2021 02:59:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id DC1BE6F884; Tue,  9 Feb 2021 02:59:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 603BE6F886
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:59:01 +0000 (UTC)
IronPort-SDR: eWEHOii/jUnJ+wuMOtvH7Uijx21CLXJsxjWCnMbgfsjDcuvJ6tpLWMa2IrY0KLHhNovx/MNvZR
 I7UUjCvWAE/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="181963393"
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="181963393"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 18:59:00 -0800
IronPort-SDR: OyxyWlOozpx2vcvoXK8YdEl/YFAswFMdq8Ipdj2uX5w/Xrt5beaHuG3oRdWndsz5jsx0WiDVGC
 bQwuoe90GQ7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="586039890"
Received: from otc-cfl-ubuntu-15.jf.intel.com ([10.54.31.57])
 by fmsmga005.fm.intel.com with ESMTP; 08 Feb 2021 18:59:00 -0800
From: Vedang Patel <vedang.patel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  8 Feb 2021 18:42:40 -0800
Message-Id: <20210209024243.23406-7-vedang.patel@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210209024243.23406-1-vedang.patel@intel.com>
References: <20210209024243.23406-1-vedang.patel@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v3 6/9] igc: Introduce
 igc_unmap_tx_buffer() helper
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
Cc: Andre Guedes <andre.guedes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andre Guedes <andre.guedes@intel.com>

In preparation for AF_XDP zero-copy support, encapsulate the code that
unmaps tx buffers into its own local helper so we can reuse it, avoiding
code duplication.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 49 +++++++----------------
 1 file changed, 15 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index f13ef54b9c7a..9049456d2410 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -171,6 +171,14 @@ static void igc_get_hw_control(struct igc_adapter *adapter)
 	     ctrl_ext | IGC_CTRL_EXT_DRV_LOAD);
 }
 
+static void igc_unmap_tx_buffer(struct device *dev, struct igc_tx_buffer *buf)
+{
+	dma_unmap_single(dev, dma_unmap_addr(buf, dma),
+			 dma_unmap_len(buf, len), DMA_TO_DEVICE);
+
+	dma_unmap_len_set(buf, len, 0);
+}
+
 /**
  * igc_clean_tx_ring - Free Tx Buffers
  * @tx_ring: ring to be cleaned
@@ -188,11 +196,7 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
 		else
 			dev_kfree_skb_any(tx_buffer->skb);
 
-		/* unmap skb header data */
-		dma_unmap_single(tx_ring->dev,
-				 dma_unmap_addr(tx_buffer, dma),
-				 dma_unmap_len(tx_buffer, len),
-				 DMA_TO_DEVICE);
+		igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
 
 		/* check for eop_desc to determine the end of the packet */
 		eop_desc = tx_buffer->next_to_watch;
@@ -211,10 +215,7 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
 
 			/* unmap any remaining paged data */
 			if (dma_unmap_len(tx_buffer, len))
-				dma_unmap_page(tx_ring->dev,
-					       dma_unmap_addr(tx_buffer, dma),
-					       dma_unmap_len(tx_buffer, len),
-					       DMA_TO_DEVICE);
+				igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
 		}
 
 		/* move us one more past the eop_desc for start of next pkt */
@@ -1218,11 +1219,7 @@ static int igc_tx_map(struct igc_ring *tx_ring,
 	/* clear dma mappings for failed tx_buffer_info map */
 	while (tx_buffer != first) {
 		if (dma_unmap_len(tx_buffer, len))
-			dma_unmap_page(tx_ring->dev,
-				       dma_unmap_addr(tx_buffer, dma),
-				       dma_unmap_len(tx_buffer, len),
-				       DMA_TO_DEVICE);
-		dma_unmap_len_set(tx_buffer, len, 0);
+			igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
 
 		if (i-- == 0)
 			i += tx_ring->count;
@@ -1230,11 +1227,7 @@ static int igc_tx_map(struct igc_ring *tx_ring,
 	}
 
 	if (dma_unmap_len(tx_buffer, len))
-		dma_unmap_single(tx_ring->dev,
-				 dma_unmap_addr(tx_buffer, dma),
-				 dma_unmap_len(tx_buffer, len),
-				 DMA_TO_DEVICE);
-	dma_unmap_len_set(tx_buffer, len, 0);
+		igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
 
 	dev_kfree_skb_any(tx_buffer->skb);
 	tx_buffer->skb = NULL;
@@ -2311,14 +2304,7 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 		else
 			napi_consume_skb(tx_buffer->skb, napi_budget);
 
-		/* unmap skb header data */
-		dma_unmap_single(tx_ring->dev,
-				 dma_unmap_addr(tx_buffer, dma),
-				 dma_unmap_len(tx_buffer, len),
-				 DMA_TO_DEVICE);
-
-		/* clear tx_buffer data */
-		dma_unmap_len_set(tx_buffer, len, 0);
+		igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
 
 		/* clear last DMA location and unmap remaining buffers */
 		while (tx_desc != eop_desc) {
@@ -2332,13 +2318,8 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 			}
 
 			/* unmap any remaining paged data */
-			if (dma_unmap_len(tx_buffer, len)) {
-				dma_unmap_page(tx_ring->dev,
-					       dma_unmap_addr(tx_buffer, dma),
-					       dma_unmap_len(tx_buffer, len),
-					       DMA_TO_DEVICE);
-				dma_unmap_len_set(tx_buffer, len, 0);
-			}
+			if (dma_unmap_len(tx_buffer, len))
+				igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
 		}
 
 		/* move us one more past the eop_desc for start of next pkt */
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

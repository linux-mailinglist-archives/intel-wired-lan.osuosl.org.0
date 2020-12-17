Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D212DD9D3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Dec 2020 21:24:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9EC23870E1;
	Thu, 17 Dec 2020 20:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j36jYTGES96G; Thu, 17 Dec 2020 20:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6818A86D6B;
	Thu, 17 Dec 2020 20:24:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A6981BF418
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 23735878B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OslS8XI5YUWr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Dec 2020 20:24:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1D5A987831
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:31 +0000 (UTC)
IronPort-SDR: Ob3FW4/5SOpPymPigZfUqY/zJo+9+/AwTZyBE50RZiQ0V4E5RzgZqtnLSA+48Dxt9n3Q/WdoRj
 xflF7VEHJCHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="155130691"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="155130691"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 12:24:30 -0800
IronPort-SDR: Uq/gPvjhAvCG46temyeauc0aB5ae7Jjg05LXdm7zgYd93dFkxV7w2RjecNCVb4ePi6KMR+w67Z
 iMiusMIKK5cA==
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="413611952"
Received: from ogmeshki-mobl.amr.corp.intel.com ([10.212.162.252])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 12:24:30 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Dec 2020 12:24:12 -0800
Message-Id: <20201217202415.77891-8-andre.guedes@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201217202415.77891-1-andre.guedes@intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 07/10] igc: Introduce
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In preparation for AF_XDP zero-copy support, this patch encapsulates the
code that unmaps tx buffers into its own local helper so we can reuse it
when adding zero-copy support, avoiding code duplication.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 49 +++++++----------------
 1 file changed, 15 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 26c2fc9977cc..60987a5b4b72 100644
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
@@ -1229,11 +1230,7 @@ static int igc_tx_map(struct igc_ring *tx_ring,
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
@@ -1241,11 +1238,7 @@ static int igc_tx_map(struct igc_ring *tx_ring,
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
@@ -2327,14 +2320,7 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
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
@@ -2348,13 +2334,8 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
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
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

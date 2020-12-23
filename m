Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE022E2172
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Dec 2020 21:37:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 720CF8695A;
	Wed, 23 Dec 2020 20:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A1oqlqtOzWad; Wed, 23 Dec 2020 20:37:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B606D86972;
	Wed, 23 Dec 2020 20:37:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EFFE91BF86B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 20:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ECC2587372
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 20:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hbuWoJdudHvf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Dec 2020 20:37:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7781C87218
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 20:37:36 +0000 (UTC)
IronPort-SDR: anof32z489qrDMUJtE5A5c5cWdIz9NU1hjSM6lQhkUJOG9po0pHwPPfWDM3u7DaaQUdT+a4Vex
 0MfcTX1BAgyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="155861772"
X-IronPort-AV: E=Sophos;i="5.78,442,1599548400"; d="scan'208";a="155861772"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 12:37:36 -0800
IronPort-SDR: m14nZnufktvVpEUBWoMnFoEXzlW/6hz/RZgL9DFKkDsu43wY3ag5IERC4ov5lGWl0KFTlVYHX/
 i6Fql45FD2hQ==
X-IronPort-AV: E=Sophos;i="5.78,442,1599548400"; d="scan'208";a="345203001"
Received: from eburton-mobl.amr.corp.intel.com ([10.209.148.11])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 12:37:35 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Dec 2020 12:37:02 -0800
Message-Id: <20201223203705.78705-7-andre.guedes@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201223203705.78705-1-andre.guedes@intel.com>
References: <20201223203705.78705-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 6/9] igc: Introduce
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

In preparation for AF_XDP zero-copy support, encapsulate the code that
unmaps tx buffers into its own local helper so we can reuse it, avoiding
code duplication.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 49 +++++++----------------
 1 file changed, 15 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 630ef97ebabb..815ceaba6f89 100644
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
@@ -1230,11 +1231,7 @@ static int igc_tx_map(struct igc_ring *tx_ring,
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
@@ -1242,11 +1239,7 @@ static int igc_tx_map(struct igc_ring *tx_ring,
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
@@ -2328,14 +2321,7 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
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
@@ -2349,13 +2335,8 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
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

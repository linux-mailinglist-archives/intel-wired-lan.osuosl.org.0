Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 490373BC1EA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 18:58:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B521E608C8;
	Mon,  5 Jul 2021 16:58:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v9igf6UiJcfh; Mon,  5 Jul 2021 16:58:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A89C2608A2;
	Mon,  5 Jul 2021 16:58:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DACD1BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 16:58:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4AD0D608A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 16:58:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8z908TZNfHQ4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 16:58:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6F263600CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 16:58:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10036"; a="270126754"
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="270126754"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 09:58:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="562686288"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga001.fm.intel.com with ESMTP; 05 Jul 2021 09:57:59 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jul 2021 18:43:36 +0200
Message-Id: <20210705164338.58313-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210705164338.58313-1-maciej.fijalkowski@intel.com>
References: <20210705164338.58313-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 intel-next 2/4] ice: optimize XDP_TX
 descriptor processing
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
Cc: joamaki@gmail.com, netdev@vger.kernel.org, toke@redhat.com,
 bjorn@kernel.org, kuba@kernel.org, bpf@vger.kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Improve the performance of XDP_TX by reducing the number of times we set
the RS bit. Instead of setting it for each packet, set it at the end of
the batch right before the tail bump. This results in reduced PCIe
traffic as HW will issue less writebacks.

For that purpose, introduce the next_rs_idx field onto ice_ring so that
the descriptor with RS bit set can be tracked.

This will allow for calculating the amount of descriptors that are ready
to be cleaned. DD bit can be checked only on the descriptor that
next_rs_idx points to. This logic can not be combined into existing
ice_clean_tx_irq routine so let's introduce a separate function
dedicated for cleaning XDP rings and drop the XDP specific bits from the
existing one.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 79 ++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  5 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 13 ++-
 3 files changed, 76 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 6ee8e0032d52..23b97c9579fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -194,6 +194,63 @@ void ice_free_tx_ring(struct ice_ring *tx_ring)
 	}
 }
 
+/**
+ * ice_clean_xdp_irq - Reclaim resources after transmit completes on XDP ring
+ * @xdp_ring: XDP ring to clean
+ *
+ * Returns true if there's any budget left (e.g. the clean is finished)
+ */
+static bool ice_clean_xdp_irq(struct ice_ring *xdp_ring)
+{
+	unsigned int total_bytes = 0, total_pkts = 0;
+	u16 next_rs_idx = xdp_ring->next_rs_idx;
+	u16 ntc = xdp_ring->next_to_clean;
+	struct ice_tx_desc *next_rs_desc;
+	struct ice_tx_buf *tx_buf;
+	u16 frames_ready = 0;
+	u16 frames_to_clean;
+	int i;
+
+	next_rs_desc = ICE_TX_DESC(xdp_ring, next_rs_idx);
+	if (next_rs_desc->cmd_type_offset_bsz &
+	    cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE)) {
+		if (next_rs_idx >= ntc)
+			frames_ready = next_rs_idx - ntc;
+		else
+			frames_ready = next_rs_idx + xdp_ring->count - ntc;
+	}
+
+	if (!frames_ready)
+		return true;
+
+	frames_to_clean = min_t(u16, frames_ready, ICE_DFLT_IRQ_WORK);
+
+	for (i = 0; i < frames_to_clean; i++) {
+		tx_buf = &xdp_ring->tx_buf[ntc];
+
+		total_bytes += tx_buf->bytecount;
+		/* normally tx_buf->gso_segs was taken but at this point
+		 * it's always 1 for us
+		 */
+		total_pkts++;
+
+		page_frag_free(tx_buf->raw_buf);
+		dma_unmap_single(xdp_ring->dev, dma_unmap_addr(tx_buf, dma),
+				 dma_unmap_len(tx_buf, len), DMA_TO_DEVICE);
+		dma_unmap_len_set(tx_buf, len, 0);
+		tx_buf->raw_buf = NULL;
+
+		ntc++;
+		if (ntc >= xdp_ring->count)
+			ntc = 0;
+	}
+
+	xdp_ring->next_to_clean = ntc;
+	ice_update_tx_ring_stats(xdp_ring, total_pkts, total_bytes);
+
+	return frames_ready <= frames_to_clean;
+}
+
 /**
  * ice_clean_tx_irq - Reclaim resources after transmit completes
  * @tx_ring: Tx ring to clean
@@ -238,11 +295,8 @@ static bool ice_clean_tx_irq(struct ice_ring *tx_ring, int napi_budget)
 		total_bytes += tx_buf->bytecount;
 		total_pkts += tx_buf->gso_segs;
 
-		if (ice_ring_is_xdp(tx_ring))
-			page_frag_free(tx_buf->raw_buf);
-		else
-			/* free the skb */
-			napi_consume_skb(tx_buf->skb, napi_budget);
+		/* free the skb */
+		napi_consume_skb(tx_buf->skb, napi_budget);
 
 		/* unmap skb header data */
 		dma_unmap_single(tx_ring->dev,
@@ -297,10 +351,6 @@ static bool ice_clean_tx_irq(struct ice_ring *tx_ring, int napi_budget)
 	tx_ring->next_to_clean = i;
 
 	ice_update_tx_ring_stats(tx_ring, total_pkts, total_bytes);
-
-	if (ice_ring_is_xdp(tx_ring))
-		return !!budget;
-
 	netdev_tx_completed_queue(txring_txq(tx_ring), total_pkts,
 				  total_bytes);
 
@@ -1396,9 +1446,14 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	 * budget and be more aggressive about cleaning up the Tx descriptors.
 	 */
 	ice_for_each_ring(ring, q_vector->tx) {
-		bool wd = ring->xsk_pool ?
-			  ice_clean_tx_irq_zc(ring, budget) :
-			  ice_clean_tx_irq(ring, budget);
+		bool wd;
+
+		if (ring->xsk_pool)
+			wd = ice_clean_tx_irq_zc(ring, budget);
+		else if (ice_ring_is_xdp(ring))
+			wd = ice_clean_xdp_irq(ring);
+		else
+			wd = ice_clean_tx_irq(ring, budget);
 
 		if (!wd)
 			clean_complete = false;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 1e46e80f3d6f..b43d471ce05d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -283,7 +283,10 @@ struct ice_ring {
 	/* used in interrupt processing */
 	u16 next_to_use;
 	u16 next_to_clean;
-	u16 next_to_alloc;
+	union {
+		u16 next_to_alloc;
+		u16 next_rs_idx;
+	};
 
 	/* stats structs */
 	struct ice_q_stats	stats;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 4fd01a153d35..0b3d51c9869b 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -244,19 +244,13 @@ int ice_xmit_xdp_ring(void *data, u16 size, struct ice_ring *xdp_ring)
 
 	tx_desc = ICE_TX_DESC(xdp_ring, i);
 	tx_desc->buf_addr = cpu_to_le64(dma);
-	tx_desc->cmd_type_offset_bsz = ice_build_ctob(ICE_TXD_LAST_DESC_CMD, 0,
+	tx_desc->cmd_type_offset_bsz = ice_build_ctob(ICE_TX_DESC_CMD_EOP, 0,
 						      size, 0);
 
-	/* Make certain all of the status bits have been updated
-	 * before next_to_watch is written.
-	 */
-	smp_wmb();
-
+	xdp_ring->next_rs_idx = i;
 	i++;
 	if (i == xdp_ring->count)
 		i = 0;
-
-	tx_buf->next_to_watch = tx_desc;
 	xdp_ring->next_to_use = i;
 
 	return ICE_XDP_TX;
@@ -296,7 +290,10 @@ void ice_finalize_xdp_rx(struct ice_ring *rx_ring, unsigned int xdp_res)
 	if (xdp_res & ICE_XDP_TX) {
 		struct ice_ring *xdp_ring =
 			rx_ring->vsi->xdp_rings[smp_processor_id()];
+		struct ice_tx_desc *next_rs_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_rs_idx);
 
+		next_rs_desc->cmd_type_offset_bsz |=
+			cpu_to_le64(ICE_TX_DESC_CMD_RS << ICE_TXD_QW1_CMD_S);
 		ice_xdp_ring_update_tail(xdp_ring);
 	}
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

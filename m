Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2382D325AB4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 01:21:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFAB94EFE6;
	Fri, 26 Feb 2021 00:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HEHJ5CtJ2jm4; Fri, 26 Feb 2021 00:21:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DEF84EEE7;
	Fri, 26 Feb 2021 00:21:20 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0535E1BF2A9
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 00:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0257384246
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 00:20:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mMVTqFteenW8 for <intel-wired-lan@osuosl.org>;
 Fri, 26 Feb 2021 00:20:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EFA238421D
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 00:20:47 +0000 (UTC)
IronPort-SDR: 2sQCh3gne/0ZkjDCQwQ5iPcpVCR7WIpSe4yO4Q4XGYMvKk8J2ZrNlSGk5JJ0SRyaKOpz4/O9/x
 iaeoF5FK92+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9906"; a="185033340"
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="185033340"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2021 16:20:46 -0800
IronPort-SDR: f6BP+ogzjnF6SUukhZkKmGTfykxvYtAGn8RkAENhheCK1DLyYO23DIa18WRLz1nG6DX/tBCjZf
 s/vCuzTK3/3Q==
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="392639314"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2021 16:20:46 -0800
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 25 Feb 2021 16:23:08 -0800
Message-Id: <20210226002308.2348-10-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210226002308.2348-1-jithu.joseph@intel.com>
References: <20210226002308.2348-1-jithu.joseph@intel.com>
Subject: [Intel-wired-lan] [PATCH v5 9/9] igc: Enable TX via AF_XDP zero-copy
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

Add support for transmitting packets via AF_XDP zero-copy mechanism.

The packet transmission itself is implemented by igc_xdp_xmit_zc() which
is called from igc_clean_tx_irq() when the ring has AF_XDP zero-copy
enabled. Likewise i40e and ice drivers, the transmission budget used is
the number of descriptors available on the ring.

A new tx buffer type is introduced to 'enum igc_tx_buffer_type' to
indicate the tx buffer uses memory from xsk pool so it can be properly
cleaned after transmission or when the ring is cleaned.

The I225 controller has only 4 Tx hardware queues so the main difference
between igc and other Intel drivers that support AF_XDP zero-copy is
that there is no tx ring dedicated exclusively to XDP. Instead, tx
rings are shared between the network stack and XDP, and netdev queue
lock is used to ensure mutual exclusion. This is the same approach
implemented to support XDP_TX and XDP_REDIRECT actions.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |   3 +
 drivers/net/ethernet/intel/igc/igc_base.h |   1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 113 +++++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  20 +++-
 4 files changed, 129 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 6e5869a1c9bc..53f3cef3820d 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -258,6 +258,8 @@ int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx);
 void igc_update_stats(struct igc_adapter *adapter);
 void igc_disable_rx_ring(struct igc_ring *ring);
 void igc_enable_rx_ring(struct igc_ring *ring);
+void igc_disable_tx_ring(struct igc_ring *ring);
+void igc_enable_tx_ring(struct igc_ring *ring);
 int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
 
 /* igc_dump declarations */
@@ -413,6 +415,7 @@ enum igc_boards {
 enum igc_tx_buffer_type {
 	IGC_TX_BUFFER_TYPE_SKB,
 	IGC_TX_BUFFER_TYPE_XDP,
+	IGC_TX_BUFFER_TYPE_XSK,
 };
 
 /* wrapper around a pointer to a socket buffer,
diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
index 2ca028c1919f..ce530f5fd7bd 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.h
+++ b/drivers/net/ethernet/intel/igc/igc_base.h
@@ -78,6 +78,7 @@ union igc_adv_rx_desc {
 
 /* Additional Transmit Descriptor Control definitions */
 #define IGC_TXDCTL_QUEUE_ENABLE	0x02000000 /* Ena specific Tx Queue */
+#define IGC_TXDCTL_SWFLUSH	0x04000000 /* Transmit Software Flush */
 
 /* Additional Receive Descriptor Control definitions */
 #define IGC_RXDCTL_QUEUE_ENABLE	0x02000000 /* Ena specific Rx Queue */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 0aacce5182ce..080f8fca8bbf 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -187,16 +187,22 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
 {
 	u16 i = tx_ring->next_to_clean;
 	struct igc_tx_buffer *tx_buffer = &tx_ring->tx_buffer_info[i];
+	u32 xsk_frames = 0;
 
 	while (i != tx_ring->next_to_use) {
 		union igc_adv_tx_desc *eop_desc, *tx_desc;
 
 		switch (tx_buffer->type) {
+		case IGC_TX_BUFFER_TYPE_XSK:
+			xsk_frames++;
+			break;
 		case IGC_TX_BUFFER_TYPE_XDP:
 			xdp_return_frame(tx_buffer->xdpf);
+			igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
 			break;
 		case IGC_TX_BUFFER_TYPE_SKB:
 			dev_kfree_skb_any(tx_buffer->skb);
+			igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
 			break;
 		default:
 			netdev_warn_once(tx_ring->netdev,
@@ -204,8 +210,6 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
 			break;
 		}
 
-		igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
-
 		/* check for eop_desc to determine the end of the packet */
 		eop_desc = tx_buffer->next_to_watch;
 		tx_desc = IGC_TX_DESC(tx_ring, i);
@@ -235,6 +239,9 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
 		}
 	}
 
+	if (tx_ring->xsk_pool && xsk_frames)
+		xsk_tx_completed(tx_ring->xsk_pool, xsk_frames);
+
 	/* reset BQL for queue */
 	netdev_tx_reset_queue(txring_txq(tx_ring));
 
@@ -677,6 +684,8 @@ static void igc_configure_tx_ring(struct igc_adapter *adapter,
 	u64 tdba = ring->dma;
 	u32 txdctl = 0;
 
+	ring->xsk_pool = igc_get_xsk_pool(adapter, ring);
+
 	/* disable the queue */
 	wr32(IGC_TXDCTL(reg_idx), 0);
 	wrfl();
@@ -2508,6 +2517,65 @@ static void igc_update_tx_stats(struct igc_q_vector *q_vector,
 	q_vector->tx.total_packets += packets;
 }
 
+static void igc_xdp_xmit_zc(struct igc_ring *ring)
+{
+	struct xsk_buff_pool *pool = ring->xsk_pool;
+	struct netdev_queue *nq = txring_txq(ring);
+	union igc_adv_tx_desc *tx_desc = NULL;
+	int cpu = smp_processor_id();
+	u16 ntu = ring->next_to_use;
+	struct xdp_desc xdp_desc;
+	u16 budget;
+
+	if (!netif_carrier_ok(ring->netdev))
+		return;
+
+	__netif_tx_lock(nq, cpu);
+
+	budget = igc_desc_unused(ring);
+
+	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
+		u32 cmd_type, olinfo_status;
+		struct igc_tx_buffer *bi;
+		dma_addr_t dma;
+
+		cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
+			   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
+			   xdp_desc.len;
+		olinfo_status = xdp_desc.len << IGC_ADVTXD_PAYLEN_SHIFT;
+
+		dma = xsk_buff_raw_get_dma(pool, xdp_desc.addr);
+		xsk_buff_raw_dma_sync_for_device(pool, dma, xdp_desc.len);
+
+		tx_desc = IGC_TX_DESC(ring, ntu);
+		tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+		tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
+		tx_desc->read.buffer_addr = cpu_to_le64(dma);
+
+		bi = &ring->tx_buffer_info[ntu];
+		bi->type = IGC_TX_BUFFER_TYPE_XSK;
+		bi->protocol = 0;
+		bi->bytecount = xdp_desc.len;
+		bi->gso_segs = 1;
+		bi->time_stamp = jiffies;
+		bi->next_to_watch = tx_desc;
+
+		netdev_tx_sent_queue(txring_txq(ring), xdp_desc.len);
+
+		ntu++;
+		if (ntu == ring->count)
+			ntu = 0;
+	}
+
+	ring->next_to_use = ntu;
+	if (tx_desc) {
+		igc_flush_tx_descriptors(ring);
+		xsk_tx_release(pool);
+	}
+
+	__netif_tx_unlock(nq);
+}
+
 /**
  * igc_clean_tx_irq - Reclaim resources after transmit completes
  * @q_vector: pointer to q_vector containing needed info
@@ -2524,6 +2592,7 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 	unsigned int i = tx_ring->next_to_clean;
 	struct igc_tx_buffer *tx_buffer;
 	union igc_adv_tx_desc *tx_desc;
+	u32 xsk_frames = 0;
 
 	if (test_bit(__IGC_DOWN, &adapter->state))
 		return true;
@@ -2554,11 +2623,16 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 		total_packets += tx_buffer->gso_segs;
 
 		switch (tx_buffer->type) {
+		case IGC_TX_BUFFER_TYPE_XSK:
+			xsk_frames++;
+			break;
 		case IGC_TX_BUFFER_TYPE_XDP:
 			xdp_return_frame(tx_buffer->xdpf);
+			igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
 			break;
 		case IGC_TX_BUFFER_TYPE_SKB:
 			napi_consume_skb(tx_buffer->skb, napi_budget);
+			igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
 			break;
 		default:
 			netdev_warn_once(tx_ring->netdev,
@@ -2566,8 +2640,6 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 			break;
 		}
 
-		igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
-
 		/* clear last DMA location and unmap remaining buffers */
 		while (tx_desc != eop_desc) {
 			tx_buffer++;
@@ -2609,6 +2681,14 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 
 	igc_update_tx_stats(q_vector, total_packets, total_bytes);
 
+	if (tx_ring->xsk_pool) {
+		if (xsk_frames)
+			xsk_tx_completed(tx_ring->xsk_pool, xsk_frames);
+		if (xsk_uses_need_wakeup(tx_ring->xsk_pool))
+			xsk_set_tx_need_wakeup(tx_ring->xsk_pool);
+		igc_xdp_xmit_zc(tx_ring);
+	}
+
 	if (test_bit(IGC_RING_FLAG_TX_DETECT_HANG, &tx_ring->flags)) {
 		struct igc_hw *hw = &adapter->hw;
 
@@ -6339,6 +6419,31 @@ void igc_enable_rx_ring(struct igc_ring *ring)
 		igc_alloc_rx_buffers(ring, igc_desc_unused(ring));
 }
 
+static void igc_disable_tx_ring_hw(struct igc_ring *ring)
+{
+	struct igc_hw *hw = &ring->q_vector->adapter->hw;
+	u8 idx = ring->reg_idx;
+	u32 txdctl;
+
+	txdctl = rd32(IGC_TXDCTL(idx));
+	txdctl &= ~IGC_TXDCTL_QUEUE_ENABLE;
+	txdctl |= IGC_TXDCTL_SWFLUSH;
+	wr32(IGC_TXDCTL(idx), txdctl);
+}
+
+void igc_disable_tx_ring(struct igc_ring *ring)
+{
+	igc_disable_tx_ring_hw(ring);
+	igc_clean_tx_ring(ring);
+}
+
+void igc_enable_tx_ring(struct igc_ring *ring)
+{
+	struct igc_adapter *adapter = ring->q_vector->adapter;
+
+	igc_configure_tx_ring(adapter, ring);
+}
+
 /**
  * igc_init_module - Driver Registration Routine
  *
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index 7fe3177a53dd..38e86522ab7b 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -39,13 +39,14 @@ static int igc_xdp_enable_pool(struct igc_adapter *adapter,
 {
 	struct net_device *ndev = adapter->netdev;
 	struct device *dev = &adapter->pdev->dev;
-	struct igc_ring *rx_ring;
+	struct igc_ring *rx_ring, *tx_ring;
 	struct napi_struct *napi;
 	bool needs_reset;
 	u32 frame_size;
 	int err;
 
-	if (queue_id >= adapter->num_rx_queues)
+	if (queue_id >= adapter->num_rx_queues ||
+	    queue_id >= adapter->num_tx_queues)
 		return -EINVAL;
 
 	frame_size = xsk_pool_get_rx_frame_size(pool);
@@ -67,18 +68,23 @@ static int igc_xdp_enable_pool(struct igc_adapter *adapter,
 	needs_reset = netif_running(adapter->netdev) && igc_xdp_is_enabled(adapter);
 
 	rx_ring = adapter->rx_ring[queue_id];
+	tx_ring = adapter->tx_ring[queue_id];
+	/* Rx and Tx rings share the same napi context. */
 	napi = &rx_ring->q_vector->napi;
 
 	if (needs_reset) {
 		igc_disable_rx_ring(rx_ring);
+		igc_disable_tx_ring(tx_ring);
 		napi_disable(napi);
 	}
 
 	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
+	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
 
 	if (needs_reset) {
 		napi_enable(napi);
 		igc_enable_rx_ring(rx_ring);
+		igc_enable_tx_ring(tx_ring);
 
 		err = igc_xsk_wakeup(ndev, queue_id, XDP_WAKEUP_RX);
 		if (err)
@@ -90,12 +96,13 @@ static int igc_xdp_enable_pool(struct igc_adapter *adapter,
 
 static int igc_xdp_disable_pool(struct igc_adapter *adapter, u16 queue_id)
 {
+	struct igc_ring *rx_ring, *tx_ring;
 	struct xsk_buff_pool *pool;
-	struct igc_ring *rx_ring;
 	struct napi_struct *napi;
 	bool needs_reset;
 
-	if (queue_id >= adapter->num_rx_queues)
+	if (queue_id >= adapter->num_rx_queues ||
+	    queue_id >= adapter->num_tx_queues)
 		return -EINVAL;
 
 	pool = xsk_get_pool_from_qid(adapter->netdev, queue_id);
@@ -105,19 +112,24 @@ static int igc_xdp_disable_pool(struct igc_adapter *adapter, u16 queue_id)
 	needs_reset = netif_running(adapter->netdev) && igc_xdp_is_enabled(adapter);
 
 	rx_ring = adapter->rx_ring[queue_id];
+	tx_ring = adapter->tx_ring[queue_id];
+	/* Rx and Tx rings share the same napi context. */
 	napi = &rx_ring->q_vector->napi;
 
 	if (needs_reset) {
 		igc_disable_rx_ring(rx_ring);
+		igc_disable_tx_ring(tx_ring);
 		napi_disable(napi);
 	}
 
 	xsk_pool_dma_unmap(pool, IGC_RX_DMA_ATTR);
 	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
+	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
 
 	if (needs_reset) {
 		napi_enable(napi);
 		igc_enable_rx_ring(rx_ring);
+		igc_enable_tx_ring(tx_ring);
 	}
 
 	return 0;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

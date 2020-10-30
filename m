Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F682A0FED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Oct 2020 22:04:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F284E8506F;
	Fri, 30 Oct 2020 21:04:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 80pzXY8ZiKYf; Fri, 30 Oct 2020 21:04:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 274B185A46;
	Fri, 30 Oct 2020 21:04:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCAE21BF294
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 21:04:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7D138688A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 21:04:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BCFdivHhORYa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Oct 2020 21:04:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7CACA86C47
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 21:04:00 +0000 (UTC)
IronPort-SDR: CDIGtd9zHML92r1vPJqzipidy9Z8XkmIbeWACErQDDgIl2l+4BG6raKCEBHkOGELJ8QmaV9Pr6
 WVc4uKpJsr0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="155645246"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="155645246"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 14:03:59 -0700
IronPort-SDR: 1WV2rfYnvcW5XpIL6WiTrUff1FYhGvQdsZD2SHHocgFF8nGQPKVCpUZSEVfov+1T7vqIkiQnRv
 vY8M+9MyACDg==
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="395592263"
Received: from jesantos-mobl.amr.corp.intel.com ([10.209.106.15])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 14:03:59 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 30 Oct 2020 14:03:50 -0700
Message-Id: <20201030210351.46482-9-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201030210351.46482-1-andre.guedes@intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 8/9] igc: Add support for XDP_TX action
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

This patch adds support for XDP_TX action which enables XDP programs to
transmit back receiving frames.

I225 controller has only 4 tx hardware queues. Since XDP programs may
not even issue an XDP_TX action, this patch doesn't reserve dedicated
queues just for XDP like other Intel drivers do. Instead, the queues
are shared between the network stack and XDP. The netdev queue lock is
used to ensure mutual exclusion.

Since frames can now be transmitted via XDP_TX, the igc_tx_buffer
structure is modified so we are able to save a reference to the xdp
frame for later clean up once the packet is transmitted. The tx_buffer
is mapped to either a skb or a xdpf so we use a union to save the skb
or xdpf pointer and have a bit in tx_flags to indicate which field to
use.

This patch has been tested with the sample app "xdp2" located in
samples/bpf/ dir.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |   9 +-
 drivers/net/ethernet/intel/igc/igc_main.c | 173 ++++++++++++++++++++--
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  27 ++++
 drivers/net/ethernet/intel/igc/igc_xdp.h  |   3 +
 4 files changed, 201 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 5c2f363106ae..9c566d930ab0 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -112,6 +112,8 @@ struct igc_ring {
 			struct sk_buff *skb;
 		};
 	};
+
+	struct xdp_rxq_info xdp_rxq;
 } ____cacheline_internodealigned_in_smp;
 
 /* Board specific private data structure */
@@ -380,6 +382,8 @@ enum igc_tx_flags {
 	/* olinfo flags */
 	IGC_TX_FLAGS_IPV4	= 0x10,
 	IGC_TX_FLAGS_CSUM	= 0x20,
+
+	IGC_TX_FLAGS_XDP	= 0x100,
 };
 
 enum igc_boards {
@@ -402,7 +406,10 @@ enum igc_boards {
 struct igc_tx_buffer {
 	union igc_adv_tx_desc *next_to_watch;
 	unsigned long time_stamp;
-	struct sk_buff *skb;
+	union {
+		struct sk_buff *skb;
+		struct xdp_frame *xdpf;
+	};
 	unsigned int bytecount;
 	u16 gso_segs;
 	__be16 protocol;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 734a570bbadb..ae933982e239 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -26,6 +26,7 @@
 
 #define IGC_XDP_PASS		0
 #define IGC_XDP_CONSUMED	BIT(0)
+#define IGC_XDP_TX		BIT(1)
 
 static int debug = -1;
 
@@ -182,8 +183,10 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
 	while (i != tx_ring->next_to_use) {
 		union igc_adv_tx_desc *eop_desc, *tx_desc;
 
-		/* Free all the Tx ring sk_buffs */
-		dev_kfree_skb_any(tx_buffer->skb);
+		if (tx_buffer->tx_flags & IGC_TX_FLAGS_XDP)
+			xdp_return_frame(tx_buffer->xdpf);
+		else
+			dev_kfree_skb_any(tx_buffer->skb);
 
 		/* unmap skb header data */
 		dma_unmap_single(tx_ring->dev,
@@ -411,6 +414,8 @@ void igc_free_rx_resources(struct igc_ring *rx_ring)
 {
 	igc_clean_rx_ring(rx_ring);
 
+	igc_xdp_unregister_rxq_info(rx_ring);
+
 	vfree(rx_ring->rx_buffer_info);
 	rx_ring->rx_buffer_info = NULL;
 
@@ -448,7 +453,11 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
 {
 	struct net_device *ndev = rx_ring->netdev;
 	struct device *dev = rx_ring->dev;
-	int size, desc_len;
+	int size, desc_len, res;
+
+	res = igc_xdp_register_rxq_info(rx_ring);
+	if (res < 0)
+		return res;
 
 	size = sizeof(struct igc_rx_buffer) * rx_ring->count;
 	rx_ring->rx_buffer_info = vzalloc(size);
@@ -474,6 +483,7 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
 	return 0;
 
 err:
+	igc_xdp_unregister_rxq_info(rx_ring);
 	vfree(rx_ring->rx_buffer_info);
 	rx_ring->rx_buffer_info = NULL;
 	netdev_err(ndev, "Unable to allocate memory for Rx descriptor ring\n");
@@ -1927,6 +1937,98 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
 	}
 }
 
+static int igc_xdp_init_tx_buffer(struct igc_tx_buffer *buffer,
+				  struct xdp_frame *xdpf,
+				  struct igc_ring *ring)
+{
+	dma_addr_t dma;
+
+	dma = dma_map_single(ring->dev, xdpf->data, xdpf->len, DMA_TO_DEVICE);
+	if (dma_mapping_error(ring->dev, dma)) {
+		netdev_err_once(ring->netdev, "Failed to map DMA for TX\n");
+		return -ENOMEM;
+	}
+
+	buffer->xdpf = xdpf;
+	buffer->tx_flags = IGC_TX_FLAGS_XDP;
+	buffer->protocol = 0;
+	buffer->bytecount = xdpf->len;
+	buffer->gso_segs = 1;
+	buffer->time_stamp = jiffies;
+	dma_unmap_len_set(buffer, len, xdpf->len);
+	dma_unmap_addr_set(buffer, dma, dma);
+	return 0;
+}
+
+/* This function requires __netif_tx_lock is held by the caller. */
+static int igc_xdp_init_tx_descriptor(struct igc_ring *ring,
+				      struct xdp_frame *xdpf)
+{
+	struct igc_tx_buffer *buffer;
+	union igc_adv_tx_desc *desc;
+	u32 cmd_type, olinfo_status;
+	int err;
+
+	if (!igc_desc_unused(ring))
+		return -EBUSY;
+
+	buffer = &ring->tx_buffer_info[ring->next_to_use];
+	err = igc_xdp_init_tx_buffer(buffer, xdpf, ring);
+	if (err)
+		return err;
+
+	cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
+		   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
+		   buffer->bytecount;
+	olinfo_status = buffer->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
+
+	desc = IGC_TX_DESC(ring, ring->next_to_use);
+	desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+	desc->read.olinfo_status = cpu_to_le32(olinfo_status);
+	desc->read.buffer_addr = cpu_to_le64(dma_unmap_addr(buffer, dma));
+
+	netdev_tx_sent_queue(txring_txq(ring), buffer->bytecount);
+
+	buffer->next_to_watch = desc;
+
+	ring->next_to_use++;
+	if (ring->next_to_use == ring->count)
+		ring->next_to_use = 0;
+
+	return 0;
+}
+
+static struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter,
+					    int cpu)
+{
+	int index = cpu;
+
+	if (index >= adapter->num_tx_queues)
+		index = index % adapter->num_tx_queues;
+
+	return adapter->tx_ring[index];
+}
+
+static int igc_xdp_xmit_back(struct igc_adapter *adapter, struct xdp_buff *xdp)
+{
+	struct xdp_frame *xdpf = xdp_convert_buff_to_frame(xdp);
+	int cpu = smp_processor_id();
+	struct netdev_queue *nq;
+	struct igc_ring *ring;
+	int res;
+
+	if (unlikely(!xdpf))
+		return -EFAULT;
+
+	ring = igc_xdp_get_tx_ring(adapter, cpu);
+	nq = txring_txq(ring);
+
+	__netif_tx_lock(nq, cpu);
+	res = igc_xdp_init_tx_descriptor(ring, xdpf);
+	__netif_tx_unlock(nq);
+	return res;
+}
+
 static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
 					struct xdp_buff *xdp)
 {
@@ -1947,6 +2049,12 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
 	case XDP_PASS:
 		res = IGC_XDP_PASS;
 		break;
+	case XDP_TX:
+		if (igc_xdp_xmit_back(adapter, xdp) < 0)
+			res = IGC_XDP_CONSUMED;
+		else
+			res = IGC_XDP_TX;
+		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
@@ -1963,20 +2071,49 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
 	return ERR_PTR(-res);
 }
 
+/* This function assumes __netif_tx_lock is held by the caller. */
+static void igc_flush_tx_descriptors(struct igc_ring *ring)
+{
+	/* Once tail pointer is updated, hardware can fetch the descriptors
+	 * any time so we issue a write membar here to ensure all memory
+	 * writes are complete before the tail pointer is updated.
+	 */
+	wmb();
+	writel(ring->next_to_use, ring->tail);
+}
+
+static void igc_finalize_xdp(struct igc_adapter *adapter, int status)
+{
+	int cpu = smp_processor_id();
+	struct netdev_queue *nq;
+	struct igc_ring *ring;
+
+	if (status & IGC_XDP_TX) {
+		ring = igc_xdp_get_tx_ring(adapter, cpu);
+		nq = txring_txq(ring);
+
+		__netif_tx_lock(nq, cpu);
+		igc_flush_tx_descriptors(ring);
+		__netif_tx_unlock(nq);
+	}
+}
+
 static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 {
 	unsigned int total_bytes = 0, total_packets = 0;
+	struct igc_adapter *adapter = q_vector->adapter;
 	struct igc_ring *rx_ring = q_vector->rx.ring;
 	struct sk_buff *skb = rx_ring->skb;
 	u16 cleaned_count = igc_desc_unused(rx_ring);
+	int xdp_status = 0;
 
 	while (likely(total_packets < budget)) {
 		union igc_adv_rx_desc *rx_desc;
 		struct igc_rx_buffer *rx_buffer;
+		unsigned int size, truesize;
 		ktime_t timestamp = 0;
 		struct xdp_buff xdp;
 		int pkt_offset = 0;
-		unsigned int size;
 		void *pktbuf;
 
 		/* return some buffers to hardware, one at a time is too slow */
@@ -1997,6 +2134,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		dma_rmb();
 
 		rx_buffer = igc_get_rx_buffer(rx_ring, size);
+		truesize = igc_get_rx_frame_truesize(rx_ring, size);
 
 		pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
 
@@ -2008,19 +2146,29 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		}
 
 		if (!skb) {
-			struct igc_adapter *adapter = q_vector->adapter;
-
 			xdp.data = pktbuf + pkt_offset;
 			xdp.data_end = xdp.data + size;
 			xdp.data_hard_start = pktbuf - igc_rx_offset(rx_ring);
 			xdp_set_data_meta_invalid(&xdp);
-			xdp.frame_sz = igc_get_rx_frame_truesize(rx_ring, size);
+			xdp.frame_sz = truesize;
+			xdp.rxq = &rx_ring->xdp_rxq;
 
 			skb = igc_xdp_run_prog(adapter, &xdp);
 		}
 
 		if (IS_ERR(skb)) {
-			rx_buffer->pagecnt_bias++;
+			unsigned int xdp_res = -PTR_ERR(skb);
+
+			switch (xdp_res) {
+			case IGC_XDP_CONSUMED:
+				rx_buffer->pagecnt_bias++;
+				break;
+			case IGC_XDP_TX:
+				igc_rx_buffer_flip(rx_buffer, truesize);
+				xdp_status |= xdp_res;
+				break;
+			}
+
 			total_packets++;
 			total_bytes += size;
 		} else if (skb)
@@ -2066,6 +2214,9 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		total_packets++;
 	}
 
+	if (xdp_status)
+		igc_finalize_xdp(adapter, xdp_status);
+
 	/* place incomplete frames back on ring for completion */
 	rx_ring->skb = skb;
 
@@ -2127,8 +2278,10 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 		total_bytes += tx_buffer->bytecount;
 		total_packets += tx_buffer->gso_segs;
 
-		/* free the skb */
-		napi_consume_skb(tx_buffer->skb, napi_budget);
+		if (tx_buffer->tx_flags & IGC_TX_FLAGS_XDP)
+			xdp_return_frame(tx_buffer->xdpf);
+		else
+			napi_consume_skb(tx_buffer->skb, napi_budget);
 
 		/* unmap skb header data */
 		dma_unmap_single(tx_ring->dev,
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index 27c886a254f1..aa65c99c8c4d 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -31,3 +31,30 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 
 	return 0;
 }
+
+int igc_xdp_register_rxq_info(struct igc_ring *ring)
+{
+	struct net_device *dev = ring->netdev;
+	int err;
+
+	err = xdp_rxq_info_reg(&ring->xdp_rxq, dev, ring->queue_index);
+	if (err) {
+		netdev_err(dev, "Failed to register xdp rxq info\n");
+		return err;
+	}
+
+	err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq, MEM_TYPE_PAGE_SHARED,
+					 NULL);
+	if (err) {
+		netdev_err(dev, "Failed to register xdp rxq mem model\n");
+		xdp_rxq_info_unreg(&ring->xdp_rxq);
+		return err;
+	}
+
+	return 0;
+}
+
+void igc_xdp_unregister_rxq_info(struct igc_ring *ring)
+{
+	xdp_rxq_info_unreg(&ring->xdp_rxq);
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.h b/drivers/net/ethernet/intel/igc/igc_xdp.h
index 8a410bcefe1a..cfecb515b718 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.h
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.h
@@ -7,4 +7,7 @@
 int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 		     struct netlink_ext_ack *extack);
 
+int igc_xdp_register_rxq_info(struct igc_ring *ring);
+void igc_xdp_unregister_rxq_info(struct igc_ring *ring);
+
 #endif /* _IGC_XDP_H_ */
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D66C03146B1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 03:58:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 924C986155;
	Tue,  9 Feb 2021 02:58:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N8L06MPjDWqr; Tue,  9 Feb 2021 02:58:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ABEB686168;
	Tue,  9 Feb 2021 02:58:47 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7DE271BF59F
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7ABA486D78
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WkoGJPaenT6V for <intel-wired-lan@osuosl.org>;
 Tue,  9 Feb 2021 02:58:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 33C8286A3B
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:58:25 +0000 (UTC)
IronPort-SDR: NxrhGgd8phcD+ZoKoilNxSDDlUuXuPc7fqMq8qJgqbBxG9Zix1XQSOfP8iKg9DMDzO/Bzq54j8
 8AwC9jCZmvSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="245888659"
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="245888659"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 18:58:25 -0800
IronPort-SDR: 4vzol8kq8tIox73peHtjgPeF7NypF8x3TYDoiDl6mV9xEBTUJ6trUmhVDjMpPzuOgrF/gj97gX
 vXA7c2S+zpEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="374799251"
Received: from otc-cfl-ubuntu-15.jf.intel.com ([10.54.31.57])
 by orsmga002.jf.intel.com with ESMTP; 08 Feb 2021 18:58:24 -0800
From: Vedang Patel <vedang.patel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  8 Feb 2021 18:41:40 -0800
Message-Id: <20210209024141.23298-9-vedang.patel@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210209024141.23298-1-vedang.patel@intel.com>
References: <20210209024141.23298-1-vedang.patel@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v5 8/9] igc: Add support for
 XDP_TX action
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

This patch adds support for XDP_TX action which enables XDP programs to
transmit back receiving frames.

I225 controller has only 4 Tx hardware queues. Since XDP programs may
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
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |   9 +-
 drivers/net/ethernet/intel/igc/igc_main.c | 176 ++++++++++++++++++++--
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  27 ++++
 drivers/net/ethernet/intel/igc/igc_xdp.h  |   3 +
 4 files changed, 204 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 4e0d61fb17d8..e2e640d48092 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -111,6 +111,8 @@ struct igc_ring {
 			struct sk_buff *skb;
 		};
 	};
+
+	struct xdp_rxq_info xdp_rxq;
 } ____cacheline_internodealigned_in_smp;
 
 /* Board specific private data structure */
@@ -374,6 +376,8 @@ enum igc_tx_flags {
 	/* olinfo flags */
 	IGC_TX_FLAGS_IPV4	= 0x10,
 	IGC_TX_FLAGS_CSUM	= 0x20,
+
+	IGC_TX_FLAGS_XDP	= 0x100,
 };
 
 enum igc_boards {
@@ -396,7 +400,10 @@ enum igc_boards {
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
index feea3edd97bc..d34d35789e2e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -25,6 +25,7 @@
 
 #define IGC_XDP_PASS		0
 #define IGC_XDP_CONSUMED	BIT(0)
+#define IGC_XDP_TX		BIT(1)
 
 static int debug = -1;
 
@@ -181,8 +182,10 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
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
@@ -410,6 +413,8 @@ void igc_free_rx_resources(struct igc_ring *rx_ring)
 {
 	igc_clean_rx_ring(rx_ring);
 
+	igc_xdp_unregister_rxq_info(rx_ring);
+
 	vfree(rx_ring->rx_buffer_info);
 	rx_ring->rx_buffer_info = NULL;
 
@@ -447,7 +452,11 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
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
@@ -473,6 +482,7 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
 	return 0;
 
 err:
+	igc_xdp_unregister_rxq_info(rx_ring);
 	vfree(rx_ring->rx_buffer_info);
 	rx_ring->rx_buffer_info = NULL;
 	netdev_err(ndev, "Unable to allocate memory for Rx descriptor ring\n");
@@ -1915,6 +1925,101 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
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
+	if (unlikely(index < 0))
+		index = 0;
+
+	while (index >= adapter->num_tx_queues)
+		index -= adapter->num_tx_queues;
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
@@ -1935,6 +2040,12 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
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
@@ -1951,20 +2062,49 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
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
@@ -1985,6 +2125,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		dma_rmb();
 
 		rx_buffer = igc_get_rx_buffer(rx_ring, size);
+		truesize = igc_get_rx_frame_truesize(rx_ring, size);
 
 		pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
 
@@ -1996,19 +2137,29 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
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
@@ -2054,6 +2205,9 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		total_packets++;
 	}
 
+	if (xdp_status)
+		igc_finalize_xdp(adapter, xdp_status);
+
 	/* place incomplete frames back on ring for completion */
 	rx_ring->skb = skb;
 
@@ -2115,8 +2269,10 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
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
index 27c886a254f1..11133c4619bb 100644
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
+	err = xdp_rxq_info_reg(&ring->xdp_rxq, dev, ring->queue_index, 0);
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
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

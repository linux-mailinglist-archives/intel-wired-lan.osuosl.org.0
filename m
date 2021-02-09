Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D006D3146B3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 03:59:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 515CD81A27;
	Tue,  9 Feb 2021 02:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ah-hG2W3h-Bs; Tue,  9 Feb 2021 02:59:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8196F86155;
	Tue,  9 Feb 2021 02:59:06 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD67E1BF27E
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B980987249
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wrhF0VqR89uW for <intel-wired-lan@osuosl.org>;
 Tue,  9 Feb 2021 02:59:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F163287241
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:59:02 +0000 (UTC)
IronPort-SDR: FGl1bDX2DO4JyHQROpRNRwpjD7KeAxxkRNz0bZFqKnccn6/qH+cwc8O1Q/sJxVpmHSHolGzdAt
 Ciq5NVFGAVGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="181963400"
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="181963400"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 18:59:02 -0800
IronPort-SDR: UdPAMILJJTICvUC6gaNQGsK4BsJeh68J0wbYPOJUGoacTfqvZ6cwDhdtuFtI2W4aV6D9v4N8i+
 h8ZT5n8eddtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="586039906"
Received: from otc-cfl-ubuntu-15.jf.intel.com ([10.54.31.57])
 by fmsmga005.fm.intel.com with ESMTP; 08 Feb 2021 18:59:02 -0800
From: Vedang Patel <vedang.patel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  8 Feb 2021 18:42:42 -0800
Message-Id: <20210209024243.23406-9-vedang.patel@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210209024243.23406-1-vedang.patel@intel.com>
References: <20210209024243.23406-1-vedang.patel@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v3 8/9] igc: Enable RX via AF_XDP
 zero-copy
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

Add support for receiving packets via AF_XDP zero-copy mechanism.

A new flag is added to 'enum igc_ring_flags_t' to indicate the ring has
AF_XDP zero-copy enabled so proper ring setup is carried out during ring
configuration in igc_configure_rx_ring().

RX buffers can now be allocated via the shared pages mechanism (default
behavior of the driver) or via xsk pool (when AF_XDP zero-copy is
enabled) so a union is added to the 'struct igc_rx_buffer' to cover both
cases.

When AF_XDP zero-copy is enabled, rx buffers are allocated from the xsk
pool using the new helper igc_alloc_rx_buffers_zc() which is the
counterpart of igc_alloc_rx_buffers().

Likewise other Intel drivers that support AF_XDP zero-copy, in igc we
have a dedicated path for cleaning up rx irqs when zero-copy is enabled.
This avoids adding too many checks within igc_clean_rx_irq(), resulting
in a more readable and efficient code since this function is called from
the hot-path of the driver.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  22 +-
 drivers/net/ethernet/intel/igc/igc_base.h |   1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 336 +++++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  98 +++++++
 drivers/net/ethernet/intel/igc/igc_xdp.h  |   2 +
 5 files changed, 440 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 5b14cd4aafe6..928b01e317c7 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -113,6 +113,7 @@ struct igc_ring {
 	};
 
 	struct xdp_rxq_info xdp_rxq;
+	struct xsk_buff_pool *xsk_pool;
 } ____cacheline_internodealigned_in_smp;
 
 /* Board specific private data structure */
@@ -242,6 +243,9 @@ bool igc_has_link(struct igc_adapter *adapter);
 void igc_reset(struct igc_adapter *adapter);
 int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx);
 void igc_update_stats(struct igc_adapter *adapter);
+void igc_disable_rx_ring(struct igc_ring *ring);
+void igc_enable_rx_ring(struct igc_ring *ring);
+int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
 
 /* igc_dump declarations */
 void igc_rings_dump(struct igc_adapter *adapter);
@@ -419,14 +423,19 @@ struct igc_tx_buffer {
 };
 
 struct igc_rx_buffer {
-	dma_addr_t dma;
-	struct page *page;
+	union {
+		struct {
+			dma_addr_t dma;
+			struct page *page;
 #if (BITS_PER_LONG > 32) || (PAGE_SIZE >= 65536)
-	__u32 page_offset;
+			__u32 page_offset;
 #else
-	__u16 page_offset;
+			__u16 page_offset;
 #endif
-	__u16 pagecnt_bias;
+			__u16 pagecnt_bias;
+		};
+		struct xdp_buff *xdp;
+	};
 };
 
 struct igc_q_vector {
@@ -512,7 +521,8 @@ enum igc_ring_flags_t {
 	IGC_RING_FLAG_RX_SCTP_CSUM,
 	IGC_RING_FLAG_RX_LB_VLAN_BSWAP,
 	IGC_RING_FLAG_TX_CTX_IDX,
-	IGC_RING_FLAG_TX_DETECT_HANG
+	IGC_RING_FLAG_TX_DETECT_HANG,
+	IGC_RING_FLAG_AF_XDP_ZC,
 };
 
 #define ring_uses_large_buffer(ring) \
diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
index ea627ce52525..2ca028c1919f 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.h
+++ b/drivers/net/ethernet/intel/igc/igc_base.h
@@ -81,6 +81,7 @@ union igc_adv_rx_desc {
 
 /* Additional Receive Descriptor Control definitions */
 #define IGC_RXDCTL_QUEUE_ENABLE	0x02000000 /* Ena specific Rx Queue */
+#define IGC_RXDCTL_SWFLUSH		0x04000000 /* Receive Software Flush */
 
 /* SRRCTL bit definitions */
 #define IGC_SRRCTL_BSIZEPKT_SHIFT		10 /* Shift _right_ */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5874936b7c59..b26fda838b56 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -11,7 +11,7 @@
 #include <linux/pm_runtime.h>
 #include <net/pkt_sched.h>
 #include <linux/bpf_trace.h>
-
+#include <net/xdp_sock_drv.h>
 #include <net/ipv6.h>
 
 #include "igc.h"
@@ -390,13 +390,31 @@ static void igc_clean_rx_ring_page_shared(struct igc_ring *rx_ring)
 	}
 }
 
+static void igc_clean_rx_ring_xsk_pool(struct igc_ring *ring)
+{
+	struct igc_rx_buffer *bi;
+	u16 i;
+
+	for (i = 0; i < ring->count; i++) {
+		bi = &ring->rx_buffer_info[i];
+		if (!bi->xdp)
+			continue;
+
+		xsk_buff_free(bi->xdp);
+		bi->xdp = NULL;
+	}
+}
+
 /**
  * igc_clean_rx_ring - Free Rx Buffers per Queue
  * @ring: ring to free buffers from
  */
 static void igc_clean_rx_ring(struct igc_ring *ring)
 {
-	igc_clean_rx_ring_page_shared(ring);
+	if (ring->xsk_pool)
+		igc_clean_rx_ring_xsk_pool(ring);
+	else
+		igc_clean_rx_ring_page_shared(ring);
 
 	clear_ring_uses_large_buffer(ring);
 
@@ -533,6 +551,16 @@ static int igc_setup_all_rx_resources(struct igc_adapter *adapter)
 	return err;
 }
 
+static struct xsk_buff_pool *igc_get_xsk_pool(struct igc_adapter *adapter,
+					      struct igc_ring *ring)
+{
+	if (!igc_xdp_is_enabled(adapter) ||
+	    !test_bit(IGC_RING_FLAG_AF_XDP_ZC, &ring->flags))
+		return NULL;
+
+	return xsk_get_pool_from_qid(ring->netdev, ring->queue_index);
+}
+
 /**
  * igc_configure_rx_ring - Configure a receive ring after Reset
  * @adapter: board private structure
@@ -548,9 +576,20 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
 	int reg_idx = ring->reg_idx;
 	u32 srrctl = 0, rxdctl = 0;
 	u64 rdba = ring->dma;
-
-	WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
-					   MEM_TYPE_PAGE_SHARED, NULL));
+	u32 buf_size;
+
+	xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
+	ring->xsk_pool = igc_get_xsk_pool(adapter, ring);
+	if (ring->xsk_pool) {
+		WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
+						   MEM_TYPE_XSK_BUFF_POOL,
+						   NULL));
+		xsk_pool_set_rxq_info(ring->xsk_pool, &ring->xdp_rxq);
+	} else {
+		WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
+						   MEM_TYPE_PAGE_SHARED,
+						   NULL));
+	}
 
 	if (igc_xdp_is_enabled(adapter))
 		set_ring_uses_large_buffer(ring);
@@ -574,12 +613,15 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
 	ring->next_to_clean = 0;
 	ring->next_to_use = 0;
 
-	/* set descriptor configuration */
-	srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
-	if (ring_uses_large_buffer(ring))
-		srrctl |= IGC_RXBUFFER_3072 >> IGC_SRRCTL_BSIZEPKT_SHIFT;
+	if (ring->xsk_pool)
+		buf_size = xsk_pool_get_rx_frame_size(ring->xsk_pool);
+	else if (ring_uses_large_buffer(ring))
+		buf_size = IGC_RXBUFFER_3072;
 	else
-		srrctl |= IGC_RXBUFFER_2048 >> IGC_SRRCTL_BSIZEPKT_SHIFT;
+		buf_size = IGC_RXBUFFER_2048;
+
+	srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
+	srrctl |= buf_size >> IGC_SRRCTL_BSIZEPKT_SHIFT;
 	srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;
 
 	wr32(IGC_SRRCTL(reg_idx), srrctl);
@@ -1931,6 +1973,63 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
 	}
 }
 
+static bool igc_alloc_rx_buffers_zc(struct igc_ring *ring, u16 count)
+{
+	union igc_adv_rx_desc *desc;
+	u16 i = ring->next_to_use;
+	struct igc_rx_buffer *bi;
+	dma_addr_t dma;
+	bool ok = true;
+
+	if (!count)
+		return ok;
+
+	desc = IGC_RX_DESC(ring, i);
+	bi = &ring->rx_buffer_info[i];
+	i -= ring->count;
+
+	do {
+		bi->xdp = xsk_buff_alloc(ring->xsk_pool);
+		if (!bi->xdp) {
+			ok = false;
+			break;
+		}
+
+		dma = xsk_buff_xdp_get_dma(bi->xdp);
+		desc->read.pkt_addr = cpu_to_le64(dma);
+
+		desc++;
+		bi++;
+		i++;
+		if (unlikely(!i)) {
+			desc = IGC_RX_DESC(ring, 0);
+			bi = ring->rx_buffer_info;
+			i -= ring->count;
+		}
+
+		/* Clear the length for the next_to_use descriptor. */
+		desc->wb.upper.length = 0;
+
+		count--;
+	} while (count);
+
+	i += ring->count;
+
+	if (ring->next_to_use != i) {
+		ring->next_to_use = i;
+
+		/* Force memory writes to complete before letting h/w
+		 * know there are new descriptors to fetch.  (Only
+		 * applicable for weak-ordered memory model archs,
+		 * such as IA-64).
+		 */
+		wmb();
+		writel(i, ring->tail);
+	}
+
+	return ok;
+}
+
 static int igc_xdp_init_tx_buffer(struct igc_tx_buffer *buffer,
 				  struct xdp_frame *xdpf,
 				  struct igc_ring *ring)
@@ -2249,6 +2348,140 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 	return total_packets;
 }
 
+static struct sk_buff *igc_construct_skb_zc(struct igc_ring *ring,
+					    struct xdp_buff *xdp)
+{
+	unsigned int metasize = xdp->data - xdp->data_meta;
+	unsigned int datasize = xdp->data_end - xdp->data;
+	struct sk_buff *skb;
+
+	skb = __napi_alloc_skb(&ring->q_vector->napi,
+			       xdp->data_end - xdp->data_hard_start,
+			       GFP_ATOMIC | __GFP_NOWARN);
+	if (unlikely(!skb))
+		return NULL;
+
+	skb_reserve(skb, xdp->data - xdp->data_hard_start);
+	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
+	if (metasize)
+		skb_metadata_set(skb, metasize);
+
+	return skb;
+}
+
+static void igc_dispatch_skb_zc(struct igc_q_vector *q_vector,
+				union igc_adv_rx_desc *desc,
+				struct xdp_buff *xdp,
+				ktime_t timestamp)
+{
+	struct igc_ring *ring = q_vector->rx.ring;
+	struct sk_buff *skb;
+
+	skb = igc_construct_skb_zc(ring, xdp);
+	if (!skb) {
+		ring->rx_stats.alloc_failed++;
+		return;
+	}
+
+	if (timestamp)
+		skb_hwtstamps(skb)->hwtstamp = timestamp;
+
+	if (igc_cleanup_headers(ring, desc, skb))
+		return;
+
+	igc_process_skb_fields(ring, desc, skb);
+	napi_gro_receive(&q_vector->napi, skb);
+}
+
+static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
+{
+	struct igc_adapter *adapter = q_vector->adapter;
+	struct igc_ring *ring = q_vector->rx.ring;
+	u16 cleaned_count = igc_desc_unused(ring);
+	int total_bytes = 0, total_packets = 0;
+	struct bpf_prog *prog;
+	bool failure = false;
+	int xdp_status = 0;
+
+	rcu_read_lock();
+
+	prog = READ_ONCE(adapter->xdp_prog);
+
+	while (likely(total_packets < budget)) {
+		union igc_adv_rx_desc *desc;
+		struct igc_rx_buffer *bi;
+		ktime_t timestamp = 0;
+		unsigned int size;
+		int res;
+
+		desc = IGC_RX_DESC(ring, ring->next_to_clean);
+		size = le16_to_cpu(desc->wb.upper.length);
+		if (!size)
+			break;
+
+		/* This memory barrier is needed to keep us from reading
+		 * any other fields out of the rx_desc until we know the
+		 * descriptor has been written back
+		 */
+		dma_rmb();
+
+		bi = &ring->rx_buffer_info[ring->next_to_clean];
+
+		if (igc_test_staterr(desc, IGC_RXDADV_STAT_TSIP)) {
+			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
+							bi->xdp->data);
+
+			bi->xdp->data += IGC_TS_HDR_LEN;
+			size -= IGC_TS_HDR_LEN;
+		}
+
+		bi->xdp->data_end = bi->xdp->data + size;
+		xsk_buff_dma_sync_for_cpu(bi->xdp, ring->xsk_pool);
+
+		res = igc_xdp_do_run_prog(adapter, prog, bi->xdp);
+		switch (res) {
+		case IGC_XDP_PASS:
+			igc_dispatch_skb_zc(q_vector, desc, bi->xdp, timestamp);
+			fallthrough;
+		case IGC_XDP_CONSUMED:
+			xsk_buff_free(bi->xdp);
+			break;
+		case IGC_XDP_TX:
+		case IGC_XDP_REDIRECT:
+			xdp_status |= res;
+			break;
+		}
+
+		bi->xdp = NULL;
+		total_bytes += size;
+		total_packets++;
+		cleaned_count++;
+		ring->next_to_clean++;
+		if (ring->next_to_clean == ring->count)
+			ring->next_to_clean = 0;
+	}
+
+	rcu_read_unlock();
+
+	if (cleaned_count >= IGC_RX_BUFFER_WRITE)
+		failure = !igc_alloc_rx_buffers_zc(ring, cleaned_count);
+
+	if (xdp_status)
+		igc_finalize_xdp(adapter, xdp_status);
+
+	igc_update_rx_stats(q_vector, total_packets, total_bytes);
+
+	if (xsk_uses_need_wakeup(ring->xsk_pool)) {
+		if (failure || ring->next_to_clean == ring->next_to_use)
+			xsk_set_rx_need_wakeup(ring->xsk_pool);
+		else
+			xsk_clear_rx_need_wakeup(ring->xsk_pool);
+		return total_packets;
+	}
+
+	return failure ? budget : total_packets;
+}
+
 static void igc_update_tx_stats(struct igc_q_vector *q_vector,
 				unsigned int packets, unsigned int bytes)
 {
@@ -2942,7 +3175,10 @@ static void igc_configure(struct igc_adapter *adapter)
 	for (i = 0; i < adapter->num_rx_queues; i++) {
 		struct igc_ring *ring = adapter->rx_ring[i];
 
-		igc_alloc_rx_buffers(ring, igc_desc_unused(ring));
+		if (ring->xsk_pool)
+			igc_alloc_rx_buffers_zc(ring, igc_desc_unused(ring));
+		else
+			igc_alloc_rx_buffers(ring, igc_desc_unused(ring));
 	}
 }
 
@@ -3557,14 +3793,17 @@ static int igc_poll(struct napi_struct *napi, int budget)
 	struct igc_q_vector *q_vector = container_of(napi,
 						     struct igc_q_vector,
 						     napi);
+	struct igc_ring *rx_ring = q_vector->rx.ring;
 	bool clean_complete = true;
 	int work_done = 0;
 
 	if (q_vector->tx.ring)
 		clean_complete = igc_clean_tx_irq(q_vector, budget);
 
-	if (q_vector->rx.ring) {
-		int cleaned = igc_clean_rx_irq(q_vector, budget);
+	if (rx_ring) {
+		int cleaned = rx_ring->xsk_pool ?
+			      igc_clean_rx_irq_zc(q_vector, budget) :
+			      igc_clean_rx_irq(q_vector, budget);
 
 		work_done += cleaned;
 		if (cleaned >= budget)
@@ -5145,6 +5384,9 @@ static int igc_bpf(struct net_device *dev, struct netdev_bpf *bpf)
 	switch (bpf->command) {
 	case XDP_SETUP_PROG:
 		return igc_xdp_set_prog(adapter, bpf->prog, bpf->extack);
+	case XDP_SETUP_XSK_POOL:
+		return igc_xdp_setup_pool(adapter, bpf->xsk.pool,
+					  bpf->xsk.queue_id);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -5190,6 +5432,43 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
 	return num_frames - drops;
 }
 
+static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
+					struct igc_q_vector *q_vector)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 eics = 0;
+
+	eics |= q_vector->eims_value;
+	wr32(IGC_EICS, eics);
+}
+
+int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
+{
+	struct igc_adapter *adapter = netdev_priv(dev);
+	struct igc_q_vector *q_vector;
+	struct igc_ring *ring;
+
+	if (test_bit(__IGC_DOWN, &adapter->state))
+		return -ENETDOWN;
+
+	if (!igc_xdp_is_enabled(adapter))
+		return -ENXIO;
+
+	if (queue_id >= adapter->num_rx_queues)
+		return -EINVAL;
+
+	ring = adapter->rx_ring[queue_id];
+
+	if (!ring->xsk_pool)
+		return -ENXIO;
+
+	q_vector = adapter->q_vector[queue_id];
+	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
+		igc_trigger_rxtxq_interrupt(adapter, q_vector);
+
+	return 0;
+}
+
 static const struct net_device_ops igc_netdev_ops = {
 	.ndo_open		= igc_open,
 	.ndo_stop		= igc_close,
@@ -5205,6 +5484,7 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_setup_tc		= igc_setup_tc,
 	.ndo_bpf		= igc_bpf,
 	.ndo_xdp_xmit		= igc_xdp_xmit,
+	.ndo_xsk_wakeup		= igc_xsk_wakeup,
 };
 
 /* PCIe configuration access */
@@ -5958,6 +6238,36 @@ struct net_device *igc_get_hw_dev(struct igc_hw *hw)
 	return adapter->netdev;
 }
 
+static void igc_disable_rx_ring_hw(struct igc_ring *ring)
+{
+	struct igc_hw *hw = &ring->q_vector->adapter->hw;
+	u8 idx = ring->reg_idx;
+	u32 rxdctl;
+
+	rxdctl = rd32(IGC_RXDCTL(idx));
+	rxdctl &= ~IGC_RXDCTL_QUEUE_ENABLE;
+	rxdctl |= IGC_RXDCTL_SWFLUSH;
+	wr32(IGC_RXDCTL(idx), rxdctl);
+}
+
+void igc_disable_rx_ring(struct igc_ring *ring)
+{
+	igc_disable_rx_ring_hw(ring);
+	igc_clean_rx_ring(ring);
+}
+
+void igc_enable_rx_ring(struct igc_ring *ring)
+{
+	struct igc_adapter *adapter = ring->q_vector->adapter;
+
+	igc_configure_rx_ring(adapter, ring);
+
+	if (ring->xsk_pool)
+		igc_alloc_rx_buffers_zc(ring, igc_desc_unused(ring));
+	else
+		igc_alloc_rx_buffers(ring, igc_desc_unused(ring));
+}
+
 /**
  * igc_init_module - Driver Registration Routine
  *
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index 27c886a254f1..7fe3177a53dd 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2020, Intel Corporation. */
 
+#include <net/xdp_sock_drv.h>
+
 #include "igc.h"
 #include "igc_xdp.h"
 
@@ -31,3 +33,99 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 
 	return 0;
 }
+
+static int igc_xdp_enable_pool(struct igc_adapter *adapter,
+			       struct xsk_buff_pool *pool, u16 queue_id)
+{
+	struct net_device *ndev = adapter->netdev;
+	struct device *dev = &adapter->pdev->dev;
+	struct igc_ring *rx_ring;
+	struct napi_struct *napi;
+	bool needs_reset;
+	u32 frame_size;
+	int err;
+
+	if (queue_id >= adapter->num_rx_queues)
+		return -EINVAL;
+
+	frame_size = xsk_pool_get_rx_frame_size(pool);
+	if (frame_size < ETH_FRAME_LEN + VLAN_HLEN * 2) {
+		/* When XDP is enabled, the driver doesn't support frames that
+		 * span over multiple buffers. To avoid that, we check if xsk
+		 * frame size is big enough to fit the max ethernet frame size
+		 * + vlan double tagging.
+		 */
+		return -EOPNOTSUPP;
+	}
+
+	err = xsk_pool_dma_map(pool, dev, IGC_RX_DMA_ATTR);
+	if (err) {
+		netdev_err(ndev, "Failed to map xsk pool\n");
+		return err;
+	}
+
+	needs_reset = netif_running(adapter->netdev) && igc_xdp_is_enabled(adapter);
+
+	rx_ring = adapter->rx_ring[queue_id];
+	napi = &rx_ring->q_vector->napi;
+
+	if (needs_reset) {
+		igc_disable_rx_ring(rx_ring);
+		napi_disable(napi);
+	}
+
+	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
+
+	if (needs_reset) {
+		napi_enable(napi);
+		igc_enable_rx_ring(rx_ring);
+
+		err = igc_xsk_wakeup(ndev, queue_id, XDP_WAKEUP_RX);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static int igc_xdp_disable_pool(struct igc_adapter *adapter, u16 queue_id)
+{
+	struct xsk_buff_pool *pool;
+	struct igc_ring *rx_ring;
+	struct napi_struct *napi;
+	bool needs_reset;
+
+	if (queue_id >= adapter->num_rx_queues)
+		return -EINVAL;
+
+	pool = xsk_get_pool_from_qid(adapter->netdev, queue_id);
+	if (!pool)
+		return -EINVAL;
+
+	needs_reset = netif_running(adapter->netdev) && igc_xdp_is_enabled(adapter);
+
+	rx_ring = adapter->rx_ring[queue_id];
+	napi = &rx_ring->q_vector->napi;
+
+	if (needs_reset) {
+		igc_disable_rx_ring(rx_ring);
+		napi_disable(napi);
+	}
+
+	xsk_pool_dma_unmap(pool, IGC_RX_DMA_ATTR);
+	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
+
+	if (needs_reset) {
+		napi_enable(napi);
+		igc_enable_rx_ring(rx_ring);
+	}
+
+	return 0;
+}
+
+int igc_xdp_setup_pool(struct igc_adapter *adapter, struct xsk_buff_pool *pool,
+		       u16 queue_id)
+{
+	return pool ? igc_xdp_enable_pool(adapter, pool, queue_id) :
+		      igc_xdp_disable_pool(adapter, queue_id);
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.h b/drivers/net/ethernet/intel/igc/igc_xdp.h
index cdaa2c39b03a..a74e5487d199 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.h
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.h
@@ -6,6 +6,8 @@
 
 int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 		     struct netlink_ext_ack *extack);
+int igc_xdp_setup_pool(struct igc_adapter *adapter, struct xsk_buff_pool *pool,
+		       u16 queue_id);
 
 static inline bool igc_xdp_is_enabled(struct igc_adapter *adapter)
 {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

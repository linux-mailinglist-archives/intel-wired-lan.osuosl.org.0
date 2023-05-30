Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3F971661A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 17:05:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D83583D28;
	Tue, 30 May 2023 15:05:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D83583D28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685459116;
	bh=wTZmWrVIOXkh2Ta2rrTD/5PN6sGQPhnIVeIBem3HRTo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PUtovrrBSHgv4nKrN5fOP7hjPCE5D14zsbYQup75a3nm7E8ODK49NSbdNTPEwGm3L
	 aYTEcoGzBQ5AMnFYtlGp0vonQ8a0x5eQ5xMxCL8GKIy9eEsGq/nW0osxZfxD47qePF
	 p9OpC79z0WTdXLyAejYlVlf7RfAGF9C0tp5i/YMbKrmu56Qx3jWo8ODxkZVTtFJyRy
	 gwdfohTmcwgzKGiOYuwAftFJlGMxKcjd78CYAV4RTJNVLLw+4fFSqcnHM/d83+BS4t
	 p+/89smMTzuLf6vJjn8CnfRJKh8L54bMj8sjGRTTtszofJMLJIoBhtZlSlv0sE7oQ/
	 /HpZl4gT3EPrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UIiO7nvXOJml; Tue, 30 May 2023 15:05:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C134881EF6;
	Tue, 30 May 2023 15:05:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C134881EF6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE3001BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9525540C25
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9525540C25
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k99Il7V2lNxm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 15:04:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1992140574
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1992140574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358192744"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="358192744"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 08:03:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="796304218"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="796304218"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by FMSMGA003.fm.intel.com with ESMTP; 30 May 2023 08:03:48 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 30 May 2023 17:00:35 +0200
Message-Id: <20230530150035.1943669-13-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
References: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685459089; x=1716995089;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wF6bRgbMGI8gMENkkSkKdZ8e+y0Jpj2PF5F+u+WqUzg=;
 b=I6+bt56BF5PPBcY3t7yb+BORWRlSvUdxW0c10SiCpUHBCjsKsiM2/Ag+
 qxhTUqiMJ8qUme6Mm5JqZVGKzqeykVISCUlDIqOYquD5jz71XwAeXgQUR
 66eLC5loEo3dwgnkHll06igNG2YY4ywU2hrf20AXMWUuCVeHJxvWOu0UF
 Wt1LmxTyhFZilazERqbzmbUA+XrhweJuKcCckXYPalPgLBuwgQq/fA7/W
 noL866IXm58x4aypHS0F+xSutyVr2bxq6YCdM7iTFgfW9AoXBnKF3keJU
 dRAo5Y+g3na+8bBObYGFuy2cU/YVCk5rGLT/mKe7VKC/BSx4WB/IR4Wk9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I6+bt56B
Subject: [Intel-wired-lan] [PATCH net-next v3 12/12] iavf: switch queue
 stats to libie
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

iavf is pretty much ready for using the generic libie stats, so drop all
the custom code and just use generic definitions. The only thing is that
it previously lacked the counter of Tx queue stops. It's present in the
other drivers, so add it here as well.
The rest is straightforward. There were two fields in the Tx stats
struct, which didn't belong there. The first one has never been used,
wipe it; and move the other to the queue structure. Plus move around
a couple fields in &iavf_ring to account stats structs' alignment.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 87 ++++------------
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  2 +
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 98 ++++++++++---------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   | 47 +++------
 4 files changed, 87 insertions(+), 147 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index de3050c02b6f..0dcf50d75f86 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -46,16 +46,6 @@ struct iavf_stats {
 	.stat_offset = offsetof(_type, _stat) \
 }
 
-/* Helper macro for defining some statistics related to queues */
-#define IAVF_QUEUE_STAT(_name, _stat) \
-	IAVF_STAT(struct iavf_ring, _name, _stat)
-
-/* Stats associated with a Tx or Rx ring */
-static const struct iavf_stats iavf_gstrings_queue_stats[] = {
-	IAVF_QUEUE_STAT("%s-%u.packets", stats.packets),
-	IAVF_QUEUE_STAT("%s-%u.bytes", stats.bytes),
-};
-
 /**
  * iavf_add_one_ethtool_stat - copy the stat into the supplied buffer
  * @data: location to store the stat value
@@ -141,43 +131,6 @@ __iavf_add_ethtool_stats(u64 **data, void *pointer,
 #define iavf_add_ethtool_stats(data, pointer, stats) \
 	__iavf_add_ethtool_stats(data, pointer, stats, ARRAY_SIZE(stats))
 
-/**
- * iavf_add_queue_stats - copy queue statistics into supplied buffer
- * @data: ethtool stats buffer
- * @ring: the ring to copy
- *
- * Queue statistics must be copied while protected by
- * u64_stats_fetch_begin, so we can't directly use iavf_add_ethtool_stats.
- * Assumes that queue stats are defined in iavf_gstrings_queue_stats. If the
- * ring pointer is null, zero out the queue stat values and update the data
- * pointer. Otherwise safely copy the stats from the ring into the supplied
- * buffer and update the data pointer when finished.
- *
- * This function expects to be called while under rcu_read_lock().
- **/
-static void
-iavf_add_queue_stats(u64 **data, struct iavf_ring *ring)
-{
-	const unsigned int size = ARRAY_SIZE(iavf_gstrings_queue_stats);
-	const struct iavf_stats *stats = iavf_gstrings_queue_stats;
-	unsigned int start;
-	unsigned int i;
-
-	/* To avoid invalid statistics values, ensure that we keep retrying
-	 * the copy until we get a consistent value according to
-	 * u64_stats_fetch_retry. But first, make sure our ring is
-	 * non-null before attempting to access its syncp.
-	 */
-	do {
-		start = !ring ? 0 : u64_stats_fetch_begin(&ring->syncp);
-		for (i = 0; i < size; i++)
-			iavf_add_one_ethtool_stat(&(*data)[i], ring, &stats[i]);
-	} while (ring && u64_stats_fetch_retry(&ring->syncp, start));
-
-	/* Once we successfully copy the stats in, update the data pointer */
-	*data += size;
-}
-
 /**
  * __iavf_add_stat_strings - copy stat strings into ethtool buffer
  * @p: ethtool supplied buffer
@@ -237,8 +190,6 @@ static const struct iavf_stats iavf_gstrings_stats[] = {
 
 #define IAVF_STATS_LEN	ARRAY_SIZE(iavf_gstrings_stats)
 
-#define IAVF_QUEUE_STATS_LEN	ARRAY_SIZE(iavf_gstrings_queue_stats)
-
 /**
  * iavf_get_link_ksettings - Get Link Speed and Duplex settings
  * @netdev: network interface device structure
@@ -308,18 +259,22 @@ static int iavf_get_link_ksettings(struct net_device *netdev,
  **/
 static int iavf_get_sset_count(struct net_device *netdev, int sset)
 {
-	/* Report the maximum number queues, even if not every queue is
-	 * currently configured. Since allocation of queues is in pairs,
-	 * use netdev->real_num_tx_queues * 2. The real_num_tx_queues is set
-	 * at device creation and never changes.
-	 */
+	u32 num;
 
-	if (sset == ETH_SS_STATS)
-		return IAVF_STATS_LEN +
-			(IAVF_QUEUE_STATS_LEN * 2 *
-			 netdev->real_num_tx_queues);
-	else
+	switch (sset) {
+	case ETH_SS_STATS:
+		/* Per-queue */
+		num = libie_rq_stats_get_sset_count();
+		num += libie_sq_stats_get_sset_count();
+		num *= netdev->real_num_tx_queues;
+
+		/* Global */
+		num += IAVF_STATS_LEN;
+
+		return num;
+	default:
 		return -EINVAL;
+	}
 }
 
 /**
@@ -346,15 +301,15 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
 	 * it to iterate over rings' stats.
 	 */
 	for (i = 0; i < adapter->num_active_queues; i++) {
-		struct iavf_ring *ring;
+		const struct iavf_ring *ring;
 
 		/* Tx rings stats */
-		ring = &adapter->tx_rings[i];
-		iavf_add_queue_stats(&data, ring);
+		libie_sq_stats_get_data(&data, &adapter->tx_rings[i].sq_stats);
 
 		/* Rx rings stats */
 		ring = &adapter->rx_rings[i];
-		iavf_add_queue_stats(&data, ring);
+		libie_rq_stats_get_data(&data, &ring->rq_stats,
+					ring->rx_pages ? ring->pool : NULL);
 	}
 	rcu_read_unlock();
 }
@@ -376,10 +331,8 @@ static void iavf_get_stat_strings(struct net_device *netdev, u8 *data)
 	 * real_num_tx_queues for both Tx and Rx queues.
 	 */
 	for (i = 0; i < netdev->real_num_tx_queues; i++) {
-		iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,
-				      "tx", i);
-		iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,
-				      "rx", i);
+		libie_sq_stats_get_strings(&data, i);
+		libie_rq_stats_get_strings(&data, i);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 120bb6a09ceb..4a702795ddb3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1581,6 +1581,7 @@ static int iavf_alloc_queues(struct iavf_adapter *adapter)
 		tx_ring->itr_setting = IAVF_ITR_TX_DEF;
 		if (adapter->flags & IAVF_FLAG_WB_ON_ITR_CAPABLE)
 			tx_ring->flags |= IAVF_TXR_FLAGS_WB_ON_ITR;
+		u64_stats_init(&tx_ring->sq_stats.syncp);
 
 		rx_ring = &adapter->rx_rings[i];
 		rx_ring->queue_index = i;
@@ -1588,6 +1589,7 @@ static int iavf_alloc_queues(struct iavf_adapter *adapter)
 		rx_ring->dev = &adapter->pdev->dev;
 		rx_ring->count = adapter->rx_desc_count;
 		rx_ring->itr_setting = IAVF_ITR_RX_DEF;
+		u64_stats_init(&rx_ring->rq_stats.syncp);
 	}
 
 	adapter->num_active_queues = num_active_queues;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 1de67a70f045..12308e7c9ec0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -158,6 +158,9 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 	for (i = 0; i < vsi->back->num_active_queues; i++) {
 		tx_ring = &vsi->back->tx_rings[i];
 		if (tx_ring && tx_ring->desc) {
+			const struct libie_sq_stats *st = &tx_ring->sq_stats;
+			u32 start;
+
 			/* If packet counter has not changed the queue is
 			 * likely stalled, so force an interrupt for this
 			 * queue.
@@ -165,8 +168,13 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 			 * prev_pkt_ctr would be negative if there was no
 			 * pending work.
 			 */
-			packets = tx_ring->stats.packets & INT_MAX;
-			if (tx_ring->tx_stats.prev_pkt_ctr == packets) {
+			do {
+				start = u64_stats_fetch_begin(&st->syncp);
+				packets = u64_stats_read(&st->packets) &
+					  INT_MAX;
+			} while (u64_stats_fetch_retry(&st->syncp, start));
+
+			if (tx_ring->prev_pkt_ctr == packets) {
 				iavf_force_wb(vsi, tx_ring->q_vector);
 				continue;
 			}
@@ -175,7 +183,7 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 			 * to iavf_get_tx_pending()
 			 */
 			smp_rmb();
-			tx_ring->tx_stats.prev_pkt_ctr =
+			tx_ring->prev_pkt_ctr =
 			  iavf_get_tx_pending(tx_ring, true) ? packets : -1;
 		}
 	}
@@ -194,10 +202,10 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 			      struct iavf_ring *tx_ring, int napi_budget)
 {
+	struct libie_sq_onstack_stats stats = { };
 	int i = tx_ring->next_to_clean;
 	struct iavf_tx_buffer *tx_buf;
 	struct iavf_tx_desc *tx_desc;
-	unsigned int total_bytes = 0, total_packets = 0;
 	unsigned int budget = IAVF_DEFAULT_IRQ_WORK;
 
 	tx_buf = &tx_ring->tx_bi[i];
@@ -224,8 +232,8 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 		tx_buf->next_to_watch = NULL;
 
 		/* update the statistics for this packet */
-		total_bytes += tx_buf->bytecount;
-		total_packets += tx_buf->gso_segs;
+		stats.bytes += tx_buf->bytecount;
+		stats.packets += tx_buf->gso_segs;
 
 		/* free the skb */
 		napi_consume_skb(tx_buf->skb, napi_budget);
@@ -282,12 +290,9 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 
 	i += tx_ring->count;
 	tx_ring->next_to_clean = i;
-	u64_stats_update_begin(&tx_ring->syncp);
-	tx_ring->stats.bytes += total_bytes;
-	tx_ring->stats.packets += total_packets;
-	u64_stats_update_end(&tx_ring->syncp);
-	tx_ring->q_vector->tx.total_bytes += total_bytes;
-	tx_ring->q_vector->tx.total_packets += total_packets;
+	libie_sq_napi_stats_add(&tx_ring->sq_stats, &stats);
+	tx_ring->q_vector->tx.total_bytes += stats.bytes;
+	tx_ring->q_vector->tx.total_packets += stats.packets;
 
 	if (tx_ring->flags & IAVF_TXR_FLAGS_WB_ON_ITR) {
 		/* check to see if there are < 4 descriptors
@@ -306,10 +311,10 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 
 	/* notify netdev of completed buffers */
 	netdev_tx_completed_queue(txring_txq(tx_ring),
-				  total_packets, total_bytes);
+				  stats.packets, stats.bytes);
 
 #define TX_WAKE_THRESHOLD ((s16)(DESC_NEEDED * 2))
-	if (unlikely(total_packets && netif_carrier_ok(tx_ring->netdev) &&
+	if (unlikely(stats.packets && netif_carrier_ok(tx_ring->netdev) &&
 		     (IAVF_DESC_UNUSED(tx_ring) >= TX_WAKE_THRESHOLD))) {
 		/* Make sure that anybody stopping the queue after this
 		 * sees the new next_to_clean.
@@ -320,7 +325,7 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 		   !test_bit(__IAVF_VSI_DOWN, vsi->state)) {
 			netif_wake_subqueue(tx_ring->netdev,
 					    tx_ring->queue_index);
-			++tx_ring->tx_stats.restart_queue;
+			libie_stats_inc_one(&tx_ring->sq_stats, restarts);
 		}
 	}
 
@@ -675,7 +680,7 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
 
 	tx_ring->next_to_use = 0;
 	tx_ring->next_to_clean = 0;
-	tx_ring->tx_stats.prev_pkt_ctr = -1;
+	tx_ring->prev_pkt_ctr = -1;
 	return 0;
 
 err:
@@ -731,7 +736,7 @@ void iavf_free_rx_resources(struct iavf_ring *rx_ring)
 	kfree(rx_ring->rx_pages);
 	rx_ring->rx_pages = NULL;
 
-	page_pool_destroy(rx_ring->pool);
+	libie_rx_page_pool_destroy(rx_ring->pool, &rx_ring->rq_stats);
 	rx_ring->dev = dev;
 
 	if (rx_ring->desc) {
@@ -760,8 +765,6 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 	if (!rx_ring->rx_pages)
 		return ret;
 
-	u64_stats_init(&rx_ring->syncp);
-
 	/* Round up to nearest 4K */
 	rx_ring->size = rx_ring->count * sizeof(union iavf_32byte_rx_desc);
 	rx_ring->size = ALIGN(rx_ring->size, 4096);
@@ -863,10 +866,8 @@ static u32 __iavf_alloc_rx_pages(struct iavf_ring *rx_ring, u32 to_refill,
 		dma_addr_t dma;
 
 		page = page_pool_alloc_pages(pool, gfp);
-		if (!page) {
-			rx_ring->rx_stats.alloc_page_failed++;
+		if (!page)
 			break;
-		}
 
 		rx_ring->rx_pages[ntu] = page;
 		dma = page_pool_get_dma_addr(page);
@@ -1090,25 +1091,23 @@ static struct sk_buff *iavf_build_skb(struct page *page, u32 size)
 
 /**
  * iavf_is_non_eop - process handling of non-EOP buffers
- * @rx_ring: Rx ring being processed
  * @rx_desc: Rx descriptor for current buffer
- * @skb: Current socket buffer containing buffer in progress
+ * @stats: NAPI poll local stats to update
  *
  * This function updates next to clean.  If the buffer is an EOP buffer
  * this function exits returning false, otherwise it will place the
  * sk_buff in the next buffer to be chained and return true indicating
  * that this is in fact a non-EOP buffer.
  **/
-static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
-			    union iavf_rx_desc *rx_desc,
-			    struct sk_buff *skb)
+static bool iavf_is_non_eop(union iavf_rx_desc *rx_desc,
+			    struct libie_rq_onstack_stats *stats)
 {
 	/* if we are the last buffer then there is nothing else to do */
 #define IAVF_RXD_EOF BIT(IAVF_RX_DESC_STATUS_EOF_SHIFT)
 	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))
 		return false;
 
-	rx_ring->rx_stats.non_eop_descs++;
+	stats->fragments++;
 
 	return true;
 }
@@ -1127,8 +1126,8 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
  **/
 static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 {
-	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 	const gfp_t gfp = GFP_ATOMIC | __GFP_NOWARN;
+	struct libie_rq_onstack_stats stats = { };
 	u32 to_refill = IAVF_DESC_UNUSED(rx_ring);
 	struct page_pool *pool = rx_ring->pool;
 	struct sk_buff *skb = rx_ring->skb;
@@ -1145,9 +1144,13 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		u64 qword;
 
 		/* return some buffers to hardware, one at a time is too slow */
-		if (to_refill >= IAVF_RX_BUFFER_WRITE)
+		if (to_refill >= IAVF_RX_BUFFER_WRITE) {
 			to_refill = __iavf_alloc_rx_pages(rx_ring, to_refill,
 							  gfp);
+			if (unlikely(to_refill))
+				libie_stats_inc_one(&rx_ring->rq_stats,
+						    alloc_page_fail);
+		}
 
 		rx_desc = IAVF_RX_DESC(rx_ring, ntc);
 
@@ -1195,7 +1198,8 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
 			page_pool_put_page(pool, page, size, true);
-			rx_ring->rx_stats.alloc_buff_failed++;
+			libie_stats_inc_one(&rx_ring->rq_stats,
+					    build_skb_fail);
 			break;
 		}
 
@@ -1207,7 +1211,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
 		prefetch(IAVF_RX_DESC(rx_ring, ntc));
 
-		if (iavf_is_non_eop(rx_ring, rx_desc, skb))
+		if (iavf_is_non_eop(rx_desc, &stats))
 			continue;
 
 		/* ERR_MASK will only have valid bits if EOP set, and
@@ -1227,7 +1231,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		}
 
 		/* probably a little skewed due to removing CRC */
-		total_rx_bytes += skb->len;
+		stats.bytes += skb->len;
 
 		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
 		rx_ptype = (qword & IAVF_RXD_QW1_PTYPE_MASK) >>
@@ -1249,7 +1253,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		skb = NULL;
 
 		/* update budget accounting */
-		total_rx_packets++;
+		stats.packets++;
 	}
 
 	rx_ring->next_to_clean = ntc;
@@ -1260,16 +1264,16 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		/* guarantee a trip back through this routine if there was
 		 * a failure
 		 */
-		if (unlikely(to_refill))
+		if (unlikely(to_refill)) {
+			libie_stats_inc_one(&rx_ring->rq_stats,
+					    alloc_page_fail);
 			cleaned_count = budget;
+		}
 	}
 
-	u64_stats_update_begin(&rx_ring->syncp);
-	rx_ring->stats.packets += total_rx_packets;
-	rx_ring->stats.bytes += total_rx_bytes;
-	u64_stats_update_end(&rx_ring->syncp);
-	rx_ring->q_vector->rx.total_packets += total_rx_packets;
-	rx_ring->q_vector->rx.total_bytes += total_rx_bytes;
+	libie_rq_napi_stats_add(&rx_ring->rq_stats, &stats);
+	rx_ring->q_vector->rx.total_packets += stats.packets;
+	rx_ring->q_vector->rx.total_bytes += stats.bytes;
 
 	return cleaned_count;
 }
@@ -1448,10 +1452,8 @@ int iavf_napi_poll(struct napi_struct *napi, int budget)
 			return budget - 1;
 		}
 tx_only:
-		if (arm_wb) {
-			q_vector->tx.ring[0].tx_stats.tx_force_wb++;
+		if (arm_wb)
 			iavf_enable_wb_on_itr(vsi, q_vector);
-		}
 		return budget;
 	}
 
@@ -1910,6 +1912,7 @@ bool __iavf_chk_linearize(struct sk_buff *skb)
 int __iavf_maybe_stop_tx(struct iavf_ring *tx_ring, int size)
 {
 	netif_stop_subqueue(tx_ring->netdev, tx_ring->queue_index);
+	libie_stats_inc_one(&tx_ring->sq_stats, stops);
 	/* Memory barrier before checking head and tail */
 	smp_mb();
 
@@ -1919,7 +1922,8 @@ int __iavf_maybe_stop_tx(struct iavf_ring *tx_ring, int size)
 
 	/* A reprieve! - use start_queue because it doesn't call schedule */
 	netif_start_subqueue(tx_ring->netdev, tx_ring->queue_index);
-	++tx_ring->tx_stats.restart_queue;
+	libie_stats_inc_one(&tx_ring->sq_stats, restarts);
+
 	return 0;
 }
 
@@ -2100,7 +2104,7 @@ static netdev_tx_t iavf_xmit_frame_ring(struct sk_buff *skb,
 			return NETDEV_TX_OK;
 		}
 		count = iavf_txd_use_count(skb->len);
-		tx_ring->tx_stats.tx_linearize++;
+		libie_stats_inc_one(&tx_ring->sq_stats, linearized);
 	}
 
 	/* need: 1 descriptor per page * PAGE_SIZE/IAVF_MAX_DATA_PER_TXD,
@@ -2110,7 +2114,7 @@ static netdev_tx_t iavf_xmit_frame_ring(struct sk_buff *skb,
 	 * otherwise try next time
 	 */
 	if (iavf_maybe_stop_tx(tx_ring, count + 4 + 1)) {
-		tx_ring->tx_stats.tx_busy++;
+		libie_stats_inc_one(&tx_ring->sq_stats, busy);
 		return NETDEV_TX_BUSY;
 	}
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 8fbe549ce6a5..64c93d6fa54d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -4,6 +4,8 @@
 #ifndef _IAVF_TXRX_H_
 #define _IAVF_TXRX_H_
 
+#include <linux/net/intel/libie/stats.h>
+
 /* Interrupt Throttling and Rate Limiting Goodies */
 #define IAVF_DEFAULT_IRQ_WORK      256
 
@@ -201,27 +203,6 @@ struct iavf_tx_buffer {
 	u32 tx_flags;
 };
 
-struct iavf_queue_stats {
-	u64 packets;
-	u64 bytes;
-};
-
-struct iavf_tx_queue_stats {
-	u64 restart_queue;
-	u64 tx_busy;
-	u64 tx_done_old;
-	u64 tx_linearize;
-	u64 tx_force_wb;
-	int prev_pkt_ctr;
-	u64 tx_lost_interrupt;
-};
-
-struct iavf_rx_queue_stats {
-	u64 non_eop_descs;
-	u64 alloc_page_failed;
-	u64 alloc_buff_failed;
-};
-
 /* some useful defines for virtchannel interface, which
  * is the only remaining user of header split
  */
@@ -272,21 +253,9 @@ struct iavf_ring {
 #define IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2	BIT(4)
 #define IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2	BIT(5)
 
-	/* stats structs */
-	struct iavf_queue_stats	stats;
-	struct u64_stats_sync syncp;
-	union {
-		struct iavf_tx_queue_stats tx_stats;
-		struct iavf_rx_queue_stats rx_stats;
-	};
-
-	unsigned int size;		/* length of descriptor ring in bytes */
-	dma_addr_t dma;			/* physical address of ring */
-
 	struct iavf_vsi *vsi;		/* Backreference to associated VSI */
 	struct iavf_q_vector *q_vector;	/* Backreference to associated vector */
 
-	struct rcu_head rcu;		/* to avoid race on free */
 	struct sk_buff *skb;		/* When iavf_clean_rx_ring_irq() must
 					 * return before it sees the EOP for
 					 * the current packet, we save that skb
@@ -295,6 +264,18 @@ struct iavf_ring {
 					 * iavf_clean_rx_ring_irq() is called
 					 * for this ring.
 					 */
+
+	/* stats structs */
+	union {
+		struct libie_sq_stats sq_stats;
+		struct libie_rq_stats rq_stats;
+	};
+
+	int prev_pkt_ctr;		/* For stall detection */
+	unsigned int size;		/* length of descriptor ring in bytes */
+	dma_addr_t dma;			/* physical address of ring */
+
+	struct rcu_head rcu;		/* to avoid race on free */
 } ____cacheline_internodealigned_in_smp;
 
 #define IAVF_ITR_ADAPTIVE_MIN_INC	0x0002
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

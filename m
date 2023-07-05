Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E16127488AD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 17:58:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EB8880E42;
	Wed,  5 Jul 2023 15:58:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EB8880E42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688572713;
	bh=yvC20nqoVWKD8AdjjZNbp/EAz3J08WU0HdeEsJkg4ro=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gKeSdsq0tUEjrHYKZtzsXEUbdNmEqxbvTk9sTdJh4nomWrUDzPSQrLfXzlDf8/f6w
	 VP5Sb9dDWC2HU3Xm+YhVEJ1hA9heyj1iThLW+NOf4VX+0lQTsKPihUMyX/FPw063u7
	 1hATQlvcu89y1cD69yuM1ITOoWxD7yFIdtKUVy7/kW4hB9Ix41LVJBIirVfegFF8az
	 lhFHm8rRy4ykt1xCteATPkVntqXOq8NPJEU0Jj+fp1MPXA3APMGzGTNFIKHmgx70bt
	 tAl4txHhxhyg/gN4VP0s5H5TaYkycaFW9QL1eezs+Yrie5PAt6jsEj4VR5AgEj5+l2
	 xTbPu2rpftvtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3NslPxk7iC5Q; Wed,  5 Jul 2023 15:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A65680C37;
	Wed,  5 Jul 2023 15:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A65680C37
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E8AF91BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 15:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD33140352
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 15:58:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD33140352
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hJT9Z1EOpHIU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 15:58:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 948CF4015E
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 948CF4015E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 15:58:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="366863654"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="366863654"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 08:58:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="789205710"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="789205710"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jul 2023 08:58:08 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed,  5 Jul 2023 17:55:51 +0200
Message-ID: <20230705155551.1317583-10-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
References: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688572695; x=1720108695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=msfbc1HWUQW8Tb/jojI0oHzKqQ2nB68//WwDNA+yAwU=;
 b=b9HLsCrSc2w330gwnIb/xltEvj9Y44Zs6q9kUH8I74Y5arnR+Ig/aIep
 Hn1yi0mhG5IA3JJYRhd3NjannVDYaO6AkgNUfus9L7UE6Gwqo9pEzKX+x
 pWsW04c55L2bl0aFdxGTEFa28jy9i7RQ5H5JvUCdN+t6OwSb4DjehwS6t
 iiIWOfxBikVzaR7fiS8iA2YA39ADhyfmkrnODjYbWWuteduud2j4gzlUk
 WSHP4QjiOPRZa68brGWwZPj4VY5nn1By8n1jtGZyJNgfx1GQD3zY0Yr/j
 56IwNVNrUet+6APsDELV40Qq6uXYYmAaKJfFsRiBiq/FOTfGFPh9u5E+Q
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b9HLsCrS
Subject: [Intel-wired-lan] [PATCH RFC net-next v4 9/9] iavf: switch queue
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
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>
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
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 86 ++++-------------
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  2 +
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 92 ++++++++++---------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   | 54 +++--------
 4 files changed, 83 insertions(+), 151 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index de3050c02b6f..cdf09c5412a0 100644
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
@@ -346,15 +301,14 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
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
+		libie_rq_stats_get_data(&data, &ring->rq_stats, ring->pp);
 	}
 	rcu_read_unlock();
 }
@@ -376,10 +330,8 @@ static void iavf_get_stat_strings(struct net_device *netdev, u8 *data)
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
index 39c6d83e80a1..659bdfc33e0b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1566,12 +1566,14 @@ static int iavf_alloc_queues(struct iavf_adapter *adapter)
 		tx_ring->itr_setting = IAVF_ITR_TX_DEF;
 		if (adapter->flags & IAVF_FLAG_WB_ON_ITR_CAPABLE)
 			tx_ring->flags |= IAVF_TXR_FLAGS_WB_ON_ITR;
+		u64_stats_init(&tx_ring->sq_stats.syncp);
 
 		rx_ring = &adapter->rx_rings[i];
 		rx_ring->queue_index = i;
 		rx_ring->netdev = adapter->netdev;
 		rx_ring->count = adapter->rx_desc_count;
 		rx_ring->itr_setting = IAVF_ITR_RX_DEF;
+		u64_stats_init(&rx_ring->rq_stats.syncp);
 	}
 
 	adapter->num_active_queues = num_active_queues;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index d1491b481eac..1ccc80c3f732 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -176,6 +176,9 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 	for (i = 0; i < vsi->back->num_active_queues; i++) {
 		tx_ring = &vsi->back->tx_rings[i];
 		if (tx_ring && tx_ring->desc) {
+			const struct libie_sq_stats *st = &tx_ring->sq_stats;
+			u32 start;
+
 			/* If packet counter has not changed the queue is
 			 * likely stalled, so force an interrupt for this
 			 * queue.
@@ -183,8 +186,13 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
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
@@ -193,7 +201,7 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 			 * to iavf_get_tx_pending()
 			 */
 			smp_rmb();
-			tx_ring->tx_stats.prev_pkt_ctr =
+			tx_ring->prev_pkt_ctr =
 			  iavf_get_tx_pending(tx_ring, true) ? packets : -1;
 		}
 	}
@@ -212,11 +220,11 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 			      struct iavf_ring *tx_ring, int napi_budget)
 {
+	unsigned int budget = IAVF_DEFAULT_IRQ_WORK;
+	struct libie_sq_onstack_stats stats = { };
 	int i = tx_ring->next_to_clean;
 	struct iavf_tx_buffer *tx_buf;
 	struct iavf_tx_desc *tx_desc;
-	unsigned int total_bytes = 0, total_packets = 0;
-	unsigned int budget = IAVF_DEFAULT_IRQ_WORK;
 
 	tx_buf = &tx_ring->tx_bi[i];
 	tx_desc = IAVF_TX_DESC(tx_ring, i);
@@ -242,8 +250,8 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 		tx_buf->next_to_watch = NULL;
 
 		/* update the statistics for this packet */
-		total_bytes += tx_buf->bytecount;
-		total_packets += tx_buf->gso_segs;
+		stats.bytes += tx_buf->bytecount;
+		stats.packets += tx_buf->gso_segs;
 
 		/* free the skb */
 		napi_consume_skb(tx_buf->skb, napi_budget);
@@ -300,12 +308,9 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 
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
@@ -324,10 +329,10 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 
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
@@ -338,7 +343,7 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 		   !test_bit(__IAVF_VSI_DOWN, vsi->state)) {
 			netif_wake_subqueue(tx_ring->netdev,
 					    tx_ring->queue_index);
-			++tx_ring->tx_stats.restart_queue;
+			libie_stats_inc_one(&tx_ring->sq_stats, restarts);
 		}
 	}
 
@@ -674,7 +679,7 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
 
 	tx_ring->next_to_use = 0;
 	tx_ring->next_to_clean = 0;
-	tx_ring->tx_stats.prev_pkt_ctr = -1;
+	tx_ring->prev_pkt_ctr = -1;
 	return 0;
 
 err:
@@ -730,7 +735,7 @@ void iavf_free_rx_resources(struct iavf_ring *rx_ring)
 		rx_ring->desc = NULL;
 	}
 
-	page_pool_destroy(rx_ring->pp);
+	libie_rx_page_pool_destroy(rx_ring->pp, &rx_ring->rq_stats);
 	rx_ring->pp = NULL;
 }
 
@@ -758,8 +763,6 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 	if (!rx_ring->rx_bi)
 		goto err;
 
-	u64_stats_init(&rx_ring->syncp);
-
 	/* Round up to nearest 4K */
 	rx_ring->size = rx_ring->count * sizeof(union iavf_32byte_rx_desc);
 	rx_ring->size = ALIGN(rx_ring->size, 4096);
@@ -878,7 +881,7 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
 	if (rx_ring->next_to_use != ntu)
 		iavf_release_rx_desc(rx_ring, ntu);
 
-	rx_ring->rx_stats.alloc_page_failed++;
+	libie_stats_inc_one(&rx_ring->rq_stats, alloc_page_fail);
 
 	/* make sure to come back via polling to try again after
 	 * allocation failure
@@ -1089,7 +1092,7 @@ static struct sk_buff *iavf_build_skb(const struct libie_rx_buffer *rx_buffer,
  * iavf_is_non_eop - process handling of non-EOP buffers
  * @rx_ring: Rx ring being processed
  * @rx_desc: Rx descriptor for current buffer
- * @skb: Current socket buffer containing buffer in progress
+ * @stats: NAPI poll local stats to update
  *
  * This function updates next to clean.  If the buffer is an EOP buffer
  * this function exits returning false, otherwise it will place the
@@ -1098,7 +1101,7 @@ static struct sk_buff *iavf_build_skb(const struct libie_rx_buffer *rx_buffer,
  **/
 static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
 			    union iavf_rx_desc *rx_desc,
-			    struct sk_buff *skb)
+			    struct libie_rq_onstack_stats *stats)
 {
 	u32 ntc = rx_ring->next_to_clean + 1;
 
@@ -1113,7 +1116,7 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
 	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))
 		return false;
 
-	rx_ring->rx_stats.non_eop_descs++;
+	stats->fragments++;
 
 	return true;
 }
@@ -1132,12 +1135,12 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
  **/
 static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 {
-	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
-	struct sk_buff *skb = rx_ring->skb;
 	u16 cleaned_count = IAVF_DESC_UNUSED(rx_ring);
+	struct libie_rq_onstack_stats stats = { };
+	struct sk_buff *skb = rx_ring->skb;
 	bool failure = false;
 
-	while (likely(total_rx_packets < (unsigned int)budget)) {
+	while (likely(stats.packets < budget)) {
 		struct libie_rx_buffer *rx_buffer;
 		union iavf_rx_desc *rx_desc;
 		unsigned int size;
@@ -1187,14 +1190,15 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
-			rx_ring->rx_stats.alloc_buff_failed++;
+			libie_stats_inc_one(&rx_ring->rq_stats,
+					    build_skb_fail);
 			break;
 		}
 
 skip_data:
 		cleaned_count++;
 
-		if (iavf_is_non_eop(rx_ring, rx_desc, skb))
+		if (iavf_is_non_eop(rx_ring, rx_desc, &stats))
 			continue;
 
 		/* ERR_MASK will only have valid bits if EOP set, and
@@ -1214,7 +1218,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		}
 
 		/* probably a little skewed due to removing CRC */
-		total_rx_bytes += skb->len;
+		stats.bytes += skb->len;
 
 		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
 		rx_ptype = (qword & IAVF_RXD_QW1_PTYPE_MASK) >>
@@ -1236,20 +1240,20 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		skb = NULL;
 
 		/* update budget accounting */
-		total_rx_packets++;
+		stats.packets++;
 	}
 
 	rx_ring->skb = skb;
 
-	u64_stats_update_begin(&rx_ring->syncp);
-	rx_ring->stats.packets += total_rx_packets;
-	rx_ring->stats.bytes += total_rx_bytes;
-	u64_stats_update_end(&rx_ring->syncp);
-	rx_ring->q_vector->rx.total_packets += total_rx_packets;
-	rx_ring->q_vector->rx.total_bytes += total_rx_bytes;
+	libie_rq_napi_stats_add(&rx_ring->rq_stats, &stats);
+	rx_ring->q_vector->rx.total_packets += stats.packets;
+	rx_ring->q_vector->rx.total_bytes += stats.bytes;
 
 	/* guarantee a trip back through this routine if there was a failure */
-	return failure ? budget : (int)total_rx_packets;
+	if (unlikely(failure))
+		return budget;
+
+	return stats.packets;
 }
 
 static inline u32 iavf_buildreg_itr(const int type, u16 itr)
@@ -1426,10 +1430,8 @@ int iavf_napi_poll(struct napi_struct *napi, int budget)
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
 
@@ -1888,6 +1890,7 @@ bool __iavf_chk_linearize(struct sk_buff *skb)
 int __iavf_maybe_stop_tx(struct iavf_ring *tx_ring, int size)
 {
 	netif_stop_subqueue(tx_ring->netdev, tx_ring->queue_index);
+	libie_stats_inc_one(&tx_ring->sq_stats, stops);
 	/* Memory barrier before checking head and tail */
 	smp_mb();
 
@@ -1897,7 +1900,8 @@ int __iavf_maybe_stop_tx(struct iavf_ring *tx_ring, int size)
 
 	/* A reprieve! - use start_queue because it doesn't call schedule */
 	netif_start_subqueue(tx_ring->netdev, tx_ring->queue_index);
-	++tx_ring->tx_stats.restart_queue;
+	libie_stats_inc_one(&tx_ring->sq_stats, restarts);
+
 	return 0;
 }
 
@@ -2078,7 +2082,7 @@ static netdev_tx_t iavf_xmit_frame_ring(struct sk_buff *skb,
 			return NETDEV_TX_OK;
 		}
 		count = iavf_txd_use_count(skb->len);
-		tx_ring->tx_stats.tx_linearize++;
+		libie_stats_inc_one(&tx_ring->sq_stats, linearized);
 	}
 
 	/* need: 1 descriptor per page * PAGE_SIZE/IAVF_MAX_DATA_PER_TXD,
@@ -2088,7 +2092,7 @@ static netdev_tx_t iavf_xmit_frame_ring(struct sk_buff *skb,
 	 * otherwise try next time
 	 */
 	if (iavf_maybe_stop_tx(tx_ring, count + 4 + 1)) {
-		tx_ring->tx_stats.tx_busy++;
+		libie_stats_inc_one(&tx_ring->sq_stats, busy);
 		return NETDEV_TX_BUSY;
 	}
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index b13d878c74c6..81b430e8d8ff 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -4,6 +4,8 @@
 #ifndef _IAVF_TXRX_H_
 #define _IAVF_TXRX_H_
 
+#include <linux/net/intel/libie/stats.h>
+
 /* Interrupt Throttling and Rate Limiting Goodies */
 #define IAVF_DEFAULT_IRQ_WORK      256
 
@@ -201,33 +203,6 @@ struct iavf_tx_buffer {
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
-enum iavf_ring_state_t {
-	__IAVF_TX_FDIR_INIT_DONE,
-	__IAVF_TX_XPS_INIT_DONE,
-	__IAVF_RING_STATE_NBITS /* must be last */
-};
-
 /* some useful defines for virtchannel interface, which
  * is the only remaining user of header split
  */
@@ -252,7 +227,6 @@ struct iavf_ring {
 		struct libie_rx_buffer *rx_bi;
 		struct iavf_tx_buffer *tx_bi;
 	};
-	DECLARE_BITMAP(state, __IAVF_RING_STATE_NBITS);
 	u8 __iomem *tail;
 	u16 queue_index;		/* Queue number of ring */
 	u8 dcb_tc;			/* Traffic class of ring */
@@ -286,21 +260,9 @@ struct iavf_ring {
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
@@ -309,6 +271,18 @@ struct iavf_ring {
 					 * iavf_clean_rx_ring_irq() is called
 					 * for this ring.
 					 */
+
+	/* stats structs */
+	union {
+		struct libie_rq_stats rq_stats;
+		struct libie_sq_stats sq_stats;
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
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

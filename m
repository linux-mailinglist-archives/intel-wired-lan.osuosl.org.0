Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF79E808E9E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 18:23:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FE0183C29;
	Thu,  7 Dec 2023 17:23:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FE0183C29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701969798;
	bh=WTwP9GgU2aBfPDGYhRQ4rkTdy6RCSF2wwMT9OnGvVkU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PrO/b7y31A+6rCPW4FVw+OZz2/6toawapae8IgejquncI9/UulvUKvxF9zq1QC1Q4
	 vknrmV31Oaw5mV6J8A5XcSVAcTTIb6l1QiTDKvqqoGE9RUGrdSwoAUrOTRzStR9Pz7
	 yt6Ts/kWsqx257fVzzd4r+JbPTdVv+V/df27W+WXhe7N+VkIosFZh2U9Flg8KLP/of
	 4tVTe+4YQB4avvZtJugIYdjVo6ZX7uJFLYf7fs8b8bhxJ4wJMdL9dm7f8xJwWJHXxE
	 aSVPbUz3+lK71ttWoqcFNKGwhZcnJYZyT37HPU5NnaOuGBSruQ7uKvh+G1kWHm5NPo
	 go4GQvVLdW5Jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dgtZzMidBcDO; Thu,  7 Dec 2023 17:23:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 587DA83D23;
	Thu,  7 Dec 2023 17:23:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 587DA83D23
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38CB01BF380
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E90641E61
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E90641E61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NRX3Bn7MZO-C for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 17:22:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA5574161B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA5574161B
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="374435059"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="374435059"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 09:22:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="721548709"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="721548709"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2023 09:22:46 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  7 Dec 2023 18:20:10 +0100
Message-ID: <20231207172010.1441468-13-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
References: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701969771; x=1733505771;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gv82KkJoCtq4lPC2UFfKXT5CxlZ+DeCc/K2ljFJMnMo=;
 b=Lp8HEjCAD5nbC6A7z8fz5lsvyxBzwyFItdTQ/U72z2HHmTnHpqYX83GF
 ptW9VjTOVuKFslcu0ogK0xsHLkRXctnW6PS5A5A0MRswIYutD3zIJYImc
 mRQXv2Q8eSHGrT+rSjzZOgFo0yqnQr/QD/+pdDsDtrmVXCw11tGaibDtz
 63IffTen2pT3T/TdpZj6CeFKcv8cVEVFaYOQ68O85bg2ysQdqU8Ad2JQH
 DmV9UFFRLSGO4+GVsQ+MvNt6An1V9ctQSk+kCTkkwzhXXSE4i5Q1FNwLp
 Ox7V75j3RXlN8UIPijkR+Hu9bLSl9EpJtlWcZ/iAb4G99DTxcCU9pw/4l
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lp8HEjCA
Subject: [Intel-wired-lan] [PATCH net-next v6 12/12] iavf: switch queue
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
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
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
The rest is straightforward. Note that it makes the ring structure 1 CL
bigger, but no layout changes since the stats structures are 32-byte
aligned.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 94 +++++--------------
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  2 +
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 84 +++++++++--------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   | 28 +-----
 4 files changed, 72 insertions(+), 136 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 964e66b4869c..898528abb03c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -2,9 +2,10 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 /* ethtool support for iavf */
-#include "iavf.h"
 
-#include <linux/uaccess.h>
+#include <linux/net/intel/libie/rx.h>
+
+#include "iavf.h"
 
 /* ethtool statistics helpers */
 
@@ -46,16 +47,6 @@ struct iavf_stats {
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
@@ -141,43 +132,6 @@ __iavf_add_ethtool_stats(u64 **data, void *pointer,
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
@@ -237,8 +191,6 @@ static const struct iavf_stats iavf_gstrings_stats[] = {
 
 #define IAVF_STATS_LEN	ARRAY_SIZE(iavf_gstrings_stats)
 
-#define IAVF_QUEUE_STATS_LEN	ARRAY_SIZE(iavf_gstrings_queue_stats)
-
 /**
  * iavf_get_link_ksettings - Get Link Speed and Duplex settings
  * @netdev: network interface device structure
@@ -308,18 +260,22 @@ static int iavf_get_link_ksettings(struct net_device *netdev,
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
@@ -346,15 +302,11 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
 	 * it to iterate over rings' stats.
 	 */
 	for (i = 0; i < adapter->num_active_queues; i++) {
-		struct iavf_ring *ring;
+		/* Rx rings stats */
+		libie_rq_stats_get_data(&data, &adapter->rx_rings[i].rq_stats);
 
 		/* Tx rings stats */
-		ring = &adapter->tx_rings[i];
-		iavf_add_queue_stats(&data, ring);
-
-		/* Rx rings stats */
-		ring = &adapter->rx_rings[i];
-		iavf_add_queue_stats(&data, ring);
+		libie_sq_stats_get_data(&data, &adapter->tx_rings[i].sq_stats);
 	}
 	rcu_read_unlock();
 }
@@ -376,10 +328,8 @@ static void iavf_get_stat_strings(struct net_device *netdev, u8 *data)
 	 * real_num_tx_queues for both Tx and Rx queues.
 	 */
 	for (i = 0; i < netdev->real_num_tx_queues; i++) {
-		iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,
-				      "tx", i);
-		iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,
-				      "rx", i);
+		libie_rq_stats_get_strings(&data, i);
+		libie_sq_stats_get_strings(&data, i);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 0becfdf2ed99..73563ae2ea03 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1603,12 +1603,14 @@ static int iavf_alloc_queues(struct iavf_adapter *adapter)
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
index aa86a0f926c6..97f8241ba56f 100644
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
@@ -183,7 +186,12 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 			 * prev_pkt_ctr would be negative if there was no
 			 * pending work.
 			 */
-			packets = tx_ring->stats.packets & INT_MAX;
+			do {
+				start = u64_stats_fetch_begin(&st->syncp);
+				packets = u64_stats_read(&st->packets) &
+					  INT_MAX;
+			} while (u64_stats_fetch_retry(&st->syncp, start));
+
 			if (tx_ring->prev_pkt_ctr == packets) {
 				iavf_force_wb(vsi, tx_ring->q_vector);
 				continue;
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
 
@@ -766,8 +771,6 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 	if (!rx_ring->rx_bi)
 		goto err;
 
-	u64_stats_init(&rx_ring->syncp);
-
 	/* Round up to nearest 4K */
 	rx_ring->size = rx_ring->count * sizeof(union iavf_32byte_rx_desc);
 	rx_ring->size = ALIGN(rx_ring->size, 4096);
@@ -893,7 +896,7 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
 	if (rx_ring->next_to_use != ntu)
 		iavf_release_rx_desc(rx_ring, ntu);
 
-	rx_ring->rx_stats.alloc_page_failed++;
+	libie_stats_inc_one(&rx_ring->rq_stats, alloc_page_fail);
 
 	/* make sure to come back via polling to try again after
 	 * allocation failure
@@ -1101,7 +1104,7 @@ static struct sk_buff *iavf_build_skb(const struct libie_rx_buffer *rx_buffer,
  * iavf_is_non_eop - process handling of non-EOP buffers
  * @rx_ring: Rx ring being processed
  * @rx_desc: Rx descriptor for current buffer
- * @skb: Current socket buffer containing buffer in progress
+ * @stats: NAPI poll local stats to update
  *
  * This function updates next to clean.  If the buffer is an EOP buffer
  * this function exits returning false, otherwise it will place the
@@ -1110,7 +1113,7 @@ static struct sk_buff *iavf_build_skb(const struct libie_rx_buffer *rx_buffer,
  **/
 static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
 			    union iavf_rx_desc *rx_desc,
-			    struct sk_buff *skb)
+			    struct libie_rq_onstack_stats *stats)
 {
 	u32 ntc = rx_ring->next_to_clean + 1;
 
@@ -1125,7 +1128,7 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
 	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))
 		return false;
 
-	rx_ring->rx_stats.non_eop_descs++;
+	stats->fragments++;
 
 	return true;
 }
@@ -1144,12 +1147,12 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
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
@@ -1199,14 +1202,15 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 
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
@@ -1226,7 +1230,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		}
 
 		/* probably a little skewed due to removing CRC */
-		total_rx_bytes += skb->len;
+		stats.bytes += skb->len;
 
 		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
 		rx_ptype = (qword & IAVF_RXD_QW1_PTYPE_MASK) >>
@@ -1248,20 +1252,20 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
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
@@ -1438,10 +1442,8 @@ int iavf_napi_poll(struct napi_struct *napi, int budget)
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
 
@@ -1900,6 +1902,7 @@ bool __iavf_chk_linearize(struct sk_buff *skb)
 int __iavf_maybe_stop_tx(struct iavf_ring *tx_ring, int size)
 {
 	netif_stop_subqueue(tx_ring->netdev, tx_ring->queue_index);
+	libie_stats_inc_one(&tx_ring->sq_stats, stops);
 	/* Memory barrier before checking head and tail */
 	smp_mb();
 
@@ -1909,7 +1912,8 @@ int __iavf_maybe_stop_tx(struct iavf_ring *tx_ring, int size)
 
 	/* A reprieve! - use start_queue because it doesn't call schedule */
 	netif_start_subqueue(tx_ring->netdev, tx_ring->queue_index);
-	++tx_ring->tx_stats.restart_queue;
+	libie_stats_inc_one(&tx_ring->sq_stats, restarts);
+
 	return 0;
 }
 
@@ -2090,7 +2094,7 @@ static netdev_tx_t iavf_xmit_frame_ring(struct sk_buff *skb,
 			return NETDEV_TX_OK;
 		}
 		count = iavf_txd_use_count(skb->len);
-		tx_ring->tx_stats.tx_linearize++;
+		libie_stats_inc_one(&tx_ring->sq_stats, linearized);
 	}
 
 	/* need: 1 descriptor per page * PAGE_SIZE/IAVF_MAX_DATA_PER_TXD,
@@ -2100,7 +2104,7 @@ static netdev_tx_t iavf_xmit_frame_ring(struct sk_buff *skb,
 	 * otherwise try next time
 	 */
 	if (iavf_maybe_stop_tx(tx_ring, count + 4 + 1)) {
-		tx_ring->tx_stats.tx_busy++;
+		libie_stats_inc_one(&tx_ring->sq_stats, busy);
 		return NETDEV_TX_BUSY;
 	}
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 72c6bc64d94e..016c8b6e6160 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -4,6 +4,8 @@
 #ifndef _IAVF_TXRX_H_
 #define _IAVF_TXRX_H_
 
+#include <linux/net/intel/libie/stats.h>
+
 /* Interrupt Throttling and Rate Limiting Goodies */
 #define IAVF_DEFAULT_IRQ_WORK      256
 
@@ -201,26 +203,6 @@ struct iavf_tx_buffer {
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
@@ -272,11 +254,9 @@ struct iavf_ring {
 #define IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2	BIT(5)
 
 	/* stats structs */
-	struct iavf_queue_stats	stats;
-	struct u64_stats_sync syncp;
 	union {
-		struct iavf_tx_queue_stats tx_stats;
-		struct iavf_rx_queue_stats rx_stats;
+		struct libie_rq_stats rq_stats;
+		struct libie_sq_stats sq_stats;
 	};
 
 	int prev_pkt_ctr;		/* For Tx stall detection */
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9033F29D216
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 21:20:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 52C7120797;
	Wed, 28 Oct 2020 20:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7V6Pdj4aVoHG; Wed, 28 Oct 2020 20:20:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7962A20796;
	Wed, 28 Oct 2020 20:20:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31D081BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:20:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0DE7020797
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:20:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SpLE2dzPmBTw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 20:19:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 42A72203DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:19:57 +0000 (UTC)
IronPort-SDR: Rqzw0N5B2C2dagOHhsJQWbwBDMz+YdWaerHiLOHNY1q+eQbp80yrcKCBJS577GzeH3J75fojya
 bFAVO5MK/CyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="147614191"
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="147614191"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:19:55 -0700
IronPort-SDR: kci0nNjtGtiIu4422KqI5OmV0K85rAb+GemVyy1CNlidJFaLNk3Nm2ZcME+ocMcSxkv7DJBf9q
 lKWaAI3EvGqQ==
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="536374752"
Received: from zcolon-mobl.amr.corp.intel.com ([10.209.108.9])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:19:54 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Oct 2020 13:19:38 -0700
Message-Id: <20201028201943.93147-6-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201028201943.93147-1-andre.guedes@intel.com>
References: <20201028201943.93147-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 05/10] igc: Refactor rx timestamp
 handling
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

This patch refactors the rx timestamp handling in preparation to land
XDP support.

RX timestamps are put in the rx buffer by hardware, before the packet
data. When creating the xdp buffer, we will need to check the rx
descriptor to determine if the buffer contains timestamp information
and consider the offset when setting xdp.data.

The rx descriptor check is already done in igc_construct_skb(). To
avoid code duplication, this patch moves the timestamp handling to
igc_clean_rx_irq() so both skb and xdp paths can reuse it.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  3 +--
 drivers/net/ethernet/intel/igc/igc_main.c | 30 +++++++++++++++--------
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 25 ++++++++++---------
 3 files changed, 34 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index b66dda992d32..ae91d51073ca 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -552,8 +552,7 @@ void igc_ptp_init(struct igc_adapter *adapter);
 void igc_ptp_reset(struct igc_adapter *adapter);
 void igc_ptp_suspend(struct igc_adapter *adapter);
 void igc_ptp_stop(struct igc_adapter *adapter);
-void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
-			 struct sk_buff *skb);
+ktime_t igc_ptp_rx_pktstamp(struct igc_adapter *adapter, u32 *buf);
 int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
 int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
 void igc_ptp_tx_hang(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 15c67e5763d3..84ffde75e968 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1594,10 +1594,11 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
 
 static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
 					 struct igc_rx_buffer *rx_buffer,
-					 union igc_adv_rx_desc *rx_desc,
-					 unsigned int size)
+					 unsigned int size, int pkt_offset,
+					 ktime_t timestamp)
 {
-	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
+	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset +
+		   pkt_offset;
 	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
 	unsigned int headlen;
 	struct sk_buff *skb;
@@ -1610,11 +1611,8 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
 	if (unlikely(!skb))
 		return NULL;
 
-	if (unlikely(igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP))) {
-		igc_ptp_rx_pktstamp(rx_ring->q_vector, va, skb);
-		va += IGC_TS_HDR_LEN;
-		size -= IGC_TS_HDR_LEN;
-	}
+	if (timestamp)
+		skb_hwtstamps(skb)->hwtstamp = timestamp;
 
 	/* Determine available headroom for copy */
 	headlen = size;
@@ -1913,6 +1911,8 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 	while (likely(total_packets < budget)) {
 		union igc_adv_rx_desc *rx_desc;
 		struct igc_rx_buffer *rx_buffer;
+		ktime_t timestamp = 0;
+		int pkt_offset = 0;
 		unsigned int size;
 
 		/* return some buffers to hardware, one at a time is too slow */
@@ -1934,14 +1934,24 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 
 		rx_buffer = igc_get_rx_buffer(rx_ring, size);
 
+		if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
+			void *pktbuf = page_address(rx_buffer->page) +
+				       rx_buffer->page_offset;
+
+			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
+							pktbuf);
+			pkt_offset = IGC_TS_HDR_LEN;
+			size -= IGC_TS_HDR_LEN;
+		}
+
 		/* retrieve a buffer from the ring */
 		if (skb)
 			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
 		else if (ring_uses_build_skb(rx_ring))
 			skb = igc_build_skb(rx_ring, rx_buffer, rx_desc, size);
 		else
-			skb = igc_construct_skb(rx_ring, rx_buffer,
-						rx_desc, size);
+			skb = igc_construct_skb(rx_ring, rx_buffer, size,
+						pkt_offset, timestamp);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 79873f6df335..4331c2dcffb2 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -155,20 +155,20 @@ static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
 
 /**
  * igc_ptp_rx_pktstamp - Retrieve timestamp from rx packet buffer
- * @q_vector: Pointer to interrupt specific structure
- * @va: Pointer to address containing Rx buffer
- * @skb: Buffer containing timestamp and packet
+ * @adapter: Pointer to adapter the packet buffer belongs to
+ * @buf: Pointer to packet buffer
  *
  * This function retrieves the timestamp saved in the beginning of packet
  * buffer. While two timestamps are available, one in timer0 reference and the
  * other in timer1 reference, this function considers only the timestamp in
  * timer0 reference.
+ *
+ * Returns: Timestamp value.
  */
-void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
-			 struct sk_buff *skb)
+ktime_t igc_ptp_rx_pktstamp(struct igc_adapter *adapter, u32 *buf)
 {
-	struct igc_adapter *adapter = q_vector->adapter;
-	u64 regval;
+	ktime_t timestamp;
+	u32 secs, nsecs;
 	int adjust;
 
 	/* Timestamps are saved in little endian at the beginning of the packet
@@ -180,9 +180,10 @@ void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
 	 * SYSTIML holds the nanoseconds part while SYSTIMH holds the seconds
 	 * part of the timestamp.
 	 */
-	regval = le32_to_cpu(va[2]);
-	regval |= (u64)le32_to_cpu(va[3]) << 32;
-	igc_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb), regval);
+	nsecs = le32_to_cpu(buf[2]);
+	secs = le32_to_cpu(buf[3]);
+
+	timestamp = ktime_set(secs, nsecs);
 
 	/* Adjust timestamp for the RX latency based on link speed */
 	switch (adapter->link_speed) {
@@ -203,8 +204,8 @@ void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
 		netdev_warn_once(adapter->netdev, "Imprecise timestamp\n");
 		break;
 	}
-	skb_hwtstamps(skb)->hwtstamp =
-		ktime_sub_ns(skb_hwtstamps(skb)->hwtstamp, adjust);
+
+	return ktime_sub_ns(timestamp, adjust);
 }
 
 static void igc_ptp_disable_rx_timestamp(struct igc_adapter *adapter)
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

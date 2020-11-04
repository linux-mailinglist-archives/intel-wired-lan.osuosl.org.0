Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3C42A5D01
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 04:12:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 569412226B;
	Wed,  4 Nov 2020 03:12:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eUU+ad+jtjvg; Wed,  4 Nov 2020 03:12:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6246521561;
	Wed,  4 Nov 2020 03:12:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 418121BF989
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3D00C8619E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TFxkEm0IU_2a for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 03:12:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 76E9985F5D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:26 +0000 (UTC)
IronPort-SDR: Do07aqooXlmgqQPM7t6TQ5V0aGSJbdzb8osRMJGR0a2C1Enp8rNz5NRonG5hspr8IGjGLTOiCn
 WJV7rlswJyvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="187017149"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="187017149"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 19:12:25 -0800
IronPort-SDR: Nbi3zUATX3fKMLr4H466+s3gDKERo1dZT0FNZgYyjzp8Kb0h3EGo5CH8IP0aQPjbnR7yGVCahv
 ir0cN0XEV02g==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="471042948"
Received: from abkumar-dell.amr.corp.intel.com ([10.212.180.108])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 19:12:25 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Nov 2020 19:12:06 -0800
Message-Id: <20201104031210.27772-6-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201104031210.27772-1-andre.guedes@intel.com>
References: <20201104031210.27772-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 5/9] igc: Refactor rx timestamp handling
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
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
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
index 148c5a94b505..078e5b81409d 100644
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

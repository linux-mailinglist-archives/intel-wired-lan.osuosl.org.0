Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBE13146B4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 03:59:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36E046F8A4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 02:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ffdo-bLPIg54 for <lists+intel-wired-lan@lfdr.de>;
	Tue,  9 Feb 2021 02:59:16 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 3953A6F8AA; Tue,  9 Feb 2021 02:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0670C6F89F;
	Tue,  9 Feb 2021 02:58:35 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A8851BF59F
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 87A5086A3B
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZfkJ7HICI7iZ for <intel-wired-lan@osuosl.org>;
 Tue,  9 Feb 2021 02:58:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AAE2886A28
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:58:22 +0000 (UTC)
IronPort-SDR: TpXAwJFVHbKyuwNakNZkbT4Ju11sMeCF127fd/Odn6u27hceFLBIfh16YtSM0OhGcEyhNJ2mZU
 50HgfCyyfsjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="245888654"
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="245888654"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 18:58:22 -0800
IronPort-SDR: eMWExoFzdi56b0al5RanEmEv69bs9UJpiHuVGYHX2x3Zhvzqpfh4Hv3titpjnCyPmi3kzMXiX2
 hP/kAmwOnR8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="374799231"
Received: from otc-cfl-ubuntu-15.jf.intel.com ([10.54.31.57])
 by orsmga002.jf.intel.com with ESMTP; 08 Feb 2021 18:58:21 -0800
From: Vedang Patel <vedang.patel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  8 Feb 2021 18:41:37 -0800
Message-Id: <20210209024141.23298-6-vedang.patel@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210209024141.23298-1-vedang.patel@intel.com>
References: <20210209024141.23298-1-vedang.patel@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v5 5/9] igc: Refactor Rx
 timestamp handling
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

Refactor the Rx timestamp handling in preparation to land
XDP support.

Rx timestamps are put in the Rx buffer by hardware, before the packet
data. When creating the xdp buffer, we will need to check the Rx
descriptor to determine if the buffer contains timestamp information
and consider the offset when setting xdp.data.

The Rx descriptor check is already done in igc_construct_skb(). To
avoid code duplication, this patch moves the timestamp handling to
igc_clean_rx_irq() so both skb and xdp paths can reuse it.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  3 +--
 drivers/net/ethernet/intel/igc/igc_main.c | 30 +++++++++++++++--------
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 25 ++++++++++---------
 3 files changed, 34 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 153e3276207e..05d893029643 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -546,8 +546,7 @@ void igc_ptp_init(struct igc_adapter *adapter);
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
index c474d1dade76..282279d8a0ca 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1582,10 +1582,11 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
 
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
@@ -1598,11 +1599,8 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
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
@@ -1901,6 +1899,8 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 	while (likely(total_packets < budget)) {
 		union igc_adv_rx_desc *rx_desc;
 		struct igc_rx_buffer *rx_buffer;
+		ktime_t timestamp = 0;
+		int pkt_offset = 0;
 		unsigned int size;
 
 		/* return some buffers to hardware, one at a time is too slow */
@@ -1922,14 +1922,24 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 
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
index b6a640bfc991..7301a7b3fadc 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -153,20 +153,20 @@ static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
 
 /**
  * igc_ptp_rx_pktstamp - Retrieve timestamp from Rx packet buffer
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
+ * Returns timestamp value.
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
@@ -178,9 +178,10 @@ void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
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
@@ -201,8 +202,8 @@ void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
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
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

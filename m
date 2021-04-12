Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E4E35E13C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 16:19:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4E9560585;
	Tue, 13 Apr 2021 14:18:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xz6hddtFOzCq; Tue, 13 Apr 2021 14:18:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD64C60B94;
	Tue, 13 Apr 2021 14:18:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B43101BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 10:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A058F4035D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 10:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="NlFzQDEV";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="2gaYaPTa"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KK3sisYVzHms for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Apr 2021 10:17:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 217F740352
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 10:17:43 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1618222660;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=j3xeghM5spQnvvmU4+iJKpijj3D41bxB7S+oaHC+IEQ=;
 b=NlFzQDEVY3FH+l31qLoI6pOIyl64/kbzrYT6UFGHjcGqBnFXYFSkeW6ma8XeP9E74wM0SB
 OlBuDdEYtUQJ2SpWlcZRIFGj0Yf+D5e6R5N3zwTKBXxMw66IvIlbQjEBu/4eU5lSxLbh2l
 UskU+MCbWgxrCa28rFXjTG5+pHhXj6UZF0n8ZBQ3y4v+YEcIMKc7PDttBs5alqpWIOSmAx
 G3jUgcuxL037tpsvFouK+xFuP57ZGoqY4ofpdKBI6FF+7r9pDqiFi5VDvic9SrrmN4TH+o
 OETOgzznZQOWP/rFRCP9jCesHNPDHbdGmyUY+W18aPEOTn9ztFG821csjmlF7w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1618222660;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=j3xeghM5spQnvvmU4+iJKpijj3D41bxB7S+oaHC+IEQ=;
 b=2gaYaPTa738aQkOmwIxWiyU9J4bYM569LIoz0Gj01KyGpRIB7x+Hew4q3lyFFA2RN7eFfn
 wk3sHuREBhHp0TDw==
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Mon, 12 Apr 2021 12:17:13 +0200
Message-Id: <20210412101713.15161-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 13 Apr 2021 14:18:41 +0000
Subject: [Intel-wired-lan] [PATCH RFC net] igb: Fix XDP with PTP enabled
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
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Alexei Starovoitov <ast@kernel.org>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Lorenzo Bianconi <lorenzo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When using native XDP with the igb driver, the XDP frame data doesn't point to
the beginning of the packet. It's off by 16 bytes. Everything works as expected
with XDP skb mode.

Actually these 16 bytes are used to store the packet timestamps. Therefore, pull
the timestamp before executing any XDP operations and adjust all other code
accordingly. The igc driver does it like that as well.

Tested with Intel i210 card and AF_XDP sockets.

Fixes: 9cbc948b5a20 ("igb: add XDP support")
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb.h      |  3 +-
 drivers/net/ethernet/intel/igb/igb_main.c | 45 ++++++++++++-----------
 drivers/net/ethernet/intel/igb/igb_ptp.c  | 18 ++++-----
 3 files changed, 32 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 7bda8c5edea5..72cf967c1a00 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -748,8 +748,7 @@ void igb_ptp_suspend(struct igb_adapter *adapter);
 void igb_ptp_rx_hang(struct igb_adapter *adapter);
 void igb_ptp_tx_hang(struct igb_adapter *adapter);
 void igb_ptp_rx_rgtstamp(struct igb_q_vector *q_vector, struct sk_buff *skb);
-int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
-			struct sk_buff *skb);
+ktime_t igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va);
 int igb_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
 int igb_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
 void igb_set_flag_queue_pairs(struct igb_adapter *, const u32);
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index a45cd2b416c8..8fab55fd18fc 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8281,7 +8281,7 @@ static void igb_add_rx_frag(struct igb_ring *rx_ring,
 static struct sk_buff *igb_construct_skb(struct igb_ring *rx_ring,
 					 struct igb_rx_buffer *rx_buffer,
 					 struct xdp_buff *xdp,
-					 union e1000_adv_rx_desc *rx_desc)
+					 ktime_t timestamp)
 {
 #if (PAGE_SIZE < 8192)
 	unsigned int truesize = igb_rx_pg_size(rx_ring) / 2;
@@ -8301,12 +8301,8 @@ static struct sk_buff *igb_construct_skb(struct igb_ring *rx_ring,
 	if (unlikely(!skb))
 		return NULL;
 
-	if (unlikely(igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP))) {
-		if (!igb_ptp_rx_pktstamp(rx_ring->q_vector, xdp->data, skb)) {
-			xdp->data += IGB_TS_HDR_LEN;
-			size -= IGB_TS_HDR_LEN;
-		}
-	}
+	if (timestamp)
+		skb_hwtstamps(skb)->hwtstamp = timestamp;
 
 	/* Determine available headroom for copy */
 	headlen = size;
@@ -8337,7 +8333,7 @@ static struct sk_buff *igb_construct_skb(struct igb_ring *rx_ring,
 static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
 				     struct igb_rx_buffer *rx_buffer,
 				     struct xdp_buff *xdp,
-				     union e1000_adv_rx_desc *rx_desc)
+				     ktime_t timestamp)
 {
 #if (PAGE_SIZE < 8192)
 	unsigned int truesize = igb_rx_pg_size(rx_ring) / 2;
@@ -8364,11 +8360,8 @@ static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
 	if (metasize)
 		skb_metadata_set(skb, metasize);
 
-	/* pull timestamp out of packet data */
-	if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
-		if (!igb_ptp_rx_pktstamp(rx_ring->q_vector, skb->data, skb))
-			__skb_pull(skb, IGB_TS_HDR_LEN);
-	}
+	if (timestamp)
+		skb_hwtstamps(skb)->hwtstamp = timestamp;
 
 	/* update buffer offset */
 #if (PAGE_SIZE < 8192)
@@ -8683,7 +8676,10 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 	while (likely(total_packets < budget)) {
 		union e1000_adv_rx_desc *rx_desc;
 		struct igb_rx_buffer *rx_buffer;
+		ktime_t timestamp = 0;
+		int pkt_offset = 0;
 		unsigned int size;
+		void *pktbuf;
 
 		/* return some buffers to hardware, one at a time is too slow */
 		if (cleaned_count >= IGB_RX_BUFFER_WRITE) {
@@ -8703,15 +8699,21 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 		dma_rmb();
 
 		rx_buffer = igb_get_rx_buffer(rx_ring, size, &rx_buf_pgcnt);
+		pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
+
+		if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
+			timestamp = igb_ptp_rx_pktstamp(rx_ring->q_vector,
+							pktbuf);
+			pkt_offset += IGB_TS_HDR_LEN;
+			size -= IGB_TS_HDR_LEN;
+		}
 
 		/* retrieve a buffer from the ring */
 		if (!skb) {
-			unsigned int offset = igb_rx_offset(rx_ring);
-			unsigned char *hard_start;
-
-			hard_start = page_address(rx_buffer->page) +
-				     rx_buffer->page_offset - offset;
-			xdp_prepare_buff(&xdp, hard_start, offset, size, true);
+			xdp.data = pktbuf + pkt_offset;
+			xdp.data_end = xdp.data + size;
+			xdp.data_meta = xdp.data;
+			xdp.data_hard_start = pktbuf - igb_rx_offset(rx_ring);
 #if (PAGE_SIZE > 4096)
 			/* At larger PAGE_SIZE, frame_sz depend on len size */
 			xdp.frame_sz = igb_rx_frame_truesize(rx_ring, size);
@@ -8733,10 +8735,11 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 		} else if (skb)
 			igb_add_rx_frag(rx_ring, rx_buffer, skb, size);
 		else if (ring_uses_build_skb(rx_ring))
-			skb = igb_build_skb(rx_ring, rx_buffer, &xdp, rx_desc);
+			skb = igb_build_skb(rx_ring, rx_buffer, &xdp,
+					    timestamp);
 		else
 			skb = igb_construct_skb(rx_ring, rx_buffer,
-						&xdp, rx_desc);
+						&xdp, timestamp);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 86a576201f5f..0cbdf48285d3 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -863,23 +863,22 @@ static void igb_ptp_tx_hwtstamp(struct igb_adapter *adapter)
  * igb_ptp_rx_pktstamp - retrieve Rx per packet timestamp
  * @q_vector: Pointer to interrupt specific structure
  * @va: Pointer to address containing Rx buffer
- * @skb: Buffer containing timestamp and packet
  *
  * This function is meant to retrieve a timestamp from the first buffer of an
  * incoming frame.  The value is stored in little endian format starting on
  * byte 8
  *
- * Returns: 0 if success, nonzero if failure
+ * Returns: 0 on failure, timestamp on success
  **/
-int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
-			struct sk_buff *skb)
+ktime_t igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va)
 {
 	struct igb_adapter *adapter = q_vector->adapter;
+	struct skb_shared_hwtstamps ts;
 	__le64 *regval = (__le64 *)va;
 	int adjust = 0;
 
 	if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
-		return IGB_RET_PTP_DISABLED;
+		return 0;
 
 	/* The timestamp is recorded in little endian format.
 	 * DWORD: 0        1        2        3
@@ -888,10 +887,9 @@ int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
 
 	/* check reserved dwords are zero, be/le doesn't matter for zero */
 	if (regval[0])
-		return IGB_RET_PTP_INVALID;
+		return 0;
 
-	igb_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb),
-				   le64_to_cpu(regval[1]));
+	igb_ptp_systim_to_hwtstamp(adapter, &ts, le64_to_cpu(regval[1]));
 
 	/* adjust timestamp for the RX latency based on link speed */
 	if (adapter->hw.mac.type == e1000_i210) {
@@ -907,10 +905,8 @@ int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
 			break;
 		}
 	}
-	skb_hwtstamps(skb)->hwtstamp =
-		ktime_sub_ns(skb_hwtstamps(skb)->hwtstamp, adjust);
 
-	return 0;
+	return ktime_sub_ns(ts.hwtstamp, adjust);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

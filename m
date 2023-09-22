Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C62A57AA69D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Sep 2023 03:41:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4D3083D40;
	Fri, 22 Sep 2023 01:41:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4D3083D40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695346907;
	bh=SlMg1UtJ36ne4L2ZYNSLIy+9VvAEDE0lEq5iiIUhflM=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G1bCG1xHP5g8OmvMHAp8Tpv3humVJMNovvht2+bQDML0K1+uIe/NueQJ2f7a0gv4S
	 LChvMzGKIpTqvOuuCDvPLc5hLoatlwN6ZDrAa8Zn564RYc63oxl6G3Um+pRch5WFOZ
	 loKPYgFfZ0yeitXbAI6/fRq1bugHsEXA6e6kEBXN7FYtJFOYs3KAidz8knC8aJfuR+
	 zhhzg/yCosUdtUEpSw/UvpIPLJiCIwT/a7Cg5PlYNxw0zqklhuJOSLgScY4Lir9ipw
	 8A/jMiwa8VamiJeJtmxtBbZ4Vr9yfdSuJqyoEWq5vch2NpITYORwqau9/YqFLdp2U7
	 XuUuylQDDK2Qg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BurUwxWmilZk; Fri, 22 Sep 2023 01:41:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC70283D19;
	Fri, 22 Sep 2023 01:41:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC70283D19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 378991BF375
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 01:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE66583CD8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 01:41:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE66583CD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hOyLpz8IyepS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Sep 2023 01:41:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8287383D22
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 01:41:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8287383D22
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="360099523"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="360099523"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 18:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="776666496"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="776666496"
Received: from kemeng-mobl.amr.corp.intel.com (HELO [192.168.1.14])
 ([10.251.15.55])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 18:41:24 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Thu, 21 Sep 2023 18:40:49 -0700
MIME-Version: 1.0
Message-Id: <20230921-igc-multiple-tstamp-vclock-v2-v1-2-aa0971cb0fe9@intel.com>
References: <20230921-igc-multiple-tstamp-vclock-v2-v1-0-aa0971cb0fe9@intel.com>
In-Reply-To: <20230921-igc-multiple-tstamp-vclock-v2-v1-0-aa0971cb0fe9@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>
X-Mailer: b4 0.13-dev-0438c
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695346891; x=1726882891;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=JR9CUT9wx1UxD6Jdj3d43ZVLGvhvpywsLip2mujw2XY=;
 b=RQbq42CQoDoJuB8k5a+cHPKRXWKu4gzOF671zjH/XxKGiZQJQ/lJssjS
 bGcHH5G4mJ4ZPzmpAG/XjRALCz6tcHjEi8/cuMzHP0AQofD7DVUAoHWED
 mvoFv2clUlcKKqBWCiD31qpTQW/zs9kkxuJuu01BVSEz48JcLwvFfoR8O
 O5OuXc6mcPfLfcL4rMb/1wkQJmZO1xH9CWyxXM4nLjGJATzHp9ZnAaivh
 nOAaOX0Z2DV96CL0464bC/bh4x5UYGd80mpKN2a1wtzYRKYFZejIden+M
 Z9ac1gue59dIjnkzY2AnGqoRp2NRN1HvQpx6vLauIfEVGqRZ3S+opBxvR
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RQbq42CQ
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] igc: Add support for PTP
 .getcyclesx64()
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for using Timer 1 (i225/i226 have 4 timer registers) as a
free-running clock (the "cycles" clock) in addition to Timer 0 (the
default, "adjustable clock"). The objective is to allow taprio/etf
offloading to coexist with PTP vclocks.

Besides the implementation of .getcyclesx64() for i225/i226, to keep
timestamping working when vclocks are in use, we also need to add
support for TX and RX timestamping using the free running timer, when
the requesting socket is bound to a vclock.

On the RX side, i225/i226 can be configured to store the values of two
timers in the received packet metadata area, so it's a matter of
configuring the right registers and retrieving the right timestamp.

The TX is a bit more involved because the hardware stores a single
timestamp (with the selected timer in the TX descriptor) into one of
the timestamp registers.

Note some changes at how the timestamps are done for RX, the
conversion and adjustment of timestamps are now done closer to the
consumption of the timestamp instead of near the reception.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         | 21 ++++++++++-
 drivers/net/ethernet/intel/igc/igc_base.h    |  4 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  2 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 55 ++++++++++++++++++++--------
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 50 +++++++++++++++----------
 drivers/net/ethernet/intel/igc/igc_regs.h    |  5 +++
 6 files changed, 101 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index f48f82d5e274..ac7c861e83a0 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -81,6 +81,21 @@ struct igc_tx_timestamp_request {
 	u32 flags;             /* flags that should be added to the tx_buffer */
 };
 
+struct igc_inline_rx_tstamps {
+	/* Timestamps are saved in little endian at the beginning of the packet
+	 * buffer following the layout:
+	 *
+	 * DWORD: | 0              | 1              | 2              | 3              |
+	 * Field: | Timer1 SYSTIML | Timer1 SYSTIMH | Timer0 SYSTIML | Timer0 SYSTIMH |
+	 *
+	 * SYSTIML holds the nanoseconds part while SYSTIMH holds the seconds
+	 * part of the timestamp.
+	 *
+	 */
+	__le32 timer1[2];
+	__le32 timer0[2];
+};
+
 struct igc_ring_container {
 	struct igc_ring *ring;          /* pointer to linked list of rings */
 	unsigned int total_bytes;       /* total bytes processed this int */
@@ -261,6 +276,8 @@ struct igc_adapter {
 	unsigned int ptp_flags;
 	/* System time value lock */
 	spinlock_t tmreg_lock;
+	/* Free-running timer lock */
+	spinlock_t free_timer_lock;
 	struct cyclecounter cc;
 	struct timecounter tc;
 	struct timespec64 prev_ptp_time; /* Pre-reset PTP clock */
@@ -469,6 +486,8 @@ enum igc_tx_flags {
 	IGC_TX_FLAGS_TSTAMP_1	= 0x100,
 	IGC_TX_FLAGS_TSTAMP_2	= 0x200,
 	IGC_TX_FLAGS_TSTAMP_3	= 0x400,
+
+	IGC_TX_FLAGS_TSTAMP_TIMER_1 = 0x800,
 };
 
 enum igc_boards {
@@ -531,7 +550,7 @@ struct igc_rx_buffer {
 struct igc_xdp_buff {
 	struct xdp_buff xdp;
 	union igc_adv_rx_desc *rx_desc;
-	ktime_t rx_ts; /* data indication bit IGC_RXDADV_STAT_TSIP */
+	struct igc_inline_rx_tstamps *rx_ts; /* data indication bit IGC_RXDADV_STAT_TSIP */
 };
 
 struct igc_q_vector {
diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
index f7d6491d4c60..bf8cdfbba9ff 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.h
+++ b/drivers/net/ethernet/intel/igc/igc_base.h
@@ -37,6 +37,10 @@ struct igc_adv_tx_context_desc {
 #define IGC_ADVTXD_TSTAMP_REG_1	0x00010000 /* Select register 1 for timestamp */
 #define IGC_ADVTXD_TSTAMP_REG_2	0x00020000 /* Select register 2 for timestamp */
 #define IGC_ADVTXD_TSTAMP_REG_3	0x00030000 /* Select register 3 for timestamp */
+#define IGC_ADVTXD_TSTAMP_TIMER_1	0x00010000 /* Select timer 1 for timestamp */
+#define IGC_ADVTXD_TSTAMP_TIMER_2	0x00020000 /* Select timer 2 for timestamp */
+#define IGC_ADVTXD_TSTAMP_TIMER_3	0x00030000 /* Select timer 3 for timestamp */
+
 #define IGC_ADVTXD_DTYP_CTXT	0x00200000 /* Advanced Context Descriptor */
 #define IGC_ADVTXD_DTYP_DATA	0x00300000 /* Advanced Data Descriptor */
 #define IGC_ADVTXD_DCMD_EOP	0x01000000 /* End of Packet */
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index b3037016f31d..5f92b3c7c3d4 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -317,6 +317,8 @@
 #define IGC_TXD_CMD_TSE		0x04000000 /* TCP Seg enable */
 #define IGC_TXD_EXTCMD_TSTAMP	0x00000010 /* IEEE1588 Timestamp packet */
 
+#define IGC_TXD_PTP2_TIMER_1	0x00000020
+
 /* IPSec Encrypt Enable */
 #define IGC_ADVTXD_L4LEN_SHIFT	8  /* Adv ctxt L4LEN shift */
 #define IGC_ADVTXD_MSS_SHIFT	16 /* Adv ctxt MSS shift */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 6be8dd536e10..f9d6aa4271fe 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1306,6 +1306,10 @@ static void igc_tx_olinfo_status(struct igc_ring *tx_ring,
 	olinfo_status |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_IPV4,
 				      (IGC_TXD_POPTS_IXSM << 8));
 
+	/* Use the second timer (free running, in general) for the timestamp */
+	olinfo_status |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP_TIMER_1,
+				      IGC_TXD_PTP2_TIMER_1);
+
 	tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
 }
 
@@ -1649,6 +1653,8 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		if (igc_request_tx_tstamp(adapter, skb, &tstamp_flags)) {
 			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
 			tx_flags |= IGC_TX_FLAGS_TSTAMP | tstamp_flags;
+			if (skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP_USE_CYCLES)
+				tx_flags |= IGC_TX_FLAGS_TSTAMP_TIMER_1;
 		} else {
 			adapter->tx_hwtstamp_skipped++;
 		}
@@ -1961,9 +1967,9 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
 
 static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
 					 struct igc_rx_buffer *rx_buffer,
-					 struct xdp_buff *xdp,
-					 ktime_t timestamp)
+					 struct igc_xdp_buff *ctx)
 {
+	struct xdp_buff *xdp = &ctx->xdp;
 	unsigned int metasize = xdp->data - xdp->data_meta;
 	unsigned int size = xdp->data_end - xdp->data;
 	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
@@ -1980,8 +1986,10 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
 	if (unlikely(!skb))
 		return NULL;
 
-	if (timestamp)
-		skb_hwtstamps(skb)->hwtstamp = timestamp;
+	if (ctx->rx_ts) {
+		skb_shinfo(skb)->tx_flags |= SKBTX_HW_TSTAMP_NETDEV;
+		skb_hwtstamps(skb)->netdev_data = ctx->rx_ts;
+	}
 
 	/* Determine available headroom for copy */
 	headlen = size;
@@ -2581,11 +2589,10 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 	int xdp_status = 0, rx_buffer_pgcnt;
 
 	while (likely(total_packets < budget)) {
-		union igc_adv_rx_desc *rx_desc;
+		struct igc_xdp_buff ctx = { .rx_ts = NULL };
 		struct igc_rx_buffer *rx_buffer;
+		union igc_adv_rx_desc *rx_desc;
 		unsigned int size, truesize;
-		struct igc_xdp_buff ctx;
-		ktime_t timestamp = 0;
 		int pkt_offset = 0;
 		void *pktbuf;
 
@@ -2612,9 +2619,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
 
 		if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
-			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
-							pktbuf);
-			ctx.rx_ts = timestamp;
+			ctx.rx_ts = pktbuf;
 			pkt_offset = IGC_TS_HDR_LEN;
 			size -= IGC_TS_HDR_LEN;
 		}
@@ -2651,8 +2656,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		else if (ring_uses_build_skb(rx_ring))
 			skb = igc_build_skb(rx_ring, rx_buffer, &ctx.xdp);
 		else
-			skb = igc_construct_skb(rx_ring, rx_buffer, &ctx.xdp,
-						timestamp);
+			skb = igc_construct_skb(rx_ring, rx_buffer, &ctx);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
@@ -2801,9 +2805,7 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
 		ctx->rx_desc = desc;
 
 		if (igc_test_staterr(desc, IGC_RXDADV_STAT_TSIP)) {
-			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
-							bi->xdp->data);
-			ctx->rx_ts = timestamp;
+			ctx->rx_ts = bi->xdp->data;
 
 			bi->xdp->data += IGC_TS_HDR_LEN;
 
@@ -6560,6 +6562,24 @@ int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
 	return 0;
 }
 
+static ktime_t igc_get_tstamp(struct net_device *dev,
+			      const struct skb_shared_hwtstamps *hwtstamps,
+			      bool cycles)
+{
+	struct igc_adapter *adapter = netdev_priv(dev);
+	struct igc_inline_rx_tstamps *tstamp;
+	ktime_t timestamp;
+
+	tstamp = hwtstamps->netdev_data;
+
+	if (cycles)
+		timestamp = igc_ptp_rx_pktstamp(adapter, tstamp->timer1);
+	else
+		timestamp = igc_ptp_rx_pktstamp(adapter, tstamp->timer0);
+
+	return timestamp;
+}
+
 static const struct net_device_ops igc_netdev_ops = {
 	.ndo_open		= igc_open,
 	.ndo_stop		= igc_close,
@@ -6577,6 +6597,7 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_bpf		= igc_bpf,
 	.ndo_xdp_xmit		= igc_xdp_xmit,
 	.ndo_xsk_wakeup		= igc_xsk_wakeup,
+	.ndo_get_tstamp		= igc_get_tstamp,
 };
 
 /* PCIe configuration access */
@@ -6680,9 +6701,11 @@ static int igc_xdp_rx_hash(const struct xdp_md *_ctx, u32 *hash,
 static int igc_xdp_rx_timestamp(const struct xdp_md *_ctx, u64 *timestamp)
 {
 	const struct igc_xdp_buff *ctx = (void *)_ctx;
+	struct igc_adapter *adapter = netdev_priv(ctx->xdp.rxq->dev);
+	struct igc_inline_rx_tstamps *tstamp = ctx->rx_ts;
 
 	if (igc_test_staterr(ctx->rx_desc, IGC_RXDADV_STAT_TSIP)) {
-		*timestamp = ctx->rx_ts;
+		*timestamp = igc_ptp_rx_pktstamp(adapter, tstamp->timer0);
 
 		return 0;
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 928f38792203..885faaa7b9de 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -459,12 +459,10 @@ static int igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
 /**
  * igc_ptp_rx_pktstamp - Retrieve timestamp from Rx packet buffer
  * @adapter: Pointer to adapter the packet buffer belongs to
- * @buf: Pointer to packet buffer
+ * @buf: Pointer to start of timestamp in HW format (2 32-bit words)
  *
- * This function retrieves the timestamp saved in the beginning of packet
- * buffer. While two timestamps are available, one in timer0 reference and the
- * other in timer1 reference, this function considers only the timestamp in
- * timer0 reference.
+ * This function retrieves and converts the timestamp stored at @buf
+ * to ktime_t, adjusting for hardware latencies.
  *
  * Returns timestamp value.
  */
@@ -474,17 +472,8 @@ ktime_t igc_ptp_rx_pktstamp(struct igc_adapter *adapter, __le32 *buf)
 	u32 secs, nsecs;
 	int adjust;
 
-	/* Timestamps are saved in little endian at the beginning of the packet
-	 * buffer following the layout:
-	 *
-	 * DWORD: | 0              | 1              | 2              | 3              |
-	 * Field: | Timer1 SYSTIML | Timer1 SYSTIMH | Timer0 SYSTIML | Timer0 SYSTIMH |
-	 *
-	 * SYSTIML holds the nanoseconds part while SYSTIMH holds the seconds
-	 * part of the timestamp.
-	 */
-	nsecs = le32_to_cpu(buf[2]);
-	secs = le32_to_cpu(buf[3]);
+	nsecs = le32_to_cpu(buf[0]);
+	secs = le32_to_cpu(buf[1]);
 
 	timestamp = ktime_set(secs, nsecs);
 
@@ -542,10 +531,11 @@ static void igc_ptp_enable_rx_timestamp(struct igc_adapter *adapter)
 
 	for (i = 0; i < adapter->num_rx_queues; i++) {
 		val = rd32(IGC_SRRCTL(i));
-		/* FIXME: For now, only support retrieving RX timestamps from
-		 * timer 0.
+		/* Enable retrieving timestamps from timer 0, the
+		 * "adjustable clock" and timer 1 the "free running
+		 * clock".
 		 */
-		val |= IGC_SRRCTL_TIMER1SEL(0) | IGC_SRRCTL_TIMER0SEL(0) |
+		val |= IGC_SRRCTL_TIMER1SEL(1) | IGC_SRRCTL_TIMER0SEL(0) |
 		       IGC_SRRCTL_TIMESTAMP;
 		wr32(IGC_SRRCTL(i), val);
 	}
@@ -1035,6 +1025,26 @@ static int igc_ptp_getcrosststamp(struct ptp_clock_info *ptp,
 					     adapter, &adapter->snapshot, cts);
 }
 
+static int igc_ptp_getcyclesx64(struct ptp_clock_info *ptp,
+				struct timespec64 *ts,
+				struct ptp_system_timestamp *sts)
+{
+	struct igc_adapter *igc = container_of(ptp, struct igc_adapter, ptp_caps);
+	struct igc_hw *hw = &igc->hw;
+	unsigned long flags;
+
+	spin_lock_irqsave(&igc->free_timer_lock, flags);
+
+	ptp_read_system_prets(sts);
+	ts->tv_nsec = rd32(IGC_SYSTIML_1);
+	ts->tv_sec = rd32(IGC_SYSTIMH_1);
+	ptp_read_system_postts(sts);
+
+	spin_unlock_irqrestore(&igc->free_timer_lock, flags);
+
+	return 0;
+}
+
 /**
  * igc_ptp_init - Initialize PTP functionality
  * @adapter: Board private structure
@@ -1088,6 +1098,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
 		adapter->ptp_caps.adjfine = igc_ptp_adjfine_i225;
 		adapter->ptp_caps.adjtime = igc_ptp_adjtime_i225;
 		adapter->ptp_caps.gettimex64 = igc_ptp_gettimex64_i225;
+		adapter->ptp_caps.getcyclesx64 = igc_ptp_getcyclesx64;
 		adapter->ptp_caps.settime64 = igc_ptp_settime_i225;
 		adapter->ptp_caps.enable = igc_ptp_feature_enable_i225;
 		adapter->ptp_caps.pps = 1;
@@ -1108,6 +1119,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
 	}
 
 	spin_lock_init(&adapter->ptp_tx_lock);
+	spin_lock_init(&adapter->free_timer_lock);
 	spin_lock_init(&adapter->tmreg_lock);
 
 	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 20e17f5fbce3..d38c87d7e5e8 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -243,6 +243,11 @@
 #define IGC_SYSTIMR	0x0B6F8  /* System time register Residue */
 #define IGC_TIMINCA	0x0B608  /* Increment attributes register - RW */
 
+#define IGC_SYSTIML_1	0x0B688  /* System time register Low - RO (timer 1) */
+#define IGC_SYSTIMH_1	0x0B68C  /* System time register High - RO (timer 1) */
+#define IGC_SYSTIMR_1	0x0B684  /* System time register Residue (timer 1) */
+#define IGC_TIMINCA_1	0x0B690  /* Increment attributes register - RW (timer 1) */
+
 /* TX Timestamp Low */
 #define IGC_TXSTMPL_0		0x0B618
 #define IGC_TXSTMPL_1		0x0B698

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

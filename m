Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B193A888809
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 03:17:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFCAB40B26;
	Mon, 25 Mar 2024 02:17:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 63MmGNb00NPh; Mon, 25 Mar 2024 02:17:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 437AF40B28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711333021;
	bh=qH5hhHg2o0ug2X/QL14qNX+4lg1DmV/qrnqyp8/Ips0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QVvAzTxuunK2niiUZgytXf/Oao8BSwC2FkQySejVFIbk1+7OPlGWpqV2z+Hx5ceUl
	 Ia5R5estr6VjeG1p2/IWS95+bI2PXuq1rdL3OVAS9v+tZ3JXUjS+zKoOqo5WQIDNnN
	 33dNufYGudZjakhiASnLyaiWaG3sR01I99khelbTFDKD7ewrKV8XeqDqsSaNUq7VqS
	 8ZddICcDN0xr4kBEvWQ1e8mtS95aK54bXqv+hFu6jPojMTKBxeBoa29ykUkOleyJnB
	 qUFA6Mpgj3+kiqd9o12UkG4dWZjks8qnZmMIP+rKF+o/5fbOo0vCdHI3KwuDMOKBYy
	 b6jOyQ0o8xq9w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 437AF40B28;
	Mon, 25 Mar 2024 02:17:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B48A81BF47F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 02:16:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B6F381CA3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 02:16:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ebXYQGUF5MDz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 02:16:56 +0000 (UTC)
X-Greylist: delayed 429 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 25 Mar 2024 02:16:55 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8750C81BC5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8750C81BC5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8750C81BC5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 02:16:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6247923"
X-IronPort-AV: E=Sophos;i="6.07,152,1708416000"; 
   d="scan'208";a="6247923"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2024 19:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,152,1708416000"; d="scan'208";a="15874257"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by orviesa007.jf.intel.com with ESMTP; 24 Mar 2024 19:09:39 -0700
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@google.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Mon, 25 Mar 2024 10:09:28 +0800
Message-Id: <20240325020928.1987947-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711333017; x=1742869017;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uLQr/2k4I73u1rkMS14DmF1wxzXBQBl9nMCh4ooF0Os=;
 b=UwHRQ0TS/cJc6va8LhlmtLh/QvYLcsIdZ1SIWBAeyQ2WZU6ZIztzPtVT
 SJSHdurPvCfn0zIN7CeUQayVR9tqbOY6xBBiU1S2VCTDmxp118Qa8YBNQ
 TC7BQ7+bgB/+sFmkeH/w9HEwN1m6vQgIB7QKEX/d1FQ7d6pnUZjFjIm11
 EJ3udQbvsRKyYrF3NWSTG0ayiRiGOHG0Ok1FPBn9Fe7zTVJJkiV+snIgf
 L58gmzpuZw9wAMCw1kp/XEGHCChUsvOFyY4a4AnIHmKNdP9GtC81cO5XN
 Qaszu/VkLOky+mYd1EVQZTvs68fzn16DtTL3vGclB1uuaH0aDwW8NJ3Ri
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UwHRQ0TS
Subject: [Intel-wired-lan] [PATCH iwl-next,
 v4 1/1] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
 packet
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, xdp-hints@xdp-project.net,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds support to per-packet Tx hardware timestamp request to
AF_XDP zero-copy packet via XDP Tx metadata framework. Please note that
user needs to enable Tx HW timestamp capability via igc_ioctl() with
SIOCSHWTSTAMP cmd before sending xsk Tx hardware timestamp request.

Same as implementation in RX timestamp XDP hints kfunc metadata, Timer 0
(adjustable clock) is used in xsk Tx hardware timestamp. i225/i226 have
four sets of timestamping registers. *skb and *xsk_tx_buffer pointers
are used to indicate whether the timestamping register is already occupied.

Furthermore, a boolean variable named xsk_pending_ts is used to hold the
transmit completion until the tx hardware timestamp is ready. This is
because, for i225/i226, the timestamp notification event comes some time
after the transmit completion event. The driver will retrigger hardware irq
to clean the packet after retrieve the tx hardware timestamp.

Besides, xsk_meta is added into struct igc_tx_timestamp_request as a hook
to the metadata location of the transmit packet. When the Tx timestamp
interrupt is fired, the interrupt handler will copy the value of Tx hwts
into metadata location via xsk_tx_metadata_complete().

This patch is tested with tools/testing/selftests/bpf/xdp_hw_metadata
on Intel ADL-S platform. Below are the test steps and results.

Test Step 1: Run xdp_hw_metadata app
 ./xdp_hw_metadata <iface> > /dev/shm/result.log

Test Step 2: Enable Tx hardware timestamp
 hwstamp_ctl -i <iface> -t 1 -r 1

Test Step 3: Run ptp4l and phc2sys for time synchronization

Test Step 4: Generate UDP packets with 1ms interval for 10s
 trafgen --dev <iface> '{eth(da=<addr>), udp(dp=9091)}' -t 1ms -n 10000

Test Step 5: Rerun Step 1-3 with 10s iperf3 as background traffic

Test Step 6: Rerun Step 1-4 with 10s iperf3 as background traffic

Based on iperf3 results below, the impact of holding tx completion to
throughput is not observable.

Result of last UDP packet (no. 10000) in Step 4:
poll: 1 (0) skip=99 fail=0 redir=10000
xsk_ring_cons__peek: 1
0x5640a37972d0: rx_desc[9999]->addr=f2110 addr=f2110 comp_addr=f2110 EoP
rx_hash: 0x2049BE1D with RSS type:0x1
HW RX-time:   1679819246792971268 (sec:1679819246.7930) delta to User RX-time sec:0.0000 (14.990 usec)
XDP RX-time:   1679819246792981987 (sec:1679819246.7930) delta to User RX-time sec:0.0000 (4.271 usec)
No rx_vlan_tci or rx_vlan_proto, err=-95
0x5640a37972d0: ping-pong with csum=ab19 (want 315b) csum_start=34 csum_offset=6
0x5640a37972d0: complete tx idx=9999 addr=f010
HW TX-complete-time:   1679819246793036971 (sec:1679819246.7930) delta to User TX-complete-time sec:0.0001 (77.656 usec)
XDP RX-time:   1679819246792981987 (sec:1679819246.7930) delta to User TX-complete-time sec:0.0001 (132.640 usec)
HW RX-time:   1679819246792971268 (sec:1679819246.7930) delta to HW TX-complete-time sec:0.0001 (65.703 usec)
0x5640a37972d0: complete rx idx=10127 addr=f2110

Result of iperf3 without tx hwts request in step 5:
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  2.74 GBytes  2.36 Gbits/sec    0             sender
[  5]   0.00-10.05  sec  2.74 GBytes  2.34 Gbits/sec                  receiver

Result of iperf3 running parallel with trafgen command in step 6:
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  2.74 GBytes  2.36 Gbits/sec    0             sender
[  5]   0.00-10.04  sec  2.74 GBytes  2.34 Gbits/sec                  receiver

Co-developed-by: Lai Peter Jun Ann <jun.ann.lai@intel.com>
Signed-off-by: Lai Peter Jun Ann <jun.ann.lai@intel.com>
Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
Acked-by: John Fastabend <john.fastabend@gmail.com>
---
V1: https://patchwork.kernel.org/project/netdevbpf/patch/20231215162158.951925-1-yoong.siang.song@intel.com/
V2: https://patchwork.kernel.org/project/netdevbpf/cover/20240301162348.898619-1-yoong.siang.song@intel.com/
V3: https://patchwork.kernel.org/project/netdevbpf/cover/20240303083225.1184165-1-yoong.siang.song@intel.com/

changelog:
V1 -> V2
- In struct igc_tx_timestamp_request, keep a pointer to igc_tx_buffer,
  instead of pointing xsk_pending_ts (Vinicius).
- In struct igc_tx_timestamp_request, introduce buffer_type to indicate
  whether skb or igc_tx_buffer pointer should be use (Vinicius).
- In struct igc_metadata_request, remove igc_adapter pointer (Vinicius).
- When request tx hwts, copy the value of cmd_type, instead of using
  pointer (Vinicius).
- For boolean variable, use true and false, instead of 1 and 0 (Vinicius).
- In igc_xsk_request_timestamp(), make an early return if none of the 4 ts
  registers is available (Vinicius).
- Create helper functions to clear tx buffer and skb for tstamp (John).
- Perform throughput test with mix traffic (Vinicius & John).
V2 -> V3
- Improve tstamp reg searching loop for better readability (John).
- In igc_ptp_free_tx_buffer(), add comment to inform user that
  tstamp->xsk_tx_buffer and tstamp->skb are in union (John).
V3 -> V4
- Add protection with xp_tx_metadata_enabled (Kurt & Maciej).
---
---
 drivers/net/ethernet/intel/igc/igc.h      |  71 ++++++++------
 drivers/net/ethernet/intel/igc/igc_main.c | 113 ++++++++++++++++++++--
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  51 ++++++++--
 3 files changed, 195 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 90316dc58630..e71cd7d7955d 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -72,13 +72,46 @@ struct igc_rx_packet_stats {
 	u64 other_packets;
 };
 
+enum igc_tx_buffer_type {
+	IGC_TX_BUFFER_TYPE_SKB,
+	IGC_TX_BUFFER_TYPE_XDP,
+	IGC_TX_BUFFER_TYPE_XSK,
+};
+
+/* wrapper around a pointer to a socket buffer,
+ * so a DMA handle can be stored along with the buffer
+ */
+struct igc_tx_buffer {
+	union igc_adv_tx_desc *next_to_watch;
+	unsigned long time_stamp;
+	enum igc_tx_buffer_type type;
+	union {
+		struct sk_buff *skb;
+		struct xdp_frame *xdpf;
+	};
+	unsigned int bytecount;
+	u16 gso_segs;
+	__be16 protocol;
+
+	DEFINE_DMA_UNMAP_ADDR(dma);
+	DEFINE_DMA_UNMAP_LEN(len);
+	u32 tx_flags;
+	bool xsk_pending_ts;
+};
+
 struct igc_tx_timestamp_request {
-	struct sk_buff *skb;   /* reference to the packet being timestamped */
+	union {                /* reference to the packet being timestamped */
+		struct sk_buff *skb;
+		struct igc_tx_buffer *xsk_tx_buffer;
+	};
+	enum igc_tx_buffer_type buffer_type;
 	unsigned long start;   /* when the tstamp request started (jiffies) */
 	u32 mask;              /* _TSYNCTXCTL_TXTT_{X} bit for this request */
 	u32 regl;              /* which TXSTMPL_{X} register should be used */
 	u32 regh;              /* which TXSTMPH_{X} register should be used */
 	u32 flags;             /* flags that should be added to the tx_buffer */
+	u8 xsk_queue_index;    /* Tx queue which requesting timestamp */
+	struct xsk_tx_metadata_compl xsk_meta;	/* ref to xsk Tx metadata */
 };
 
 struct igc_inline_rx_tstamps {
@@ -322,6 +355,9 @@ void igc_disable_tx_ring(struct igc_ring *ring);
 void igc_enable_tx_ring(struct igc_ring *ring);
 int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
 
+/* AF_XDP TX metadata operations */
+extern const struct xsk_tx_metadata_ops igc_xsk_tx_metadata_ops;
+
 /* igc_dump declarations */
 void igc_rings_dump(struct igc_adapter *adapter);
 void igc_regs_dump(struct igc_adapter *adapter);
@@ -507,32 +543,6 @@ enum igc_boards {
 #define TXD_USE_COUNT(S)	DIV_ROUND_UP((S), IGC_MAX_DATA_PER_TXD)
 #define DESC_NEEDED	(MAX_SKB_FRAGS + 4)
 
-enum igc_tx_buffer_type {
-	IGC_TX_BUFFER_TYPE_SKB,
-	IGC_TX_BUFFER_TYPE_XDP,
-	IGC_TX_BUFFER_TYPE_XSK,
-};
-
-/* wrapper around a pointer to a socket buffer,
- * so a DMA handle can be stored along with the buffer
- */
-struct igc_tx_buffer {
-	union igc_adv_tx_desc *next_to_watch;
-	unsigned long time_stamp;
-	enum igc_tx_buffer_type type;
-	union {
-		struct sk_buff *skb;
-		struct xdp_frame *xdpf;
-	};
-	unsigned int bytecount;
-	u16 gso_segs;
-	__be16 protocol;
-
-	DEFINE_DMA_UNMAP_ADDR(dma);
-	DEFINE_DMA_UNMAP_LEN(len);
-	u32 tx_flags;
-};
-
 struct igc_rx_buffer {
 	union {
 		struct {
@@ -556,6 +566,13 @@ struct igc_xdp_buff {
 	struct igc_inline_rx_tstamps *rx_ts; /* data indication bit IGC_RXDADV_STAT_TSIP */
 };
 
+struct igc_metadata_request {
+	struct igc_tx_buffer *tx_buffer;
+	struct xsk_tx_metadata *meta;
+	struct igc_ring *tx_ring;
+	u32 cmd_type;
+};
+
 struct igc_q_vector {
 	struct igc_adapter *adapter;    /* backlink */
 	void __iomem *itr_register;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 2e1cfbd82f4f..56333b2cdb71 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2878,6 +2878,89 @@ static void igc_update_tx_stats(struct igc_q_vector *q_vector,
 	q_vector->tx.total_packets += packets;
 }
 
+static void igc_xsk_request_timestamp(void *_priv)
+{
+	struct igc_metadata_request *meta_req = _priv;
+	struct igc_ring *tx_ring = meta_req->tx_ring;
+	struct igc_tx_timestamp_request *tstamp;
+	u32 tx_flags = IGC_TX_FLAGS_TSTAMP;
+	struct igc_adapter *adapter;
+	unsigned long lock_flags;
+	bool found = false;
+	int i;
+
+	if (test_bit(IGC_RING_FLAG_TX_HWTSTAMP, &tx_ring->flags)) {
+		adapter = netdev_priv(tx_ring->netdev);
+
+		spin_lock_irqsave(&adapter->ptp_tx_lock, lock_flags);
+
+		/* Search for available tstamp regs */
+		for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
+			tstamp = &adapter->tx_tstamp[i];
+
+			/* tstamp->skb and tstamp->xsk_tx_buffer are in union.
+			 * When tstamp->skb is equal to NULL,
+			 * tstamp->xsk_tx_buffer is equal to NULL as well.
+			 * This condition means that the particular tstamp reg
+			 * is not occupied by other packet.
+			 */
+			if (!tstamp->skb) {
+				found = true;
+				break;
+			}
+		}
+
+		/* Return if no available tstamp regs */
+		if (!found) {
+			adapter->tx_hwtstamp_skipped++;
+			spin_unlock_irqrestore(&adapter->ptp_tx_lock,
+					       lock_flags);
+			return;
+		}
+
+		tstamp->start = jiffies;
+		tstamp->xsk_queue_index = tx_ring->queue_index;
+		tstamp->xsk_tx_buffer = meta_req->tx_buffer;
+		tstamp->buffer_type = IGC_TX_BUFFER_TYPE_XSK;
+
+		/* Hold the transmit completion until timestamp is ready */
+		meta_req->tx_buffer->xsk_pending_ts = true;
+
+		/* Keep the pointer to tx_timestamp, which is located in XDP
+		 * metadata area. It is the location to store the value of
+		 * tx hardware timestamp.
+		 */
+		xsk_tx_metadata_to_compl(meta_req->meta, &tstamp->xsk_meta);
+
+		/* Set timestamp bit based on the _TSTAMP(_X) bit. */
+		tx_flags |= tstamp->flags;
+		meta_req->cmd_type |= IGC_SET_FLAG(tx_flags,
+						   IGC_TX_FLAGS_TSTAMP,
+						   (IGC_ADVTXD_MAC_TSTAMP));
+		meta_req->cmd_type |= IGC_SET_FLAG(tx_flags,
+						   IGC_TX_FLAGS_TSTAMP_1,
+						   (IGC_ADVTXD_TSTAMP_REG_1));
+		meta_req->cmd_type |= IGC_SET_FLAG(tx_flags,
+						   IGC_TX_FLAGS_TSTAMP_2,
+						   (IGC_ADVTXD_TSTAMP_REG_2));
+		meta_req->cmd_type |= IGC_SET_FLAG(tx_flags,
+						   IGC_TX_FLAGS_TSTAMP_3,
+						   (IGC_ADVTXD_TSTAMP_REG_3));
+
+		spin_unlock_irqrestore(&adapter->ptp_tx_lock, lock_flags);
+	}
+}
+
+static u64 igc_xsk_fill_timestamp(void *_priv)
+{
+	return *(u64 *)_priv;
+}
+
+const struct xsk_tx_metadata_ops igc_xsk_tx_metadata_ops = {
+	.tmo_request_timestamp		= igc_xsk_request_timestamp,
+	.tmo_fill_timestamp		= igc_xsk_fill_timestamp,
+};
+
 static void igc_xdp_xmit_zc(struct igc_ring *ring)
 {
 	struct xsk_buff_pool *pool = ring->xsk_pool;
@@ -2899,24 +2982,34 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
 	budget = igc_desc_unused(ring);
 
 	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
-		u32 cmd_type, olinfo_status;
+		struct igc_metadata_request meta_req;
+		struct xsk_tx_metadata *meta = NULL;
 		struct igc_tx_buffer *bi;
+		u32 olinfo_status;
 		dma_addr_t dma;
 
-		cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
-			   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
-			   xdp_desc.len;
+		meta_req.cmd_type = IGC_ADVTXD_DTYP_DATA |
+				    IGC_ADVTXD_DCMD_DEXT |
+				    IGC_ADVTXD_DCMD_IFCS |
+				    IGC_TXD_DCMD | xdp_desc.len;
 		olinfo_status = xdp_desc.len << IGC_ADVTXD_PAYLEN_SHIFT;
 
 		dma = xsk_buff_raw_get_dma(pool, xdp_desc.addr);
+		meta = xsk_buff_get_metadata(pool, xdp_desc.addr);
 		xsk_buff_raw_dma_sync_for_device(pool, dma, xdp_desc.len);
+		bi = &ring->tx_buffer_info[ntu];
+
+		meta_req.tx_ring = ring;
+		meta_req.tx_buffer = bi;
+		meta_req.meta = meta;
+		xsk_tx_metadata_request(meta, &igc_xsk_tx_metadata_ops,
+					&meta_req);
 
 		tx_desc = IGC_TX_DESC(ring, ntu);
-		tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+		tx_desc->read.cmd_type_len = cpu_to_le32(meta_req.cmd_type);
 		tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
 		tx_desc->read.buffer_addr = cpu_to_le64(dma);
 
-		bi = &ring->tx_buffer_info[ntu];
 		bi->type = IGC_TX_BUFFER_TYPE_XSK;
 		bi->protocol = 0;
 		bi->bytecount = xdp_desc.len;
@@ -2979,6 +3072,13 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 		if (!(eop_desc->wb.status & cpu_to_le32(IGC_TXD_STAT_DD)))
 			break;
 
+		/* Hold the completions while there's a pending tx hardware
+		 * timestamp request from XDP Tx metadata.
+		 */
+		if (tx_buffer->type == IGC_TX_BUFFER_TYPE_XSK &&
+		    tx_buffer->xsk_pending_ts)
+			break;
+
 		/* clear next_to_watch to prevent false hangs */
 		tx_buffer->next_to_watch = NULL;
 
@@ -6807,6 +6907,7 @@ static int igc_probe(struct pci_dev *pdev,
 
 	netdev->netdev_ops = &igc_netdev_ops;
 	netdev->xdp_metadata_ops = &igc_xdp_metadata_ops;
+	netdev->xsk_tx_metadata_ops = &igc_xsk_tx_metadata_ops;
 	igc_ethtool_set_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 885faaa7b9de..1bb026232efc 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -11,6 +11,7 @@
 #include <linux/ktime.h>
 #include <linux/delay.h>
 #include <linux/iopoll.h>
+#include <net/xdp_sock_drv.h>
 
 #define INCVALUE_MASK		0x7fffffff
 #define ISGN			0x80000000
@@ -545,6 +546,30 @@ static void igc_ptp_enable_rx_timestamp(struct igc_adapter *adapter)
 	wr32(IGC_TSYNCRXCTL, val);
 }
 
+static void igc_ptp_free_tx_buffer(struct igc_adapter *adapter,
+				   struct igc_tx_timestamp_request *tstamp)
+{
+	if (tstamp->buffer_type == IGC_TX_BUFFER_TYPE_XSK) {
+		/* Release the transmit completion */
+		tstamp->xsk_tx_buffer->xsk_pending_ts = false;
+
+		/* Note: tstamp->skb and tstamp->xsk_tx_buffer are in union.
+		 * By setting tstamp->xsk_tx_buffer to NULL, tstamp->skb will
+		 * become NULL as well.
+		 */
+		tstamp->xsk_tx_buffer = NULL;
+		tstamp->buffer_type = 0;
+
+		/* Trigger txrx interrupt for transmit completion */
+		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
+
+		return;
+	}
+
+	dev_kfree_skb_any(tstamp->skb);
+	tstamp->skb = NULL;
+}
+
 static void igc_ptp_clear_tx_tstamp(struct igc_adapter *adapter)
 {
 	unsigned long flags;
@@ -555,8 +580,8 @@ static void igc_ptp_clear_tx_tstamp(struct igc_adapter *adapter)
 	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
 		struct igc_tx_timestamp_request *tstamp = &adapter->tx_tstamp[i];
 
-		dev_kfree_skb_any(tstamp->skb);
-		tstamp->skb = NULL;
+		if (tstamp->skb)
+			igc_ptp_free_tx_buffer(adapter, tstamp);
 	}
 
 	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
@@ -657,8 +682,9 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 static void igc_ptp_tx_timeout(struct igc_adapter *adapter,
 			       struct igc_tx_timestamp_request *tstamp)
 {
-	dev_kfree_skb_any(tstamp->skb);
-	tstamp->skb = NULL;
+	if (tstamp->skb)
+		igc_ptp_free_tx_buffer(adapter, tstamp);
+
 	adapter->tx_hwtstamp_timeouts++;
 
 	netdev_warn(adapter->netdev, "Tx timestamp timeout\n");
@@ -729,10 +755,21 @@ static void igc_ptp_tx_reg_to_stamp(struct igc_adapter *adapter,
 	shhwtstamps.hwtstamp =
 		ktime_add_ns(shhwtstamps.hwtstamp, adjust);
 
-	tstamp->skb = NULL;
+	/* Copy the tx hardware timestamp into xdp metadata or skb */
+	if (tstamp->buffer_type == IGC_TX_BUFFER_TYPE_XSK) {
+		struct xsk_buff_pool *xsk_pool;
+
+		xsk_pool = adapter->tx_ring[tstamp->xsk_queue_index]->xsk_pool;
+		if (xsk_pool && xp_tx_metadata_enabled(xsk_pool)) {
+			xsk_tx_metadata_complete(&tstamp->xsk_meta,
+						 &igc_xsk_tx_metadata_ops,
+						 &shhwtstamps.hwtstamp);
+		}
+	} else {
+		skb_tstamp_tx(skb, &shhwtstamps);
+	}
 
-	skb_tstamp_tx(skb, &shhwtstamps);
-	dev_kfree_skb_any(skb);
+	igc_ptp_free_tx_buffer(adapter, tstamp);
 }
 
 /**
-- 
2.34.1


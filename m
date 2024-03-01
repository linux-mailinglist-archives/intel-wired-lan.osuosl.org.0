Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 006A886E563
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 17:24:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FB6F61774;
	Fri,  1 Mar 2024 16:24:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 77dAZPn5UdT4; Fri,  1 Mar 2024 16:24:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45CDF61772
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709310293;
	bh=JQK6TbKXJHFx7VJFo28VDuqz3zoOP0O4MzwSBlJdOHc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4Sa8zvtgMTkKoXtI1AsnztjZ5fumZtNIV0AukbKNxtV8Huvvmy+3UK7LPoH3N514D
	 gVjA+otMgwBjOYFszpapDroIYaE0Ek5FS01Cuo8l9Bcr9u+dVsM0GMr0hGZYt16yTr
	 ImaR27BB0evlha5WfIYgCgxBYauORbN+VolShhL1O4pPXluU2In07x0v2Zut52lDZS
	 2P7nGMvcZUIxzHzpx0Y8Vlt5uKFcKAUnPe7y0MJD+4+vVvotNPoRShl30ibLbq/sro
	 zF7y+MANbMAJtiNK277i64+T7xG4ufXnhuSeia+w1uxRQgPN8bHKnYdtrG59OcepAV
	 yXH5F9hyBa0jg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45CDF61772;
	Fri,  1 Mar 2024 16:24:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 059EE1BF41A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 16:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F416B61761
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 16:24:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0258bGS0Ykpe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 16:24:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C7C0961754
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7C0961754
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7C0961754
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 16:24:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="7673302"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="7673302"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 08:24:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="8139636"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by fmviesa007.fm.intel.com with ESMTP; 01 Mar 2024 08:24:42 -0800
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
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>, Martin KaFai Lau <martin.lau@linux.dev>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>
Date: Sat,  2 Mar 2024 00:23:48 +0800
Message-Id: <20240301162348.898619-3-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240301162348.898619-1-yoong.siang.song@intel.com>
References: <20240301162348.898619-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709310290; x=1740846290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pLMcvwdE6QTN4FBcwT/k1hKmQmbaV9Ckb1uPmrfiRLo=;
 b=kSmjOGjMVsJSDTNK1wdYkKxN6fZZdU6ipPPDzhJ80YT3R+j+SLb7n/fQ
 Sb9BnetTfzZ286omfUrYVibNTYHZZVhB1GuTtE+f78oqovAfakAXAip+0
 8FwwzlivxOFXIdsKOEbia4ba3HmuCuBXeU57xK6QsRRP3Gs877XUR8rT7
 Z8FRq8yr2TrN381OMMndCapWQZ7DHm/Em9XOnKtZiLPYuyDyprhKpXXDY
 WahjTNuw4vXq6WCa4gPsY1zYtS5NNsK9mSvKU2QzORPKOwQk8MJF+hMYg
 dSW6y6saW9V7+hvQ2TtCUY1czjBH1Y8JIoaNs8he2xdpihHuODFCp7HGs
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kSmjOGjM
Subject: [Intel-wired-lan] [PATCH iwl-next,
 v2 2/2] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
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
Cc: xdp-hints@xdp-project.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org, bpf@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds support to per-packet Tx hardware timestamp request to
AF_XDP zero-copy packet via XDP Tx metadata framework. Please note that
user needs to enable Tx HW timestamp capability via igc_ioctl() with
SIOCSHWTSTAMP cmd before sending xsk Tx hardware timestamp request.

Same as implementation in RX timestamp XDP hints kfunc metadata, Timer 0
(adjustable clock) is used in xsk Tx hardware timestamp. i225/i226 have
four sets of timestamping registers. Both *skb and *xsk_tx_buffer pointers
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

Co-developed-by: Lai Peter Jun Ann <jun.ann.lai@intel.com>
Signed-off-by: Lai Peter Jun Ann <jun.ann.lai@intel.com>
Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  71 ++++++++------
 drivers/net/ethernet/intel/igc/igc_main.c | 108 ++++++++++++++++++++--
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  40 ++++++--
 3 files changed, 179 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index cfa6baccec55..22bb4f245240 100644
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
index 3af52d238f3b..d8c7a3b290a4 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2878,6 +2878,84 @@ static void igc_update_tx_stats(struct igc_q_vector *q_vector,
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
+			if (tstamp->skb)
+				continue;
+
+			found = true;
+			break;
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
@@ -2899,24 +2977,34 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
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
@@ -2979,6 +3067,13 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
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
 
@@ -6818,6 +6913,7 @@ static int igc_probe(struct pci_dev *pdev,
 
 	netdev->netdev_ops = &igc_netdev_ops;
 	netdev->xdp_metadata_ops = &igc_xdp_metadata_ops;
+	netdev->xsk_tx_metadata_ops = &igc_xsk_tx_metadata_ops;
 	igc_ethtool_set_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 885faaa7b9de..5edaf738fd19 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -11,6 +11,7 @@
 #include <linux/ktime.h>
 #include <linux/delay.h>
 #include <linux/iopoll.h>
+#include <net/xdp_sock.h>
 
 #define INCVALUE_MASK		0x7fffffff
 #define ISGN			0x80000000
@@ -545,6 +546,25 @@ static void igc_ptp_enable_rx_timestamp(struct igc_adapter *adapter)
 	wr32(IGC_TSYNCRXCTL, val);
 }
 
+static void igc_ptp_free_tx_buffer(struct igc_adapter *adapter,
+				   struct igc_tx_timestamp_request *tstamp)
+{
+	if (tstamp->buffer_type == IGC_TX_BUFFER_TYPE_XSK) {
+		/* Release the transmit completion */
+		tstamp->xsk_tx_buffer->xsk_pending_ts = false;
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
@@ -555,8 +575,8 @@ static void igc_ptp_clear_tx_tstamp(struct igc_adapter *adapter)
 	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
 		struct igc_tx_timestamp_request *tstamp = &adapter->tx_tstamp[i];
 
-		dev_kfree_skb_any(tstamp->skb);
-		tstamp->skb = NULL;
+		if (tstamp->skb)
+			igc_ptp_free_tx_buffer(adapter, tstamp);
 	}
 
 	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
@@ -657,8 +677,9 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
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
@@ -729,10 +750,15 @@ static void igc_ptp_tx_reg_to_stamp(struct igc_adapter *adapter,
 	shhwtstamps.hwtstamp =
 		ktime_add_ns(shhwtstamps.hwtstamp, adjust);
 
-	tstamp->skb = NULL;
+	/* Copy the tx hardware timestamp into xdp metadata or skb */
+	if (tstamp->buffer_type == IGC_TX_BUFFER_TYPE_XSK)
+		xsk_tx_metadata_complete(&tstamp->xsk_meta,
+					 &igc_xsk_tx_metadata_ops,
+					 &shhwtstamps.hwtstamp);
+	else
+		skb_tstamp_tx(skb, &shhwtstamps);
 
-	skb_tstamp_tx(skb, &shhwtstamps);
-	dev_kfree_skb_any(skb);
+	igc_ptp_free_tx_buffer(adapter, tstamp);
 }
 
 /**
-- 
2.34.1


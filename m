Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FA1814E25
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 18:13:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E5AF424FC;
	Fri, 15 Dec 2023 17:13:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E5AF424FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702660425;
	bh=oZz48PkHRpCU4/q/qF9ekQvQtdGaXnGz5+8EqZjssLw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RO5I6tTULG2BkzmsgGbL1NtLNS18xUMW2FgK6XKqThFmAZenIbmZRHHscVj373jgM
	 Eb37E92h9p0eZ+1cs9r2dZ+Zhe7iQUvsUAQaU0chYl9I6PPRAVG+vndT+7LNnTTNn5
	 cJEiDpyX753dmmsJdvGLXWylif8hOPJCKSZ29GhF+tCgjWbcEsjFFsuRLM+m4WVN4x
	 3mC6q/ozC0CtUzoGEZwUEguIZ4qumOkiqccrAGD1AcxKSFja7OX/aZSYgphxrhXNXM
	 9kMdKLKfsexnGemVt/QVM4Chcsnk3eij8TwVUZZAlEzbSOi2xysGru8ek2Fw30sYcA
	 bzL4FGTtTu7jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RdMp_4GloC0D; Fri, 15 Dec 2023 17:13:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A91F42231;
	Fri, 15 Dec 2023 17:13:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A91F42231
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A51B1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 16:29:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1121F6106D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 16:29:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1121F6106D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W2iVRTtC8dc4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 16:29:35 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 15 Dec 2023 16:29:34 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 991A860B3D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 991A860B3D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 16:29:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="2145900"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; 
   d="scan'208";a="2145900"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 08:22:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="774814912"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="774814912"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by orsmga002.jf.intel.com with ESMTP; 15 Dec 2023 08:22:17 -0800
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
 Florian Bezdeka <florian.bezdeka@siemens.com>
Date: Sat, 16 Dec 2023 00:21:58 +0800
Message-Id: <20231215162158.951925-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 15 Dec 2023 17:13:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702657775; x=1734193775;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tD4p1p3HMFVSksOH5sm0hApRVS7tHyLB56zApWwLofY=;
 b=nvVZv/GZGL92ZFq8zolbl2z061NDH39wlEN6zIhl1L9L1YIDHtNLP6LP
 VOKt2AQu+DoHAMFt9yWn85HWdGt4CoY5GFn0gKOElSLzPyv2kdzm6ZmON
 Gy6LwW5OyE5f6VDc1JsBDQ78xvC0TmSjmodPs62a39kdcQxTuV/jHCJQ7
 8xpGih7ArQ7F1rkfP+q4Kb8tWoYC8vdHHlCJtQbbKdWHWyfs/4SENflEY
 rCO2YzKAdGl8VG36dcoX17824mct2b2Jx2dwqx+vM0Dq8GjR2VYccHrjF
 gwABx+SnTOO+FwGJpatgAFXNHbIjLTHdi0vJGseyY6o6VWU/5MfKzmFb+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nvVZv/GZ
Subject: [Intel-wired-lan] [PATCH iwl-next,
 v1 1/1] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds support to per-packet Tx hardware timestamp request to
AF_XDP zero-copy packet via XDP Tx metadata framework. Please note that
user needs to enable Tx HW timestamp capability via igc_ioctl() with
SIOCSHWTSTAMP cmd before sending xsk Tx timestamp request.

Same as implementation in RX timestamp XDP hints kfunc metadata, Timer 0
(adjustable clock) is used in xsk Tx hardware timestamp. i225/i226 have
four sets of timestamping registers. A pointer named "xsk_pending_ts"
is introduced to indicate the timestamping register is already occupied.
Furthermore, the mentioned pointer also being used to hold the transmit
completion until the tx hardware timestamp is ready. This is because for
i225/i226, the timestamp notification comes some time after the transmit
completion event. The driver will retrigger hardware irq to clean the
packet after retrieve the tx hardware timestamp.

Besides, a pointer named "xsk_meta" is added into igc_tx_timestamp_request
structure as a hook to the metadata location of the transmit packet. When
a Tx timestamp interrupt happens, the interrupt handler will copy the
value of Tx timestamp into metadata via xsk_tx_metadata_complete().

This patch is tested with tools/testing/selftests/bpf/xdp_hw_metadata
on Intel ADL-S platform. Below are the test steps and results.

Command on DUT:
sudo ./xdp_hw_metadata <interface name>
sudo hwstamp_ctl -i <interface name> -t 1 -r 1
sudo ./testptp -d /dev/ptp0 -s

Command on Link Partner:
echo -n xdp | nc -u -q1 <destination IPv4 addr> 9091

Result:
xsk_ring_cons__peek: 1
0x555b112ae958: rx_desc[6]->addr=86110 addr=86110 comp_addr=86110 EoP
rx_hash: 0xBFDEC36E with RSS type:0x1
HW RX-time:   1677762429190040955 (sec:1677762429.1900) delta to User RX-time sec:0.0001 (100.124 usec)
XDP RX-time:   1677762429190123163 (sec:1677762429.1901) delta to User RX-time sec:0.0000 (17.916 usec)
0x555b112ae958: ping-pong with csum=404e (want c59e) csum_start=34 csum_offset=6
0x555b112ae958: complete tx idx=6 addr=6010
HW TX-complete-time:   1677762429190173323 (sec:1677762429.1902) delta to User TX-complete-time sec:0.0100 (10035.884 usec)
XDP RX-time:   1677762429190123163 (sec:1677762429.1901) delta to User TX-complete-time sec:0.0101 (10086.044 usec)
HW RX-time:   1677762429190040955 (sec:1677762429.1900) delta to HW TX-complete-time sec:0.0001 (132.368 usec)
0x555b112ae958: complete rx idx=134 addr=86110

Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 15 ++++
 drivers/net/ethernet/intel/igc/igc_main.c | 88 ++++++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 42 ++++++++---
 3 files changed, 134 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index ac7c861e83a0..c831dde01662 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -79,6 +79,9 @@ struct igc_tx_timestamp_request {
 	u32 regl;              /* which TXSTMPL_{X} register should be used */
 	u32 regh;              /* which TXSTMPH_{X} register should be used */
 	u32 flags;             /* flags that should be added to the tx_buffer */
+	u8 xsk_queue_index;    /* Tx queue which requesting timestamp */
+	bool *xsk_pending_ts;  /* ref to tx ring for waiting timestamp event */
+	struct xsk_tx_metadata_compl xsk_meta;	/* ref to xsk Tx metadata */
 };
 
 struct igc_inline_rx_tstamps {
@@ -319,6 +322,9 @@ void igc_disable_tx_ring(struct igc_ring *ring);
 void igc_enable_tx_ring(struct igc_ring *ring);
 int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
 
+/* AF_XDP TX metadata operations */
+extern const struct xsk_tx_metadata_ops igc_xsk_tx_metadata_ops;
+
 /* igc_dump declarations */
 void igc_rings_dump(struct igc_adapter *adapter);
 void igc_regs_dump(struct igc_adapter *adapter);
@@ -528,6 +534,7 @@ struct igc_tx_buffer {
 	DEFINE_DMA_UNMAP_ADDR(dma);
 	DEFINE_DMA_UNMAP_LEN(len);
 	u32 tx_flags;
+	bool xsk_pending_ts;
 };
 
 struct igc_rx_buffer {
@@ -553,6 +560,14 @@ struct igc_xdp_buff {
 	struct igc_inline_rx_tstamps *rx_ts; /* data indication bit IGC_RXDADV_STAT_TSIP */
 };
 
+struct igc_metadata_request {
+	struct xsk_tx_metadata *meta;
+	struct igc_adapter *adapter;
+	struct igc_ring *tx_ring;
+	bool *xsk_pending_ts;
+	u32 *cmd_type;
+};
+
 struct igc_q_vector {
 	struct igc_adapter *adapter;    /* backlink */
 	void __iomem *itr_register;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 61db1d3bfa0b..311c85f2d82d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1553,7 +1553,7 @@ static bool igc_request_tx_tstamp(struct igc_adapter *adapter, struct sk_buff *s
 	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
 		struct igc_tx_timestamp_request *tstamp = &adapter->tx_tstamp[i];
 
-		if (tstamp->skb)
+		if (tstamp->skb || tstamp->xsk_pending_ts)
 			continue;
 
 		tstamp->skb = skb_get(skb);
@@ -2878,6 +2878,71 @@ static void igc_update_tx_stats(struct igc_q_vector *q_vector,
 	q_vector->tx.total_packets += packets;
 }
 
+static void igc_xsk_request_timestamp(void *_priv)
+{
+	struct igc_metadata_request *meta_req = _priv;
+	struct igc_ring *tx_ring = meta_req->tx_ring;
+	struct igc_tx_timestamp_request *tstamp;
+	u32 *cmd_type = meta_req->cmd_type;
+	u32 tx_flags = IGC_TX_FLAGS_TSTAMP;
+	struct igc_adapter *adapter;
+	unsigned long lock_flags;
+	bool found = 0;
+	int i;
+
+	if (test_bit(IGC_RING_FLAG_TX_HWTSTAMP, &tx_ring->flags)) {
+		adapter = meta_req->adapter;
+
+		spin_lock_irqsave(&adapter->ptp_tx_lock, lock_flags);
+
+		for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
+			tstamp = &adapter->tx_tstamp[i];
+
+			if (tstamp->skb || tstamp->xsk_pending_ts)
+				continue;
+
+			found = 1;
+			break;
+		}
+
+		if (!found) {
+			adapter->tx_hwtstamp_skipped++;
+		} else {
+			tstamp->start = jiffies;
+			tstamp->xsk_queue_index = tx_ring->queue_index;
+
+			tstamp->xsk_pending_ts = meta_req->xsk_pending_ts;
+			*tstamp->xsk_pending_ts = true;
+
+			xsk_tx_metadata_to_compl(meta_req->meta,
+						 &tstamp->xsk_meta);
+
+			/* set timestamp bit based on the _TSTAMP(_X) bit. */
+			tx_flags |= tstamp->flags;
+			*cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP,
+						  (IGC_ADVTXD_MAC_TSTAMP));
+			*cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP_1,
+						  (IGC_ADVTXD_TSTAMP_REG_1));
+			*cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP_2,
+						  (IGC_ADVTXD_TSTAMP_REG_2));
+			*cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP_3,
+						  (IGC_ADVTXD_TSTAMP_REG_3));
+		}
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
@@ -2899,6 +2964,8 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
 	budget = igc_desc_unused(ring);
 
 	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
+		struct igc_metadata_request meta_req;
+		struct xsk_tx_metadata *meta = NULL;
 		u32 cmd_type, olinfo_status;
 		struct igc_tx_buffer *bi;
 		dma_addr_t dma;
@@ -2909,14 +2976,23 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
 		olinfo_status = xdp_desc.len << IGC_ADVTXD_PAYLEN_SHIFT;
 
 		dma = xsk_buff_raw_get_dma(pool, xdp_desc.addr);
+		meta = xsk_buff_get_metadata(pool, xdp_desc.addr);
 		xsk_buff_raw_dma_sync_for_device(pool, dma, xdp_desc.len);
+		bi = &ring->tx_buffer_info[ntu];
+
+		meta_req.adapter = netdev_priv(ring->netdev);
+		meta_req.tx_ring = ring;
+		meta_req.meta = meta;
+		meta_req.cmd_type = &cmd_type;
+		meta_req.xsk_pending_ts = &bi->xsk_pending_ts;
+		xsk_tx_metadata_request(meta, &igc_xsk_tx_metadata_ops,
+					&meta_req);
 
 		tx_desc = IGC_TX_DESC(ring, ntu);
 		tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
 		tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
 		tx_desc->read.buffer_addr = cpu_to_le64(dma);
 
-		bi = &ring->tx_buffer_info[ntu];
 		bi->type = IGC_TX_BUFFER_TYPE_XSK;
 		bi->protocol = 0;
 		bi->bytecount = xdp_desc.len;
@@ -2979,6 +3055,13 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
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
 
@@ -6819,6 +6902,7 @@ static int igc_probe(struct pci_dev *pdev,
 
 	netdev->netdev_ops = &igc_netdev_ops;
 	netdev->xdp_metadata_ops = &igc_xdp_metadata_ops;
+	netdev->xsk_tx_metadata_ops = &igc_xsk_tx_metadata_ops;
 	igc_ethtool_set_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 885faaa7b9de..b722bca40309 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -11,6 +11,7 @@
 #include <linux/ktime.h>
 #include <linux/delay.h>
 #include <linux/iopoll.h>
+#include <net/xdp_sock.h>
 
 #define INCVALUE_MASK		0x7fffffff
 #define ISGN			0x80000000
@@ -555,8 +556,15 @@ static void igc_ptp_clear_tx_tstamp(struct igc_adapter *adapter)
 	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
 		struct igc_tx_timestamp_request *tstamp = &adapter->tx_tstamp[i];
 
-		dev_kfree_skb_any(tstamp->skb);
-		tstamp->skb = NULL;
+		if (tstamp->skb) {
+			dev_kfree_skb_any(tstamp->skb);
+			tstamp->skb = NULL;
+		} else if (tstamp->xsk_pending_ts) {
+			*tstamp->xsk_pending_ts = false;
+			tstamp->xsk_pending_ts = NULL;
+			igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index,
+				       0);
+		}
 	}
 
 	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
@@ -657,8 +665,15 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 static void igc_ptp_tx_timeout(struct igc_adapter *adapter,
 			       struct igc_tx_timestamp_request *tstamp)
 {
-	dev_kfree_skb_any(tstamp->skb);
-	tstamp->skb = NULL;
+	if (tstamp->skb) {
+		dev_kfree_skb_any(tstamp->skb);
+		tstamp->skb = NULL;
+	} else if (tstamp->xsk_pending_ts) {
+		*tstamp->xsk_pending_ts = false;
+		tstamp->xsk_pending_ts = NULL;
+		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
+	}
+
 	adapter->tx_hwtstamp_timeouts++;
 
 	netdev_warn(adapter->netdev, "Tx timestamp timeout\n");
@@ -677,7 +692,7 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter)
 	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
 		tstamp = &adapter->tx_tstamp[i];
 
-		if (!tstamp->skb)
+		if (!tstamp->skb && !tstamp->xsk_pending_ts)
 			continue;
 
 		if (time_is_after_jiffies(tstamp->start + IGC_PTP_TX_TIMEOUT))
@@ -705,7 +720,7 @@ static void igc_ptp_tx_reg_to_stamp(struct igc_adapter *adapter,
 	int adjust = 0;
 
 	skb = tstamp->skb;
-	if (!skb)
+	if (!skb && !tstamp->xsk_pending_ts)
 		return;
 
 	if (igc_ptp_systim_to_hwtstamp(adapter, &shhwtstamps, regval))
@@ -729,10 +744,19 @@ static void igc_ptp_tx_reg_to_stamp(struct igc_adapter *adapter,
 	shhwtstamps.hwtstamp =
 		ktime_add_ns(shhwtstamps.hwtstamp, adjust);
 
-	tstamp->skb = NULL;
+	if (skb) {
+		tstamp->skb = NULL;
+		skb_tstamp_tx(skb, &shhwtstamps);
+		dev_kfree_skb_any(skb);
+	} else {
+		xsk_tx_metadata_complete(&tstamp->xsk_meta,
+					 &igc_xsk_tx_metadata_ops,
+					 &shhwtstamps.hwtstamp);
 
-	skb_tstamp_tx(skb, &shhwtstamps);
-	dev_kfree_skb_any(skb);
+		*tstamp->xsk_pending_ts = false;
+		tstamp->xsk_pending_ts = NULL;
+		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
+	}
 }
 
 /**
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

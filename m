Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8092360202F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 03:09:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10B5740891;
	Tue, 18 Oct 2022 01:09:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10B5740891
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666055373;
	bh=+WQoMtvuFUpkCVtoWFCzKoXXxjgFpk7RkHF9dsnGHZs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nr/hoDKYH3ir5ceoe5CnevN457Uw8BH5963b5tLIF+ajPc6J0KAYRDV6lkgwGAhN3
	 K187hif6LIjl8mUJwVLJ2wq+gq4CXwi/3ECJgkozmhKCRWpvwTjDvRcUicPdOX3Vzb
	 89X5hw3GCiyIEwOybHOKCc9viXb0am/v0MWMbQ4p1XZGjUY8PAXHx731Rqz+mf5IV0
	 355suLU1G7+c7EZqY03Py+u6fLMULBda4dZFzoelIhPEKdxQsaQdh9L8sVrSwtVX01
	 KiKGkqjhy2aR5+58semdlMMZIzd4gyajJMDwObyrnEDcXtLNZnttCJck0yWcyF7Qm9
	 keHFl5X7w+h0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2rc1ZCNqk-t6; Tue, 18 Oct 2022 01:09:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBA3C40252;
	Tue, 18 Oct 2022 01:09:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBA3C40252
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 146571BF399
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4001607C0
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4001607C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id due5NRphUVFP for <intel-wired-lan@osuosl.org>;
 Tue, 18 Oct 2022 01:09:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEBE160776
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BEBE160776
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="307624142"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="307624142"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 18:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="717704456"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="717704456"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Oct 2022 18:09:15 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 18 Oct 2022 09:07:32 +0800
Message-Id: <20221018010733.4765-5-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666055359; x=1697591359;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=mMYZxYLtzUA09HyM2zDBclV5nMXSW/0b/hFR6Na8RrU=;
 b=lknxFPa6rWrlPo1NQ6w3Y2sP/TAW0TBVdXcKqTp6d7E3OWZhqMR4Q2XR
 zRvotUMP/bcoFLlonDuy2xkd/StDGgBeJmq+sxhJR+EzWZXXz0HagHMWX
 rMPxzmfGlx7kuWR8KurKCqJod2CjxkzYYRznN25R+/w3fN3GcURMATp3s
 S/qrsxGTqtmwHCDAxhSaSbhKxzfm+bgEeHnY/1eAHA/oAQATDvVRFIpo4
 ayozS6ezQ7amirlvmnxhO9XXZJ687+uWNESkIHuRDqRsXK5AmaVuiX0Jy
 KWqrusFDGi37cObMgjP/FjNS+PSAAW/LEBDiKPbX3DeirNsiLym1k27mY
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lknxFPa6
Subject: [Intel-wired-lan] [PATCH v2 4/5] igc: Add support for DMA timestamp
 for non-PTP packets
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
Cc: leon@kernel.org, netdev@vger.kernel.org, richardcochran@gmail.com,
 saeed@kernel.org, edumazet@google.com, gal@nvidia.com, kuba@kernel.org,
 michael.chan@broadcom.com, muhammad.husaini.zulkifli@intel.com,
 davem@davemloft.net, andy@greyhouse.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vinicius Costa Gomes <vinicius.gomes@intel.com>

For PTP traffic, timestamp is retrieved from TXSTMP register.
For all other packets, DMA time stamp field of the Transmit
Descriptor Write-back is used.

If the TXSTAMPO register is used for both PTP and non-PTP packets,
there is a significant possibility that the time stamp for a PTP packet
will be lost when there is a lot of traffic.

This patch introduce to use the DMA Time Stamp for non PTP packet to
solve the current issue. User application can add new SOF_TIMESTAMPING flag
SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH when configure the
hwtstamp_config for the socket option if require DMA Time Stamp.

Before:

ptp4l: rms    2 max    5 freq  -3404 +/-   3 delay     1 +/-   0
ptp4l: rms    3 max    6 freq  -3400 +/-   3 delay     1 +/-   0
ptp4l: rms    2 max    4 freq  -3400 +/-   3 delay     1 +/-   0
ptp4l: timed out while polling for tx timestamp
ptp4l: increasing tx_timestamp_timeout may correct this issue,
but it is likely caused by a driver bug
ptp4l: port 1 (enp170s0.vlan): send peer delay response failed
ptp4l: port 1 (enp170s0.vlan): SLAVE to FAULTY on FAULT_DETECTED
ptp4l: port 1 (enp170s0.vlan): FAULTY to LISTENING on INIT_COMPLETE
ptp4l: port 1 (enp170s0.vlan): LISTENING to MASTER on
ANNOUNCE_RECEIPT_TIMEOUT_EXPIRES
ptp4l: selected local clock aa00aa.fffe.00aa00 as best master
ptp4l: port 1 (enp170s0.vlan): assuming the grand master role
ptp4l: port 1 (enp170s0.vlan): new foreign master 22bb22.fffe.bb22bb-1
ptp4l: selected best master clock 22bb22.fffe.bb22bb
ptp4l: port 1 (enp170s0.vlan): MASTER to UNCALIBRATED on RS_SLAVE
ptp4l: port 1 (enp170s0.vlan): UNCALIBRATED to SLAVE on
MASTER_CLOCK_SELECTED
ptp4l: rms   39 max   66 freq  -3355 +/-  45 delay     1 +/-   0
ptp4l: rms   20 max   36 freq  -3339 +/-  12 delay     1 +/-   0
ptp4l: rms   11 max   18 freq  -3371 +/-  11 delay     1 +/-   0
ptp4l: rms   10 max   16 freq  -3384 +/-   2 delay     1 +/-   0
ptp4l: rms    1 max    2 freq  -3375 +/-   2 delay     1 +/-   0
ptp4l: rms    3 max    6 freq  -3373 +/-   4 delay     0 +/-   0

After:

ptp4l: rms    3 max    4 freq  -3386 +/-   4 delay     0 +/-   0
ptp4l: rms    3 max    7 freq  -3380 +/-   3 delay     0 +/-   0
ptp4l: rms    3 max    6 freq  -3380 +/-   3 delay     0 +/-   0
ptp4l: rms    1 max    3 freq  -3381 +/-   2 delay     0 +/-   0
ptp4l: rms    3 max    5 freq  -3377 +/-   2 delay     0 +/-   0
ptp4l: rms    2 max    3 freq  -3377 +/-   2 delay     0 +/-   0
ptp4l: rms    3 max    6 freq  -3375 +/-   4 delay     0 +/-   0
ptp4l: rms    2 max    4 freq  -3380 +/-   2 delay     1 +/-   0
ptp4l: rms    4 max    7 freq  -3385 +/-   3 delay     0 +/-   0
ptp4l: rms    2 max    3 freq  -3384 +/-   2 delay     0 +/-   0
ptp4l: rms    4 max    7 freq  -3376 +/-   2 delay     0 +/-   0
ptp4l: rms    3 max    5 freq  -3376 +/-   4 delay     0 +/-   0
ptp4l: rms    3 max    5 freq  -3382 +/-   2 delay     0 +/-   0
ptp4l: rms    5 max    7 freq  -3389 +/-   2 delay     0 +/-   0
ptp4l: rms    3 max    4 freq  -3388 +/-   3 delay     1 +/-   0
ptp4l: rms    3 max    5 freq  -3387 +/-   4 delay     1 +/-   0
ptp4l: rms    5 max    8 freq  -3395 +/-   3 delay     1 +/-   0
ptp4l: rms    5 max    8 freq  -3399 +/-   4 delay     0 +/-   0
ptp4l: rms    2 max    5 freq  -3397 +/-   3 delay     1 +/-   0
ptp4l: rms    2 max    4 freq  -3397 +/-   3 delay     1 +/-   0
ptp4l: rms    2 max    3 freq  -3397 +/-   2 delay     1 +/-   0
ptp4l: rms    3 max    5 freq  -3391 +/-   2 delay     2 +/-   0

Test Setup:
back-to-back communication between Host and DUT. Host will act as
transmitter and DUT will become receiver. Host will generate the
packet using sample application with timestamping_flag of
SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH and hwtstamp_config flag of
HWTSTAMP_FLAG_DMA_TIMESTAMP.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Co-developed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Co-developed-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         | 10 +++
 drivers/net/ethernet/intel/igc/igc_base.h    |  2 +-
 drivers/net/ethernet/intel/igc/igc_defines.h |  2 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  5 +-
 drivers/net/ethernet/intel/igc/igc_main.c    | 24 ++++--
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 83 ++++++++++++++++++++
 6 files changed, 119 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 1e7e7071f64d..38a24b5260d1 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -348,6 +348,12 @@ extern char igc_driver_name[];
 #define IGC_I225_RX_LATENCY_1000	300
 #define IGC_I225_RX_LATENCY_2500	1485
 
+/* Transmit latency (for DMA timestamps) in nanosecond */
+#define IGC_I225_TX_DMA_LATENCY_10	13100
+#define IGC_I225_TX_DMA_LATENCY_100	1410
+#define IGC_I225_TX_DMA_LATENCY_1000	285
+#define IGC_I225_TX_DMA_LATENCY_2500	1485
+
 /* RX and TX descriptor control thresholds.
  * PTHRESH - MAC will consider prefetch if it has fewer than this number of
  *           descriptors available in its onboard memory.
@@ -410,6 +416,8 @@ enum igc_tx_flags {
 	/* olinfo flags */
 	IGC_TX_FLAGS_IPV4	= 0x10,
 	IGC_TX_FLAGS_CSUM	= 0x20,
+
+	IGC_TX_FLAGS_DMA_TSTAMP	= 0x200,
 };
 
 enum igc_boards {
@@ -627,6 +635,8 @@ void igc_ptp_reset(struct igc_adapter *adapter);
 void igc_ptp_suspend(struct igc_adapter *adapter);
 void igc_ptp_stop(struct igc_adapter *adapter);
 ktime_t igc_ptp_rx_pktstamp(struct igc_adapter *adapter, __le32 *buf);
+void igc_ptp_tx_dma_tstamp(struct igc_adapter *adapter,
+			   struct sk_buff *skb, u64 tstamp);
 int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
 int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
 void igc_ptp_tx_hang(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
index ce530f5fd7bd..672cf2d92165 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.h
+++ b/drivers/net/ethernet/intel/igc/igc_base.h
@@ -16,7 +16,7 @@ union igc_adv_tx_desc {
 		__le32 olinfo_status;
 	} read;
 	struct {
-		__le64 rsvd;       /* Reserved */
+		__le64 dma_tstamp;
 		__le32 nxtseq_seed;
 		__le32 status;
 	} wb;
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index f7311aeb293b..baedf48b4e2e 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -312,6 +312,7 @@
 #define IGC_TXD_CMD_DEXT	0x20000000 /* Desc extension (0 = legacy) */
 #define IGC_TXD_CMD_VLE		0x40000000 /* Add VLAN tag */
 #define IGC_TXD_STAT_DD		0x00000001 /* Descriptor Done */
+#define IGC_TXD_STAT_TS_STAT    0x00000002 /* DMA Timestamp in packet */
 #define IGC_TXD_CMD_TCP		0x01000000 /* TCP packet */
 #define IGC_TXD_CMD_IP		0x02000000 /* IP packet */
 #define IGC_TXD_CMD_TSE		0x04000000 /* TCP Seg enable */
@@ -520,6 +521,7 @@
 /* Transmit Scheduling */
 #define IGC_TQAVCTRL_TRANSMIT_MODE_TSN	0x00000001
 #define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
+#define IGC_TQAVCTRL_1588_STAT_EN	0x00000004
 
 #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
 #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 8cc077b712ad..7d198fb6d619 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1532,7 +1532,8 @@ static int igc_ethtool_get_ts_info(struct net_device *dev,
 			SOF_TIMESTAMPING_SOFTWARE |
 			SOF_TIMESTAMPING_TX_HARDWARE |
 			SOF_TIMESTAMPING_RX_HARDWARE |
-			SOF_TIMESTAMPING_RAW_HARDWARE;
+			SOF_TIMESTAMPING_RAW_HARDWARE |
+			SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH;
 
 		info->tx_types =
 			BIT(HWTSTAMP_TX_OFF) |
@@ -1541,6 +1542,8 @@ static int igc_ethtool_get_ts_info(struct net_device *dev,
 		info->rx_filters = BIT(HWTSTAMP_FILTER_NONE);
 		info->rx_filters |= BIT(HWTSTAMP_FILTER_ALL);
 
+		info->flag = HWTSTAMP_FLAG_DMA_TIMESTAMP;
+
 		return 0;
 	default:
 		return -EOPNOTSUPP;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 671255edf3c2..daa6ca5acab3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1415,6 +1415,7 @@ static int igc_tso(struct igc_ring *tx_ring,
 static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 				       struct igc_ring *tx_ring)
 {
+	struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
 	u16 count = TXD_USE_COUNT(skb_headlen(skb));
 	__be16 protocol = vlan_get_protocol(skb);
 	struct igc_tx_buffer *first;
@@ -1445,16 +1446,14 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	first->bytecount = skb->len;
 	first->gso_segs = 1;
 
-	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
-		struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
-
+	if (unlikely((skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
+		     !(skb_shinfo(skb)->tx_flags & SKBTX_HW_DMA_TSTAMP))) {
 		/* FIXME: add support for retrieving timestamps from
 		 * the other timer registers before skipping the
 		 * timestamping request.
 		 */
 		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
-		    !test_and_set_bit_lock(__IGC_PTP_TX_IN_PROGRESS,
-					   &adapter->state)) {
+		    !test_and_set_bit_lock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state))	{
 			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
 			tx_flags |= IGC_TX_FLAGS_TSTAMP;
 
@@ -1463,6 +1462,14 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		} else {
 			adapter->tx_hwtstamp_skipped++;
 		}
+	} else if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_DMA_TSTAMP)) {
+		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
+		    adapter->tstamp_config.flags == HWTSTAMP_FLAG_DMA_TIMESTAMP) {
+			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
+			tx_flags |= IGC_TX_FLAGS_DMA_TSTAMP;
+		} else {
+			adapter->tx_hwtstamp_skipped++;
+		}
 	}
 
 	if (skb_vlan_tag_present(skb)) {
@@ -2741,6 +2748,13 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 		if (!(eop_desc->wb.status & cpu_to_le32(IGC_TXD_STAT_DD)))
 			break;
 
+		if (eop_desc->wb.status & cpu_to_le32(IGC_TXD_STAT_TS_STAT) &&
+		    tx_buffer->tx_flags & IGC_TX_FLAGS_DMA_TSTAMP) {
+			u64 tstamp = le64_to_cpu(eop_desc->wb.dma_tstamp);
+
+			igc_ptp_tx_dma_tstamp(adapter, tx_buffer->skb, tstamp);
+		}
+
 		/* clear next_to_watch to prevent false hangs */
 		tx_buffer->next_to_watch = NULL;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 8dbb9f903ca7..631972d7e97b 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -432,6 +432,29 @@ static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
 	}
 }
 
+static void igc_ptp_dma_time_to_hwtstamp(struct igc_adapter *adapter,
+					 struct skb_shared_hwtstamps *hwtstamps,
+					 u64 systim)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 sec, nsec;
+
+	nsec = rd32(IGC_SYSTIML);
+	sec = rd32(IGC_SYSTIMH);
+
+	if (unlikely(nsec < (systim & 0xFFFFFFFF)))
+		--sec;
+
+	switch (adapter->hw.mac.type) {
+	case igc_i225:
+		memset(hwtstamps, 0, sizeof(*hwtstamps));
+		hwtstamps->hwtstamp = ktime_set(sec, systim & 0xFFFFFFFF);
+		break;
+	default:
+		break;
+	}
+}
+
 /**
  * igc_ptp_rx_pktstamp - Retrieve timestamp from Rx packet buffer
  * @adapter: Pointer to adapter the packet buffer belongs to
@@ -549,6 +572,28 @@ static void igc_ptp_enable_tx_timestamp(struct igc_adapter *adapter)
 	rd32(IGC_TXSTMPH);
 }
 
+static void igc_ptp_disable_dma_timestamp(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 tqavctrl;
+
+	tqavctrl = rd32(IGC_TQAVCTRL);
+	tqavctrl &= ~IGC_TQAVCTRL_1588_STAT_EN;
+
+	wr32(IGC_TQAVCTRL, tqavctrl);
+}
+
+static void igc_ptp_enable_dma_timestamp(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 tqavctrl;
+
+	tqavctrl = rd32(IGC_TQAVCTRL);
+	tqavctrl |= IGC_TQAVCTRL_1588_STAT_EN;
+
+	wr32(IGC_TQAVCTRL, tqavctrl);
+}
+
 /**
  * igc_ptp_set_timestamp_mode - setup hardware for timestamping
  * @adapter: networking device structure
@@ -562,9 +607,14 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	switch (config->tx_type) {
 	case HWTSTAMP_TX_OFF:
 		igc_ptp_disable_tx_timestamp(adapter);
+		igc_ptp_disable_dma_timestamp(adapter);
 		break;
 	case HWTSTAMP_TX_ON:
 		igc_ptp_enable_tx_timestamp(adapter);
+
+		/* Ensure that flag only can be used during HWTSTAMP_TX_ON */
+		if (config->flags == HWTSTAMP_FLAG_DMA_TIMESTAMP)
+			igc_ptp_enable_dma_timestamp(adapter);
 		break;
 	default:
 		return -ERANGE;
@@ -683,6 +733,39 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 	dev_kfree_skb_any(skb);
 }
 
+void igc_ptp_tx_dma_tstamp(struct igc_adapter *adapter,
+			   struct sk_buff *skb, u64 tstamp)
+{
+	struct skb_shared_hwtstamps shhwtstamps;
+	int adjust = 0;
+
+	if (!(skb_shinfo(skb)->tx_flags & SKBTX_IN_PROGRESS))
+		return;
+
+	igc_ptp_dma_time_to_hwtstamp(adapter, &shhwtstamps, tstamp);
+
+	switch (adapter->link_speed) {
+	case SPEED_10:
+		adjust = IGC_I225_TX_DMA_LATENCY_10;
+		break;
+	case SPEED_100:
+		adjust = IGC_I225_TX_DMA_LATENCY_100;
+		break;
+	case SPEED_1000:
+		adjust = IGC_I225_TX_DMA_LATENCY_1000;
+		break;
+	case SPEED_2500:
+		adjust = IGC_I225_TX_DMA_LATENCY_2500;
+		break;
+	}
+
+	shhwtstamps.hwtstamp =
+		ktime_add_ns(shhwtstamps.hwtstamp, adjust);
+
+	/* Notify the stack and free the skb after we've unlocked */
+	skb_tstamp_tx(skb, &shhwtstamps);
+}
+
 /**
  * igc_ptp_tx_work
  * @work: pointer to work struct
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

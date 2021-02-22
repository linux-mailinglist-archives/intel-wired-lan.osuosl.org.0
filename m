Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E121A3212B6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 10:08:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9446285D87;
	Mon, 22 Feb 2021 09:08:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FicE50g0Cxqb; Mon, 22 Feb 2021 09:08:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67F0C85D39;
	Mon, 22 Feb 2021 09:08:33 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5EEC11BF38E
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:08:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D6686F539
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U-37RqTgEOFw for <intel-wired-lan@osuosl.org>;
 Mon, 22 Feb 2021 09:08:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E13F60590
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:08:31 +0000 (UTC)
IronPort-SDR: DKCqDEpaeRwN808WUShlQMXiJnfwhd43Xk78KNemOhxJ7/v2xTzzaZwURTCvAjDPU9JksLzmp3
 NczcuGSgFrgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="245808794"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="245808794"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:08:30 -0800
IronPort-SDR: qJRiCH3hX4+elj+r+wBL1KmNOudENuWVlP9rN0ui+/sdyF3Pbkp/rhlKDbDcmxJ4D9kAJv3WyH
 VYljufiu4+UQ==
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="441321592"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:08:24 -0800
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 22 Feb 2021 01:09:32 -0800
Message-Id: <20210222090936.6768-6-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222090936.6768-1-jithu.joseph@intel.com>
References: <20210222090936.6768-1-jithu.joseph@intel.com>
Subject: [Intel-wired-lan] [PATCH v4 5/9] igc: Introduce TX/RX stats helpers
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

In preparation for AF_XDP zero-copy support, encapsulate the code that
updates the driver RX stats in its own local helper so it can be reused
in the zero-copy path. Likewise, encapsulate TX stats code as well.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 43 ++++++++++++++++-------
 1 file changed, 31 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 26208441aad3..389df007f050 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2111,6 +2111,20 @@ static void igc_finalize_xdp(struct igc_adapter *adapter, int status)
 		xdp_do_flush();
 }
 
+static void igc_update_rx_stats(struct igc_q_vector *q_vector,
+				unsigned int packets, unsigned int bytes)
+{
+	struct igc_ring *ring = q_vector->rx.ring;
+
+	u64_stats_update_begin(&ring->rx_syncp);
+	ring->rx_stats.packets += packets;
+	ring->rx_stats.bytes += bytes;
+	u64_stats_update_end(&ring->rx_syncp);
+
+	q_vector->rx.total_packets += packets;
+	q_vector->rx.total_bytes += bytes;
+}
+
 static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 {
 	unsigned int total_bytes = 0, total_packets = 0;
@@ -2234,12 +2248,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 	/* place incomplete frames back on ring for completion */
 	rx_ring->skb = skb;
 
-	u64_stats_update_begin(&rx_ring->rx_syncp);
-	rx_ring->rx_stats.packets += total_packets;
-	rx_ring->rx_stats.bytes += total_bytes;
-	u64_stats_update_end(&rx_ring->rx_syncp);
-	q_vector->rx.total_packets += total_packets;
-	q_vector->rx.total_bytes += total_bytes;
+	igc_update_rx_stats(q_vector, total_packets, total_bytes);
 
 	if (cleaned_count)
 		igc_alloc_rx_buffers(rx_ring, cleaned_count);
@@ -2247,6 +2256,20 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 	return total_packets;
 }
 
+static void igc_update_tx_stats(struct igc_q_vector *q_vector,
+				unsigned int packets, unsigned int bytes)
+{
+	struct igc_ring *ring = q_vector->tx.ring;
+
+	u64_stats_update_begin(&ring->tx_syncp);
+	ring->tx_stats.bytes += bytes;
+	ring->tx_stats.packets += packets;
+	u64_stats_update_end(&ring->tx_syncp);
+
+	q_vector->tx.total_bytes += bytes;
+	q_vector->tx.total_packets += packets;
+}
+
 /**
  * igc_clean_tx_irq - Reclaim resources after transmit completes
  * @q_vector: pointer to q_vector containing needed info
@@ -2349,12 +2372,8 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 
 	i += tx_ring->count;
 	tx_ring->next_to_clean = i;
-	u64_stats_update_begin(&tx_ring->tx_syncp);
-	tx_ring->tx_stats.bytes += total_bytes;
-	tx_ring->tx_stats.packets += total_packets;
-	u64_stats_update_end(&tx_ring->tx_syncp);
-	q_vector->tx.total_bytes += total_bytes;
-	q_vector->tx.total_packets += total_packets;
+
+	igc_update_tx_stats(q_vector, total_packets, total_bytes);
 
 	if (test_bit(IGC_RING_FLAG_TX_DETECT_HANG, &tx_ring->flags)) {
 		struct igc_hw *hw = &adapter->hw;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

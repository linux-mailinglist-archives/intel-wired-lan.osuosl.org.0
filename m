Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 568A63146BE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 04:00:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C8368610F;
	Tue,  9 Feb 2021 03:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1vDn3p2UE9rY; Tue,  9 Feb 2021 03:00:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7137286155;
	Tue,  9 Feb 2021 03:00:02 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4960D1BF27E
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 03:00:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 291316F886
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 03:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id travlKJSDhSD for <intel-wired-lan@osuosl.org>;
 Tue,  9 Feb 2021 02:59:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 728826F899; Tue,  9 Feb 2021 02:59:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2999B6F898
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:59:00 +0000 (UTC)
IronPort-SDR: CcuS1U1+ZxdLbjwHqxSl8qIxxmf0HzPqP/a5poMLUdpU/JjR8a4Q5mBOop/bCDeXQcQMuhZKBq
 skVnxDNtkyiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="181963392"
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="181963392"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 18:58:59 -0800
IronPort-SDR: U9MGUzo5WbAgvhpKVXu6o3i0usbrGV/Jmgtb5Fsg1jKgJOyb+5TQAUQwwOspPz+wgYtQN1BhG2
 4D8yFXG2VftQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="586039886"
Received: from otc-cfl-ubuntu-15.jf.intel.com ([10.54.31.57])
 by fmsmga005.fm.intel.com with ESMTP; 08 Feb 2021 18:58:59 -0800
From: Vedang Patel <vedang.patel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  8 Feb 2021 18:42:39 -0800
Message-Id: <20210209024243.23406-6-vedang.patel@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210209024243.23406-1-vedang.patel@intel.com>
References: <20210209024243.23406-1-vedang.patel@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v3 5/9] igc: Introduce tx/rx
 stats helpers
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
---
 drivers/net/ethernet/intel/igc/igc_main.c | 43 ++++++++++++++++-------
 1 file changed, 31 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 43bd3b3f7e49..f13ef54b9c7a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2102,6 +2102,20 @@ static void igc_finalize_xdp(struct igc_adapter *adapter, int status)
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
@@ -2225,12 +2239,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
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
@@ -2238,6 +2247,20 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
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
@@ -2340,12 +2363,8 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 
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

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 563048616EE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 17:06:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EE8A41CB6;
	Fri, 23 Feb 2024 16:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OSu39iz7RjTk; Fri, 23 Feb 2024 16:06:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78D0241C9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708704404;
	bh=5cpcPYY5yH1K1jGdqV/EjndPYmL+oT6s0K4Rb+mNqA4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b8Mb8L/ZZjUf3IhmaWf2IAcq8mVtwf9wMu8eXl5etTCcZEHILnqJuF5nzlexA+hR0
	 EtoVgyS5FnZUkB6nPosJXy9yy9lc265jC2g56lGGWSWX13gl2c0wG0HYUVY44t7yQf
	 WrilH88jYfJA6itSCi75XZmVqhxIDWjFHhg3xVcWoIoxBjzefftDzaxxhpBsoIgqvr
	 UxCCrMPNvuWmfjnhQJ2bRzUNSnR8QT5EmKY0k7bKJYK6iJBKErrndsIMkAO3OutSmI
	 T2eVJ2heq0gdkVXZdA61xZTALlMjxknM/rDkYzKek6PceB1wl4E/fEe4TjZEYBDm+q
	 txGwY1XVwuRjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78D0241C9F;
	Fri, 23 Feb 2024 16:06:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 194F91BF41D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 16:06:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0753960909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 16:06:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GWmyWqx_wJdB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Feb 2024 16:06:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3CBDD608D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CBDD608D9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CBDD608D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 16:06:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="14454683"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="14454683"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 08:06:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; 
   d="scan'208";a="6161982"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa006.fm.intel.com with ESMTP; 23 Feb 2024 08:06:38 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 23 Feb 2024 17:06:29 +0100
Message-Id: <20240223160629.729433-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240223160629.729433-1-maciej.fijalkowski@intel.com>
References: <20240223160629.729433-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708704400; x=1740240400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9ltIlHFtQ/B9aDC7Wb4gqDk5rk8GxOMve1JyJc0Ftgo=;
 b=VdyJtzlTEIUIlZXUC8T3G1oFIPzBfFSU1UUTXKfvwOv9oOwRZjMHLUJH
 jVN8DblINiMa7wOEqayNgww4dzTAsF+ro299YObuMpcMZ5+cJlPDsT0Zw
 0AZaobsgURWplal/coNvPMT8YYrPYZh25xjopra+gL1fMNqowHR5PNS6+
 KgQph7uGXMTf+vWATMkAKoGJbD1CY72cWpJJUOyNWGRG9h0J2t/xGjiMA
 gfHwz3zsgKRUQtkcZCpUWCCTLa+qC9HVO9Zo+antIWvAo3K/bkeoDRmx/
 uSMDQdC2UMQBbnRtWHA3tZ68jQ5qSWxh7kk9Vm5ukPsEUPS5VaU7DF9cY
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VdyJtzlT
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 3/3] ixgbe: pull out stats
 update to common routines
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce ixgbe_update_{r,t}x_ring_stats() that will be used by both
standard and ZC datapath.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 54 ++++++++++++++-----
 .../ethernet/intel/ixgbe/ixgbe_txrx_common.h  |  7 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 17 ++----
 3 files changed, 53 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index bd541527c8c7..ee0321db61f8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -1105,6 +1105,44 @@ static int ixgbe_tx_maxrate(struct net_device *netdev,
 	return 0;
 }
 
+/**
+ * ixgbe_update_tx_ring_stats - Update Tx ring specific counters
+ * @tx_ring: ring to update
+ * @q_vector: queue vector ring belongs to
+ * @pkts: number of processed packets
+ * @bytes: number of processed bytes
+ */
+void ixgbe_update_tx_ring_stats(struct ixgbe_ring *tx_ring,
+				struct ixgbe_q_vector *q_vector, u64 pkts,
+				u64 bytes)
+{
+	u64_stats_update_begin(&tx_ring->syncp);
+	tx_ring->stats.bytes += bytes;
+	tx_ring->stats.packets += pkts;
+	u64_stats_update_end(&tx_ring->syncp);
+	q_vector->tx.total_bytes += bytes;
+	q_vector->tx.total_packets += pkts;
+}
+
+/**
+ * ixgbe_update_rx_ring_stats - Update Rx ring specific counters
+ * @rx_ring: ring to update
+ * @q_vector: queue vector ring belongs to
+ * @pkts: number of processed packets
+ * @bytes: number of processed bytes
+ */
+void ixgbe_update_rx_ring_stats(struct ixgbe_ring *rx_ring,
+				struct ixgbe_q_vector *q_vector, u64 pkts,
+				u64 bytes)
+{
+	u64_stats_update_begin(&rx_ring->syncp);
+	rx_ring->stats.bytes += bytes;
+	rx_ring->stats.packets += pkts;
+	u64_stats_update_end(&rx_ring->syncp);
+	q_vector->rx.total_bytes += bytes;
+	q_vector->rx.total_packets += pkts;
+}
+
 /**
  * ixgbe_clean_tx_irq - Reclaim resources after transmit completes
  * @q_vector: structure containing interrupt and ring information
@@ -1207,12 +1245,8 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
 
 	i += tx_ring->count;
 	tx_ring->next_to_clean = i;
-	u64_stats_update_begin(&tx_ring->syncp);
-	tx_ring->stats.bytes += total_bytes;
-	tx_ring->stats.packets += total_packets;
-	u64_stats_update_end(&tx_ring->syncp);
-	q_vector->tx.total_bytes += total_bytes;
-	q_vector->tx.total_packets += total_packets;
+	ixgbe_update_tx_ring_stats(tx_ring, q_vector, total_packets,
+				   total_bytes);
 	adapter->tx_ipsec += total_ipsec;
 
 	if (check_for_tx_hang(tx_ring) && ixgbe_check_tx_hang(tx_ring)) {
@@ -2429,12 +2463,8 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
 		ixgbe_xdp_ring_update_tail_locked(ring);
 	}
 
-	u64_stats_update_begin(&rx_ring->syncp);
-	rx_ring->stats.packets += total_rx_packets;
-	rx_ring->stats.bytes += total_rx_bytes;
-	u64_stats_update_end(&rx_ring->syncp);
-	q_vector->rx.total_packets += total_rx_packets;
-	q_vector->rx.total_bytes += total_rx_bytes;
+	ixgbe_update_rx_ring_stats(rx_ring, q_vector, total_rx_packets,
+				   total_rx_bytes);
 
 	return total_rx_packets;
 }
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
index f1f69ce67420..78deea5ec536 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
@@ -46,4 +46,11 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 int ixgbe_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
 void ixgbe_xsk_clean_tx_ring(struct ixgbe_ring *tx_ring);
 
+void ixgbe_update_tx_ring_stats(struct ixgbe_ring *tx_ring,
+				struct ixgbe_q_vector *q_vector, u64 pkts,
+				u64 bytes);
+void ixgbe_update_rx_ring_stats(struct ixgbe_ring *rx_ring,
+				struct ixgbe_q_vector *q_vector, u64 pkts,
+				u64 bytes);
+
 #endif /* #define _IXGBE_TXRX_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 59798bc33298..d34d715c59eb 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -359,12 +359,8 @@ int ixgbe_clean_rx_irq_zc(struct ixgbe_q_vector *q_vector,
 		ixgbe_xdp_ring_update_tail_locked(ring);
 	}
 
-	u64_stats_update_begin(&rx_ring->syncp);
-	rx_ring->stats.packets += total_rx_packets;
-	rx_ring->stats.bytes += total_rx_bytes;
-	u64_stats_update_end(&rx_ring->syncp);
-	q_vector->rx.total_packets += total_rx_packets;
-	q_vector->rx.total_bytes += total_rx_bytes;
+	ixgbe_update_rx_ring_stats(rx_ring, q_vector, total_rx_packets,
+				   total_rx_bytes);
 
 	if (xsk_uses_need_wakeup(rx_ring->xsk_pool)) {
 		if (failure || rx_ring->next_to_clean == rx_ring->next_to_use)
@@ -499,13 +495,8 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 	}
 
 	tx_ring->next_to_clean = ntc;
-
-	u64_stats_update_begin(&tx_ring->syncp);
-	tx_ring->stats.bytes += total_bytes;
-	tx_ring->stats.packets += total_packets;
-	u64_stats_update_end(&tx_ring->syncp);
-	q_vector->tx.total_bytes += total_bytes;
-	q_vector->tx.total_packets += total_packets;
+	ixgbe_update_tx_ring_stats(tx_ring, q_vector, total_packets,
+				   total_bytes);
 
 	if (xsk_frames)
 		xsk_tx_completed(pool, xsk_frames);
-- 
2.34.1


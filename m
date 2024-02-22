Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F40285FB99
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 15:50:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EA4B41D9E;
	Thu, 22 Feb 2024 14:50:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kTxVUCKlBOG0; Thu, 22 Feb 2024 14:50:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8996340880
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708613443;
	bh=5cpcPYY5yH1K1jGdqV/EjndPYmL+oT6s0K4Rb+mNqA4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9xbDY4DvHaplmkGE2lsCzgRx6yY1eooaUF1ZQ/Lyuw9jfsvGn6AC1NCvUOOQDPUT1
	 q75lLLkHtyBADGG9CiuRIDD6DsMes3EAzWXyg+iXhrEheQnJb+vzLt4ATupVCulOik
	 y1vpazoir9aSuJ8mObkpCStzd7Cfk2gvRyizf/NDRRC6UxvhjXT7FzjjJem/NmdWaG
	 YGC9r0aVjksuTi1bpmrHcLCL9PkmGhqJRV+do2m1G7CCcJtma/B48gw0mRw0R6WZsf
	 HDG2ZAwL14p7l8MOb+uM9WGIRoTsiMsf5hNIbZEql6JCl+o3xXk9ejdYG/oYjS3GuL
	 x/z+tZSvMBLqQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8996340880;
	Thu, 22 Feb 2024 14:50:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6DFA51BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 14:50:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E29541D62
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 14:50:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dRJbx5hKFmr8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 14:50:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5263441D7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5263441D7C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5263441D7C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 14:50:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2949314"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2949314"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 06:50:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5670967"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa008.fm.intel.com with ESMTP; 22 Feb 2024 06:50:36 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 15:50:25 +0100
Message-Id: <20240222145025.722515-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240222145025.722515-1-maciej.fijalkowski@intel.com>
References: <20240222145025.722515-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708613438; x=1740149438;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9ltIlHFtQ/B9aDC7Wb4gqDk5rk8GxOMve1JyJc0Ftgo=;
 b=b01UIBtjOUR7bijvd5TEfK7dKXLoq2e2mgT4XsoFMcQZ1E0R44lYIM5y
 F+AuAFpAguEAVY81iPO/8vuwjLUjx5SGE2rt1ppK1220mi6HoB42xlE8t
 8acm0VupPE/oW5txP33G6ohglbHnoA+8jAjcL48CBZFcMxvA0SJWp9E1g
 NKh3t2cL2gdZ9Sdbzur7dfXPkAcU1YyrT/6hoJtxfqOcFVEnR39n9X/7d
 ZmJtU0C78+U8+xzq+i/sWf3CHCfrpxihWFzqFKwYXFhGLeO2SsDUwr86U
 Ln8tp6I/TIT+2Uhz57C4ZKQMbCJndEWoE3j6GEZPDGweZaWO8icclGigM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b01UIBtj
Subject: [Intel-wired-lan] [PATCH iwl-next 3/3] ixgbe: pull out stats update
 to common routines
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
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com
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


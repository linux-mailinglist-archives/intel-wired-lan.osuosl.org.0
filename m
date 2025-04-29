Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B90F3AA10FA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Apr 2025 17:52:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 113DC605EA;
	Tue, 29 Apr 2025 15:52:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id irryUD7QTw4g; Tue, 29 Apr 2025 15:52:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E312060A4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745941960;
	bh=NprrdxNEKV6AGAQDLWe8twe0hPJtrtraZ/qqRecD5xk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=p6sKSjRXs3e1MmpZR+rn6Rh1bDdNJR6diopRprc53RL6si1PMMSbjXTO7u8x+ISvd
	 aGGnXuOIDTTgigY/mN+705aUDJBStS6r/kaxpnNq/n0hdMahfGBo9id4yufWx+yb7z
	 yjHJwxEj+InJy1kNNA8KnYJ1cgMN/+t9qwzKthtRTAG0NZQccNYniM89ux3ah2WyuM
	 T932GtN8RyHpHmowdFTDpLfP2X3tooyvS3UwFGtxLOSnDaEXWsOUhtZB2S9WfJ1qyP
	 yBC7WkBJbdE+2FcEOpDUze+deVDg7RGDRQk3ZsUn9D6HLn3u2yUNiw5jvEWLhklNOk
	 u8D6WdB8RH+Uw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E312060A4B;
	Tue, 29 Apr 2025 15:52:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EE0D0E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 15:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4B3840242
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 15:52:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5tlJERejiZ3W for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Apr 2025 15:52:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8DC83401CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DC83401CE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8DC83401CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 15:52:37 +0000 (UTC)
X-CSE-ConnectionGUID: /MdUK+cOQeyeN360a5uM7g==
X-CSE-MsgGUID: sVSVvrmeRLifhSFFecJOHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="58948416"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="58948416"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 08:52:37 -0700
X-CSE-ConnectionGUID: WjZPxk6MQaekoFYHDBwyeA==
X-CSE-MsgGUID: cSprDPN8TUyFfHuoB3aCFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="137882631"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa003.fm.intel.com with ESMTP; 29 Apr 2025 08:52:34 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, michal.kubiak@intel.com,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 =?UTF-8?q?Tobias=20B=C3=B6hm?= <tobias.boehm@hetzner-cloud.de>,
 Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
Date: Tue, 29 Apr 2025 17:52:05 +0200
Message-Id: <20250429155205.1444438-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745941958; x=1777477958;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=57DZOI7oh7v0aW6KAchRDLoD2ytFgBuQtph74E7e6AM=;
 b=mJKByuLGdEJvsFt+xM5MeLyWpIc4KtbhraHig1eC0olNQociasFiEhZh
 0rLPbVXfFzXU7QliRmxLlqcJ1xevh7fyS243Mr3knE/mQNdOEtUaq0xFL
 i2KhUlQMkwuQH780o0gphE4EYf5QP/KrpgFMSL6Ht2wOr/6fs7N2nqpfB
 vHle30gw7N4FjxlZmf3jv1c9P99Ppkt3A8my00LcmRtvAsSbrx75jMCNw
 opz3LHx84ZbYOZRtgonovoJgWBHGFFUKOh9H2MZ87bnZR+53aRQOO4Kjv
 iZahxq+3o7fckE1ZfqCkcXYRreXWB65PEqN7y5GQyfGLdCE2NlQBCkm9P
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mJKByuLG
Subject: [Intel-wired-lan] [PATCH iwl-net] ixgbe: fix ndo_xdp_xmit()
 workloads
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently ixgbe driver checks periodically in its watchdog subtask if
there is anything to be transmitted (consdidering both Tx and XDP rings)
under state of carrier not being 'ok'. Such event is interpreted as Tx
hang and therefore results in interface reset.

This is currently problematic for ndo_xdp_xmit() as it is allowed to
produce descriptors when interface is going through reset or its carrier
is turned off.

Furthermore, XDP rings should not really be objects of Tx hang
detection. This mechanism is rather a matter of ndo_tx_timeout() being
called from dev_watchdog against Tx rings exposed to networking stack.

Taking into account issues described above, let us have a two fold fix -
do not respect XDP rings in local ixgbe watchdog and do not produce Tx
descriptors in ndo_xdp_xmit callback when there is some problem with
carrier currently. For now, keep the Tx hang checks in clean Tx irq
routine, but adjust it to not execute it for XDP rings.

Cc: Tobias Böhm <tobias.boehm@hetzner-cloud.de>
Reported-by: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
Closes: https://lore.kernel.org/netdev/eca1880f-253a-4955-afe6-732d7c6926ee@hetzner-cloud.de/
Fixes: 6453073987ba ("ixgbe: add initial support for xdp redirect")
Fixes: 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 34 ++++++-------------
 1 file changed, 11 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 467f81239e12..21bfea8aeb67 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -966,10 +966,6 @@ static void ixgbe_update_xoff_rx_lfc(struct ixgbe_adapter *adapter)
 	for (i = 0; i < adapter->num_tx_queues; i++)
 		clear_bit(__IXGBE_HANG_CHECK_ARMED,
 			  &adapter->tx_ring[i]->state);
-
-	for (i = 0; i < adapter->num_xdp_queues; i++)
-		clear_bit(__IXGBE_HANG_CHECK_ARMED,
-			  &adapter->xdp_ring[i]->state);
 }
 
 static void ixgbe_update_xoff_received(struct ixgbe_adapter *adapter)
@@ -1263,10 +1259,13 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
 				   total_bytes);
 	adapter->tx_ipsec += total_ipsec;
 
+	if (ring_is_xdp(tx_ring))
+		return !!budget;
+
 	if (check_for_tx_hang(tx_ring) && ixgbe_check_tx_hang(tx_ring)) {
 		/* schedule immediate reset if we believe we hung */
 		struct ixgbe_hw *hw = &adapter->hw;
-		e_err(drv, "Detected Tx Unit Hang %s\n"
+		e_err(drv, "Detected Tx Unit Hang\n"
 			"  Tx Queue             <%d>\n"
 			"  TDH, TDT             <%x>, <%x>\n"
 			"  next_to_use          <%x>\n"
@@ -1274,16 +1273,14 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
 			"tx_buffer_info[next_to_clean]\n"
 			"  time_stamp           <%lx>\n"
 			"  jiffies              <%lx>\n",
-			ring_is_xdp(tx_ring) ? "(XDP)" : "",
 			tx_ring->queue_index,
 			IXGBE_READ_REG(hw, IXGBE_TDH(tx_ring->reg_idx)),
 			IXGBE_READ_REG(hw, IXGBE_TDT(tx_ring->reg_idx)),
 			tx_ring->next_to_use, i,
 			tx_ring->tx_buffer_info[i].time_stamp, jiffies);
 
-		if (!ring_is_xdp(tx_ring))
-			netif_stop_subqueue(tx_ring->netdev,
-					    tx_ring->queue_index);
+		netif_stop_subqueue(tx_ring->netdev,
+				    tx_ring->queue_index);
 
 		e_info(probe,
 		       "tx hang %d detected on queue %d, resetting adapter\n",
@@ -1296,9 +1293,6 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
 		return true;
 	}
 
-	if (ring_is_xdp(tx_ring))
-		return !!budget;
-
 #define TX_WAKE_THRESHOLD (DESC_NEEDED * 2)
 	txq = netdev_get_tx_queue(tx_ring->netdev, tx_ring->queue_index);
 	if (!__netif_txq_completed_wake(txq, total_packets, total_bytes,
@@ -7791,12 +7785,9 @@ static void ixgbe_check_hang_subtask(struct ixgbe_adapter *adapter)
 		return;
 
 	/* Force detection of hung controller */
-	if (netif_carrier_ok(adapter->netdev)) {
+	if (netif_carrier_ok(adapter->netdev))
 		for (i = 0; i < adapter->num_tx_queues; i++)
 			set_check_for_tx_hang(adapter->tx_ring[i]);
-		for (i = 0; i < adapter->num_xdp_queues; i++)
-			set_check_for_tx_hang(adapter->xdp_ring[i]);
-	}
 
 	if (!(adapter->flags & IXGBE_FLAG_MSIX_ENABLED)) {
 		/*
@@ -8011,13 +8002,6 @@ static bool ixgbe_ring_tx_pending(struct ixgbe_adapter *adapter)
 			return true;
 	}
 
-	for (i = 0; i < adapter->num_xdp_queues; i++) {
-		struct ixgbe_ring *ring = adapter->xdp_ring[i];
-
-		if (ring->next_to_use != ring->next_to_clean)
-			return true;
-	}
-
 	return false;
 }
 
@@ -10742,6 +10726,10 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
 	if (unlikely(test_bit(__IXGBE_DOWN, &adapter->state)))
 		return -ENETDOWN;
 
+	if (!netif_carrier_ok(adapter->netdev) ||
+	    !netif_running(adapter->netdev))
+		return -ENETDOWN;
+
 	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
 		return -EINVAL;
 
-- 
2.43.0


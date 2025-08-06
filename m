Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D18D5B1CA2D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Aug 2025 18:58:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7978341303;
	Wed,  6 Aug 2025 16:58:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lAtfvrwBPEpg; Wed,  6 Aug 2025 16:58:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56C024130E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754499513;
	bh=2Cri3MZhiMd1POobWvpUzK+Riw6LqIiAToPaWuWdLvQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ta7c0e2CSyQn7JJnBfxoKXNAgb4XOLwylxqHp/RLFnV7pnLCQeZeJOKx27rhr9kgS
	 hMevuTrNAZm4meEP835a7Axwwza0QYcz/OIk5JXsYrsCDjNj/6AS7+b8z8ptJM84tC
	 Zmf7J/tOn6fLrsmRecgFNTRY+RgWsccSnEcExEcTrmXBqgqjWO9eW5cAlu8OK8S2W+
	 l2JD7CT97i2swf1usw+Pvv82cg0YI3kaj3F4NyZYrpcrW/1FruGSnLoUD2uosSpi66
	 BIB12DzRlLC/jJ/YOnU/RPC1PVtdlHDveQDTxgA6QCakWjwIy4ajVONb7KisFwOzY0
	 TGNAb/ZoYKSTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56C024130E;
	Wed,  6 Aug 2025 16:58:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F43A31
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 16:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D293412B7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 16:58:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G61Fx5iH-qZb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Aug 2025 16:58:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 19DFB4129D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19DFB4129D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19DFB4129D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 16:58:30 +0000 (UTC)
X-CSE-ConnectionGUID: u113PyOYRQaT0z/OrONM3g==
X-CSE-MsgGUID: vIyHraw8TGmFUeiajlmvyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60634943"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60634943"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:58:29 -0700
X-CSE-ConnectionGUID: N/EE/BjnRFWbOoX5MgTAaQ==
X-CSE-MsgGUID: +sC2r01pT72td3XJE72BIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="201989936"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa001.jf.intel.com with ESMTP; 06 Aug 2025 09:58:27 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, tobias.boehm@hetzner-cloud.de,
 marcus.wichelmann@hetzner-cloud.de,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed,  6 Aug 2025 18:58:19 +0200
Message-Id: <20250806165819.2162027-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499510; x=1786035510;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Jtywj7U0x1vz2tVy17r+y6IHA2w5Bme0QBMXBLn6Afw=;
 b=lpncdyqetPMvfC2D/v606UKVwPH/xdXJ3kLO0BoYbvs3dmzMD/Ep8url
 Wgz9MjYTYPxN1StDZoj5l4Pn/tv1CZLdO9wkjHy9ntJaHV+R8hkIncqJg
 aviev2ZubHHeiLMdv5Tzkyh0sdeeX0FhEBjqTqJKGPXlx0SByNzc46sTp
 hVXZELIXgrBD+vJdm+aeMrwgBxhnSPNJmx9IHz6Wn1ugPdDGf4/g9pjWF
 238flSrtR5+a/JF7zshmtajbl8OOtqmOmssHGYPFRkkbc87JNrJjz5nus
 zyf2qmaRC+pvkG3nnrz/BtZykzWQ6TBzgL9RzoBQ6EyKsGy1rU1Aq0viM
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lpncdyqe
Subject: [Intel-wired-lan] [PATCH v2 iwl-net] ixgbe: fix ndo_xdp_xmit()
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
there is anything to be transmitted (considering both Tx and XDP rings)
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
routine, but adjust it to not execute for XDP rings.

Cc: Tobias Böhm <tobias.boehm@hetzner-cloud.de>
Reported-by: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
Closes: https://lore.kernel.org/netdev/eca1880f-253a-4955-afe6-732d7c6926ee@hetzner-cloud.de/
Fixes: 6453073987ba ("ixgbe: add initial support for xdp redirect")
Fixes: 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Tested-by: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
v1->v2:
* collect tags
* fix typos (Dawid)
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 34 ++++++-------------
 1 file changed, 11 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 03d31e5b131d..7c0db3b3ee8e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -967,10 +967,6 @@ static void ixgbe_update_xoff_rx_lfc(struct ixgbe_adapter *adapter)
 	for (i = 0; i < adapter->num_tx_queues; i++)
 		clear_bit(__IXGBE_HANG_CHECK_ARMED,
 			  &adapter->tx_ring[i]->state);
-
-	for (i = 0; i < adapter->num_xdp_queues; i++)
-		clear_bit(__IXGBE_HANG_CHECK_ARMED,
-			  &adapter->xdp_ring[i]->state);
 }
 
 static void ixgbe_update_xoff_received(struct ixgbe_adapter *adapter)
@@ -1264,10 +1260,13 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
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
@@ -1275,16 +1274,14 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
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
@@ -1297,9 +1294,6 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
 		return true;
 	}
 
-	if (ring_is_xdp(tx_ring))
-		return !!budget;
-
 #define TX_WAKE_THRESHOLD (DESC_NEEDED * 2)
 	txq = netdev_get_tx_queue(tx_ring->netdev, tx_ring->queue_index);
 	if (!__netif_txq_completed_wake(txq, total_packets, total_bytes,
@@ -7796,12 +7790,9 @@ static void ixgbe_check_hang_subtask(struct ixgbe_adapter *adapter)
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
@@ -8016,13 +8007,6 @@ static bool ixgbe_ring_tx_pending(struct ixgbe_adapter *adapter)
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
 
@@ -10825,6 +10809,10 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
 	if (unlikely(test_bit(__IXGBE_DOWN, &adapter->state)))
 		return -ENETDOWN;
 
+	if (!netif_carrier_ok(adapter->netdev) ||
+	    !netif_running(adapter->netdev))
+		return -ENETDOWN;
+
 	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
 		return -EINVAL;
 
-- 
2.38.1


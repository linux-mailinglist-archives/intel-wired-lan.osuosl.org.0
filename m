Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2410A1F3CCC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 15:40:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C31ED88787;
	Tue,  9 Jun 2020 13:40:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o5ajL41ZG+bC; Tue,  9 Jun 2020 13:40:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3138E88796;
	Tue,  9 Jun 2020 13:40:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06CC61BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 13:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 01DE485A57
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 13:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z96QmYI6MesZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jun 2020 13:40:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 15C5485108
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 13:40:38 +0000 (UTC)
IronPort-SDR: 3UjOJOSFgnfnd9rE6sOOdb7qXBM+mDCwvo122B+J4osNyKr2sUOP66DWdJOd58qUWqhns9kZ7G
 THh9Nl1PPlqA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 06:40:37 -0700
IronPort-SDR: W8IY8ewGYUQfdlLDPA4gDV6c29NM1Bs+tnTCOdwi+FpyEFhBO0lRDWElP7UmVp2IlqROkJFhny
 AfqZPRbo6Kgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,492,1583222400"; d="scan'208";a="295837398"
Received: from silpixa00399839.ir.intel.com (HELO localhost.localdomain)
 ([10.237.222.8])
 by fmsmga004.fm.intel.com with ESMTP; 09 Jun 2020 06:40:35 -0700
From: Ciara Loftus <ciara.loftus@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Jun 2020 13:19:43 +0000
Message-Id: <20200609131945.18373-1-ciara.loftus@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 1/3] ixgbe: protect ring accesses with
 READ- and WRITE_ONCE
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
Cc: netdev@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

READ_ONCE should be used when reading rings prior to accessing the
statistics pointer. Introduce this as well as the corresponding WRITE_ONCE
usage when allocating and freeing the rings, to ensure protected access.

Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  | 12 ++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 14 +++++++++++---
 2 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
index fd9f5d41b594..2e35c5706cf1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
@@ -921,7 +921,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
 		ring->queue_index = txr_idx;
 
 		/* assign ring to adapter */
-		adapter->tx_ring[txr_idx] = ring;
+		WRITE_ONCE(adapter->tx_ring[txr_idx], ring);
 
 		/* update count and index */
 		txr_count--;
@@ -948,7 +948,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
 		set_ring_xdp(ring);
 
 		/* assign ring to adapter */
-		adapter->xdp_ring[xdp_idx] = ring;
+		WRITE_ONCE(adapter->xdp_ring[xdp_idx], ring);
 
 		/* update count and index */
 		xdp_count--;
@@ -991,7 +991,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
 		ring->queue_index = rxr_idx;
 
 		/* assign ring to adapter */
-		adapter->rx_ring[rxr_idx] = ring;
+		WRITE_ONCE(adapter->rx_ring[rxr_idx], ring);
 
 		/* update count and index */
 		rxr_count--;
@@ -1020,13 +1020,13 @@ static void ixgbe_free_q_vector(struct ixgbe_adapter *adapter, int v_idx)
 
 	ixgbe_for_each_ring(ring, q_vector->tx) {
 		if (ring_is_xdp(ring))
-			adapter->xdp_ring[ring->queue_index] = NULL;
+			WRITE_ONCE(adapter->xdp_ring[ring->queue_index], NULL);
 		else
-			adapter->tx_ring[ring->queue_index] = NULL;
+			WRITE_ONCE(adapter->tx_ring[ring->queue_index], NULL);
 	}
 
 	ixgbe_for_each_ring(ring, q_vector->rx)
-		adapter->rx_ring[ring->queue_index] = NULL;
+		WRITE_ONCE(adapter->rx_ring[ring->queue_index], NULL);
 
 	adapter->q_vector[v_idx] = NULL;
 	napi_hash_del(&q_vector->napi);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index f162b8b8f345..97a423ecf808 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7051,7 +7051,10 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
 	}
 
 	for (i = 0; i < adapter->num_rx_queues; i++) {
-		struct ixgbe_ring *rx_ring = adapter->rx_ring[i];
+		struct ixgbe_ring *rx_ring = READ_ONCE(adapter->rx_ring[i]);
+
+		if (!rx_ring)
+			continue;
 		non_eop_descs += rx_ring->rx_stats.non_eop_descs;
 		alloc_rx_page += rx_ring->rx_stats.alloc_rx_page;
 		alloc_rx_page_failed += rx_ring->rx_stats.alloc_rx_page_failed;
@@ -7072,15 +7075,20 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
 	packets = 0;
 	/* gather some stats to the adapter struct that are per queue */
 	for (i = 0; i < adapter->num_tx_queues; i++) {
-		struct ixgbe_ring *tx_ring = adapter->tx_ring[i];
+		struct ixgbe_ring *tx_ring = READ_ONCE(adapter->tx_ring[i]);
+
+		if (!tx_ring)
+			continue;
 		restart_queue += tx_ring->tx_stats.restart_queue;
 		tx_busy += tx_ring->tx_stats.tx_busy;
 		bytes += tx_ring->stats.bytes;
 		packets += tx_ring->stats.packets;
 	}
 	for (i = 0; i < adapter->num_xdp_queues; i++) {
-		struct ixgbe_ring *xdp_ring = adapter->xdp_ring[i];
+		struct ixgbe_ring *xdp_ring = READ_ONCE(adapter->xdp_ring[i]);
 
+		if (!xdp_ring)
+			continue;
 		restart_queue += xdp_ring->tx_stats.restart_queue;
 		tx_busy += xdp_ring->tx_stats.tx_busy;
 		bytes += xdp_ring->stats.bytes;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

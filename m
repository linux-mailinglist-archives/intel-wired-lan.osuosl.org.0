Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4276C2117D9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 03:27:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0A3A8ACE5;
	Thu,  2 Jul 2020 01:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K6WELU9hCApN; Thu,  2 Jul 2020 01:27:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5656C8AD9C;
	Thu,  2 Jul 2020 01:27:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF1B21BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 01:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EAA9F89319
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 01:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Dgqeh9mqWTz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 01:27:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6ED6C89317
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 01:27:00 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5653A20C56;
 Thu,  2 Jul 2020 01:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593653220;
 bh=PeKvIN1kjCHm+SwAwXuvBKYp1u9GRzDXbVJh2Y8Q7CU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jy6ej8OgPUwk5kvktOTrs0LNBoElS6STMy3XQrt9RsrA8sTiKS9fvr2rosyk+fl56
 va/OBfUuDuE9eym4hEGf05pWiOUSes8T+K1MBr/g5q6H2nFErJ9h93kFUsW4MyFoN0
 SpdC1ZeVOJUTNBc+r3OmcWQo2aGjdKzYgTwzFXLg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed,  1 Jul 2020 21:26:40 -0400
Message-Id: <20200702012649.2701799-8-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200702012649.2701799-1-sashal@kernel.org>
References: <20200702012649.2701799-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 4.14 08/17] ixgbe: protect ring
 accesses with READ- and WRITE_ONCE
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ciara Loftus <ciara.loftus@intel.com>

[ Upstream commit f140ad9fe2ae16f385f8fe4dc9cf67bb4c51d794 ]

READ_ONCE should be used when reading rings prior to accessing the
statistics pointer. Introduce this as well as the corresponding WRITE_ONCE
usage when allocating and freeing the rings, to ensure protected access.

Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  | 12 ++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 14 +++++++++++---
 2 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
index f1bfae0c41d0c..3cf8b3ea43b08 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
@@ -917,7 +917,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
 			ring->queue_index = txr_idx;
 
 		/* assign ring to adapter */
-		adapter->tx_ring[txr_idx] = ring;
+		WRITE_ONCE(adapter->tx_ring[txr_idx], ring);
 
 		/* update count and index */
 		txr_count--;
@@ -944,7 +944,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
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
index 64ee45b6680a0..9c3fa0b555519 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6842,7 +6842,10 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
 	}
 
 	for (i = 0; i < adapter->num_rx_queues; i++) {
-		struct ixgbe_ring *rx_ring = adapter->rx_ring[i];
+		struct ixgbe_ring *rx_ring = READ_ONCE(adapter->rx_ring[i]);
+
+		if (!rx_ring)
+			continue;
 		non_eop_descs += rx_ring->rx_stats.non_eop_descs;
 		alloc_rx_page_failed += rx_ring->rx_stats.alloc_rx_page_failed;
 		alloc_rx_buff_failed += rx_ring->rx_stats.alloc_rx_buff_failed;
@@ -6861,15 +6864,20 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
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
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

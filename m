Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4262DD9D9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Dec 2020 21:24:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BC0F32E2E0;
	Thu, 17 Dec 2020 20:24:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aexxPTor1Oii; Thu, 17 Dec 2020 20:24:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E5FE22E2E2;
	Thu, 17 Dec 2020 20:24:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 669D41BF418
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6223E87740
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id abzt2Vck5SW0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Dec 2020 20:24:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B6B2187803
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:30 +0000 (UTC)
IronPort-SDR: TUO3MEj6qK3wK8cW27vtuO6w0xJG6zSHz92Aha9w6lDZyBCh5B3diVqcUkuWiVt7yKkuqGf6we
 Kkm98cpkmr+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="155130687"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="155130687"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 12:24:30 -0800
IronPort-SDR: FiY2yt1clrhGS/P0/jtokztIjbHpA5FNnL9lUotG7wVRufTnH4N++T06zUQ7YIb58f7pBENpmD
 wiIviWSgOJ6A==
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="413611939"
Received: from ogmeshki-mobl.amr.corp.intel.com ([10.212.162.252])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 12:24:30 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Dec 2020 12:24:09 -0800
Message-Id: <20201217202415.77891-5-andre.guedes@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201217202415.77891-1-andre.guedes@intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 04/10] igc: Refactor XDP rxq info
 registration
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch does a refactoring on the XDP rxq info registration code,
preparing the driver for AF_XDP zero-copy support which is added by
upcoming patches.

Currently, xdp_rxq and memory model are both registered during RX
resource setup time by igc_xdp_register_rxq_info() helper. With AF_XDP,
we want to register the memory model later on while configuring the ring
because we will know which memory model type to register
(MEM_TYPE_PAGE_SHARED or MEM_TYPE_XSK_BUFF_POOL).

The helpers igc_xdp_register_rxq_info() and igc_xdp_unregister_rxq_
info() are not useful anymore so they are removed.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 14 ++++++++----
 drivers/net/ethernet/intel/igc/igc_xdp.c  | 27 -----------------------
 drivers/net/ethernet/intel/igc/igc_xdp.h  |  3 ---
 3 files changed, 10 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d591c1e0581f..1870ca37d650 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -419,7 +419,7 @@ void igc_free_rx_resources(struct igc_ring *rx_ring)
 {
 	igc_clean_rx_ring(rx_ring);
 
-	igc_xdp_unregister_rxq_info(rx_ring);
+	xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 
 	vfree(rx_ring->rx_buffer_info);
 	rx_ring->rx_buffer_info = NULL;
@@ -460,9 +460,12 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
 	struct device *dev = rx_ring->dev;
 	int size, desc_len, res;
 
-	res = igc_xdp_register_rxq_info(rx_ring);
-	if (res < 0)
+	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, rx_ring->queue_index,
+			       0);
+	if (res < 0) {
+		netdev_err(ndev, "Failed to register xdp rxq info\n");
 		return res;
+	}
 
 	size = sizeof(struct igc_rx_buffer) * rx_ring->count;
 	rx_ring->rx_buffer_info = vzalloc(size);
@@ -488,7 +491,7 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
 	return 0;
 
 err:
-	igc_xdp_unregister_rxq_info(rx_ring);
+	xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 	vfree(rx_ring->rx_buffer_info);
 	rx_ring->rx_buffer_info = NULL;
 	netdev_err(ndev, "Unable to allocate memory for Rx descriptor ring\n");
@@ -536,6 +539,9 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
 	u32 srrctl = 0, rxdctl = 0;
 	u64 rdba = ring->dma;
 
+	WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
+					   MEM_TYPE_PAGE_SHARED, NULL));
+
 	if (igc_xdp_is_enabled(adapter))
 		set_ring_uses_large_buffer(ring);
 
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index 11133c4619bb..27c886a254f1 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -31,30 +31,3 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 
 	return 0;
 }
-
-int igc_xdp_register_rxq_info(struct igc_ring *ring)
-{
-	struct net_device *dev = ring->netdev;
-	int err;
-
-	err = xdp_rxq_info_reg(&ring->xdp_rxq, dev, ring->queue_index, 0);
-	if (err) {
-		netdev_err(dev, "Failed to register xdp rxq info\n");
-		return err;
-	}
-
-	err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq, MEM_TYPE_PAGE_SHARED,
-					 NULL);
-	if (err) {
-		netdev_err(dev, "Failed to register xdp rxq mem model\n");
-		xdp_rxq_info_unreg(&ring->xdp_rxq);
-		return err;
-	}
-
-	return 0;
-}
-
-void igc_xdp_unregister_rxq_info(struct igc_ring *ring)
-{
-	xdp_rxq_info_unreg(&ring->xdp_rxq);
-}
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.h b/drivers/net/ethernet/intel/igc/igc_xdp.h
index 412aa369e6ba..cdaa2c39b03a 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.h
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.h
@@ -7,9 +7,6 @@
 int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 		     struct netlink_ext_ack *extack);
 
-int igc_xdp_register_rxq_info(struct igc_ring *ring);
-void igc_xdp_unregister_rxq_info(struct igc_ring *ring);
-
 static inline bool igc_xdp_is_enabled(struct igc_adapter *adapter)
 {
 	return !!adapter->xdp_prog;
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

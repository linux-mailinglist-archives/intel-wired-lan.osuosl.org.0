Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC1B3212B5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 10:08:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C7B6838C0;
	Mon, 22 Feb 2021 09:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mZjwvptGqGGN; Mon, 22 Feb 2021 09:08:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3E4E83829;
	Mon, 22 Feb 2021 09:08:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DDE91BF38E
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:08:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0AC846F549
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tIFKTNzIpzWN for <intel-wired-lan@osuosl.org>;
 Mon, 22 Feb 2021 09:08:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A9A8C60590
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:08:22 +0000 (UTC)
IronPort-SDR: c+JWwN/HIWPhswa+4jLARgxnxESw1gXX+yIaA+u/q6hZCUMq2sbO9sBK1g8DSigvzhqV6qW+Ot
 bQOY+Krb1/Kw==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="183661630"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="183661630"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:08:21 -0800
IronPort-SDR: WG1Fc+6hYcRwhGTCI+mCtfypxCruD8WUPIDWTefH+4H/24QF33YGO42kJkiGnmQkTAV+OOx5Ak
 1ztntAW/gjWQ==
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="441321535"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:08:14 -0800
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 22 Feb 2021 01:09:31 -0800
Message-Id: <20210222090936.6768-5-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222090936.6768-1-jithu.joseph@intel.com>
References: <20210222090936.6768-1-jithu.joseph@intel.com>
Subject: [Intel-wired-lan] [PATCH v4 4/9] igc: Refactor XDP rxq info
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
Cc: Andre Guedes <andre.guedes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andre Guedes <andre.guedes@intel.com>

Refactor XDP rxq info registration code, preparing the driver for AF_XDP
zero-copy support which is added by upcoming patches.

Currently, xdp_rxq and memory model are both registered during RX
resource setup time by igc_xdp_register_rxq_info() helper. With AF_XDP,
we want to register the memory model later on while configuring the ring
because we will know which memory model type to register
(MEM_TYPE_PAGE_SHARED or MEM_TYPE_XSK_BUFF_POOL).

The helpers igc_xdp_register_rxq_info() and igc_xdp_unregister_rxq_
info() are not useful anymore so they are removed.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 15 +++++++++----
 drivers/net/ethernet/intel/igc/igc_xdp.c  | 27 -----------------------
 drivers/net/ethernet/intel/igc/igc_xdp.h  |  3 ---
 3 files changed, 11 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index bc086d2f738b..26208441aad3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -419,7 +419,7 @@ void igc_free_rx_resources(struct igc_ring *rx_ring)
 {
 	igc_clean_rx_ring(rx_ring);
 
-	igc_xdp_unregister_rxq_info(rx_ring);
+	xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 
 	vfree(rx_ring->rx_buffer_info);
 	rx_ring->rx_buffer_info = NULL;
@@ -458,11 +458,15 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
 {
 	struct net_device *ndev = rx_ring->netdev;
 	struct device *dev = rx_ring->dev;
+	u8 index = rx_ring->queue_index;
 	int size, desc_len, res;
 
-	res = igc_xdp_register_rxq_info(rx_ring);
-	if (res < 0)
+	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index, 0);
+	if (res < 0) {
+		netdev_err(ndev, "Failed to register xdp_rxq index %u\n",
+			   index);
 		return res;
+	}
 
 	size = sizeof(struct igc_rx_buffer) * rx_ring->count;
 	rx_ring->rx_buffer_info = vzalloc(size);
@@ -488,7 +492,7 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
 	return 0;
 
 err:
-	igc_xdp_unregister_rxq_info(rx_ring);
+	xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 	vfree(rx_ring->rx_buffer_info);
 	rx_ring->rx_buffer_info = NULL;
 	netdev_err(ndev, "Unable to allocate memory for Rx descriptor ring\n");
@@ -536,6 +540,9 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
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
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

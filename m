Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D43432B906
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 16:49:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 105B540117;
	Wed,  3 Mar 2021 15:49:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WOp_nq5o4GEt; Wed,  3 Mar 2021 15:49:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 019F2400EF;
	Wed,  3 Mar 2021 15:49:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 70C311BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 15:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5AAF149B64
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 15:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t3rAXJPM8jDN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Mar 2021 15:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6310F47488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 15:49:37 +0000 (UTC)
IronPort-SDR: dTNKQkmudrVhNXIggswz/IjXS0D9dQ9VJKtj3PCuxF5NKaGAS8yJuhiSTVzVoNlqU41s0A2L1F
 RZENNFtaRy3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="248622873"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="248622873"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 07:49:36 -0800
IronPort-SDR: SUZRltPpa0yDa4lZYiCK+xhLE2qtsTuKrEpoXpl8c6AqiN2uGqMTnoNjqHYWBJaIzPmKJs3XMH
 M3DszcQiQj3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="518322010"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 03 Mar 2021 07:49:34 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Mar 2021 16:39:26 +0100
Message-Id: <20210303153928.11764-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210303153928.11764-1-maciej.fijalkowski@intel.com>
References: <20210303153928.11764-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 1/3] i40e: move headroom
 initialization to i40e_configure_rx_ring
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
Cc: netdev@vger.kernel.org, brouer@redhat.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

i40e_rx_offset(), that is supposed to initialize the Rx buffer headroom,
relies on I40E_RXR_FLAGS_BUILD_SKB_ENABLED flag.

Currently, the callsite of mentioned function is placed incorrectly
within i40e_setup_rx_descriptors() where Rx ring's build skb flag is not
set yet. This causes the XDP_REDIRECT to be partially broken due to
inability to create xdp_frame in the headroom space, as the headroom is
0.

For the record, below is the call graph:

i40e_vsi_open
 i40e_vsi_setup_rx_resources
  i40e_setup_rx_descriptors
   i40e_rx_offset() <-- sets offset to 0 as build_skb flag is set below

 i40e_vsi_configure_rx
  i40e_configure_rx_ring
   set_ring_build_skb_enabled(ring) <-- set build_skb flag

Fix this by moving i40e_rx_offset() to i40e_configure_rx_ring() after
the flag setting.

Fixes: f7bb0d71d658 ("i40e: store the result of i40e_rx_offset() onto i40e_ring")
Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
Co-developed-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 13 +++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 12 ------------
 2 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 2966b4766afd..472750e69259 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3273,6 +3273,17 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
 	return 0;
 }
 
+/**
+ * i40e_rx_offset - Return expected offset into page to access data
+ * @rx_ring: Ring we are requesting offset of
+ *
+ * Returns the offset value for ring into the data buffer.
+ */
+static unsigned int i40e_rx_offset(struct i40e_ring *rx_ring)
+{
+	return ring_uses_build_skb(rx_ring) ? I40E_SKB_PAD : 0;
+}
+
 /**
  * i40e_configure_rx_ring - Configure a receive ring context
  * @ring: The Rx ring to configure
@@ -3387,6 +3398,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 	else
 		set_ring_build_skb_enabled(ring);
 
+	ring->rx_offset = i40e_rx_offset(ring);
+
 	/* cache tail for quicker writes, and clear the reg before use */
 	ring->tail = hw->hw_addr + I40E_QRX_TAIL(pf_q);
 	writel(0, ring->tail);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index b2008f72494d..bffb881f7102 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1569,17 +1569,6 @@ void i40e_free_rx_resources(struct i40e_ring *rx_ring)
 	}
 }
 
-/**
- * i40e_rx_offset - Return expected offset into page to access data
- * @rx_ring: Ring we are requesting offset of
- *
- * Returns the offset value for ring into the data buffer.
- */
-static unsigned int i40e_rx_offset(struct i40e_ring *rx_ring)
-{
-	return ring_uses_build_skb(rx_ring) ? I40E_SKB_PAD : 0;
-}
-
 /**
  * i40e_setup_rx_descriptors - Allocate Rx descriptors
  * @rx_ring: Rx descriptor ring (for a specific queue) to setup
@@ -1608,7 +1597,6 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
 	rx_ring->next_to_alloc = 0;
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
-	rx_ring->rx_offset = i40e_rx_offset(rx_ring);
 
 	/* XDP RX-queue info only needed for RX rings exposed to XDP */
 	if (rx_ring->vsi->type == I40E_VSI_MAIN) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

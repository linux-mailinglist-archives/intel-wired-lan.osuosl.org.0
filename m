Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 962C732B909
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 16:49:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2FB0F49065;
	Wed,  3 Mar 2021 15:49:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6EkhTAOpkVG9; Wed,  3 Mar 2021 15:49:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D32547488;
	Wed,  3 Mar 2021 15:49:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B85E1BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 15:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A41B49065
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 15:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RVxCDUIRmRLP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Mar 2021 15:49:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6429347488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 15:49:42 +0000 (UTC)
IronPort-SDR: BxFnIQ/1EpTAZWuapZ8hSdut3GPTDIFaxKOBPU6+MWb3wMD2ChX2lwtH8QG6tG9ERGjyd+sV2V
 LsnSSTr1nvWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="248622886"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="248622886"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 07:49:42 -0800
IronPort-SDR: 86gi0OMIkXjt6dCztDa0gMgb5OY4fgXTJXIx3DrWTM36X54P+jtgQPq5b/AIKFmUeu51wQsJzo
 wqLvcj9GTgYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="518322023"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 03 Mar 2021 07:49:39 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Mar 2021 16:39:28 +0100
Message-Id: <20210303153928.11764-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210303153928.11764-1-maciej.fijalkowski@intel.com>
References: <20210303153928.11764-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 3/3] ixgbe: move headroom
 initialization to ixgbe_configure_rx_ring
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

ixgbe_rx_offset(), that is supposed to initialize the Rx buffer headroom,
relies on __IXGBE_RX_BUILD_SKB_ENABLED flag.

Currently, the callsite of mentioned function is placed incorrectly
within ixgbe_setup_rx_resources() where Rx ring's build skb flag is not
set yet. This causes the XDP_REDIRECT to be partially broken due to
inability to create xdp_frame in the headroom space, as the headroom is
0.

Fix this by moving ixgbe_rx_offset() to ixgbe_configure_rx_ring() after
the flag setting, which happens to be set in ixgbe_set_rx_buffer_len.

Fixes: c0d4e9d223c5 ("ixgbe: store the result of ixgbe_rx_offset() onto ixgbe_ring")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index fae84202d870..ac0d7a80de0d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -4118,6 +4118,8 @@ void ixgbe_configure_rx_ring(struct ixgbe_adapter *adapter,
 #endif
 	}
 
+	ring->rx_offset = ixgbe_rx_offset(ring);
+
 	if (ring->xsk_pool && hw->mac.type != ixgbe_mac_82599EB) {
 		u32 xsk_buf_len = xsk_pool_get_rx_frame_size(ring->xsk_pool);
 
@@ -6578,7 +6580,6 @@ int ixgbe_setup_rx_resources(struct ixgbe_adapter *adapter,
 
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
-	rx_ring->rx_offset = ixgbe_rx_offset(rx_ring);
 
 	/* XDP RX-queue info */
 	if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

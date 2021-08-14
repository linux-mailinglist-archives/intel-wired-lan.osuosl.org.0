Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 047A53EC332
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Aug 2021 16:23:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F80140410;
	Sat, 14 Aug 2021 14:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v4MYvJ10bTHZ; Sat, 14 Aug 2021 14:23:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8CD44040C;
	Sat, 14 Aug 2021 14:23:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0A531BF593
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Aug 2021 14:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF16A401D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Aug 2021 14:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XpXogYH7o66X for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Aug 2021 14:22:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB82C401B3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Aug 2021 14:22:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10075"; a="276713731"
X-IronPort-AV: E=Sophos;i="5.84,321,1620716400"; d="scan'208";a="276713731"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2021 07:22:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,321,1620716400"; d="scan'208";a="447568433"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga007.fm.intel.com with ESMTP; 14 Aug 2021 07:22:53 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 14 Aug 2021 16:08:04 +0200
Message-Id: <20210814140812.46632-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210814140812.46632-1-maciej.fijalkowski@intel.com>
References: <20210814140812.46632-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v5 intel-next 1/9] ice: remove ring_active
 from ice_ring
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
Cc: joamaki@gmail.com, alexandr.lobakin@intel.com, netdev@vger.kernel.org,
 toke@redhat.com, bjorn@kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This field is dead and driver is not making any use of it. Simply remove
it.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 2 --
 drivers/net/ethernet/intel/ice/ice_main.c | 1 -
 drivers/net/ethernet/intel/ice/ice_txrx.h | 2 --
 3 files changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index dde9802c6c72..12790f07370e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1296,7 +1296,6 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 
 		ring->q_index = i;
 		ring->reg_idx = vsi->txq_map[i];
-		ring->ring_active = false;
 		ring->vsi = vsi;
 		ring->tx_tstamps = &pf->ptp.port.tx;
 		ring->dev = dev;
@@ -1315,7 +1314,6 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 
 		ring->q_index = i;
 		ring->reg_idx = vsi->rxq_map[i];
-		ring->ring_active = false;
 		ring->vsi = vsi;
 		ring->netdev = vsi->netdev;
 		ring->dev = dev;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 60d55d043a94..b8364710f8fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2380,7 +2380,6 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 
 		xdp_ring->q_index = xdp_q_idx;
 		xdp_ring->reg_idx = vsi->txq_map[xdp_q_idx];
-		xdp_ring->ring_active = false;
 		xdp_ring->vsi = vsi;
 		xdp_ring->netdev = NULL;
 		xdp_ring->dev = dev;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 1e46e80f3d6f..d2fd90607b70 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -275,8 +275,6 @@ struct ice_ring {
 	u16 q_index;			/* Queue number of ring */
 	u16 q_handle;			/* Queue handle per TC */
 
-	u8 ring_active:1;		/* is ring online or not */
-
 	u16 count;			/* Number of descriptors */
 	u16 reg_idx;			/* HW register index of the ring */
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

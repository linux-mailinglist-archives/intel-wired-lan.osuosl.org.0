Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 998044D059D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Mar 2022 18:47:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A66A416EA;
	Mon,  7 Mar 2022 17:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bbTKzaEk-eXh; Mon,  7 Mar 2022 17:47:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 061CA416EB;
	Mon,  7 Mar 2022 17:47:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D06901BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 17:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BA481416EA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 17:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rKlX0flEDNW8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Mar 2022 17:47:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18544416E3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 17:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646675263; x=1678211263;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G4rpL32y1sZlYolgjSTtKzYmS1ss1HKDhqbQQWZrjkU=;
 b=k5OGlN3k8hTQCqw2UixW2Ee4nWK7Px/+kCx+h5J4TkEjzO4LBsrfO9NT
 515YLbt51ytrMhM0n6GuRyczHghDrnBpxslZFbYX45z4HFX36a0HVVSku
 yxs9rjGzF39is2vZYC+G+JD/0tONd+OLQyt+v/Qkf1HAWUQSzdsI49LBk
 0Gy9SwLfMNjDi31Vh3EMgj9UwMa9tk1dlc9fi763Le3c/06E7KxiMSX3B
 GrNqtwlBVAQZj76qfTc8TnpLh8UttDrjUAR986ZRgEDgKImemJtxOBs/r
 G0+rHVtsaKcGX5lSZg6o2CqDub9DRg7orMZjIfd9jXS06iY0edviLEuzy g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="254647618"
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="254647618"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 09:47:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="577684539"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga001.jf.intel.com with ESMTP; 07 Mar 2022 09:47:40 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Mar 2022 18:47:39 +0100
Message-Id: <20220307174739.55899-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net] ice: fix NULL pointer
 dereference in ice_update_vsi_tx_ring_stats()
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
Cc: netdev@vger.kernel.org, dan.carpenter@oracle.com, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It is possible to do NULL pointer dereference in routine that updates
Tx ring stats. Currently only stats and bytes are updated when ring
pointer is valid, but later on ring is accessed to propagate gathered Tx
stats onto VSI stats.

Change the existing logic to move to next ring when ring is NULL.

Fixes: e72bba21355d ("ice: split ice_ring onto Tx/Rx separate structs")
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 289e5c99e313..d3f8b6468b92 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6145,8 +6145,9 @@ ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi,
 		u64 pkts = 0, bytes = 0;
 
 		ring = READ_ONCE(rings[i]);
-		if (ring)
-			ice_fetch_u64_stats_per_ring(&ring->syncp, ring->stats, &pkts, &bytes);
+		if (!ring)
+			continue;
+		ice_fetch_u64_stats_per_ring(&ring->syncp, ring->stats, &pkts, &bytes);
 		vsi_stats->tx_packets += pkts;
 		vsi_stats->tx_bytes += bytes;
 		vsi->tx_restart += ring->tx_stats.restart_q;
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

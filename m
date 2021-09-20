Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 773114126EF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Sep 2021 21:32:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C21C404A4;
	Mon, 20 Sep 2021 19:32:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d7sdu-qLTyk5; Mon, 20 Sep 2021 19:32:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BACE400F7;
	Mon, 20 Sep 2021 19:32:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 62C071BF352
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 19:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5266840489
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 19:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXiahz3skL8l for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Sep 2021 19:31:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B019403AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 19:31:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="223252173"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="223252173"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 12:30:25 -0700
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="483931476"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 12:30:23 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Sep 2021 12:30:13 -0700
Message-Id: <20210920193014.1148084-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210920193014.1148084-1-jesse.brandeburg@intel.com>
References: <20210920193014.1148084-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v4 2/3] ice: fix rate limit
 update after coalesce change
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

If the adaptive settings are changed with
ethtool -C ethx adaptive-rx off adaptive-tx off
then the interrupt rate limit should be maintained as a user set value,
but only if BOTH adaptive settings are off. Fix a bug where the rate
limit that was being used in adaptive mode was staying set in the
register but was not reported correctly by ethtool -c ethx. Due to long
lines include a small refactor of q_vector variable.

Fixes: b8b4772377dd ("ice: refactor interrupt moderation writes")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 17 +++++++++++------
 drivers/net/ethernet/intel/ice/ice_lib.c     |  4 ++--
 2 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 6e0af72c2020..f4b3c5b73c7d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3640,6 +3640,9 @@ ice_set_rc_coalesce(struct ethtool_coalesce *ec,
 
 	switch (rc->type) {
 	case ICE_RX_CONTAINER:
+	{
+		struct ice_q_vector *q_vector = rc->rx_ring->q_vector;
+
 		if (ec->rx_coalesce_usecs_high > ICE_MAX_INTRL ||
 		    (ec->rx_coalesce_usecs_high &&
 		     ec->rx_coalesce_usecs_high < pf->hw.intrl_gran)) {
@@ -3648,22 +3651,20 @@ ice_set_rc_coalesce(struct ethtool_coalesce *ec,
 				    ICE_MAX_INTRL);
 			return -EINVAL;
 		}
-		if (ec->rx_coalesce_usecs_high != rc->rx_ring->q_vector->intrl &&
+		if (ec->rx_coalesce_usecs_high != q_vector->intrl &&
 		    (ec->use_adaptive_rx_coalesce || ec->use_adaptive_tx_coalesce)) {
 			netdev_info(vsi->netdev, "Invalid value, %s-usecs-high cannot be changed if adaptive-tx or adaptive-rx is enabled\n",
 				    c_type_str);
 			return -EINVAL;
 		}
-		if (ec->rx_coalesce_usecs_high != rc->rx_ring->q_vector->intrl) {
-			rc->rx_ring->q_vector->intrl = ec->rx_coalesce_usecs_high;
-			ice_write_intrl(rc->rx_ring->q_vector,
-					ec->rx_coalesce_usecs_high);
-		}
+		if (ec->rx_coalesce_usecs_high != q_vector->intrl)
+			q_vector->intrl = ec->rx_coalesce_usecs_high;
 
 		use_adaptive_coalesce = ec->use_adaptive_rx_coalesce;
 		coalesce_usecs = ec->rx_coalesce_usecs;
 
 		break;
+	}
 	case ICE_TX_CONTAINER:
 		use_adaptive_coalesce = ec->use_adaptive_tx_coalesce;
 		coalesce_usecs = ec->tx_coalesce_usecs;
@@ -3808,6 +3809,8 @@ __ice_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 
 			if (ice_set_q_coalesce(vsi, ec, v_idx))
 				return -EINVAL;
+
+			ice_set_q_vector_intrl(vsi->q_vectors[v_idx]);
 		}
 		goto set_complete;
 	}
@@ -3815,6 +3818,8 @@ __ice_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 	if (ice_set_q_coalesce(vsi, ec, q_num))
 		return -EINVAL;
 
+	ice_set_q_vector_intrl(vsi->q_vectors[q_num]);
+
 set_complete:
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 97610ea3a1a8..a23825e7f361 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3123,7 +3123,7 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
 		}
 
 		vsi->q_vectors[i]->intrl = coalesce[i].intrl;
-		ice_write_intrl(vsi->q_vectors[i], coalesce[i].intrl);
+		ice_set_q_vector_intrl(vsi->q_vectors[i]);
 	}
 
 	/* the number of queue vectors increased so write whatever is in
@@ -3141,7 +3141,7 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
 		ice_write_itr(rc, rc->itr_setting);
 
 		vsi->q_vectors[i]->intrl = coalesce[0].intrl;
-		ice_write_intrl(vsi->q_vectors[i], coalesce[0].intrl);
+		ice_set_q_vector_intrl(vsi->q_vectors[i]);
 	}
 }
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

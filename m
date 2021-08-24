Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84ED63F5564
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 03:13:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E51FD400E6;
	Tue, 24 Aug 2021 01:13:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cYFXUUYRdJty; Tue, 24 Aug 2021 01:13:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B26214023C;
	Tue, 24 Aug 2021 01:13:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C13B1BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 01:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A81D40402
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 01:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0lc26S0zBpSU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Aug 2021 01:13:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA6D0403C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 01:13:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="214085351"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="214085351"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 18:13:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="685025449"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 18:13:13 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 23 Aug 2021 18:12:58 -0700
Message-Id: <20210824011259.738307-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210824011259.738307-1-jesse.brandeburg@intel.com>
References: <20210824011259.738307-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 2/3] ice: fix rate limit
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
---
v3: merged with tx_ring/rx_ring split series.
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 17 +++++++++++------
 drivers/net/ethernet/intel/ice/ice_lib.c     |  4 ++--
 2 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index cf6b1fbef584..3b3dfa13c54f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3638,6 +3638,9 @@ ice_set_rc_coalesce(struct ethtool_coalesce *ec,
 
 	switch (rc->type) {
 	case ICE_RX_CONTAINER:
+	{
+		struct ice_q_vector *q_vector = rc->rx_ring->q_vector;
+
 		if (ec->rx_coalesce_usecs_high > ICE_MAX_INTRL ||
 		    (ec->rx_coalesce_usecs_high &&
 		     ec->rx_coalesce_usecs_high < pf->hw.intrl_gran)) {
@@ -3646,22 +3649,20 @@ ice_set_rc_coalesce(struct ethtool_coalesce *ec,
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
@@ -3806,6 +3807,8 @@ __ice_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 
 			if (ice_set_q_coalesce(vsi, ec, v_idx))
 				return -EINVAL;
+
+			ice_set_q_vector_intrl(vsi->q_vectors[v_idx]);
 		}
 		goto set_complete;
 	}
@@ -3813,6 +3816,8 @@ __ice_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 	if (ice_set_q_coalesce(vsi, ec, q_num))
 		return -EINVAL;
 
+	ice_set_q_vector_intrl(vsi->q_vectors[q_num]);
+
 set_complete:
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 28240b9f83e5..ef540c7f7a5a 100644
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

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0683F209E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 21:30:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A910740169;
	Thu, 19 Aug 2021 19:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5xSuGeNfOfJ6; Thu, 19 Aug 2021 19:30:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26D38404D8;
	Thu, 19 Aug 2021 19:30:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E4921BF59F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 330F742504
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HNs-DkpZicSi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 19:30:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 719E442501
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:30:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="216665555"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="216665555"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 12:30:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="451749603"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 12:29:59 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 12:29:58 -0700
Message-Id: <20210819192959.590146-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210819192959.590146-1-jesse.brandeburg@intel.com>
References: <20210819192959.590146-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 2/3] ice-linux: fix rate limit
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
then the interrupt rate limit should be maintained as a user set
value, but only if BOTH adaptive settings are off. Fix a bug
where the rate limit that was being used in adaptive mode was
staying set in the register but was not reported correctly by
ethtool -c ethx.

Fixes: b8b4772377dd ("ice: refactor interrupt moderation writes")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 9 +++++----
 drivers/net/ethernet/intel/ice/ice_lib.c     | 4 ++--
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 54ccba8992ee..d5777a8cd779 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3657,11 +3657,8 @@ ice_set_rc_coalesce(enum ice_container_type c_type, struct ethtool_coalesce *ec,
 				    c_type_str);
 			return -EINVAL;
 		}
-		if (ec->rx_coalesce_usecs_high != rc->ring->q_vector->intrl) {
+		if (ec->rx_coalesce_usecs_high != rc->ring->q_vector->intrl)
 			rc->ring->q_vector->intrl = ec->rx_coalesce_usecs_high;
-			ice_write_intrl(rc->ring->q_vector,
-					ec->rx_coalesce_usecs_high);
-		}
 
 		use_adaptive_coalesce = ec->use_adaptive_rx_coalesce;
 		coalesce_usecs = ec->rx_coalesce_usecs;
@@ -3811,6 +3808,8 @@ __ice_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 
 			if (ice_set_q_coalesce(vsi, ec, v_idx))
 				return -EINVAL;
+
+			ice_set_q_vector_intrl(vsi->q_vectors[v_idx]);
 		}
 		goto set_complete;
 	}
@@ -3818,6 +3817,8 @@ __ice_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 	if (ice_set_q_coalesce(vsi, ec, q_num))
 		return -EINVAL;
 
+	ice_set_q_vector_intrl(vsi->q_vectors[q_num]);
+
 set_complete:
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index b71ca3e7ea19..69760bcf2bd3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3109,7 +3109,7 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
 		}
 
 		vsi->q_vectors[i]->intrl = coalesce[i].intrl;
-		ice_write_intrl(vsi->q_vectors[i], coalesce[i].intrl);
+		ice_set_q_vector_intrl(vsi->q_vectors[i]);
 	}
 
 	/* the number of queue vectors increased so write whatever is in
@@ -3127,7 +3127,7 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
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

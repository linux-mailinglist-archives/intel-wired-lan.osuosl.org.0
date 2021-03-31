Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA2F350917
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:27:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCFDA4046E;
	Wed, 31 Mar 2021 21:27:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fn0Q32HMbgEa; Wed, 31 Mar 2021 21:27:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD43240466;
	Wed, 31 Mar 2021 21:27:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7236A1BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00823406B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNeXAz8a1zBn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:26:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F413840EE6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
IronPort-SDR: J3EQ3JVkHVyZG6rLEpOqKjCTMY9AKmPfhmLSASPdbAE2rmmKJoJQawmUDLB18RqsNadUwqOrUK
 0MHjTwg+5DMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="256078729"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="256078729"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:53 -0700
IronPort-SDR: 967STydjOfAB6dvHCJPN+4jfG8JrZLf+89iVilBCCCdnqmM3k2ti1Cn1WzksMv1NMfMBUfD/Xf
 toU0PWTgTtWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="445819647"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2021 14:26:51 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 14:17:07 -0700
Message-Id: <20210331211708.55205-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S58 12/13] ice: remove return variable
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

From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

We were saving the return value from ice_vsi_manage_rss_lut(), but
the errors from that function are not critical so change it to
return void and remove the code that saved the value.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 8 +++-----
 drivers/net/ethernet/intel/ice/ice_lib.h  | 2 +-
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 3 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index c379b4ddffbd..29284c7d49b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1312,14 +1312,13 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
  * LUT, while in the event of enable request for RSS, it will reconfigure RSS
  * LUT.
  */
-int ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena)
+void ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena)
 {
-	int err = 0;
 	u8 *lut;
 
 	lut = kzalloc(vsi->rss_table_size, GFP_KERNEL);
 	if (!lut)
-		return -ENOMEM;
+		return;
 
 	if (ena) {
 		if (vsi->rss_lut_user)
@@ -1329,9 +1328,8 @@ int ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena)
 					 vsi->rss_size);
 	}
 
-	err = ice_set_rss_lut(vsi, lut, vsi->rss_table_size);
+	ice_set_rss_lut(vsi, lut, vsi->rss_table_size);
 	kfree(lut);
-	return err;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 7775f1e36474..e5c46213b0b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -89,7 +89,7 @@ void ice_vsi_free_rx_rings(struct ice_vsi *vsi);
 
 void ice_vsi_free_tx_rings(struct ice_vsi *vsi);
 
-int ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena);
+void ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena);
 
 void ice_update_tx_ring_stats(struct ice_ring *ring, u64 pkts, u64 bytes);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1f88faab3ada..d470eb74086f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5132,10 +5132,10 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 	 * separate if/else statements to guarantee each feature is checked
 	 */
 	if (features & NETIF_F_RXHASH && !(netdev->features & NETIF_F_RXHASH))
-		ret = ice_vsi_manage_rss_lut(vsi, true);
+		ice_vsi_manage_rss_lut(vsi, true);
 	else if (!(features & NETIF_F_RXHASH) &&
 		 netdev->features & NETIF_F_RXHASH)
-		ret = ice_vsi_manage_rss_lut(vsi, false);
+		ice_vsi_manage_rss_lut(vsi, false);
 
 	if ((features & NETIF_F_HW_VLAN_CTAG_RX) &&
 	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

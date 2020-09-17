Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E120926E681
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 22:19:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E94D8774C;
	Thu, 17 Sep 2020 20:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TVyscEq3QkXH; Thu, 17 Sep 2020 20:19:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3FDE8772A;
	Thu, 17 Sep 2020 20:19:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 122E71BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0ED5F8772A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wjLHcxVZhL5w for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E38887734
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
IronPort-SDR: te8KYG85tmGGdy4LFn4pWE9gqEcZ35+iuWX9VUnqki0CJhZ4pNC+Z4EVzbNYLlOisX892gUUmc
 x/olSO+5hP7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="160711585"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="160711585"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:19:14 -0700
IronPort-SDR: kbmhGrOnOxUtbQnyM6Y3OSb2sGU7hLZA9QB8vCVGq3/Sv+FlyOndD6VQnaGZKFQs/v+VmScDSt
 E5Ns5fbm+wbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="508574693"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 17 Sep 2020 13:19:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Sep 2020 13:13:43 -0700
Message-Id: <20200917201347.81570-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S53 11/15] ice: Remove vlan_ena from vsi
 structure
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

From: Nick Nunley <nicholas.d.nunley@intel.com>

vlan_ena was introduced to track whether VLAN filters are enabled on
the device, but
1) checking for num_vlan > 1 already gives us this information, and is
currently used in this way throughout the code
2) the logic for vlan_ena is broken when multiple VLANS are active

Just remove vlan_ena and use num_vlan instead.

Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  1 -
 drivers/net/ethernet/intel/ice/ice_main.c | 11 ++++-------
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index b0ff591dba54..dc96f4baabb9 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -308,7 +308,6 @@ struct ice_vsi {
 	u8 irqs_ready:1;
 	u8 current_isup:1;		 /* Sync 'link up' logging */
 	u8 stat_offsets_loaded:1;
-	u8 vlan_ena:1;
 	u16 num_vlan;
 
 	/* queue information */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e626937c5e83..ac1fc443d9f5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -224,7 +224,7 @@ static int ice_cfg_promisc(struct ice_vsi *vsi, u8 promisc_m, bool set_promisc)
 	if (vsi->type != ICE_VSI_PF)
 		return 0;
 
-	if (vsi->vlan_ena) {
+	if (vsi->num_vlan > 1) {
 		status = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_m,
 						  set_promisc);
 	} else {
@@ -326,7 +326,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	/* check for changes in promiscuous modes */
 	if (changed_flags & IFF_ALLMULTI) {
 		if (vsi->current_netdev_flags & IFF_ALLMULTI) {
-			if (vsi->vlan_ena)
+			if (vsi->num_vlan > 1)
 				promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
 			else
 				promisc_m = ICE_MCAST_PROMISC_BITS;
@@ -340,7 +340,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 			}
 		} else {
 			/* !(vsi->current_netdev_flags & IFF_ALLMULTI) */
-			if (vsi->vlan_ena)
+			if (vsi->num_vlan > 1)
 				promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
 			else
 				promisc_m = ICE_MCAST_PROMISC_BITS;
@@ -3117,10 +3117,8 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
 	 * packets aren't pruned by the device's internal switch on Rx
 	 */
 	ret = ice_vsi_add_vlan(vsi, vid, ICE_FWD_TO_VSI);
-	if (!ret) {
-		vsi->vlan_ena = true;
+	if (!ret)
 		set_bit(ICE_VSI_FLAG_VLAN_FLTR_CHANGED, vsi->flags);
-	}
 
 	return ret;
 }
@@ -3159,7 +3157,6 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
 	if (vsi->num_vlan == 1 && ice_vsi_is_vlan_pruning_ena(vsi))
 		ret = ice_cfg_vlan_pruning(vsi, false, false);
 
-	vsi->vlan_ena = false;
 	set_bit(ICE_VSI_FLAG_VLAN_FLTR_CHANGED, vsi->flags);
 	return ret;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

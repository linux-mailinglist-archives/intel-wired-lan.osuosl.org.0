Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E954BC150
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Feb 2022 21:42:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBB1784C8F;
	Fri, 18 Feb 2022 20:42:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IUJmalS4Xwd2; Fri, 18 Feb 2022 20:42:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C213284C71;
	Fri, 18 Feb 2022 20:42:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2AE4E1BF34B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 20:42:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 241704022E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 20:42:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id udzMTNLl9RqE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Feb 2022 20:42:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16D7340114
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 20:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645216946; x=1676752946;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=naBmKrRrJ3oc8KTLZONOg+B9wefDZXDONNzm2+n7O/k=;
 b=NzyPwm+h0f66rchK7MOsb9+rbB3ckjiPrahI7VwH4CFJz/K+byUbbv03
 V1mC+v0WHXJiQDVAvnwD9GI98IppGi725+NmtMBOoVBkoAMFIvGlLmacT
 xdkIypHRM2GZF7dnbSNI+vRwW9UmtTAXBFxWJ8yOuT6hk41bHHnO9iLEp
 kuXhyqOHiW2e7NbbwfQek+cSzM/0+vZibzK0mkkVYnkWxjU0PNwRIWTOa
 XRDVQU4/hDn0Xrw/soK5Ycqcb70ufdzZgMIF11kGmFtq1JYUGys7l2So4
 g+Q2+cErmzga+vHDGg7OaVYE99qwTJmTVUSGHrhzOHKi64umOX7FyUiVX w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="250971074"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="250971074"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 12:42:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="506865861"
Received: from dmert-dev.jf.intel.com ([10.166.241.5])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 12:42:24 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Feb 2022 12:39:25 -0800
Message-Id: <20220218203925.1890573-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix error with handling of
 bonding MTU
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

When a bonded interface is destroyed, .ndo_change_mtu can be called
during the tear-down process while the RTNL lock is held.  This is a
problem since the auxiliary driver linked to the LAN driver needs to be
notified of the MTU change, and this requires grabbing a device_lock on
the auxiliary_device's dev.  Currently this is being attempted in the
same execution context as the call to .ndo_change_mtu which is causing a
dead-lock.

Move the notification of the changed MTU to a separate execution context
(watchdog service task) and eliminate the "before" notification.

Fixes: 348048e724a0e ("ice: Implement iidc operations")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
v2: target change from net-next to net
---
 drivers/net/ethernet/intel/ice/ice.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c | 29 +++++++++++------------
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index a9fa701aaa95..058334db37a9 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -484,6 +484,7 @@ enum ice_pf_flags {
 	ICE_FLAG_MDD_AUTO_RESET_VF,
 	ICE_FLAG_LINK_LENIENT_MODE_ENA,
 	ICE_FLAG_PLUG_AUX_DEV,
+	ICE_FLAG_MTU_CHANGED,
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 17a9bb461dc3..d47d00c5b456 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2256,6 +2256,17 @@ static void ice_service_task(struct work_struct *work)
 	if (test_and_clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags))
 		ice_plug_aux_dev(pf);
 
+	if (test_and_clear_bit(ICE_FLAG_MTU_CHANGED, pf->flags)) {
+		struct iidc_event *event;
+
+		event = kzalloc(sizeof(*event), GFP_KERNEL);
+		if (event) {
+			set_bit(IIDC_EVENT_AFTER_MTU_CHANGE, event->type);
+			ice_send_event_to_aux(pf, event);
+			kfree(event);
+		}
+	}
+
 	ice_clean_adminq_subtask(pf);
 	ice_check_media_subtask(pf);
 	ice_check_for_hang_subtask(pf);
@@ -6820,7 +6831,6 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
-	struct iidc_event *event;
 	u8 count = 0;
 	int err = 0;
 
@@ -6855,14 +6865,6 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 		return -EBUSY;
 	}
 
-	event = kzalloc(sizeof(*event), GFP_KERNEL);
-	if (!event)
-		return -ENOMEM;
-
-	set_bit(IIDC_EVENT_BEFORE_MTU_CHANGE, event->type);
-	ice_send_event_to_aux(pf, event);
-	clear_bit(IIDC_EVENT_BEFORE_MTU_CHANGE, event->type);
-
 	netdev->mtu = (unsigned int)new_mtu;
 
 	/* if VSI is up, bring it down and then back up */
@@ -6870,21 +6872,18 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 		err = ice_down(vsi);
 		if (err) {
 			netdev_err(netdev, "change MTU if_down err %d\n", err);
-			goto event_after;
+			return err;
 		}
 
 		err = ice_up(vsi);
 		if (err) {
 			netdev_err(netdev, "change MTU if_up err %d\n", err);
-			goto event_after;
+			return err;
 		}
 	}
 
 	netdev_dbg(netdev, "changed MTU to %d\n", new_mtu);
-event_after:
-	set_bit(IIDC_EVENT_AFTER_MTU_CHANGE, event->type);
-	ice_send_event_to_aux(pf, event);
-	kfree(event);
+	set_bit(ICE_FLAG_MTU_CHANGED, pf->flags);
 
 	return err;
 }
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1AC492FE9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jan 2022 22:10:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E080440159;
	Tue, 18 Jan 2022 21:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0XodevV2rcKV; Tue, 18 Jan 2022 21:10:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 997D1400E4;
	Tue, 18 Jan 2022 21:10:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F82B1BF33E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 21:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 69738414C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 21:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4XsjBYCC28Wk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jan 2022 21:10:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF59C4149F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 21:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642540211; x=1674076211;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MpgpPygGP6lB8D7oVEG6HUClwVhm+qVXB3vZc1++irI=;
 b=JQj+jpWL0tiWoRZjX7ttZ9HW/zvPcKLayn7U+Y89VcTaHLlJdfAtVxnq
 19La6muXLcwXkzAlNIeNvlWu213Ewt7pObcUSejrhfi8FRr4xGGHTHAWW
 L1m9hQsj6Ku1c5FRDa5WnLTBDmQKnFyq9EXq+6pcYCQ80L3MShf1sB3UQ
 c98XfWPYkBBBT0DJpXJCRS4eU4fcyyLi2hakEs+3T8b3MRhexyVY3OwWD
 PandqgvCJyDA3jnvdNNWNrok5Y0wXj+RXxcDfBdXte2icYQO6AuvslSw5
 oCt7aQNzZPVpb5m9Mh3CU5L7zygRNeU5U3NXK7LmL3edQPTAkDUVZ0wSx g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="224893376"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="224893376"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 13:10:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="477123011"
Received: from dmert-dev.jf.intel.com ([10.166.241.5])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 13:10:07 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Jan 2022 13:08:20 -0800
Message-Id: <20220118210820.1055792-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix KASAN error in LAG
 NETDEV_UNREGISTER handler
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

Currently, the same handler is called for both a NETDEV_BONDING_INFO
LAG unlink notification as for a NETDEV_UNREGISTER call.  This is
causing a problem though, since the netdev_notifier_info passed has
a different structure depending on which event is passed.  The problem
manifests as a call trace from a BUG: KASAN stack-out-of-bounds error.

Fix this by creating a handler specific to NETDEV_UNREGISTER that only
is passed valid elements in the netdev_notifier_info struct for the
NETDEV_UNREGISTER event.

Also included is the removal of an unbalanced dev_put on the peer_netdev
and related braces.

Fixes: 6a8b357278f5 ("ice: Respond to a NETDEV_UNREGISTER event for LAG")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

---

v2: also remove unneeded if block
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 34 +++++++++++++++++++-----
 1 file changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index e375ac849aec..4f954db01b92 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -204,17 +204,39 @@ ice_lag_unlink(struct ice_lag *lag,
 		lag->upper_netdev = NULL;
 	}
 
-	if (lag->peer_netdev) {
-		dev_put(lag->peer_netdev);
-		lag->peer_netdev = NULL;
-	}
-
+	lag->peer_netdev = NULL;
 	ice_set_sriov_cap(pf);
 	ice_set_rdma_cap(pf);
 	lag->bonded = false;
 	lag->role = ICE_LAG_NONE;
 }
 
+/**
+ * ice_lag_unregister - handle netdev unregister events
+ * @lag: LAG info struct
+ * @netdev: netdev reporting the event
+ */
+static void ice_lag_unregister(struct ice_lag *lag, struct net_device *netdev)
+{
+	struct ice_pf *pf = lag->pf;
+
+	/* check to see if this event is for this netdev
+	 * check that we are in an aggregate
+	 */
+	if (netdev != lag->netdev || !lag->bonded)
+		return;
+
+	if (lag->upper_netdev) {
+		dev_put(lag->upper_netdev);
+		lag->upper_netdev = NULL;
+		ice_set_sriov_cap(pf);
+		ice_set_rdma_cap(pf);
+	}
+	/* perform some cleanup in case we come back */
+	lag->bonded = false;
+	lag->role = ICE_LAG_NONE;
+}
+
 /**
  * ice_lag_changeupper_event - handle LAG changeupper event
  * @lag: LAG info struct
@@ -307,7 +329,7 @@ ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
 		ice_lag_info_event(lag, ptr);
 		break;
 	case NETDEV_UNREGISTER:
-		ice_lag_unlink(lag, ptr);
+		ice_lag_unregister(lag, netdev);
 		break;
 	default:
 		break;
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

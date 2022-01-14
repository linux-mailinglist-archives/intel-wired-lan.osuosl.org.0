Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D16C348F278
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 23:33:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5294B8346C;
	Fri, 14 Jan 2022 22:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c2v9aBkw8L47; Fri, 14 Jan 2022 22:33:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4481B83466;
	Fri, 14 Jan 2022 22:33:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAA511BF59C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 22:33:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A1E8D60BD1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 22:33:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xbEdcbYokbE4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 22:33:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D60260B27
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 22:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642199609; x=1673735609;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=X8nM/IpmGFs8CJhJqSrMVxutREqmBLUaUUkJybiLYqM=;
 b=GbL8uG097u8p2mwzTND323FZwp4Q4AdesmG/ZnG42erRENs5uk81CQ4B
 dGyopDv/4apZu2nJCjRC95auG2HoaJo/ikYlZZs7Q7N+FcExuAzzPGq4y
 HuxdTRZ6mK6RlhoDNm6Jfpmqm/f+gwgE/n+94XqkFqCUlztYwuWpj/aKt
 htljwyR8RdFKjW4VdBjvK+JIyXbH+KABdIcrsnrYxKzYRZjPY3KthErq0
 Q7hBpGcysL17+WMrZ/1LBwzzSw6xdfvIWis1xJc4RIsCJfOWda+sKLZoJ
 Ct+uqBzjhpW9Qvmlj6aNBmYUFA53Vbg+ZxeurqmYqF/Q1DNxCSWLQo+cJ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="244542222"
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="244542222"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 14:33:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="516560576"
Received: from dmert-dev.jf.intel.com ([10.166.241.5])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 14:33:28 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Jan 2022 14:31:48 -0800
Message-Id: <20220114223148.976876-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: Fix KASAN error in LAG
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
 drivers/net/ethernet/intel/ice/ice_lag.c | 32 +++++++++++++++++++++---
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index e375ac849aec..2e8b1990c1c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -204,10 +204,8 @@ ice_lag_unlink(struct ice_lag *lag,
 		lag->upper_netdev = NULL;
 	}
 
-	if (lag->peer_netdev) {
-		dev_put(lag->peer_netdev);
+	if (lag->peer_netdev)
 		lag->peer_netdev = NULL;
-	}
 
 	ice_set_sriov_cap(pf);
 	ice_set_rdma_cap(pf);
@@ -215,6 +213,32 @@ ice_lag_unlink(struct ice_lag *lag,
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
@@ -307,7 +331,7 @@ ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
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

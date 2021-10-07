Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43053426022
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 01:00:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAD6F6071A;
	Thu,  7 Oct 2021 23:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K7VhdCoYJR71; Thu,  7 Oct 2021 23:00:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA893606F8;
	Thu,  7 Oct 2021 23:00:38 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4ED111BF3CD
 for <intel-wired-lan@osuosl.org>; Thu,  7 Oct 2021 23:00:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C4E8842A3
 for <intel-wired-lan@osuosl.org>; Thu,  7 Oct 2021 23:00:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5lGWpjgUFMd for <intel-wired-lan@osuosl.org>;
 Thu,  7 Oct 2021 23:00:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2AFAF840EB
 for <intel-wired-lan@osuosl.org>; Thu,  7 Oct 2021 23:00:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="207198156"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="207198156"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 16:00:32 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="590339637"
Received: from dmert-dev.jf.intel.com ([10.166.241.5])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 16:00:32 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu,  7 Oct 2021 08:40:31 -0700
Message-Id: <20211007154031.52038-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net] ice: Respond to a
 NETDEV_UNREGISTER event for LAG
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

When the PF is a member of a link aggregate, and the driver
is removed, the process will hang unless we respond to the
NETDEV_UNREGISTER event that is sent to the event_handler
for LAG.

Add a case statement for the ice_lag_event_handler to unlink
the PF from the link aggregate.

Also remove code that was incorrectly applying a dev_hold to
peer_netdevs that were associated with the ice driver.

Fixes: df006dd4b1dca ("ice: Add initial support framework for LAG")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
v2: remove the code placing dev_hold on ice specific netdevs
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 37c18c66b5c7..e375ac849aec 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -100,9 +100,9 @@ static void ice_display_lag_info(struct ice_lag *lag)
  */
 static void ice_lag_info_event(struct ice_lag *lag, void *ptr)
 {
-	struct net_device *event_netdev, *netdev_tmp;
 	struct netdev_notifier_bonding_info *info;
 	struct netdev_bonding_info *bonding_info;
+	struct net_device *event_netdev;
 	const char *lag_netdev_name;
 
 	event_netdev = netdev_notifier_info_to_dev(ptr);
@@ -123,19 +123,6 @@ static void ice_lag_info_event(struct ice_lag *lag, void *ptr)
 		goto lag_out;
 	}
 
-	rcu_read_lock();
-	for_each_netdev_in_bond_rcu(lag->upper_netdev, netdev_tmp) {
-		if (!netif_is_ice(netdev_tmp))
-			continue;
-
-		if (netdev_tmp && netdev_tmp != lag->netdev &&
-		    lag->peer_netdev != netdev_tmp) {
-			dev_hold(netdev_tmp);
-			lag->peer_netdev = netdev_tmp;
-		}
-	}
-	rcu_read_unlock();
-
 	if (bonding_info->slave.state)
 		ice_lag_set_backup(lag);
 	else
@@ -319,6 +306,9 @@ ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
 	case NETDEV_BONDING_INFO:
 		ice_lag_info_event(lag, ptr);
 		break;
+	case NETDEV_UNREGISTER:
+		ice_lag_unlink(lag, ptr);
+		break;
 	default:
 		break;
 	}
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

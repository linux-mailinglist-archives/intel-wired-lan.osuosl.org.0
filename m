Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E684756CF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 20:22:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CECAA22661;
	Thu, 25 Jul 2019 18:22:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DwcJZCQMjS+r; Thu, 25 Jul 2019 18:22:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B8537226B2;
	Thu, 25 Jul 2019 18:22:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F08B1BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1C47688157
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OodBHkO-BLzK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7A152873DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 11:22:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="193897609"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jul 2019 11:22:17 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 02:53:55 -0700
Message-Id: <20190725095401.24590-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S25 06/12] ice: Sanitize ice_ena_vsi and
 ice_dis_vsi
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

1. ndo_open and ndo_stop are implemented by ice_open and ice_stop
   respectively. When enabling/disabling VSIs, just call
   ice_open/ice_stop instead of ndo_open/ndo_stop.

2. Rework logic around rtnl_lock/rtnl_unlock

3. In ice_ena_vsi, remove an unnecessary stack variable and return
   0 instead of err when __ICE_NEEDS_RESTART is not set.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 24 +++++++++++------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 920122443c0f..1abbea7a69e1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -436,13 +436,13 @@ static void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 
 	if (vsi->type == ICE_VSI_PF && vsi->netdev) {
 		if (netif_running(vsi->netdev)) {
-			if (!locked) {
+			if (!locked)
 				rtnl_lock();
-				vsi->netdev->netdev_ops->ndo_stop(vsi->netdev);
+
+			ice_stop(vsi->netdev);
+
+			if (!locked)
 				rtnl_unlock();
-			} else {
-				vsi->netdev->netdev_ops->ndo_stop(vsi->netdev);
-			}
 		} else {
 			ice_vsi_close(vsi);
 		}
@@ -3690,21 +3690,19 @@ static int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
 	int err = 0;
 
 	if (!test_bit(__ICE_NEEDS_RESTART, vsi->state))
-		return err;
+		return 0;
 
 	clear_bit(__ICE_NEEDS_RESTART, vsi->state);
 
 	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
-		struct net_device *netd = vsi->netdev;
-
 		if (netif_running(vsi->netdev)) {
-			if (locked) {
-				err = netd->netdev_ops->ndo_open(netd);
-			} else {
+			if (!locked)
 				rtnl_lock();
-				err = netd->netdev_ops->ndo_open(netd);
+
+			err = ice_open(vsi->netdev);
+
+			if (!locked)
 				rtnl_unlock();
-			}
 		}
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

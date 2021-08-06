Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEF13E2EB5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 19:01:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF4DD40188;
	Fri,  6 Aug 2021 17:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RY_lVnl_6S7z; Fri,  6 Aug 2021 17:01:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5FCD4017C;
	Fri,  6 Aug 2021 17:01:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 285ED1BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 17:01:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1731E4017C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 17:01:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7dMG-3wEwYl6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 17:01:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8969340175
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 17:01:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10068"; a="214434435"
X-IronPort-AV: E=Sophos;i="5.84,301,1620716400"; d="scan'208";a="214434435"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 10:01:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,301,1620716400"; d="scan'208";a="523565762"
Received: from bcreeley-st-desk.jf.intel.com ([10.166.244.126])
 by fmsmga002.fm.intel.com with ESMTP; 06 Aug 2021 10:01:07 -0700
From: Brett Creeley <brett.creeley@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 09:58:49 -0700
Message-Id: <20210806165849.687933-1-brett.creeley@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ice: Use ether_addr_copy() instead of
 memcpy
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

To save the netdev->dev_addr the driver is using memcpy with the length
of a MAC address. ether_addr_copy() is meant specifically for this, so
use it.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b85e34caa619..ddabbd186e47 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5221,7 +5221,7 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 		 * modified outside of the driver and needs to be restored back
 		 * to this value.
 		 */
-		memcpy(netdev->dev_addr, mac, netdev->addr_len);
+		ether_addr_copy(netdev->dev_addr, mac);
 		netdev_dbg(netdev, "filter for MAC %pM already exists\n", mac);
 		return 0;
 	}
@@ -5238,7 +5238,7 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 	}
 
 	/* change the netdev's MAC address */
-	memcpy(netdev->dev_addr, mac, netdev->addr_len);
+	ether_addr_copy(netdev->dev_addr, mac);
 	netdev_dbg(vsi->netdev, "updated MAC address to %pM\n",
 		   netdev->dev_addr);
 
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

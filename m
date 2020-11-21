Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A537A2BBB2D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:45:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D94F87285;
	Sat, 21 Nov 2020 00:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dVWmlluJCj2S; Sat, 21 Nov 2020 00:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3EB22872D0;
	Sat, 21 Nov 2020 00:45:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 377E61BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3374986FA2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yKaFCp0vZGm8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:45:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8CCD9868B5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:33 +0000 (UTC)
IronPort-SDR: FwlfabKLkLc8BABfg0CxZTw4loUQQBmJDzfciEfs46JDZEfCKydWFyf20ihizw3TI+od8wyKPB
 +8GymjQI5iDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="170782299"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="170782299"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:45:32 -0800
IronPort-SDR: MJevj+v9d/ZsKw1Yxr4jJKGU8htqyUfD5yfsdzV6m6msP01/xe3BVyA53G87GDnhy16FtDtJ2e
 4UY6tnBoO9Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="369396469"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga007.jf.intel.com with ESMTP; 20 Nov 2020 16:45:29 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:38:33 -0800
Message-Id: <20201121003835.48424-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
References: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net 4/6] ice: update dev_addr in
 ice_set_mac_address even if HW filter exists
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

Fix the driver to copy the MAC address configured in ndo_set_mac_address
into dev_addr, even if the MAC filter already exists in HW. In some
situations (e.g. bonding) the netdev's dev_addr could have been modified
outside of the driver, with no change to the HW filter, so the driver
cannot assume that they match.

Fixes: 757976ab16be ("ice: Fix check for removing/adding mac filters")
Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2dea4d0e9415..7986c677cab5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4887,9 +4887,15 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 		goto err_update_filters;
 	}
 
-	/* Add filter for new MAC. If filter exists, just return success */
+	/* Add filter for new MAC. If filter exists, return success */
 	status = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
 	if (status == ICE_ERR_ALREADY_EXISTS) {
+		/* Although this MAC filter is already present in hardware it's
+		 * possible in some cases (e.g. bonding) that dev_addr was
+		 * modified outside of the driver and needs to be restored back
+		 * to this value.
+		 */
+		memcpy(netdev->dev_addr, mac, netdev->addr_len);
 		netdev_dbg(netdev, "filter for MAC %pM already exists\n", mac);
 		return 0;
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

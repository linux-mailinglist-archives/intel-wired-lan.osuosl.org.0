Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FB82D9AD0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 16:23:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9CD11272E2;
	Mon, 14 Dec 2020 15:23:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XYloP0b4Dg9R; Mon, 14 Dec 2020 15:23:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2B29427236;
	Mon, 14 Dec 2020 15:23:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B98B11BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B6AB687488
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:23:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PV3n36ABPvbF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 15:23:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 359B08747B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:23:07 +0000 (UTC)
IronPort-SDR: ggoQZkhs4JrbRb+ileCwsr737/CLln3FMv8TX6dUEOjjkGcosPn/1WsrJsQq23LqTUgdZIcCKE
 ODHmCBOhgIVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="236308510"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="236308510"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:23:07 -0800
IronPort-SDR: tMWyc6D7apkB+5WNsBfOIi7PhA1KpYYKW0XEbqrlnAFjJeU72prQ8475bbhanQagkBaYMRx4/B
 4GFm0E8cep7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="411285741"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2020 07:23:04 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 14 Dec 2020 16:13:06 +0100
Message-Id: <20201214151308.15275-7-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214151308.15275-1-maciej.fijalkowski@intel.com>
References: <20201214151308.15275-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next 6/8] ice: remove redundant
 checks in ice_change_mtu
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

dev_validate_mtu checks that mtu value specified by user is not less
than min mtu and not greater than max allowed mtu. It is being done
before calling the ndo_change_mtu exposed by driver, so remove these
redundant checks in ice_change_mtu.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2dea4d0e9415..476e20af7309 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6126,15 +6126,6 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 		}
 	}
 
-	if (new_mtu < (int)netdev->min_mtu) {
-		netdev_err(netdev, "new MTU invalid. min_mtu is %d\n",
-			   netdev->min_mtu);
-		return -EINVAL;
-	} else if (new_mtu > (int)netdev->max_mtu) {
-		netdev_err(netdev, "new MTU invalid. max_mtu is %d\n",
-			   netdev->min_mtu);
-		return -EINVAL;
-	}
 	/* if a reset is in progress, wait for some time for it to complete */
 	do {
 		if (ice_is_reset_in_progress(pf->state)) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

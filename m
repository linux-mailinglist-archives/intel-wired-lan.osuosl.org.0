Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E606C63A7FC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 13:13:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C7A560A77;
	Mon, 28 Nov 2022 12:13:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C7A560A77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669637618;
	bh=FoVPf992Q6JkDs/tsgj1vulomJajA/BT3YlPfoSsoXw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UvRKf6Os/h+G8Q8L3Jc5yce7wbJeX0HMtqwjXStuldCmz/SvBzVmv7XgBpnZUwK7E
	 8xg9ljoyJYyZA5QXvTsOGiOsv2RTTCtbh8Z8mwP7Fmp8jgEpxeayLi9E3knAtWUtw1
	 +VougNOIb9d2+vPd5IiWA13qUnE1l5nCcPgIlTEGKWpx1JXl9i17ngGypUNoyc2ZbS
	 ESNsvr6jz1TyB/tf7ehUBaIKYwT5/fZ8PS3QiG9Y1xScR+m+m/LsglX65SSfn4C8Vo
	 ma6O/RIhxg6cVBV11WuX6wL+0UExFH50YMDTpi32zbrfV3g+ZsHef10xbAno1qA0Nc
	 Y+vqzMrsH5KMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xo4Ikc4Mbp5T; Mon, 28 Nov 2022 12:13:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C04160A70;
	Mon, 28 Nov 2022 12:13:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C04160A70
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E1BB1BF39C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 12:13:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7268580C2D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 12:13:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7268580C2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D_j6acdux_cZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 12:13:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96ABF80C1A
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 96ABF80C1A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 12:13:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="298173671"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="298173671"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 04:13:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="643367013"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="643367013"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga002.jf.intel.com with ESMTP; 28 Nov 2022 04:13:29 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Nov 2022 07:10:54 -0500
Message-Id: <20221128121054.167142-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669637611; x=1701173611;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=18/O3PHIaiqKRc6+KstiXap2efhDTtMr+TU4UdJLsQM=;
 b=OhNMwWJtmJmbe8v6J7NOu5dCf4y1yi1E1Y+8AeS4yufeLNjnvonmQncm
 PtmhgHCd+RMnD/kNd+wOPUNevlvw/UvLhB0RURuHDhyB71eKfm/3QyXKV
 8Z6yiD4pv2mErR3J7Dxje0nF6CUs614ils6ggRAi2qffS8gRPiHejlM+k
 9vGF6aVWM5k3I1aF2p3FpmPUT8spRcu39gv7D8zwApondbNlY0g+aSN9O
 3T2xOXscHsW2CD3KkLqLSt6tVDY7WCgvkNyLDnwv+AyapOiPk8Y8BIv7x
 6QXl20p48ky7T7F81EURv7ryWZf9heo8vvX3wBxn8r3L4zt5aMGiG7mkg
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OhNMwWJt
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix deadlock on the rtnl_mutex
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

There is a deadlock on rtnl_mutex when attempting to take the lock
in unregister_netdev() after it has already been taken by
ethnl_set_channels(). This happened when unregister_netdev() was
called inside of ice_vsi_rebuild().
Fix that by removing the unregister_netdev() usage and replace it with
ice_vsi_clear_rings() that deallocates the tx and rx rings for the VSI.

Fixes: df0f847915b4 ("ice: Move common functions out of ice_main.c part 6/7")
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index fcf11abe64f1..5550e5aebf9f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3392,12 +3392,10 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 err_vectors:
 	ice_vsi_free_q_vectors(vsi);
 err_rings:
-	if (vsi->netdev) {
-		vsi->current_netdev_flags = 0;
-		unregister_netdev(vsi->netdev);
-		free_netdev(vsi->netdev);
-		vsi->netdev = NULL;
-	}
+	ice_vsi_clear_rings(vsi);
+	set_bit(ICE_RESET_FAILED, pf->state);
+	kfree(coalesce);
+	return ret;
 err_vsi:
 	ice_vsi_clear(vsi);
 	set_bit(ICE_RESET_FAILED, pf->state);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

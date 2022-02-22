Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 745804BF768
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Feb 2022 12:43:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F217D60B08;
	Tue, 22 Feb 2022 11:43:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AKW_tY1yEkNp; Tue, 22 Feb 2022 11:43:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03C9C605A7;
	Tue, 22 Feb 2022 11:43:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD46C1BF865
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 11:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9986240265
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 11:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4h6rOnD1RZjE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Feb 2022 11:43:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE2994025A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 11:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645530226; x=1677066226;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GHqt37x8K/FgF8IEhrL4XtqIouULy9Lp4QJx/YJDxUM=;
 b=LYGjcud0NhRhll+HE+dbjCtMutN7hWPMaXVh4zJQq71q2MmstpP4lNr1
 AVqtTbXtgZbUoOlXi6SaUYkaFxWGp07m4L+8fV9p2/MEpr2k/r0WwyVW3
 /eOC+3YWmcLJ87PTKnb6AwAG5CgYYZgMIPDol2PyWsS9bY+s0Vys6LQF0
 SYXXdGAZ01r7WonWwFzXb7W1gFhj0vKF1A8p9yuWDYTkAlr771FLqY9Z6
 qRPgv8Fg8t22lzRs6zQLBH1QhPiQzrjEFB6kWoXtWwpOp3Ymzh/PmINNW
 4yKtNSLColMA4Y/tl92Q5LxZcWE+6C92VnEYk1R731je/Q7BXzMiJv7ln Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="235207451"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="235207451"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 03:43:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="490766909"
Received: from amlin-018-218.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.218])
 by orsmga003.jf.intel.com with ESMTP; 22 Feb 2022 03:43:45 -0800
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Feb 2022 11:43:04 +0000
Message-Id: <20220222114304.126803-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix curr_link_speed
 advertised speed
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
Cc: Grzegorz Siwik <grzegorz.siwik@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change curr_link_speed advertised speed, due to
link_info.link_speed is not equal phy.curr_user_speed_req.
Without this patch it is impossible to set adverised
speed to same as link_speed.

Testing Hints: Try to set advertised speed
to 25G only with 25G default link (use ethtool -s 0x80000000)

Fixes: 48cb27f2fd18 ("ice: Implement handlers for ethtool PHY/link operations")
Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index e2e3ef7fba7f..a5dc9824e255 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2298,7 +2298,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	if (err)
 		goto done;
 
-	curr_link_speed = pi->phy.link_info.link_speed;
+	curr_link_speed = pi->phy.curr_user_speed_req;
 	adv_link_speed = ice_ksettings_find_adv_link_speed(ks);
 
 	/* If speed didn't get set, set it to what it currently is.
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

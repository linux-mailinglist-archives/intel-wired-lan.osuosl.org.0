Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7296459136A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 18:04:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B003C82A2D;
	Fri, 12 Aug 2022 16:04:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B003C82A2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660320253;
	bh=6zowErGO0V/v+WZFCPZqvC5nJIvUl93+5G/BDPaipCw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ne58MhvK6AN9TI+5bZLsT08HuC2yBMUKtzliK9Kd/E8bfIwUA9uziOdAkU6ShaOP/
	 4TjPRiDgdHDb7XgDLXh2mhxMGQlguZyprS2D9VXr+4xA9fGMYnvqWgsOrx0dfvS23r
	 5RErnx5WSL/H5LCunCCLtcaoHWnvhp+IhddiVw8Wa2xwv1tOiyfYnzrzuzKPJVDCcb
	 EFmqpBphcv2C+j5ENpshiqq5y9I8QoYfXGDQ2z3vuRmWUC/EBmNTGpWi+pAssRzRkV
	 4ckErQuReB4ENt93Umoz0uncsOLkObzViW0D45WMxGYQjSfGRyF+w2iooTB2/VTC7T
	 Xn6mQLJPGP5ZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gsbfkfF2mSHD; Fri, 12 Aug 2022 16:04:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3014082978;
	Fri, 12 Aug 2022 16:04:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3014082978
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3ED541BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 16:04:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 18D636115C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 16:04:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18D636115C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A1Z5STaHk10w for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 16:04:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D956C607B0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D956C607B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 16:04:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="377914028"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="377914028"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 09:04:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="782002093"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga005.jf.intel.com with ESMTP; 12 Aug 2022 09:04:00 -0700
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 27CG3xNu018100; Fri, 12 Aug 2022 17:04:00 +0100
From: Mikael Barsehyan <mikael.barsehyan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Aug 2022 18:04:08 +0200
Message-Id: <20220812160408.67794-1-mikael.barsehyan@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660320243; x=1691856243;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K418VKd9odempgZqnbsN6e9qlCBcGGBdhDzA8aawK2g=;
 b=AiCDKLHOiaIy/fpo3U0cmP27BFqP8mXyZIfuzjWpB37e2w5vO2xo3uYZ
 XXzKoIutxaQ/FttNYyZ0F3zKEAdJY/9sjeKzwZ1p1h1Imh7Fxbk5cP9vG
 fXpts9e/4pblwbx2A8m+MUlRLc7/TN113fpM5k38pRherrIlf0MURJGkX
 P2DNAB9CjO365RP3L1e6+uUXXA1aI36AG0z4o0CUPxHq4ThEm+n8EIv9R
 Z4KzUS+WOJaDndo6ioVaizefUeCT/q8oM7qigJHr6KcEN9y6plIT6mgOF
 WZxE8wdI96iPTmfptgu79pYe5yxhqIE213SJ746MrCckxrN4Yk5xJtp1t
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AiCDKLHO
Subject: [Intel-wired-lan] [PATCH net-next v4] ice: remove non-inclusive
 language from codebase
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
Cc: Mikael Barsehyan <mikael.barsehyan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove non-inclusive language from the driver where
possible; replace "master" with "primary"

Signed-off-by: Mikael Barsehyan <mikael.barsehyan@intel.com>
---
v4: remove master/slave from debug msg in ice_lag.c

 drivers/net/ethernet/intel/ice/ice_lag.c | 16 ++++++++--------
 drivers/net/ethernet/intel/ice/ice_lag.h |  2 +-
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index c9f7393b783d..ee5b36941ba3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -61,13 +61,13 @@ static void ice_lag_set_backup(struct ice_lag *lag)
  */
 static void ice_display_lag_info(struct ice_lag *lag)
 {
-	const char *name, *peer, *upper, *role, *bonded, *master;
+	const char *name, *peer, *upper, *role, *bonded, *primary;
 	struct device *dev = &lag->pf->pdev->dev;
 
 	name = lag->netdev ? netdev_name(lag->netdev) : "unset";
 	peer = lag->peer_netdev ? netdev_name(lag->peer_netdev) : "unset";
 	upper = lag->upper_netdev ? netdev_name(lag->upper_netdev) : "unset";
-	master = lag->master ? "TRUE" : "FALSE";
+	primary = lag->primary ? "TRUE" : "FALSE";
 	bonded = lag->bonded ? "BONDED" : "UNBONDED";
 
 	switch (lag->role) {
@@ -87,8 +87,8 @@ static void ice_display_lag_info(struct ice_lag *lag)
 		role = "ERROR";
 	}
 
-	dev_dbg(dev, "%s %s, peer:%s, upper:%s, role:%s, master:%s\n", name,
-		bonded, peer, upper, role, master);
+	dev_dbg(dev, "%s %s, peer:%s, upper:%s, role:%s, primary:%s\n", name,
+		bonded, peer, upper, role, primary);
 }
 
 /**
@@ -119,7 +119,7 @@ static void ice_lag_info_event(struct ice_lag *lag, void *ptr)
 	}
 
 	if (strcmp(bonding_info->slave.slave_name, lag_netdev_name)) {
-		netdev_dbg(lag->netdev, "Bonding event recv, but slave info not for us\n");
+		netdev_dbg(lag->netdev, "Bonding event recv, but secondary info not for us\n");
 		goto lag_out;
 	}
 
@@ -164,8 +164,8 @@ ice_lag_link(struct ice_lag *lag, struct netdev_notifier_changeupper_info *info)
 	lag->bonded = true;
 	lag->role = ICE_LAG_UNSET;
 
-	/* if this is the first element in an LAG mark as master */
-	lag->master = !!(peers == 1);
+	/* if this is the first element in an LAG mark as primary */
+	lag->primary = !!(peers == 1);
 }
 
 /**
@@ -264,7 +264,7 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 	netdev_dbg(netdev, "bonding %s\n", info->linking ? "LINK" : "UNLINK");
 
 	if (!netif_is_lag_master(info->upper_dev)) {
-		netdev_dbg(netdev, "changeupper rcvd, but not master. bail\n");
+		netdev_dbg(netdev, "changeupper rcvd, but not primary. bail\n");
 		return;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index c2e3688dd8fd..51b5cf467ce2 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -24,7 +24,7 @@ struct ice_lag {
 	struct net_device *upper_netdev; /* upper bonding netdev */
 	struct notifier_block notif_block;
 	u8 bonded:1; /* currently bonded */
-	u8 master:1; /* this is a master */
+	u8 primary:1; /* this is primary */
 	u8 handler:1; /* did we register a rx_netdev_handler */
 	/* each thing blocking bonding will increment this value by one.
 	 * If this value is zero, then bonding is allowed.
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

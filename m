Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D0B591382
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 18:07:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C805A4193B;
	Fri, 12 Aug 2022 16:07:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C805A4193B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660320465;
	bh=4B5ggyWt/4cED31TgvDen+uwRrWNEfz7lqTta6GOsvg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nMStRr/AMZMBcp6i9Bmxfqx9mjxn6ZeHdulcqhS1DohdITaJM/KV8cYTCgY9W8vMt
	 3m/Y7q1o7tAEj9z2bluSV3O/RsJSVQx8S0m8iOllowZhMMGZP4cVUG5SiKEDpJKGrb
	 KpAtxsfuUTaJ/h7KE464mzKS979vttmX6PMD0xhQuS9IGin1ikjWVjsszu8GjBDVcP
	 pyQS1DZ3JASsazYCD3zo4VXZu/7zgOfE1diTvTPbGeue/0qOxqHK0lGWJn8asFxhVA
	 JUqDUhxDDJeVs+ykpNzzndOIVy0ewlZMdvB2meHsyEIaNguQSHp807X1jWQeJnG5DL
	 Wek6obj463obg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bc3TNV2uf7jj; Fri, 12 Aug 2022 16:07:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 672484193A;
	Fri, 12 Aug 2022 16:07:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 672484193A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08C691BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 16:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D568640C19
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 16:07:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D568640C19
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B6AAPn9sNafK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 16:07:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81F184052A
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 81F184052A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 16:07:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="317594928"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="317594928"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 09:07:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="634688909"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 12 Aug 2022 09:07:35 -0700
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 27CG7YcP019107; Fri, 12 Aug 2022 17:07:34 +0100
From: Mikael Barsehyan <mikael.barsehyan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Aug 2022 18:07:49 +0200
Message-Id: <20220812160749.68579-1-mikael.barsehyan@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660320457; x=1691856457;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4M8Jy714RNTYMz7B06OXdnaU0oymuj8+7aqWVeaEzdM=;
 b=A86KXOrxWCTwKNB+qb7Vi7kOXIW2IumMM9TLpxM1YOGYF65MSBmgiLQw
 XKVLyySvT2RqG+iN1gtPNqc1aPKSQmX4ps6/znNiP1MXYkIJLwfqrY/oO
 WNdOgz4WBVTUJBzGqg6gV2hNLPGm69EqY7GBMFZnFV62r3bmyJq2b/0GA
 mFYdmNcW2YZF23/WpBAvK5TRfkteiflg5Z1UWqBFChuwjCdjvpPalsFn8
 /5dNl35iceAsKLLGGnl1oiv1rN7xlhLeCmGF3ucVxhO3P/xJ2DV8dnv4X
 wMOUxmPNzld9P/c+55wXZojE+k6VjrsrHuyOKCYyVn9o5z3dDKyt32g8I
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A86KXOrx
Subject: [Intel-wired-lan] [PATCH net-next v5] ice: remove non-inclusive
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
possible; replace "master" with "primary"; replace
"slave" with "secondary".

Signed-off-by: Mikael Barsehyan <mikael.barsehyan@intel.com>
---
v5: update commit message to include "slave"
v4: replace master/slave with primary/secondary in ice_lag.c

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

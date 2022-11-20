Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137D56312F8
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Nov 2022 09:15:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43BBC40412;
	Sun, 20 Nov 2022 08:15:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43BBC40412
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668932132;
	bh=iVX7aLRYju0zvLJhexJqLFxot7KORxSmnsjo5hoO48I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UcoundB9QOcmbloYj2RGqGWPU8o04QdlYQqOtGoQtO013AgLXaNwWsIHkwatbG21+
	 wd+yyXZax+ch3+R27LgePhwzFpHHUamzPSu30/H66gD3O2e4ei8d2kJx4M6uOfk8Pk
	 c0LfBdRV8XOrTjlrg5YY186Iyyhc2fSErSpo7Zi6lYuw+ly5ugeEp31WBzNAk3Vzoj
	 7+XMqcqPTejiR2jFm+7d4Wja6wN0jH6YWoBWnxV+PnW6Q39iDtLxxgByBKf5/kS4Nv
	 nOxAnEwL2cxv1RFopUqZ7sX+Eq4NJEfpzsCw1pNhRKq1glU3TZgUjuaFycodnhDJix
	 IeRevQ7HKCWeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6G5mcXttDAvd; Sun, 20 Nov 2022 08:15:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3419840143;
	Sun, 20 Nov 2022 08:15:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3419840143
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AA871BF488
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Nov 2022 08:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20C6881772
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Nov 2022 08:15:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20C6881772
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GiFmHrWZOD_W for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Nov 2022 08:15:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C29E281766
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C29E281766
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Nov 2022 08:15:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10536"; a="314530114"
X-IronPort-AV: E=Sophos;i="5.96,179,1665471600"; d="scan'208";a="314530114"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2022 00:15:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10536"; a="634870994"
X-IronPort-AV: E=Sophos;i="5.96,178,1665471600"; d="scan'208";a="634870994"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.129])
 by orsmga007.jf.intel.com with ESMTP; 20 Nov 2022 00:15:20 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 20 Nov 2022 10:15:11 +0200
Message-Id: <20221120081511.4136778-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668932125; x=1700468125;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sElocw8NOHPAeM08w6r9czswoVHjJyvBluQMuycbjXs=;
 b=b32qmfq9mRTOW3Yxx9hgADVvY6A/7MgqO/uIQQc/CEOn0RE3OssQocVU
 pG/DjORsn0XXAiqEC4PivAv842ZVCEIPYY3OKfGW2RPzWrU64d2b0IbGk
 BMAsH5Q+R24qRI3nPoxZ5WYaBA6l7rbV4vlmg5fnj8vobiK/ajGHTKVFj
 XM2MCPj8a3wCRF/J/oNE7wohl2N3N3cgANSJfBcWjKRYWrPr640GWuB3K
 uYyVsZQC5ZSFLjrR+F/uHuWAZ/lG/BfJSRTnaS7eafIOYvU7oLGeqiB9M
 MTDKF90yq/2JWDjG7qaBaw53prBfdKnqDTfKbEMzfQYbD2mj4QPoxXmxX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b32qmfq9
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up and optimize
 watchdog task
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

i225/i226 parts used only one media type copper. The copper media type is
not replaceable. Clean up the code accordingly, and remove the obsolete
media replacement and reset options.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  2 --
 drivers/net/ethernet/intel/igc/igc_main.c | 17 -----------------
 2 files changed, 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index df3e26c0cf01..5da8d162cd38 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -292,8 +292,6 @@ extern char igc_driver_name[];
 #define IGC_FLAG_PTP			BIT(8)
 #define IGC_FLAG_WOL_SUPPORTED		BIT(8)
 #define IGC_FLAG_NEED_LINK_UPDATE	BIT(9)
-#define IGC_FLAG_MEDIA_RESET		BIT(10)
-#define IGC_FLAG_MAS_ENABLE		BIT(12)
 #define IGC_FLAG_HAS_MSIX		BIT(13)
 #define IGC_FLAG_EEE			BIT(14)
 #define IGC_FLAG_VLAN_PROMISC		BIT(15)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7388741eee26..7c8dd51014e2 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5546,25 +5546,8 @@ static void igc_watchdog_task(struct work_struct *work)
 				mod_timer(&adapter->phy_info_timer,
 					  round_jiffies(jiffies + 2 * HZ));
 
-			/* link is down, time to check for alternate media */
-			if (adapter->flags & IGC_FLAG_MAS_ENABLE) {
-				if (adapter->flags & IGC_FLAG_MEDIA_RESET) {
-					schedule_work(&adapter->reset_task);
-					/* return immediately */
-					return;
-				}
-			}
 			pm_schedule_suspend(netdev->dev.parent,
 					    MSEC_PER_SEC * 5);
-
-		/* also check for alternate media here */
-		} else if (!netif_carrier_ok(netdev) &&
-			   (adapter->flags & IGC_FLAG_MAS_ENABLE)) {
-			if (adapter->flags & IGC_FLAG_MEDIA_RESET) {
-				schedule_work(&adapter->reset_task);
-				/* return immediately */
-				return;
-			}
 		}
 	}
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

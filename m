Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3C852D569
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 May 2022 16:00:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3C47843D7;
	Thu, 19 May 2022 14:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JFLQEs_zDHGX; Thu, 19 May 2022 14:00:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF1B58437B;
	Thu, 19 May 2022 14:00:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BD101BF388
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 14:00:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A1C3841B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 14:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m58--L-y1EK5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 May 2022 14:00:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CB298437B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 14:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652968817; x=1684504817;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0B4UhmMxVHz+9KZLNo9VnIss39r9j1iwCWBau9sHnS4=;
 b=NfPHucG5llIS3Ge2+MZsool66bw0OJ6WxgI+qF/3q8F0ThFXhD4yLZjm
 b6LUjThhWMscfMaLYe9biHTGHrSkGBYYJ9rLrDpDSrAgbwj8DEFFRjQqo
 Ox6DHKFCWbRrswUxQIvJWgsK1vtao8Xfl0wCzkrDHwtDUY/sXaQ1vsx/R
 NKnvAjX5h+Px/Gkb8Y+efNezppDV4uQCSKoXhMIqu5ivYGHofrnKLu9u9
 2UUpCghB/r+aDviur6p5LCljyUIA6JCjHDS0SyLVTEEwNrCd6QjovKN0o
 6E1iCeXqWU//9o1ZNs54aI6nhkjiRIQD2lAt8w/subS6jqF2RVthaQGU3 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="358618110"
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="358618110"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 07:00:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="639796992"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga004.fm.intel.com with ESMTP; 19 May 2022 07:00:15 -0700
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anthony.l.nguyen@intel.com
Date: Thu, 19 May 2022 15:58:24 +0200
Message-Id: <20220519135824.1917154-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v333] i40e: Fix call trace in
 setup_tx_descriptors
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Michal Jaron <michalx.jaron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com> 

After PF reset and ethtool -t there was call trace in dmesg
sometimes leading to panic. When there was some time, around 5
seconds, between reset and test there were no errors.

Problem was that pf reset calls i40e_vsi_close in prep_for_reset
and ethtool -t calls i40e_vsi_close in diag_test. If there was not
enough time between those commands the second i40e_vsi_close starts
before previous i40e_vsi_close was done which leads to crash.

Add check to diag_test if pf is in reset and don't start offline
tests if it is true.
Add netif_info("testing failed") into unhappy path of i40e_diag_test()

Fixes: e17bc411aea8 ("i40e: Disable offline diagnostics if VFs are enabled")
Fixes: 510efb2682b3 ("i40e: Fix ethtool offline diagnostic with netqueues")
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 25 +++++++++++++------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index e484996..06c05a6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2584,15 +2584,16 @@ static void i40e_diag_test(struct net_device *netdev,
 
 		set_bit(__I40E_TESTING, pf->state);
 
+		if (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
+		    test_bit(__I40E_RESET_INTR_RECEIVED, pf->state)) {
+			dev_warn(&pf->pdev->dev,
+				 "Cannot start offline testing when PF is in reset state.\n");
+			goto skip_ol_tests;
+		}
+
 		if (i40e_active_vfs(pf) || i40e_active_vmdqs(pf)) {
 			dev_warn(&pf->pdev->dev,
 				 "Please take active VFs and Netqueues offline and restart the adapter before running NIC diagnostics\n");
-			data[I40E_ETH_TEST_REG]		= 1;
-			data[I40E_ETH_TEST_EEPROM]	= 1;
-			data[I40E_ETH_TEST_INTR]	= 1;
-			data[I40E_ETH_TEST_LINK]	= 1;
-			eth_test->flags |= ETH_TEST_FL_FAILED;
-			clear_bit(__I40E_TESTING, pf->state);
 			goto skip_ol_tests;
 		}
 
@@ -2639,9 +2640,17 @@ static void i40e_diag_test(struct net_device *netdev,
 		data[I40E_ETH_TEST_INTR] = 0;
 	}
 
-skip_ol_tests:
-
 	netif_info(pf, drv, netdev, "testing finished\n");
+	return;
+
+skip_ol_tests:
+	data[I40E_ETH_TEST_REG]		= 1;
+	data[I40E_ETH_TEST_EEPROM]	= 1;
+	data[I40E_ETH_TEST_INTR]	= 1;
+	data[I40E_ETH_TEST_LINK]	= 1;
+	eth_test->flags |= ETH_TEST_FL_FAILED;
+	clear_bit(__I40E_TESTING, pf->state);
+	netif_info(pf, drv, netdev, "testing failed\n");
 }
 
 static void i40e_get_wol(struct net_device *netdev,
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

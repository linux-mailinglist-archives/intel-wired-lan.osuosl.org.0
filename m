Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E79A8617D25
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 13:57:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D6B460FB4;
	Thu,  3 Nov 2022 12:57:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D6B460FB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667480269;
	bh=GJkDeCxq0LcTeIejPbbwtrOHW94FbSUATTZ1gFUZ4Ck=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ey4WiPM1FMIrhUDGi+53a3mZK4uf++lke4ql38RFPGkoIn8CQ1DA02FD5M/52PUwg
	 e38q4etbJi63B5mdur3gcf/2+7gkTiXB0AlKnBeHcFnxIxrZ5Lsryk+Z4JhR19kMlM
	 SacYh5gBsPME49gNhSsDfGy/NzL3Cm8oHP3CGLsLoUoJPT9kQ35J+fBmPL3ZtoDNIO
	 x2kWf5uVqs58Sjl5CjLDZxVbhYHHxCT6tjftOOFP+tQBCW3XYSS5OfYkLtIGQv/8vJ
	 7J+Xnuff7pR75719WWiD13Vzhm8ijnUxp35E2SwEbqbd+lpsSHtNPog2u/ME9yQXzL
	 lb2DPTJkijXIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DOxRURcKicC2; Thu,  3 Nov 2022 12:57:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7508460B13;
	Thu,  3 Nov 2022 12:57:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7508460B13
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 87AE11BF404
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 12:57:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E609415A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 12:57:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E609415A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pc0jWtGx8B9n for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 12:57:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83BBD41609
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 83BBD41609
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 12:57:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="308389710"
X-IronPort-AV: E=Sophos;i="5.96,235,1665471600"; d="scan'208";a="308389710"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 05:57:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="665956230"
X-IronPort-AV: E=Sophos;i="5.96,235,1665471600"; d="scan'208";a="665956230"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by orsmga008.jf.intel.com with ESMTP; 03 Nov 2022 05:57:29 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Nov 2022 14:00:03 +0100
Message-Id: <20221103130003.2329-2-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20221103130003.2329-1-jan.sokolowski@intel.com>
References: <20221103130003.2329-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667480258; x=1699016258;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n6V3Y8IlSaCq5woV0CLhs1wDy8SVrD6FU9ZqhD2/fUM=;
 b=E4kWepZlbaU7CyE/TxYJ2UYOQTJFn1NZC/ohmva0YectInIqI276kyxh
 OtvGHtzV2J9557wkBb7Wp6LRc6InfxN3cCVB9tak4yiCDdqvgHqUM1H6B
 WRzRz69ksObhadI0kzUBqqqk6Jr23H99O75DD8+k9ItVIRhxfFXwsvQu2
 ObBnXBjEByieWkBIrYO+8kkeS+SZBxJsnXHJGaYO4YJZMQEqSO4AP1wHx
 5JwHk00dgpqUwMiiCN86omQKv0NJQWYdqQb6yQOGIEZfdGZOtVo55R25M
 yzbwpwp/I04ULm/9y2tD0jumZT/EiNutB2JXED0mE1/JQR9dTIj6YpyxD
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E4kWepZl
Subject: [Intel-wired-lan] [PATCH net v3 2/2] iavf: Fix race condition
 between iavf_shutdown and iavf_remove
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

From: Slawomir Laba <slawomirx.laba@intel.com>

Fix a deadlock introduced by commit
974578017fc1 ("iavf: Add waiting so the port is initialized in remove")
due to race condition between iavf_shutdown and iavf_remove, where
iavf_remove stucks forever in while loop since iavf_shutdown already
set __IAVF_REMOVE adapter state.

Fix this by checking if the __IAVF_IN_REMOVE_TASK has already been
set and return if so.

Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized in remove")
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Tested-by: Marek Szlosek <marek.szlosek@intel.com>
---
 v2: Fixed author
 v3: Removed unnecessary check as per review.
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 7cd5bbab8f0f..c08c52d11980 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5007,23 +5007,21 @@ static int __maybe_unused iavf_resume(struct device *dev_d)
 static void iavf_remove(struct pci_dev *pdev)
 {
 	struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
-	struct net_device *netdev = adapter->netdev;
 	struct iavf_fdir_fltr *fdir, *fdirtmp;
 	struct iavf_vlan_filter *vlf, *vlftmp;
+	struct iavf_cloud_filter *cf, *cftmp;
 	struct iavf_adv_rss *rss, *rsstmp;
 	struct iavf_mac_filter *f, *ftmp;
-	struct iavf_cloud_filter *cf, *cftmp;
-	struct iavf_hw *hw = &adapter->hw;
+	struct net_device *netdev;
+	struct iavf_hw *hw;
 	int err;
 
-	/* When reboot/shutdown is in progress no need to do anything
-	 * as the adapter is already REMOVE state that was set during
-	 * iavf_shutdown() callback.
-	 */
-	if (adapter->state == __IAVF_REMOVE)
+	netdev = adapter->netdev;
+	hw = &adapter->hw;
+
+	if (test_and_set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
 		return;
 
-	set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
 	/* Wait until port initialization is complete.
 	 * There are flows where register/unregister netdev may race.
 	 */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

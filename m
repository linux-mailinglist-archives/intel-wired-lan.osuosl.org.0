Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C21F4177E69
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Mar 2020 19:26:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 284E5858A6;
	Tue,  3 Mar 2020 18:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FljzMpJ6OKU4; Tue,  3 Mar 2020 18:26:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82AA385B4D;
	Tue,  3 Mar 2020 18:26:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E7251BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 18:26:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 79BFE8586A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 18:26:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C_QAtXEsW7t8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2020 18:26:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6A87885650
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 18:26:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 10:26:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="233724969"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by orsmga008.jf.intel.com with ESMTP; 03 Mar 2020 10:26:10 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Mar 2020 20:26:10 +0200
Message-Id: <20200303182610.35628-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v2 1/1] igc: Remove copper fiber switch
 control
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

i225 device support copper mode only
PHY signal detect indication for copper fiber switch
not applicable to i225 part

v1 -> v2:
Address community comments and leave igc_ethtool.c no changes

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 2 --
 drivers/net/ethernet/intel/igc/igc_main.c    | 9 ---------
 2 files changed, 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index dd0c86ce09ed..e5116337b68d 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -91,8 +91,6 @@
 #define IGC_CTRL_RFCE		0x08000000  /* Receive Flow Control enable */
 #define IGC_CTRL_TFCE		0x10000000  /* Transmit flow control enable */
 
-#define IGC_CONNSW_AUTOSENSE_EN	0x1
-
 /* As per the EAS the maximum supported size is 9.5KB (9728 bytes) */
 #define MAX_JUMBO_FRAME_SIZE	0x2600
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d406aaea24af..47009fe0cbde 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4036,7 +4036,6 @@ static void igc_watchdog_task(struct work_struct *work)
 	struct igc_hw *hw = &adapter->hw;
 	struct igc_phy_info *phy = &hw->phy;
 	u16 phy_data, retry_count = 20;
-	u32 connsw;
 	u32 link;
 	int i;
 
@@ -4049,14 +4048,6 @@ static void igc_watchdog_task(struct work_struct *work)
 			link = false;
 	}
 
-	/* Force link down if we have fiber to swap to */
-	if (adapter->flags & IGC_FLAG_MAS_ENABLE) {
-		if (hw->phy.media_type == igc_media_type_copper) {
-			connsw = rd32(IGC_CONNSW);
-			if (!(connsw & IGC_CONNSW_AUTOSENSE_EN))
-				link = 0;
-		}
-	}
 	if (link) {
 		/* Cancel scheduled suspend requests. */
 		pm_runtime_resume(netdev->dev.parent);
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

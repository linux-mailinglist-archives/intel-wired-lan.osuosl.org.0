Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAED4045C4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 08:46:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6B164019C;
	Thu,  9 Sep 2021 06:46:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qQvBhRUHPbHy; Thu,  9 Sep 2021 06:46:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C93D34019D;
	Thu,  9 Sep 2021 06:46:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA0AE1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 06:46:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D38F48498D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 06:46:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o-FBv_FSOsgj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 06:46:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F45C8498B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 06:46:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="220381348"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="220381348"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 23:46:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="693936627"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.56])
 by fmsmga006.fm.intel.com with ESMTP; 08 Sep 2021 23:46:21 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org, michael.edri@intel.com,
 nechamax.kraus@intel.com
Date: Thu,  9 Sep 2021 09:46:18 +0300
Message-Id: <20210909064618.3643764-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Change Device Reset to Port
 Reset
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

_reset_hw_base method switched from port reset (CTRL[26]) to device reset
(CTRL[29]) since the FW was receiving an interrupt on CTRL[29].
FW code was later modified to also receive an interrupt on CTRL[26].
Since certain HW values are not reset to default by CTRL[29], we go back
to CTRL[26] for the HW reset, as it meets all current requirements.

This reverts commit bb4265ec24c13aacf3a613e64c701294b122beb7

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c    | 2 +-
 drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index 2612a58fc52a..f068b66b8025 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -40,7 +40,7 @@ static s32 igc_reset_hw_base(struct igc_hw *hw)
 	ctrl = rd32(IGC_CTRL);
 
 	hw_dbg("Issuing a global reset to MAC\n");
-	wr32(IGC_CTRL, ctrl | IGC_CTRL_DEV_RST);
+	wr32(IGC_CTRL, ctrl | IGC_CTRL_RST);
 
 	ret_val = igc_get_auto_rd_done(hw);
 	if (ret_val) {
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 8a9c54d38a16..fad27a4fea78 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -130,7 +130,7 @@
 #define IGC_ERR_SWFW_SYNC		13
 
 /* Device Control */
-#define IGC_CTRL_DEV_RST	0x20000000  /* Device reset */
+#define IGC_CTRL_RST		0x04000000  /* Global reset */
 
 #define IGC_CTRL_PHY_RST	0x80000000  /* PHY Reset */
 #define IGC_CTRL_SLU		0x00000040  /* Set link up (Force Link) */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F41E63FEC2A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Sep 2021 12:32:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F6DF827CE;
	Thu,  2 Sep 2021 10:32:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U_ZaeNS21axB; Thu,  2 Sep 2021 10:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AFD8827D8;
	Thu,  2 Sep 2021 10:32:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5EB331BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Sep 2021 10:32:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 44A02827A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Sep 2021 10:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OXYLp_OqIilv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Sep 2021 10:32:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A920A827A1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Sep 2021 10:32:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="219075725"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="219075725"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 03:32:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="542577168"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga002.fm.intel.com with ESMTP; 02 Sep 2021 03:32:10 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  2 Sep 2021 10:31:06 +0000
Message-Id: <20210902103106.51917-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix delay after global reset
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
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Recently simplified i40e_rebuild causes that FW sometimes
is not ready after NVM update, the ping does not return.

Modify the delay in case of EMPR reset.
Old delay was introduced for specific cards for 710 series.
Now it works for all the cards and delay was increased.

Fixes: 1fa51a650e1d ("i40e: Add delay after EMP reset for firmware to recover")
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 000991afcf27..e0c9e0e84aef 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10535,15 +10535,9 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	}
 	i40e_get_oem_version(&pf->hw);
 
-	if (test_bit(__I40E_EMP_RESET_INTR_RECEIVED, pf->state) &&
-	    ((hw->aq.fw_maj_ver == 4 && hw->aq.fw_min_ver <= 33) ||
-	     hw->aq.fw_maj_ver < 4) && hw->mac.type == I40E_MAC_XL710) {
-		/* The following delay is necessary for 4.33 firmware and older
-		 * to recover after EMP reset. 200 ms should suffice but we
-		 * put here 300 ms to be sure that FW is ready to operate
-		 * after reset.
-		 */
-		mdelay(300);
+	if (test_and_clear_bit(__I40E_EMP_RESET_INTR_RECEIVED, pf->state)) {
+		/* The following delay is necessary for firmware update. */
+		mdelay(1000);
 	}
 
 	/* re-verify the eeprom if we just had an EMP reset */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

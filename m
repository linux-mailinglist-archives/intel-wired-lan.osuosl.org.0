Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA8743E2A2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Oct 2021 15:51:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27A2760B5C;
	Thu, 28 Oct 2021 13:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W6M_wltzg1gH; Thu, 28 Oct 2021 13:51:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C91A60796;
	Thu, 28 Oct 2021 13:51:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5BE581BF846
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 13:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AE79823F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 13:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HdTyWmKtlhXs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Oct 2021 13:51:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A77C1823F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 13:51:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="293866508"
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="293866508"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 06:51:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="498405311"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga008.jf.intel.com with ESMTP; 28 Oct 2021 06:51:17 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Oct 2021 13:51:14 +0000
Message-Id: <20211028135114.202530-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Increase delay to 1 s after
 global EMP reset
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

Increase the delay in case of EMP reset.
Old delay of 300 ms was introduced for specific cards for 710 series.
Now it works for all the cards and delay was increased.

Fixes: 1fa51a650e1d ("i40e: Add delay after EMP reset for firmware to recover")
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)
---
V2: Fix commit msg
---
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 85b076123663..1cec920bff28 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10492,15 +10492,9 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
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

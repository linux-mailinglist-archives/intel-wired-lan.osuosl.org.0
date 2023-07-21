Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F48B75D006
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 18:50:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43C8141824;
	Fri, 21 Jul 2023 16:50:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43C8141824
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689958236;
	bh=eFgc1a/cjCcgTUK233GFybkHx2cOy3XmDbZirakId2s=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gsjw5W/naInkmRBNUEkCdV5Gfm+vYef/nEChq2WbwdOaSgI/TQyQiuuLx8D+0pPYw
	 rUKkcIutBFzkbPVGrYvnCvEw/uljTjiRfMGg/rxiPQPzeTGRX6/YYwIVZffvkdl+Kr
	 2XHF+Bm8bLGvL/nX2DEjzujxrPqXdjyuxs2CfbGGZaHsmgng6Hg8FuqpTDfT4kkefJ
	 mAdATm6dwXmzvE65ZkRsSsnk4wu6TIgGnI8AFstVINJzONBymLVM6JQA2Yco/yOI3/
	 jBdwQSXfa2hllnRIEENk2XxeCXuvEw6oaAjXJEEn10yIl/EwBqzdgp4gw2d16pHGxj
	 PBkLmiife908A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MBbmFZa-0g9J; Fri, 21 Jul 2023 16:50:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28A4A4181D;
	Fri, 21 Jul 2023 16:50:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28A4A4181D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B04021BF376
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 16:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7FAF741FBB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 16:50:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FAF741FBB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yYQaDDB99RXu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 16:50:26 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 21 Jul 2023 16:50:26 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4103341FAF
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4103341FAF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 16:50:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="357055490"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="357055490"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 09:43:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="838626464"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="838626464"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga002.fm.intel.com with ESMTP; 21 Jul 2023 09:43:15 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anthony.l.nguyen@intel.com
Date: Fri, 21 Jul 2023 18:43:15 +0200
Message-Id: <20230721164315.48928-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689958226; x=1721494226;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wGMHzP/JNa0kUPLFnKMK0adXLKaxejw9I86+5RogQUk=;
 b=Gjz1YAnCQ5ic4/Fv4UFhxzPH/xXb7ymWpr/toG3b7k2sQ5BeZ2GnzLxy
 aOK9IWgGng7HbRrIIf5t8jFtoj9hyZv2/01drCDpozZ4aZHGtCo55vs7j
 f8bgWdcsm9MdJN0FJHZhXpv8K1n3U2S8e4tgqy/7uoVPr28JLM9lh8jPs
 hNcAlFnz0u1NNtfnoS2HnL8ri3NKou4F/wUdHlr3D3oGeO8z/7z/k7bBh
 wleZ4msyt+V53uDqiFX5t39T7vWEzZ6OTzvy8CUyeWQgG1QXrdNehANsO
 6gewdzhKBACpUyNPQQQ5RmN/2YURTObAceCJ07IGVmTGfMsxKXSWoSpdv
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gjz1YAnC
Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix livelocks in
 i40e_reset_subtask()
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

Fix livelocks by aquiring rtnl_lock() before any reset related operations.
Add rtnl_lock()/rtnl_unlock() at top/bottom of i40e_reset_subtask()
Add check for __I40E_RESET_INTR_RECEIVED bit.
Add re-entry guard by fast return in case reset is already in progress.

Fixes: 373149fc99a0 ("i40e: Decrease the scope of rtnl lock")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 39 +++++++++++----------
 1 file changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d0604ed..ec29bfa 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -9864,42 +9864,44 @@ static void i40e_reset_subtask(struct i40e_pf *pf)
 {
 	u32 reset_flags = 0;
 
-	if (test_bit(__I40E_REINIT_REQUESTED, pf->state)) {
+	if (test_and_clear_bit(__I40E_REINIT_REQUESTED, pf->state))
 		reset_flags |= BIT(__I40E_REINIT_REQUESTED);
-		clear_bit(__I40E_REINIT_REQUESTED, pf->state);
-	}
-	if (test_bit(__I40E_PF_RESET_REQUESTED, pf->state)) {
+	if (test_and_clear_bit(__I40E_PF_RESET_REQUESTED, pf->state))
 		reset_flags |= BIT(__I40E_PF_RESET_REQUESTED);
-		clear_bit(__I40E_PF_RESET_REQUESTED, pf->state);
-	}
-	if (test_bit(__I40E_CORE_RESET_REQUESTED, pf->state)) {
+	if (test_and_clear_bit(__I40E_CORE_RESET_REQUESTED, pf->state))
 		reset_flags |= BIT(__I40E_CORE_RESET_REQUESTED);
-		clear_bit(__I40E_CORE_RESET_REQUESTED, pf->state);
-	}
-	if (test_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state)) {
+	if (test_and_clear_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state))
 		reset_flags |= BIT(__I40E_GLOBAL_RESET_REQUESTED);
-		clear_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state);
-	}
-	if (test_bit(__I40E_DOWN_REQUESTED, pf->state)) {
+	if (test_and_clear_bit(__I40E_DOWN_REQUESTED, pf->state))
 		reset_flags |= BIT(__I40E_DOWN_REQUESTED);
-		clear_bit(__I40E_DOWN_REQUESTED, pf->state);
-	}
+	if (test_and_clear_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
+		reset_flags |= BIT(__I40E_RESET_INTR_RECEIVED);
+
+	if (!(reset_flags & (BIT(__I40E_PF_RESET_REQUESTED)
+			     | BIT(__I40E_CORE_RESET_REQUESTED)
+			     | BIT(__I40E_GLOBAL_RESET_REQUESTED)
+			     | BIT(__I40E_RESET_INTR_RECEIVED))))
+		return;
+
+	rtnl_lock();
 
 	/* If there's a recovery already waiting, it takes
 	 * precedence before starting a new reset sequence.
 	 */
-	if (test_bit(__I40E_RESET_INTR_RECEIVED, pf->state)) {
+	if (reset_flags & BIT(__I40E_RESET_INTR_RECEIVED)) {
 		i40e_prep_for_reset(pf);
 		i40e_reset(pf);
-		i40e_rebuild(pf, false, false);
+		i40e_rebuild(pf, false, true);
 	}
 
 	/* If we're already down or resetting, just bail */
 	if (reset_flags &&
 	    !test_bit(__I40E_DOWN, pf->state) &&
 	    !test_bit(__I40E_CONFIG_BUSY, pf->state)) {
-		i40e_do_reset(pf, reset_flags, false);
+		i40e_do_reset(pf, reset_flags, true);
 	}
+
+	rtnl_unlock();
 }
 
 /**
@@ -10532,7 +10534,6 @@ static void i40e_prep_for_reset(struct i40e_pf *pf)
 	i40e_status ret = 0;
 	u32 v;
 
-	clear_bit(__I40E_RESET_INTR_RECEIVED, pf->state);
 	if (test_and_set_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
 		return;
 	if (i40e_check_asq_alive(&pf->hw))
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0257640B6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 22:44:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CB9740BD0;
	Wed, 26 Jul 2023 20:44:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CB9740BD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690404242;
	bh=gORU14mz6nI4ntkBkoRC+TECOuOlx4+JMzV1rNkrk/M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rrj/cf5DTjl+AUNB7S3hKp+ss19nwDXnKEj7mb0eP//yw1APVgr0eYYVAUM9MWbN6
	 nyRzlRMrPzfP0ubEinNepE7nHJ1JMo4f0hy5Q69fD/lq1L7fw7ydtI1q1FEZrWcYxP
	 okfnI8l6q1ulYFTb5S/ZxaKnJNLrldueYyB63gnqkphmJ9LTm/OfURptShu2q7IYjH
	 /ixljwthMoVrp4ecHXH2xyWj4U9CBit4r0AU89Ba34Ed3gduF8WajkR5oG99Qtt31Y
	 zvLgpWymRXlKCnA46I+qFDlexZJi8FU84T65ti2MvaPIzRsbFQWLBv5KbVOL1EBjpK
	 ZB3bJrO7iHAKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nnnKAx--b1Qc; Wed, 26 Jul 2023 20:44:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E550C40A59;
	Wed, 26 Jul 2023 20:44:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E550C40A59
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23F131BF40D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 20:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E83D541E5D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 20:43:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E83D541E5D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 10UvdZOEG6oN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 20:43:54 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 682A441E57
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 20:43:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 682A441E57
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="454497991"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="454497991"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 13:43:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="850596997"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="850596997"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga004.jf.intel.com with ESMTP; 26 Jul 2023 13:43:52 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed, 26 Jul 2023 22:43:51 +0200
Message-Id: <20230726204351.3808746-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690404234; x=1721940234;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ATNnsOiTMEtI0S98jqNBLT7plr0THhPe+MhiAkmbc2c=;
 b=Z1QVDgz/1m7SIjnGTiK6cCVJ55LyVU5cbN0a4x/xQToLkH3Mesr61+Gg
 P5QEbQyjjBrPUsLnkzsIKVnbjLFm+kyOJ3i4Tb+MvFfhv0sNNdtHtS6jN
 vFnRdIc+2Qsw+iwN22Or5PnEuI0byNAT/Ru8nT17uKthP/COroGYWuUMj
 A45IErpNYC0UBQ07Pns78xLWPXm+wx/izppyP6GDriAjFj8hfl3A659xF
 B+f8bxU1wEjsKqNBD/gZ3VySkXH+LyMekXMu3H3Ql5ObmJ+fdFUBxsHI/
 MyvzR+IoWLE4HmRN8/jc6+J9ZeEBTzY3zCaYmibBdFRUotaBKhfaci8+7
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z1QVDgz/
Subject: [Intel-wired-lan] [PATCH iwl-net v4] i40e: fix livelocks in
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

Fix livelocks by acquiring rtnl_lock() before any reset related operations.
Add rtnl_lock()/rtnl_unlock() at top/bottom of i40e_reset_subtask()
Add check for __I40E_RESET_INTR_RECEIVED bit.
Add re-entry guard by fast return in case reset is already in progress.

Fixes: 373149fc99a0 ("i40e: Decrease the scope of rtnl lock")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v3->v4 fix | position in the code
v2->v3 fix typo in the commit message
v1->v2 * apply on https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git
---
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 39 +++++++++++----------
 1 file changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 7c30abd..164f7c6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10011,42 +10011,44 @@ static void i40e_reset_subtask(struct i40e_pf *pf)
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
+	if (!(reset_flags & (BIT(__I40E_PF_RESET_REQUESTED) |
+			     BIT(__I40E_CORE_RESET_REQUESTED) |
+			     BIT(__I40E_GLOBAL_RESET_REQUESTED) |
+			     BIT(__I40E_RESET_INTR_RECEIVED))))
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
@@ -10694,7 +10696,6 @@ static void i40e_prep_for_reset(struct i40e_pf *pf)
 	int ret = 0;
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

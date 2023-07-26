Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651E8762EC2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 09:52:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8702F4051F;
	Wed, 26 Jul 2023 07:52:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8702F4051F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690357962;
	bh=89oGqwiy00VcFaneyYkh/xpVK6ZKYSxznrMl7wYHdGE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bm/Ede43Xh3L4piYs676a0OPs+3hFzNjHnCjihuToXf0YI6IZG2HoSi0Q9bMHcAY3
	 IGrc6LyYiJavqKt25s4iNTcCCQG6XBSiDyQ7ncmVYCSo/BC1DJvda5sFtNDXdUrES/
	 1Ma6zJ2pISNgA64ibQ0jbvPAU88d5kwJp38+phSg1rQ8gsoCFkbmQLKzJS7YQRtY/o
	 fFprHllp6xdN9cWnR+y5Gn+nz5Swjr658ovYytQcqqT7/w99qaxJxQT5KJPsv1/SXL
	 F6PABo0byOFt0CKUKtv+IEY5WAqNtpLvmPBLNEbLwxLjp4q1YAYD+TDXxHsMb74mbI
	 JeLEBauLfTL9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id omGcdfZ15ZeK; Wed, 26 Jul 2023 07:52:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4224741C30;
	Wed, 26 Jul 2023 07:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4224741C30
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 769D91BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:52:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5971441C3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:52:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5971441C3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zAEkyA2asBFL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 07:52:34 +0000 (UTC)
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F416A4051A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:52:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F416A4051A
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="431747954"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="431747954"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 00:52:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="840173363"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="840173363"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2023 00:52:31 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed, 26 Jul 2023 09:52:30 +0200
Message-Id: <20230726075230.2848653-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690357953; x=1721893953;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/DRagek/IuGbcn0tXSTxu+Qcj8U2IxtFYoK9rn2ABUE=;
 b=Sgdiq3U2dLcHU3xsjyFqIk89pWKzj+NH06GwwIs0z26pgl7AZ3VEos7M
 psIHLhg5mYzmQN0nn2fCSj8lFTjLtqukdxmrcBTa1djlzymn3Yyuj199f
 FtVACu/11hB+M77K7Q+Pgt5QNzwQktg4KJGMVX+LIxxI8uzoUr66eVa+d
 OQ3Vy7P8ot4eWcuA4IRMyW+AlcoOMncdQeN5rgqD/o/W9QyJhqPRPTKNs
 pwZh7fHxE6a/jkfLDd1o5gLbrAKrWAnLPbgPdf7agyLbqdebaNYx5PW0e
 H7jziKRV2NGl89rBGjP2wDxpJVHPfxtB6ynv1mkyv+l37gJW2IIevNsK3
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sgdiq3U2
Subject: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix livelocks in
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

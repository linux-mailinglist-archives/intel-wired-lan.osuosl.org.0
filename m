Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A52C175D606
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 22:57:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 467174186B;
	Fri, 21 Jul 2023 20:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 467174186B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689973033;
	bh=0g+zl7hMjT9dq551GX0rKaOfYEqhWkwj1s8WxaMRxkA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AHfg39myeW1WCrZXl+sdmnpuTWM27fDa+K6ReQLXrP47xXF7LjoNau47t6IUwuhYi
	 yzcCKOfF3ofxK+kt6LF4zgm2Wq7YMVyHEytDD+0gTJKA6njzJLsz26s4JbjsVK36o1
	 AeP7k1NMB3Je98bgOvjgcTjuAe3QYMaQrzoYTLLUDOmhDIO0fD0PBg4DbDr5BSU+II
	 gvx0iJEkjXP5Y7jA18KjuvVfr+ENwTG8bxlfShlV5j2xxKavHecMQy+3Oi75D0gzkR
	 3L254fWyIQo/krGc8aX8Zz3PLGm7wSC54VtAL/Bpk6/BtExajfJ0dvvW3dDXg2aBgl
	 R19xdSNj7WgoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RMyEpjRMU23K; Fri, 21 Jul 2023 20:57:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00AF640128;
	Fri, 21 Jul 2023 20:57:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00AF640128
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 160BE1BF299
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 20:56:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD32F4185C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 20:56:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD32F4185C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jis67eXOrRT9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 20:56:53 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 21 Jul 2023 20:56:53 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 128AD40128
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 128AD40128
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 20:56:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="364577778"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="364577778"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 13:49:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="790305428"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="790305428"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga008.fm.intel.com with ESMTP; 21 Jul 2023 13:49:44 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Fri, 21 Jul 2023 22:49:43 +0200
Message-Id: <20230721204943.701303-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689973013; x=1721509013;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2DSwUEIy8+pldt3wpXfkteiSrYf8jkA26/n0BT4UXVA=;
 b=VdDuJsuJ2yrCO4Pem8bMj9zzZN+mrK6mlyfniBkncQIY4L3/4ERyemPv
 KjfyXdxgVXrm8GyFZSVcrwuhUGvVI4G039TLvNK9jCUSVUSAXTVpIlesx
 quj/rfeyiX8d8KuG4Y41NjSMViDzsmG5tTv4m+loFmmqb1TNwVvLUvHJp
 iJsksD8RpdCtP4PZiaDlxT/Ew+UBTtsKxg6u508D6suuSMXCKiUbfuPzT
 E85TQrqDJjZd4fx7ObFn6NFRvRv6Sga5P0E8ZLXtpho88krqmw67+gSzc
 04Uc5m/Rj3QiFz7UZfhBnsLoIYD5KIP96fmPNMrvefxMtsDM5OhGFWmIM
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VdDuJsuJ
Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix livelocks in
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
v1->v2
* apply on https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git
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

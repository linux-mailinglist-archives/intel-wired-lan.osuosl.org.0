Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D507778AA6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 12:07:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D72D283F26;
	Fri, 11 Aug 2023 10:07:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D72D283F26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691748442;
	bh=X6tCWnY4yKSVxnKhIlchHKmEO0YcWihWkocrBPKL4sg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=phjEk0GydVR1AHMrtKndReV2GmWlfBFVV8G/DgC6JjUT5WVHXBDX3AUAWXuEJhbot
	 oWZRQycn41qsFLgAbqUyrWd9z7TQEN2lAHO1cYUNWWbnDtrj+gtR+lbLLA+ZQP6JAo
	 3wbjxrEn4m0mDasxIqIv3MuM/o9BKkZatGpeQRMkGSAUD03KXIzxkc2WsImU8Zgldq
	 U6lGQFn+Ygg/hWnPQ4Yci8xoaztTXnQpTduiWTdx4MkBwww2SKtolHo1GQPudmRiVb
	 MQgLMrVONq0D/lCZRw/4T+h+k5sVQXMr4omvX9k0d3nvreS8r++LcJv2nw9gaK4A9V
	 us/TmiD02+JQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9JZgGXJKMjKC; Fri, 11 Aug 2023 10:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A711583CDC;
	Fri, 11 Aug 2023 10:07:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A711583CDC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C33601BF289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 10:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 989A641DB3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 10:07:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 989A641DB3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zqur6jtmJA7u for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 10:07:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D03741DA6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 10:07:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D03741DA6
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="437981360"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="437981360"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 03:07:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="856253963"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="856253963"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga004.jf.intel.com with ESMTP; 11 Aug 2023 03:07:13 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Fri, 11 Aug 2023 12:07:12 +0200
Message-Id: <20230811100712.1777167-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691748435; x=1723284435;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2wezJuviyXPRetzkRCTier76xevElDJJgJhimQhLhhk=;
 b=TgAKtB30lWjQZSSmja8rGeKAvPBPWCsF1fZ8t1rB5T3MCeu1gjNqiO8V
 +sjwHav5C7TmlUgRR8WUJg8yKnt/Vli6ZzXoZXTH1lstm5mXdOchPOSK5
 bPA47OxOaAM1qJU14DgUiy6/l69+xqVUoKdpVMlL5VUHUMIjg6y+21EWu
 j3+XZZWQ622kcsn64H2v9NLsHpGz1sqD/enrYxK7frPT/slNR5wi+uuCO
 hVJvyxTqkqfY5FdOMbGZfE8LfGyFNQLZkXDi4Kx7mBn/XJFb50mC5UjFV
 Rt6vhlWyobHm182yOY9ygBPq57NSoj1mO+9y0cuK+LBTXg/mW/qA/RvZz
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TgAKtB30
Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix 32bit FW gtime
 wrapping issue
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

Before the i40e_nvm code didn't take into account that 32bit FW gtime
wraps ~70minutes, timeout was calculated as 64bit gtime + NVM_TIMEOUT
, so when gtime was ~70minutes, then gtime could not become greater
than 64bit timeout value and the semaphore to be considered as expired.

Decrease hw_semaphore_timeout size down to 32bits, because FW
I40E_GLVFGEN_TIMER register is 32bits only anyway, but having
both variables same u32 size simplifies code.
Fix FW write semaphore expiration condition, taking into account
that I40E_GLVFGEN_TIMER wraps, by checking the sign of subtraction
of two 32 bit vaues.

Fixes: 56a62fc86895 ("i40e: init code and hardware support")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1->v2 in commit message: add 'Fixes' tag, fix a typo
---
---
 drivers/net/ethernet/intel/i40e/i40e_nvm.c  | 8 ++++----
 drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index 9da0c87..0fe8fc3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -55,7 +55,7 @@ int i40e_init_nvm(struct i40e_hw *hw)
 int i40e_acquire_nvm(struct i40e_hw *hw,
 		     enum i40e_aq_resource_access_type access)
 {
-	u64 gtime, timeout;
+	u32 gtime, timeout;
 	u64 time_left = 0;
 	int ret_code = 0;
 
@@ -78,7 +78,7 @@ int i40e_acquire_nvm(struct i40e_hw *hw,
 	if (ret_code && time_left) {
 		/* Poll until the current NVM owner timeouts */
 		timeout = I40E_MS_TO_GTIME(I40E_MAX_NVM_TIMEOUT) + gtime;
-		while ((gtime < timeout) && time_left) {
+		while ((s32)(gtime - timeout) < 0 && time_left) {
 			usleep_range(10000, 20000);
 			gtime = rd32(hw, I40E_GLVFGEN_TIMER);
 			ret_code = i40e_aq_request_resource(hw,
@@ -1192,9 +1192,9 @@ static int i40e_nvmupd_state_writing(struct i40e_hw *hw,
 		u32 gtime;
 
 		gtime = rd32(hw, I40E_GLVFGEN_TIMER);
-		if (gtime >= hw->nvm.hw_semaphore_timeout) {
+		if ((s32)(gtime - hw->nvm.hw_semaphore_timeout) >= 0) {
 			i40e_debug(hw, I40E_DEBUG_ALL,
-				   "NVMUPD: write semaphore expired (%d >= %lld), retrying\n",
+				   "NVMUPD: write semaphore expired (%d >= %d), retrying\n",
 				   gtime, hw->nvm.hw_semaphore_timeout);
 			i40e_release_nvm(hw);
 			status = i40e_acquire_nvm(hw, I40E_RESOURCE_WRITE);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 388c3d3..efffe27 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -328,7 +328,7 @@ enum i40e_aq_resource_access_type {
 };
 
 struct i40e_nvm_info {
-	u64 hw_semaphore_timeout; /* usec global time (GTIME resolution) */
+	u32 hw_semaphore_timeout; /* usec global time (GTIME resolution) */
 	u32 timeout;              /* [ms] */
 	u16 sr_size;              /* Shadow RAM size in words */
 	bool blank_nvm_mode;      /* is NVM empty (no FW present)*/
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

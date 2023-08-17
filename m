Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB48077FE83
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 21:28:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4792160B8C;
	Thu, 17 Aug 2023 19:28:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4792160B8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692300506;
	bh=KZ25nE/6FBH2fPrmSF+Rj6TJZQEGY1vhZ6Sk8EbPxoE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YqaN11iCe0HJ4k7ZPFNOVXcyWzWNGGbL+/YawWeQbxGm/hasc/x5C7IbWJ4S8AFed
	 OSxtL8VT7BanVSjFIZynxgNA6p2W54QR8mJc+85IQGjs6D2ZHWqmqmvwSh+8GN/hep
	 zE6sIt12byO0SiU9+ak/1293rTzNcAhVICwJ7fI9ZbyOhvycV7NOxllw9FieUr/TV9
	 eXuCYoaQNJBo5Q3bKy3AKQEMmU8md7P+Gtj0mZQcYOO+w+/vvOZXWtJYipsAF5YWTx
	 mwAAqgCwdocGXb/rUuWaQO/UE/xPpzczVZBk64N7xE2npywSUoBVBoJwS+79lghUyU
	 mWamg7tcotEcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G6zRM3LweYjS; Thu, 17 Aug 2023 19:28:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2044C60758;
	Thu, 17 Aug 2023 19:28:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2044C60758
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D7B2C1BF37F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 19:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCDAF83ED1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 19:28:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCDAF83ED1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GYcJX5IN3Tq3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 19:28:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D45A83ECF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 19:28:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D45A83ECF
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="375689293"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="375689293"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 12:28:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="848972216"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="848972216"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2023 12:28:16 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Thu, 17 Aug 2023 21:28:16 +0200
Message-Id: <20230817192816.969638-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692300499; x=1723836499;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XsRPt9gtCGV6VLHlgT5MWnfcG/dTVhnhJpc9eM0eocM=;
 b=TSEfR1PxplBSQAGkpyqfcKmw+2j3KT5ETMV/Im73KBR7hktbo61g9GF9
 c68EclzeDqXybh1KRr6I6b0Knw+KINc+IwL5b5X1hByqVg5XV1HXBY+Ss
 vu3zPClDi21Kxh83ELCVzTW7lnM4M8V2T+Czge0L+SijmpRwvUN0IJNXI
 LnrwaV+5d6dcOEsvrt5h2s4IsRTWJIXDdNRocPFyb2tiziAG3laWnnpOQ
 1GceFgy1BLJkDzmJ1DaYgW785V8bVyK55mFaZfLRo0fo13DXmGgw9jWhr
 w4Lr6tLvBIAmWU3o+rA+UOAEEN+6lrpBQ6ccHsX0IenJtQEcicxp58nOY
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TSEfR1Px
Subject: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix 32bit FW gtime
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
of two 32 bit values.

Fixes: 56a62fc86895 ("i40e: init code and hardware support")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2->v3 fix commit message
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

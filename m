Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C700276C5F7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 08:58:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6005240CA7;
	Wed,  2 Aug 2023 06:58:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6005240CA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690959490;
	bh=3QRndLGbkdtTpMkrtr15uAiJaR/WyiuX9yF79BpxiqE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=q2YoUC47X1qzvidnNE2KB91c8AfoV44K1UncMst/+YntTC2GkV91CK3dO7Iz3FsQo
	 0jjyA3av//p9Cai6dscnUQ2BU9XANpl533WLAVbef6vHhGHQP8Ejma2U48IkzbP3IK
	 u9FWcL1D/tRDeD8MWYh6hmR2yppF1MAK3y3gda8xnpcJ+tiQpSAuwXrcVODNHWEk6X
	 D61QqHw3YURRPlXdnYmlI39DaR8LGfnzpaQ124gx3cMuHuiORr+JJC30aYhSyZ75fc
	 svmxYpK/tRgQk3fp5J1UK0hv2Nsi4vYcP9ua5fL3rOs2UAygFTbCKE6RjZCjYlrAQh
	 pUS5IGohsfTrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Tit9l4-_Oez; Wed,  2 Aug 2023 06:58:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9477240462;
	Wed,  2 Aug 2023 06:58:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9477240462
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58C4C1BF387
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 06:58:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA69740CA4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 06:57:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA69740CA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W_A97lqW1o4b for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 06:57:41 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E686E40395
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 06:57:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E686E40395
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="349099720"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="349099720"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 23:57:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="852773246"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="852773246"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga004.jf.intel.com with ESMTP; 01 Aug 2023 23:57:37 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed,  2 Aug 2023 08:57:36 +0200
Message-Id: <20230802065736.3556651-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690959461; x=1722495461;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YFFvrD5iqt+vDtLfLr93NHwceshuQZWhATxO7Hcf6hU=;
 b=BmrhkjGvzgE+ChnugvoIU93WGoSo/bFO5t81ZCH/AeSGQyDZ85ee4pl3
 TiRSVqoIxiS6nKNYMklMpIHqA/45Ycvh2RvfDnUlIL88pas2VhxLpgJdW
 pJLEiSeirKGNvUqC7WWEvs0bkI8txvUDgReExrDElg++iJ/SeA4OL3dBo
 8QK+pfKn3WbJ3WoUna0wWRR+xIj3X+/tyvGrcGOzPHU8zAAmzSdI4R+E1
 LROUmLSURXe4XwROkbHY90M+acN02MPxgJTGgXNa7sjgFc4Szf0G74p/a
 E/yrUQJqykH2TiZmSDQ4/TJ5c9803xJ+dvIqxf9RHXPAk1ibPhZM/uHNJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BmrhkjGv
Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix 32bit FW gtime
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

Decrease hw_semaphore_timeout size down to 32bits, because FW
I40E_GLVFGEN_TIMER register is 32bits only anyway, but having
both variables same u32 size simplifies code.
Fix FW write semaphore expiration condition, taking into account
that I40E_GLVFGEN_TIMER wraps, by checking the sign of substraction
of two 32 bit vaues.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
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

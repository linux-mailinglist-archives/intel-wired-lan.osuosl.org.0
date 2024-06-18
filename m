Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C6890D3A3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 16:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 785E582A87;
	Tue, 18 Jun 2024 14:10:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w8uFF8kjmpRt; Tue, 18 Jun 2024 14:10:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D0CE82998
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718719812;
	bh=0Q1AjjqUzP5AwJaPJHVqfpDTA4M0RpIdgT5Rm9/wS2o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=51dcHU9EvrnTM45/2r5cUoE+fq0m9L+gb+gPFVyaDM2Lm9i/dNICw4Vo/yMp7W9BJ
	 EWugWXZhjcFw8Kii9nR8Mzo4a16E7PDDASK6oeSb5NW5X6mi0flFUaDP/5uIWmTgoK
	 TcFLWbGAcH0+weWPj1yPNiLOkPmbyX6GgPyGwMGv5cX4Y4kS8pWF6jvBaLdzXRg5oz
	 ULvbkQwwkerxnXFyMyra3CewdGob60+dEENRKBMGKRGOg2J8c6nY4eA9KnO/OU6nkf
	 Z0uowRAsnsdOjOAM2ClmUTSiEQeFZ8S/SfAPxvMPfkzcGIrzkldEL/4re5Kz6V3LF2
	 rZLipskNLug5Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D0CE82998;
	Tue, 18 Jun 2024 14:10:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19BA11BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 06196826A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id syaUYaHV6FmU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 14:10:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0B0BC82542
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B0BC82542
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B0BC82542
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:08 +0000 (UTC)
X-CSE-ConnectionGUID: 0/Hkn5z1T5S/Wv4Y0xhZNQ==
X-CSE-MsgGUID: Vf/qt/IhSFCA2zVrpQglPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="33137767"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="33137767"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:10:07 -0700
X-CSE-ConnectionGUID: qQeLlSM8QHCO4UtPMpi4Ag==
X-CSE-MsgGUID: M1HNCxgWTqWx1PUhFWH4ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="46109786"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 18 Jun 2024 07:10:06 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 58EA934302;
 Tue, 18 Jun 2024 15:10:03 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Jun 2024 16:11:53 +0200
Message-ID: <20240618141157.1881093-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718719809; x=1750255809;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rZfZ8LRS4yetc2xWtSvNng1weoxkVzK97MXMga9e7+k=;
 b=cSz9+jZeXnU8yOM1zkqp/IYXSzzDzu/inio+056wXo9xOohp84hfunA1
 uub7+helKmcYyzLi69sS9KL7hhf0Ia2B/vJlGBtEObtWNvVXbkUKIvBRZ
 cACVmjnWebWADjsA8h+k3/rIFqtfJcaIGpv4MXrBAB2ih3xsZYsLhDyz9
 yffK/wAi8SafnVrbghekBU7NajiLoIe0RiHhMWKae96wIuojMM5zIHB/Q
 OLfUi1KB1hkqQcbuGEZ6cgCP30Uc+uJ4sQqAIkeMPTr5DUk4mfJnKtTgk
 C+J3BeoY2bN1ldeYCIPQLDclZ5Q43/WC92Z8AMlc9elwQwL5M14vMDlDB
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cSz9+jZe
Subject: [Intel-wired-lan] [PATCH iwl-next 2/6] ice: Remove reading all
 recipes before adding a new one
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 przemyslaw.kitszel@intel.com, michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

The content of the first read recipe is used as a template when adding a
recipe. It isn't needed - only prune index is directly set from there. Set
it in the code instead. Also, now there's no need to set rid and lookup
indexes to 0, as the whole recipe buffer is initialized to 0.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 29 ++-------------------
 1 file changed, 2 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 0d58cf185698..da065512889d 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5079,11 +5079,9 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 {
 	DECLARE_BITMAP(result_idx_bm, ICE_MAX_FV_WORDS);
 	struct ice_aqc_recipe_content *content;
-	struct ice_aqc_recipe_data_elem *tmp;
 	struct ice_aqc_recipe_data_elem *buf;
 	struct ice_recp_grp_entry *entry;
 	u16 free_res_idx;
-	u16 recipe_count;
 	u8 chain_idx;
 	u8 recps = 0;
 	int status;
@@ -5110,10 +5108,6 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 	if (rm->n_grp_count > ICE_MAX_CHAIN_RECIPE)
 		return -ENOSPC;
 
-	tmp = kcalloc(ICE_MAX_NUM_RECIPES, sizeof(*tmp), GFP_KERNEL);
-	if (!tmp)
-		return -ENOMEM;
-
 	buf = devm_kcalloc(ice_hw_to_dev(hw), rm->n_grp_count, sizeof(*buf),
 			   GFP_KERNEL);
 	if (!buf) {
@@ -5122,11 +5116,6 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 	}
 
 	bitmap_zero(rm->r_bitmap, ICE_MAX_NUM_RECIPES);
-	recipe_count = ICE_MAX_NUM_RECIPES;
-	status = ice_aq_get_recipe(hw, tmp, &recipe_count, ICE_SW_LKUP_MAC,
-				   NULL);
-	if (status || recipe_count == 0)
-		goto err_unroll;
 
 	/* Allocate the recipe resources, and configure them according to the
 	 * match fields from protocol headers and extracted field vectors.
@@ -5141,19 +5130,9 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 
 		content = &buf[recps].content;
 
-		/* Clear the result index of the located recipe, as this will be
-		 * updated, if needed, later in the recipe creation process.
-		 */
-		tmp[0].content.result_indx = 0;
-
-		buf[recps] = tmp[0];
 		buf[recps].recipe_indx = (u8)entry->rid;
-		/* if the recipe is a non-root recipe RID should be programmed
-		 * as 0 for the rules to be applied correctly.
-		 */
-		content->rid = 0;
-		memset(&content->lkup_indx, 0,
-		       sizeof(content->lkup_indx));
+
+		buf[recps].content.act_ctrl |= ICE_AQ_RECIPE_ACT_PRUNE_INDX_M;
 
 		/* All recipes use look-up index 0 to match switch ID. */
 		content->lkup_indx[0] = ICE_AQ_SW_ID_LKUP_IDX;
@@ -5192,8 +5171,6 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 		}
 
 		/* fill recipe dependencies */
-		bitmap_zero((unsigned long *)buf[recps].recipe_bitmap,
-			    ICE_MAX_NUM_RECIPES);
 		set_bit(buf[recps].recipe_indx,
 			(unsigned long *)buf[recps].recipe_bitmap);
 		content->act_ctrl_fwd_priority = rm->priority;
@@ -5357,12 +5334,10 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 		recp->recp_created = true;
 	}
 	rm->root_buf = buf;
-	kfree(tmp);
 	return status;
 
 err_unroll:
 err_mem:
-	kfree(tmp);
 	devm_kfree(ice_hw_to_dev(hw), buf);
 	return status;
 }
-- 
2.45.0


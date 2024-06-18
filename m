Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CAB90D3A7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 16:10:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5023F82CFD;
	Tue, 18 Jun 2024 14:10:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bKUvbwQigzM8; Tue, 18 Jun 2024 14:10:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80B7082C1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718719818;
	bh=UgIy/mz3ItW+gAStYVyAauxPKReQHUc6QJqsQ9aAVBU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TTbGBnlpebOUBs/lQgZDbiPn2Qpem5/b+O7GS9UHidZnBH+1opR+fY693+MTwJDi7
	 HiAcdemHp8Oz/7fseAAew3UDQ5yjsP3Y7NJwEb937p+FvLScEPrai4gKZLLp18+abE
	 BaYsA2zcemOOjWccLc7L+9qOdwZE34bfFlgx+QgnWAjk24qhTP3ZEMBT6y7GbrFmJR
	 k2XsZLJ+aVG0JePcrQ4sBWIm+xqm2NWs0wWoM9/TRtanGn+uhTUnmoWZ47gH7HpRSV
	 d8MggPbBSKNFXvxtpueBEs+mHsxgYLu/lutEWbYIBGrdQghmdNODt/3YBKL5cRw+tF
	 BuSIQMq/B4U8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80B7082C1E;
	Tue, 18 Jun 2024 14:10:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43F4D1BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B02D76101D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Vp32V57WD_2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 14:10:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D185761079
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D185761079
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D185761079
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:08 +0000 (UTC)
X-CSE-ConnectionGUID: +bbH904fR4OeM3yn9xbqEA==
X-CSE-MsgGUID: tn0U4BR5RRCRfbnkQldT2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="33137763"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="33137763"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:10:07 -0700
X-CSE-ConnectionGUID: fLHfjfHSR8mKrvn9MkPapw==
X-CSE-MsgGUID: hPbZKoTgQKSiBgs38Gw0Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="46109784"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 18 Jun 2024 07:10:06 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1AC1434303;
 Tue, 18 Jun 2024 15:10:04 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Jun 2024 16:11:54 +0200
Message-ID: <20240618141157.1881093-4-marcin.szycik@linux.intel.com>
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
 bh=PIqB4rFiMrFAlkCeJHL/ify4wZ0oHDRov88sGKpKzkA=;
 b=MBQ0IJyIsy83xCg057VISF+sE8OiWykmyxTMYlHWi8vZYDw8oQLJ6nEs
 rQgDNL06jIjgWSvvrxwccw9Che6KP4Uxp6eRuhI/YJy9taWss4w4RDPqO
 /cBPkcsnRabci5u6YgpXlshpePNS8FzXClRDeE87Ga16/nZeI8SfL2cq5
 y4eKdqAm2gxEmaRqeFcvMW1d65Mo8uZl0aYLaMaCkWbjPJfjih5Qt+ZW3
 VQl8QHLyQT21UYbbUCSllFtRr5mZ4SIPJ3e4PYC+Du9xNrnxl0F23RT27
 XPzjoZVp5zQZ8Zup4MXQPd4vMXsGHUDNwHhTTe5jMsSZOs31KkHHnkbxy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MBQ0IJyI
Subject: [Intel-wired-lan] [PATCH iwl-next 3/6] ice: Simplify bitmap setting
 in adding recipe
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

Remove unnecessary size checks when copying bitmaps in ice_add_sw_recipe()
and replace them with compile time assert. Check if the bitmaps are equal
size, as they are copied both ways.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 24 ++++++++-------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index da065512889d..2f67fbb73fd1 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5067,6 +5067,10 @@ ice_find_free_recp_res_idx(struct ice_hw *hw, const unsigned long *profiles,
 	return (u16)bitmap_weight(free_idx, ICE_MAX_FV_WORDS);
 }
 
+/* For memcpy in ice_add_sw_recipe. */
+static_assert(sizeof(((struct ice_aqc_recipe_data_elem *)0)->recipe_bitmap) ==
+	      sizeof(((struct ice_sw_recipe *)0)->r_bitmap));
+
 /**
  * ice_add_sw_recipe - function to call AQ calls to create switch recipe
  * @hw: pointer to hardware structure
@@ -5187,13 +5191,9 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 		rm->root_rid = buf[0].recipe_indx;
 		set_bit(buf[0].recipe_indx, rm->r_bitmap);
 		buf[0].content.rid = rm->root_rid | ICE_AQ_RECIPE_ID_IS_ROOT;
-		if (sizeof(buf[0].recipe_bitmap) >= sizeof(rm->r_bitmap)) {
-			memcpy(buf[0].recipe_bitmap, rm->r_bitmap,
-			       sizeof(buf[0].recipe_bitmap));
-		} else {
-			status = -EINVAL;
-			goto err_unroll;
-		}
+		memcpy(buf[0].recipe_bitmap, rm->r_bitmap,
+		       sizeof(buf[0].recipe_bitmap));
+
 		/* Applicable only for ROOT_RECIPE, set the fwd_priority for
 		 * the recipe which is getting created if specified
 		 * by user. Usually any advanced switch filter, which results
@@ -5256,14 +5256,8 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 			set_bit(entry->rid, rm->r_bitmap);
 		}
 		list_add(&last_chain_entry->l_entry, &rm->rg_list);
-		if (sizeof(buf[recps].recipe_bitmap) >=
-		    sizeof(rm->r_bitmap)) {
-			memcpy(buf[recps].recipe_bitmap, rm->r_bitmap,
-			       sizeof(buf[recps].recipe_bitmap));
-		} else {
-			status = -EINVAL;
-			goto err_unroll;
-		}
+		memcpy(buf[recps].recipe_bitmap, rm->r_bitmap,
+		       sizeof(buf[recps].recipe_bitmap));
 		content->act_ctrl_fwd_priority = rm->priority;
 
 		recps++;
-- 
2.45.0


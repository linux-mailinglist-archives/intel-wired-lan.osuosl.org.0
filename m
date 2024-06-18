Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 527E390D3A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 16:10:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3D4C82B53;
	Tue, 18 Jun 2024 14:10:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MFPAsjAAaylY; Tue, 18 Jun 2024 14:10:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D04EE82AA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718719813;
	bh=Mz2Pu7dzToS+T//W7cb5ue/MB7V15amOSo6CToa/pic=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AZIXBQy+qxDk3DTupW4q1pzjGHsO0YsApFTCRsVRJZUwNy9CcRASE3MresM6qk9M5
	 eDGg5KsXtkZpEyVzjWbIFANmAnbxqCVOo1xYZDLyT6w48RglrsTzZn2dmRqWxrrS8A
	 W9zb1yPbsO3YDCzNAHjJ/J0mOhLMnyAXeSnNIrB4ASj3W948wQDiq28f/UqVAM6QXa
	 ByDqQys01xYGs7TXqMUYAXYyxhu+mzWvrEdsDL29q5MWM2C/d6a9d2THkIyjqQlU80
	 dPubS8QZ4TMvn8zjSPkGOkXJeFdAB5WN9/LVtHQYOqxnPr6sabQ3j4YQ5m8dXbBBXn
	 f/neYNq0T8Hrw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D04EE82AA7;
	Tue, 18 Jun 2024 14:10:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6401B1BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5167C610AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rGstyzY0GxX8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 14:10:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8376F6102A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8376F6102A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8376F6102A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:08 +0000 (UTC)
X-CSE-ConnectionGUID: trQrTC8PT5GE1FDfZhwx+w==
X-CSE-MsgGUID: rX2+/gvQSvSrRtwvILcQpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="33137755"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="33137755"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:10:06 -0700
X-CSE-ConnectionGUID: L03I+aHJTMGB70EC+Zxh+A==
X-CSE-MsgGUID: aHF89izGQmaMk5p6Wp8TpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="46109778"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 18 Jun 2024 07:10:05 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C12AE34301;
 Tue, 18 Jun 2024 15:10:02 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Jun 2024 16:11:52 +0200
Message-ID: <20240618141157.1881093-2-marcin.szycik@linux.intel.com>
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
 bh=00WpGcsEMIsU9URS7/+Rk5iXtCeARQolpArF+UPgl5w=;
 b=E3C6AeTb7AzVTpLMgIIX79Wjr9dDcgXExfCMdpi1EOyo0QFUE+CGDvsL
 qDXhae401g2dEa1g/XK5i8/za/AvMbmXkU0kvHx/Z6770GVsWJpvxksle
 2G1EwXTRO78lgxUbtZ9eaXFL7TjpTD3cHoVaEb13WQ3++ngLZmbzH2QNn
 vxkGKDf4tVDKpDzs1cCVOyaNVN5caWK4iVaMtwvFe+448N847mTtwRkF9
 zqa3WCksdsDtojiLh63OKtmIWRyAKBUXnuFtlqTPGECxQPefCpIYvNFNw
 yxkJBPcK/jFKx1//Xjbi/1mnPdtv6HAdKWmHxEi2bvCrP46NticVWI1c5
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E3C6AeTb
Subject: [Intel-wired-lan] [PATCH iwl-next 1/6] ice: Remove unused struct
 ice_prot_lkup_ext members
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

Remove field_off as it's never used.

Remove done bitmap, as its value is only checked and never assigned.
Reusing sub-recipes while creating new root recipes is currently not
supported in the driver.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 .../ethernet/intel/ice/ice_protocol_type.h    |  4 --
 drivers/net/ethernet/intel/ice/ice_switch.c   | 44 ++++++++-----------
 2 files changed, 19 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index 755a9c55267c..c396dabacef4 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -452,13 +452,9 @@ struct ice_prot_lkup_ext {
 	u16 prot_type;
 	u8 n_val_words;
 	/* create a buffer to hold max words per recipe */
-	u16 field_off[ICE_MAX_CHAIN_WORDS];
 	u16 field_mask[ICE_MAX_CHAIN_WORDS];
 
 	struct ice_fv_word fv_words[ICE_MAX_CHAIN_WORDS];
-
-	/* Indicate field offsets that have field vector indices assigned */
-	DECLARE_BITMAP(done, ICE_MAX_CHAIN_WORDS);
 };
 
 struct ice_pref_recipe_group {
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 1191031b2a43..0d58cf185698 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4918,33 +4918,27 @@ ice_create_first_fit_recp_def(struct ice_hw *hw,
 
 	*recp_cnt = 0;
 
-	/* Walk through every word in the rule to check if it is not done. If so
-	 * then this word needs to be part of a new recipe.
-	 */
-	for (j = 0; j < lkup_exts->n_val_words; j++)
-		if (!test_bit(j, lkup_exts->done)) {
-			if (!grp ||
-			    grp->n_val_pairs == ICE_NUM_WORDS_RECIPE) {
-				struct ice_recp_grp_entry *entry;
-
-				entry = devm_kzalloc(ice_hw_to_dev(hw),
-						     sizeof(*entry),
-						     GFP_KERNEL);
-				if (!entry)
-					return -ENOMEM;
-				list_add(&entry->l_entry, rg_list);
-				grp = &entry->r_group;
-				(*recp_cnt)++;
-			}
-
-			grp->pairs[grp->n_val_pairs].prot_id =
-				lkup_exts->fv_words[j].prot_id;
-			grp->pairs[grp->n_val_pairs].off =
-				lkup_exts->fv_words[j].off;
-			grp->mask[grp->n_val_pairs] = lkup_exts->field_mask[j];
-			grp->n_val_pairs++;
+	for (j = 0; j < lkup_exts->n_val_words; j++) {
+		if (!grp || grp->n_val_pairs == ICE_NUM_WORDS_RECIPE) {
+			struct ice_recp_grp_entry *entry;
+
+			entry = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*entry),
+					     GFP_KERNEL);
+			if (!entry)
+				return -ENOMEM;
+
+			list_add(&entry->l_entry, rg_list);
+			grp = &entry->r_group;
+			(*recp_cnt)++;
 		}
 
+		grp->pairs[grp->n_val_pairs].prot_id =
+			lkup_exts->fv_words[j].prot_id;
+		grp->pairs[grp->n_val_pairs].off = lkup_exts->fv_words[j].off;
+		grp->mask[grp->n_val_pairs] = lkup_exts->field_mask[j];
+		grp->n_val_pairs++;
+	}
+
 	return 0;
 }
 
-- 
2.45.0


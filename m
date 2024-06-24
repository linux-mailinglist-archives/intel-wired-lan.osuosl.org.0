Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EDA91504F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2024 16:44:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB02680CDC;
	Mon, 24 Jun 2024 14:44:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UmOuCkzV5Nrw; Mon, 24 Jun 2024 14:44:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10DDF80C8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719240242;
	bh=Mz2Pu7dzToS+T//W7cb5ue/MB7V15amOSo6CToa/pic=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xZwRUb5pwBCwK2Lp/BS4snEARmOFqlqjhG+tG4oROby/cEHSR4V6jtzmINjnA3ELh
	 WZu7jaqWOlA8WGKPQxOnrZTjVpmeO0EDzEag4alNEcSlYxsd70PjN/zUNPiIntv6ma
	 o4fXTzsow09a67d/bj0O7UbIea4l9rsStSwzwBPVjJM7NFou2GibT/SUpsGhDBFK3k
	 kH2vU6AJOuKvKYjK/CXv9h8jKx1qxkQF3N0LW2B6vBfXvyFxs0v9acZ31xBh7z4UWF
	 x7fr4EVdCiQpiluQOyY3Esgn3JdYHAVe4VmxCKlGQeCicEDrs9pCVNHltocku74/PK
	 gLkUoGxVYsEUQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10DDF80C8D;
	Mon, 24 Jun 2024 14:44:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B6CE1BF591
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 14:44:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95F9480CB9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 14:44:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qxiqcDBTUjt9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2024 14:44:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9C66880C9A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C66880C9A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C66880C9A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 14:43:59 +0000 (UTC)
X-CSE-ConnectionGUID: PDQP/5SmT9mgZXrYCq3qMg==
X-CSE-MsgGUID: oa6/POtvQT6/3+yWjixbeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16040475"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16040475"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 07:43:59 -0700
X-CSE-ConnectionGUID: yDN1Jn7hQdeODJFio3M3hQ==
X-CSE-MsgGUID: X8LlvTlUR/GY9+C0mYoLjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="44022049"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 24 Jun 2024 07:43:58 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2F7F927BB1;
 Mon, 24 Jun 2024 15:43:46 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jun 2024 16:45:24 +0200
Message-ID: <20240624144530.690545-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240624144530.690545-1-marcin.szycik@linux.intel.com>
References: <20240624144530.690545-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719240240; x=1750776240;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=00WpGcsEMIsU9URS7/+Rk5iXtCeARQolpArF+UPgl5w=;
 b=Eb1tKI2YVy5jNXNvcBP2IdHpIZ2c/wv1B5Xj1TUuLImIxLFA9c1BXVZ/
 VpqvyxMd8FZVtHLirJasFVnmef3dGWBSWZQP/Y5klj3wNOK0wyKugCdff
 jMbAAu+MZLV5jbxk0PXT1jrKMCRHWvQLnwq9nsXkvggFVYYvS+sUaNgVz
 y63drMtHreVk3vrSf8YebHsORKSMq2sF0r3HuLbCqUCpjLVukiNx2eR7l
 m3plILzgp0GJcOzDNKCAcZDO4iKJ00VRDPMks8tEktRIvSxxhE4+dEf4t
 hWL9hfQV1IPU70a8kjXaD9SEa8DHNxHCYVooBDfLlKhMmsdOhYyb7bdeB
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Eb1tKI2Y
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/7] ice: Remove unused struct
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
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 michal.swiatkowski@linux.intel.com
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


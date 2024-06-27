Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5351191A9EE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 16:54:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 208B860E6D;
	Thu, 27 Jun 2024 14:54:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TIRTLYrL-kTB; Thu, 27 Jun 2024 14:54:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4846D60E64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719500085;
	bh=Mz2Pu7dzToS+T//W7cb5ue/MB7V15amOSo6CToa/pic=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M41c7r4S2VZxhppbvP9c20AbeT8v40svNIXTD2AowbIBnnGWRQfyrnpW+t3zu0f1t
	 N03CJTtmd+KIJg54zkWPQ9K4hS/F+iSDsTuiNQYxBrdDXPyEjYAWGSxTrIuYL1ZUef
	 y9cl+mNCqCTU1t6uu6PU7VKtgiqHwr6tMg/f3YMA007VIYJB/9rt+Zm3H8Ab5YEGsh
	 5Vv2GyXVkOPXPrviR+UxNh/rnTMGYfOye4hBL1x3vNcU8cr10ln7vvAPWJG74XQRM/
	 Nxpkngxz7UYQzxNmvSJ+ccYVerCEr3qzkOwNZC82NmFxwLRUhZlnh9gJim7VtvT5Kd
	 IaTllggYWGl/w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4846D60E64;
	Thu, 27 Jun 2024 14:54:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F3461BF97A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 14:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B7A66415CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 14:54:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wtuDdQ6EgyFh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 14:54:35 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C384141610
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C384141610
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C384141610
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 14:54:34 +0000 (UTC)
X-CSE-ConnectionGUID: 0FZe6qa0QVaqv2reji0X8A==
X-CSE-MsgGUID: 98X5UaN6SPCYQ/rdf/hYDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="20514963"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="20514963"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 07:54:27 -0700
X-CSE-ConnectionGUID: ooTJe8jxTAudB/vZ6Ue4mQ==
X-CSE-MsgGUID: aNqdOLZmTi6nQ5ICOw5I5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="67616389"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 27 Jun 2024 07:54:26 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4659D27BBC;
 Thu, 27 Jun 2024 15:54:11 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 16:55:41 +0200
Message-ID: <20240627145547.32621-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240627145547.32621-1-marcin.szycik@linux.intel.com>
References: <20240627145547.32621-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719500075; x=1751036075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=00WpGcsEMIsU9URS7/+Rk5iXtCeARQolpArF+UPgl5w=;
 b=VpxKlDmxvZYidkf1xW2FtstieWGiIYFnoTyDYOBPNOTWu2GgTAA9oxSP
 x0sKa2V7ddThxRgnR+y1YzV94wGE5lZBuNlSgWJi0zesfvSMk1QkC9Agn
 FbgH/QJcvicPxqEMyz9RJdDTCJOTEONtgUWJxS/S7Zx7eIK9JtiArTXAI
 PagmEz/FtqZpOBoiPnJIUU6daq42qohp4XTMsOz4K4B43U0UdVgY/bx0a
 sWF/9AmRMq/ptLTCniGXkmZ+iuHB8GgfksYzSaGi5OixLNKdxLT6JOHDn
 bxyQ37tBrq7piq9TFqX2P1gZD+FJ2UcAtPdfzO31x1fbdLB6baRU44YaH
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VpxKlDmx
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/7] ice: Remove unused struct
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, przemyslaw.kitszel@intel.com,
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


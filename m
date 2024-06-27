Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D5191A9F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 16:54:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39F2160E7A;
	Thu, 27 Jun 2024 14:54:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pklNbE5JoXVb; Thu, 27 Jun 2024 14:54:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8526760E5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719500087;
	bh=rPRloTjzgkbSnFjqO/nUjNmw5rgTDk+xpIRUMx9tnfI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aahG0PJT5mQQIHtMFudFPuKjCHtx7zG4CD4Fk0G84svi7HeUhs/7KFgS4Y3XMNWmC
	 5uY1LcTZyktFe5DnBFJ0zvQRi8tp8HFLOrueliHV2sgsDSXfjYYsGJv16g9pDWUBDZ
	 vnw4wDPrNwwWh4GrjY6N/9irFjMffqde+GFIGz7qeSASyTCIt928TM4qbzXaTWKg2o
	 8VvKxGuelSDl4wzKPcyKgSWBiRmaExmaLIk1AGrvbp0L108lq9aAr+vX0DtRrfoRr6
	 Qz2BZkiyyr4dRsXiVc99PL5SBwd6Q6g0/gU3Ud2M5I2ebORVAuo90/Z6Tfc/1NoW8Z
	 YEw2Kj4W1XqbQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8526760E5B;
	Thu, 27 Jun 2024 14:54:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22D261BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 14:54:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6BC8D4167C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 14:54:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g4uayxMjJ2Jb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 14:54:35 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F33F415CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F33F415CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F33F415CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 14:54:34 +0000 (UTC)
X-CSE-ConnectionGUID: 4YH3B41oTQKXZtE3spztPg==
X-CSE-MsgGUID: OxcKtBUtRfST5FrnyC8KIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="20514966"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="20514966"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 07:54:28 -0700
X-CSE-ConnectionGUID: G6F2t94USSmtg6TYo9TXjQ==
X-CSE-MsgGUID: 1XGHoShCTVqb6ZuEOlHyCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="67616394"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 27 Jun 2024 07:54:27 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 6F6E627BC1;
 Thu, 27 Jun 2024 15:54:13 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 16:55:43 +0200
Message-ID: <20240627145547.32621-4-marcin.szycik@linux.intel.com>
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
 bh=toJnrKJIa3hFQBBM+1PHE5/G87dc1JlRWeQC+9LZfo0=;
 b=kcuutKd4sqdm2L3UXlH7EuFDPwDstipmUmC9YsKfiUNabyYsSLx25/pf
 Kek9F82eHnpBhmdVfLgTUW4zhW+CHd4fTYHrtl9QQZ1KY5cz9NnBKlpKu
 WJm3FDHzG/1zK3eVK2796uNjgWzLk1YcxYo3ljm3CC8Ep3OMHFMD25f2o
 dzDYxf+DNL2vP+a0amPqt3uGZE/765cMEI0Yble5ipO2iD3F59UBxybZh
 k4XTL0cgEcSKRBLAf+BUFW1HnD1KL9q8Lq2f8xkZVPfd2WeLJaKILW9Me
 Yyv6c+XKDdtz8bip6l2LrEGIpzUlHsryrC5wVDlOkjLHX9Yp7WnnA4tHZ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kcuutKd4
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/7] ice: Simplify bitmap
 setting in adding recipe
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Remove unnecessary size checks when copying bitmaps in ice_add_sw_recipe()
and replace them with compile time assert. Check if the bitmaps are equal
size, as they are copied both ways.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v2: Replace sizeof(((struct s*)0)->f with sizeof_field() (thanks Alex!)
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 24 ++++++++-------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index da065512889d..3ee4242f9880 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5067,6 +5067,10 @@ ice_find_free_recp_res_idx(struct ice_hw *hw, const unsigned long *profiles,
 	return (u16)bitmap_weight(free_idx, ICE_MAX_FV_WORDS);
 }
 
+/* For memcpy in ice_add_sw_recipe. */
+static_assert(sizeof_field(struct ice_aqc_recipe_data_elem, recipe_bitmap) ==
+	      sizeof_field(struct ice_sw_recipe, r_bitmap));
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


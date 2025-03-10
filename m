Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 550A0A59464
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 13:28:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15B1B410A2;
	Mon, 10 Mar 2025 12:28:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zz1yQ-6BnDCj; Mon, 10 Mar 2025 12:28:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BDE240E50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741609718;
	bh=cPVl1IY4u9K+kkeBUTpiXhHsPfO/g/7V2ksmtUmbj94=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UPDFRIuU6CyPU1GdVOUot8dO5zR8eCnGk802vJiB/Eh8Ij3ovfBFSZsMAmvkkFE6t
	 5QTD9HBeg/Tpve64ntYnUFEOeGY7jDYZAkSAJPzrB4iOskBynELmIWINDRrW9t7obJ
	 GgZ9SR35mEx+Lsi0Em7pLagWhg2lmFpdniUQFytwLc8NBtRfTjRKNJYzGWG+QxuUuU
	 fH87DiodJpWdHEl7gaH3QBzb7pZy/YBspNIMnZGCq90YFb9k9w2HvnDhSzQaAnrT7+
	 g1uLMBCofhDthekzh0dIx/ExA8F13Dl7pHGIeWzNPlLqt50i3nOVV6J8UnxhGIiBsZ
	 Tzly3HDis1Rug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BDE240E50;
	Mon, 10 Mar 2025 12:28:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DAAD1C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 12:28:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6FB2081FCF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 12:28:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ePkEGNjqtCJo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 12:28:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BEE6881FE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEE6881FE7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BEE6881FE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 12:28:32 +0000 (UTC)
X-CSE-ConnectionGUID: JJ03TgoTQRmkosW6fD73Sw==
X-CSE-MsgGUID: ufhFwA0uRee3l9waRERhpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="53981111"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="53981111"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:32 -0700
X-CSE-ConnectionGUID: dwY4hyKnQsae9S83dzqXew==
X-CSE-MsgGUID: DP3Ri8LiSaORJePDHl+Swg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="119698214"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa009.jf.intel.com with ESMTP; 10 Mar 2025 05:28:31 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Mar 2025 13:24:37 +0100
Message-Id: <20250310122439.3327908-2-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250310122439.3327908-1-grzegorz.nitka@intel.com>
References: <20250310122439.3327908-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609712; x=1773145712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GTk9VP3N8vjJ6Ux0qJ5b3R0Yjtazu9WwJEl6y7bzQZY=;
 b=Qs+nBPB1TV3HpR7rj0Rs8NQ5RzVAiDfywwtA+6g7k8WhwTZnjkC7bxtf
 B1RDMei2d3anNzv4eWWqUAkPuYY91b3zHDLsxhlcikC6uSbYwfIXD4/0y
 SD2mSjbyF9tTho2OBr5UCmNK08KGuiT/V7DKnBxGKA2SshnTUO5IoejlI
 bv3uoDTsnq8k3XCI3BJh0waXD9lDgmW5sTb4HLQkHCjiPycP2wJWaIOq6
 KPGb4auI6eHZkw+pv3vC4ZSMTtObgN9O+Ts4GALGy3XpFNeHwZ7bhNBNS
 SgkWi4z6Gf7/I7DQ4DpTW/BwHfs4Fw2bK4XVcOljbedWWSMYl+Aw0anLS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qs+nBPB1
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: remove SW side band
 access workaround for E825
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

Due to the bug in FW/NVM autoload mechanism (wrong default
SB_REM_DEV_CTL register settings), the access to peer PHY and CGU
clients was disabled by default.

As the workaround solution, the register value was overwritten by the
driver at the probe or reset handling.
Remove workaround as it's not needed anymore. The fix in autoload
procedure has been provided with NVM 3.80 version.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 23 ---------------------
 1 file changed, 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 89bb8461284a..a5df081ffc19 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2630,25 +2630,6 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
 	return 0;
 }
 
-/**
- * ice_sb_access_ena_eth56g - Enable SB devices (PHY and others) access
- * @hw: pointer to HW struct
- * @enable: Enable or disable access
- *
- * Enable sideband devices (PHY and others) access.
- */
-static void ice_sb_access_ena_eth56g(struct ice_hw *hw, bool enable)
-{
-	u32 val = rd32(hw, PF_SB_REM_DEV_CTL);
-
-	if (enable)
-		val |= BIT(eth56g_phy_0) | BIT(cgu) | BIT(eth56g_phy_1);
-	else
-		val &= ~(BIT(eth56g_phy_0) | BIT(cgu) | BIT(eth56g_phy_1));
-
-	wr32(hw, PF_SB_REM_DEV_CTL, val);
-}
-
 /**
  * ice_ptp_init_phc_e825 - Perform E825 specific PHC initialization
  * @hw: pointer to HW struct
@@ -2659,8 +2640,6 @@ static void ice_sb_access_ena_eth56g(struct ice_hw *hw, bool enable)
  */
 static int ice_ptp_init_phc_e825(struct ice_hw *hw)
 {
-	ice_sb_access_ena_eth56g(hw, true);
-
 	/* Initialize the Clock Generation Unit */
 	return ice_init_cgu_e82x(hw);
 }
@@ -2747,8 +2726,6 @@ static void ice_ptp_init_phy_e825(struct ice_hw *hw)
 	params->num_phys = 2;
 	ptp->ports_per_phy = 4;
 	ptp->num_lports = params->num_phys * ptp->ports_per_phy;
-
-	ice_sb_access_ena_eth56g(hw, true);
 }
 
 /* E822 family functions
-- 
2.39.3


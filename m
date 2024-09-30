Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EA498A198
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:10:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93F7160668;
	Mon, 30 Sep 2024 12:10:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id swAXLQdp_yNb; Mon, 30 Sep 2024 12:10:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B812160670
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727698239;
	bh=x4joqqC6OLYoPZClJIpKLda4CcRQOhf/kl4so5iA/eo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Cn9lHTArozP78i6i6dON79KC6vc/Xovl73k/weQbDF4OaN/PiHKS110tbmJLgFIOF
	 6IzIGADxOhsyvqzrIGtx5Dtc0AHuI1ta/lMxJuSM9l4nGnOrH5cC+ZwnAQgJHcwm4x
	 9PtnBM36/oJTv1K8kIE/vqBG0vedylfF3P+D3csIHa4XsxwSXeCT93OxJXoINzvvE8
	 /qA+OciW9kYG/X5bzI05+ZeDknVaja6PWhex59fb0AaOXvbsITCPD4XlKtWjjKUg2F
	 YsNgIuV3+mS0iuUkZJ+sg8kKh1m4XDsDQAoCIJtgdC/4ZL1dhNBOF/Ki+dKw2c5QsR
	 Dmt5ftpm3Ybmg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B812160670;
	Mon, 30 Sep 2024 12:10:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F0A91BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A6E0402E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I_UjvaJw49BU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:10:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 07CD14028E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07CD14028E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07CD14028E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:34 +0000 (UTC)
X-CSE-ConnectionGUID: A8jwMYnRRFKGMRMEuUSzvA==
X-CSE-MsgGUID: BAfbTW4oR+qoPr1sqmcFqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26736084"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26736084"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:10:35 -0700
X-CSE-ConnectionGUID: qOmwsekMT5SqXZqwOmGiQw==
X-CSE-MsgGUID: oQZNo0BkTBW3o9GDdHSafQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="78037012"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by orviesa005.jf.intel.com with ESMTP; 30 Sep 2024 05:10:33 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Sep 2024 14:08:39 +0200
Message-ID: <20240930121022.671217-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240930121022.671217-1-karol.kolacinski@intel.com>
References: <20240930121022.671217-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727698235; x=1759234235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z/etYQUZg2F93fRx7yUIfZDt095XfyXuo3OcHlr/h+E=;
 b=XVRKsOu6eY5miWr+khKDlokLslP7DVU9HmTo+bVTwwQZD68ekkyXTYS1
 nOuZBbiYo1yktWbtzw8ndw9EOmtSEF6AWoLzYpIEhoVFNH6N3b2+YEcwv
 64+qbLyDG+Z8NwlDl+25ErAktacRsrsTCHAQXFkB8wrbU1Wg990dJO5iU
 GmMTiWUbwpkSPTdnwFvaIl4D5HuZq+P6NTms+TEnMzazSvKDfBcZLOK+b
 Vi8bObIgdkmXNfwoi12CkbZE4ryuvi5TKphXTRvUY/mjga4pRIfapuYEo
 UW43HM92+kSVgLwkNsBbeFAauszqpGR1kufwJOJv44lemOOfT372K1LPa
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XVRKsOu6
Subject: [Intel-wired-lan] [PATCH iwl-net 1/5] ice: Fix E825 initialization
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Current implementation checks revision of all PHYs on all PFs, which is
incorrect and may result in initialization failure. Check only the
revision of the current PHY.

E825 does not need to modify sideband queue access, because those values
are properly set by the firmware on init.
Remove PF_SB_REM_DEV_CTL modification.

Configure synchronization delay for E825 product to ensure proper PHY
timers initialization on SYNC command.

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 88 +++++++++------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  3 +-
 2 files changed, 38 insertions(+), 53 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3a33e6b9b313..58323a7ff394 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -874,11 +874,38 @@ static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
 	ice_flush(hw);
 }
 
+/**
+ * ice_ptp_cfg_sync_delay - Configure PHC to PHY synchronization delay
+ * @hw: pointer to HW struct
+ * @delay: delay between PHC and PHY SYNC command execution in nanoseconds
+ */
+static void ice_ptp_cfg_sync_delay(struct ice_hw *hw, u32 delay)
+{
+	wr32(hw, GLTSYN_SYNC_DLAY, delay);
+	ice_flush(hw);
+}
+
 /* 56G PHY device functions
  *
  * The following functions operate on devices with the ETH 56G PHY.
  */
 
+/**
+ * ice_ptp_init_phc_e825 - Perform E825 specific PHC initialization
+ * @hw: pointer to HW struct
+ *
+ * Perform E825-specific PTP hardware clock initialization steps.
+ *
+ * Return: 0 on success, negative error code otherwise
+ */
+static int ice_ptp_init_phc_e825(struct ice_hw *hw)
+{
+	ice_ptp_cfg_sync_delay(hw, ICE_E825_SYNC_DELAY);
+
+	/* Initialize the Clock Generation Unit */
+	return ice_init_cgu_e82x(hw);
+}
+
 /**
  * ice_write_phy_eth56g - Write a PHY port register
  * @hw: pointer to the HW struct
@@ -2542,42 +2569,6 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
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
-/**
- * ice_ptp_init_phc_eth56g - Perform E82X specific PHC initialization
- * @hw: pointer to HW struct
- *
- * Perform PHC initialization steps specific to E82X devices.
- *
- * Return:
- * * %0     - success
- * * %other - failed to initialize CGU
- */
-static int ice_ptp_init_phc_eth56g(struct ice_hw *hw)
-{
-	ice_sb_access_ena_eth56g(hw, true);
-	/* Initialize the Clock Generation Unit */
-	return ice_init_cgu_e82x(hw);
-}
-
 /**
  * ice_ptp_read_tx_hwtstamp_status_eth56g - Get TX timestamp status
  * @hw: pointer to the HW struct
@@ -2665,14 +2656,15 @@ static bool ice_is_muxed_topo(struct ice_hw *hw)
 }
 
 /**
- * ice_ptp_init_phy_e825c - initialize PHY parameters
+ * ice_ptp_init_phy_e825 - initialize PHY parameters
  * @hw: pointer to the HW struct
  */
-static void ice_ptp_init_phy_e825c(struct ice_hw *hw)
+static void ice_ptp_init_phy_e825(struct ice_hw *hw)
 {
 	struct ice_ptp_hw *ptp = &hw->ptp;
 	struct ice_eth56g_params *params;
-	u8 phy;
+	u32 phy_rev;
+	int err;
 
 	ptp->phy_model = ICE_PHY_ETH56G;
 	params = &ptp->phy.eth56g;
@@ -2685,17 +2677,9 @@ static void ice_ptp_init_phy_e825c(struct ice_hw *hw)
 	ptp->ports_per_phy = 4;
 	ptp->num_lports = params->num_phys * ptp->ports_per_phy;
 
-	ice_sb_access_ena_eth56g(hw, true);
-	for (phy = 0; phy < params->num_phys; phy++) {
-		u32 phy_rev;
-		int err;
-
-		err = ice_read_phy_eth56g(hw, phy, PHY_REG_REVISION, &phy_rev);
-		if (err || phy_rev != PHY_REVISION_ETH56G) {
-			ptp->phy_model = ICE_PHY_UNSUP;
-			return;
-		}
-	}
+	err = ice_read_phy_eth56g(hw, hw->pf_id, PHY_REG_REVISION, &phy_rev);
+	if (err || phy_rev != PHY_REVISION_ETH56G)
+		ptp->phy_model = ICE_PHY_UNSUP;
 
 	ptp->is_2x50g_muxed_topo = ice_is_muxed_topo(hw);
 }
@@ -5396,7 +5380,7 @@ void ice_ptp_init_hw(struct ice_hw *hw)
 	else if (ice_is_e810(hw))
 		ice_ptp_init_phy_e810(ptp);
 	else if (ice_is_e825c(hw))
-		ice_ptp_init_phy_e825c(hw);
+		ice_ptp_init_phy_e825(hw);
 	else
 		ptp->phy_model = ICE_PHY_UNSUP;
 }
@@ -5835,7 +5819,7 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 
 	switch (hw->ptp.phy_model) {
 	case ICE_PHY_ETH56G:
-		return ice_ptp_init_phc_eth56g(hw);
+		return ice_ptp_init_phc_e825(hw);
 	case ICE_PHY_E810:
 		return ice_ptp_init_phc_e810(hw);
 	case ICE_PHY_E82X:
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 0852a34ade91..35141198f261 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -326,7 +326,8 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
  */
 #define ICE_E810_PLL_FREQ		812500000
 #define ICE_PTP_NOMINAL_INCVAL_E810	0x13b13b13bULL
-#define E810_OUT_PROP_DELAY_NS 1
+#define ICE_E810_OUT_PROP_DELAY_NS	1
+#define ICE_E825_SYNC_DELAY		6
 
 /* Device agnostic functions */
 u8 ice_get_ptp_src_clock_index(struct ice_hw *hw);
-- 
2.46.1


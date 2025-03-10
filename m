Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FEFA59273
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 12:14:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A62D28123C;
	Mon, 10 Mar 2025 11:14:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XtC6hCHe2HGi; Mon, 10 Mar 2025 11:14:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4FE081249
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741605273;
	bh=ZiICNyy/x0yaUUY4WBm6o4zOTLHaCJfptIhDHtq+U3A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ab/MraoKcL8y77txVzI1yznrmzOvP7Vt/5j/ECPibFHuqm35myfjgGzijGC9hLKa9
	 cO4FOJDZv8uIT9QAh1T0GAA6TkyPsSUDOibA4Z4pqtZmMNSCJ94/Wu9pIwhptu/rb/
	 5QnqLFfFH6cxcK8LhaP8RMZdQUqsxIBVqU8dwgXpT0d0/7Te65gNa5BQp6XwnngVti
	 8u5B/UitDGCRmcqfCQ8s4/fOd9cCwAqcVkRWM4vuStf1X9iCeSKTDOxR4BUO7izZYY
	 FHcE9smMy1LzIZsvDf1L3XEG6erk2412SDGUoQovfuC5UGHJbyw4C9GVQqJcWaZ3BZ
	 KHDjxVt/elD1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4FE081249;
	Mon, 10 Mar 2025 11:14:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E58061C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D508A80363
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qMUK2Bc_1Tt8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 11:14:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D434C8121D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D434C8121D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D434C8121D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:30 +0000 (UTC)
X-CSE-ConnectionGUID: VPow0d6nQtmw6YmCa/Wd2A==
X-CSE-MsgGUID: w713ZbOfRtakcBD7THTH2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11368"; a="65048714"
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="65048714"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 04:14:30 -0700
X-CSE-ConnectionGUID: LZUhH7t/Q9WPOrI3G+emuw==
X-CSE-MsgGUID: qdsfU8oQQceRTNOlLL8D7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="119968344"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by fmviesa007.fm.intel.com with ESMTP; 10 Mar 2025 04:14:28 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Milena Olech <milena-olech@intel.com>
Date: Mon, 10 Mar 2025 12:12:54 +0100
Message-ID: <20250310111357.1238454-22-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250310111357.1238454-12-karol.kolacinski@intel.com>
References: <20250310111357.1238454-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741605271; x=1773141271;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZzKHyybLRzj+cLYE+Y0p6hOfw8XOHj0aHJQ3+XfGgh0=;
 b=E0PvJV5cmta7hlg/xXNL2VdUHHZCI8hoqzpe0PMtR2sENYT6TSWA1f0t
 eociAqrgUONJ0/PmTdd0Q0D4tXpYRnYXBCVlpNX0zvOiXG+I9cP8ltS38
 S9o9iaNdcD9HMKgBVIsMTfkY+6s9aHrivsqdao6BeDQvbG59boxgSL6IG
 OCDgnDtHuOY/dGJoaB+tw89AqimyBl3P7K7i4Iu85roVevzDY3j3q0xlQ
 Pj3CFfNpO5FWUiOWan8SUmzSU5Sv23oBmyZHcL6vk/8735q+Y3Uyj1Duu
 51KaRD0qAcrrakZTrp93lARqqqMwnU4M8GGFUib6PtZ3en+t8WBe3R32S
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E0PvJV5c
Subject: [Intel-wired-lan] [PATCH iwl-next 10/10] ice: move TSPLL init calls
 to ice_ptp.c
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Initialize TSPLL after initializing PHC in ice_ptp.c instead of calling
for each product in PHC init in ice_ptp_hw.c.

Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Milena Olech <milena-olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 11 ++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 24 +--------------------
 drivers/net/ethernet/intel/ice/ice_tspll.c  |  5 +++++
 3 files changed, 17 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index fdeb20ac831c..5fbd77e0cb17 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2864,6 +2864,10 @@ static int ice_ptp_rebuild_owner(struct ice_pf *pf)
 	if (err)
 		return err;
 
+	err = ice_tspll_init(hw);
+	if (err)
+		return err;
+
 	/* Acquire the global hardware lock */
 	if (!ice_ptp_lock(hw)) {
 		err = -EBUSY;
@@ -3038,6 +3042,13 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 		return err;
 	}
 
+	err = ice_tspll_init(hw);
+	if (err) {
+		dev_err(ice_pf_to_dev(pf), "Failed to initialize CGU, status %d\n",
+			err);
+		return err;
+	}
+
 	/* Acquire the global hardware lock */
 	if (!ice_ptp_lock(hw)) {
 		err = -EBUSY;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 689feac7baf9..ba97a52917af 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2107,22 +2107,6 @@ static void ice_sb_access_ena_eth56g(struct ice_hw *hw, bool enable)
 	wr32(hw, PF_SB_REM_DEV_CTL, val);
 }
 
-/**
- * ice_ptp_init_phc_e825 - Perform E825 specific PHC initialization
- * @hw: pointer to HW struct
- *
- * Perform E825-specific PTP hardware clock initialization steps.
- *
- * Return: 0 on success, negative error code otherwise.
- */
-static int ice_ptp_init_phc_e825(struct ice_hw *hw)
-{
-	ice_sb_access_ena_eth56g(hw, true);
-
-	/* Initialize the Clock Generation Unit */
-	return ice_tspll_init(hw);
-}
-
 /**
  * ice_ptp_read_tx_hwtstamp_status_eth56g - Get TX timestamp status
  * @hw: pointer to the HW struct
@@ -2784,7 +2768,6 @@ static int ice_ptp_set_vernier_wl(struct ice_hw *hw)
  */
 static int ice_ptp_init_phc_e82x(struct ice_hw *hw)
 {
-	int err;
 	u32 val;
 
 	/* Enable reading switch and PHY registers over the sideband queue */
@@ -2794,11 +2777,6 @@ static int ice_ptp_init_phc_e82x(struct ice_hw *hw)
 	val |= (PF_SB_REM_DEV_CTL_SWITCH_READ | PF_SB_REM_DEV_CTL_PHY0);
 	wr32(hw, PF_SB_REM_DEV_CTL, val);
 
-	/* Initialize the Clock Generation Unit */
-	err = ice_tspll_init(hw);
-	if (err)
-		return err;
-
 	/* Set window length for all the ports */
 	return ice_ptp_set_vernier_wl(hw);
 }
@@ -5580,7 +5558,7 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	case ICE_MAC_GENERIC:
 		return ice_ptp_init_phc_e82x(hw);
 	case ICE_MAC_GENERIC_3K_E825:
-		return ice_ptp_init_phc_e825(hw);
+		return 0;
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 37fcfdd5e032..17c23b29b53c 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -474,6 +474,11 @@ int ice_tspll_init(struct ice_hw *hw)
 	enum ice_clk_src clk_src;
 	int err;
 
+	/* Only E822, E823 and E825 products support TSPLL */
+	if (hw->mac_type != ICE_MAC_GENERIC &&
+	    hw->mac_type != ICE_MAC_GENERIC_3K_E825)
+		return 0;
+
 	tspll_freq = (enum ice_tspll_freq)ts_info->time_ref;
 	clk_src = (enum ice_clk_src)ts_info->clk_src;
 	if (!ice_tspll_check_params(hw, tspll_freq, clk_src))
-- 
2.48.1


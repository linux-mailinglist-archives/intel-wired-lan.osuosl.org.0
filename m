Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0D9A824C1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 14:29:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 522A8410E6;
	Wed,  9 Apr 2025 12:29:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y4tnhrX-lTP9; Wed,  9 Apr 2025 12:29:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4A78406A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744201742;
	bh=6/TCk6lAQiV16dOsG6xwG9J6ueWDxLOinJGteO4GVHo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Qi8BbkATLWEdLlXtRS/0+QBzbJAJP4Sy5iMyfJ+8E11DbVMP2NjoqLHPZoz6hd5Xh
	 9kAja6M+GHYBpcz0zhOaH19r4oe95qwAXozXYwbTZfw0vqRRNKGAPaXqAGYqJ7SAni
	 M4wkCwD78dZrRJBCpJbEzSrr8NZwxMWbmO4UhRvTZQBJOMV2Mz/CEZFVYrJ1lBxFAK
	 ZazfXbEHOvQG6CzXzBksVg+eVgVTvriOGCjiwtMwlF7U1AIElqNTwDiqlc/CX2pvev
	 u2ShGUTVSA+6Ayt5n9F5EjhoBFGuRsWQUvEutKkKttLNuN34C9X1CeAPblHAeGiW/z
	 0vTPRTDnxaBiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4A78406A5;
	Wed,  9 Apr 2025 12:29:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F1CED6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 510E3607EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:29:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tmwMsQUTdIN5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 12:29:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A6565608AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6565608AD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6565608AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:29:00 +0000 (UTC)
X-CSE-ConnectionGUID: JUxRuU9cTeyzLTbCLuaCDw==
X-CSE-MsgGUID: 6KuIovRyTJ6D2sNxjNjc0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56655722"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="56655722"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 05:29:00 -0700
X-CSE-ConnectionGUID: xbEnmnjuS7OO63wpPTaOkA==
X-CSE-MsgGUID: ZU+WmfI1TuGqsK5SEnAeTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133557282"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by orviesa004.jf.intel.com with ESMTP; 09 Apr 2025 05:28:59 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Wed,  9 Apr 2025 14:25:07 +0200
Message-ID: <20250409122830.1977644-22-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250409122830.1977644-12-karol.kolacinski@intel.com>
References: <20250409122830.1977644-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744201741; x=1775737741;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gHAkI4c3S1hRERNAm0zc5IaGXqAj2x+MVGjzJx9JpSs=;
 b=AHXni1plsHelv8wmd0BqU5NEDsPIqtE5/BG9LxUv2tuqpnzOz1h4HxxM
 QEKGrt8fxzESWJN+ma5jPwaYMyd0OX1PQkNoKbi1S4YcEG9VnYY3NdrEz
 EstYmDzmgs963lUNDkpdYf07+ec4VDcUkZpifFJY1lzuPubc9PUap+CXZ
 Xs0R6mawC2Dq6IMpvsdpx54gL2cFxp7uWLC0gHsCTv7w4CZPpNuwTDUjd
 0DkFDpTEHSlhCNiGCrE1yBR/ESPcjMzSDxWKXTo2/SwztEIkI+WazSPli
 9JJN6g+BGO5FTaxD8LmAoCn/rXE92jsYymX+allncpmVgyuoJ+zGSB+5E
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AHXni1pl
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 10/10] ice: move TSPLL init
 calls to ice_ptp.c
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
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 11 +++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 22 +--------------------
 drivers/net/ethernet/intel/ice/ice_tspll.c  |  5 +++++
 3 files changed, 17 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ce0a95f80c2e..96f69277c79e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2897,6 +2897,10 @@ static int ice_ptp_rebuild_owner(struct ice_pf *pf)
 	if (err)
 		return err;
 
+	err = ice_tspll_init(hw);
+	if (err)
+		return err;
+
 	/* Acquire the global hardware lock */
 	if (!ice_ptp_lock(hw)) {
 		err = -EBUSY;
@@ -3064,6 +3068,13 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
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
index 278231443546..e8e439fd64a4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2115,20 +2115,6 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
 	return 0;
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
-	/* Initialize the Clock Generation Unit */
-	return ice_tspll_init(hw);
-}
-
 /**
  * ice_ptp_read_tx_hwtstamp_status_eth56g - Get TX timestamp status
  * @hw: pointer to the HW struct
@@ -2788,7 +2774,6 @@ static int ice_ptp_set_vernier_wl(struct ice_hw *hw)
  */
 static int ice_ptp_init_phc_e82x(struct ice_hw *hw)
 {
-	int err;
 	u32 val;
 
 	/* Enable reading switch and PHY registers over the sideband queue */
@@ -2798,11 +2783,6 @@ static int ice_ptp_init_phc_e82x(struct ice_hw *hw)
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
@@ -5584,7 +5564,7 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	case ICE_MAC_GENERIC:
 		return ice_ptp_init_phc_e82x(hw);
 	case ICE_MAC_GENERIC_3K_E825:
-		return ice_ptp_init_phc_e825(hw);
+		return 0;
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index b81eb6d2a0de..e9625ac521f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -477,6 +477,11 @@ int ice_tspll_init(struct ice_hw *hw)
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
2.49.0


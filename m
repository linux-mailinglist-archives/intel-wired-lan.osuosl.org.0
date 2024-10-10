Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2677899894E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2024 16:23:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A942C60B4B;
	Thu, 10 Oct 2024 14:23:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ccVlCCLq69F; Thu, 10 Oct 2024 14:23:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E750B60B39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728570199;
	bh=DwbPhWtUplz0EXwUu5FXIluw/tZOH92+sex4OJuvgOI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fh1Qj6V0DlL122nCIiLqdLIujK+XvIZLYIylhPZuKSuL6T8Gkyil7ViCxwmSxkBfS
	 jyqHfWxfTs7v0szMo8uYrHKyp61Z49damxZiv6FtWxqgId3+ABZVClPr/GgLhveoDn
	 sGPg9H4cFeogj96kUO/gAOrtenO/oBIjci05aGfG/oQ1JAC8SgQ6ZZIXZLHCpE8zwW
	 eXuNgTJfVBIbNRzfr0pX/Dyu3FPGp508oSW7m/BGYWm9G6pA5WWyTe7Y+1cwHvhDCC
	 CEyqZKktOqWmlWLADhhZY6GvBs2osqVDx3XbY/AXTNsbOOmSwtFj9omWnITtR49EDC
	 bUmX1fwvybgjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E750B60B39;
	Thu, 10 Oct 2024 14:23:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1331BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 14:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 60842605C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 14:23:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JsP5JH7XtF3k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Oct 2024 14:23:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9F91C605FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F91C605FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F91C605FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 14:23:12 +0000 (UTC)
X-CSE-ConnectionGUID: 0U3obF8QRS2VG+2aOFQM8g==
X-CSE-MsgGUID: WId9/iEORwOtejnwpqZ7EA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="39321098"
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="39321098"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 07:23:13 -0700
X-CSE-ConnectionGUID: uNe607ZxTYWTdQc15UjXSA==
X-CSE-MsgGUID: DSf6JacQQj6j3XZXEGALyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="99937494"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa002.fm.intel.com with ESMTP; 10 Oct 2024 07:23:10 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Oct 2024 16:21:14 +0200
Message-ID: <20241010142254.2047150-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241010142254.2047150-1-karol.kolacinski@intel.com>
References: <20241010142254.2047150-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728570193; x=1760106193;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NzG7OmrTfLym3bLrrOLj9xE4SCbxC59P1KycO8/ZuSo=;
 b=i1J50lLpgM/Hw0nkgpVTrpQypwQgXY8uYyIwFlmskn767QdAid15rIzm
 +L7pwNGm2du1PkWACdBFNWQGIHleV/7JAEX5xgfwq1bf48zhNbicEEb+y
 Phcp0DrQ+RWFcooH5z7+x3FsF09Aii/5/NuomkKjllM9pKre0Mg0zbqXd
 8SvBZaMyyWRayMguOsuZxaCp/HA0qdmWyIud/9MVhXuqPwj4e0u21kRMp
 in0ehaoMOyfUpGhcUySGgSUV5BrKfb5aSpqLVOcz8wY4O1OEeerE3cWgp
 yrJrfAHxClmDd0PNnJpx4B9EY0vhEQ9WV/UNALDMJCx7/BC5N+4JeArM0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i1J50lLp
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 1/4] ice: Fix E825
 initialization
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

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V1 -> V2: Removed net-next hunks

 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 22 ++++++++-------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  3 ++-
 2 files changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3a33e6b9b313..d9a3c7de0342 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2665,14 +2665,15 @@ static bool ice_is_muxed_topo(struct ice_hw *hw)
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
@@ -2686,16 +2687,9 @@ static void ice_ptp_init_phy_e825c(struct ice_hw *hw)
 	ptp->num_lports = params->num_phys * ptp->ports_per_phy;
 
 	ice_sb_access_ena_eth56g(hw, true);
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
@@ -5396,7 +5390,7 @@ void ice_ptp_init_hw(struct ice_hw *hw)
 	else if (ice_is_e810(hw))
 		ice_ptp_init_phy_e810(ptp);
 	else if (ice_is_e825c(hw))
-		ice_ptp_init_phy_e825c(hw);
+		ice_ptp_init_phy_e825(hw);
 	else
 		ptp->phy_model = ICE_PHY_UNSUP;
 }
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
2.46.2


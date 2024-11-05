Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 196CF9BCCCC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 13:32:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B83B54066A;
	Tue,  5 Nov 2024 12:32:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zEmFH0AgQn52; Tue,  5 Nov 2024 12:32:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7894D40668
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730809961;
	bh=6ZXHrsWzRoUDsil2YRxJ22UZLzQoPDY/wBoUQnHpKZs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O1yJspDAbWEM5sRvzzoWvRGhwEiVBIqvoDmAKq934CM+nlm7dywHD5CyGxD6rCojU
	 uINmfcaPM88+ue3jThyAsdC47zEuWz6COcXJ96j+JppFyVSL/TAjehaTYB6wMU2G5z
	 nIm2Uy0epwbztBMQfmNcm/upebJrsGc8edlp4rO5xGisVBJP4GIAh3XTLgxtvzJh8X
	 HqyO8SkhY1BTh7CG+MRfnwpyP+tlE2bk4Js/HG4zMGf74ojXTeDckf8eb+9AWiui53
	 UGA3Q09sNYwMtg7OTtJAYTvsaTY8NaUs7yr2jWXD/c1L5iIItQG7MdVMGhPwuOWh+k
	 u0K7KAmtQuYkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7894D40668;
	Tue,  5 Nov 2024 12:32:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 75F013B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6421E608AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:32:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H3Kbiis5TKFt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 12:32:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8F200608AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F200608AD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F200608AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:32:38 +0000 (UTC)
X-CSE-ConnectionGUID: SsbJq+bCTmuFyWfWjt1kcA==
X-CSE-MsgGUID: q/ImuMNSQ8CWsnh4q54zLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="29976227"
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="29976227"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 04:32:37 -0800
X-CSE-ConnectionGUID: 2TIWPUrpQiONzICALC0bkA==
X-CSE-MsgGUID: K9y9zgZfRd2dM4qlBhu5iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="121481317"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa001.jf.intel.com with ESMTP; 05 Nov 2024 04:32:36 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Nov 2024 13:29:13 +0100
Message-Id: <20241105122916.1824568-2-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20241105122916.1824568-1-grzegorz.nitka@intel.com>
References: <20241105122916.1824568-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730809958; x=1762345958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BDydHqNR5zXBY9PoWgr9U5vTL8XuDoXIk21JjkBsB5o=;
 b=cfjT8vt3pJe95nBLGXiblxt0e9NSxlcNAxNvEzLx3cgKWVyampnuiu9r
 gkpqJThgEj7oUwirN914LUExG/5y3K7wVbXLLthimlKbKyjtCyPIBD5Ky
 nEjGzH6fswi0RXqHDttU7ItDAsO4gYInb1SXNPM4GGZ6lefxr+4siG7yu
 okWIToDyD8/1C7k1r6QvKV2cvdDnJHwQ6ActTddWozfYpxSxiuUVHNw2O
 ETRa9XahNUQ5GEyFQvHsC1SvDTxv2+u3CQtFeXkPXfVjw3cyHljhIIdQf
 plKNIhhjB6vDGSJaw2h9TFmUPb2S77kHRu5I5GR5dOt4OJOC3r03/EaZg
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cfjT8vt3
Subject: [Intel-wired-lan] [PATCH v4 iwl-net 1/4] ice: Fix E825
 initialization
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

Current implementation checks revision of all PHYs on all PFs, which is
incorrect and may result in initialization failure. Check only the
revision of the current PHY.

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
V1 -> V3: Removed net-next hunks,
          add 'return' on PHY revision read failure
V1 -> V2: Removed net-next hunks

 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 22 +++++++++------------
 1 file changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index ec8db830ac73..d27b2f52b5ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2663,14 +2663,15 @@ static bool ice_is_muxed_topo(struct ice_hw *hw)
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
@@ -2684,15 +2685,10 @@ static void ice_ptp_init_phy_e825c(struct ice_hw *hw)
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
+	err = ice_read_phy_eth56g(hw, hw->pf_id, PHY_REG_REVISION, &phy_rev);
+	if (err || phy_rev != PHY_REVISION_ETH56G) {
+		ptp->phy_model = ICE_PHY_UNSUP;
+		return;
 	}
 
 	ptp->is_2x50g_muxed_topo = ice_is_muxed_topo(hw);
@@ -5394,7 +5390,7 @@ void ice_ptp_init_hw(struct ice_hw *hw)
 	else if (ice_is_e810(hw))
 		ice_ptp_init_phy_e810(ptp);
 	else if (ice_is_e825c(hw))
-		ice_ptp_init_phy_e825c(hw);
+		ice_ptp_init_phy_e825(hw);
 	else
 		ptp->phy_model = ICE_PHY_UNSUP;
 }
-- 
2.39.3


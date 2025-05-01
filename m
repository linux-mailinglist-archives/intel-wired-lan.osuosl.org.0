Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E232AA6683
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 00:55:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B0D96132A;
	Thu,  1 May 2025 22:54:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n9LnI_-u_xz4; Thu,  1 May 2025 22:54:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D315F61319
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746140093;
	bh=NQgVIAscgQDu3AuxM4GI8VRFwMY5w59awEjZrt62K64=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UIxVIesWP85MYOaDEH8a6irRGJ/0uLrMY/QINlqLkffS0qPsfhc49XBdy8/ur1cp6
	 x77qgkkYob+nGLnJKK5LCF72sYgnpwb6t0c4TqMQ9dHxLK0Qe67Ymfs/ea9035nGZN
	 DYCy/4oYSMugdjQXZ7wk5Hw1dU13Us0IUBBsQwJtiBlI4Yyqph0+QPW36pNxrMC0L3
	 7EF27w3U8bcitGolKLB5tvrO9bw1QBEBlM6p1FErbQkI4+bRBNShTTkrDB4U5QtvAr
	 Luf+4c+d+rgARWxzXqDqGQmIHLcYfK5xXra1oiXC40c5FkHTOJcnmytRpa6msq6zZZ
	 WGphZdzchx9dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D315F61319;
	Thu,  1 May 2025 22:54:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 79B7E22A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD029417B1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GgUvf3bScyeA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 22:54:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3CD4941A4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CD4941A4B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3CD4941A4B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:38 +0000 (UTC)
X-CSE-ConnectionGUID: xAeY0wsGRWadqTxKKEbM/Q==
X-CSE-MsgGUID: NOgGPt2OT8aC5uhEv9IJ5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="58811754"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="58811754"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:38 -0700
X-CSE-ConnectionGUID: JvVTZTtiRTGVVfXFyRmJfQ==
X-CSE-MsgGUID: XfNLI6HhRaees9pxSeQsmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="138514320"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 01 May 2025 15:54:25 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250501-kk-tspll-improvements-alignment-v4-14-24c83d0ce7a8@intel.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Milena Olech <milena.olech@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746140079; x=1777676079;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=09z7P/iSewgSewd6YPYLw8RK4FGwxounHiayMufZKwU=;
 b=awXn1l8UCZdUR9SW1sbB7iYgR2wshG/wu89NaSocoZ2advtevqh0joP5
 jQnUkpb0E+GxBh08hiBU/GP3XXHN+bQwLw26tsVva6cVlRKLswI+k62qX
 Zv5UB/7BLJtYOV8ZoqrN7K9lCZrHfkEXFJEGaGPpd816c7ZbiudiebWcA
 +Yx/Vw9tV4zfMMZ0n0JKAareUwlQDIE/p0qynKupMSavCy+cyJQZgxPk5
 W+mbt/WHni1Km1rdSvq89BGCOhpn2lhN0+k6QMljyMMIg8nuEjiNPGL+I
 M+lqWClUvna7ztQ5Mg5xjYUT9gdxpPgLIx457uaU+JLcDSdF8Qfhv0mbL
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=awXn1l8U
Subject: [Intel-wired-lan] [PATCH v4 14/15] ice: move TSPLL init calls to
 ice_ptp.c
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

From: Karol Kolacinski <karol.kolacinski@intel.com>

Initialize TSPLL after initializing PHC in ice_ptp.c instead of calling
for each product in PHC init in ice_ptp_hw.c.

Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 11 +++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 22 +---------------------
 drivers/net/ethernet/intel/ice/ice_tspll.c  |  5 +++++
 3 files changed, 17 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 083f50f827441792d3b7a838c3359e05d2bbdf7c..3278b96d8f01cdf783db495db167e44c13e8c8da 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2891,6 +2891,10 @@ static int ice_ptp_rebuild_owner(struct ice_pf *pf)
 	if (err)
 		return err;
 
+	err = ice_tspll_init(hw);
+	if (err)
+		return err;
+
 	/* Acquire the global hardware lock */
 	if (!ice_ptp_lock(hw)) {
 		err = -EBUSY;
@@ -3058,6 +3062,13 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
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
index 6da82025934cb709d06f12cc26f9b494c6f4d772..523f95271f353e72b72ac5ea0123869f2d387e98 100644
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
index 7b61e1afe8b43a24c77edf0a0590562fbfa0ce3e..8f125ea5a80f5d145a412eee55a148b3ae3f830d 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -484,6 +484,11 @@ int ice_tspll_init(struct ice_hw *hw)
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
2.48.1.397.gec9d649cc640


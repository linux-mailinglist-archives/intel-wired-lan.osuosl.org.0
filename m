Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5D98A2F04
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 15:11:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2884A60AB0;
	Fri, 12 Apr 2024 13:11:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SiJAlZ554M4F; Fri, 12 Apr 2024 13:11:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C8A96088D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712927502;
	bh=VsMplHZKPsaJxBGni2SNGW3xnnzG7wZ0sLhcn6CILHA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P1WruvufWvQQ98/4S4z91m9Q9bBbdbmNR+sgOrha7x1iTid57sutUdIX+vig56obV
	 Aq6pAruZuqOTIGzmCHY+aMij5FB7B/uIVNGs8hMu7R4z5LxROOuae4daCmQPcAhyDM
	 U/EeE7OgEiekZq4rpZzgvT0yzdsVfCsyjc2AkNmRX6m9fsLQ56n+DtgYq5hb6/f+er
	 devpwA9IkJfVeQg2Yjh+JC3RXLOyWLfFqbP4RYyKVaJwli0YVcPgmH7RZEmtINgKal
	 QQZOCr2fcKURZ3RO0tZJ2ARnKhdy6B+8dZ31gf6VK8LhnI39hcqj19nZhm6mNWyADZ
	 8Yb/A4YanL1mw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C8A96088D;
	Fri, 12 Apr 2024 13:11:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 575D31BF997
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5354A60774
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id apNhkNctAYIT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 13:11:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 59284607B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59284607B9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59284607B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:28 +0000 (UTC)
X-CSE-ConnectionGUID: m7olGVosQ++r05zpLsbWBA==
X-CSE-MsgGUID: dy1wjaXqR82KJ/bNPlfJVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12230987"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="12230987"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 06:11:27 -0700
X-CSE-ConnectionGUID: dbzmVEiHQMW0XhAyMO3BsQ==
X-CSE-MsgGUID: RvT/HuPbSWe+g1edHyjIDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="52384911"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa001.fm.intel.com with ESMTP; 12 Apr 2024 06:11:26 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Apr 2024 15:06:51 +0200
Message-ID: <20240412131104.322851-22-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240412131104.322851-14-karol.kolacinski@intel.com>
References: <20240412131104.322851-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712927488; x=1744463488;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0KL7E6b2a70200YiReFdH4joiVc1Vkvvv4oKoGFcufc=;
 b=gcvpYaYH2ybZVd/Fm+KYwiUwXEKNzhBm8FZCgPuAFknvsFK7s5EidxRS
 4HqHafBbYCJBBJXSDMDuYeOwb4bnFQvpuLeIM+xPCXwoyXrTTYfxTGVQh
 49OPSsxWvYXPOz7tred5PGCeMkDbywc6aeIXTz5js16JO1GdE7I7bJ9gR
 NZKKu4FwoFEz7hPtWoYN+ETfN2o/nX5GCQTjOMxRnOYh4demmJfTx0KBS
 I3U3vycPe+sOQaA7znlBXAJQNL2DUBtGnEVmQV1KdQS2ZqBoXL+02m8q+
 b2sy23Dvg6Uz5zUQSKY+D3Iz0aqcwgtTIzzCiw/M7ShR4z5zMi944Iax8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gcvpYaYH
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 08/12] ice: Change CGU regs
 struct to anonymous
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Simplify the code by using anonymous struct in CGU registers instead of
naming each structure 'field'.

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h | 12 ++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 44 +++++++++----------
 2 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_cgu_regs.h b/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
index 57abd52386d0..36aeb10eefb7 100644
--- a/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
+++ b/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
@@ -23,7 +23,7 @@ union nac_cgu_dword9 {
 		u32 clk_synce0_amp : 2;
 		u32 one_pps_out_amp : 2;
 		u32 misc24 : 12;
-	} field;
+	};
 	u32 val;
 };
 
@@ -39,7 +39,7 @@ union nac_cgu_dword19 {
 		u32 japll_ndivratio : 4;
 		u32 japll_iref_ndivratio : 3;
 		u32 misc27 : 1;
-	} field;
+	};
 	u32 val;
 };
 
@@ -63,7 +63,7 @@ union nac_cgu_dword22 {
 		u32 fdpllclk_sel_div2 : 1;
 		u32 time1588clk_sel_div2 : 1;
 		u32 misc3 : 1;
-	} field;
+	};
 	u32 val;
 };
 
@@ -77,7 +77,7 @@ union nac_cgu_dword24 {
 		u32 ext_synce_sel : 1;
 		u32 ref1588_ck_div : 4;
 		u32 time_ref_sel : 1;
-	} field;
+	};
 	u32 val;
 };
 
@@ -92,7 +92,7 @@ union tspll_cntr_bist_settings {
 		u32 i_plllock_cnt_6_0 : 7;
 		u32 i_plllock_cnt_10_7 : 4;
 		u32 reserved200 : 4;
-	} field;
+	};
 	u32 val;
 };
 
@@ -109,7 +109,7 @@ union tspll_ro_bwm_lf {
 		u32 afcdone_cri : 1;
 		u32 feedfwrdgain_cal_cri_7_0 : 8;
 		u32 m2fbdivmod_cri_7_0 : 8;
-	} field;
+	};
 	u32 val;
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index c04678536eab..fec349382a31 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -383,14 +383,14 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
 
 	/* Log the current clock configuration */
 	ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.field.ts_pll_enable ? "enabled" : "disabled",
-		  ice_clk_src_str(dw24.field.time_ref_sel),
-		  ice_clk_freq_str(dw9.field.time_ref_freq_sel),
-		  bwm_lf.field.plllock_true_lock_cri ? "locked" : "unlocked");
+		  dw24.ts_pll_enable ? "enabled" : "disabled",
+		  ice_clk_src_str(dw24.time_ref_sel),
+		  ice_clk_freq_str(dw9.time_ref_freq_sel),
+		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
 
 	/* Disable the PLL before changing the clock source or frequency */
-	if (dw24.field.ts_pll_enable) {
-		dw24.field.ts_pll_enable = 0;
+	if (dw24.ts_pll_enable) {
+		dw24.ts_pll_enable = 0;
 
 		err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
 		if (err)
@@ -398,7 +398,7 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
 	}
 
 	/* Set the frequency */
-	dw9.field.time_ref_freq_sel = clk_freq;
+	dw9.time_ref_freq_sel = clk_freq;
 	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
 	if (err)
 		return err;
@@ -408,8 +408,8 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
 	if (err)
 		return err;
 
-	dw19.field.tspll_fbdiv_intgr = e822_cgu_params[clk_freq].feedback_div;
-	dw19.field.tspll_ndivratio = 1;
+	dw19.tspll_fbdiv_intgr = e822_cgu_params[clk_freq].feedback_div;
+	dw19.tspll_ndivratio = 1;
 
 	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD19, dw19.val);
 	if (err)
@@ -420,8 +420,8 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
 	if (err)
 		return err;
 
-	dw22.field.time1588clk_div = e822_cgu_params[clk_freq].post_pll_div;
-	dw22.field.time1588clk_sel_div2 = 0;
+	dw22.time1588clk_div = e822_cgu_params[clk_freq].post_pll_div;
+	dw22.time1588clk_sel_div2 = 0;
 
 	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD22, dw22.val);
 	if (err)
@@ -432,16 +432,16 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
 	if (err)
 		return err;
 
-	dw24.field.ref1588_ck_div = e822_cgu_params[clk_freq].refclk_pre_div;
-	dw24.field.tspll_fbdiv_frac = e822_cgu_params[clk_freq].frac_n_div;
-	dw24.field.time_ref_sel = clk_src;
+	dw24.ref1588_ck_div = e822_cgu_params[clk_freq].refclk_pre_div;
+	dw24.tspll_fbdiv_frac = e822_cgu_params[clk_freq].frac_n_div;
+	dw24.time_ref_sel = clk_src;
 
 	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
 	if (err)
 		return err;
 
 	/* Finally, enable the PLL */
-	dw24.field.ts_pll_enable = 1;
+	dw24.ts_pll_enable = 1;
 
 	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
 	if (err)
@@ -454,17 +454,17 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
 	if (err)
 		return err;
 
-	if (!bwm_lf.field.plllock_true_lock_cri) {
+	if (!bwm_lf.plllock_true_lock_cri) {
 		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
 		return -EBUSY;
 	}
 
 	/* Log the current clock configuration */
 	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.field.ts_pll_enable ? "enabled" : "disabled",
-		  ice_clk_src_str(dw24.field.time_ref_sel),
-		  ice_clk_freq_str(dw9.field.time_ref_freq_sel),
-		  bwm_lf.field.plllock_true_lock_cri ? "locked" : "unlocked");
+		  dw24.ts_pll_enable ? "enabled" : "disabled",
+		  ice_clk_src_str(dw24.time_ref_sel),
+		  ice_clk_freq_str(dw9.time_ref_freq_sel),
+		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
 
 	return 0;
 }
@@ -487,8 +487,8 @@ static int ice_init_cgu_e82x(struct ice_hw *hw)
 		return err;
 
 	/* Disable sticky lock detection so lock err reported is accurate */
-	cntr_bist.field.i_plllock_sel_0 = 0;
-	cntr_bist.field.i_plllock_sel_1 = 0;
+	cntr_bist.i_plllock_sel_0 = 0;
+	cntr_bist.i_plllock_sel_1 = 0;
 
 	err = ice_write_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
 				     cntr_bist.val);
-- 
2.43.0


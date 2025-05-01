Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 674DAAA6677
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 00:54:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA27B611C6;
	Thu,  1 May 2025 22:54:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BJ141VkERYGk; Thu,  1 May 2025 22:54:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB00D61148
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746140080;
	bh=lKdfyEITdY6Y+E8eN+nZrnB2k5DiFiTh1/qWuSyVpXs=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=22TdYiFX5UfEgSY08dHgWAM+X8xmNJf3NZ5TJUxkWGGCOFb5NTVM9q7JpvTbKT4EA
	 853WXHVKZr5w+MpcPjUiOOteEFdfx8z9qfZReu8dZmP+dClA2GrJM7OjKOGvTD8wqJ
	 nd6Sh1gyBCt40Vb4BBqfe366E5dnXCDJzEsnSUQTZVMXxp1pvw9kdiIxxd59IAVRLH
	 UVVcaK50X7XPPILVz2yOc9UhGeLrEruwNRp7A/DT5rphFWb2EWbnJFOAfrQTiYHpPo
	 6igpdfoUyuv8w9yV4QgX6kEpdAcc9NNk6dbsEXeJVrYlIVJV0Tziac+Q6fIqwugN2q
	 ypnjdth9sIT1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB00D61148;
	Thu,  1 May 2025 22:54:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3930522A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 797AC417BD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1e5lgspZSA2f for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 22:54:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 981D4417B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 981D4417B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 981D4417B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:34 +0000 (UTC)
X-CSE-ConnectionGUID: LbAieRCdSbKeS8WLfn2wiw==
X-CSE-MsgGUID: ZGuYx6sxSaa87b7WH5hSAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="58811725"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="58811725"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:35 -0700
X-CSE-ConnectionGUID: pHFJDiimSiW7UNVXch91SQ==
X-CSE-MsgGUID: b/v2C0UhQ1KjC7Dug+j7Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="138514291"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:33 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 01 May 2025 15:54:18 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250501-kk-tspll-improvements-alignment-v4-7-24c83d0ce7a8@intel.com>
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
 t=1746140075; x=1777676075;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=o9H/I5LzpELTFwvWBOcS3sduSYSB8zcXUT4mVG3Xsh0=;
 b=L/4N7EF6F5nU6/F/OgEFs0hEj/tTHKyj94QS6XResGMIPwNBAVHKHnHz
 zkstK1PDHYgtlbO29gdeWLsX+0bVx3dL0atE4HnOizRlVfWrTbDP+l7aD
 FAtIb0eROIEwHvq2XtLocIioxLyn8HVxqZknzajZFAobJCFKpZ1n9HEIh
 bWw5yZX6uKXWdYbZ5z2zNId3uPC2Met33cwYonwu/W0+E0pY9zZ2PlKNN
 bk2xHNDgC95GhfmfXjRW1BA22j7XFwvVZ5QzZ84uF3gtsAq0UzP+qpCFf
 XhEKlAmiMlm2V+/kkqJsHdLLv5mIi5fNpt9duL3F1H6fSVo1nzko93HE+
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L/4N7EF6
Subject: [Intel-wired-lan] [PATCH v4 07/15] ice: add
 ICE_READ/WRITE_CGU_REG_OR_DIE helpers
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

Add ICE_READ_CGU_REG_OR_DIE() and ICE_WRITE_CGU_REG_OR_DIE() helpers to
avoid multiple error checks after calling read/write functions.

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.h |  15 +++
 drivers/net/ethernet/intel/ice/ice_tspll.c  | 160 ++++++----------------------
 2 files changed, 47 insertions(+), 128 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 86b34fb02d41b01640ee8b913ff2fc82fde85b68..65016843ddb0685d8e7c3bc11538b2b136530915 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -503,5 +503,20 @@ int ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle);
 int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw);
 int ice_read_cgu_reg(struct ice_hw *hw, u32 addr, u32 *val);
+#define ICE_READ_CGU_REG_OR_DIE(hw, addr, val)                     \
+	do {                                                       \
+		int __err = ice_read_cgu_reg((hw), (addr), (val)); \
+								   \
+		if (__err)                                         \
+			return __err;                              \
+	} while (0)
 int ice_write_cgu_reg(struct ice_hw *hw, u32 addr, u32 val);
+#define ICE_WRITE_CGU_REG_OR_DIE(hw, addr, val)                     \
+	do {                                                        \
+		int __err = ice_write_cgu_reg((hw), (addr), (val)); \
+								    \
+		if (__err)                                          \
+			return __err;                               \
+	} while (0)
+
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 08af4ced50eb877dce5944d87a90d0dcdb49ff2e..2cc728c2b67897940af75cb0bc3bfaf5fd8e6869 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -132,7 +132,6 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	union ice_cgu_r22 dw22;
 	union ice_cgu_r24 dw24;
 	union ice_cgu_r9 dw9;
-	int err;
 
 	if (clk_freq >= NUM_ICE_TSPLL_FREQ) {
 		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
@@ -152,17 +151,9 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EINVAL;
 	}
 
-	err = ice_read_cgu_reg(hw, ICE_CGU_R9, &dw9.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg(hw, ICE_CGU_R24, &dw24.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
-	if (err)
-		return err;
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &dw9.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &dw24.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
 
 	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, dw24.time_ref_sel,
 			  dw9.time_ref_freq_sel, bwm_lf.plllock_true_lock_cri,
@@ -171,69 +162,40 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	/* Disable the PLL before changing the clock source or frequency */
 	if (dw24.ts_pll_enable) {
 		dw24.ts_pll_enable = 0;
-
-		err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
-		if (err)
-			return err;
+		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, dw24.val);
 	}
 
 	/* Set the frequency */
 	dw9.time_ref_freq_sel = clk_freq;
-	err = ice_write_cgu_reg(hw, ICE_CGU_R9, dw9.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, dw9.val);
 
 	/* Configure the TSPLL feedback divisor */
-	err = ice_read_cgu_reg(hw, ICE_CGU_R19, &dw19.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R19, &dw19.val);
 	dw19.fbdiv_intgr = e82x_tspll_params[clk_freq].feedback_div;
 	dw19.ndivratio = 1;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R19, dw19.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R19, dw19.val);
 
 	/* Configure the TSPLL post divisor */
-	err = ice_read_cgu_reg(hw, ICE_CGU_R22, &dw22.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R22, &dw22.val);
 	dw22.time1588clk_div = e82x_tspll_params[clk_freq].post_pll_div;
 	dw22.time1588clk_sel_div2 = 0;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R22, dw22.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R22, dw22.val);
 
 	/* Configure the TSPLL pre divisor and clock source */
-	err = ice_read_cgu_reg(hw, ICE_CGU_R24, &dw24.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &dw24.val);
 	dw24.ref1588_ck_div = e82x_tspll_params[clk_freq].refclk_pre_div;
 	dw24.fbdiv_frac = e82x_tspll_params[clk_freq].frac_n_div;
 	dw24.time_ref_sel = clk_src;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, dw24.val);
 
 	/* Finally, enable the PLL */
 	dw24.ts_pll_enable = 1;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, dw24.val);
 
 	/* Wait to verify if the PLL locks */
 	usleep_range(1000, 5000);
 
-	err = ice_read_cgu_reg(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
 	if (!bwm_lf.plllock_true_lock_cri) {
 		dev_warn(ice_hw_to_dev(hw), "TSPLL failed to lock\n");
 		return -EBUSY;
@@ -257,12 +219,8 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 static int ice_tspll_dis_sticky_bits_e82x(struct ice_hw *hw)
 {
 	union tspll_cntr_bist_settings cntr_bist;
-	int err;
-
-	err = ice_read_cgu_reg(hw, TSPLL_CNTR_BIST_SETTINGS, &cntr_bist.val);
-	if (err)
-		return err;
 
+	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_CNTR_BIST_SETTINGS, &cntr_bist.val);
 	/* Disable sticky lock detection so lock err reported is accurate */
 	cntr_bist.i_plllock_sel_0 = 0;
 	cntr_bist.i_plllock_sel_1 = 0;
@@ -294,7 +252,6 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	union ice_cgu_r23 dw23;
 	union ice_cgu_r22 dw22;
 	union ice_cgu_r9 dw9;
-	int err;
 
 	if (clk_freq >= NUM_ICE_TSPLL_FREQ) {
 		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
@@ -313,21 +270,10 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EINVAL;
 	}
 
-	err = ice_read_cgu_reg(hw, ICE_CGU_R9, &dw9.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg(hw, ICE_CGU_R16, &dw16.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg(hw, ICE_CGU_R23, &dw23.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
-	if (err)
-		return err;
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &dw9.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R16, &dw16.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &dw23.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
 
 	ice_tspll_log_cfg(hw, dw23.ts_pll_enable, dw23.time_ref_sel,
 			  dw9.time_ref_freq_sel,
@@ -336,10 +282,7 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	/* Disable the PLL before changing the clock source or frequency */
 	if (dw23.ts_pll_enable) {
 		dw23.ts_pll_enable = 0;
-
-		err = ice_write_cgu_reg(hw, ICE_CGU_R23, dw23.val);
-		if (err)
-			return err;
+		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, dw23.val);
 	}
 
 	/* Set the frequency */
@@ -353,72 +296,42 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		dw9.time_ref_en = 1;
 		dw9.clk_eref0_en = 0;
 	}
-	err = ice_write_cgu_reg(hw, ICE_CGU_R9, dw9.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, dw9.val);
 
 	/* Choose the referenced frequency */
 	dw16.ck_refclkfreq = ICE_TSPLL_CK_REFCLKFREQ_E825;
-	err = ice_write_cgu_reg(hw, ICE_CGU_R16, dw16.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R16, dw16.val);
 
 	/* Configure the TSPLL feedback divisor */
-	err = ice_read_cgu_reg(hw, ICE_CGU_R19, &dw19.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R19, &dw19.val);
 	dw19.tspll_fbdiv_intgr = ICE_TSPLL_FBDIV_INTGR_E825;
 	dw19.tspll_ndivratio = ICE_TSPLL_NDIVRATIO_E825;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R19, dw19.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R19, dw19.val);
 
 	/* Configure the TSPLL post divisor */
-	err = ice_read_cgu_reg(hw, ICE_CGU_R22, &dw22.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R22, &dw22.val);
 	/* These two are constant for E825C */
 	dw22.time1588clk_div = 5;
 	dw22.time1588clk_sel_div2 = 0;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R22, dw22.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R22, dw22.val);
 
 	/* Configure the TSPLL pre divisor and clock source */
-	err = ice_read_cgu_reg(hw, ICE_CGU_R23, &dw23.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &dw23.val);
 	dw23.ref1588_ck_div = 0;
 	dw23.time_ref_sel = clk_src;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R23, dw23.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, dw23.val);
 
 	/* Clear the R24 register. */
-	err = ice_write_cgu_reg(hw, ICE_CGU_R24, 0);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, 0);
 
 	/* Finally, enable the PLL */
 	dw23.ts_pll_enable = 1;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R23, dw23.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, dw23.val);
 
 	/* Wait to verify if the PLL locks */
 	usleep_range(1000, 5000);
 
-	err = ice_read_cgu_reg(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
 	if (!ro_lock.plllock_true_lock_cri) {
 		dev_warn(ice_hw_to_dev(hw), "TSPLL failed to lock\n");
 		return -EBUSY;
@@ -442,14 +355,9 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 static int ice_tspll_dis_sticky_bits_e825c(struct ice_hw *hw)
 {
 	union tspll_bw_tdc_e825c bw_tdc;
-	int err;
-
-	err = ice_read_cgu_reg(hw, TSPLL_BW_TDC_E825C, &bw_tdc.val);
-	if (err)
-		return err;
 
+	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_BW_TDC_E825C, &bw_tdc.val);
 	bw_tdc.i_plllock_sel_1_0 = 0;
-
 	return ice_write_cgu_reg(hw, TSPLL_BW_TDC_E825C, bw_tdc.val);
 }
 
@@ -465,12 +373,8 @@ static int ice_tspll_dis_sticky_bits_e825c(struct ice_hw *hw)
 int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable)
 {
 	union ice_cgu_r9 r9;
-	int err;
-
-	err = ice_read_cgu_reg(hw, ICE_CGU_R9, &r9.val);
-	if (err)
-		return err;
 
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &r9.val);
 	r9.one_pps_out_en = enable;
 	r9.one_pps_out_amp = enable * ICE_ONE_PPS_OUT_AMP_MAX;
 	return ice_write_cgu_reg(hw, ICE_CGU_R9, r9.val);

-- 
2.48.1.397.gec9d649cc640


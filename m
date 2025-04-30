Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E520AA5834
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 00:52:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B424461021;
	Wed, 30 Apr 2025 22:51:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VCWYoH0FXmDa; Wed, 30 Apr 2025 22:51:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA9AA60FD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746053513;
	bh=XsjRxI+jmC+ZSEbzc20dEmL681N1GXqzobAFmdhfVAw=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oqewajjIFFWfXo1+gF6eYK9WYV1CkJ0Eb1IvXf5sc3Hw9dok5zypZEN1FTwYjuBSi
	 ClEtq+jaum/vfygDL2MMTQK04WCQlIi29SqcQgaT+0nsHWst5NQRlIrurTX/LosxGI
	 SP042crHnqKUotQLqLJHj7mgL+BAwdoc12nU0pCXxiNSIGcLIiNE6DdKTnHdmBnwos
	 dr8oqwB9dtbfnsAm4FIhJPinAnjtAvbucks+AzEhtpB7Lh20XoPYHdS8qqh+KH83NY
	 ++gdZ/z6BImoxAFUqv8uFfRe+IQhucnUHXnOK9VuDtifQwpBqENqfdanKR0UeTADos
	 v+m4Mat6w/hhA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA9AA60FD3;
	Wed, 30 Apr 2025 22:51:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C1F6E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B132605AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3MtfWV9t_Iv3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 22:51:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7A7E860B10
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A7E860B10
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A7E860B10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:42 +0000 (UTC)
X-CSE-ConnectionGUID: OmeUaMZ8TYibFInVgA4nrQ==
X-CSE-MsgGUID: W2UeH48rREWtQlUEC2zrzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="73120901"
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="73120901"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:41 -0700
X-CSE-ConnectionGUID: LRPlJnuLQPydPTemOIEO9A==
X-CSE-MsgGUID: kLUaWq01SZy7E7WdQN03mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="134145088"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 30 Apr 2025 15:51:38 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250430-kk-tspll-improvements-alignment-v3-7-ab8472e86204@intel.com>
References: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
In-Reply-To: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Milena Olech <milena.olech@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746053502; x=1777589502;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=1Wem77COV0Eps0ohw2i0BfAw/29dTjrwWhD0otEHxIA=;
 b=IKey4y+zTemw4DT0EFIwybrcRNY6kz0DnMf5cS5GchP9vxImmsoUDtlA
 xE7LiyBrgTU0CqubOUa5u3u/dO+wsbhHJkTk2V71GRDLW/zery0oUXhx9
 hHWQEU130HtdKQayXz2YRMHotsK5TpY1rxfdVxOQXN45WdqB9OAvrskoZ
 bOemSGHfY6lRVD/WEUQ/VzNxVuhzPHViTV6FJGp6YmOB7mZd8cGnUWnrS
 oP0c4tBAsWYy7comv3yB3tn4XCxW2sRr8yVDd7aOEnviQSPWtwsm1JmM+
 uGX6iFhkJkrv6rZEdZ8CQ9Gqdf297nqwP7uyshJgCUy9w2puHr+TZQvap
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IKey4y+z
Subject: [Intel-wired-lan] [PATCH v3 07/15] ice: add
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
index 0ed9b5e2a0afb1d3a0e697a027e3cb125e4db443..fb671e243d5b9520ed3cb1ca3fcb4c697d3a5c94 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -493,5 +493,20 @@ int ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle);
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
index a338cfb1044869f9c844bbd0d6d77987f275f945..acb6a4e77678962f8dea61d914579888c9b87b23 100644
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


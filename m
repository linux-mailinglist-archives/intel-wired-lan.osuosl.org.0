Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49477AE588E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 02:30:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9318840B75;
	Tue, 24 Jun 2025 00:30:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ePr_y-SHdbha; Tue, 24 Jun 2025 00:30:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF00740AE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750725012;
	bh=pKEsXemV7f75bweiI6AA2IO3TfyWC1vlamJpI6fvXY0=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ajt/FOrsM3cR1mjFziuVgc5nitxplTKF5A+YqvQg0laGCdC4ySm0ubTZG6Qrtg4Sv
	 f1I0sgwraT4Yj0hAVKMQUHC9fSHg9aN0WcsGpBDfIWFdHzbfk8rnhEPPfB/Ae8Tmxl
	 IM2NXptvQfDaGhxH5dFc0/no0C0qKsT2ra39e9UGNXZcsvRUMJlqabSPXBZ8yLM455
	 TMCePUYvMt6y0SKViRjC5TMoXpAoHs7ezSsu+//Cbm9Xt29N5bvGUwQOoXv9LceP9R
	 GyZnomT1sxlnL+3sE3+ckxfhZ2/wwzIJyNerBaS2zUoXQkbYQsQvg+CAyPZyvAN7Ei
	 LMHswyJ9eu9Lg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF00740AE7;
	Tue, 24 Jun 2025 00:30:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 19536154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB06D610AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 78q6eKpUKjI0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F28A8610A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F28A8610A8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F28A8610A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:07 +0000 (UTC)
X-CSE-ConnectionGUID: xckhW76vSm6sTJEa30XOgA==
X-CSE-MsgGUID: naBYQ5sQSwKPpyP39bK4Ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52067916"
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="52067916"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:07 -0700
X-CSE-ConnectionGUID: SYOJQsjRSyS5a38jjWQh/A==
X-CSE-MsgGUID: lpe4s5D4RQ+QGMC8rQOyoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="157534045"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:06 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 23 Jun 2025 17:30:00 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-kk-tspll-improvements-alignment-v1-4-fe9a50620700@intel.com>
References: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
In-Reply-To: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org, 
 Karol Kolacinski <karol.kolacinski@intel.com>, 
 Milena Olech <milena.olech@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750725008; x=1782261008;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=Q2LTKXyU/2AHsmVL5L2k3vVmUySp3C68zPt1J8YYFf0=;
 b=He8id29AIOINu4ti8E5kPXvm0LUVBKKuqE/eXatNP7z05/dS0SNALmn2
 GqiQVS3LaNAuvsdkCQ/DW2BfPEwK9hBYNmvJFVRXPDVaOTicpMu0kbo1X
 UJXTO2P9sGXPW/q+ZOu+Dp0g6dVGT+OhrRCJiL39Gg+I/L2pmIlvVOFl4
 EsAU5pZEW18sHSCoOXq4I+R1t34SgMxTVJmxaYCf4vWnG1fioq5wQKcrm
 2XT6GScWLA3nutF60aL1NwpF9s/yL16eqElFR+0gxDWW1rfyCB6pR3Gjm
 W5FuszM8E+VW5w8rzh5C6y7JXUNTjfJ1Bevj41og55usz1bQOSSyhuf1D
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=He8id29A
Subject: [Intel-wired-lan] [PATCH 4/8] ice: add multiple TSPLL helpers
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

Add helpers for checking TSPLL params, disabling sticky bits,
configuring TSPLL and getting default clock frequency to simplify
the code flows.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 156 ++++++++++++++++++++---------
 1 file changed, 108 insertions(+), 48 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 8e1f522c579b7e4d440424fd8af4c7b7e198d067..e7b44e703d7c0966414e119f861ee1ab165d9293 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -71,6 +71,58 @@ static const char *ice_tspll_clk_freq_str(enum ice_tspll_freq clk_freq)
 	}
 }
 
+/**
+ * ice_tspll_default_freq - Return default frequency for a MAC type
+ * @mac_type: MAC type
+ *
+ * Return: default TSPLL frequency for a correct MAC type, -ERANGE otherwise.
+ */
+static enum ice_tspll_freq ice_tspll_default_freq(enum ice_mac_type mac_type)
+{
+	switch (mac_type) {
+	case ICE_MAC_GENERIC:
+		return ICE_TSPLL_FREQ_25_000;
+	case ICE_MAC_GENERIC_3K_E825:
+		return ICE_TSPLL_FREQ_156_250;
+	default:
+		return -ERANGE;
+	}
+}
+
+/**
+ * ice_tspll_check_params - Check if TSPLL params are correct
+ * @hw: Pointer to the HW struct
+ * @clk_freq: Clock frequency to program
+ * @clk_src: Clock source to select (TIME_REF or TCXO)
+ *
+ * Return: true if TSPLL params are correct, false otherwise.
+ */
+static bool ice_tspll_check_params(struct ice_hw *hw,
+				   enum ice_tspll_freq clk_freq,
+				   enum ice_clk_src clk_src)
+{
+	if (clk_freq >= NUM_ICE_TSPLL_FREQ) {
+		dev_warn(ice_hw_to_dev(hw), "Invalid TSPLL frequency %u\n",
+			 clk_freq);
+		return false;
+	}
+
+	if (clk_src >= NUM_ICE_CLK_SRC) {
+		dev_warn(ice_hw_to_dev(hw), "Invalid clock source %u\n",
+			 clk_src);
+		return false;
+	}
+
+	if ((hw->mac_type == ICE_MAC_GENERIC_3K_E825 ||
+	     clk_src == ICE_CLK_SRC_TCXO) &&
+	    clk_freq != ice_tspll_default_freq(hw->mac_type)) {
+		dev_warn(ice_hw_to_dev(hw), "Unsupported frequency for this clock source\n");
+		return false;
+	}
+
+	return true;
+}
+
 /**
  * ice_tspll_clk_src_str - Convert time_ref_src to string
  * @clk_src: Clock source
@@ -130,24 +182,6 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	u32 val, r9, r24;
 	int err;
 
-	if (clk_freq >= NUM_ICE_TSPLL_FREQ) {
-		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
-			 clk_freq);
-		return -EINVAL;
-	}
-
-	if (clk_src >= NUM_ICE_CLK_SRC) {
-		dev_warn(ice_hw_to_dev(hw), "Invalid clock source %u\n",
-			 clk_src);
-		return -EINVAL;
-	}
-
-	if (clk_src == ICE_CLK_SRC_TCXO && clk_freq != ICE_TSPLL_FREQ_25_000) {
-		dev_warn(ice_hw_to_dev(hw),
-			 "TCXO only supports 25 MHz frequency\n");
-		return -EINVAL;
-	}
-
 	err = ice_read_cgu_reg(hw, ICE_CGU_R9, &r9);
 	if (err)
 		return err;
@@ -306,23 +340,6 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	u32 val, r9, r23;
 	int err;
 
-	if (clk_freq >= NUM_ICE_TSPLL_FREQ) {
-		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
-			 clk_freq);
-		return -EINVAL;
-	}
-
-	if (clk_src >= NUM_ICE_CLK_SRC) {
-		dev_warn(ice_hw_to_dev(hw), "Invalid clock source %u\n",
-			 clk_src);
-		return -EINVAL;
-	}
-
-	if (clk_freq != ICE_TSPLL_FREQ_156_250) {
-		dev_warn(ice_hw_to_dev(hw), "Adapter only supports 156.25 MHz frequency\n");
-		return -EINVAL;
-	}
-
 	err = ice_read_cgu_reg(hw, ICE_CGU_R9, &r9);
 	if (err)
 		return err;
@@ -508,6 +525,52 @@ int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable)
 	return ice_write_cgu_reg(hw, ICE_CGU_R9, val);
 }
 
+/**
+ * ice_tspll_cfg - Configure the Clock Generation Unit TSPLL
+ * @hw: Pointer to the HW struct
+ * @clk_freq: Clock frequency to program
+ * @clk_src: Clock source to select (TIME_REF, or TCXO)
+ *
+ * Configure the Clock Generation Unit with the desired clock frequency and
+ * time reference, enabling the TSPLL which drives the PTP hardware clock.
+ *
+ * Return: 0 on success, -ERANGE on unsupported MAC type, other negative error
+ *         codes when failed to configure CGU.
+ */
+static int ice_tspll_cfg(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
+			 enum ice_clk_src clk_src)
+{
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC:
+		return ice_tspll_cfg_e82x(hw, clk_freq, clk_src);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_tspll_cfg_e825c(hw, clk_freq, clk_src);
+	default:
+		return -ERANGE;
+	}
+}
+
+/**
+ * ice_tspll_dis_sticky_bits - disable TSPLL sticky bits
+ * @hw: Pointer to the HW struct
+ *
+ * Configure the Clock Generation Unit TSPLL sticky bits so they don't latch on
+ * losing TSPLL lock, but always show current state.
+ *
+ * Return: 0 on success, -ERANGE on unsupported MAC type.
+ */
+static int ice_tspll_dis_sticky_bits(struct ice_hw *hw)
+{
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC:
+		return ice_tspll_dis_sticky_bits_e82x(hw);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_tspll_dis_sticky_bits_e825c(hw);
+	default:
+		return -ERANGE;
+	}
+}
+
 /**
  * ice_tspll_init - Initialize TSPLL with settings from firmware
  * @hw: Pointer to the HW structure
@@ -519,25 +582,22 @@ int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable)
 int ice_tspll_init(struct ice_hw *hw)
 {
 	struct ice_ts_func_info *ts_info = &hw->func_caps.ts_func_info;
+	enum ice_tspll_freq tspll_freq;
+	enum ice_clk_src clk_src;
 	int err;
 
-	/* Disable sticky lock detection so lock err reported is accurate. */
-	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
-		err = ice_tspll_dis_sticky_bits_e825c(hw);
-	else
-		err = ice_tspll_dis_sticky_bits_e82x(hw);
+	tspll_freq = (enum ice_tspll_freq)ts_info->time_ref;
+	clk_src = (enum ice_clk_src)ts_info->clk_src;
+	if (!ice_tspll_check_params(hw, tspll_freq, clk_src))
+		return -EINVAL;
+
+	/* Disable sticky lock detection so lock status reported is accurate */
+	err = ice_tspll_dis_sticky_bits(hw);
 	if (err)
 		return err;
 
 	/* Configure the TSPLL using the parameters from the function
 	 * capabilities.
 	 */
-	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
-		err = ice_tspll_cfg_e825c(hw, ts_info->time_ref,
-					  (enum ice_clk_src)ts_info->clk_src);
-	else
-		err = ice_tspll_cfg_e82x(hw, ts_info->time_ref,
-					 (enum ice_clk_src)ts_info->clk_src);
-
-	return err;
+	return ice_tspll_cfg(hw, tspll_freq, clk_src);
 }

-- 
2.48.1.397.gec9d649cc640


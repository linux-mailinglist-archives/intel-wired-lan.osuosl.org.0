Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C25FA5926F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 12:14:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD2F9608AC;
	Mon, 10 Mar 2025 11:14:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W1IxVUqPlnHe; Mon, 10 Mar 2025 11:14:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0184B606E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741605269;
	bh=6QUKnpMG3VSwLAIVSeab7nizVHhO2zyprKZTInRMEKo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hq6b3m/N+m4eLfopfrO/mF3kNVDGN0xxJGIXcr4GzCtrLv1AiOJPvpJnPF4FWQ/vu
	 f9hAC3nXelpz3tDTx0Hp8pb8+xcRus/FU3BoJ45/hidBEku9InyxQSnw7QxZYsfhUZ
	 RgGClsGQoyieYe6AE43+h4qJkZsfn4pHlgSbI5wiJMX71+4uBUkYLarNV5eXcc8v8/
	 weSb9Lg+azOJxhGpgv1hxVZFFpBZlswJyOMN94GJ299nQnt5XIR7fUDaFNVNgMussw
	 3RttiwNH8btV/OMbRtlOrBB8H13oZ/teF2TQzQbF/dHeU/TR1fhfLcqfOgAgRdWqdq
	 WRAnsOfd0/tdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0184B606E0;
	Mon, 10 Mar 2025 11:14:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B98461C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A7251811BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 60dvz7_7Osgb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 11:14:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 59ABB811C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59ABB811C5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 59ABB811C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:25 +0000 (UTC)
X-CSE-ConnectionGUID: hrCQZ34PQH6W/kOKb06Iqw==
X-CSE-MsgGUID: nXpJiam/ShWYrozb/H6Zcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11368"; a="65048694"
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="65048694"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 04:14:25 -0700
X-CSE-ConnectionGUID: y6/0OZgSTY2nQlvfVnsKEQ==
X-CSE-MsgGUID: QVVlaM3aRPqWNeEpmzfygQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="119968327"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by fmviesa007.fm.intel.com with ESMTP; 10 Mar 2025 04:14:23 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena-olech@intel.com>
Date: Mon, 10 Mar 2025 12:12:51 +0100
Message-ID: <20250310111357.1238454-19-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250310111357.1238454-12-karol.kolacinski@intel.com>
References: <20250310111357.1238454-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741605265; x=1773141265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oR7BRw3mRuc8uToG1bS2qhlC/bu24zjj844cA65AQY8=;
 b=DmNj6ECk+FU+NhK4tfvLuvqhO3Lm5i3txF5HfplKFRW51It6SZ29Z2mc
 fclXK7QrtiJFGR36jipl1mKfEIXG7ckid/t7MxYzCQchFr/oIRpZdZNhz
 rDVnGL/3Tv93iPK1nLz08/+gzLl6JRMaOVdvq39k39vp3YBXnoyqLZzJe
 jz7aEijGcdR9tIyZ9r3SHAA+1rFfSCWrQanp99h+fDdMF458+1lw9CZa+
 gCCIRO/6jF4MBdLKlNidD6UcAQ6l5DR6OjkXMInsO+wjTgH83SKqs4P93
 JGguy+i2GaB6ULoCBxIS/OGu+UK5GvM6aiI/Z0rpBZVrpdQUG9MIla+3U
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DmNj6ECk
Subject: [Intel-wired-lan] [PATCH iwl-next 07/10] ice: add multiple TSPLL
 helpers
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

Add helpers for checking TSPLL params, disabling sticky bits,
configuring TSPLL and getting default clock frequency to simplify
the code flows.

Reviewed-by: Milena Olech <milena-olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 152 ++++++++++++++-------
 1 file changed, 104 insertions(+), 48 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 4d4d0a74310b..dce5164ebd9b 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -68,6 +68,54 @@ static const char *ice_tspll_clk_freq_str(enum ice_tspll_freq clk_freq)
 	}
 }
 
+/**
+ * ice_tspll_default_freq - Return default frequency for a MAC type
+ * @mac_type: MAC type
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
@@ -126,24 +174,6 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 {
 	u32 val, r9, r24;
 
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
 	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &r9);
 	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &r24);
 	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_RO_BWM_LF, &val);
@@ -253,23 +283,6 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 {
 	u32 val, r9, r23;
 
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
 	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &r9);
 	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &r23);
 	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_RO_LOCK, &val);
@@ -394,6 +407,52 @@ int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable)
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
@@ -405,25 +464,22 @@ int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable)
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
2.48.1


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0868E7F3826
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 22:20:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C79581F13;
	Tue, 21 Nov 2023 21:20:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C79581F13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700601647;
	bh=SAiJ6xNnpNoRIBh0iflW6B2jBuZ8LxuXnBriR81gxoA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AUJtVNIMjP7zzSDCBKLyBaoe7BSGm7XDIneS9HjN2iJRSN4Jil6O7IrDMsfk52fr0
	 +zKb+Ts5wbkLt2g1Nie2TV1ysXxlby+N81cqvbM0XyydZfAmwOblhvSQGNof6ZuLEa
	 kGborVVDtpoV/5AKUy/sj8n68ARZiyH1hs3iB74moF6Trns9K7vig1nBo4YPWjM/6Y
	 w7GwrE5cdW2A1mikv9Llft3zExXLdncrPZc6HhAOcsjrM+IKXocQ3ewcoifs9B9bk3
	 h6sHDlYSKzZlBrHTjv4ghdqYwBEabaJ6ucedCzngPAva6aNtxsOO0j22RmXam2fbtU
	 MCTCthJjNzF/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M-Z4OdpT6Tgp; Tue, 21 Nov 2023 21:20:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 052A880B6C;
	Tue, 21 Nov 2023 21:20:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 052A880B6C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E39251BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2965640985
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2965640985
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id chv7I75-dwZM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB8C6408A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB8C6408A3
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="423022083"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="423022083"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716630540"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="716630540"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:38 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 13:19:12 -0800
Message-Id: <20231121211921.19834-5-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231121211921.19834-1-jesse.brandeburg@intel.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700601581; x=1732137581;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ORQar9PMQvZ2meGyLu1cNZpU9SGUM6/ilvFrOylGW/A=;
 b=I5G7pvb+h1VdH6nn/j77qjx/3LgJ5lzqktZhb2hG9By27unR/BHsQRM2
 lRO/mTdcIw9oD19QFAmvBzbsium3eB/RjH0e5T2dmV4n5u8EAD+yycYWX
 9C5bIkhRDT5fjgJm1btPJZpmghW3p7W0NnTPatRjv8jha+ZCBkf8gz4gt
 xG918GyxFssz6082QRTFcqes+c/p7Jn8Lv4fpR3HkFGaXtuMpnfueYosg
 Sz6P7Awufs30JSVdvDTQsDUX7PmTGAkPu0shDv4KoX9DRcbAyGvSzrGcs
 RZ52eLf/kZg1IICfSNwsD5aoig9VvGHTd5CpYmBgZIo/0W7MRTrLlmM1H
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I5G7pvb+
Subject: [Intel-wired-lan] [PATCH iwl-next v1 04/13] i40e: field prep
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor i40e driver to use FIELD_PREP(), which reduces lines of code
and adds clarity of intent.

This code was generated by the following coccinelle/spatch script and
then manually repaired.

Refactor one function with multiple if's to return quickly to make lines
fit in 80 columns.

@prep@
constant shift,mask;
type T;
expression a;
@@
-(((T)(a) << shift) & mask)
+FIELD_PREP(mask, a)

Cc: Julia Lawall <Julia.Lawall@inria.fr>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c |  83 ++++++-------
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    | 116 ++++++++----------
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  12 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  41 +++----
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   8 +-
 5 files changed, 109 insertions(+), 151 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 522cf2e5f365..4ec4ab2c7d48 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -249,6 +249,7 @@ static int i40e_aq_get_set_rss_lut(struct i40e_hw *hw,
 	struct i40e_aqc_get_set_rss_lut *cmd_resp =
 		   (struct i40e_aqc_get_set_rss_lut *)&desc.params.raw;
 	int status;
+	u16 flags;
 
 	if (set)
 		i40e_fill_default_direct_cmd_desc(&desc,
@@ -261,23 +262,18 @@ static int i40e_aq_get_set_rss_lut(struct i40e_hw *hw,
 	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
 	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_RD);
 
-	cmd_resp->vsi_id =
-			cpu_to_le16((u16)((vsi_id <<
-					  I40E_AQC_SET_RSS_LUT_VSI_ID_SHIFT) &
-					  I40E_AQC_SET_RSS_LUT_VSI_ID_MASK));
-	cmd_resp->vsi_id |= cpu_to_le16((u16)I40E_AQC_SET_RSS_LUT_VSI_VALID);
+	vsi_id = FIELD_PREP(I40E_AQC_SET_RSS_LUT_VSI_ID_MASK, vsi_id) |
+		 FIELD_PREP(I40E_AQC_SET_RSS_LUT_VSI_VALID, 1);
+	cmd_resp->vsi_id = cpu_to_le16(vsi_id);
 
 	if (pf_lut)
-		cmd_resp->flags |= cpu_to_le16((u16)
-					((I40E_AQC_SET_RSS_LUT_TABLE_TYPE_PF <<
-					I40E_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT) &
-					I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK));
+		flags = FIELD_PREP(I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK,
+				   I40E_AQC_SET_RSS_LUT_TABLE_TYPE_PF);
 	else
-		cmd_resp->flags |= cpu_to_le16((u16)
-					((I40E_AQC_SET_RSS_LUT_TABLE_TYPE_VSI <<
-					I40E_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT) &
-					I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK));
+		flags = FIELD_PREP(I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK,
+				   I40E_AQC_SET_RSS_LUT_TABLE_TYPE_VSI);
 
+	cmd_resp->flags = cpu_to_le16(flags);
 	status = i40e_asq_send_command(hw, &desc, lut, lut_size, NULL);
 
 	return status;
@@ -347,11 +343,9 @@ static int i40e_aq_get_set_rss_key(struct i40e_hw *hw,
 	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
 	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_RD);
 
-	cmd_resp->vsi_id =
-			cpu_to_le16((u16)((vsi_id <<
-					  I40E_AQC_SET_RSS_KEY_VSI_ID_SHIFT) &
-					  I40E_AQC_SET_RSS_KEY_VSI_ID_MASK));
-	cmd_resp->vsi_id |= cpu_to_le16((u16)I40E_AQC_SET_RSS_KEY_VSI_VALID);
+	vsi_id = FIELD_PREP(I40E_AQC_SET_RSS_KEY_VSI_ID_MASK, vsi_id) |
+		 FIELD_PREP(I40E_AQC_SET_RSS_KEY_VSI_VALID, 1);
+	cmd_resp->vsi_id = cpu_to_le16(vsi_id);
 
 	status = i40e_asq_send_command(hw, &desc, key, key_size, NULL);
 
@@ -1289,14 +1283,14 @@ void i40e_led_set(struct i40e_hw *hw, u32 mode, bool blink)
 				pin_func = I40E_PIN_FUNC_LED;
 
 			gpio_val &= ~I40E_GLGEN_GPIO_CTL_PIN_FUNC_MASK;
-			gpio_val |= ((pin_func <<
-				     I40E_GLGEN_GPIO_CTL_PIN_FUNC_SHIFT) &
-				     I40E_GLGEN_GPIO_CTL_PIN_FUNC_MASK);
+			gpio_val |=
+				FIELD_PREP(I40E_GLGEN_GPIO_CTL_PIN_FUNC_MASK,
+					   pin_func);
 		}
 		gpio_val &= ~I40E_GLGEN_GPIO_CTL_LED_MODE_MASK;
 		/* this & is a bit of paranoia, but serves as a range check */
-		gpio_val |= ((mode << I40E_GLGEN_GPIO_CTL_LED_MODE_SHIFT) &
-			     I40E_GLGEN_GPIO_CTL_LED_MODE_MASK);
+		gpio_val |= FIELD_PREP(I40E_GLGEN_GPIO_CTL_LED_MODE_MASK,
+				       mode);
 
 		if (blink)
 			gpio_val |= BIT(I40E_GLGEN_GPIO_CTL_LED_BLINK_SHIFT);
@@ -3515,8 +3509,7 @@ int i40e_aq_get_lldp_mib(struct i40e_hw *hw, u8 bridge_type,
 	desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
 
 	cmd->type = mib_type & I40E_AQ_LLDP_MIB_TYPE_MASK;
-	cmd->type |= ((bridge_type << I40E_AQ_LLDP_BRIDGE_TYPE_SHIFT) &
-		       I40E_AQ_LLDP_BRIDGE_TYPE_MASK);
+	cmd->type |= FIELD_PREP(I40E_AQ_LLDP_BRIDGE_TYPE_MASK, bridge_type);
 
 	desc.datalen = cpu_to_le16(buff_size);
 
@@ -4234,30 +4227,25 @@ int i40e_set_filter_control(struct i40e_hw *hw,
 
 	/* Program required PE hash buckets for the PF */
 	val &= ~I40E_PFQF_CTL_0_PEHSIZE_MASK;
-	val |= ((u32)settings->pe_filt_num << I40E_PFQF_CTL_0_PEHSIZE_SHIFT) &
-		I40E_PFQF_CTL_0_PEHSIZE_MASK;
+	val |= FIELD_PREP(I40E_PFQF_CTL_0_PEHSIZE_MASK, settings->pe_filt_num);
 	/* Program required PE contexts for the PF */
 	val &= ~I40E_PFQF_CTL_0_PEDSIZE_MASK;
-	val |= ((u32)settings->pe_cntx_num << I40E_PFQF_CTL_0_PEDSIZE_SHIFT) &
-		I40E_PFQF_CTL_0_PEDSIZE_MASK;
+	val |= FIELD_PREP(I40E_PFQF_CTL_0_PEDSIZE_MASK, settings->pe_cntx_num);
 
 	/* Program required FCoE hash buckets for the PF */
 	val &= ~I40E_PFQF_CTL_0_PFFCHSIZE_MASK;
-	val |= ((u32)settings->fcoe_filt_num <<
-			I40E_PFQF_CTL_0_PFFCHSIZE_SHIFT) &
-		I40E_PFQF_CTL_0_PFFCHSIZE_MASK;
+	val |= FIELD_PREP(I40E_PFQF_CTL_0_PFFCHSIZE_MASK,
+			  settings->fcoe_filt_num);
 	/* Program required FCoE DDP contexts for the PF */
 	val &= ~I40E_PFQF_CTL_0_PFFCDSIZE_MASK;
-	val |= ((u32)settings->fcoe_cntx_num <<
-			I40E_PFQF_CTL_0_PFFCDSIZE_SHIFT) &
-		I40E_PFQF_CTL_0_PFFCDSIZE_MASK;
+	val |= FIELD_PREP(I40E_PFQF_CTL_0_PFFCDSIZE_MASK,
+			  settings->fcoe_cntx_num);
 
 	/* Program Hash LUT size for the PF */
 	val &= ~I40E_PFQF_CTL_0_HASHLUTSIZE_MASK;
 	if (settings->hash_lut_size == I40E_HASH_LUT_SIZE_512)
 		hash_lut_size = 1;
-	val |= (hash_lut_size << I40E_PFQF_CTL_0_HASHLUTSIZE_SHIFT) &
-		I40E_PFQF_CTL_0_HASHLUTSIZE_MASK;
+	val |= FIELD_PREP(I40E_PFQF_CTL_0_HASHLUTSIZE_MASK, hash_lut_size);
 
 	/* Enable FDIR, Ethertype and MACVLAN filters for PF and VFs */
 	if (settings->enable_fdir)
@@ -5319,16 +5307,17 @@ static void i40e_mdio_if_number_selection(struct i40e_hw *hw, bool set_mdio,
 					  u8 mdio_num,
 					  struct i40e_aqc_phy_register_access *cmd)
 {
-	if (set_mdio && cmd->phy_interface == I40E_AQ_PHY_REG_ACCESS_EXTERNAL) {
-		if (test_bit(I40E_HW_CAP_AQ_PHY_ACCESS_EXTENDED, hw->caps))
-			cmd->cmd_flags |=
-				I40E_AQ_PHY_REG_ACCESS_SET_MDIO_IF_NUMBER |
-				((mdio_num <<
-				I40E_AQ_PHY_REG_ACCESS_MDIO_IF_NUMBER_SHIFT) &
-				I40E_AQ_PHY_REG_ACCESS_MDIO_IF_NUMBER_MASK);
-		else
-			i40e_debug(hw, I40E_DEBUG_PHY,
-				   "MDIO I/F number selection not supported by current FW version.\n");
+	if (!set_mdio ||
+	    cmd->phy_interface != I40E_AQ_PHY_REG_ACCESS_EXTERNAL)
+		return;
+
+	if (test_bit(I40E_HW_CAP_AQ_PHY_ACCESS_EXTENDED, hw->caps)) {
+		cmd->cmd_flags |=
+			I40E_AQ_PHY_REG_ACCESS_SET_MDIO_IF_NUMBER |
+			FIELD_PREP(I40E_AQ_PHY_REG_ACCESS_MDIO_IF_NUMBER_MASK,
+				   mdio_num);
+	} else {
+		i40e_debug(hw, I40E_DEBUG_PHY, "MDIO I/F number selection not supported by current FW version.\n");
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index 0d334036ab8b..a0691b7c87c4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -1320,20 +1320,16 @@ void i40e_dcb_hw_rx_fifo_config(struct i40e_hw *hw,
 	u32 reg = rd32(hw, I40E_PRTDCB_RETSC);
 
 	reg &= ~I40E_PRTDCB_RETSC_ETS_MODE_MASK;
-	reg |= ((u32)ets_mode << I40E_PRTDCB_RETSC_ETS_MODE_SHIFT) &
-		I40E_PRTDCB_RETSC_ETS_MODE_MASK;
+	reg |= FIELD_PREP(I40E_PRTDCB_RETSC_ETS_MODE_MASK, ets_mode);
 
 	reg &= ~I40E_PRTDCB_RETSC_NON_ETS_MODE_MASK;
-	reg |= ((u32)non_ets_mode << I40E_PRTDCB_RETSC_NON_ETS_MODE_SHIFT) &
-		I40E_PRTDCB_RETSC_NON_ETS_MODE_MASK;
+	reg |= FIELD_PREP(I40E_PRTDCB_RETSC_NON_ETS_MODE_MASK, non_ets_mode);
 
 	reg &= ~I40E_PRTDCB_RETSC_ETS_MAX_EXP_MASK;
-	reg |= (max_exponent << I40E_PRTDCB_RETSC_ETS_MAX_EXP_SHIFT) &
-		I40E_PRTDCB_RETSC_ETS_MAX_EXP_MASK;
+	reg |= FIELD_PREP(I40E_PRTDCB_RETSC_ETS_MAX_EXP_MASK, max_exponent);
 
 	reg &= ~I40E_PRTDCB_RETSC_LLTC_MASK;
-	reg |= (lltc_map << I40E_PRTDCB_RETSC_LLTC_SHIFT) &
-		I40E_PRTDCB_RETSC_LLTC_MASK;
+	reg |= FIELD_PREP(I40E_PRTDCB_RETSC_LLTC_MASK, lltc_map);
 	wr32(hw, I40E_PRTDCB_RETSC, reg);
 }
 
@@ -1388,14 +1384,12 @@ void i40e_dcb_hw_rx_cmd_monitor_config(struct i40e_hw *hw,
 	 */
 	reg = rd32(hw, I40E_PRT_SWR_PM_THR);
 	reg &= ~I40E_PRT_SWR_PM_THR_THRESHOLD_MASK;
-	reg |= (threshold << I40E_PRT_SWR_PM_THR_THRESHOLD_SHIFT) &
-		I40E_PRT_SWR_PM_THR_THRESHOLD_MASK;
+	reg |= FIELD_PREP(I40E_PRT_SWR_PM_THR_THRESHOLD_MASK, threshold);
 	wr32(hw, I40E_PRT_SWR_PM_THR, reg);
 
 	reg = rd32(hw, I40E_PRTDCB_RPPMC);
 	reg &= ~I40E_PRTDCB_RPPMC_RX_FIFO_SIZE_MASK;
-	reg |= (fifo_size << I40E_PRTDCB_RPPMC_RX_FIFO_SIZE_SHIFT) &
-		I40E_PRTDCB_RPPMC_RX_FIFO_SIZE_MASK;
+	reg |= FIELD_PREP(I40E_PRTDCB_RPPMC_RX_FIFO_SIZE_MASK, fifo_size);
 	wr32(hw, I40E_PRTDCB_RPPMC, reg);
 }
 
@@ -1437,19 +1431,17 @@ void i40e_dcb_hw_pfc_config(struct i40e_hw *hw,
 		reg &= ~I40E_PRTDCB_MFLCN_RFCE_MASK;
 		reg &= ~I40E_PRTDCB_MFLCN_RPFCE_MASK;
 		if (pfc_en) {
-			reg |= BIT(I40E_PRTDCB_MFLCN_RPFCM_SHIFT) &
-				I40E_PRTDCB_MFLCN_RPFCM_MASK;
-			reg |= ((u32)pfc_en << I40E_PRTDCB_MFLCN_RPFCE_SHIFT) &
-				I40E_PRTDCB_MFLCN_RPFCE_MASK;
+			reg |= FIELD_PREP(I40E_PRTDCB_MFLCN_RPFCM_MASK, 1);
+			reg |= FIELD_PREP(I40E_PRTDCB_MFLCN_RPFCE_MASK,
+					  pfc_en);
 		}
 		wr32(hw, I40E_PRTDCB_MFLCN, reg);
 
 		reg = rd32(hw, I40E_PRTDCB_FCCFG);
 		reg &= ~I40E_PRTDCB_FCCFG_TFCE_MASK;
 		if (pfc_en)
-			reg |= (I40E_DCB_PFC_ENABLED <<
-				I40E_PRTDCB_FCCFG_TFCE_SHIFT) &
-				I40E_PRTDCB_FCCFG_TFCE_MASK;
+			reg |= FIELD_PREP(I40E_PRTDCB_FCCFG_TFCE_MASK,
+					  I40E_DCB_PFC_ENABLED);
 		wr32(hw, I40E_PRTDCB_FCCFG, reg);
 
 		/* FCTTV and FCRTV to be set by default */
@@ -1467,25 +1459,22 @@ void i40e_dcb_hw_pfc_config(struct i40e_hw *hw,
 
 		reg = rd32(hw, I40E_PRTMAC_HSEC_CTL_RX_PAUSE_ENABLE);
 		reg &= ~I40E_PRTMAC_HSEC_CTL_RX_PAUSE_ENABLE_MASK;
-		reg |= ((u32)pfc_en <<
-			   I40E_PRTMAC_HSEC_CTL_RX_PAUSE_ENABLE_SHIFT) &
-			I40E_PRTMAC_HSEC_CTL_RX_PAUSE_ENABLE_MASK;
+		reg |= FIELD_PREP(I40E_PRTMAC_HSEC_CTL_RX_PAUSE_ENABLE_MASK,
+				  pfc_en);
 		wr32(hw, I40E_PRTMAC_HSEC_CTL_RX_PAUSE_ENABLE, reg);
 
 		reg = rd32(hw, I40E_PRTMAC_HSEC_CTL_TX_PAUSE_ENABLE);
 		reg &= ~I40E_PRTMAC_HSEC_CTL_TX_PAUSE_ENABLE_MASK;
-		reg |= ((u32)pfc_en <<
-			   I40E_PRTMAC_HSEC_CTL_TX_PAUSE_ENABLE_SHIFT) &
-			I40E_PRTMAC_HSEC_CTL_TX_PAUSE_ENABLE_MASK;
+		reg |= FIELD_PREP(I40E_PRTMAC_HSEC_CTL_TX_PAUSE_ENABLE_MASK,
+				  pfc_en);
 		wr32(hw, I40E_PRTMAC_HSEC_CTL_TX_PAUSE_ENABLE, reg);
 
 		for (i = 0; i < I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_MAX_INDEX; i++) {
 			reg = rd32(hw, I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER(i));
 			reg &= ~I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_MASK;
 			if (pfc_en) {
-				reg |= ((u32)refresh_time <<
-					I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_SHIFT) &
-					I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_MASK;
+				reg |= FIELD_PREP(I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_MASK,
+						  refresh_time);
 			}
 			wr32(hw, I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER(i), reg);
 		}
@@ -1497,14 +1486,12 @@ void i40e_dcb_hw_pfc_config(struct i40e_hw *hw,
 
 	reg = rd32(hw, I40E_PRTDCB_TC2PFC);
 	reg &= ~I40E_PRTDCB_TC2PFC_TC2PFC_MASK;
-	reg |= ((u32)tc2pfc << I40E_PRTDCB_TC2PFC_TC2PFC_SHIFT) &
-		I40E_PRTDCB_TC2PFC_TC2PFC_MASK;
+	reg |= FIELD_PREP(I40E_PRTDCB_TC2PFC_TC2PFC_MASK, tc2pfc);
 	wr32(hw, I40E_PRTDCB_TC2PFC, reg);
 
 	reg = rd32(hw, I40E_PRTDCB_RUP);
 	reg &= ~I40E_PRTDCB_RUP_NOVLANUP_MASK;
-	reg |= ((u32)first_pfc_prio << I40E_PRTDCB_RUP_NOVLANUP_SHIFT) &
-		 I40E_PRTDCB_RUP_NOVLANUP_MASK;
+	reg |= FIELD_PREP(I40E_PRTDCB_RUP_NOVLANUP_MASK, first_pfc_prio);
 	wr32(hw, I40E_PRTDCB_RUP, reg);
 
 	reg = rd32(hw, I40E_PRTDCB_TDPMC);
@@ -1536,8 +1523,7 @@ void i40e_dcb_hw_set_num_tc(struct i40e_hw *hw, u8 num_tc)
 	u32 reg = rd32(hw, I40E_PRTDCB_GENC);
 
 	reg &= ~I40E_PRTDCB_GENC_NUMTC_MASK;
-	reg |= ((u32)num_tc << I40E_PRTDCB_GENC_NUMTC_SHIFT) &
-		I40E_PRTDCB_GENC_NUMTC_MASK;
+	reg |= FIELD_PREP(I40E_PRTDCB_GENC_NUMTC_MASK, num_tc);
 	wr32(hw, I40E_PRTDCB_GENC, reg);
 }
 
@@ -1576,12 +1562,12 @@ void i40e_dcb_hw_rx_ets_bw_config(struct i40e_hw *hw, u8 *bw_share,
 		reg &= ~(I40E_PRTDCB_RETSTCC_BWSHARE_MASK     |
 			 I40E_PRTDCB_RETSTCC_UPINTC_MODE_MASK |
 			 I40E_PRTDCB_RETSTCC_ETSTC_SHIFT);
-		reg |= ((u32)bw_share[i] << I40E_PRTDCB_RETSTCC_BWSHARE_SHIFT) &
-			 I40E_PRTDCB_RETSTCC_BWSHARE_MASK;
-		reg |= ((u32)mode[i] << I40E_PRTDCB_RETSTCC_UPINTC_MODE_SHIFT) &
-			 I40E_PRTDCB_RETSTCC_UPINTC_MODE_MASK;
-		reg |= ((u32)prio_type[i] << I40E_PRTDCB_RETSTCC_ETSTC_SHIFT) &
-			 I40E_PRTDCB_RETSTCC_ETSTC_MASK;
+		reg |= FIELD_PREP(I40E_PRTDCB_RETSTCC_BWSHARE_MASK,
+				  bw_share[i]);
+		reg |= FIELD_PREP(I40E_PRTDCB_RETSTCC_UPINTC_MODE_MASK,
+				  mode[i]);
+		reg |= FIELD_PREP(I40E_PRTDCB_RETSTCC_ETSTC_MASK,
+				  prio_type[i]);
 		wr32(hw, I40E_PRTDCB_RETSTCC(i), reg);
 	}
 }
@@ -1721,8 +1707,7 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 	if (new_val < old_val) {
 		reg = rd32(hw, I40E_PRTRPB_SLW);
 		reg &= ~I40E_PRTRPB_SLW_SLW_MASK;
-		reg |= (new_val << I40E_PRTRPB_SLW_SLW_SHIFT) &
-			I40E_PRTRPB_SLW_SLW_MASK;
+		reg |= FIELD_PREP(I40E_PRTRPB_SLW_SLW_MASK, new_val);
 		wr32(hw, I40E_PRTRPB_SLW, reg);
 	}
 
@@ -1735,8 +1720,8 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 		if (new_val < old_val) {
 			reg = rd32(hw, I40E_PRTRPB_SLT(i));
 			reg &= ~I40E_PRTRPB_SLT_SLT_TCN_MASK;
-			reg |= (new_val << I40E_PRTRPB_SLT_SLT_TCN_SHIFT) &
-				I40E_PRTRPB_SLT_SLT_TCN_MASK;
+			reg |= FIELD_PREP(I40E_PRTRPB_SLT_SLT_TCN_MASK,
+					  new_val);
 			wr32(hw, I40E_PRTRPB_SLT(i), reg);
 		}
 
@@ -1745,8 +1730,8 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 		if (new_val < old_val) {
 			reg = rd32(hw, I40E_PRTRPB_DLW(i));
 			reg &= ~I40E_PRTRPB_DLW_DLW_TCN_MASK;
-			reg |= (new_val << I40E_PRTRPB_DLW_DLW_TCN_SHIFT) &
-				I40E_PRTRPB_DLW_DLW_TCN_MASK;
+			reg |= FIELD_PREP(I40E_PRTRPB_DLW_DLW_TCN_MASK,
+					  new_val);
 			wr32(hw, I40E_PRTRPB_DLW(i), reg);
 		}
 	}
@@ -1757,8 +1742,7 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 	if (new_val < old_val) {
 		reg = rd32(hw, I40E_PRTRPB_SHW);
 		reg &= ~I40E_PRTRPB_SHW_SHW_MASK;
-		reg |= (new_val << I40E_PRTRPB_SHW_SHW_SHIFT) &
-			I40E_PRTRPB_SHW_SHW_MASK;
+		reg |= FIELD_PREP(I40E_PRTRPB_SHW_SHW_MASK, new_val);
 		wr32(hw, I40E_PRTRPB_SHW, reg);
 	}
 
@@ -1771,8 +1755,8 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 		if (new_val < old_val) {
 			reg = rd32(hw, I40E_PRTRPB_SHT(i));
 			reg &= ~I40E_PRTRPB_SHT_SHT_TCN_MASK;
-			reg |= (new_val << I40E_PRTRPB_SHT_SHT_TCN_SHIFT) &
-				I40E_PRTRPB_SHT_SHT_TCN_MASK;
+			reg |= FIELD_PREP(I40E_PRTRPB_SHT_SHT_TCN_MASK,
+					  new_val);
 			wr32(hw, I40E_PRTRPB_SHT(i), reg);
 		}
 
@@ -1781,8 +1765,8 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 		if (new_val < old_val) {
 			reg = rd32(hw, I40E_PRTRPB_DHW(i));
 			reg &= ~I40E_PRTRPB_DHW_DHW_TCN_MASK;
-			reg |= (new_val << I40E_PRTRPB_DHW_DHW_TCN_SHIFT) &
-				I40E_PRTRPB_DHW_DHW_TCN_MASK;
+			reg |= FIELD_PREP(I40E_PRTRPB_DHW_DHW_TCN_MASK,
+					  new_val);
 			wr32(hw, I40E_PRTRPB_DHW(i), reg);
 		}
 	}
@@ -1792,8 +1776,7 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 		new_val = new_pb_cfg->tc_pool_size[i];
 		reg = rd32(hw, I40E_PRTRPB_DPS(i));
 		reg &= ~I40E_PRTRPB_DPS_DPS_TCN_MASK;
-		reg |= (new_val << I40E_PRTRPB_DPS_DPS_TCN_SHIFT) &
-			I40E_PRTRPB_DPS_DPS_TCN_MASK;
+		reg |= FIELD_PREP(I40E_PRTRPB_DPS_DPS_TCN_MASK, new_val);
 		wr32(hw, I40E_PRTRPB_DPS(i), reg);
 	}
 
@@ -1801,8 +1784,7 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 	new_val = new_pb_cfg->shared_pool_size;
 	reg = rd32(hw, I40E_PRTRPB_SPS);
 	reg &= ~I40E_PRTRPB_SPS_SPS_MASK;
-	reg |= (new_val << I40E_PRTRPB_SPS_SPS_SHIFT) &
-		I40E_PRTRPB_SPS_SPS_MASK;
+	reg |= FIELD_PREP(I40E_PRTRPB_SPS_SPS_MASK, new_val);
 	wr32(hw, I40E_PRTRPB_SPS, reg);
 
 	/* Program the shared pool low water mark per port if increasing */
@@ -1811,8 +1793,7 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 	if (new_val > old_val) {
 		reg = rd32(hw, I40E_PRTRPB_SLW);
 		reg &= ~I40E_PRTRPB_SLW_SLW_MASK;
-		reg |= (new_val << I40E_PRTRPB_SLW_SLW_SHIFT) &
-			I40E_PRTRPB_SLW_SLW_MASK;
+		reg |= FIELD_PREP(I40E_PRTRPB_SLW_SLW_MASK, new_val);
 		wr32(hw, I40E_PRTRPB_SLW, reg);
 	}
 
@@ -1825,8 +1806,8 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 		if (new_val > old_val) {
 			reg = rd32(hw, I40E_PRTRPB_SLT(i));
 			reg &= ~I40E_PRTRPB_SLT_SLT_TCN_MASK;
-			reg |= (new_val << I40E_PRTRPB_SLT_SLT_TCN_SHIFT) &
-				I40E_PRTRPB_SLT_SLT_TCN_MASK;
+			reg |= FIELD_PREP(I40E_PRTRPB_SLT_SLT_TCN_MASK,
+					  new_val);
 			wr32(hw, I40E_PRTRPB_SLT(i), reg);
 		}
 
@@ -1835,8 +1816,8 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 		if (new_val > old_val) {
 			reg = rd32(hw, I40E_PRTRPB_DLW(i));
 			reg &= ~I40E_PRTRPB_DLW_DLW_TCN_MASK;
-			reg |= (new_val << I40E_PRTRPB_DLW_DLW_TCN_SHIFT) &
-				I40E_PRTRPB_DLW_DLW_TCN_MASK;
+			reg |= FIELD_PREP(I40E_PRTRPB_DLW_DLW_TCN_MASK,
+					  new_val);
 			wr32(hw, I40E_PRTRPB_DLW(i), reg);
 		}
 	}
@@ -1847,8 +1828,7 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 	if (new_val > old_val) {
 		reg = rd32(hw, I40E_PRTRPB_SHW);
 		reg &= ~I40E_PRTRPB_SHW_SHW_MASK;
-		reg |= (new_val << I40E_PRTRPB_SHW_SHW_SHIFT) &
-			I40E_PRTRPB_SHW_SHW_MASK;
+		reg |= FIELD_PREP(I40E_PRTRPB_SHW_SHW_MASK, new_val);
 		wr32(hw, I40E_PRTRPB_SHW, reg);
 	}
 
@@ -1861,8 +1841,8 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 		if (new_val > old_val) {
 			reg = rd32(hw, I40E_PRTRPB_SHT(i));
 			reg &= ~I40E_PRTRPB_SHT_SHT_TCN_MASK;
-			reg |= (new_val << I40E_PRTRPB_SHT_SHT_TCN_SHIFT) &
-				I40E_PRTRPB_SHT_SHT_TCN_MASK;
+			reg |= FIELD_PREP(I40E_PRTRPB_SHT_SHT_TCN_MASK,
+					  new_val);
 			wr32(hw, I40E_PRTRPB_SHT(i), reg);
 		}
 
@@ -1871,8 +1851,8 @@ void i40e_dcb_hw_rx_pb_config(struct i40e_hw *hw,
 		if (new_val > old_val) {
 			reg = rd32(hw, I40E_PRTRPB_DHW(i));
 			reg &= ~I40E_PRTRPB_DHW_DHW_TCN_MASK;
-			reg |= (new_val << I40E_PRTRPB_DHW_DHW_TCN_SHIFT) &
-				I40E_PRTRPB_DHW_DHW_TCN_MASK;
+			reg |= FIELD_PREP(I40E_PRTRPB_DHW_DHW_TCN_MASK,
+					  new_val);
 			wr32(hw, I40E_PRTRPB_DHW(i), reg);
 		}
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 51ee870ffa36..0dfe472747c6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3536,21 +3536,19 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
 		else
 			return -EINVAL;
 
-		qtx_ctl |= (ring->ch->vsi_number <<
-			    I40E_QTX_CTL_VFVM_INDX_SHIFT) &
-			    I40E_QTX_CTL_VFVM_INDX_MASK;
+		qtx_ctl |= FIELD_PREP(I40E_QTX_CTL_VFVM_INDX_MASK,
+				      ring->ch->vsi_number);
 	} else {
 		if (vsi->type == I40E_VSI_VMDQ2) {
 			qtx_ctl = I40E_QTX_CTL_VM_QUEUE;
-			qtx_ctl |= ((vsi->id) << I40E_QTX_CTL_VFVM_INDX_SHIFT) &
-				    I40E_QTX_CTL_VFVM_INDX_MASK;
+			qtx_ctl |= FIELD_PREP(I40E_QTX_CTL_VFVM_INDX_MASK,
+					      vsi->id);
 		} else {
 			qtx_ctl = I40E_QTX_CTL_PF_QUEUE;
 		}
 	}
 
-	qtx_ctl |= ((hw->pf_id << I40E_QTX_CTL_PF_INDX_SHIFT) &
-		    I40E_QTX_CTL_PF_INDX_MASK);
+	qtx_ctl |= FIELD_PREP(I40E_QTX_CTL_PF_INDX_MASK, hw->pf_id);
 	wr32(hw, I40E_QTX_CTL(pf_q), qtx_ctl);
 	i40e_flush(hw);
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index b82df5bdfac0..b0df3dde1386 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -33,19 +33,16 @@ static void i40e_fdir(struct i40e_ring *tx_ring,
 	i++;
 	tx_ring->next_to_use = (i < tx_ring->count) ? i : 0;
 
-	flex_ptype = I40E_TXD_FLTR_QW0_QINDEX_MASK &
-		     (fdata->q_index << I40E_TXD_FLTR_QW0_QINDEX_SHIFT);
+	flex_ptype = FIELD_PREP(I40E_TXD_FLTR_QW0_QINDEX_MASK, fdata->q_index);
 
-	flex_ptype |= I40E_TXD_FLTR_QW0_FLEXOFF_MASK &
-		      (fdata->flex_off << I40E_TXD_FLTR_QW0_FLEXOFF_SHIFT);
+	flex_ptype |= FIELD_PREP(I40E_TXD_FLTR_QW0_FLEXOFF_MASK,
+				 fdata->flex_off);
 
-	flex_ptype |= I40E_TXD_FLTR_QW0_PCTYPE_MASK &
-		      (fdata->pctype << I40E_TXD_FLTR_QW0_PCTYPE_SHIFT);
+	flex_ptype |= FIELD_PREP(I40E_TXD_FLTR_QW0_PCTYPE_MASK, fdata->pctype);
 
 	/* Use LAN VSI Id if not programmed by user */
-	flex_ptype |= I40E_TXD_FLTR_QW0_DEST_VSI_MASK &
-		      ((u32)(fdata->dest_vsi ? : pf->vsi[pf->lan_vsi]->id) <<
-		       I40E_TXD_FLTR_QW0_DEST_VSI_SHIFT);
+	flex_ptype |= FIELD_PREP(I40E_TXD_FLTR_QW0_DEST_VSI_MASK,
+				 fdata->dest_vsi ? : pf->vsi[pf->lan_vsi]->id);
 
 	dtype_cmd = I40E_TX_DESC_DTYPE_FILTER_PROG;
 
@@ -55,17 +52,15 @@ static void i40e_fdir(struct i40e_ring *tx_ring,
 		     I40E_FILTER_PROGRAM_DESC_PCMD_REMOVE <<
 		     I40E_TXD_FLTR_QW1_PCMD_SHIFT;
 
-	dtype_cmd |= I40E_TXD_FLTR_QW1_DEST_MASK &
-		     (fdata->dest_ctl << I40E_TXD_FLTR_QW1_DEST_SHIFT);
+	dtype_cmd |= FIELD_PREP(I40E_TXD_FLTR_QW1_DEST_MASK, fdata->dest_ctl);
 
-	dtype_cmd |= I40E_TXD_FLTR_QW1_FD_STATUS_MASK &
-		     (fdata->fd_status << I40E_TXD_FLTR_QW1_FD_STATUS_SHIFT);
+	dtype_cmd |= FIELD_PREP(I40E_TXD_FLTR_QW1_FD_STATUS_MASK,
+				fdata->fd_status);
 
 	if (fdata->cnt_index) {
 		dtype_cmd |= I40E_TXD_FLTR_QW1_CNT_ENA_MASK;
-		dtype_cmd |= I40E_TXD_FLTR_QW1_CNTINDEX_MASK &
-			     ((u32)fdata->cnt_index <<
-			      I40E_TXD_FLTR_QW1_CNTINDEX_SHIFT);
+		dtype_cmd |= FIELD_PREP(I40E_TXD_FLTR_QW1_CNTINDEX_MASK,
+					fdata->cnt_index);
 	}
 
 	fdir_desc->qindex_flex_ptype_vsi = cpu_to_le32(flex_ptype);
@@ -2959,8 +2954,8 @@ static void i40e_atr(struct i40e_ring *tx_ring, struct sk_buff *skb,
 	i++;
 	tx_ring->next_to_use = (i < tx_ring->count) ? i : 0;
 
-	flex_ptype = (tx_ring->queue_index << I40E_TXD_FLTR_QW0_QINDEX_SHIFT) &
-		      I40E_TXD_FLTR_QW0_QINDEX_MASK;
+	flex_ptype = FIELD_PREP(I40E_TXD_FLTR_QW0_QINDEX_MASK,
+				tx_ring->queue_index);
 	flex_ptype |= (tx_flags & I40E_TX_FLAGS_IPV4) ?
 		      (I40E_FILTER_PCTYPE_NONF_IPV4_TCP <<
 		       I40E_TXD_FLTR_QW0_PCTYPE_SHIFT) :
@@ -2986,14 +2981,12 @@ static void i40e_atr(struct i40e_ring *tx_ring, struct sk_buff *skb,
 	dtype_cmd |= I40E_TXD_FLTR_QW1_CNT_ENA_MASK;
 	if (!(tx_flags & I40E_TX_FLAGS_UDP_TUNNEL))
 		dtype_cmd |=
-			((u32)I40E_FD_ATR_STAT_IDX(pf->hw.pf_id) <<
-			I40E_TXD_FLTR_QW1_CNTINDEX_SHIFT) &
-			I40E_TXD_FLTR_QW1_CNTINDEX_MASK;
+			FIELD_PREP(I40E_TXD_FLTR_QW1_CNTINDEX_MASK,
+				   I40E_FD_ATR_STAT_IDX(pf->hw.pf_id));
 	else
 		dtype_cmd |=
-			((u32)I40E_FD_ATR_TUNNEL_STAT_IDX(pf->hw.pf_id) <<
-			I40E_TXD_FLTR_QW1_CNTINDEX_SHIFT) &
-			I40E_TXD_FLTR_QW1_CNTINDEX_MASK;
+			FIELD_PREP(I40E_TXD_FLTR_QW1_CNTINDEX_MASK,
+				   I40E_FD_ATR_TUNNEL_STAT_IDX(pf->hw.pf_id));
 
 	if (test_bit(I40E_FLAG_HW_ATR_EVICT_ENA, pf->flags))
 		dtype_cmd |= I40E_TXD_FLTR_QW1_ATR_MASK;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 37cca484abb8..5a45c53e6770 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -659,11 +659,9 @@ static int i40e_config_vsi_tx_queue(struct i40e_vf *vf, u16 vsi_id,
 
 	/* associate this queue with the PCI VF function */
 	qtx_ctl = I40E_QTX_CTL_VF_QUEUE;
-	qtx_ctl |= ((hw->pf_id << I40E_QTX_CTL_PF_INDX_SHIFT)
-		    & I40E_QTX_CTL_PF_INDX_MASK);
-	qtx_ctl |= (((vf->vf_id + hw->func_caps.vf_base_id)
-		     << I40E_QTX_CTL_VFVM_INDX_SHIFT)
-		    & I40E_QTX_CTL_VFVM_INDX_MASK);
+	qtx_ctl |= FIELD_PREP(I40E_QTX_CTL_PF_INDX_MASK, hw->pf_id);
+	qtx_ctl |= FIELD_PREP(I40E_QTX_CTL_VFVM_INDX_MASK,
+			      vf->vf_id + hw->func_caps.vf_base_id);
 	wr32(hw, I40E_QTX_CTL(pf_queue_id), qtx_ctl);
 	i40e_flush(hw);
 
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

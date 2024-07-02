Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD51923F4E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 15:45:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 845FE81E58;
	Tue,  2 Jul 2024 13:45:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sxs_Ohh2SFgf; Tue,  2 Jul 2024 13:45:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92FB681BC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719927910;
	bh=0dr390ub/fRRMP/a0pPjfSptBR1PXsqWBDNrfiU6ZNM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oSMYI7TMM1CpEJohLp8uHp/md2+K26PfsJwC8rS3fQUetc3Qv/1jZCJ9v1EPdKWZU
	 d3DDZdKjx6NO9NiPkkg3Csda+UbUUmbYIC7cyD9cCGIrm/t9PWN7QJcgS+EPk1x+O0
	 bybiNHB3yqweKy2MHGagkDUilnT2NHTclHnjLy4mr3laPdgVx/ytfZeLF68yYZ3Dh5
	 K1Kf19KET3uEJ3tPliN1oFVwqKCn1Vy0b3IhH21rElU6RVLCV/Fp0gMLlY6LJgXFxx
	 WKeZYn2P2+vRB9H91zBSw+HZqsOUmh0+qycWe9rthahAYF8zaefeWY2sTEMyTN0ido
	 CMm3xIs1pZhiw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92FB681BC0;
	Tue,  2 Jul 2024 13:45:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF4831BF313
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 13:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB615410E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 13:45:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vJBmh-zFv62I for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 13:45:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7C87F410E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C87F410E4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C87F410E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 13:45:03 +0000 (UTC)
X-CSE-ConnectionGUID: /mUujY1oSN6EM+ltGcy5/g==
X-CSE-MsgGUID: bnOudaURTD+PymKW7g8uNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="16826413"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="16826413"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 06:45:03 -0700
X-CSE-ConnectionGUID: jrhg7T+OQBuZzVYolNPf4Q==
X-CSE-MsgGUID: Flsl7d/aRQWDjgmPRHePTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="83460537"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by orviesa001.jf.intel.com with ESMTP; 02 Jul 2024 06:45:01 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2024 15:41:32 +0200
Message-ID: <20240702134448.132374-12-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240702134448.132374-9-karol.kolacinski@intel.com>
References: <20240702134448.132374-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719927903; x=1751463903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YA0oPsE119IIkMJUVxvXaGmH7u+9CAMmLUnnzRjy9So=;
 b=G8sOvsbVVx10cKUiwHa0V9X3lQrF9OJ+2sCF6u9ZDnnvMxT7V+S5/Noi
 eunLbeVZSiwjcV51QDid+fqZN2WFUmTr5Zy3SkYJ/PcEkzdDLPC4Y5Oxq
 CuOk59lasXS2jYo79hFTpAamLaaeLB3Pf5CybgAUQun7iAvvz8drH4t4L
 HCc5bLvGy8AOGn8mP0dWmb/7MzXoRNtNBbhslVlX5P4stU5O2/HM7Glbc
 auJvwuTll2QrHvqybb7icsLTMXZ2NMac1mqILUw5fLWxr2Z9xo/m4Frd5
 FFN/prrP9O0uFnSaYnewk4g74TJ/oKaXdR4H9Nx2y3koBMmAF4ObTTrzu
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G8sOvsbV
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 3/7] ice: Align E810T GPIO to
 other products
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

Instead of having separate PTP GPIO implementation for E810T, use
existing one from all other products.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V1 -> V2: restored blank line and moved enable and verify assignment

 drivers/net/ethernet/intel/ice/ice_gnss.c   |   4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 464 +++++---------------
 drivers/net/ethernet/intel/ice/ice_ptp.h    |  29 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  20 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  43 +-
 5 files changed, 155 insertions(+), 405 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index c8ea1af51ad3..f02e8ca55375 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -397,8 +397,8 @@ bool ice_gnss_is_gps_present(struct ice_hw *hw)
 		int err;
 		u8 data;
 
-		err = ice_read_pca9575_reg_e810t(hw, ICE_PCA9575_P0_IN, &data);
-		if (err || !!(data & ICE_E810T_P0_GNSS_PRSNT_N))
+		err = ice_read_pca9575_reg(hw, ICE_PCA9575_P0_IN, &data);
+		if (err || !!(data & ICE_P0_GNSS_PRSNT_N))
 			return false;
 	} else {
 		return false;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 392b0d2fa61f..df0ae9faf948 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -39,15 +39,21 @@ static const struct ice_ptp_pin_desc ice_pin_desc_e810[] = {
 	{  ONE_PPS,   { 5, -1 }},
 };
 
-#define E810_OUT_PROP_DELAY_NS 1
-
-static const struct ptp_pin_desc ice_pin_desc_e810t[] = {
-	/* name    idx   func         chan */
-	{ "GNSS",  GNSS, PTP_PF_EXTTS, 0, { 0, } },
-	{ "SMA1",  SMA1, PTP_PF_NONE, 1, { 0, } },
-	{ "U.FL1", UFL1, PTP_PF_NONE, 1, { 0, } },
-	{ "SMA2",  SMA2, PTP_PF_NONE, 2, { 0, } },
-	{ "U.FL2", UFL2, PTP_PF_NONE, 2, { 0, } },
+static const char ice_pin_names_e810t[][64] = {
+	"GNSS",
+	"SMA1",
+	"U.FL1",
+	"SMA2",
+	"U.FL2",
+};
+
+static const struct ice_ptp_pin_desc ice_pin_desc_e810t[] = {
+	/* name, gpio */
+	{  GNSS, { -1,  1 }},
+	{  SMA1, {  0,  1 }},
+	{  UFL1, {  0, -1 }},
+	{  SMA2, {  2,  3 }},
+	{  UFL2, { -1,  3 }},
 };
 
 /**
@@ -74,240 +80,98 @@ static int ice_ptp_find_pin_idx(struct ice_pf *pf, enum ptp_pin_function func,
 }
 
 /**
- * ice_get_sma_config_e810t
- * @hw: pointer to the hw struct
- * @ptp_pins: pointer to the ptp_pin_desc struture
- *
- * Read the configuration of the SMA control logic and put it into the
- * ptp_pin_desc structure
+ * ice_ptp_update_sma_data - update SMA pins data according to pins setup
+ * @pf: Board private structure
+ * @sma_pins: parsed SMA pins status
+ * @data: SMA data to update
  */
-static int
-ice_get_sma_config_e810t(struct ice_hw *hw, struct ptp_pin_desc *ptp_pins)
+static void ice_ptp_update_sma_data(struct ice_pf *pf, uint sma_pins[],
+				    u8 *data)
 {
-	u8 data, i;
-	int status;
+	const char *state1, *state2;
 
-	/* Read initial pin state */
-	status = ice_read_sma_ctrl_e810t(hw, &data);
-	if (status)
-		return status;
-
-	/* initialize with defaults */
-	for (i = 0; i < NUM_PTP_PINS_E810T; i++) {
-		strscpy(ptp_pins[i].name, ice_pin_desc_e810t[i].name,
-			sizeof(ptp_pins[i].name));
-		ptp_pins[i].index = ice_pin_desc_e810t[i].index;
-		ptp_pins[i].func = ice_pin_desc_e810t[i].func;
-		ptp_pins[i].chan = ice_pin_desc_e810t[i].chan;
-	}
-
-	/* Parse SMA1/UFL1 */
-	switch (data & ICE_SMA1_MASK_E810T) {
-	case ICE_SMA1_MASK_E810T:
-	default:
-		ptp_pins[SMA1].func = PTP_PF_NONE;
-		ptp_pins[UFL1].func = PTP_PF_NONE;
-		break;
-	case ICE_SMA1_DIR_EN_E810T:
-		ptp_pins[SMA1].func = PTP_PF_PEROUT;
-		ptp_pins[UFL1].func = PTP_PF_NONE;
-		break;
-	case ICE_SMA1_TX_EN_E810T:
-		ptp_pins[SMA1].func = PTP_PF_EXTTS;
-		ptp_pins[UFL1].func = PTP_PF_NONE;
-		break;
-	case 0:
-		ptp_pins[SMA1].func = PTP_PF_EXTTS;
-		ptp_pins[UFL1].func = PTP_PF_PEROUT;
-		break;
+	/* Set the right state based on the desired configuration.
+	 * When bit is set, functionality is disabled.
+	 */
+	*data &= ~ICE_ALL_SMA_MASK;
+	if (!sma_pins[UFL1 - 1]) {
+		if (sma_pins[SMA1 - 1] == PTP_PF_EXTTS) {
+			state1 = "SMA1 Rx, U.FL1 disabled";
+			*data |= ICE_SMA1_TX_EN;
+		} else if (sma_pins[SMA1 - 1] == PTP_PF_PEROUT) {
+			state1 = "SMA1 Tx U.FL1 disabled";
+			*data |= ICE_SMA1_DIR_EN;
+		} else {
+			state1 = "SMA1 disabled, U.FL1 disabled";
+			*data |= ICE_SMA1_MASK;
+		}
+	} else {
+		/* U.FL1 Tx will always enable SMA1 Rx */
+		state1 = "SMA1 Rx, U.FL1 Tx";
 	}
 
-	/* Parse SMA2/UFL2 */
-	switch (data & ICE_SMA2_MASK_E810T) {
-	case ICE_SMA2_MASK_E810T:
-	default:
-		ptp_pins[SMA2].func = PTP_PF_NONE;
-		ptp_pins[UFL2].func = PTP_PF_NONE;
-		break;
-	case (ICE_SMA2_TX_EN_E810T | ICE_SMA2_UFL2_RX_DIS_E810T):
-		ptp_pins[SMA2].func = PTP_PF_EXTTS;
-		ptp_pins[UFL2].func = PTP_PF_NONE;
-		break;
-	case (ICE_SMA2_DIR_EN_E810T | ICE_SMA2_UFL2_RX_DIS_E810T):
-		ptp_pins[SMA2].func = PTP_PF_PEROUT;
-		ptp_pins[UFL2].func = PTP_PF_NONE;
-		break;
-	case (ICE_SMA2_DIR_EN_E810T | ICE_SMA2_TX_EN_E810T):
-		ptp_pins[SMA2].func = PTP_PF_NONE;
-		ptp_pins[UFL2].func = PTP_PF_EXTTS;
-		break;
-	case ICE_SMA2_DIR_EN_E810T:
-		ptp_pins[SMA2].func = PTP_PF_PEROUT;
-		ptp_pins[UFL2].func = PTP_PF_EXTTS;
-		break;
+	if (!sma_pins[UFL2 - 1]) {
+		if (sma_pins[SMA2 - 1] == PTP_PF_EXTTS) {
+			state2 = "SMA2 Rx, U.FL2 disabled";
+			*data |= ICE_SMA2_TX_EN | ICE_SMA2_UFL2_RX_DIS;
+		} else if (sma_pins[SMA2 - 1] == PTP_PF_PEROUT) {
+			state2 = "SMA2 Tx, U.FL2 disabled";
+			*data |= ICE_SMA2_DIR_EN | ICE_SMA2_UFL2_RX_DIS;
+		} else {
+			state2 = "SMA2 disabled, U.FL2 disabled";
+			*data |= ICE_SMA2_MASK;
+		}
+	} else {
+		if (!sma_pins[SMA2 - 1]) {
+			state2 = "SMA2 disabled, U.FL2 Rx";
+			*data |= ICE_SMA2_DIR_EN | ICE_SMA2_TX_EN;
+		} else {
+			state2 = "SMA2 Tx, U.FL2 Rx";
+			*data |= ICE_SMA2_DIR_EN;
+		}
 	}
 
-	return 0;
+	dev_dbg(ice_pf_to_dev(pf), "%s, %s\n", state1, state2);
 }
 
 /**
- * ice_ptp_set_sma_config_e810t
- * @hw: pointer to the hw struct
- * @ptp_pins: pointer to the ptp_pin_desc struture
+ * ice_ptp_set_sma_cfg - set the configuration of the SMA control logic
+ * @pf: Board private structure
  *
- * Set the configuration of the SMA control logic based on the configuration in
- * num_pins parameter
+ * Return: 0 on success, negative error code otherwise
  */
-static int
-ice_ptp_set_sma_config_e810t(struct ice_hw *hw,
-			     const struct ptp_pin_desc *ptp_pins)
+static int ice_ptp_set_sma_cfg(struct ice_pf *pf)
 {
-	int status;
+	const struct ice_ptp_pin_desc *ice_pins = pf->ptp.ice_pin_desc;
+	struct ptp_pin_desc *pins = pf->ptp.pin_desc;
+	uint sma_pins[ICE_SMA_PINS_NUM] = {};
+	int err;
 	u8 data;
 
-	/* SMA1 and UFL1 cannot be set to TX at the same time */
-	if (ptp_pins[SMA1].func == PTP_PF_PEROUT &&
-	    ptp_pins[UFL1].func == PTP_PF_PEROUT)
-		return -EINVAL;
-
-	/* SMA2 and UFL2 cannot be set to RX at the same time */
-	if (ptp_pins[SMA2].func == PTP_PF_EXTTS &&
-	    ptp_pins[UFL2].func == PTP_PF_EXTTS)
-		return -EINVAL;
-
 	/* Read initial pin state value */
-	status = ice_read_sma_ctrl_e810t(hw, &data);
-	if (status)
-		return status;
-
-	/* Set the right sate based on the desired configuration */
-	data &= ~ICE_SMA1_MASK_E810T;
-	if (ptp_pins[SMA1].func == PTP_PF_NONE &&
-	    ptp_pins[UFL1].func == PTP_PF_NONE) {
-		dev_info(ice_hw_to_dev(hw), "SMA1 + U.FL1 disabled");
-		data |= ICE_SMA1_MASK_E810T;
-	} else if (ptp_pins[SMA1].func == PTP_PF_EXTTS &&
-		   ptp_pins[UFL1].func == PTP_PF_NONE) {
-		dev_info(ice_hw_to_dev(hw), "SMA1 RX");
-		data |= ICE_SMA1_TX_EN_E810T;
-	} else if (ptp_pins[SMA1].func == PTP_PF_NONE &&
-		   ptp_pins[UFL1].func == PTP_PF_PEROUT) {
-		/* U.FL 1 TX will always enable SMA 1 RX */
-		dev_info(ice_hw_to_dev(hw), "SMA1 RX + U.FL1 TX");
-	} else if (ptp_pins[SMA1].func == PTP_PF_EXTTS &&
-		   ptp_pins[UFL1].func == PTP_PF_PEROUT) {
-		dev_info(ice_hw_to_dev(hw), "SMA1 RX + U.FL1 TX");
-	} else if (ptp_pins[SMA1].func == PTP_PF_PEROUT &&
-		   ptp_pins[UFL1].func == PTP_PF_NONE) {
-		dev_info(ice_hw_to_dev(hw), "SMA1 TX");
-		data |= ICE_SMA1_DIR_EN_E810T;
-	}
-
-	data &= ~ICE_SMA2_MASK_E810T;
-	if (ptp_pins[SMA2].func == PTP_PF_NONE &&
-	    ptp_pins[UFL2].func == PTP_PF_NONE) {
-		dev_info(ice_hw_to_dev(hw), "SMA2 + U.FL2 disabled");
-		data |= ICE_SMA2_MASK_E810T;
-	} else if (ptp_pins[SMA2].func == PTP_PF_EXTTS &&
-			ptp_pins[UFL2].func == PTP_PF_NONE) {
-		dev_info(ice_hw_to_dev(hw), "SMA2 RX");
-		data |= (ICE_SMA2_TX_EN_E810T |
-			 ICE_SMA2_UFL2_RX_DIS_E810T);
-	} else if (ptp_pins[SMA2].func == PTP_PF_NONE &&
-		   ptp_pins[UFL2].func == PTP_PF_EXTTS) {
-		dev_info(ice_hw_to_dev(hw), "UFL2 RX");
-		data |= (ICE_SMA2_DIR_EN_E810T | ICE_SMA2_TX_EN_E810T);
-	} else if (ptp_pins[SMA2].func == PTP_PF_PEROUT &&
-		   ptp_pins[UFL2].func == PTP_PF_NONE) {
-		dev_info(ice_hw_to_dev(hw), "SMA2 TX");
-		data |= (ICE_SMA2_DIR_EN_E810T |
-			 ICE_SMA2_UFL2_RX_DIS_E810T);
-	} else if (ptp_pins[SMA2].func == PTP_PF_PEROUT &&
-		   ptp_pins[UFL2].func == PTP_PF_EXTTS) {
-		dev_info(ice_hw_to_dev(hw), "SMA2 TX + U.FL2 RX");
-		data |= ICE_SMA2_DIR_EN_E810T;
-	}
-
-	return ice_write_sma_ctrl_e810t(hw, data);
-}
-
-/**
- * ice_ptp_set_sma_e810t
- * @info: the driver's PTP info structure
- * @pin: pin index in kernel structure
- * @func: Pin function to be set (PTP_PF_NONE, PTP_PF_EXTTS or PTP_PF_PEROUT)
- *
- * Set the configuration of a single SMA pin
- */
-static int
-ice_ptp_set_sma_e810t(struct ptp_clock_info *info, unsigned int pin,
-		      enum ptp_pin_function func)
-{
-	struct ptp_pin_desc ptp_pins[NUM_PTP_PINS_E810T];
-	struct ice_pf *pf = ptp_info_to_pf(info);
-	struct ice_hw *hw = &pf->hw;
-	int err;
-
-	if (pin < SMA1 || func > PTP_PF_PEROUT)
-		return -EOPNOTSUPP;
-
-	err = ice_get_sma_config_e810t(hw, ptp_pins);
+	err = ice_read_sma_ctrl(&pf->hw, &data);
 	if (err)
 		return err;
 
-	/* Disable the same function on the other pin sharing the channel */
-	if (pin == SMA1 && ptp_pins[UFL1].func == func)
-		ptp_pins[UFL1].func = PTP_PF_NONE;
-	if (pin == UFL1 && ptp_pins[SMA1].func == func)
-		ptp_pins[SMA1].func = PTP_PF_NONE;
-
-	if (pin == SMA2 && ptp_pins[UFL2].func == func)
-		ptp_pins[UFL2].func = PTP_PF_NONE;
-	if (pin == UFL2 && ptp_pins[SMA2].func == func)
-		ptp_pins[SMA2].func = PTP_PF_NONE;
-
-	/* Set up new pin function in the temp table */
-	ptp_pins[pin].func = func;
-
-	return ice_ptp_set_sma_config_e810t(hw, ptp_pins);
-}
-
-/**
- * ice_verify_pin_e810t
- * @info: the driver's PTP info structure
- * @pin: Pin index
- * @func: Assigned function
- * @chan: Assigned channel
- *
- * Verify if pin supports requested pin function. If the Check pins consistency.
- * Reconfigure the SMA logic attached to the given pin to enable its
- * desired functionality
- */
-static int
-ice_verify_pin_e810t(struct ptp_clock_info *info, unsigned int pin,
-		     enum ptp_pin_function func, unsigned int chan)
-{
-	/* Don't allow channel reassignment */
-	if (chan != ice_pin_desc_e810t[pin].chan)
-		return -EOPNOTSUPP;
-
-	/* Check if functions are properly assigned */
-	switch (func) {
-	case PTP_PF_NONE:
-		break;
-	case PTP_PF_EXTTS:
-		if (pin == UFL1)
-			return -EOPNOTSUPP;
-		break;
-	case PTP_PF_PEROUT:
-		if (pin == UFL2 || pin == GNSS)
-			return -EOPNOTSUPP;
-		break;
-	case PTP_PF_PHYSYNC:
-		return -EOPNOTSUPP;
-	}
+	/* Get SMA/U.FL pins states */
+	for (int i = 0; i < pf->ptp.info.n_pins; i++)
+		if (pins[i].func) {
+			int name_idx = ice_pins[i].name_idx;
+
+			switch (name_idx) {
+			case SMA1:
+			case UFL1:
+			case SMA2:
+			case UFL2:
+				sma_pins[name_idx - 1] = pins[i].func;
+				break;
+			default:
+				continue;
+			}
+		}
 
-	return ice_ptp_set_sma_e810t(info, pin, func);
+	ice_ptp_update_sma_data(pf, sma_pins, &data);
+	return ice_write_sma_ctrl(&pf->hw, data);
 }
 
 /**
@@ -1962,81 +1826,6 @@ static void ice_ptp_enable_all_clkout(struct ice_pf *pf)
 					   false);
 }
 
-/**
- * ice_ptp_gpio_enable_e810t - Enable/disable ancillary features of PHC
- * @info: the driver's PTP info structure
- * @rq: The requested feature to change
- * @on: Enable/disable flag
- */
-static int
-ice_ptp_gpio_enable_e810t(struct ptp_clock_info *info,
-			  struct ptp_clock_request *rq, int on)
-{
-	struct ice_pf *pf = ptp_info_to_pf(info);
-	bool sma_pres = false;
-	unsigned int chan;
-	u32 gpio_pin;
-
-	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL))
-		sma_pres = true;
-
-	switch (rq->type) {
-	case PTP_CLK_REQ_PEROUT:
-	{
-		struct ice_perout_channel clk_cfg = {};
-
-		chan = rq->perout.index;
-		if (sma_pres) {
-			if (chan == ice_pin_desc_e810t[SMA1].chan)
-				clk_cfg.gpio_pin = GPIO_20;
-			else if (chan == ice_pin_desc_e810t[SMA2].chan)
-				clk_cfg.gpio_pin = GPIO_22;
-			else
-				return -1;
-		} else {
-			if (chan == 0)
-				clk_cfg.gpio_pin = GPIO_20;
-			else
-				clk_cfg.gpio_pin = GPIO_22;
-		}
-
-		clk_cfg.flags = rq->perout.flags;
-		clk_cfg.period = rq->perout.period.sec * NSEC_PER_SEC +
-				 rq->perout.period.nsec;
-		clk_cfg.start_time = rq->perout.start.sec * NSEC_PER_SEC +
-				     rq->perout.start.nsec;
-		clk_cfg.ena = !!on;
-
-		return ice_ptp_cfg_clkout(pf, chan, &clk_cfg, true);
-	}
-	case PTP_CLK_REQ_EXTTS:
-	{
-		struct ice_extts_channel extts_cfg = {};
-
-		chan = rq->extts.index;
-		if (sma_pres) {
-			if (chan < ice_pin_desc_e810t[SMA2].chan)
-				gpio_pin = GPIO_21;
-			else
-				gpio_pin = GPIO_23;
-		} else {
-			if (chan == 0)
-				gpio_pin = GPIO_21;
-			else
-				gpio_pin = GPIO_23;
-		}
-
-		extts_cfg.flags = rq->extts.flags;
-		extts_cfg.gpio_pin = gpio_pin;
-		extts_cfg.ena = !!on;
-
-		return ice_ptp_cfg_extts(pf, chan, &extts_cfg, true);
-	}
-	default:
-		return -EOPNOTSUPP;
-	}
-}
-
 /**
  * ice_verify_pin - verify if pin supports requested pin function
  * @info: the driver's PTP info structure
@@ -2530,8 +2319,12 @@ static void ice_ptp_setup_pin_cfg(struct ice_pf *pf)
 		struct ptp_pin_desc *pin = &pf->ptp.pin_desc[i];
 		const char *name = NULL;
 
-		name = ice_pin_names[desc->name_idx];
-		strscpy(pin->name, name, sizeof(pin->name));
+		if (!ice_is_feature_supported(pf, ICE_F_SMA_CTRL))
+			name = ice_pin_names[desc->name_idx];
+		else
+			name = ice_pin_names_e810t[desc->name_idx];
+		if (name)
+			strscpy(pin->name, name, sizeof(pin->name));
 
 		pin->index = i;
 		if (desc->gpio[0] >= 0 && desc->gpio[1] < 0) {
@@ -2550,20 +2343,17 @@ static void ice_ptp_setup_pin_cfg(struct ice_pf *pf)
 }
 
 /**
- * ice_ptp_disable_sma_pins_e810t - Disable E810-T SMA pins
+ * ice_ptp_disable_sma_pins - Disable SMA pins
  * @pf: pointer to the PF structure
- * @info: PTP clock info structure
  *
  * Disable the OS access to the SMA pins. Called to clear out the OS
- * indications of pin support when we fail to setup the E810-T SMA control
- * register.
+ * indications of pin support when we fail to setup the SMA control register.
  */
-static void
-ice_ptp_disable_sma_pins_e810t(struct ice_pf *pf, struct ptp_clock_info *info)
+static void ice_ptp_disable_sma_pins(struct ice_pf *pf)
 {
-	struct device *dev = ice_pf_to_dev(pf);
+	struct ptp_clock_info *info = &pf->ptp.info;
 
-	dev_warn(dev, "Failed to configure E810-T SMA pin control\n");
+	dev_warn(ice_pf_to_dev(pf), "Failed to configure  SMA pin control\n");
 
 	info->enable = NULL;
 	info->verify = NULL;
@@ -2572,47 +2362,24 @@ ice_ptp_disable_sma_pins_e810t(struct ice_pf *pf, struct ptp_clock_info *info)
 	info->n_per_out = 0;
 }
 
-/**
- * ice_ptp_setup_sma_pins_e810t - Setup the SMA pins
- * @pf: pointer to the PF structure
- * @info: PTP clock info structure
- *
- * Finish setting up the SMA pins by allocating pin_config, and setting it up
- * according to the current status of the SMA. On failure, disable all of the
- * extended SMA pin support.
- */
-static void
-ice_ptp_setup_sma_pins_e810t(struct ice_pf *pf, struct ptp_clock_info *info)
-{
-	struct device *dev = ice_pf_to_dev(pf);
-	int err;
-
-	/* Allocate memory for kernel pins interface */
-	info->pin_config = devm_kcalloc(dev, info->n_pins,
-					sizeof(*info->pin_config), GFP_KERNEL);
-	if (!info->pin_config) {
-		ice_ptp_disable_sma_pins_e810t(pf, info);
-		return;
-	}
-
-	/* Read current SMA status */
-	err = ice_get_sma_config_e810t(&pf->hw, info->pin_config);
-	if (err)
-		ice_ptp_disable_sma_pins_e810t(pf, info);
-}
-
 /**
  * ice_ptp_setup_pins_e810t - Setup PTP pins in sysfs
  * @pf: pointer to the PF instance
  */
 static void ice_ptp_setup_pins_e810t(struct ice_pf *pf)
 {
-	pf->ptp.info.enable = ice_ptp_gpio_enable_e810t;
-	pf->ptp.info.n_pins = NUM_PTP_PINS_E810T;
-	pf->ptp.info.verify = ice_verify_pin_e810t;
+	struct ice_ptp *ptp = &pf->ptp;
+	int err;
+
+	ptp->ice_pin_desc = ice_pin_desc_e810t;
+	ptp->info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810t);
+	ptp->info.pin_config = ptp->pin_desc;
+	ice_ptp_setup_pin_cfg(pf);
 
-	/* Complete setup of the SMA pins */
-	ice_ptp_setup_sma_pins_e810t(pf, &pf->ptp.info);
+	/* Clear SMA status */
+	err = ice_ptp_set_sma_cfg(pf);
+	if (err)
+		ice_ptp_disable_sma_pins(pf);
 }
 
 /**
@@ -2632,9 +2399,6 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
 		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp_e82x;
 
 #endif /* CONFIG_ICE_HWTS */
-	pf->ptp.info.enable = ice_ptp_gpio_enable;
-	pf->ptp.info.verify = ice_verify_pin;
-
 	if (ice_is_e825c(&pf->hw)) {
 		pf->ptp.ice_pin_desc = ice_pin_desc_e825c;
 		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
@@ -2648,15 +2412,13 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
 /**
  * ice_ptp_set_funcs_e810 - Set specialized functions for E810 support
  * @pf: Board private structure
- * @info: PTP info to fill
  *
  * Assign functions to the PTP capabiltiies structure for E810 devices.
  * Functions which operate across all device families should be set directly
- * in ice_ptp_set_caps. Only add functions here which are distinct for e810
+ * in ice_ptp_set_caps. Only add functions here which are distinct for E810
  * devices.
  */
-static void
-ice_ptp_set_funcs_e810(struct ice_pf *pf, struct ptp_clock_info *info)
+static void ice_ptp_set_funcs_e810(struct ice_pf *pf)
 {
 	if (ice_is_e810t(&pf->hw) &&
 	    ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
@@ -2688,9 +2450,11 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 	info->settime64 = ice_ptp_settime64;
 	info->n_per_out = GLTSYN_TGT_H_IDX_MAX;
 	info->n_ext_ts = GLTSYN_EVNT_H_IDX_MAX;
+	info->enable = ice_ptp_gpio_enable;
+	info->verify = ice_verify_pin;
 
 	if (ice_is_e810(&pf->hw))
-		ice_ptp_set_funcs_e810(pf, info);
+		ice_ptp_set_funcs_e810(pf);
 	else
 		ice_ptp_set_funcs_e82x(pf);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 982769dba832..449a0eaf904f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -8,24 +8,6 @@
 #include <linux/kthread.h>
 
 #include "ice_ptp_hw.h"
-
-enum ice_ptp_pin_e810 {
-	GPIO_20 = 0,
-	GPIO_21,
-	GPIO_22,
-	GPIO_23,
-	NUM_PTP_PIN_E810
-};
-
-enum ice_ptp_pin_e810t {
-	GNSS = 0,
-	SMA1,
-	UFL1,
-	SMA2,
-	UFL2,
-	NUM_PTP_PINS_E810T
-};
-
 struct ice_perout_channel {
 	bool ena;
 	u32 gpio_pin;
@@ -230,6 +212,14 @@ enum ice_ptp_pin {
 	ONE_PPS
 };
 
+enum ice_ptp_pin_e810t {
+	GNSS = 0,
+	SMA1,
+	UFL1,
+	SMA2,
+	UFL2
+};
+
 /* Per-channel register definitions */
 #define GLTSYN_AUX_OUT(_chan, _idx)	(GLTSYN_AUX_OUT_0(_idx) + ((_chan) * 8))
 #define GLTSYN_AUX_IN(_chan, _idx)	(GLTSYN_AUX_IN_0(_idx) + ((_chan) * 8))
@@ -241,9 +231,8 @@ enum ice_ptp_pin {
 #define GLTSYN_EVNT_H_IDX_MAX		3
 
 /* Pin definitions for PTP */
-#define PPS_CLK_GEN_CHAN		3
-#define PPS_PIN_INDEX			5
 #define ICE_N_PINS_MAX			6
+#define ICE_SMA_PINS_NUM		4
 #define ICE_PIN_DESC_ARR_LEN(_arr)	(sizeof(_arr) / \
 					 sizeof(struct ice_ptp_pin_desc))
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3a33e6b9b313..3c314f3d8107 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -5150,9 +5150,9 @@ ice_get_phy_tx_tstamp_ready_e810(struct ice_hw *hw, u8 port, u64 *tstamp_ready)
 	return 0;
 }
 
-/* E810T SMA functions
+/* E810 SMA functions
  *
- * The following functions operate specifically on E810T hardware and are used
+ * The following functions operate specifically on E810 hardware and are used
  * to access the extended GPIOs available.
  */
 
@@ -5219,14 +5219,14 @@ ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle)
 }
 
 /**
- * ice_read_sma_ctrl_e810t
+ * ice_read_sma_ctrl
  * @hw: pointer to the hw struct
  * @data: pointer to data to be read from the GPIO controller
  *
  * Read the SMA controller state. It is connected to pins 3-7 of Port 1 of the
  * PCA9575 expander, so only bits 3-7 in data are valid.
  */
-int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data)
+int ice_read_sma_ctrl(struct ice_hw *hw, u8 *data)
 {
 	int status;
 	u16 handle;
@@ -5238,7 +5238,7 @@ int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data)
 
 	*data = 0;
 
-	for (i = ICE_SMA_MIN_BIT_E810T; i <= ICE_SMA_MAX_BIT_E810T; i++) {
+	for (i = ICE_SMA_MIN_BIT; i <= ICE_SMA_MAX_BIT; i++) {
 		bool pin;
 
 		status = ice_aq_get_gpio(hw, handle, i + ICE_PCA9575_P1_OFFSET,
@@ -5252,14 +5252,14 @@ int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data)
 }
 
 /**
- * ice_write_sma_ctrl_e810t
+ * ice_write_sma_ctrl
  * @hw: pointer to the hw struct
  * @data: data to be written to the GPIO controller
  *
  * Write the data to the SMA controller. It is connected to pins 3-7 of Port 1
  * of the PCA9575 expander, so only bits 3-7 in data are valid.
  */
-int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data)
+int ice_write_sma_ctrl(struct ice_hw *hw, u8 data)
 {
 	int status;
 	u16 handle;
@@ -5269,7 +5269,7 @@ int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data)
 	if (status)
 		return status;
 
-	for (i = ICE_SMA_MIN_BIT_E810T; i <= ICE_SMA_MAX_BIT_E810T; i++) {
+	for (i = ICE_SMA_MIN_BIT; i <= ICE_SMA_MAX_BIT; i++) {
 		bool pin;
 
 		pin = !(data & (1 << i));
@@ -5283,14 +5283,14 @@ int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data)
 }
 
 /**
- * ice_read_pca9575_reg_e810t
+ * ice_read_pca9575_reg
  * @hw: pointer to the hw struct
  * @offset: GPIO controller register offset
  * @data: pointer to data to be read from the GPIO controller
  *
  * Read the register from the GPIO controller
  */
-int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data)
+int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data)
 {
 	struct ice_aqc_link_topo_addr link_topo;
 	__le16 addr;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 0852a34ade91..264b290392d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -400,9 +400,9 @@ int ice_phy_cfg_rx_offset_e82x(struct ice_hw *hw, u8 port);
 int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool ena, u8 threshold);
 
 /* E810 family functions */
-int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
-int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
-int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
+int ice_read_sma_ctrl(struct ice_hw *hw, u8 *data);
+int ice_write_sma_ctrl(struct ice_hw *hw, u8 data);
+int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_is_pca9575_present(struct ice_hw *hw);
 enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
 struct dpll_pin_frequency *
@@ -688,30 +688,27 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 #define LOW_TX_MEMORY_BANK_START	0x03090000
 #define HIGH_TX_MEMORY_BANK_START	0x03090004
 
-/* E810T SMA controller pin control */
-#define ICE_SMA1_DIR_EN_E810T		BIT(4)
-#define ICE_SMA1_TX_EN_E810T		BIT(5)
-#define ICE_SMA2_UFL2_RX_DIS_E810T	BIT(3)
-#define ICE_SMA2_DIR_EN_E810T		BIT(6)
-#define ICE_SMA2_TX_EN_E810T		BIT(7)
-
-#define ICE_SMA1_MASK_E810T	(ICE_SMA1_DIR_EN_E810T | \
-				 ICE_SMA1_TX_EN_E810T)
-#define ICE_SMA2_MASK_E810T	(ICE_SMA2_UFL2_RX_DIS_E810T | \
-				 ICE_SMA2_DIR_EN_E810T | \
-				 ICE_SMA2_TX_EN_E810T)
-#define ICE_ALL_SMA_MASK_E810T	(ICE_SMA1_MASK_E810T | \
-				 ICE_SMA2_MASK_E810T)
-
-#define ICE_SMA_MIN_BIT_E810T	3
-#define ICE_SMA_MAX_BIT_E810T	7
+/* SMA controller pin control */
+#define ICE_SMA1_DIR_EN		BIT(4)
+#define ICE_SMA1_TX_EN		BIT(5)
+#define ICE_SMA2_UFL2_RX_DIS	BIT(3)
+#define ICE_SMA2_DIR_EN		BIT(6)
+#define ICE_SMA2_TX_EN		BIT(7)
+
+#define ICE_SMA1_MASK		(ICE_SMA1_DIR_EN | ICE_SMA1_TX_EN)
+#define ICE_SMA2_MASK		(ICE_SMA2_UFL2_RX_DIS | ICE_SMA2_DIR_EN | \
+				 ICE_SMA2_TX_EN)
+#define ICE_ALL_SMA_MASK	(ICE_SMA1_MASK | ICE_SMA2_MASK)
+
+#define ICE_SMA_MIN_BIT		3
+#define ICE_SMA_MAX_BIT		7
 #define ICE_PCA9575_P1_OFFSET	8
 
-/* E810T PCA9575 IO controller registers */
+/* PCA9575 IO controller registers */
 #define ICE_PCA9575_P0_IN	0x0
 
-/* E810T PCA9575 IO controller pin control */
-#define ICE_E810T_P0_GNSS_PRSNT_N	BIT(4)
+/*  PCA9575 IO controller pin control */
+#define ICE_P0_GNSS_PRSNT_N	BIT(4)
 
 /* ETH56G PHY register addresses */
 /* Timestamp PHY incval registers */
-- 
2.45.2


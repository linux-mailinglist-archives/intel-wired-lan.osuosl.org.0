Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 942FA3ED79D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Aug 2021 15:38:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34D18402C8;
	Mon, 16 Aug 2021 13:38:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eqazUAxR4gdF; Mon, 16 Aug 2021 13:38:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC2814029B;
	Mon, 16 Aug 2021 13:38:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74A171BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 10:43:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 614CD403C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 10:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rKKvMGfCPnE0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 10:43:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 47D9B403BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 10:43:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="215564591"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="215564591"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 03:43:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="441041935"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by orsmga002.jf.intel.com with ESMTP; 16 Aug 2021 03:43:32 -0700
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 16 Aug 2021 12:27:29 +0200
Message-Id: <20210816102729.1266522-5-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210816102729.1266522-1-maciej.machnikowski@intel.com>
References: <20210816102729.1266522-1-maciej.machnikowski@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 16 Aug 2021 13:37:43 +0000
Subject: [Intel-wired-lan] [PATCH intel-next 4/4] ice: Implement support for
 SMA and U.FL on E810-T
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
Cc: Maciej Machnikowski <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Expose SMA and U.FL connectors as ptp_pins on E810-T based adapters and allow
controlling them.

E810-T adapters are equipped with:
- 2 external bidirectional SMA connectors
- 1 internal TX U.FL
- 1 internal RX U.FL

U.FL connectors share signal lines with the SMA connectors. The TX U.FL1 share
the line with the SMA1 and the RX U.FL2 share line with the SMA2. This
dependence is controlled by the ice_verify_pin_e810t.

Additionally add support for the E810-T-based  devices which don't use the
SMA/U.FL controller. If the IO expander is not detected don't expose pins
and use 2 predefined 1PPS input and output pins.

Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_lib.c |  15 +
 drivers/net/ethernet/intel/ice/ice_lib.h |   1 +
 drivers/net/ethernet/intel/ice/ice_ptp.c | 376 ++++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp.h |  21 +-
 5 files changed, 404 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 7662dd298877..73a203c350a5 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -160,6 +160,7 @@
 
 enum ice_feature {
 	ICE_F_DSCP,
+	ICE_F_SMA_CTRL,
 	ICE_F_MAX
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index fa8f42e80851..327b39d7cd71 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3890,6 +3890,19 @@ static void ice_set_feature_support(struct ice_pf *pf, enum ice_feature f)
 	set_bit(f, pf->features);
 }
 
+/**
+ * ice_clear_feature_support
+ * @pf: pointer to the struct ice_pf instance
+ * @f: feature enum to clear
+ */
+void ice_clear_feature_support(struct ice_pf *pf, enum ice_feature f)
+{
+	if (f < 0 || f >= ICE_F_MAX)
+		return;
+
+	clear_bit(f, pf->features);
+}
+
 /**
  * ice_init_feature_support
  * @pf: pointer to the struct ice_pf instance
@@ -3903,6 +3916,8 @@ void ice_init_feature_support(struct ice_pf *pf)
 	case ICE_DEV_ID_E810C_QSFP:
 	case ICE_DEV_ID_E810C_SFP:
 		ice_set_feature_support(pf, ICE_F_DSCP);
+		if (ice_is_e810t(&pf->hw))
+			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
 		break;
 	default:
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 0cef9b665d8c..ddb5e641d164 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -130,5 +130,6 @@ void ice_vsi_ctx_set_allow_override(struct ice_vsi_ctx *ctx);
 
 void ice_vsi_ctx_clear_allow_override(struct ice_vsi_ctx *ctx);
 bool ice_is_feature_supported(struct ice_pf *pf, enum ice_feature f);
+void ice_clear_feature_support(struct ice_pf *pf, enum ice_feature f);
 void ice_init_feature_support(struct ice_pf *pf);
 #endif /* !_ICE_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 031d044ffe7d..62a6b7b1dfd0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -8,6 +8,256 @@
 
 #define UNKNOWN_INCVAL_E822 0x100000000ULL
 
+static const struct ptp_pin_desc ice_pin_desc_e810t[] = {
+	/* name    idx   func         chan */
+	{ "GNSS",  GNSS, PTP_PF_EXTTS, 0, { 0, } },
+	{ "SMA1",  SMA1, PTP_PF_NONE, 1, { 0, } },
+	{ "U.FL1", UFL1, PTP_PF_NONE, 1, { 0, } },
+	{ "SMA2",  SMA2, PTP_PF_NONE, 2, { 0, } },
+	{ "U.FL2", UFL2, PTP_PF_NONE, 2, { 0, } },
+};
+
+/**
+ * ice_get_sma_config_e810t
+ * @hw: pointer to the hw struct
+ * @ptp_pins:pointer to the ptp_pin_desc struture
+ *
+ * Read the configuration of the SMA control logic and put it into the
+ * ptp_pin_desc structure
+ */
+static int
+ice_get_sma_config_e810t(struct ice_hw *hw, struct ptp_pin_desc *ptp_pins)
+{
+	enum ice_status status;
+	u8 data, i;
+
+	/* Read initial pin state */
+	status = ice_read_sma_ctrl_e810t(hw, &data);
+	if (status)
+		return ice_status_to_errno(status);
+
+	/* initialize with defaults */
+	for (i = 0; i < NUM_PTP_PINS_E810T; i++) {
+		snprintf(ptp_pins[i].name, sizeof(ptp_pins[i].name),
+			 "%s", ice_pin_desc_e810t[i].name);
+		ptp_pins[i].index = ice_pin_desc_e810t[i].index;
+		ptp_pins[i].func = ice_pin_desc_e810t[i].func;
+		ptp_pins[i].chan = ice_pin_desc_e810t[i].chan;
+	}
+
+	/* Parse SMA1/UFL1 */
+	switch (data & ICE_SMA1_MASK_E810T) {
+	case ICE_SMA1_MASK_E810T:
+	default:
+		ptp_pins[SMA1].func = PTP_PF_NONE;
+		ptp_pins[UFL1].func = PTP_PF_NONE;
+		break;
+	case ICE_SMA1_DIR_EN_E810T:
+		ptp_pins[SMA1].func = PTP_PF_PEROUT;
+		ptp_pins[UFL1].func = PTP_PF_NONE;
+		break;
+	case ICE_SMA1_TX_EN_E810T:
+		ptp_pins[SMA1].func = PTP_PF_EXTTS;
+		ptp_pins[UFL1].func = PTP_PF_NONE;
+		break;
+	case 0:
+		ptp_pins[SMA1].func = PTP_PF_EXTTS;
+		ptp_pins[UFL1].func = PTP_PF_PEROUT;
+		break;
+	}
+
+	/* Parse SMA2/UFL2 */
+	switch (data & ICE_SMA2_MASK_E810T) {
+	case ICE_SMA2_MASK_E810T:
+	default:
+		ptp_pins[SMA2].func = PTP_PF_NONE;
+		ptp_pins[UFL2].func = PTP_PF_NONE;
+		break;
+	case (ICE_SMA2_TX_EN_E810T | ICE_SMA2_UFL2_RX_DIS_E810T):
+		ptp_pins[SMA2].func = PTP_PF_EXTTS;
+		ptp_pins[UFL2].func = PTP_PF_NONE;
+		break;
+	case (ICE_SMA2_DIR_EN_E810T | ICE_SMA2_UFL2_RX_DIS_E810T):
+		ptp_pins[SMA2].func = PTP_PF_PEROUT;
+		ptp_pins[UFL2].func = PTP_PF_NONE;
+		break;
+	case (ICE_SMA2_DIR_EN_E810T | ICE_SMA2_TX_EN_E810T):
+		ptp_pins[SMA2].func = PTP_PF_NONE;
+		ptp_pins[UFL2].func = PTP_PF_EXTTS;
+		break;
+	case ICE_SMA2_DIR_EN_E810T:
+		ptp_pins[SMA2].func = PTP_PF_PEROUT;
+		ptp_pins[UFL2].func = PTP_PF_EXTTS;
+		break;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_set_sma_config_e810t
+ * @hw: pointer to the hw struct
+ * @ptp_pins: pointer to the ptp_pin_desc struture
+ *
+ * Set the configuration of the SMA control logic based on the configuration in
+ * num_pins parameter
+ */
+static int
+ice_ptp_set_sma_config_e810t(struct ice_hw *hw,
+			    const struct ptp_pin_desc *ptp_pins)
+{
+	enum ice_status status;
+	u8 data;
+
+	/* SMA1 and UFL1 cannot be set to TX at the same time */
+	if (ptp_pins[SMA1].func == PTP_PF_PEROUT &&
+	    ptp_pins[UFL1].func == PTP_PF_PEROUT)
+		return ICE_ERR_PARAM;
+
+	/* SMA2 and UFL2 cannot be set to RX at the same time */
+	if (ptp_pins[SMA2].func == PTP_PF_EXTTS &&
+	    ptp_pins[UFL2].func == PTP_PF_EXTTS)
+		return ICE_ERR_PARAM;
+
+	/* Read initial pin state value */
+	status = ice_read_sma_ctrl_e810t(hw, &data);
+	if (status)
+		return ice_status_to_errno(status);
+
+	/* Set the right sate based on the desired configuration */
+	data &= ~ICE_SMA1_MASK_E810T;
+	if (ptp_pins[SMA1].func == PTP_PF_NONE &&
+	    ptp_pins[UFL1].func == PTP_PF_NONE) {
+		dev_info(ice_hw_to_dev(hw), "SMA1 + U.FL1 disabled");
+		data |= ICE_SMA1_MASK_E810T;
+	} else if (ptp_pins[SMA1].func == PTP_PF_EXTTS &&
+		   ptp_pins[UFL1].func == PTP_PF_NONE) {
+		dev_info(ice_hw_to_dev(hw), "SMA1 RX");
+		data |= ICE_SMA1_TX_EN_E810T;
+	} else if (ptp_pins[SMA1].func == PTP_PF_NONE &&
+		   ptp_pins[UFL1].func == PTP_PF_PEROUT) {
+		/* U.FL 1 TX will always enable SMA 1 RX */
+		dev_info(ice_hw_to_dev(hw), "SMA1 RX + U.FL1 TX");
+	} else if (ptp_pins[SMA1].func == PTP_PF_EXTTS &&
+		   ptp_pins[UFL1].func == PTP_PF_PEROUT) {
+		dev_info(ice_hw_to_dev(hw), "SMA1 RX + U.FL1 TX");
+	} else if (ptp_pins[SMA1].func == PTP_PF_PEROUT &&
+		   ptp_pins[UFL1].func == PTP_PF_NONE) {
+		dev_info(ice_hw_to_dev(hw), "SMA1 TX");
+		data |= ICE_SMA1_DIR_EN_E810T;
+	}
+
+	data &= (~ICE_SMA2_MASK_E810T);
+	if (ptp_pins[SMA2].func == PTP_PF_NONE &&
+	    ptp_pins[UFL2].func == PTP_PF_NONE) {
+		dev_info(ice_hw_to_dev(hw), "SMA2 + U.FL2 disabled");
+		data |= ICE_SMA2_MASK_E810T;
+	} else if (ptp_pins[SMA2].func == PTP_PF_EXTTS &&
+			ptp_pins[UFL2].func == PTP_PF_NONE) {
+		dev_info(ice_hw_to_dev(hw), "SMA2 RX");
+		data |= (ICE_SMA2_TX_EN_E810T |
+			 ICE_SMA2_UFL2_RX_DIS_E810T);
+	} else if (ptp_pins[SMA2].func == PTP_PF_NONE &&
+		   ptp_pins[UFL2].func == PTP_PF_EXTTS) {
+		dev_info(ice_hw_to_dev(hw), "UFL2 RX");
+		data |= (ICE_SMA2_DIR_EN_E810T | ICE_SMA2_TX_EN_E810T);
+	} else if (ptp_pins[SMA2].func == PTP_PF_PEROUT &&
+		   ptp_pins[UFL2].func == PTP_PF_NONE) {
+		dev_info(ice_hw_to_dev(hw), "SMA2 TX");
+		data |= (ICE_SMA2_DIR_EN_E810T |
+			 ICE_SMA2_UFL2_RX_DIS_E810T);
+	} else if (ptp_pins[SMA2].func == PTP_PF_PEROUT &&
+		   ptp_pins[UFL2].func == PTP_PF_EXTTS) {
+		dev_info(ice_hw_to_dev(hw), "SMA2 TX + U.FL2 RX");
+		data |= ICE_SMA2_DIR_EN_E810T;
+	}
+
+	status = ice_write_sma_ctrl_e810t(hw, data);
+	if (status)
+		return ice_status_to_errno(status);
+
+	return 0;
+}
+
+/**
+ * ice_ptp_set_sma_e810t
+ * @info: the driver's PTP info structure
+ * @pin: pin index in kernel structure
+ * @func: Pin function to be set (PTP_PF_NONE, PTP_PF_EXTTS or PTP_PF_PEROUT)
+ *
+ * Set the configuration of a single SMA pin
+ */
+static int
+ice_ptp_set_sma_e810t(struct ptp_clock_info *info, unsigned int pin,
+		      enum ptp_pin_function func)
+{
+	struct ptp_pin_desc ptp_pins[NUM_PTP_PINS_E810T];
+	struct ice_pf *pf = ptp_info_to_pf(info);
+	struct ice_hw *hw = &pf->hw;
+	int err;
+
+	if (pin < SMA1 || func > PTP_PF_PEROUT)
+		return -EOPNOTSUPP;
+
+	err = ice_get_sma_config_e810t(hw, ptp_pins);
+	if (err)
+		return err;
+
+	/* Disable the same function on the other pin sharing the channel */
+	if (pin == SMA1 && ptp_pins[UFL1].func == func)
+		ptp_pins[UFL1].func = PTP_PF_NONE;
+	if (pin == UFL1 && ptp_pins[SMA1].func == func)
+		ptp_pins[SMA1].func = PTP_PF_NONE;
+
+	if (pin == SMA2 && ptp_pins[UFL2].func == func)
+		ptp_pins[UFL2].func = PTP_PF_NONE;
+	if (pin == UFL2 && ptp_pins[SMA2].func == func)
+		ptp_pins[SMA2].func = PTP_PF_NONE;
+
+	/* Set up new pin function in the temp table */
+	ptp_pins[pin].func = func;
+
+	return ice_ptp_set_sma_config_e810t(hw, ptp_pins);
+}
+
+/**
+ * ice_verify_pin_e810t
+ * @info: the driver's PTP info structure
+ * @pin: Pin index
+ * @func: Assigned function
+ * @chan: Assigned channel
+ *
+ * Verify if pin supports requested pin function. If the Check pins consistency.
+ * Reconfigure the SMA logic attached to the given pin to enable its
+ * desired functionality
+ */
+static int
+ice_verify_pin_e810t(struct ptp_clock_info *info, unsigned int pin,
+		     enum ptp_pin_function func, unsigned int chan)
+{
+	/* Don't allow channel reassignment */
+	if (chan != ice_pin_desc_e810t[pin].chan)
+		return -EOPNOTSUPP;
+
+	/* Check if functions are properly assigned */
+	switch (func) {
+	case PTP_PF_NONE:
+		break;
+	case PTP_PF_EXTTS:
+		if (pin == UFL1)
+			return -EOPNOTSUPP;
+		break;
+	case PTP_PF_PEROUT:
+		if (pin == UFL2 || pin == GNSS)
+			return -EOPNOTSUPP;
+		break;
+	case PTP_PF_PHYSYNC:
+		return -EOPNOTSUPP;
+	}
+
+	return ice_ptp_set_sma_e810t(info, pin, func);
+}
+
 /**
  * ice_set_tx_tstamp - Enable or disable Tx timestamping
  * @pf: The PF pointer to search in
@@ -1142,17 +1392,34 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
 	struct ice_perout_channel clk_cfg = {0};
+	bool sma_pres = false;
 	unsigned int chan;
 	u32 gpio_pin;
 	int err;
 
+	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL))
+		sma_pres = true;
+
 	switch (rq->type) {
 	case PTP_CLK_REQ_PEROUT:
 		chan = rq->perout.index;
-		if (chan == PPS_CLK_GEN_CHAN)
+		if (sma_pres) {
+			if (chan == ice_pin_desc_e810t[SMA1].chan)
+				clk_cfg.gpio_pin = GPIO_20;
+			else if (chan == ice_pin_desc_e810t[SMA2].chan)
+				clk_cfg.gpio_pin = GPIO_22;
+			else
+				return -1;
+		} else if (ice_is_e810t(&pf->hw)) {
+			if (chan == 0)
+				clk_cfg.gpio_pin = GPIO_20;
+			else
+				clk_cfg.gpio_pin = GPIO_22;
+		} else if (chan == PPS_CLK_GEN_CHAN) {
 			clk_cfg.gpio_pin = PPS_PIN_INDEX;
-		else
+		} else {
 			clk_cfg.gpio_pin = chan;
+		}
 
 		clk_cfg.period = ((rq->perout.period.sec * NSEC_PER_SEC) +
 				   rq->perout.period.nsec);
@@ -1164,7 +1431,19 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 		break;
 	case PTP_CLK_REQ_EXTTS:
 		chan = rq->extts.index;
-		gpio_pin = chan;
+		if (sma_pres) {
+			if (chan < ice_pin_desc_e810t[SMA2].chan)
+				gpio_pin = GPIO_21;
+			else
+				gpio_pin = GPIO_23;
+		} else if (ice_is_e810t(&pf->hw)) {
+			if (chan == 0)
+				gpio_pin = GPIO_21;
+			else
+				gpio_pin = GPIO_23;
+		} else {
+			gpio_pin = chan;
+		}
 
 		err = ice_ptp_cfg_extts(pf, !!on, chan, gpio_pin,
 					rq->extts.flags);
@@ -1548,14 +1827,96 @@ ice_ptp_rx_hwtstamp(struct ice_ring *rx_ring,
 	}
 }
 
+/**
+ * ice_ptp_disable_sma_pins_e810t - Disable E810-T SMA pins
+ * @pf: pointer to the PF structure
+ * @info: PTP clock info structure
+ *
+ * Disable the OS access to the SMA pins. Called to clear out the OS
+ * indications of pin support when we fail to setup the E810-T SMA control
+ * register.
+ */
+static void
+ice_ptp_disable_sma_pins_e810t(struct ice_pf *pf, struct ptp_clock_info *info)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+
+	dev_warn(dev, "Failed to configure E810-T SMA pin control\n");
+
+	info->enable = NULL;
+	info->verify = NULL;
+	info->n_pins = 0;
+	info->n_ext_ts = 0;
+	info->n_per_out = 0;
+}
+
+/**
+ * ice_ptp_setup_sma_pins_e810t - Setup the SMA pins
+ * @pf: pointer to the PF structure
+ * @info: PTP clock info structure
+ *
+ * Finish setting up the SMA pins by allocating pin_config, and setting it up
+ * according to the current status of the SMA. On failure, disable all of the
+ * extended SMA pin support.
+ */
+static void
+ice_ptp_setup_sma_pins_e810t(struct ice_pf *pf, struct ptp_clock_info *info)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	int err;
+
+	/* Allocate memory for kernel pins interface */
+	info->pin_config = devm_kcalloc(dev, info->n_pins,
+					sizeof(*info->pin_config), GFP_KERNEL);
+	if (!info->pin_config) {
+		ice_ptp_disable_sma_pins_e810t(pf, info);
+		return;
+	}
+
+	/* Read current SMA status */
+	err = ice_get_sma_config_e810t(&pf->hw, info->pin_config);
+	if (err) {
+		ice_ptp_disable_sma_pins_e810t(pf, info);
+		return;
+	}
+}
+
+/**
+ * ice_ptp_setup_pins_e810t - Setup PTP pins in sysfs
+ * @pf: pointer to the PF instance
+ * @info: PTP clock capabilities
+ */
+static void
+ice_ptp_setup_pins_e810t(struct ice_pf *pf, struct ptp_clock_info *info)
+{
+	/* Check if SMA controller is in the netlist */
+	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL) &&
+	    !ice_is_pca9575_present(&pf->hw))
+		ice_clear_feature_support(pf, ICE_F_SMA_CTRL);
+
+	if (!ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
+		info->n_ext_ts = N_EXT_TS_E810_NO_SMA;
+		info->n_per_out = N_PER_OUT_E810T_NO_SMA;
+		return;
+	}
+
+	info->n_per_out = N_PER_OUT_E810T;
+	info->n_ext_ts = N_EXT_TS_E810;
+	info->n_pins = NUM_PTP_PINS_E810T;
+	info->verify = ice_verify_pin_e810t;
+
+	/* Complete setup of the SMA pins */
+	ice_ptp_setup_sma_pins_e810t(pf, info);
+}
+
 /**
  * ice_ptp_setup_pins_e810 - Setup PTP pins in sysfs
  * @info: PTP clock capabilities
  */
 static void ice_ptp_setup_pins_e810(struct ptp_clock_info *info)
 {
-	info->n_per_out = E810_N_PER_OUT;
-	info->n_ext_ts = E810_N_EXT_TS;
+	info->n_per_out = N_PER_OUT_E810;
+	info->n_ext_ts = N_EXT_TS_E810;
 }
 
 /**
@@ -1593,7 +1954,10 @@ ice_ptp_set_funcs_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 {
 	info->enable = ice_ptp_gpio_enable_e810;
 
-	ice_ptp_setup_pins_e810(info);
+	if (ice_is_e810t(&pf->hw))
+		ice_ptp_setup_pins_e810t(pf, info);
+	else
+		ice_ptp_setup_pins_e810(info);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 49d7154e627c..4a0e941793dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -9,12 +9,21 @@
 
 #include "ice_ptp_hw.h"
 
-enum ice_ptp_pin {
+enum ice_ptp_pin_e810 {
 	GPIO_20 = 0,
 	GPIO_21,
 	GPIO_22,
 	GPIO_23,
-	NUM_ICE_PTP_PIN
+	NUM_PTP_PIN_E810
+};
+
+enum ice_ptp_pin_e810t {
+	GNSS = 0,
+	SMA1,
+	UFL1,
+	SMA2,
+	UFL2,
+	NUM_PTP_PINS_E810T
 };
 
 struct ice_perout_channel {
@@ -173,8 +182,12 @@ struct ice_ptp {
 #define PPS_CLK_SRC_CHAN		2
 #define PPS_PIN_INDEX			5
 #define TIME_SYNC_PIN_INDEX		4
-#define E810_N_EXT_TS			3
-#define E810_N_PER_OUT			4
+#define N_EXT_TS_E810			3
+#define N_PER_OUT_E810			4
+#define N_PER_OUT_E810T			3
+#define N_PER_OUT_E810T_NO_SMA		2
+#define N_EXT_TS_E810_NO_SMA		2
+
 #define ETH_GLTSYN_ENA(_i)		(0x03000348 + ((_i) * 4))
 
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

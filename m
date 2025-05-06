Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBE9AABFB4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 May 2025 11:35:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C538408AE;
	Tue,  6 May 2025 09:35:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a8ggRZECBaus; Tue,  6 May 2025 09:35:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70EB14079D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746524146;
	bh=abDjOE+eVTQyA2S7FDg0hjdd8ONmdznrC8tOk5PaOCc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KV70kfy2mFt1lotTGa9kjlnEIXaMFqawOE4xFLikMOYy+a1NYU3RLGdknKlYES7i4
	 uaY4Xqv0yRS6hkM+dKtmUBDLMdL7t7SwgBpTd8ZNU72wC+y22ldQa95Lh4K1drHoLL
	 KMDPca4P1rTMG0ZEpeXMV1FQkIZ0Myj4/A9gQrFIXdig5yJ4+WMG8SSEzhSIN1OogW
	 BIhX+UddBq2HMGgw6hGNNwmektYA+yOsLlL8wxZh8U/koihHjQv7JMy6sytyBQkHO+
	 G/cOLTxB8wlGh9I+DlRKwVMXRbEM2qiIvRYYKM+ix+oQH/V2ucaIT5HQbL9HuExeRA
	 zMSnWjdGjvurw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70EB14079D;
	Tue,  6 May 2025 09:35:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4267020F8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 09:35:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 336FB40F9D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 09:35:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Bi03fb_tLvA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 May 2025 09:35:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6798640AD8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6798640AD8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6798640AD8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 09:35:43 +0000 (UTC)
X-CSE-ConnectionGUID: UZMC/vcqQCiksiWEzk1IGw==
X-CSE-MsgGUID: H+mL3PSpTu+hMaruhDclrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="48265105"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48265105"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 02:35:41 -0700
X-CSE-ConnectionGUID: 0/TSmFWYQlKVyHGzrecrog==
X-CSE-MsgGUID: VqrsUUynTjqtH/axcuswtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="136507956"
Received: from pae-dbg-r750-02-263.igk.intel.com ([172.28.191.215])
 by orviesa008.jf.intel.com with ESMTP; 06 May 2025 02:35:38 -0700
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Przemyslaw Korba <przemyslaw.korba@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Tue,  6 May 2025 11:35:05 +0200
Message-Id: <20250506093506.3136225-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746524143; x=1778060143;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A6QzS7ZYGA/70pC+lcmWHMqmXfW0wlOoXL7f/38I1MU=;
 b=ekj3XHefSbdoIkSoIcMovR/Kx2meAD6h5JFiZMuMg8//WR/K1hW8L10v
 SbS8cBhMX1Xjvu9dGeXuDVSoiyL6VoH568C5BeBbGBcpTf1K008eSNea3
 LcedjqkAMn5LHrS/jZB2ap4mRC/ICmr62YSIHk5lySkGx/lfJKPH63kcH
 yTp0TbdqWX9SUG3jbmg0VFVc9Yc4hPwfZBuDcO4o9G5wWds81VtG4lqS3
 8Lo5OFn99fj/koKWGizr0lMWqPzcZBikggHgKVgDYHdhScO9iSPNdtFWj
 7SEmEa7qxgwxQx3cs+84hQiaERlCgG+O731YKDK1Vxs1T8RK6Y1S47Ndr
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ekj3XHef
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: add recovery clock and
 clock 1588 control for E825c
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

Add control for E825 input pins: phy clock recovery and clock 1588.
E825 does not provide control over platform level DPLL but it
provides control over PHY clock recovery, and PTP/timestamp driven
inputs for platform level DPLL.

Introduce a software controlled layer of abstraction to:
- create a DPLL of type EEC for E825c,
- create recovered clock pin for each PF, and control them through
writing to registers,
- create pin to control clock 1588 for PF0, and control it through
writing to registers.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c   | 856 ++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dpll.h   |  24 +-
 drivers/net/ethernet/intel/ice/ice_main.c   |   3 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  40 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   2 +
 drivers/net/ethernet/intel/ice/ice_tspll.h  |   7 +
 drivers/net/ethernet/intel/ice/ice_type.h   |   6 +
 7 files changed, 865 insertions(+), 73 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index e36c5a853593..626436b87843 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -9,6 +9,7 @@
 #define ICE_CGU_STATE_ACQ_ERR_THRESHOLD		50
 #define ICE_DPLL_PIN_IDX_INVALID		0xff
 #define ICE_DPLL_RCLK_NUM_PER_PF		1
+#define ICE_DPLL_PIN_1588_NUM			1
 #define ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT	25
 #define ICE_DPLL_PIN_GEN_RCLK_FREQ		1953125
 #define ICE_DPLL_PIN_PRIO_OUTPUT		0xff
@@ -59,6 +60,7 @@ static const char * const pin_type_name[] = {
 
 static const char * const ice_dpll_sw_pin_sma[] = { "SMA1", "SMA2" };
 static const char * const ice_dpll_sw_pin_ufl[] = { "U.FL1", "U.FL2" };
+static const char * const ice_dpll_pin_1588 = "pin_1588";
 
 static const struct dpll_pin_frequency ice_esync_range[] = {
 	DPLL_PIN_FREQUENCY_RANGE(0, DPLL_PIN_FREQUENCY_1_HZ),
@@ -513,6 +515,107 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
 	return ret;
 }
 
+/**
+ * ice_dpll_rclk_update_e825c - updates the state of rclk pin on e825c device
+ * @pf: private board struct
+ * @pin: pointer to a pin
+ *
+ * Update struct holding pin states info, states are separate for each parent
+ *
+ * Context: Called under pf->dplls.lock
+ * Return:
+ * * 0 - OK
+ * * negative - error
+ */
+static int ice_dpll_rclk_update_e825c(struct ice_pf *pf,
+				      struct ice_dpll_pin *pin)
+{
+	u8 rclk_bits;
+	u32 reg;
+
+	if (pf->dplls.rclk.num_parents > ICE_SYNCE_CLK_NUM)
+		return -EINVAL;
+
+	ICE_READ_CGU_REG_OR_DIE(&pf->hw, ICE_CGU_R10, &reg);
+	rclk_bits = FIELD_GET(ICE_CGU_R10_SYNCE_S_REF_CLK, reg);
+	SET_PIN_STATE(pin, ICE_SYNCE_CLK0, rclk_bits ==
+		     (pf->hw.pf_id + ICE_CGU_BYPASS_MUX_OFFSET_E825C));
+
+	ICE_READ_CGU_REG_OR_DIE(&pf->hw, ICE_CGU_R11, &reg);
+	rclk_bits = FIELD_GET(ICE_CGU_R11_SYNCE_S_BYP_CLK, reg);
+	SET_PIN_STATE(pin, ICE_SYNCE_CLK1, rclk_bits ==
+		     (pf->hw.pf_id + ICE_CGU_BYPASS_MUX_OFFSET_E825C));
+	return 0;
+}
+
+/**
+ * ice_dpll_rclk_update - updates the state of rclk pin on a device
+ * @pf: private board struct
+ * @pin: pointer to a pin
+ * @port_num: port number
+ *
+ * Update struct holding pin states info, states are separate for each parent
+ *
+ * Context: Called under pf->dplls.lock
+ * Return:
+ * * 0 - OK
+ * * negative - error
+ */
+static int ice_dpll_rclk_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
+				u8 port_num)
+{
+	int ret = 0;
+
+	for (u8 parent = 0; parent < pf->dplls.rclk.num_parents; parent++) {
+		ret = ice_aq_get_phy_rec_clk_out(&pf->hw, &parent, &port_num,
+						 &pin->flags[parent], NULL);
+		if (ret)
+			return ret;
+		SET_PIN_STATE(pin, parent,
+			      ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN &
+			      pin->flags[parent]);
+	}
+
+	return ret;
+}
+
+/**
+ * ice_dpll_update_pin_1588_e825c - updates the state of clock 1588 pin
+ * @hw: board private hw structure
+ * @pin: pointer to a pin
+ * @parent: clock source identifier
+ *
+ * Update struct holding pin states info, states are separate for each parent
+ *
+ * Context: Called under pf->dplls.lock
+ * Return:
+ * * 0 - OK
+ * * negative - error
+ */
+static int ice_dpll_update_pin_1588_e825c(struct ice_hw *hw,
+					  struct ice_dpll_pin *pin,
+					  enum ice_synce_clk parent)
+{
+	u8 bits_clk;
+	u32 reg;
+
+	switch (parent) {
+	case ICE_SYNCE_CLK0:
+		ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R10, &reg);
+		bits_clk = FIELD_GET(ICE_CGU_R10_SYNCE_S_REF_CLK, reg);
+		break;
+	case ICE_SYNCE_CLK1:
+		ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R11, &reg);
+		bits_clk = FIELD_GET(ICE_CGU_R11_SYNCE_S_BYP_CLK, reg);
+		break;
+	default:
+		return -EINVAL;
+	}
+	SET_PIN_STATE(pin, parent, bits_clk == ICE_CGU_NCOCLK);
+
+	return 0;
+}
+
 /**
  * ice_dpll_sw_pins_update - update status of all SW pins
  * @pf: private board struct
@@ -525,8 +628,7 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
  * * 0 - OK
  * * negative - error
  */
-static int
-ice_dpll_sw_pins_update(struct ice_pf *pf)
+static int ice_dpll_sw_pins_update(struct ice_pf *pf)
 {
 	struct ice_dplls *d = &pf->dplls;
 	struct ice_dpll_pin *p;
@@ -655,22 +757,14 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
 		}
 		break;
 	case ICE_DPLL_PIN_TYPE_RCLK_INPUT:
-		for (parent = 0; parent < pf->dplls.rclk.num_parents;
-		     parent++) {
-			u8 p = parent;
-
-			ret = ice_aq_get_phy_rec_clk_out(&pf->hw, &p,
-							 &port_num,
-							 &pin->flags[parent],
-							 NULL);
+		if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
+			ret = ice_dpll_rclk_update_e825c(pf, pin);
+			if (ret)
+				goto err;
+		} else {
+			ret = ice_dpll_rclk_update(pf, pin, port_num);
 			if (ret)
 				goto err;
-			if (ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN &
-			    pin->flags[parent])
-				pin->state[parent] = DPLL_PIN_STATE_CONNECTED;
-			else
-				pin->state[parent] =
-					DPLL_PIN_STATE_DISCONNECTED;
 		}
 		break;
 	case ICE_DPLL_PIN_TYPE_SOFTWARE:
@@ -902,7 +996,7 @@ ice_dpll_input_state_set(const struct dpll_pin *pin, void *pin_priv,
 }
 
 /**
- * ice_dpll_pin_state_get - set pin's state on dpll
+ * ice_dpll_pin_state_get - update pin's state
  * @pin: pointer to a pin
  * @pin_priv: private data pointer passed on pin registration
  * @dpll: registered dpll pointer
@@ -947,6 +1041,33 @@ ice_dpll_pin_state_get(const struct dpll_pin *pin, void *pin_priv,
 	return ret;
 }
 
+/**
+ * ice_dpll_pin_state_get_e825c - update e825c device pin's state on dpll
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @state: on success holds state of the pin
+ * @extack: error reporting
+ *
+ * Set pin state of e825c device to connected.
+ *
+ * Context: Called under pf->dplls.lock
+ * Return:
+ * * 0 - success
+ */
+static int ice_dpll_pin_state_get_e825c(const struct dpll_pin *pin,
+					void *pin_priv,
+					const struct dpll_device *dpll,
+					void *dpll_priv,
+					enum dpll_pin_state *state,
+					struct netlink_ext_ack *extack)
+{
+	*state = DPLL_PIN_STATE_CONNECTED;
+
+	return 0;
+}
+
 /**
  * ice_dpll_output_state_get - get output pin state on dpll device
  * @pin: pointer to a pin
@@ -1763,6 +1884,212 @@ ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
 	return 0;
 }
 
+/**
+ * ice_dpll_cfg_bypass_mux_e825c - check if the given port recovered clock
+ * or clock 1588 is set active
+ * @hw: Pointer to the HW struct
+ * @ena: true to enable the reference, false if disable
+ * @port_num: Number of the port
+ * @output: Output pin, we have two in E825C
+ * @clock_1588: true to enable 1588 reference, false to recover from port
+ *
+ * Dpll subsystem callback. Handler for setting the correct registers to
+ * enable a functionality on e825c device.
+ *
+ * Context: Called under pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_cfg_bypass_mux_e825c(struct ice_hw *hw, bool ena,
+			      u32 port_num, enum ice_synce_clk output,
+			      bool clock_1588)
+{
+	u8 first_mux;
+	u32 r10;
+
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R10, &r10);
+
+	if (!ena)
+		first_mux = ICE_CGU_NET_REF_CLK0;
+	else if (clock_1588)
+		first_mux = ICE_CGU_NCOCLK;
+	else
+		first_mux = port_num + ICE_CGU_BYPASS_MUX_OFFSET_E825C;
+
+	r10 &= ~(ICE_CGU_R10_SYNCE_DCK_RST | ICE_CGU_R10_SYNCE_DCK2_RST);
+
+	switch (output) {
+	case ICE_SYNCE_CLK0:
+		r10 &= ~(ICE_CGU_R10_SYNCE_ETHCLKO_SEL |
+			 ICE_CGU_R10_SYNCE_ETHDIV_LOAD |
+			 ICE_CGU_R10_SYNCE_S_REF_CLK);
+		r10 |= FIELD_PREP(ICE_CGU_R10_SYNCE_S_REF_CLK, first_mux);
+		if (clock_1588)
+			r10 |= FIELD_PREP(ICE_CGU_R10_SYNCE_ETHCLKO_SEL,
+					  ICE_CGU_REF_CLK_BYP0);
+		else
+			r10 |= FIELD_PREP(ICE_CGU_R10_SYNCE_ETHCLKO_SEL,
+					  ICE_CGU_REF_CLK_BYP0_DIV);
+		break;
+	case ICE_SYNCE_CLK1:
+	{
+		u32 val;
+
+		ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R11, &val);
+		val &= ~ICE_CGU_R11_SYNCE_S_BYP_CLK;
+		val |= FIELD_PREP(ICE_CGU_R11_SYNCE_S_BYP_CLK, first_mux);
+		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R11, val);
+		r10 &= ~(ICE_CGU_R10_SYNCE_CLKODIV_LOAD |
+			 ICE_CGU_R10_SYNCE_CLKO_SEL);
+		if (clock_1588)
+			r10 |= FIELD_PREP(ICE_CGU_R10_SYNCE_CLKO_SEL,
+					  ICE_CGU_REF_CLK_BYP1);
+		else
+			r10 |= FIELD_PREP(ICE_CGU_R10_SYNCE_CLKO_SEL,
+					  ICE_CGU_REF_CLK_BYP1_DIV);
+		break;
+	}
+	default:
+		return -EINVAL;
+	}
+
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R10, r10);
+
+	return 0;
+}
+
+/**
+ * ice_dpll_get_div_e825c - get the divider for the given speed
+ * @link_speed: link speed of the port
+ * @divider: output value, calculated divider
+ *
+ * Dpll subsystem callback. Handler for setting the divider on e825c device.
+ *
+ * Context: Called under pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int ice_dpll_get_div_e825c(u16 link_speed, u8 *divider)
+{
+	switch (link_speed) {
+	case ICE_AQ_LINK_SPEED_100GB:
+	case ICE_AQ_LINK_SPEED_50GB:
+	case ICE_AQ_LINK_SPEED_25GB:
+		*divider = 10;
+		break;
+	case ICE_AQ_LINK_SPEED_40GB:
+	case ICE_AQ_LINK_SPEED_10GB:
+		*divider = 4;
+		break;
+	case ICE_AQ_LINK_SPEED_5GB:
+	case ICE_AQ_LINK_SPEED_2500MB:
+	case ICE_AQ_LINK_SPEED_1000MB:
+		*divider = 2;
+		break;
+	case ICE_AQ_LINK_SPEED_100MB:
+		*divider = 1;
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_dpll_cfg_synce_ethdiv_e825c - set the divider on the mux
+ * @hw: Pointer to the HW struct
+ * @divider: Output parameter, returns used divider value
+ * @output: Output pin, we have two in E825C
+ *
+ * Dpll subsystem callback. Set the correct divider for RCLKA or RCLKB.
+ *
+ * Context: Called under pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int ice_dpll_cfg_synce_ethdiv_e825c(struct ice_hw *hw,
+					   enum ice_synce_clk output)
+{
+	u16 link_speed;
+	u8 divider;
+	u32 val;
+	int err;
+
+	link_speed = hw->port_info->phy.link_info.link_speed;
+	if (!link_speed)
+		return 0;
+
+	err = ice_dpll_get_div_e825c(link_speed, &divider);
+	if (err)
+		return err;
+
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R10, &val);
+
+	/* programmable divider value (from 2 to 16) minus 1 for ETHCLKOUT */
+	switch (output) {
+	case ICE_SYNCE_CLK0:
+		val &= ~(ICE_CGU_R10_SYNCE_ETHDIV_M1 |
+			 ICE_CGU_R10_SYNCE_ETHDIV_LOAD);
+		val |= FIELD_PREP(ICE_CGU_R10_SYNCE_ETHDIV_M1, divider - 1);
+		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R10, val);
+		val |= ICE_CGU_R10_SYNCE_ETHDIV_LOAD;
+		break;
+	case ICE_SYNCE_CLK1:
+		val &= ~(ICE_CGU_R10_SYNCE_CLKODIV_M1 |
+			 ICE_CGU_R10_SYNCE_CLKODIV_LOAD);
+		val |= FIELD_PREP(ICE_CGU_R10_SYNCE_CLKODIV_M1, divider - 1);
+		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R10, val);
+		val |= ICE_CGU_R10_SYNCE_CLKODIV_LOAD;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R10, val);
+
+	return 0;
+}
+
+/**
+ * ice_dpll_synce_update_e825c - setting PHY recovered clock pins on e825c
+ * @hw: Pointer to the HW struct
+ * @ena:  true if enable, false in disable
+ * @port_num: port number
+ * @output: output pin, we have two in E825C
+ *
+ * Dpll subsystem callback. Set proper signals to recover clock from port.
+ *
+ * Context: Called under pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int ice_dpll_synce_update_e825c(struct ice_hw *hw, bool ena,
+				       u32 port_num, enum ice_synce_clk output)
+{
+	int err;
+
+	/* configure the mux to deliver proper signal to DPLL from the MUX */
+	err = ice_dpll_cfg_bypass_mux_e825c(hw, ena, port_num, output,
+					    false);
+	if (err)
+		return err;
+
+	err = ice_dpll_cfg_synce_ethdiv_e825c(hw, output);
+	if (err)
+		return err;
+
+	dev_dbg(ice_hw_to_dev(hw), "CLK_SYNCE%u recovered clock: pin %s\n",
+		output, !!ena ? "Enabled" : "Disabled");
+
+	return 0;
+}
+
 /**
  * ice_dpll_output_esync_set - callback for setting embedded sync
  * @pin: pointer to a pin
@@ -2064,12 +2391,15 @@ ice_dpll_rclk_state_on_pin_set(const struct dpll_pin *pin, void *pin_priv,
 			       enum dpll_pin_state state,
 			       struct netlink_ext_ack *extack)
 {
-	struct ice_dpll_pin *p = pin_priv, *parent = parent_pin_priv;
 	bool enable = state == DPLL_PIN_STATE_CONNECTED;
+	struct ice_dpll_pin *parent = parent_pin_priv;
+	struct ice_dpll_pin *p = pin_priv;
 	struct ice_pf *pf = p->pf;
 	int ret = -EINVAL;
 	u32 hw_idx;
 
+	struct ice_hw *hw = &pf->hw;
+
 	if (ice_dpll_is_reset(pf, extack))
 		return -EBUSY;
 
@@ -2085,13 +2415,18 @@ ice_dpll_rclk_state_on_pin_set(const struct dpll_pin *pin, void *pin_priv,
 				   p->idx, state, parent->idx);
 		goto unlock;
 	}
-	ret = ice_aq_set_phy_rec_clk_out(&pf->hw, hw_idx, enable,
-					 &p->freq);
+
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
+		ret = ice_dpll_synce_update_e825c(hw, enable, pf->hw.pf_id,
+						  (enum ice_synce_clk)hw_idx);
+	else
+		ret = ice_aq_set_phy_rec_clk_out(hw, hw_idx, enable,
+						 &p->freq);
 	if (ret)
 		NL_SET_ERR_MSG_FMT(extack,
 				   "err:%d %s failed to set pin state:%u for pin:%u on parent:%u",
 				   ret,
-				   ice_aq_str(pf->hw.adminq.sq_last_status),
+				   ice_aq_str(hw->adminq.sq_last_status),
 				   state, p->idx, parent->idx);
 unlock:
 	mutex_unlock(&pf->dplls.lock);
@@ -2099,6 +2434,58 @@ ice_dpll_rclk_state_on_pin_set(const struct dpll_pin *pin, void *pin_priv,
 	return ret;
 }
 
+/**
+ * ice_dpll_pin_1588_state_on_pin_set - set a state on a clock 1588 pin
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @parent_pin: pin parent pointer
+ * @parent_pin_priv: parent private data pointer passed on pin registration
+ * @state: state to be set on pin
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Set a state of a clock 1588 pin on a parent pin
+ *
+ * Context: Acquires pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - failure
+ */
+static int ice_dpll_pin_1588_state_on_pin_set(const struct dpll_pin *pin,
+					      void *pin_priv,
+					      const struct dpll_pin *parent_pin,
+					      void *parent_pin_priv,
+					      enum dpll_pin_state state,
+					      struct netlink_ext_ack *extack)
+{
+	const struct ice_dpll_pin *parent = parent_pin_priv;
+	bool ena = state == DPLL_PIN_STATE_CONNECTED;
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_pf *pf = p->pf;
+	u32 hw_idx;
+	int ret;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
+	mutex_lock(&pf->dplls.lock);
+	hw_idx = parent->idx - pf->dplls.base_rclk_idx;
+	if (hw_idx >= pf->dplls.num_inputs)
+		goto unlock;
+
+	if ((ena && p->state[hw_idx] == DPLL_PIN_STATE_CONNECTED) ||
+	    (!ena && p->state[hw_idx] == DPLL_PIN_STATE_DISCONNECTED)) {
+		NL_SET_ERR_MSG(extack,
+			       "Pin state on parent is already set");
+		goto unlock;
+	}
+	ret = ice_dpll_cfg_bypass_mux_e825c(&pf->hw, ena, pf->hw.pf_id,
+					    hw_idx, true);
+unlock:
+	mutex_unlock(&pf->dplls.lock);
+
+	return ret;
+}
+
 /**
  * ice_dpll_rclk_state_on_pin_get - get a state of rclk pin
  * @pin: pointer to a pin
@@ -2122,7 +2509,8 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
 			       enum dpll_pin_state *state,
 			       struct netlink_ext_ack *extack)
 {
-	struct ice_dpll_pin *p = pin_priv, *parent = parent_pin_priv;
+	struct ice_dpll_pin *parent = parent_pin_priv;
+	struct ice_dpll_pin *p = pin_priv;
 	struct ice_pf *pf = p->pf;
 	int ret = -EINVAL;
 	u32 hw_idx;
@@ -2148,12 +2536,76 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
 	return ret;
 }
 
+/**
+ * ice_dpll_pin_1588_state_on_pin_get - get a state of a 1588 clock pin
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @parent_pin: pin parent pointer
+ * @parent_pin_priv: pin parent priv data pointer passed on pin registration
+ * @state: on success holds pin state on parent pin
+ * @extack: error reporting
+ *
+ * dpll subsystem callback, get a state of a 1588 clock pin.
+ *
+ * Context: Acquires pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - failure
+ */
+static int
+ice_dpll_pin_1588_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
+				   const struct dpll_pin *parent_pin,
+				   void *parent_pin_priv,
+				   enum dpll_pin_state *state,
+				   struct netlink_ext_ack *extack)
+{
+	const struct ice_dpll_pin *parent = parent_pin_priv;
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_pf *pf = p->pf;
+	u32 hw_idx;
+	int ret;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
+	mutex_lock(&pf->dplls.lock);
+	hw_idx = parent->idx - pf->dplls.base_1588_idx;
+	if (hw_idx >= pf->dplls.num_inputs)
+		goto unlock;
+
+	ret = ice_dpll_update_pin_1588_e825c(&pf->hw, p,
+					     (enum ice_synce_clk)hw_idx);
+	if (ret)
+		goto unlock;
+	*state = p->state[hw_idx];
+unlock:
+	mutex_unlock(&pf->dplls.lock);
+
+	return ret;
+}
+
 static const struct dpll_pin_ops ice_dpll_rclk_ops = {
 	.state_on_pin_set = ice_dpll_rclk_state_on_pin_set,
 	.state_on_pin_get = ice_dpll_rclk_state_on_pin_get,
 	.direction_get = ice_dpll_input_direction,
 };
 
+static const struct dpll_pin_ops ice_dpll_pin_1588_ops = {
+	.direction_get = ice_dpll_input_direction,
+	.state_on_pin_get = ice_dpll_pin_1588_state_on_pin_get,
+	.state_on_pin_set = ice_dpll_pin_1588_state_on_pin_set,
+};
+
+static const struct dpll_pin_ops ice_dpll_input_ops_e825c = {
+	.direction_get = ice_dpll_input_direction,
+	.state_on_dpll_get = ice_dpll_pin_state_get_e825c,
+};
+
+static const struct dpll_pin_ops ice_dpll_output_ops_e825c = {
+	.direction_get = ice_dpll_output_direction,
+	.state_on_dpll_get = ice_dpll_pin_state_get_e825c,
+};
+
 static const struct dpll_pin_ops ice_dpll_pin_sma_ops = {
 	.state_on_dpll_set = ice_dpll_sma_pin_state_set,
 	.state_on_dpll_get = ice_dpll_sw_pin_state_get,
@@ -2515,6 +2967,7 @@ ice_dpll_register_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
 
 /**
  * ice_dpll_deinit_direct_pins - deinitialize direct pins
+ * @pf: board private structure
  * @cgu: if cgu is present and controlled by this NIC
  * @pins: pointer to pins array
  * @count: number of pins
@@ -2526,7 +2979,8 @@ ice_dpll_register_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
  * Release pins resources to the dpll subsystem.
  */
 static void
-ice_dpll_deinit_direct_pins(bool cgu, struct ice_dpll_pin *pins, int count,
+ice_dpll_deinit_direct_pins(struct ice_pf *pf, bool cgu,
+			    struct ice_dpll_pin *pins, int count,
 			    const struct dpll_pin_ops *ops,
 			    struct dpll_device *first,
 			    struct dpll_device *second)
@@ -2575,7 +3029,11 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool cgu,
 		if (ret)
 			goto unregister_first;
 	}
-
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
+		ret = ice_dpll_register_pins(first, pins, ops, count);
+		if (ret)
+			goto release_pins;
+	}
 	return 0;
 
 unregister_first:
@@ -2593,10 +3051,25 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool cgu,
  */
 static void ice_dpll_deinit_rclk_pin(struct ice_pf *pf)
 {
+	struct ice_dpll_pin *pin_1588 = &pf->dplls.pin_1588;
 	struct ice_dpll_pin *rclk = &pf->dplls.rclk;
 	struct ice_vsi *vsi = ice_get_main_vsi(pf);
 	struct dpll_pin *parent;
-	int i;
+	u8 i;
+
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825 &&
+	    ice_pf_src_tmr_owned(pf)) {
+		for (i = 0; i < pin_1588->num_parents; i++) {
+			struct dpll_pin *parent =
+				pf->dplls.inputs[pin_1588->parent_idx[i]].pin;
+			if (!parent)
+				continue;
+			dpll_pin_on_pin_unregister(parent, pin_1588->pin,
+						   &ice_dpll_pin_1588_ops,
+						   pin_1588);
+		}
+		dpll_pin_put(pin_1588->pin);
+	}
 
 	for (i = 0; i < rclk->num_parents; i++) {
 		parent = pf->dplls.inputs[rclk->parent_idx[i]].pin;
@@ -2665,6 +3138,64 @@ ice_dpll_init_rclk_pins(struct ice_pf *pf, struct ice_dpll_pin *pin,
 	return ret;
 }
 
+/**
+ * ice_dpll_init_pin_1588 - initialize pin to control clock 1588
+ * @pf: board private structure
+ * @pin: pin to register
+ * @start_idx: on which index shall allocation start in dpll subsystem
+ * @ops: callback ops registered with the pins
+ *
+ * Allocate resource for clock 1588 pin in dpll subsystem. Register the
+ * pin with the parents it has in the info. Register pin with the pf's main vsi
+ * netdev.
+ *
+ * Return:
+ * * 0 - success
+ * * negative - registration failure reason
+ */
+static int
+ice_dpll_init_pin_1588(struct ice_pf *pf, struct ice_dpll_pin *pin,
+		       int start_idx, const struct dpll_pin_ops *ops)
+{
+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+	struct dpll_pin *parent;
+	int ret;
+	u8 i;
+
+	ret = ice_dpll_get_pins(pf, pin, start_idx, ICE_DPLL_PIN_1588_NUM,
+				pf->dplls.clock_id);
+	if (ret)
+		return ret;
+	for (i = 0; i < pf->dplls.pin_1588.num_parents; i++) {
+		parent = pf->dplls.inputs[pf->dplls.pin_1588.parent_idx[i]].pin;
+		if (!parent) {
+			ret = -ENODEV;
+			goto unregister_pins;
+		}
+		ret = dpll_pin_on_pin_register(parent, pf->dplls.pin_1588.pin,
+					       ops, &pf->dplls.pin_1588);
+		if (ret)
+			goto unregister_pins;
+	}
+	if (WARN_ON((!vsi || !vsi->netdev)))
+		return -EINVAL;
+
+	dpll_netdev_pin_set(vsi->netdev, pf->dplls.pin_1588.pin);
+
+	return 0;
+
+unregister_pins:
+	while (i) {
+		parent = pf->dplls.inputs[pf->dplls.pin_1588.parent_idx[--i]].pin;
+		dpll_pin_on_pin_unregister(parent, pf->dplls.pin_1588.pin,
+					   &ice_dpll_pin_1588_ops,
+					   &pf->dplls.pin_1588);
+	}
+	ice_dpll_release_pins(pin, ICE_DPLL_RCLK_NUM_PER_PF);
+
+	return ret;
+}
+
 /**
  * ice_dpll_deinit_pins - deinitialize direct pins
  * @pf: board private structure
@@ -2690,6 +3221,9 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 		ice_dpll_unregister_pins(de->dpll, inputs, &ice_dpll_input_ops,
 					 num_inputs);
 	}
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		ice_dpll_unregister_pins(de->dpll, inputs,
+					 &ice_dpll_input_ops_e825c, num_inputs);
 	ice_dpll_release_pins(inputs, num_inputs);
 	if (cgu) {
 		ice_dpll_unregister_pins(dp->dpll, outputs,
@@ -2697,17 +3231,23 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 		ice_dpll_unregister_pins(de->dpll, outputs,
 					 &ice_dpll_output_ops, num_outputs);
 		ice_dpll_release_pins(outputs, num_outputs);
-		ice_dpll_deinit_direct_pins(cgu, pf->dplls.ufl,
+		ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.ufl,
 					    ICE_DPLL_PIN_SW_NUM,
 					    &ice_dpll_pin_ufl_ops,
 					    pf->dplls.pps.dpll,
 					    pf->dplls.eec.dpll);
-		ice_dpll_deinit_direct_pins(cgu, pf->dplls.sma,
+		ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.sma,
 					    ICE_DPLL_PIN_SW_NUM,
 					    &ice_dpll_pin_sma_ops,
 					    pf->dplls.pps.dpll,
 					    pf->dplls.eec.dpll);
 	}
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
+		ice_dpll_unregister_pins(de->dpll, outputs,
+					 &ice_dpll_output_ops_e825c,
+					 num_outputs);
+		ice_dpll_release_pins(outputs, num_outputs);
+	}
 }
 
 /**
@@ -2724,26 +3264,40 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
  */
 static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 {
+	const struct dpll_pin_ops *output_ops;
+	const struct dpll_pin_ops *input_ops;
 	int ret, count;
 
+	switch (pf->hw.mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
+		input_ops = &ice_dpll_input_ops_e825c;
+		output_ops = &ice_dpll_output_ops_e825c;
+		break;
+	default:
+		input_ops = &ice_dpll_input_ops;
+		output_ops = &ice_dpll_output_ops;
+		break;
+	}
 	ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.inputs, 0,
-					pf->dplls.num_inputs,
-					&ice_dpll_input_ops,
+					pf->dplls.num_inputs, input_ops,
 					pf->dplls.eec.dpll, pf->dplls.pps.dpll);
 	if (ret)
 		return ret;
+
 	count = pf->dplls.num_inputs;
-	if (cgu) {
+
+	if (cgu || pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
 		ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.outputs,
-						count,
-						pf->dplls.num_outputs,
-						&ice_dpll_output_ops,
-						pf->dplls.eec.dpll,
+						count, pf->dplls.num_outputs,
+						output_ops, pf->dplls.eec.dpll,
 						pf->dplls.pps.dpll);
 		if (ret)
 			goto deinit_inputs;
+
 		count += pf->dplls.num_outputs;
-		if (!pf->dplls.generic) {
+
+		if (!pf->dplls.generic &&
+		    pf->hw.mac_type != ICE_MAC_GENERIC_3K_E825) {
 			ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.sma,
 							count,
 							ICE_DPLL_PIN_SW_NUM,
@@ -2752,7 +3306,9 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 							pf->dplls.pps.dpll);
 			if (ret)
 				goto deinit_outputs;
+
 			count += ICE_DPLL_PIN_SW_NUM;
+
 			ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.ufl,
 							count,
 							ICE_DPLL_PIN_SW_NUM,
@@ -2766,30 +3322,39 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 	} else {
 		count += pf->dplls.num_outputs + 2 * ICE_DPLL_PIN_SW_NUM;
 	}
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825 &&
+	    ice_pf_src_tmr_owned(pf)) {
+		ret = ice_dpll_init_pin_1588(pf, &pf->dplls.pin_1588,
+					     count, &ice_dpll_pin_1588_ops);
+		if (ret)
+			goto deinit_outputs;
+	}
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		count += ICE_DPLL_RCLK_NUM_PER_PF;
 	ret = ice_dpll_init_rclk_pins(pf, &pf->dplls.rclk, count + pf->hw.pf_id,
 				      &ice_dpll_rclk_ops);
 	if (ret)
 		goto deinit_ufl;
 
 	return 0;
+
 deinit_ufl:
-	ice_dpll_deinit_direct_pins(cgu, pf->dplls.ufl,
-				    ICE_DPLL_PIN_SW_NUM,
-				    &ice_dpll_pin_ufl_ops,
-				    pf->dplls.pps.dpll, pf->dplls.eec.dpll);
+	ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.ufl, ICE_DPLL_PIN_SW_NUM,
+				    &ice_dpll_pin_ufl_ops, pf->dplls.pps.dpll,
+				    pf->dplls.eec.dpll);
 deinit_sma:
-	ice_dpll_deinit_direct_pins(cgu, pf->dplls.sma,
-				    ICE_DPLL_PIN_SW_NUM,
-				    &ice_dpll_pin_sma_ops,
-				    pf->dplls.pps.dpll, pf->dplls.eec.dpll);
+	ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.sma, ICE_DPLL_PIN_SW_NUM,
+				    &ice_dpll_pin_sma_ops, pf->dplls.pps.dpll,
+				    pf->dplls.eec.dpll);
 deinit_outputs:
-	ice_dpll_deinit_direct_pins(cgu, pf->dplls.outputs,
+	ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.outputs,
 				    pf->dplls.num_outputs,
-				    &ice_dpll_output_ops, pf->dplls.pps.dpll,
+				    output_ops, pf->dplls.pps.dpll,
 				    pf->dplls.eec.dpll);
 deinit_inputs:
-	ice_dpll_deinit_direct_pins(cgu, pf->dplls.inputs, pf->dplls.num_inputs,
-				    &ice_dpll_input_ops, pf->dplls.pps.dpll,
+	ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.inputs,
+				    pf->dplls.num_inputs,
+				    input_ops, pf->dplls.pps.dpll,
 				    pf->dplls.eec.dpll);
 	return ret;
 }
@@ -2800,13 +3365,14 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
  * @d: pointer to ice_dpll
  * @cgu: if cgu is present and controlled by this NIC
  *
- * If cgu is owned unregister the dpll from dpll subsystem.
+ * If cgu is owned or device is e825c, unregister the dpll from dpll subsystem.
  * Release resources of dpll device from dpll subsystem.
  */
 static void
 ice_dpll_deinit_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu)
 {
-	if (cgu)
+	if (cgu || (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825 &&
+		    ice_pf_src_tmr_owned(pf)))
 		dpll_device_unregister(d->dpll, &ice_dpll_ops, d);
 	dpll_device_put(d->dpll);
 }
@@ -2830,7 +3396,7 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
 		   enum dpll_type type)
 {
 	u64 clock_id = pf->dplls.clock_id;
-	int ret;
+	int ret = 0;
 
 	d->dpll = dpll_device_get(clock_id, d->dpll_idx, THIS_MODULE);
 	if (IS_ERR(d->dpll)) {
@@ -2840,16 +3406,16 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
 		return ret;
 	}
 	d->pf = pf;
-	if (cgu) {
-		ice_dpll_update_state(pf, d, true);
+
+	if (cgu || (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825 &&
+		    ice_pf_src_tmr_owned(pf))) {
+		if (cgu)
+			ice_dpll_update_state(pf, d, true);
 		ret = dpll_device_register(d->dpll, type, &ice_dpll_ops, d);
-		if (ret) {
+		if (ret)
 			dpll_device_put(d->dpll);
-			return ret;
-		}
 	}
-
-	return 0;
+	return ret;
 }
 
 /**
@@ -2973,6 +3539,52 @@ static int ice_dpll_init_info_pins_generic(struct ice_pf *pf, bool input)
 	return ret;
 }
 
+/**
+ * ice_dpll_init_info_direct_pins_e825c - initializes direct pins info
+ * @pf: board private structure
+ * @pin_type: type of pins being initialized
+ *
+ * Init information for directly connected pins, cache them in pf's pins
+ * structures.
+ *
+ * Return:
+ * * 0 - success
+ * * negative - init failure reason
+ */
+static int ice_dpll_init_info_direct_pins_e825c(struct ice_pf *pf,
+						enum ice_dpll_pin_type pin_type)
+{
+	struct ice_hw *hw = &pf->hw;
+	struct ice_dpll_pin *pins;
+	int num_pins, i, ret = 0;
+	unsigned long caps = 0;
+	bool input;
+
+	switch (pin_type) {
+	case ICE_DPLL_PIN_TYPE_INPUT:
+		pins = pf->dplls.inputs;
+		num_pins = pf->dplls.num_inputs;
+		input = true;
+		break;
+	case ICE_DPLL_PIN_TYPE_OUTPUT:
+		pins = pf->dplls.outputs;
+		num_pins = pf->dplls.num_outputs;
+		input = false;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	for (i = 0; i < num_pins; i++) {
+		pins[i].idx = i;
+		pins[i].prop.board_label = ice_cgu_get_pin_name(hw, i, input);
+		pins[i].prop.type = ice_cgu_get_pin_type(hw, i, input);
+		pins[i].prop.capabilities = caps;
+		pins[i].pf = pf;
+	}
+	return ret;
+}
+
 /**
  * ice_dpll_init_info_direct_pins - initializes direct pins info
  * @pf: board private structure
@@ -3059,6 +3671,32 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 	return ret;
 }
 
+/**
+ * ice_dpll_init_info_pin_on_pin_e825c - initializes rclk pin information
+ * @pf: board private structure
+ *
+ * Init information for rclk pin, cache them in pf->dplls.rclk and
+ * pf->dplls.pin_1588.
+ *
+ * Return:
+ * * 0 - success
+ */
+static int ice_dpll_init_info_pin_on_pin_e825c(struct ice_pf *pf)
+{
+	struct ice_dpll_pin *pin_1588 = &pf->dplls.pin_1588;
+	struct ice_dpll_pin *rclk_pin = &pf->dplls.rclk;
+
+	rclk_pin->prop.type = DPLL_PIN_TYPE_SYNCE_ETH_PORT;
+	rclk_pin->prop.capabilities |= DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
+	rclk_pin->pf = pf;
+	pin_1588->prop.type = DPLL_PIN_TYPE_SYNCE_ETH_PORT;
+	pin_1588->prop.capabilities |= DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
+	pin_1588->prop.board_label = ice_dpll_pin_1588;
+	pin_1588->pf = pf;
+
+	return 0;
+}
+
 /**
  * ice_dpll_init_info_rclk_pin - initializes rclk pin information
  * @pf: board private structure
@@ -3177,9 +3815,15 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum ice_dpll_pin_type pin_type)
 	switch (pin_type) {
 	case ICE_DPLL_PIN_TYPE_INPUT:
 	case ICE_DPLL_PIN_TYPE_OUTPUT:
-		return ice_dpll_init_info_direct_pins(pf, pin_type);
+		if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+			return ice_dpll_init_info_direct_pins_e825c(pf, pin_type);
+		else
+			return ice_dpll_init_info_direct_pins(pf, pin_type);
 	case ICE_DPLL_PIN_TYPE_RCLK_INPUT:
-		return ice_dpll_init_info_rclk_pin(pf);
+		if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+			return ice_dpll_init_info_pin_on_pin_e825c(pf);
+		else
+			return ice_dpll_init_info_rclk_pin(pf);
 	case ICE_DPLL_PIN_TYPE_SOFTWARE:
 		return ice_dpll_init_info_sw_pins(pf);
 	default:
@@ -3201,6 +3845,77 @@ static void ice_dpll_deinit_info(struct ice_pf *pf)
 	kfree(pf->dplls.pps.input_prio);
 }
 
+/**
+ * ice_dpll_init_info_e825c - prepare pf's dpll information structure for e825c
+ * device
+ * @pf: board private structure
+ *
+ * Acquire (from HW) and set basic dpll information (on pf->dplls struct).
+ *
+ * Return:
+ * * 0 - success
+ * * negative - init failure reason
+ */
+static int ice_dpll_init_info_e825c(struct ice_pf *pf)
+{
+	struct ice_dplls *d = &pf->dplls;
+	struct ice_dpll *de = &d->eec;
+	int ret = 0;
+	int i;
+
+	d->clock_id = ice_generate_clock_id(pf);
+	d->num_inputs = ICE_DPLL_PARENT_PIN_NUM_E825;
+	d->num_outputs = ICE_DPLL_PARENT_PIN_NUM_E825;
+	de->dpll_state = DPLL_LOCK_STATUS_LOCKED;
+
+	d->inputs = kcalloc(d->num_inputs, sizeof(*d->inputs), GFP_KERNEL);
+	if (!d->inputs)
+		return -ENOMEM;
+
+	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_INPUT);
+	if (ret)
+		goto deinit_info;
+
+	d->outputs = kcalloc(d->num_outputs, sizeof(*d->outputs), GFP_KERNEL);
+	if (!d->outputs)
+		goto deinit_info;
+
+	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_OUTPUT);
+	if (ret)
+		goto deinit_info;
+
+	ret = ice_get_cgu_rclk_pin_info(&pf->hw, &d->base_rclk_idx,
+					&pf->dplls.rclk.num_parents);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < pf->dplls.rclk.num_parents; i++)
+		pf->dplls.rclk.parent_idx[i] = d->base_rclk_idx + i;
+
+	d->base_1588_idx = ICE_E825_1588_BASE_IDX;
+	pf->dplls.pin_1588.num_parents = ICE_DPLL_PARENT_PIN_NUM_E825;
+
+	if (ice_pf_src_tmr_owned(pf)) {
+		for (i = 0; i < pf->dplls.pin_1588.num_parents; i++)
+			pf->dplls.pin_1588.parent_idx[i] = d->base_1588_idx + i;
+	}
+	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_RCLK_INPUT);
+	if (ret)
+		return ret;
+	de->mode = DPLL_MODE_MANUAL;
+	dev_dbg(ice_pf_to_dev(pf),
+		"%s - success, inputs:%u, outputs:%u, rclk-parents:%u, pin_1588-parents:%u\n",
+		 __func__, d->num_inputs, d->num_outputs, d->rclk.num_parents,
+		 d->pin_1588.num_parents);
+	return 0;
+deinit_info:
+	dev_err(ice_pf_to_dev(pf),
+		"%s - fail: d->inputs:%p, d->outputs:%p\n",
+		__func__, d->inputs, d->outputs);
+	ice_dpll_deinit_info(pf);
+	return ret;
+}
+
 /**
  * ice_dpll_init_info - prepare pf's dpll information structure
  * @pf: board private structure
@@ -3320,7 +4035,8 @@ void ice_dpll_deinit(struct ice_pf *pf)
 		ice_dpll_deinit_worker(pf);
 
 	ice_dpll_deinit_pins(pf, cgu);
-	ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
+	if (pf->hw.mac_type != ICE_MAC_GENERIC_3K_E825)
+		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
 	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
 	ice_dpll_deinit_info(pf);
 	mutex_destroy(&pf->dplls.lock);
@@ -3343,25 +4059,33 @@ void ice_dpll_init(struct ice_pf *pf)
 	int err = 0;
 
 	mutex_init(&d->lock);
-	err = ice_dpll_init_info(pf, cgu);
+
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		err = ice_dpll_init_info_e825c(pf);
+	else
+		err = ice_dpll_init_info(pf, cgu);
+
 	if (err)
 		goto err_exit;
+
 	err = ice_dpll_init_dpll(pf, &pf->dplls.eec, cgu, DPLL_TYPE_EEC);
 	if (err)
 		goto deinit_info;
-	err = ice_dpll_init_dpll(pf, &pf->dplls.pps, cgu, DPLL_TYPE_PPS);
-	if (err)
-		goto deinit_eec;
+	if (pf->hw.mac_type != ICE_MAC_GENERIC_3K_E825) {
+		err = ice_dpll_init_dpll(pf, &pf->dplls.pps, cgu,
+					 DPLL_TYPE_PPS);
+		if (err)
+			goto deinit_eec;
+	}
 	err = ice_dpll_init_pins(pf, cgu);
 	if (err)
 		goto deinit_pps;
-	if (cgu) {
+	if (cgu && pf->hw.mac_type != ICE_MAC_GENERIC_3K_E825) {
 		err = ice_dpll_init_worker(pf);
 		if (err)
 			goto deinit_pins;
 	}
 	set_bit(ICE_FLAG_DPLL, pf->flags);
-
 	return;
 
 deinit_pins:
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index 10cd12d70972..300688a55811 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -24,7 +24,7 @@ enum ice_dpll_pin_sw {
  * @pin: dpll pin structure
  * @pf: pointer to pf, which has registered the dpll_pin
  * @idx: ice pin private idx
- * @num_parents: hols number of parent pins
+ * @num_parents: hold number of parent pins
  * @parent_idx: hold indexes of parent pins
  * @flags: pin flags returned from HW
  * @state: state of a pin
@@ -110,6 +110,7 @@ struct ice_dplls {
 	struct ice_dpll pps;
 	struct ice_dpll_pin *inputs;
 	struct ice_dpll_pin *outputs;
+	struct ice_dpll_pin pin_1588;
 	struct ice_dpll_pin sma[ICE_DPLL_PIN_SW_NUM];
 	struct ice_dpll_pin ufl[ICE_DPLL_PIN_SW_NUM];
 	struct ice_dpll_pin rclk;
@@ -117,6 +118,7 @@ struct ice_dplls {
 	u8 num_outputs;
 	u8 sma_data;
 	u8 base_rclk_idx;
+	u8 base_1588_idx;
 	int cgu_state_acq_err_num;
 	u64 clock_id;
 	s32 input_phase_adj_max;
@@ -133,3 +135,23 @@ static inline void ice_dpll_deinit(struct ice_pf *pf) { }
 #endif
 
 #endif
+
+#define ICE_CGU_R10				0x28
+#define ICE_CGU_R10_SYNCE_CLKO_SEL		GENMASK(8, 5)
+#define ICE_CGU_R10_SYNCE_CLKODIV_M1		GENMASK(13, 9)
+#define ICE_CGU_R10_SYNCE_CLKODIV_LOAD		BIT(14)
+#define ICE_CGU_R10_SYNCE_DCK_RST		BIT(15)
+#define ICE_CGU_R10_SYNCE_ETHCLKO_SEL		GENMASK(18, 16)
+#define ICE_CGU_R10_SYNCE_ETHDIV_M1		GENMASK(23, 19)
+#define ICE_CGU_R10_SYNCE_ETHDIV_LOAD		BIT(24)
+#define ICE_CGU_R10_SYNCE_DCK2_RST		BIT(25)
+#define ICE_CGU_R10_SYNCE_S_REF_CLK		GENMASK(31, 27)
+
+#define ICE_CGU_R11				0x2C
+#define ICE_CGU_R11_SYNCE_S_BYP_CLK		GENMASK(6, 1)
+
+#define ICE_CGU_BYPASS_MUX_OFFSET_E825C		3
+
+#define SET_PIN_STATE(_pin, _id, _condition) \
+	_pin->state[_id] = (_condition) ? DPLL_PIN_STATE_CONNECTED : \
+			    DPLL_PIN_STATE_DISCONNECTED
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3b2233a84f2e..07d4d135795b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4814,7 +4814,8 @@ static void ice_init_features(struct ice_pf *pf)
 		ice_gnss_init(pf);
 
 	if (ice_is_feature_supported(pf, ICE_F_CGU) ||
-	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK))
+	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK) ||
+	    pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
 		ice_dpll_init(pf);
 
 	/* Note: Flow director init failure is non-fatal to load */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index ba97a52917af..2a1c847dbb9a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -131,6 +131,16 @@ static const struct ice_cgu_pin_desc ice_e823_zl_cgu_outputs[] = {
 	{ "NONE",	   ZL_OUT5, 0, 0 },
 };
 
+static const struct ice_cgu_pin_desc ice_e825c_inputs[] = {
+	{ "CLK_IN_0",	 0, DPLL_PIN_TYPE_MUX, 0, 0},
+	{ "CLK_IN_1",	 0, DPLL_PIN_TYPE_MUX, 0, 0},
+};
+
+static const struct ice_cgu_pin_desc ice_e825c_outputs[] = {
+	{ "CLK_OUT_0",	 0, DPLL_PIN_TYPE_SYNCE_ETH_PORT, 0, 0},
+	{ "CLK_OUT_1",	 0, DPLL_PIN_TYPE_SYNCE_ETH_PORT, 0, 0},
+};
+
 /* Low level functions for interacting with and managing the device clock used
  * for the Precision Time Protocol.
  *
@@ -5596,7 +5606,7 @@ int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 }
 
 /**
- * ice_cgu_get_pin_desc_e823 - get pin description array
+ * ice_get_pin_desc_e82x - get pin description array
  * @hw: pointer to the hw struct
  * @input: if request is done against input or output pin
  * @size: number of inputs/outputs
@@ -5604,9 +5614,19 @@ int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
  * Return: pointer to pin description array associated to given hw.
  */
 static const struct ice_cgu_pin_desc *
-ice_cgu_get_pin_desc_e823(struct ice_hw *hw, bool input, int *size)
+ice_get_pin_desc_e82x(struct ice_hw *hw, bool input, int *size)
 {
 	static const struct ice_cgu_pin_desc *t;
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825) {
+		if (input) {
+			t = ice_e825c_inputs;
+			*size = ARRAY_SIZE(ice_e825c_inputs);
+			return t;
+		}
+		t = ice_e825c_outputs;
+		*size = ARRAY_SIZE(ice_e825c_outputs);
+		return t;
+	}
 
 	if (hw->cgu_part_number ==
 	    ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032) {
@@ -5676,7 +5696,11 @@ ice_cgu_get_pin_desc(struct ice_hw *hw, bool input, int *size)
 	case ICE_DEV_ID_E823C_QSFP:
 	case ICE_DEV_ID_E823C_SFP:
 	case ICE_DEV_ID_E823C_SGMII:
-		t = ice_cgu_get_pin_desc_e823(hw, input, size);
+	case ICE_DEV_ID_E825C_BACKPLANE:
+	case ICE_DEV_ID_E825C_QSFP:
+	case ICE_DEV_ID_E825C_SFP:
+	case ICE_DEV_ID_E825C_SGMII:
+		t = ice_get_pin_desc_e82x(hw, input, size);
 		break;
 	default:
 		break;
@@ -5724,7 +5748,6 @@ enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input)
 
 	if (pin >= t_size)
 		return 0;
-
 	return t[pin].type;
 }
 
@@ -5897,7 +5920,14 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num)
 			*base_idx = SI_REF1P;
 		else
 			ret = -ENODEV;
-
+		break;
+	case ICE_DEV_ID_E825C_BACKPLANE:
+	case ICE_DEV_ID_E825C_QSFP:
+	case ICE_DEV_ID_E825C_SFP:
+	case ICE_DEV_ID_E825C_SGMII:
+		*pin_num = 2;
+		*base_idx = 0;
+		ret = 0;
 		break;
 	default:
 		ret = -ENODEV;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 7a952681b973..80456a7d8157 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -210,6 +210,8 @@ enum ice_phy_rclk_pins {
 #define ICE_E82X_RCLK_PINS_NUM		(ICE_RCLKA_PIN + 1)
 #define E810T_CGU_INPUT_C827(_phy, _pin) ((_phy) * ICE_E810_RCLK_PINS_NUM + \
 					  (_pin) + ZL_REF1P)
+#define ICE_E825_1588_BASE_IDX		0
+#define ICE_DPLL_PARENT_PIN_NUM_E825	2
 
 enum ice_zl_cgu_in_pins {
 	ZL_REF0P = 0,
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.h b/drivers/net/ethernet/intel/ice/ice_tspll.h
index 609bbbc04d2b..b84f5a539388 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.h
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.h
@@ -18,6 +18,13 @@ struct ice_tspll_params_e82x {
 	u32 frac_n_div;
 };
 
+#define ICE_CGU_NET_REF_CLK0		0x0
+#define ICE_CGU_NCOCLK			0x2
+#define ICE_CGU_REF_CLK_BYP0		0x5
+#define ICE_CGU_REF_CLK_BYP0_DIV	0x0
+#define ICE_CGU_REF_CLK_BYP1		0x4
+#define ICE_CGU_REF_CLK_BYP1_DIV	0x1
+
 #define ICE_TSPLL_CK_REFCLKFREQ_E825		0x1F
 #define ICE_TSPLL_NDIVRATIO_E825		5
 #define ICE_TSPLL_FBDIV_INTGR_E825		256
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index b1eda91181b9..e7748970fa5a 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -346,6 +346,12 @@ enum ice_clk_src {
 	NUM_ICE_CLK_SRC
 };
 
+enum ice_synce_clk {
+	ICE_SYNCE_CLK0,
+	ICE_SYNCE_CLK1,
+	ICE_SYNCE_CLK_NUM
+};
+
 struct ice_ts_func_info {
 	/* Function specific info */
 	enum ice_tspll_freq time_ref;

base-commit: daa2036c311e81ee32f8cccc8257e3dfd4985f79
prerequisite-patch-id: fb0b883471a7b99140051b6294cb7cee79cddfe6
prerequisite-patch-id: 48b7e41983471645b6838e6af1cc8749f6f73f23
prerequisite-patch-id: 18e02ec73227545a53f24c6d46021e8ea6e4a6b8
prerequisite-patch-id: 4f21d76286bda614ae8d1c4c99fe5f93671473c8
prerequisite-patch-id: 3d5be2816f26075722dc83a2b1241c24f470067a
prerequisite-patch-id: 4f37a68c61a798a8b46835f30fe9cdc69879480d
prerequisite-patch-id: 7076c3f93e781e647d253f355ce279089c713aea
prerequisite-patch-id: 867693b8f57ce20416dee6f90cf53a856360758e
prerequisite-patch-id: 5212c0d9e577bf24383227a92d6f433271d51618
prerequisite-patch-id: d7eab1346119888217684cbf7d18da1c45b52f51
-- 
2.31.1


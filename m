Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9D7AFB186
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jul 2025 12:45:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31B9160BB2;
	Mon,  7 Jul 2025 10:45:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i0Ypcq0xYqSy; Mon,  7 Jul 2025 10:45:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F2D360DD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751885139;
	bh=S4PvXkLk/wapnVxmYiMGbSe7SG6uEPYv0EnRY2tI9JE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VsDHnKgU6VdJYSyNsXa40SdkYjnLEfqK3RmT7bKGsbjfbqYZJxUIgctgSwZvKDURl
	 LaCVjWLd9D/Vch3KE66xLD1vT9XoS1VhzycJ4XG361tbRouixhaZzSXtuUXMKCbs3P
	 fz8/w0b0sLxm96TN414XcB03YNV28sbCv5XWaejEckPdT3f0JVra4rDYMUHbTOI76B
	 uRUudWEmtPhgjP1d9CDBkGy3hfRe5Gh1g5zx1qK/v5iY29LLUlcFqHDQCg3X+QftjR
	 WU118V3A2v8ZX1ysQuWuIXdOEWt4wWFqboxf9jbEYON2MJL4F7QA10RkWPbg9YkbtN
	 dbVunUUlQztKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F2D360DD9;
	Mon,  7 Jul 2025 10:45:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C440D12E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 10:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FFF640A19
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 10:45:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2wTUM4uZblMw for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 10:45:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 86A48409FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86A48409FB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86A48409FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 10:45:35 +0000 (UTC)
X-CSE-ConnectionGUID: 7nM563G+T8qa3PmiBC8gSQ==
X-CSE-MsgGUID: BJot6AacTuuGw7q2F6HzmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="53223064"
X-IronPort-AV: E=Sophos;i="6.16,294,1744095600"; d="scan'208";a="53223064"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 03:45:34 -0700
X-CSE-ConnectionGUID: 0mqum7A9RQSB2SIwWoYhJA==
X-CSE-MsgGUID: kENnV+P4QxaTmtZvrrgSYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,294,1744095600"; d="scan'208";a="186202794"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa002.jf.intel.com with ESMTP; 07 Jul 2025 03:45:31 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Jul 2025 12:44:33 +0200
Message-Id: <20250707104433.2231450-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751885136; x=1783421136;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tjIMAwOH3Z00S3apAFSoy9qg006LGpiD4e7lmtCRD58=;
 b=C9UbTfq67EljEAy260RSVXY/vHDVwBbqXnyRfAk1kdcDC0imYEgS42NK
 AzWNzOzdZSfz/Gjol/Ahy/i/GmWpBAiSJ5zvq53Mp3RO1CYfPxII0WjfS
 jHqVGiqpJIY3nZZRBDZeg+y4LmwpFrCGIK6aP1bx1rXRuVIQw2RGh5pIM
 QNRGrjNSOXLqU53XJeAgOcuD8ZfQw6OG7ov48lLyGKi35gwtJU+6p+7Gc
 1MLD/T5/NJuSE6jeECa2weeXhRzfiYku9q9NznDAgnIP6qom3VLVY0ik9
 bz3I0m0DynSkdHhvuoUhCx7aMacwzL3uNr41fZNaHOB0P97XabWPgMpi+
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C9UbTfq6
Subject: [Intel-wired-lan] [PATCH v5 iwl-next] ice: add recovery clock and
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
Cc: netdev@vger.kernel.org, Przemyslaw Korba <przemyslaw.korba@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Milena Olech <milena.olech@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Korba <przemyslaw.korba@intel.com>

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
Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
v5:
- fix lkp warning about ice_e825c_inputs definition
v4:
- rebased
- fix docstring for ice_dpll_cfg_synce_ethdiv_e825c (removed 'divider'
  argument)
v3:
- rebased
- removed netdev reference in 1588 pin initialization
- improved error path in ice_dpll_init_pins
v2:
- rebased, addressed comments from v1 (kdoc updated, removed unrelated
  code changes, fixed undefined 'ret' code in error patchs, use feature
  flag instead of MAC type chacking)
- use ptp.ptp_port to create pins indexes instead of PF ID
- removed CLK_OUT/output pins definitions as unused
- removed redundant dpll_netdev_pin_set call on 1588 pin
- removed checkpatch warning about SET_PIN_STATE macro (parenthesis
  added)
---
 drivers/net/ethernet/intel/ice/ice_dpll.c   | 863 ++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dpll.h   |  26 +-
 drivers/net/ethernet/intel/ice/ice_lib.c    |   3 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  35 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   2 +
 drivers/net/ethernet/intel/ice/ice_tspll.h  |   7 +
 drivers/net/ethernet/intel/ice/ice_type.h   |   6 +
 7 files changed, 879 insertions(+), 63 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 53b54e395a2e..e0ba78d7e17e 100644
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
@@ -74,6 +75,7 @@ static const char * const pin_type_name[] = {
 
 static const char * const ice_dpll_sw_pin_sma[] = { "SMA1", "SMA2" };
 static const char * const ice_dpll_sw_pin_ufl[] = { "U.FL1", "U.FL2" };
+static const char ice_dpll_pin_1588[] = "pin_1588";
 
 static const struct dpll_pin_frequency ice_esync_range[] = {
 	DPLL_PIN_FREQUENCY_RANGE(0, DPLL_PIN_FREQUENCY_1_HZ),
@@ -528,6 +530,117 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
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
+	int err;
+	u32 reg;
+
+	if (pf->dplls.rclk.num_parents > ICE_SYNCE_CLK_NUM)
+		return -EINVAL;
+
+	err = ice_read_cgu_reg(&pf->hw, ICE_CGU_R10, &reg);
+	if (err)
+		return err;
+	rclk_bits = FIELD_GET(ICE_CGU_R10_SYNCE_S_REF_CLK, reg);
+	SET_PIN_STATE(pin, ICE_SYNCE_CLK0, rclk_bits ==
+		     (pf->ptp.port.port_num + ICE_CGU_BYPASS_MUX_OFFSET_E825C));
+
+	err = ice_read_cgu_reg(&pf->hw, ICE_CGU_R11, &reg);
+	if (err)
+		return err;
+	rclk_bits = FIELD_GET(ICE_CGU_R11_SYNCE_S_BYP_CLK, reg);
+	SET_PIN_STATE(pin, ICE_SYNCE_CLK1, rclk_bits ==
+		     (pf->ptp.port.port_num + ICE_CGU_BYPASS_MUX_OFFSET_E825C));
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
+	int ret;
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
+	return 0;
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
+	int err;
+	u32 reg;
+
+	switch (parent) {
+	case ICE_SYNCE_CLK0:
+		err = ice_read_cgu_reg(hw, ICE_CGU_R10, &reg);
+		if (err)
+			return err;
+		bits_clk = FIELD_GET(ICE_CGU_R10_SYNCE_S_REF_CLK, reg);
+		break;
+	case ICE_SYNCE_CLK1:
+		err = ice_read_cgu_reg(hw, ICE_CGU_R11, &reg);
+		if (err)
+			return err;
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
@@ -668,22 +781,14 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
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
@@ -1021,6 +1126,33 @@ ice_dpll_pin_state_get(const struct dpll_pin *pin, void *pin_priv,
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
@@ -1842,6 +1974,228 @@ ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
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
+	int err;
+	u32 r10;
+
+	err = ice_read_cgu_reg(hw, ICE_CGU_R10, &r10);
+	if (err)
+		return err;
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
+		err = ice_read_cgu_reg(hw, ICE_CGU_R11, &val);
+		if (err)
+			return err;
+		val &= ~ICE_CGU_R11_SYNCE_S_BYP_CLK;
+		val |= FIELD_PREP(ICE_CGU_R11_SYNCE_S_BYP_CLK, first_mux);
+		err = ice_write_cgu_reg(hw, ICE_CGU_R11, val);
+		if (err)
+			return err;
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
+	err = ice_write_cgu_reg(hw, ICE_CGU_R10, r10);
+	if (err)
+		return err;
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
+	err = ice_read_cgu_reg(hw, ICE_CGU_R10, &val);
+	if (err)
+		return err;
+
+	/* programmable divider value (from 2 to 16) minus 1 for ETHCLKOUT */
+	switch (output) {
+	case ICE_SYNCE_CLK0:
+		val &= ~(ICE_CGU_R10_SYNCE_ETHDIV_M1 |
+			 ICE_CGU_R10_SYNCE_ETHDIV_LOAD);
+		val |= FIELD_PREP(ICE_CGU_R10_SYNCE_ETHDIV_M1, divider - 1);
+		err = ice_write_cgu_reg(hw, ICE_CGU_R10, val);
+		if (err)
+			return err;
+		val |= ICE_CGU_R10_SYNCE_ETHDIV_LOAD;
+		break;
+	case ICE_SYNCE_CLK1:
+		val &= ~(ICE_CGU_R10_SYNCE_CLKODIV_M1 |
+			 ICE_CGU_R10_SYNCE_CLKODIV_LOAD);
+		val |= FIELD_PREP(ICE_CGU_R10_SYNCE_CLKODIV_M1, divider - 1);
+		err = ice_write_cgu_reg(hw, ICE_CGU_R10, val);
+		if (err)
+			return err;
+		val |= ICE_CGU_R10_SYNCE_CLKODIV_LOAD;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	err = ice_write_cgu_reg(hw, ICE_CGU_R10, val);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+/**
+ * ice_dpll_synce_update_e825c - setting PHY recovered clock pins on e825c
+ * @hw: Pointer to the HW struct
+ * @ena: true if enable, false in disable
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
+		output, str_enabled_disabled(ena));
+
+	return 0;
+}
+
 /**
  * ice_dpll_output_esync_set - callback for setting embedded sync
  * @pin: pointer to a pin
@@ -2289,9 +2643,12 @@ ice_dpll_rclk_state_on_pin_set(const struct dpll_pin *pin, void *pin_priv,
 	struct ice_dpll_pin *p = pin_priv, *parent = parent_pin_priv;
 	bool enable = state == DPLL_PIN_STATE_CONNECTED;
 	struct ice_pf *pf = p->pf;
+	struct ice_hw *hw;
 	int ret = -EINVAL;
 	u32 hw_idx;
 
+	hw = &pf->hw;
+
 	if (ice_dpll_is_reset(pf, extack))
 		return -EBUSY;
 
@@ -2307,13 +2664,19 @@ ice_dpll_rclk_state_on_pin_set(const struct dpll_pin *pin, void *pin_priv,
 				   p->idx, state, parent->idx);
 		goto unlock;
 	}
-	ret = ice_aq_set_phy_rec_clk_out(&pf->hw, hw_idx, enable,
-					 &p->freq);
+
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
+		ret = ice_dpll_synce_update_e825c(hw, enable,
+						  pf->ptp.port.port_num,
+						  (enum ice_synce_clk)hw_idx);
+	else
+		ret = ice_aq_set_phy_rec_clk_out(hw, hw_idx, enable,
+						 &p->freq);
 	if (ret)
 		NL_SET_ERR_MSG_FMT(extack,
 				   "err:%d %s failed to set pin state:%u for pin:%u on parent:%u",
 				   ret,
-				   libie_aq_str(pf->hw.adminq.sq_last_status),
+				   libie_aq_str(hw->adminq.sq_last_status),
 				   state, p->idx, parent->idx);
 unlock:
 	mutex_unlock(&pf->dplls.lock);
@@ -2321,6 +2684,59 @@ ice_dpll_rclk_state_on_pin_set(const struct dpll_pin *pin, void *pin_priv,
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
+	int ret = -EINVAL;
+	u32 hw_idx;
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
+	ret = ice_dpll_cfg_bypass_mux_e825c(&pf->hw, ena,
+					    pf->ptp.port.port_num,
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
@@ -2370,12 +2786,71 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
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
+	int ret = -EINVAL;
+	u32 hw_idx;
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
 static const struct dpll_pin_ops ice_dpll_pin_sma_ops = {
 	.state_on_dpll_set = ice_dpll_sma_pin_state_set,
 	.state_on_dpll_get = ice_dpll_sw_pin_state_get,
@@ -2944,6 +3419,7 @@ ice_dpll_register_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
 
 /**
  * ice_dpll_deinit_direct_pins - deinitialize direct pins
+ * @pf: board private structure
  * @cgu: if cgu is present and controlled by this NIC
  * @pins: pointer to pins array
  * @count: number of pins
@@ -2955,7 +3431,8 @@ ice_dpll_register_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
  * Release pins resources to the dpll subsystem.
  */
 static void
-ice_dpll_deinit_direct_pins(bool cgu, struct ice_dpll_pin *pins, int count,
+ice_dpll_deinit_direct_pins(struct ice_pf *pf, bool cgu,
+			    struct ice_dpll_pin *pins, int count,
 			    const struct dpll_pin_ops *ops,
 			    struct dpll_device *first,
 			    struct dpll_device *second)
@@ -3004,7 +3481,11 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool cgu,
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
@@ -3014,6 +3495,31 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool cgu,
 	return ret;
 }
 
+/**
+ * ice_dpll_deinit_pin_1588 - release 1588 pin resources
+ * @pf: board private structure
+ *
+ * Deregister 1588 pin from parent pins and release resources in dpll
+ * subsystem.
+ */
+static void ice_dpll_deinit_pin_1588(struct ice_pf *pf)
+{
+	struct ice_dpll_pin *pin_1588 = &pf->dplls.pin_1588;
+	struct dpll_pin *parent;
+	int i;
+
+	for (i = 0; i < pin_1588->num_parents; i++) {
+		parent = pf->dplls.inputs[pin_1588->parent_idx[i]].pin;
+
+		if (!parent)
+			continue;
+		dpll_pin_on_pin_unregister(parent, pin_1588->pin,
+					   &ice_dpll_pin_1588_ops,
+					   pin_1588);
+	}
+
+	dpll_pin_put(pin_1588->pin);
+}
 /**
  * ice_dpll_deinit_rclk_pin - release rclk pin resources
  * @pf: board private structure
@@ -3025,7 +3531,11 @@ static void ice_dpll_deinit_rclk_pin(struct ice_pf *pf)
 	struct ice_dpll_pin *rclk = &pf->dplls.rclk;
 	struct ice_vsi *vsi = ice_get_main_vsi(pf);
 	struct dpll_pin *parent;
-	int i;
+	u8 i;
+
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825 &&
+	    ice_pf_src_tmr_owned(pf))
+		ice_dpll_deinit_pin_1588(pf);
 
 	for (i = 0; i < rclk->num_parents; i++) {
 		parent = pf->dplls.inputs[rclk->parent_idx[i]].pin;
@@ -3094,6 +3604,59 @@ ice_dpll_init_rclk_pins(struct ice_pf *pf, struct ice_dpll_pin *pin,
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
@@ -3119,6 +3682,9 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 		ice_dpll_unregister_pins(de->dpll, inputs, &ice_dpll_input_ops,
 					 num_inputs);
 	}
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		ice_dpll_unregister_pins(de->dpll, inputs,
+					 &ice_dpll_input_ops_e825c, num_inputs);
 	ice_dpll_release_pins(inputs, num_inputs);
 	if (cgu) {
 		ice_dpll_unregister_pins(dp->dpll, outputs,
@@ -3127,12 +3693,12 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 					 &ice_dpll_output_ops, num_outputs);
 		ice_dpll_release_pins(outputs, num_outputs);
 		if (!pf->dplls.generic) {
-			ice_dpll_deinit_direct_pins(cgu, pf->dplls.ufl,
+			ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.ufl,
 						    ICE_DPLL_PIN_SW_NUM,
 						    &ice_dpll_pin_ufl_ops,
 						    pf->dplls.pps.dpll,
 						    pf->dplls.eec.dpll);
-			ice_dpll_deinit_direct_pins(cgu, pf->dplls.sma,
+			ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.sma,
 						    ICE_DPLL_PIN_SW_NUM,
 						    &ice_dpll_pin_sma_ops,
 						    pf->dplls.pps.dpll,
@@ -3155,26 +3721,40 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
  */
 static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 {
+	const struct dpll_pin_ops *output_ops;
+	const struct dpll_pin_ops *input_ops;
 	int ret, count;
 
+	switch (pf->hw.mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
+		input_ops = &ice_dpll_input_ops_e825c;
+		output_ops = NULL;
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
@@ -3183,7 +3763,9 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 							pf->dplls.pps.dpll);
 			if (ret)
 				goto deinit_outputs;
+
 			count += ICE_DPLL_PIN_SW_NUM;
+
 			ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.ufl,
 							count,
 							ICE_DPLL_PIN_SW_NUM,
@@ -3205,30 +3787,44 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 	} else {
 		count += pf->dplls.num_outputs + 2 * ICE_DPLL_PIN_SW_NUM;
 	}
-	ret = ice_dpll_init_rclk_pins(pf, &pf->dplls.rclk, count + pf->hw.pf_id,
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825 &&
+	    ice_pf_src_tmr_owned(pf)) {
+		ret = ice_dpll_init_pin_1588(pf, &pf->dplls.pin_1588,
+					     count, &ice_dpll_pin_1588_ops);
+		if (ret)
+			goto deinit_outputs;
+	}
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		count += ICE_DPLL_RCLK_NUM_PER_PF;
+
+	ret = ice_dpll_init_rclk_pins(pf, &pf->dplls.rclk,
+				      count + pf->ptp.port.port_num,
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
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825 &&
+	    ice_pf_src_tmr_owned(pf))
+		ice_dpll_deinit_pin_1588(pf);
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
@@ -3239,14 +3835,15 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
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
-		dpll_device_unregister(d->dpll, d->ops, d);
+	if (cgu || (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825 &&
+		    ice_pf_src_tmr_owned(pf)))
+		dpll_device_unregister(d->dpll, &ice_dpll_ops, d);
 	dpll_device_put(d->dpll);
 }
 
@@ -3279,12 +3876,15 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
 		return ret;
 	}
 	d->pf = pf;
-	if (cgu) {
+
+	if (cgu || (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825 &&
+		    ice_pf_src_tmr_owned(pf))) {
 		const struct dpll_device_ops *ops = &ice_dpll_ops;
 
 		if (type == DPLL_TYPE_PPS && ice_dpll_is_pps_phase_monitor(pf))
 			ops =  &ice_dpll_pom_ops;
-		ice_dpll_update_state(pf, d, true);
+		if (cgu)
+			ice_dpll_update_state(pf, d, true);
 		ret = dpll_device_register(d->dpll, type, ops, d);
 		if (ret) {
 			dpll_device_put(d->dpll);
@@ -3417,6 +4017,52 @@ static int ice_dpll_init_info_pins_generic(struct ice_pf *pf, bool input)
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
+	unsigned long caps = 0;
+	int num_pins, i;
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
+	return 0;
+}
+
 /**
  * ice_dpll_init_info_direct_pins - initializes direct pins info
  * @pf: board private structure
@@ -3505,6 +4151,32 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
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
@@ -3629,9 +4301,15 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum ice_dpll_pin_type pin_type)
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
@@ -3653,6 +4331,68 @@ static void ice_dpll_deinit_info(struct ice_pf *pf)
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
@@ -3772,7 +4512,8 @@ void ice_dpll_deinit(struct ice_pf *pf)
 		ice_dpll_deinit_worker(pf);
 
 	ice_dpll_deinit_pins(pf, cgu);
-	ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
+	if (pf->hw.mac_type != ICE_MAC_GENERIC_3K_E825)
+		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
 	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
 	ice_dpll_deinit_info(pf);
 	mutex_destroy(&pf->dplls.lock);
@@ -3795,25 +4536,33 @@ void ice_dpll_init(struct ice_pf *pf)
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
index c0da03384ce9..90e624b1cb4e 100644
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
@@ -101,11 +101,13 @@ struct ice_dpll {
  * @pps: pointer to PPS dpll dev
  * @inputs: input pins pointer
  * @outputs: output pins pointer
+ * @pin_1588: pin controlling clock 1588 pointer
  * @rclk: recovered pins pointer
  * @num_inputs: number of input pins available on dpll
  * @num_outputs: number of output pins available on dpll
  * @cgu_state_acq_err_num: number of errors returned during periodic work
  * @base_rclk_idx: idx of first pin used for clock revocery pins
+ * @base_1588_idx: idx of first pin used for 1588 clock control pin
  * @clock_id: clock_id of dplls
  * @input_phase_adj_max: max phase adjust value for an input pins
  * @output_phase_adj_max: max phase adjust value for an output pins
@@ -119,6 +121,7 @@ struct ice_dplls {
 	struct ice_dpll pps;
 	struct ice_dpll_pin *inputs;
 	struct ice_dpll_pin *outputs;
+	struct ice_dpll_pin pin_1588;
 	struct ice_dpll_pin sma[ICE_DPLL_PIN_SW_NUM];
 	struct ice_dpll_pin ufl[ICE_DPLL_PIN_SW_NUM];
 	struct ice_dpll_pin rclk;
@@ -126,6 +129,7 @@ struct ice_dplls {
 	u8 num_outputs;
 	u8 sma_data;
 	u8 base_rclk_idx;
+	u8 base_1588_idx;
 	int cgu_state_acq_err_num;
 	u64 clock_id;
 	s32 input_phase_adj_max;
@@ -143,3 +147,23 @@ static inline void ice_dpll_deinit(struct ice_pf *pf) { }
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
+	((_pin)->state[_id] = (_condition) ? DPLL_PIN_STATE_CONNECTED : \
+			       DPLL_PIN_STATE_DISCONNECTED)
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d75836700889..0fa483f3d8d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3947,6 +3947,9 @@ void ice_init_feature_support(struct ice_pf *pf)
 		break;
 	}
 
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		ice_set_feature_support(pf, ICE_F_PHY_RCLK);
+
 	if (pf->hw.mac_type == ICE_MAC_E830) {
 		ice_set_feature_support(pf, ICE_F_MBX_LIMIT);
 		ice_set_feature_support(pf, ICE_F_GCS);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 523f95271f35..9b7c892ca1d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -131,6 +131,11 @@ static const struct ice_cgu_pin_desc ice_e823_zl_cgu_outputs[] = {
 	{ "NONE",	   ZL_OUT5, 0, 0 },
 };
 
+static const struct ice_cgu_pin_desc ice_e825c_inputs[] = {
+	{ "CLK_IN_0",	 0, DPLL_PIN_TYPE_MUX, 0 },
+	{ "CLK_IN_1",	 0, DPLL_PIN_TYPE_MUX, 0 },
+};
+
 /* Low level functions for interacting with and managing the device clock used
  * for the Precision Time Protocol.
  *
@@ -5602,7 +5607,7 @@ int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 }
 
 /**
- * ice_cgu_get_pin_desc_e823 - get pin description array
+ * ice_get_pin_desc_e82x - get pin description array
  * @hw: pointer to the hw struct
  * @input: if request is done against input or output pin
  * @size: number of inputs/outputs
@@ -5610,9 +5615,19 @@ int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
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
+		t = NULL;
+		*size = 0;
+		return t;
+	}
 
 	if (hw->cgu_part_number ==
 	    ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032) {
@@ -5682,7 +5697,11 @@ ice_cgu_get_pin_desc(struct ice_hw *hw, bool input, int *size)
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
@@ -5730,7 +5749,6 @@ enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input)
 
 	if (pin >= t_size)
 		return 0;
-
 	return t[pin].type;
 }
 
@@ -5903,7 +5921,14 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num)
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
index 5896b346e579..a2ef4034d42f 100644
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
index c0b1232cc07c..dec0b0105a5d 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.h
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.h
@@ -21,6 +21,13 @@ struct ice_tspll_params_e82x {
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
index 8d19efc1df72..c606cd75844d 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -349,6 +349,12 @@ enum ice_clk_src {
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

base-commit: 6dbc64bfa1f08ecc3770d1c795ecdde25167fe63
-- 
2.39.3


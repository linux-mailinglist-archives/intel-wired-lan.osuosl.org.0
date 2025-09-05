Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C7DB45BDC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 17:11:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE55060BC5;
	Fri,  5 Sep 2025 15:11:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id joJ7Jy9SU8_4; Fri,  5 Sep 2025 15:11:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEE4060BCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757085086;
	bh=aNbq/hKBE+V9Or+ZO9pV6Hup+VEDtoBBMk0IjcXju6k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=x9IrfHnTgexWHXewvLF9+/BbtWmbAwW8GLHPrZp9PDyGGteCtZUE1hZrdBjpN7yug
	 ZTY4nXEjTS3R9XqPRPXI7lAc5DJDJf32YBnnPvTNZZBX9q24qfaBe8OgBWsKgjk2zx
	 9sXDVUtyDZAKEaAOZVpOfJiKuZX6u4N+nbztEgTN+kj0pwgjrZevUQYoIBuvYlv0Kh
	 GnRgxHVgNAdVV1EpcNkLKBdzoUkO3/8UYVAiTwVmJtUfPewfMGTQyGYzPWYLY3jzd4
	 0ESnQEMzlpOlQGDUOcioU7MxqhgkL6vjejyGPrCAT6R109qV4ulmoVSKTSYQCY0UUY
	 pg/MXNkqa3N9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEE4060BCF;
	Fri,  5 Sep 2025 15:11:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 585DC111
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 15:11:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E90B60BAE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 15:11:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bNryuhbVN4O0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 15:11:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 269AB60B1F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 269AB60B1F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 269AB60B1F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 15:11:22 +0000 (UTC)
X-CSE-ConnectionGUID: UhU9nXaRSby70DMEvLu/gw==
X-CSE-MsgGUID: 6Hxff9HTTImFujCYLGA2sQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59505204"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59505204"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 08:11:22 -0700
X-CSE-ConnectionGUID: xjmIxPCqTkqBfFsgsg+GoA==
X-CSE-MsgGUID: 0AFYqNpyRPaQwdnTDXS7Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="171386292"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa006.jf.intel.com with ESMTP; 05 Sep 2025 08:11:19 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  5 Sep 2025 17:09:47 +0200
Message-Id: <20250905150947.871566-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757085083; x=1788621083;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wppF02sOFXHsQUl9yNdDRt3+7XKeW6CTFJM/BoEpGtA=;
 b=Ku92H4AAxH0R8cADLCWrIITot0cFzvDLCbqLjAAM8eb3mB0sbKxk+GgI
 AqxaRbsVSjKGUVw8hDbJdMfBu74n7jV5lvUuBeY4jjzeDGjA0KQjMVBdV
 uhKJEmyYeCejdqHcyJbJQsYHnwZmm6pRJEzEojcolFYwUODJ1ylxEd1kU
 t+MhBxa3N+7E8nZ3XTXPYfmk0hhJD8NW0e0HXWPapvnH1uskamHZlqC2W
 IJJqOEpb3vTvbpq7qHKOA4cxJUvhR1dfnIrQV/a2TG0d7gdBKGkm6hSdF
 aHj7xnqfzoMV+XV93l93hcFmvpXnUEDCw6k+4ORDF6D9Wk3SZx+N3k2aT
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ku92H4AA
Subject: [Intel-wired-lan] [PATCH v10 iwl-next] ice: add recovery clock and
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 arkadiusz.kubalewski@intel.com, Aleksandr.Loktionov@intel.com,
 anthony.l.nguyen@intel.com, Przemyslaw Korba <przemyslaw.korba@intel.com>,
 Milena Olech <milena.olech@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Korba <przemyslaw.korba@intel.com>

Add control for E825 input pins: phy clock recovery and clock 1588.
E825 does not provide control over platform level DPLL but it
provides control over PHY clock recovery, and PTP/timestamp driven
inputs for platform level DPLL [1].

Introduce a software controlled layer of abstraction to:
- create a DPLL of type EEC for E825c,
- create recovered clock pin for each PF, and control them through
writing to registers,
- create pin to control clock 1588 for PF0, and control it through
writing to registers.

Usage example:
- to get EEC PLL info
$ ynl --family dpll --dump device-get
[{'clock-id': 0,
  'id': 6,
  'lock-status': 'locked',
  'mode': 'manual',
  'mode-supported': ['manual'],
  'module-name': 'ice',
  'type': 'eec'},
...
  ]

- to get 1588 and rclk pins info
(note: in the output below, pin id=31 is a representor for 1588 input,
while pins 32..35 corresponds to PHY clock inputs to SyncE  module)
$ ynl --family dpll --dump pin-get
[{'board-label': 'CLK_IN_0',
  'capabilities': set(),
  'clock-id': 0,
  'id': 27,
  'module-name': 'ice',
  'parent-device': [{'direction': 'input',
                     'parent-id': 6,
                     'state': 'connected'}],
  'phase-adjust-max': 0,
  'phase-adjust-min': 0,
  'type': 'mux'},
 {'board-label': 'CLK_IN_1',
  'capabilities': set(),
  'clock-id': 0,
  'id': 28,
  'module-name': 'ice',
  'parent-device': [{'direction': 'input',
                     'parent-id': 6,
                     'state': 'connected'}],
  'phase-adjust-max': 0,
  'phase-adjust-min': 0,
  'type': 'mux'},
 {'board-label': 'pin_1588',
  'capabilities': {'state-can-change'},
  'clock-id': 0,
  'id': 31,
  'module-name': 'ice',
  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
                 {'parent-id': 28, 'state': 'disconnected'}],
  'phase-adjust-max': 0,
  'phase-adjust-min': 0,
  'type': 'synce-eth-port'},
 {'capabilities': {'state-can-change'},
  'clock-id': 0,
  'id': 32,
  'module-name': 'ice',
  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
                 {'parent-id': 28, 'state': 'disconnected'}],
  'phase-adjust-max': 0,
  'phase-adjust-min': 0,
  'type': 'synce-eth-port'},
 {'capabilities': {'state-can-change'},
  'clock-id': 0,
  'id': 33,
  'module-name': 'ice',
  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
                 {'parent-id': 28, 'state': 'disconnected'}],
  'phase-adjust-max': 0,
  'phase-adjust-min': 0,
  'type': 'synce-eth-port'},
 {'capabilities': {'state-can-change'},
  'clock-id': 0,
  'id': 34,
  'module-name': 'ice',
  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
                 {'parent-id': 28, 'state': 'disconnected'}],
  'phase-adjust-max': 0,
  'phase-adjust-min': 0,
  'type': 'synce-eth-port'},
 {'capabilities': {'state-can-change'},
  'clock-id': 0,
  'id': 35,
  'module-name': 'ice',
  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
                 {'parent-id': 28, 'state': 'disconnected'}],
  'phase-adjust-max': 0,
  'phase-adjust-min': 0,
  'type': 'synce-eth-port'}]

- to set PHY0 clock as SyncE module input
$ ynl --family dpll --do pin-set --json '{"id":32,"parent-pin":\
    {"parent-id":27, "state":"connected"}}'

- to set 1588 Main Timer as source into SyncE module
$ ynl --family dpll --do pin-set --json '{"id":31,"parent-pin":\
    {"parent-id":27, "state":"connected"}}'

[1] Granite Rapids D SAS - Timesync and	SyncE

Reviewed-by: Milena Olech <milena.olech@intel.com>
Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
v9->v10:
- replaced SET_PIN_STATE with inline function
- fixed wrong conflict resolution in ice_dpll_deinit_dpll()
v8->v9:
- rebased
- moved ice_dpll_cfg_bypass_mux_e825c, ice_dpll_cfg_synce_ethdiv_e825c,
  ice_dpll_get_div_e825c to ice_tspll.c module
- re-applying ts_pll settings on ptp status change (added
  ice_tspll_bypass_mux_active_e825c function)
- improved doc strings
- removed unrealted changes
- renamed dpll to DPLL in doc strings where applicable
v7->v8:
- rebased
- removed unrelated changes
- change pin_1588 type to DPLL_PIN_TYPE_EXT
- use ICE_SYNCE_CLK_NUM to determine the number of rclk pins
---
 drivers/net/ethernet/intel/ice/ice_dpll.c   | 675 ++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dpll.h   |  20 +
 drivers/net/ethernet/intel/ice/ice_lib.c    |   3 +
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  29 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  34 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   1 +
 drivers/net/ethernet/intel/ice/ice_tspll.c  | 223 +++++++
 drivers/net/ethernet/intel/ice/ice_tspll.h  |  14 +-
 drivers/net/ethernet/intel/ice/ice_type.h   |   6 +
 9 files changed, 945 insertions(+), 60 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 53b54e395a2e..f02db69fa5d2 100644
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
@@ -528,6 +530,130 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
 	return ret;
 }
 
+/**
+ * ice_dpll_pin_store_state - updates the state of pin in SW bookkeeping
+ * @pin: pointer to a pin
+ * @parent: parent pin index
+ * @state: pin state (connected or disconnected)
+ */
+static inline void
+ice_dpll_pin_store_state(struct ice_dpll_pin *pin, int parent, bool state)
+{
+	pin->state[parent] = state ? DPLL_PIN_STATE_CONNECTED :
+					DPLL_PIN_STATE_DISCONNECTED;
+}
+
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
+	ice_dpll_pin_store_state(pin, ICE_SYNCE_CLK0, rclk_bits ==
+		(pf->ptp.port.port_num + ICE_CGU_BYPASS_MUX_OFFSET_E825C));
+
+	err = ice_read_cgu_reg(&pf->hw, ICE_CGU_R11, &reg);
+	if (err)
+		return err;
+	rclk_bits = FIELD_GET(ICE_CGU_R11_SYNCE_S_BYP_CLK, reg);
+	ice_dpll_pin_store_state(pin, ICE_SYNCE_CLK1, rclk_bits ==
+		(pf->ptp.port.port_num + ICE_CGU_BYPASS_MUX_OFFSET_E825C));
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
+		ice_dpll_pin_store_state(pin, parent,
+					 ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN &
+					 pin->flags[parent]);
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
+	ice_dpll_pin_store_state(pin, parent, bits_clk == ICE_CGU_NCOCLK);
+
+	return 0;
+}
+
 /**
  * ice_dpll_sw_pins_update - update status of all SW pins
  * @pf: private board struct
@@ -668,22 +794,14 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
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
@@ -1021,6 +1139,33 @@ ice_dpll_pin_state_get(const struct dpll_pin *pin, void *pin_priv,
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
@@ -1842,6 +1987,40 @@ ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
 	return 0;
 }
 
+/**
+ * ice_dpll_synce_update_e825c - setting PHY recovered clock pins on e825c
+ * @hw: Pointer to the HW struct
+ * @ena: true if enable, false in disable
+ * @port_num: port number
+ * @output: output pin, we have two in E825C
+ *
+ * DPLL subsystem callback. Set proper signals to recover clock from port.
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
+	err = ice_tspll_cfg_bypass_mux_e825c(hw, ena, port_num, output, false);
+	if (err)
+		return err;
+
+	err = ice_tspll_cfg_synce_ethdiv_e825c(hw, output);
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
@@ -2289,9 +2468,12 @@ ice_dpll_rclk_state_on_pin_set(const struct dpll_pin *pin, void *pin_priv,
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
 
@@ -2307,13 +2489,17 @@ ice_dpll_rclk_state_on_pin_set(const struct dpll_pin *pin, void *pin_priv,
 				   p->idx, state, parent->idx);
 		goto unlock;
 	}
-	ret = ice_aq_set_phy_rec_clk_out(&pf->hw, hw_idx, enable,
-					 &p->freq);
+
+	ret = hw->mac_type == ICE_MAC_GENERIC_3K_E825 ?
+		ice_dpll_synce_update_e825c(hw, enable,
+					    pf->ptp.port.port_num,
+					    (enum ice_synce_clk)hw_idx) :
+		ice_aq_set_phy_rec_clk_out(hw, hw_idx, enable, &p->freq);
 	if (ret)
 		NL_SET_ERR_MSG_FMT(extack,
 				   "err:%d %s failed to set pin state:%u for pin:%u on parent:%u",
 				   ret,
-				   libie_aq_str(pf->hw.adminq.sq_last_status),
+				   libie_aq_str(hw->adminq.sq_last_status),
 				   state, p->idx, parent->idx);
 unlock:
 	mutex_unlock(&pf->dplls.lock);
@@ -2321,6 +2507,60 @@ ice_dpll_rclk_state_on_pin_set(const struct dpll_pin *pin, void *pin_priv,
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
+ * DPLL subsystem callback. Set a state of a clock 1588 pin on a parent pin
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
+		NL_SET_ERR_MSG_FMT(extack,
+				   "Pin %d state on parent is already set",
+				   parent->idx);
+		goto unlock;
+	}
+	ret = ice_tspll_cfg_bypass_mux_e825c(&pf->hw, ena,
+					     pf->ptp.port.port_num,
+					     hw_idx, true);
+unlock:
+	mutex_unlock(&pf->dplls.lock);
+
+	return ret;
+}
+
 /**
  * ice_dpll_rclk_state_on_pin_get - get a state of rclk pin
  * @pin: pointer to a pin
@@ -2370,12 +2610,71 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
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
+ * DPLL subsystem callback, get a state of a 1588 clock pin.
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
@@ -2944,6 +3243,7 @@ ice_dpll_register_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
 
 /**
  * ice_dpll_deinit_direct_pins - deinitialize direct pins
+ * @pf: board private structure
  * @cgu: if cgu is present and controlled by this NIC
  * @pins: pointer to pins array
  * @count: number of pins
@@ -2955,7 +3255,8 @@ ice_dpll_register_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
  * Release pins resources to the dpll subsystem.
  */
 static void
-ice_dpll_deinit_direct_pins(bool cgu, struct ice_dpll_pin *pins, int count,
+ice_dpll_deinit_direct_pins(struct ice_pf *pf, bool cgu,
+			    struct ice_dpll_pin *pins, int count,
 			    const struct dpll_pin_ops *ops,
 			    struct dpll_device *first,
 			    struct dpll_device *second)
@@ -3004,7 +3305,11 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool cgu,
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
@@ -3014,6 +3319,31 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool cgu,
 	return ret;
 }
 
+/**
+ * ice_dpll_deinit_pin_1588 - release 1588 pin resources
+ * @pf: board private structure
+ *
+ * Deregister 1588 pin from parent pins and release resources in DPLL
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
@@ -3027,6 +3357,10 @@ static void ice_dpll_deinit_rclk_pin(struct ice_pf *pf)
 	struct dpll_pin *parent;
 	int i;
 
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825 &&
+	    ice_pf_src_tmr_owned(pf))
+		ice_dpll_deinit_pin_1588(pf);
+
 	for (i = 0; i < rclk->num_parents; i++) {
 		parent = pf->dplls.inputs[rclk->parent_idx[i]].pin;
 		if (!parent)
@@ -3094,6 +3428,58 @@ ice_dpll_init_rclk_pins(struct ice_pf *pf, struct ice_dpll_pin *pin,
 	return ret;
 }
 
+/**
+ * ice_dpll_init_pin_1588 - initialize pin to control clock 1588
+ * @pf: board private structure
+ * @pin: pin to register
+ * @start_idx: on which index shall allocation start in dpll subsystem
+ * @ops: callback ops registered with the pins
+ *
+ * Allocate resource for clock 1588 pin in DPLL subsystem. Register the
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
+	int ret, i;
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
@@ -3119,6 +3505,9 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 		ice_dpll_unregister_pins(de->dpll, inputs, &ice_dpll_input_ops,
 					 num_inputs);
 	}
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		ice_dpll_unregister_pins(de->dpll, inputs,
+					 &ice_dpll_input_ops_e825c, num_inputs);
 	ice_dpll_release_pins(inputs, num_inputs);
 	if (cgu) {
 		ice_dpll_unregister_pins(dp->dpll, outputs,
@@ -3127,12 +3516,12 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
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
@@ -3155,21 +3544,30 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
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
 	count = pf->dplls.num_inputs;
 	if (cgu) {
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
@@ -3205,30 +3603,44 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 	} else {
 		count += pf->dplls.num_outputs + 2 * ICE_DPLL_PIN_SW_NUM;
 	}
-	ret = ice_dpll_init_rclk_pins(pf, &pf->dplls.rclk, count + pf->hw.pf_id,
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
+		if (ice_pf_src_tmr_owned(pf)) {
+			ret = ice_dpll_init_pin_1588(pf, &pf->dplls.pin_1588,
+						     count,
+						     &ice_dpll_pin_1588_ops);
+			if (ret)
+				goto deinit_inputs;
+		}
+		count += ICE_DPLL_PIN_1588_NUM;
+	}
+
+	ret = ice_dpll_init_rclk_pins(pf, &pf->dplls.rclk,
+				      count + pf->ptp.port.port_num,
 				      &ice_dpll_rclk_ops);
 	if (ret)
 		goto deinit_ufl;
 
 	return 0;
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
@@ -3239,13 +3651,14 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
  * @d: pointer to ice_dpll
  * @cgu: if cgu is present and controlled by this NIC
  *
- * If cgu is owned unregister the dpll from dpll subsystem.
- * Release resources of dpll device from dpll subsystem.
+ * If cgu is owned or device is e825c, unregister the DPL from DPLL subsystem.
+ * Release resources of DPLL device from DPLL subsystem.
  */
 static void
 ice_dpll_deinit_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu)
 {
-	if (cgu)
+	if (cgu || (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825 &&
+		    ice_pf_src_tmr_owned(pf)))
 		dpll_device_unregister(d->dpll, d->ops, d);
 	dpll_device_put(d->dpll);
 }
@@ -3257,8 +3670,8 @@ ice_dpll_deinit_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu)
  * @cgu: if cgu is present and controlled by this NIC
  * @type: type of dpll being initialized
  *
- * Allocate dpll instance for this board in dpll subsystem, if cgu is controlled
- * by this NIC, register dpll with the callback ops.
+ * Allocate DPLL instance for this board in dpll subsystem, if cgu is controlled
+ * by this NIC, register DPLL with the callback ops.
  *
  * Return:
  * * 0 - success
@@ -3279,12 +3692,15 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
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
@@ -3417,6 +3833,52 @@ static int ice_dpll_init_info_pins_generic(struct ice_pf *pf, bool input)
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
@@ -3505,6 +3967,32 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
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
+	pin_1588->prop.type = DPLL_PIN_TYPE_EXT;
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
@@ -3629,9 +4117,16 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum ice_dpll_pin_type pin_type)
 	switch (pin_type) {
 	case ICE_DPLL_PIN_TYPE_INPUT:
 	case ICE_DPLL_PIN_TYPE_OUTPUT:
-		return ice_dpll_init_info_direct_pins(pf, pin_type);
+		if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+			return ice_dpll_init_info_direct_pins_e825c(pf,
+								    pin_type);
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
@@ -3653,6 +4148,68 @@ static void ice_dpll_deinit_info(struct ice_pf *pf)
 	kfree(pf->dplls.pps.input_prio);
 }
 
+/**
+ * ice_dpll_init_info_e825c - prepare pf's dpll information structure for e825c
+ * device
+ * @pf: board private structure
+ *
+ * Acquire (from HW) and set basic DPLL information (on pf->dplls struct).
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
+	d->num_inputs = ICE_SYNCE_CLK_NUM;
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
+	pf->dplls.pin_1588.num_parents = ICE_SYNCE_CLK_NUM;
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
+		"%s - success, inputs: %u, outputs: %u, rclk-parents: %u, pin_1588-parents: %u\n",
+		 __func__, d->num_inputs, d->num_outputs, d->rclk.num_parents,
+		 d->pin_1588.num_parents);
+	return 0;
+deinit_info:
+	dev_err(ice_pf_to_dev(pf),
+		"%s - fail: d->inputs: %p, d->outputs: %p\n",
+		__func__, d->inputs, d->outputs);
+	ice_dpll_deinit_info(pf);
+	return ret;
+}
+
 /**
  * ice_dpll_init_info - prepare pf's dpll information structure
  * @pf: board private structure
@@ -3772,7 +4329,8 @@ void ice_dpll_deinit(struct ice_pf *pf)
 		ice_dpll_deinit_worker(pf);
 
 	ice_dpll_deinit_pins(pf, cgu);
-	ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
+	if (pf->hw.mac_type != ICE_MAC_GENERIC_3K_E825)
+		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
 	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
 	ice_dpll_deinit_info(pf);
 	mutex_destroy(&pf->dplls.lock);
@@ -3795,19 +4353,26 @@ void ice_dpll_init(struct ice_pf *pf)
 	int err = 0;
 
 	mutex_init(&d->lock);
-	err = ice_dpll_init_info(pf, cgu);
+
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		err = ice_dpll_init_info_e825c(pf);
+	else
+		err = ice_dpll_init_info(pf, cgu);
 	if (err)
 		goto err_exit;
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
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index c0da03384ce9..1dbe0cf715d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
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
@@ -143,3 +147,19 @@ static inline void ice_dpll_deinit(struct ice_pf *pf) { }
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
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7132ec632edb..5b2c748b95f8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3946,6 +3946,9 @@ void ice_init_feature_support(struct ice_pf *pf)
 		break;
 	}
 
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		ice_set_feature_support(pf, ICE_F_PHY_RCLK);
+
 	if (pf->hw.mac_type == ICE_MAC_E830) {
 		ice_set_feature_support(pf, ICE_F_MBX_LIMIT);
 		ice_set_feature_support(pf, ICE_F_GCS);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index fb0f6365a6d6..9b065709c899 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1332,6 +1332,35 @@ void ice_ptp_link_change(struct ice_pf *pf, bool linkup)
 	if (pf->hw.reset_ongoing)
 		return;
 
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825) {
+		int pin, err;
+
+		mutex_lock(&pf->dplls.lock);
+		for (pin = 0; pin < ICE_SYNCE_CLK_NUM; pin++) {
+			enum ice_synce_clk clk_pin;
+			bool active;
+			u8 port_num;
+
+			port_num = ptp_port->port_num;
+			clk_pin = (enum ice_synce_clk)pin;
+			err = ice_tspll_bypass_mux_active_e825c(hw,
+								port_num,
+								&active,
+								clk_pin);
+			if (WARN_ON_ONCE(err)) {
+				mutex_unlock(&pf->dplls.lock);
+				return;
+			}
+
+			err = ice_tspll_cfg_synce_ethdiv_e825c(hw, clk_pin);
+			if (active && WARN_ON_ONCE(err)) {
+				mutex_unlock(&pf->dplls.lock);
+				return;
+			}
+		}
+		mutex_unlock(&pf->dplls.lock);
+	}
+
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
 	case ICE_MAC_E830:
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 35680dbe4a7f..10496e4e641c 100644
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
@@ -5903,7 +5922,14 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num)
 			*base_idx = SI_REF1P;
 		else
 			ret = -ENODEV;
-
+		break;
+	case ICE_DEV_ID_E825C_BACKPLANE:
+	case ICE_DEV_ID_E825C_QSFP:
+	case ICE_DEV_ID_E825C_SFP:
+	case ICE_DEV_ID_E825C_SGMII:
+		*pin_num = ICE_SYNCE_CLK_NUM;
+		*base_idx = 0;
+		ret = 0;
 		break;
 	default:
 		ret = -ENODEV;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 5896b346e579..2c2fa1e73ee0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -210,6 +210,7 @@ enum ice_phy_rclk_pins {
 #define ICE_E82X_RCLK_PINS_NUM		(ICE_RCLKA_PIN + 1)
 #define E810T_CGU_INPUT_C827(_phy, _pin) ((_phy) * ICE_E810_RCLK_PINS_NUM + \
 					  (_pin) + ZL_REF1P)
+#define ICE_E825_1588_BASE_IDX		0
 
 enum ice_zl_cgu_in_pins {
 	ZL_REF0P = 0,
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 66320a4ab86f..78d74fb0d94b 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -624,3 +624,226 @@ int ice_tspll_init(struct ice_hw *hw)
 
 	return err;
 }
+
+/**
+ * ice_tspll_bypass_mux_active_e825c - check if the given port is set active
+ * @hw: Pointer to the HW struct
+ * @port: Number of the port
+ * @active: Output flag showing if port is active
+ * @output: Output pin, we have two in E825C
+ *
+ * Check if given port is selected as recovered clock source for given output.
+ *
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+int ice_tspll_bypass_mux_active_e825c(struct ice_hw *hw, u8 port, bool *active,
+				      enum ice_synce_clk output)
+{
+	u8 active_clk;
+	u32 val;
+
+	switch (output) {
+	case ICE_SYNCE_CLK0:
+		ice_read_cgu_reg(hw, ICE_CGU_R10, &val);
+		active_clk = FIELD_GET(ICE_CGU_R10_SYNCE_S_REF_CLK, val);
+		break;
+	case ICE_SYNCE_CLK1:
+		ice_read_cgu_reg(hw, ICE_CGU_R11, &val);
+		active_clk = FIELD_GET(ICE_CGU_R11_SYNCE_S_BYP_CLK, val);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (active_clk == port % hw->ptp.ports_per_phy +
+			  ICE_CGU_BYPASS_MUX_OFFSET_E825C)
+		*active = true;
+	else
+		*active = false;
+
+	return 0;
+}
+
+/**
+ * ice_tspll_cfg_bypass_mux_e825c - configure reference clock mux
+ * @hw: Pointer to the HW struct
+ * @ena: true to enable the reference, false if disable
+ * @port_num: Number of the port
+ * @output: Output pin, we have two in E825C
+ * @clock_1588: true to enable 1588 reference, false to recover from port
+ *
+ * Set reference clock source and output clock selection.
+ *
+ * Context: Called under pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+int ice_tspll_cfg_bypass_mux_e825c(struct ice_hw *hw, bool ena, u32 port_num,
+				   enum ice_synce_clk output, bool clock_1588)
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
+ * ice_tspll_get_div_e825c - get the divider for the given speed
+ * @link_speed: link speed of the port
+ * @divider: output value, calculated divider
+ *
+ * Get CGU divider value based on the link speed.
+ *
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int ice_tspll_get_div_e825c(u16 link_speed, unsigned int *divider)
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
+ * ice_tspll_cfg_synce_ethdiv_e825c - set the divider on the mux
+ * @hw: Pointer to the HW struct
+ * @output: Output pin, we have two in E825C
+ *
+ * Set the correct CGU divider for RCLKA or RCLKB.
+ *
+ * Context: Called under pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+int ice_tspll_cfg_synce_ethdiv_e825c(struct ice_hw *hw,
+				     enum ice_synce_clk output)
+{
+	unsigned int divider;
+	u16 link_speed;
+	u32 val;
+	int err;
+
+	link_speed = hw->port_info->phy.link_info.link_speed;
+	if (!link_speed)
+		return 0;
+
+	err = ice_tspll_get_div_e825c(link_speed, &divider);
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
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.h b/drivers/net/ethernet/intel/ice/ice_tspll.h
index c0b1232cc07c..cf5581f152e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.h
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.h
@@ -21,11 +21,23 @@ struct ice_tspll_params_e82x {
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
 
 int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable);
 int ice_tspll_init(struct ice_hw *hw);
-
+int ice_tspll_bypass_mux_active_e825c(struct ice_hw *hw, u8 port, bool *active,
+				      enum ice_synce_clk output);
+int ice_tspll_cfg_bypass_mux_e825c(struct ice_hw *hw, bool ena, u32 port_num,
+				   enum ice_synce_clk output, bool clock_1588);
+int ice_tspll_cfg_synce_ethdiv_e825c(struct ice_hw *hw,
+				     enum ice_synce_clk output);
 #endif /* _ICE_TSPLL_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index b0a1b67071c5..4213a2b9fa9d 100644
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

base-commit: 1305ec8ec75d2ff08a27d600541360c4fd806c53
-- 
2.39.3


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A719AB10BD3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 15:47:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E42EA613E2;
	Thu, 24 Jul 2025 13:47:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dlV_JUQeGgzB; Thu, 24 Jul 2025 13:47:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DE77613D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753364848;
	bh=L+7qXPuOn1n4E6jtXnyZlYGvcO22Wfrz5g7HaOly7gg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RM1C5h5QyjWqsC+GHPjXArM2gV+ij4wL948xbIDveFNE3NMXiv290tAUTJMtPYgbs
	 whKLaMU6mau9Pfi4GWSxMNyWdvUWOACTbB4CBSNd2gcDg5TNgAx29Nw6Br52N2/4HB
	 YWjNNNUmhmoIfIyQCOTVRhlp5lhzX0N+WePI27iy0CicdRJ5qelZTZ0tMdy3jCFclZ
	 VZonZgyH+EuD00HPJpueCb1S1rbl+VPsol/1bkeCON3yNJndB6MOGEDYQiOwG4N/0G
	 xBE2yCvA77qRAwzRrIETtT0WWnhsu/rHzcB7Znxu95VdHog/k4ADNzgmmU/Kx1OsZJ
	 pg0tjCep6h5Lw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DE77613D6;
	Thu, 24 Jul 2025 13:47:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6FAE3115
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 13:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55A1D403CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 13:47:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id obKvbOxY4d4c for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 13:47:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EEFA4417F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEFA4417F2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEFA4417F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 13:47:25 +0000 (UTC)
X-CSE-ConnectionGUID: /AlHN7gAQtqdMAD68cjXOQ==
X-CSE-MsgGUID: QTr4UMd1QE6jYWhTY/hwUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="59497595"
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="59497595"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 06:47:25 -0700
X-CSE-ConnectionGUID: 5Pnie9xfTLuzsTKWKRxQ/Q==
X-CSE-MsgGUID: 9/S56+3MTRWWXyQsFjVsZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="160225643"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by fmviesa006.fm.intel.com with ESMTP; 24 Jul 2025 06:47:23 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Jul 2025 15:46:13 +0200
Message-Id: <20250724134613.3421079-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753364846; x=1784900846;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=idCdAitwuUmGkxVUiWQWw18Oi7Xp5eG7uFISczZKy+w=;
 b=kIjTIM0otOXXtK8m8XYCu3rtpAMQpwglBUhWjFMhLkNgCOxXqWS4kZyv
 gMxNX2MR0IJgT0vrVxrAZxR6250EJTY3Q527LL728h37Ii9FC33O1dOzt
 j0rJK6fsZW3oCHJuVm3YIHnomNdUqYJ5saoFqmUotNQfGDbjksXYPSi4I
 4o5Nz9WyLmJTtyiIT4FF5dE5gcHDKrcB4gFkeutB+fjLQaaQiE3iMehX0
 ToFTyyyP4YJD5o92fmxR69FumCPrIfUl1dROixQzxBnMeXTlURZqLxJSd
 OUJGTtG2RsjJCqbr4m8ruMXvnxsyGm26ahyly3vNwJEOCESpjxzlILlU0
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kIjTIM0o
Subject: [Intel-wired-lan] [PATCH v1 iwl-next] ice: add TS PLL control for
 E825 devices
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add ability to control CGU (Clock Generation Unit) 1588 Clock Reference
mux selection for E825 devices. There are two clock sources available
which might serve as input source to TS PLL block:
- internal cristal oscillator (TXCO)
- signal from external DPLL

E825 does not provide control over platform level DPLL but it provides
control over TIME_REF output from platform level DPLL.
Introduce a software controlled layer of abstraction:
- create a DPLL (referred as TSPLL dpll) of PPS type for E825c,
- define input pin for that dpll to mock TIME_REF pin
- define output pin for that dpll to mock TIME_SYNC pin which supplies a
  signal for master timer

Note:
- there is only one frequency supported (156.25 MHz) for TIME_REF
  signal for E825 devices.
- TIME_SYNC pin is always connected, as it supplies eiher internal TXCO
  signal or a signal from external DPLL always

Usage example:
- to get TSPLL dpll info
$ ynl --family dpll --dump device-get
...
 {'clock-id': 0,
  'id': 9,
  'lock-status': 'locked',
  'mode': 'manual',
  'mode-supported': ['manual'],
  'module-name': 'ice',
  'type': 'pps'}]
...

- to get TIMER_REF and TIME_SYNC pin info
$ ynl --family dpll --dump pin-get
...
 {'board-label': 'TIME_REF',
  'capabilities': {'state-can-change'},
  'clock-id': 0,
  'frequency': 156250000,
  'frequency-supported': [{'frequency-max': 156250000,
                           'frequency-min': 156250000}],
  'id': 38,
  'module-name': 'ice',
  'parent-device': [{'direction': 'input',
                     'parent-id': 9,
                     'state': 'connected'}],
  'phase-adjust-max': 0,
  'phase-adjust-min': 0,
  'type': 'ext'},
 {'board-label': 'TIME_SYNC',
  'capabilities': set(),
  'clock-id': 0,
  'id': 39,
  'module-name': 'ice',
  'parent-device': [{'direction': 'output',
                     'parent-id': 9,
                     'state': 'connected'}],
  'phase-adjust-max': 0,
  'phase-adjust-min': 0,
  'type': 'int-oscillator'},
...

- to enable TIME_REF output
$ ynl --family dpll --do pin-set --json '{"id":38,"parent-device":\
{"parent-id":9, "state":"connected"}}'

- to disable TIME_REF output (TXCO is enabled)
$ ynl --family dpll --do pin-set --json '{"id":38,"parent-device":\
{"parent-id":9, "state":"disconnected"}}'

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
This patch is based on:
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250724122736.3398010-1-grzegorz.nitka@intel.com/
---
 drivers/net/ethernet/intel/ice/ice_dpll.c  | 288 +++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dpll.h  |   6 +
 drivers/net/ethernet/intel/ice/ice_tspll.c |  65 +++++
 drivers/net/ethernet/intel/ice/ice_tspll.h |   3 +
 4 files changed, 347 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index f89dec5e532e..e6c56b8d3ff2 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -18,6 +18,9 @@
 #define ICE_DPLL_SW_PIN_INPUT_BASE_SFP		4
 #define ICE_DPLL_SW_PIN_INPUT_BASE_QSFP		6
 #define ICE_DPLL_SW_PIN_OUTPUT_BASE		0
+#define ICE_DPLL_TSPLL_INPUT_NUM_E825		1
+#define ICE_DPLL_TSPLL_OUTPUT_NUM_E825		1
+#define ICE_DPLL_TSPLL_IDX_E825			1
 
 #define ICE_DPLL_PIN_SW_INPUT_ABS(in_idx) \
 	(ICE_DPLL_SW_PIN_INPUT_BASE_SFP + (in_idx))
@@ -64,6 +67,10 @@ enum ice_dpll_pin_type {
 	ICE_DPLL_PIN_TYPE_OUTPUT,
 	ICE_DPLL_PIN_TYPE_RCLK_INPUT,
 	ICE_DPLL_PIN_TYPE_SOFTWARE,
+	ICE_DPLL_PIN_TYPE_INPUT_E825,
+	ICE_DPLL_PIN_TYPE_OUTPUT_E825,
+	ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825,
+	ICE_DPLL_PIN_TYPE_OUTPUT_TSPLL_E825,
 };
 
 static const char * const pin_type_name[] = {
@@ -76,11 +83,17 @@ static const char * const pin_type_name[] = {
 static const char * const ice_dpll_sw_pin_sma[] = { "SMA1", "SMA2" };
 static const char * const ice_dpll_sw_pin_ufl[] = { "U.FL1", "U.FL2" };
 static const char ice_dpll_pin_1588[] = "pin_1588";
+static const char ice_dpll_pin_time_ref_e825[] = "TIME_REF";
+static const char ice_dpll_pin_time_sync_e825[] = "TIME_SYNC";
 
 static const struct dpll_pin_frequency ice_esync_range[] = {
 	DPLL_PIN_FREQUENCY_RANGE(0, DPLL_PIN_FREQUENCY_1_HZ),
 };
 
+static struct dpll_pin_frequency ice_cgu_pin_freq_156_25mhz[] = {
+	DPLL_PIN_FREQUENCY_RANGE(156250000, 156250000),
+};
+
 /**
  * ice_dpll_is_sw_pin - check if given pin shall be controlled by SW
  * @pf: private board structure
@@ -473,6 +486,11 @@ ice_dpll_pin_enable(struct ice_hw *hw, struct ice_dpll_pin *pin,
 		ret = ice_aq_set_output_pin_cfg(hw, pin->idx, flags, dpll_idx,
 						0, 0);
 		break;
+	case ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825:
+		ret = ice_tspll_set_cfg(pin->pf,
+					ICE_TSPLL_FREQ_156_250,
+					ICE_CLK_SRC_TIME_REF);
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -518,6 +536,11 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
 			flags |= ICE_AQC_SET_CGU_OUT_CFG_ESYNC_EN;
 		ret = ice_aq_set_output_pin_cfg(hw, pin->idx, flags, 0, 0, 0);
 		break;
+	case ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825:
+		ret = ice_tspll_set_cfg(pin->pf,
+					ICE_TSPLL_FREQ_156_250,
+					ICE_CLK_SRC_TCXO);
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -641,6 +664,36 @@ static int ice_dpll_update_pin_1588_e825c(struct ice_hw *hw,
 	return 0;
 }
 
+/**
+ * ice_dpll_input_tspll_update_e825c - updates input TSPLL pin state on E825
+ * @hw: board private hw structure
+ * @pin: pointer to a pin
+ *
+ * Update struct holding pin states info.
+ *
+ * Context: Called under pf->dplls.lock
+ * Return:
+ * * 0 - OK
+ * * negative - error
+ */
+static int ice_dpll_input_tspll_update_e825c(struct ice_pf *pf,
+					     struct ice_dpll_pin *pin)
+{
+	enum ice_clk_src clk_src;
+	struct ice_hw *hw;
+	int err;
+
+	hw = &pf->hw;
+	err = ice_tspll_get_clk_src(hw, &clk_src);
+	if (err)
+		return err;
+
+	pin->state[pf->dplls.tspll.dpll_idx] = clk_src == ICE_CLK_SRC_TIME_REF ?
+					DPLL_PIN_STATE_CONNECTED :
+					DPLL_PIN_STATE_DISCONNECTED;
+	return 0;
+}
+
 /**
  * ice_dpll_sw_pins_update - update status of all SW pins
  * @pf: private board struct
@@ -796,6 +849,11 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
 		if (ret)
 			goto err;
 		break;
+	case ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825:
+		ret = ice_dpll_input_tspll_update_e825c(pf, pin);
+		if (ret)
+			goto err;
+		return 0;
 	default:
 		return -EINVAL;
 	}
@@ -1117,7 +1175,8 @@ ice_dpll_pin_state_get(const struct dpll_pin *pin, void *pin_priv,
 	if (ret)
 		goto unlock;
 	if (pin_type == ICE_DPLL_PIN_TYPE_INPUT ||
-	    pin_type == ICE_DPLL_PIN_TYPE_OUTPUT)
+	    pin_type == ICE_DPLL_PIN_TYPE_OUTPUT ||
+	    pin_type == ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825)
 		*state = p->state[d->dpll_idx];
 	ret = 0;
 unlock:
@@ -1205,6 +1264,72 @@ ice_dpll_input_state_get(const struct dpll_pin *pin, void *pin_priv,
 				      extack, ICE_DPLL_PIN_TYPE_INPUT);
 }
 
+/**
+ * ice_dpll_input_tspll_state_get_e825 - get E825 TSPLL input pin state on dpll
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @state: on success holds state of the pin
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Check state of a input pin.
+ *
+ * Context: Calls a function which acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - failed to get state
+ */
+
+static int
+ice_dpll_input_tspll_state_get_e825(const struct dpll_pin *pin, void *pin_priv,
+				    const struct dpll_device *dpll,
+				    void *dpll_priv,
+				    enum dpll_pin_state *state,
+				    struct netlink_ext_ack *extack)
+{
+	return ice_dpll_pin_state_get(pin, pin_priv, dpll, dpll_priv, state,
+				      extack,
+				      ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825);
+}
+
+/**
+ * ice_dpll_input_tspll_state_set_e825 - set E825 TSPLL input pin state on dpll
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @state: requested state of the pin
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Set the state of a pin.
+ *
+ * Context: Acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_input_tspll_state_set_e825(const struct dpll_pin *pin, void *pin_priv,
+				    const struct dpll_device *dpll,
+				    void *dpll_priv, enum dpll_pin_state state,
+				    struct netlink_ext_ack *extack)
+{
+	bool enable = state == DPLL_PIN_STATE_CONNECTED;
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_dpll *d = dpll_priv;
+
+	if (state == DPLL_PIN_STATE_SELECTABLE)
+		return -EINVAL;
+
+	if (!enable && p->state[d->dpll_idx] == DPLL_PIN_STATE_DISCONNECTED)
+		return 0;
+
+	return ice_dpll_pin_state_set(pin, pin_priv, dpll, dpll_priv, enable,
+				      extack,
+				      ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825);
+}
+
 /**
  * ice_dpll_sma_direction_set - set direction of SMA pin
  * @p: pointer to a pin
@@ -2851,6 +2976,18 @@ static const struct dpll_pin_ops ice_dpll_input_ops_e825c = {
 	.state_on_dpll_get = ice_dpll_pin_state_get_e825c,
 };
 
+static const struct dpll_pin_ops ice_dpll_input_tspll_ops_e825 = {
+	.direction_get = ice_dpll_input_direction,
+	.state_on_dpll_get = ice_dpll_input_tspll_state_get_e825,
+	.state_on_dpll_set = ice_dpll_input_tspll_state_set_e825,
+	.frequency_get = ice_dpll_input_frequency_get,
+};
+
+static const struct dpll_pin_ops ice_dpll_output_tspll_ops_e825 = {
+	.direction_get = ice_dpll_output_direction,
+	.state_on_dpll_get = ice_dpll_pin_state_get_e825c,
+};
+
 static const struct dpll_pin_ops ice_dpll_pin_sma_ops = {
 	.state_on_dpll_set = ice_dpll_sma_pin_state_set,
 	.state_on_dpll_get = ice_dpll_sw_pin_state_get,
@@ -3674,6 +3811,7 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 	struct ice_dplls *d = &pf->dplls;
 	struct ice_dpll *de = &d->eec;
 	struct ice_dpll *dp = &d->pps;
+	struct ice_dpll *dt = &d->tspll;
 
 	ice_dpll_deinit_rclk_pin(pf);
 	if (cgu) {
@@ -3682,9 +3820,20 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 		ice_dpll_unregister_pins(de->dpll, inputs, &ice_dpll_input_ops,
 					 num_inputs);
 	}
-	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
 		ice_dpll_unregister_pins(de->dpll, inputs,
 					 &ice_dpll_input_ops_e825c, num_inputs);
+		ice_dpll_unregister_pins(dt->dpll, &pf->dplls.tspll_in,
+					 &ice_dpll_input_tspll_ops_e825,
+					 ICE_DPLL_TSPLL_INPUT_NUM_E825);
+		ice_dpll_unregister_pins(dt->dpll, &pf->dplls.tspll_out,
+					 &ice_dpll_output_tspll_ops_e825,
+					 ICE_DPLL_TSPLL_OUTPUT_NUM_E825);
+		ice_dpll_release_pins(&pf->dplls.tspll_in,
+				      ICE_DPLL_TSPLL_INPUT_NUM_E825);
+		ice_dpll_release_pins(&pf->dplls.tspll_out,
+				      ICE_DPLL_TSPLL_OUTPUT_NUM_E825);
+	}
 	ice_dpll_release_pins(inputs, num_inputs);
 	if (cgu) {
 		ice_dpll_unregister_pins(dp->dpll, outputs,
@@ -3779,6 +3928,26 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 						     ICE_DPLL_PIN_SW_NUM);
 		if (ret)
 			goto deinit_ufl;
+	} else if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
+		ret = ice_dpll_init_direct_pins(pf, cgu, &pf->dplls.tspll_in,
+						count,
+						ICE_DPLL_TSPLL_INPUT_NUM_E825,
+						&ice_dpll_input_tspll_ops_e825,
+						pf->dplls.tspll.dpll,
+						NULL);
+		if (ret)
+			goto deinit_inputs;
+		count += ICE_DPLL_TSPLL_INPUT_NUM_E825;
+
+		ret = ice_dpll_init_direct_pins(pf, cgu, &pf->dplls.tspll_out,
+						count,
+						ICE_DPLL_TSPLL_OUTPUT_NUM_E825,
+						&ice_dpll_output_tspll_ops_e825,
+						pf->dplls.tspll.dpll,
+						NULL);
+		if (ret)
+			goto deinit_tspll_in;
+		count += ICE_DPLL_TSPLL_OUTPUT_NUM_E825;
 	} else {
 		count += pf->dplls.num_outputs + 2 * ICE_DPLL_PIN_SW_NUM;
 	}
@@ -3788,7 +3957,7 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 						     count,
 						     &ice_dpll_pin_1588_ops);
 			if (ret)
-				goto deinit_inputs;
+				goto deinit_tspll_out;
 		}
 		count += ICE_DPLL_PIN_1588_NUM;
 	}
@@ -3817,6 +3986,26 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 				    pf->dplls.num_outputs,
 				    output_ops, pf->dplls.pps.dpll,
 				    pf->dplls.eec.dpll);
+deinit_tspll_out:
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
+		ice_dpll_unregister_pins(pf->dplls.tspll.dpll,
+					 &pf->dplls.tspll_out,
+					 &ice_dpll_output_tspll_ops_e825,
+					 ICE_DPLL_TSPLL_OUTPUT_NUM_E825);
+		ice_dpll_release_pins(&pf->dplls.tspll_out,
+				      ICE_DPLL_TSPLL_OUTPUT_NUM_E825);
+	}
+
+deinit_tspll_in:
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
+		ice_dpll_unregister_pins(pf->dplls.tspll.dpll,
+					 &pf->dplls.tspll_in,
+					 &ice_dpll_input_tspll_ops_e825,
+					 ICE_DPLL_TSPLL_INPUT_NUM_E825);
+		ice_dpll_release_pins(&pf->dplls.tspll_in,
+				      ICE_DPLL_TSPLL_INPUT_NUM_E825);
+	}
+
 deinit_inputs:
 	ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.inputs,
 				    pf->dplls.num_inputs,
@@ -4035,12 +4224,12 @@ static int ice_dpll_init_info_direct_pins_e825c(struct ice_pf *pf,
 	bool input;
 
 	switch (pin_type) {
-	case ICE_DPLL_PIN_TYPE_INPUT:
+	case ICE_DPLL_PIN_TYPE_INPUT_E825:
 		pins = pf->dplls.inputs;
 		num_pins = pf->dplls.num_inputs;
 		input = true;
 		break;
-	case ICE_DPLL_PIN_TYPE_OUTPUT:
+	case ICE_DPLL_PIN_TYPE_OUTPUT_E825:
 		pins = pf->dplls.outputs;
 		num_pins = pf->dplls.num_outputs;
 		input = false;
@@ -4059,6 +4248,49 @@ static int ice_dpll_init_info_direct_pins_e825c(struct ice_pf *pf,
 	return 0;
 }
 
+/**
+ * ice_dpll_init_info_tspll_pins_e825 - initializes E825 TSPLL pins info
+ * @pf: board private structure
+ * @pin_type: type of pins being initialized
+ *
+ * Init information for E825 device TSPLL pins, cache them in pf's pins
+ * structures.
+ *
+ * Return:
+ * * 0 - success
+ * * negative - init failure reason
+ */
+static int ice_dpll_init_info_tspll_pins_e825(struct ice_pf *pf,
+					      enum ice_dpll_pin_type pin_type)
+{
+	struct ice_dpll_pin *pin;
+
+	switch (pin_type) {
+	case ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825:
+		pin = &pf->dplls.tspll_in;
+		pin->prop.board_label = ice_dpll_pin_time_ref_e825;
+		pin->prop.type = DPLL_PIN_TYPE_EXT;
+		pin->prop.capabilities |=
+			DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
+		pin->prop.freq_supported = ice_cgu_pin_freq_156_25mhz;
+		pin->prop.freq_supported_num =
+			ARRAY_SIZE(ice_cgu_pin_freq_156_25mhz);
+		pin->freq = pin->prop.freq_supported[0].min;
+		pin->pf = pf;
+		break;
+	case ICE_DPLL_PIN_TYPE_OUTPUT_TSPLL_E825:
+		pin = &pf->dplls.tspll_out;
+		pin->prop.board_label = ice_dpll_pin_time_sync_e825;
+		pin->prop.type = DPLL_PIN_TYPE_INT_OSCILLATOR;
+		pin->pf = pf;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /**
  * ice_dpll_init_info_direct_pins - initializes direct pins info
  * @pf: board private structure
@@ -4297,10 +4529,7 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum ice_dpll_pin_type pin_type)
 	switch (pin_type) {
 	case ICE_DPLL_PIN_TYPE_INPUT:
 	case ICE_DPLL_PIN_TYPE_OUTPUT:
-		if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
-			return ice_dpll_init_info_direct_pins_e825c(pf, pin_type);
-		else
-			return ice_dpll_init_info_direct_pins(pf, pin_type);
+		return ice_dpll_init_info_direct_pins(pf, pin_type);
 	case ICE_DPLL_PIN_TYPE_RCLK_INPUT:
 		if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
 			return ice_dpll_init_info_pin_on_pin_e825c(pf);
@@ -4308,6 +4537,12 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum ice_dpll_pin_type pin_type)
 			return ice_dpll_init_info_rclk_pin(pf);
 	case ICE_DPLL_PIN_TYPE_SOFTWARE:
 		return ice_dpll_init_info_sw_pins(pf);
+	case ICE_DPLL_PIN_TYPE_INPUT_E825:
+	case ICE_DPLL_PIN_TYPE_OUTPUT_E825:
+		return ice_dpll_init_info_direct_pins_e825c(pf, pin_type);
+	case ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825:
+	case ICE_DPLL_PIN_TYPE_OUTPUT_TSPLL_E825:
+		return ice_dpll_init_info_tspll_pins_e825(pf, pin_type);
 	default:
 		return -EINVAL;
 	}
@@ -4342,18 +4577,28 @@ static int ice_dpll_init_info_e825c(struct ice_pf *pf)
 {
 	struct ice_dplls *d = &pf->dplls;
 	struct ice_dpll *de = &d->eec;
+	struct ice_dpll *dt = &d->tspll;
 	int ret = 0;
 	int i;
 
 	d->clock_id = ice_generate_clock_id(pf);
 	d->num_inputs = ICE_SYNCE_CLK_NUM;
 	de->dpll_state = DPLL_LOCK_STATUS_LOCKED;
+	dt->dpll_state = DPLL_LOCK_STATUS_LOCKED;
 
 	d->inputs = kcalloc(d->num_inputs, sizeof(*d->inputs), GFP_KERNEL);
 	if (!d->inputs)
 		return -ENOMEM;
 
-	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_INPUT);
+	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_INPUT_E825);
+	if (ret)
+		goto deinit_info;
+
+	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825);
+	if (ret)
+		goto deinit_info;
+
+	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_OUTPUT_TSPLL_E825);
 	if (ret)
 		goto deinit_info;
 
@@ -4375,7 +4620,11 @@ static int ice_dpll_init_info_e825c(struct ice_pf *pf)
 	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_RCLK_INPUT);
 	if (ret)
 		return ret;
+
 	de->mode = DPLL_MODE_MANUAL;
+	dt->mode = DPLL_MODE_MANUAL;
+	dt->dpll_idx = ICE_DPLL_TSPLL_IDX_E825;
+
 	dev_dbg(ice_pf_to_dev(pf),
 		"%s - success, inputs:%u, outputs:%u, rclk-parents:%u, pin_1588-parents:%u\n",
 		 __func__, d->num_inputs, d->num_outputs, d->rclk.num_parents,
@@ -4510,6 +4759,8 @@ void ice_dpll_deinit(struct ice_pf *pf)
 	ice_dpll_deinit_pins(pf, cgu);
 	if (pf->hw.mac_type != ICE_MAC_GENERIC_3K_E825)
 		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
+	else
+		ice_dpll_deinit_dpll(pf, &pf->dplls.tspll, cgu);
 	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
 	ice_dpll_deinit_info(pf);
 	mutex_destroy(&pf->dplls.lock);
@@ -4542,12 +4793,16 @@ void ice_dpll_init(struct ice_pf *pf)
 	err = ice_dpll_init_dpll(pf, &pf->dplls.eec, cgu, DPLL_TYPE_EEC);
 	if (err)
 		goto deinit_info;
-	if (pf->hw.mac_type != ICE_MAC_GENERIC_3K_E825) {
+
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		err = ice_dpll_init_dpll(pf, &pf->dplls.tspll, cgu,
+					 DPLL_TYPE_PPS);
+	else
 		err = ice_dpll_init_dpll(pf, &pf->dplls.pps, cgu,
 					 DPLL_TYPE_PPS);
-		if (err)
-			goto deinit_eec;
-	}
+	if (err)
+		goto deinit_eec;
+
 	err = ice_dpll_init_pins(pf, cgu);
 	if (err)
 		goto deinit_pps;
@@ -4563,7 +4818,10 @@ void ice_dpll_init(struct ice_pf *pf)
 deinit_pins:
 	ice_dpll_deinit_pins(pf, cgu);
 deinit_pps:
-	ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		ice_dpll_deinit_dpll(pf, &pf->dplls.tspll, cgu);
+	else
+		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
 deinit_eec:
 	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
 deinit_info:
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index 18a4b496ba49..cd662900075f 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -99,10 +99,13 @@ struct ice_dpll {
  * @lock: locks access to configuration of a dpll
  * @eec: pointer to EEC dpll dev
  * @pps: pointer to PPS dpll dev
+ * @tspll: pointer to TSPLL dpll dev
  * @inputs: input pins pointer
  * @outputs: output pins pointer
  * @pin_1588: pin controlling clock 1588 pointer
  * @rclk: recovered pins pointer
+ * @tspll_in: TSPLL input pin
+ * @tspll_out: TSPLL output pin
  * @num_inputs: number of input pins available on dpll
  * @num_outputs: number of output pins available on dpll
  * @cgu_state_acq_err_num: number of errors returned during periodic work
@@ -119,12 +122,15 @@ struct ice_dplls {
 	struct mutex lock;
 	struct ice_dpll eec;
 	struct ice_dpll pps;
+	struct ice_dpll tspll;
 	struct ice_dpll_pin *inputs;
 	struct ice_dpll_pin *outputs;
 	struct ice_dpll_pin pin_1588;
 	struct ice_dpll_pin sma[ICE_DPLL_PIN_SW_NUM];
 	struct ice_dpll_pin ufl[ICE_DPLL_PIN_SW_NUM];
 	struct ice_dpll_pin rclk;
+	struct ice_dpll_pin tspll_in;
+	struct ice_dpll_pin tspll_out;
 	u8 num_inputs;
 	u8 num_outputs;
 	u8 sma_data;
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 66320a4ab86f..6777ce8229cb 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -577,6 +577,71 @@ static int ice_tspll_dis_sticky_bits(struct ice_hw *hw)
 	}
 }
 
+/**
+ * ice_tspll_get_clk_src - get current TSPLL clock source
+ * @hw: board private hw structure
+ * @clk_src: pointer to store clk_src value
+ *
+ * Get current TSPLL clock source settings.
+ *
+ * Return:
+ * * 0 - OK
+ * * negative - error
+ */
+int ice_tspll_get_clk_src(struct ice_hw *hw, enum ice_clk_src *clk_src)
+{
+	int err;
+	u32 val;
+
+	/* Disable sticky lock detection so lock status reported is accurate */
+	err = ice_tspll_dis_sticky_bits(hw);
+	if (err)
+		return err;
+
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
+		err = ice_read_cgu_reg(hw, ICE_CGU_R23, &val);
+	else
+		err = ice_read_cgu_reg(hw, ICE_CGU_R24, &val);
+	if (err)
+		return err;
+
+	*clk_src = (enum ice_clk_src)FIELD_GET(ICE_CGU_R23_R24_TIME_REF_SEL,
+					       val);
+
+	return 0;
+}
+
+/**
+ * ice_tspll_set_cfg - configure TS PLL with new settings
+ * @hw: board private hw structure
+ * @clk_freq: clock frequency to program
+ * @clk_src: clock source to select (TIME_REF, or TCXO)
+ *
+ * Configure CGU with new clock source and clock frequency settings.
+ *
+ * Return:
+ * * 0 - OK
+ * * negative - error
+ */
+int ice_tspll_set_cfg(struct ice_pf *pf, enum ice_tspll_freq clk_freq,
+		      enum ice_clk_src clk_src)
+{
+	int ret;
+
+	if (!ice_tspll_check_params(&pf->hw, clk_freq, clk_src))
+		return -EINVAL;
+
+	ret = ice_tspll_dis_sticky_bits(&pf->hw);
+	if (ret)
+		return ret;
+
+	ret = ice_tspll_cfg(&pf->hw, clk_freq, clk_src);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 /**
  * ice_tspll_init - Initialize TSPLL with settings from firmware
  * @hw: Pointer to the HW structure
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.h b/drivers/net/ethernet/intel/ice/ice_tspll.h
index dec0b0105a5d..36fcf9e77a1f 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.h
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.h
@@ -33,6 +33,9 @@ struct ice_tspll_params_e82x {
 #define ICE_TSPLL_FBDIV_INTGR_E825		256
 
 int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable);
+int ice_tspll_get_clk_src(struct ice_hw *hw, enum ice_clk_src *clk_src);
+int ice_tspll_set_cfg(struct ice_pf *pf, enum ice_tspll_freq clk_freq,
+		      enum ice_clk_src clk_src);
 int ice_tspll_init(struct ice_hw *hw);
 
 #endif /* _ICE_TSPLL_H_ */

base-commit: bcf813c1760bb8ac9dbea1b6221253b015f48939
-- 
2.39.3


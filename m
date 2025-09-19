Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACA6B8AACD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 19:01:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33A234064B;
	Fri, 19 Sep 2025 17:01:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1wcw3g80jzNa; Fri, 19 Sep 2025 17:01:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D0E540594
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758301279;
	bh=M0SPT90zYQNkcAumaRQzlUSVa+EG/07mq0EAlb74cIQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HcsXD2dZo4wtK7J1ZADIRkCu7uglOcYE5VY3zIUp+CleUN92eWb3u9cFAns2AgxJn
	 GCVwF5DQOI8/Ks2i0fIJ3n+8rAVFFilnFEgDNT2ZqzBGyaxyLLFhc7AusnwDFrASmn
	 R7m+9YwLiC4I+4vOxTOErTtRuFIzx+GXzTbKcC+FdtYTeumV8YNcGEN1/h0nBqrFE5
	 rGCnp1h+Bzp+rOhZWulzNW9Ls+maSpNPiW14XDUmccFffUTGAXS8ZOKWhQD12ehKDi
	 TPOd2F40QaBz+eZHHNpckiadXsR3LcvI+OvQ25ksWotF7U1rSKiApOa99pad8X7Y6l
	 jOT/awk/IoTxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D0E540594;
	Fri, 19 Sep 2025 17:01:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DB642D7F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 17:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C162481E57
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 17:01:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qRNvIjwBlhle for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Sep 2025 17:01:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D504881E4D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D504881E4D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D504881E4D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 17:01:15 +0000 (UTC)
X-CSE-ConnectionGUID: x9UBOF4WRDursvfzCDW50g==
X-CSE-MsgGUID: Xs45YzKATOWpy+turS5kxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60597481"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60597481"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 10:01:14 -0700
X-CSE-ConnectionGUID: qlw6tB5GTPyy5FIdmLjJyQ==
X-CSE-MsgGUID: nwODc2gaSs6r16PChXmzDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175803467"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by fmviesa006.fm.intel.com with ESMTP; 19 Sep 2025 10:01:12 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Sep 2025 18:59:25 +0200
Message-Id: <20250919165925.1685446-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758301276; x=1789837276;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e9+8aWCuLqFamChgjP+yPHuO0Jzm/StIFkDvX6WByiY=;
 b=PPCO4z3Lii+1fn44ascYSvVR6Cu8QKtiiiR0vusl8G0mZ8Kmxx69TgWM
 GnmPQKGVewzr/aTpan8wy1LfxRlfNIF8KhWbM2cc04PSurNH0n62KRA2s
 L7kUukWUZoUklLWrw4/kyncOpEupi8bNTo1ZgGnE3DixjxMGBe//Sc0a1
 W1VHO3dI5R253dTOAnXAf8K+pIhsbhDM3mTp8nVTQsh5cxLvJkfDT2jOf
 DaLyRWHl3vYJgukb0hPsdnq1EsJ6hT/9KgxuoW1QIUhp6+D6YE/Za0LCV
 n8MFVCzoNV/GLS2+7eJ+x0lqo+i/mnP3UXcoeDYuAeerbY48Z+utRUnb8
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PPCO4z3L
Subject: [Intel-wired-lan] [RESEND PATCH v2 iwl-next] ice: add TS PLL
 control for E825 devices
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
Cc: netdev@vger.kernel.org, arkadiusz.kubalewski@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add ability to control CGU (Clock Generation Unit) 1588 Clock Reference
mux selection for E825 devices. There are two clock sources available
which might serve as input source to TSPLL block:
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

Add kworker thread to track E825 TSPLL dpll lock status. In case of
lock status change, notify the user about the change, and try to lock it
back (if lost). Refactor the code by adding 'periodic_work' callback
within ice_dplls structure to make the solution more generic and allow
different type of devices to register their own callback.

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
Resend of
https://lore.kernel.org/intel-wired-lan/20250919163824.1685384-1-grzegorz.nitka@intel.com/
- added netdev mailing list
v1->v2:
- updated pin_type_name array with the names for newly added pin
  types
- added TS PLL lock status monitor
---
 drivers/net/ethernet/intel/ice/ice_dpll.c  | 361 +++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dpll.h  |   8 +
 drivers/net/ethernet/intel/ice/ice_tspll.c | 126 +++++++
 drivers/net/ethernet/intel/ice/ice_tspll.h |   5 +
 4 files changed, 481 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index ae9bb669df8f..21e8069d2c0f 100644
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
@@ -71,16 +78,26 @@ static const char * const pin_type_name[] = {
 	[ICE_DPLL_PIN_TYPE_OUTPUT] = "output",
 	[ICE_DPLL_PIN_TYPE_RCLK_INPUT] = "rclk-input",
 	[ICE_DPLL_PIN_TYPE_SOFTWARE] = "software",
+	[ICE_DPLL_PIN_TYPE_INPUT_E825] = "input-e825",
+	[ICE_DPLL_PIN_TYPE_OUTPUT_E825] = "output-e825",
+	[ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825] = "input-tspll-e825",
+	[ICE_DPLL_PIN_TYPE_OUTPUT_TSPLL_E825] = "output-tspll-e825",
 };
 
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
@@ -473,6 +490,16 @@ ice_dpll_pin_enable(struct ice_hw *hw, struct ice_dpll_pin *pin,
 		ret = ice_aq_set_output_pin_cfg(hw, pin->idx, flags, dpll_idx,
 						0, 0);
 		break;
+	case ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825:
+		ret = ice_tspll_set_cfg(pin->pf,
+					ICE_TSPLL_FREQ_156_250,
+					ICE_CLK_SRC_TIME_REF);
+		/* Don't treat -EBUSY as an error. TSPLL lock status is
+		 * tracked and restored (if possible) in DPLL periodic thread.
+		 */
+		if (ret == -EBUSY)
+			ret = 0;
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -518,6 +545,16 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
 			flags |= ICE_AQC_SET_CGU_OUT_CFG_ESYNC_EN;
 		ret = ice_aq_set_output_pin_cfg(hw, pin->idx, flags, 0, 0, 0);
 		break;
+	case ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825:
+		ret = ice_tspll_set_cfg(pin->pf,
+					ICE_TSPLL_FREQ_156_250,
+					ICE_CLK_SRC_TCXO);
+		/* Don't treat -EBUSY as an error. TSPLL lock status is
+		 * tracked and restored (if possible) in DPLL periodic thread.
+		 */
+		if (ret == -EBUSY)
+			ret = 0;
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -641,6 +678,36 @@ static int ice_dpll_update_pin_1588_e825c(struct ice_hw *hw,
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
@@ -796,6 +863,11 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
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
@@ -1117,7 +1189,8 @@ ice_dpll_pin_state_get(const struct dpll_pin *pin, void *pin_priv,
 	if (ret)
 		goto unlock;
 	if (pin_type == ICE_DPLL_PIN_TYPE_INPUT ||
-	    pin_type == ICE_DPLL_PIN_TYPE_OUTPUT)
+	    pin_type == ICE_DPLL_PIN_TYPE_OUTPUT ||
+	    pin_type == ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825)
 		*state = p->state[d->dpll_idx];
 	ret = 0;
 unlock:
@@ -1205,6 +1278,72 @@ ice_dpll_input_state_get(const struct dpll_pin *pin, void *pin_priv,
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
@@ -2662,6 +2801,18 @@ static const struct dpll_pin_ops ice_dpll_input_ops_e825c = {
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
@@ -3006,6 +3157,53 @@ static void ice_dpll_periodic_work(struct kthread_work *work)
 				   msecs_to_jiffies(500));
 }
 
+/**
+ * ice_dpll_periodic_work_e825 - DPLLs periodic worker for E825 device
+ * @work: pointer to kthread_work structure
+ *
+ * DPLLs periodic worker is responsible for polling state of TS PLL.
+ * Context: Holds pf->dplls.lock
+ */
+static void ice_dpll_periodic_work_e825(struct kthread_work *work)
+{
+	struct ice_dplls *d = container_of(work, struct ice_dplls, work.work);
+	struct ice_pf *pf = container_of(d, struct ice_pf, dplls);
+	struct ice_dpll *tp = &pf->dplls.tspll;
+	bool lock_lost;
+	int err = 0;
+
+	if (ice_is_reset_in_progress(pf->state))
+		goto resched;
+
+	mutex_lock(&pf->dplls.lock);
+
+	err = ice_tspll_lost_lock_e825c(&pf->hw, &lock_lost);
+	if (err) {
+		dev_err(ice_pf_to_dev(pf),
+			"Failed reading TimeSync PLL lock status. Retrying.\n");
+	} else if (lock_lost) {
+		tp->dpll_state = DPLL_LOCK_STATUS_UNLOCKED;
+		err = ice_tspll_restart_e825c(&pf->hw);
+		if (err)
+			dev_err(ice_pf_to_dev(pf), "Failed to restart TimeSync PLL lock status.\n");
+	} else {
+		tp->dpll_state = DPLL_LOCK_STATUS_LOCKED;
+	}
+
+	mutex_unlock(&pf->dplls.lock);
+
+	if (tp->prev_dpll_state != tp->dpll_state) {
+		tp->prev_dpll_state = tp->dpll_state;
+		dpll_device_change_ntf(tp->dpll);
+	}
+
+resched:
+	/* Run twice a second or reschedule if update failed */
+	kthread_queue_delayed_work(d->kworker, &d->work,
+				   err ? msecs_to_jiffies(10) :
+				   msecs_to_jiffies(MSEC_PER_SEC / 2));
+}
+
 /**
  * ice_dpll_init_ref_sync_inputs - initialize reference sync pin pairs
  * @pf: pf private structure
@@ -3484,6 +3682,7 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 	struct ice_dplls *d = &pf->dplls;
 	struct ice_dpll *de = &d->eec;
 	struct ice_dpll *dp = &d->pps;
+	struct ice_dpll *dt = &d->tspll;
 
 	ice_dpll_deinit_rclk_pin(pf);
 	if (cgu) {
@@ -3492,9 +3691,20 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
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
@@ -3587,6 +3797,26 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
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
@@ -3596,7 +3826,7 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 						     count,
 						     &ice_dpll_pin_1588_ops);
 			if (ret)
-				goto deinit_inputs;
+				goto deinit_tspll_out;
 		}
 		count += ICE_DPLL_PIN_1588_NUM;
 	}
@@ -3624,6 +3854,26 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
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
@@ -3729,7 +3979,7 @@ static int ice_dpll_init_worker(struct ice_pf *pf)
 	struct ice_dplls *d = &pf->dplls;
 	struct kthread_worker *kworker;
 
-	kthread_init_delayed_work(&d->work, ice_dpll_periodic_work);
+	kthread_init_delayed_work(&d->work, d->periodic_work);
 	kworker = kthread_run_worker(0, "ice-dplls-%s",
 					dev_name(ice_pf_to_dev(pf)));
 	if (IS_ERR(kworker))
@@ -3842,12 +4092,12 @@ static int ice_dpll_init_info_direct_pins_e825c(struct ice_pf *pf,
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
@@ -3866,6 +4116,49 @@ static int ice_dpll_init_info_direct_pins_e825c(struct ice_pf *pf,
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
@@ -4104,11 +4397,7 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum ice_dpll_pin_type pin_type)
 	switch (pin_type) {
 	case ICE_DPLL_PIN_TYPE_INPUT:
 	case ICE_DPLL_PIN_TYPE_OUTPUT:
-		if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
-			return ice_dpll_init_info_direct_pins_e825c(pf,
-								    pin_type);
-		else
-			return ice_dpll_init_info_direct_pins(pf, pin_type);
+		return ice_dpll_init_info_direct_pins(pf, pin_type);
 	case ICE_DPLL_PIN_TYPE_RCLK_INPUT:
 		if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
 			return ice_dpll_init_info_pin_on_pin_e825c(pf);
@@ -4116,6 +4405,12 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum ice_dpll_pin_type pin_type)
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
@@ -4150,18 +4445,28 @@ static int ice_dpll_init_info_e825c(struct ice_pf *pf)
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
 
@@ -4183,7 +4488,14 @@ static int ice_dpll_init_info_e825c(struct ice_pf *pf)
 	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_RCLK_INPUT);
 	if (ret)
 		return ret;
+
+	if (ice_pf_src_tmr_owned(pf))
+		d->periodic_work = ice_dpll_periodic_work_e825;
+
 	de->mode = DPLL_MODE_MANUAL;
+	dt->mode = DPLL_MODE_MANUAL;
+	dt->dpll_idx = ICE_DPLL_TSPLL_IDX_E825;
+
 	dev_dbg(ice_pf_to_dev(pf),
 		"%s - success, inputs: %u, outputs: %u, rclk-parents: %u, pin_1588-parents: %u\n",
 		 __func__, d->num_inputs, d->num_outputs, d->rclk.num_parents,
@@ -4267,6 +4579,8 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
 		ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_SOFTWARE);
 		if (ret)
 			goto deinit_info;
+
+		d->periodic_work = ice_dpll_periodic_work;
 	}
 
 	ret = ice_get_cgu_rclk_pin_info(&pf->hw, &d->base_rclk_idx,
@@ -4312,12 +4626,14 @@ void ice_dpll_deinit(struct ice_pf *pf)
 	bool cgu = ice_is_feature_supported(pf, ICE_F_CGU);
 
 	clear_bit(ICE_FLAG_DPLL, pf->flags);
-	if (cgu)
+	if (pf->dplls.periodic_work)
 		ice_dpll_deinit_worker(pf);
 
 	ice_dpll_deinit_pins(pf, cgu);
 	if (pf->hw.mac_type != ICE_MAC_GENERIC_3K_E825)
 		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
+	else
+		ice_dpll_deinit_dpll(pf, &pf->dplls.tspll, cgu);
 	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
 	ice_dpll_deinit_info(pf);
 	mutex_destroy(&pf->dplls.lock);
@@ -4350,16 +4666,20 @@ void ice_dpll_init(struct ice_pf *pf)
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
-	if (cgu && pf->hw.mac_type != ICE_MAC_GENERIC_3K_E825) {
+	if (d->periodic_work) {
 		err = ice_dpll_init_worker(pf);
 		if (err)
 			goto deinit_pins;
@@ -4371,7 +4691,10 @@ void ice_dpll_init(struct ice_pf *pf)
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
index 247b4f2727ea..57cfcfc66be1 100644
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
@@ -112,6 +115,7 @@ struct ice_dpll {
  * @input_phase_adj_max: max phase adjust value for an input pins
  * @output_phase_adj_max: max phase adjust value for an output pins
  * @periodic_counter: counter of periodic work executions
+ * @periodic_work: callback for periodic work thread to register
  */
 struct ice_dplls {
 	struct kthread_worker *kworker;
@@ -119,12 +123,15 @@ struct ice_dplls {
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
@@ -136,6 +143,7 @@ struct ice_dplls {
 	s32 output_phase_adj_max;
 	u32 periodic_counter;
 	bool generic;
+	void (*periodic_work)(struct kthread_work *work);
 };
 
 static inline void
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 78d74fb0d94b..38bb87b4a664 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -531,6 +531,67 @@ int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable)
 	return ice_write_cgu_reg(hw, ICE_CGU_R9, val);
 }
 
+/**
+ * ice_tspll_lost_lock_e825c - check if TSPLL lost lock
+ * @hw: Pointer to the HW struct
+ * @lost_lock: Output flag for reporting lost lock
+ *
+ * Get E825 device TSPLL dpll lock status.
+ *
+ * Return:
+ * * 0 - OK
+ * * negative - error
+ */
+int ice_tspll_lost_lock_e825c(struct ice_hw *hw, bool *lost_lock)
+{
+	u32 val;
+	int err;
+
+	err = ice_read_cgu_reg(hw, ICE_CGU_RO_LOCK, &val);
+	if (err)
+		return err;
+
+	if (!FIELD_GET(ICE_CGU_RO_LOCK_TRUE_LOCK, val))
+		*lost_lock = true;
+	else
+		*lost_lock = false;
+
+	return 0;
+}
+
+/**
+ * ice_tspll_restart_e825c - trigger TSPLL restart
+ * @hw: Pointer to the HW struct
+ *
+ * Re-enable TSPLL for E825 device.
+ *
+ * Return:
+ * * 0 - OK
+ * * negative - error
+ */
+int ice_tspll_restart_e825c(struct ice_hw *hw)
+{
+	u32 val;
+	int err;
+
+	/* Read the initial values of r23 and disable the PLL */
+	err = ice_read_cgu_reg(hw, ICE_CGU_R23, &val);
+	if (err)
+		return err;
+
+	val &= ~ICE_CGU_R23_R24_TSPLL_ENABLE;
+	err = ice_write_cgu_reg(hw, ICE_CGU_R23, val);
+	if (err)
+		return err;
+
+	/* Wait at least 1 ms before reenabling PLL */
+	usleep_range(USEC_PER_MSEC, 2 * USEC_PER_MSEC);
+	val |= ICE_CGU_R23_R24_TSPLL_ENABLE;
+	err = ice_write_cgu_reg(hw, ICE_CGU_R23, val);
+
+	return err;
+}
+
 /**
  * ice_tspll_cfg - Configure the Clock Generation Unit TSPLL
  * @hw: Pointer to the HW struct
@@ -577,6 +638,71 @@ static int ice_tspll_dis_sticky_bits(struct ice_hw *hw)
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
index cf5581f152e7..296bde8d29b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.h
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.h
@@ -33,6 +33,9 @@ struct ice_tspll_params_e82x {
 #define ICE_TSPLL_FBDIV_INTGR_E825		256
 
 int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable);
+int ice_tspll_get_clk_src(struct ice_hw *hw, enum ice_clk_src *clk_src);
+int ice_tspll_set_cfg(struct ice_pf *pf, enum ice_tspll_freq clk_freq,
+		      enum ice_clk_src clk_src);
 int ice_tspll_init(struct ice_hw *hw);
 int ice_tspll_bypass_mux_active_e825c(struct ice_hw *hw, u8 port, bool *active,
 				      enum ice_synce_clk output);
@@ -40,4 +43,6 @@ int ice_tspll_cfg_bypass_mux_e825c(struct ice_hw *hw, bool ena, u32 port_num,
 				   enum ice_synce_clk output, bool clock_1588);
 int ice_tspll_cfg_synce_ethdiv_e825c(struct ice_hw *hw,
 				     enum ice_synce_clk output);
+int ice_tspll_lost_lock_e825c(struct ice_hw *hw, bool *lock_lost);
+int ice_tspll_restart_e825c(struct ice_hw *hw);
 #endif /* _ICE_TSPLL_H_ */

base-commit: ff9f8329f189c17549f3fbb5058505fb3e46dd99
-- 
2.39.3


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D6C793296
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 01:29:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6499E4081F;
	Tue,  5 Sep 2023 23:29:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6499E4081F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693956558;
	bh=dEDL2oxlYvwACWdERKlcTi/vgbD2WrXIibDWKYe5N7M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ft9YrLejEYI3hvGBTzLtuWW7hwja4JI1QubQG2nHxb2iDucArqjEGJ+si2F9DBA+Y
	 3NLPUw7TNdGH11d2oM1ijeWODXsBuafgLAk1l9PkzfxIe+8t8jTGXXOkd2VfhvkU3F
	 QbXDHfuB3NPhXU65o1i+UBvFWbppiYoh3a7WjotFWFq9ngkZqeiDbR6FpAssJlkAhu
	 RFfpsZtsitCZ4GvoP7rjkCLN3a1fs+lCXn0fLg3WUyy3rEiHa4bHmq6kf1HzE9ufay
	 DzF49dQzxLe4AtxE0eSTXl/HnTzbgLbByXug+faYdh60Np5S5GgwxsCyZ1hAMdW2XN
	 KJmb+yp50/H6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SFvgobAWWUlu; Tue,  5 Sep 2023 23:29:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8149C4085D;
	Tue,  5 Sep 2023 23:29:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8149C4085D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9BE3E1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 23:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8229B813E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 23:29:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8229B813E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NrWRVxrTNh1x for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Sep 2023 23:29:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6851281277
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 23:29:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6851281277
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="379643946"
X-IronPort-AV: E=Sophos;i="6.02,230,1688454000"; d="scan'208";a="379643946"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 16:29:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="744448422"
X-IronPort-AV: E=Sophos;i="6.02,230,1688454000"; d="scan'208";a="744448422"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmsmga007.fm.intel.com with ESMTP; 05 Sep 2023 16:28:59 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: kuba@kernel.org, jiri@resnulli.us, jonathan.lemon@gmail.com,
 pabeni@redhat.com, vadim.fedorenko@linux.dev
Date: Wed,  6 Sep 2023 01:26:10 +0200
Message-Id: <20230905232610.1403647-5-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230905232610.1403647-1-arkadiusz.kubalewski@intel.com>
References: <20230905232610.1403647-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693956542; x=1725492542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6ILH6tqAB5WQEX9vhWwiKc9ectzRsNTAExKhJfVX6K4=;
 b=KTYhgW3t4vcfZZMigANDd46LCb25QcQjNm7TO7Jm0vtBMZjAQ6/9BSK/
 hxx5rHbyIfX7EVt0yb1icCXPmQZuMZfMxxt0iyBLE8hHsOWnrPma9IVaY
 B2zVKbz9geIcbLeHL/RNanErnQwSQvnspM8Pqwwf/GLM9s4ggqRojYLK9
 HIZjK9RrUrQxULhHrMPDY+3rNUwAMj1monoFaC6wODFWj9aM60WkSvxge
 JO5z+i34+NcQGL+IHNj5OYBXiG/Z5xicIf2Q0g60BTosC3X93TBvkfQle
 cH2Ru3ZD7F9d7H2XsI7BODEDuhMVwa9JNZiY1xqf8D0EHJttidxA60UHH
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KTYhgW3t
Subject: [Intel-wired-lan] [PATCH net-next 4/4] ice: dpll: implement pin
 phase related callbacks
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
Cc: bvanassche@acm.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement new callback ops related to measurment and adjustment of
signal phase for pin-dpll in ice driver.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 224 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h |  10 +-
 2 files changed, 230 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 1faee9cb944d..6f7a2916f6c2 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -878,6 +878,203 @@ ice_dpll_output_direction(const struct dpll_pin *pin, void *pin_priv,
 	return 0;
 }
 
+/**
+ * ice_dpll_pin_phase_adjust_get - callback for get pin phase adjust value
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @phase_adjust: on success holds pin phase_adjust value
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for getting phase adjust value of a pin.
+ *
+ * Context: Acquires pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_pin_phase_adjust_get(const struct dpll_pin *pin, void *pin_priv,
+			      const struct dpll_device *dpll, void *dpll_priv,
+			      s32 *phase_adjust,
+			      struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_pf *pf = p->pf;
+
+	mutex_lock(&pf->dplls.lock);
+	*phase_adjust = p->phase_adjust;
+	mutex_unlock(&pf->dplls.lock);
+
+	return 0;
+}
+
+/**
+ * ice_dpll_pin_phase_adjust_set - helper for setting a pin phase adjust value
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @phase_adjust: phase_adjust to be set
+ * @extack: error reporting
+ * @type: type of a pin
+ *
+ * Helper for dpll subsystem callback. Handler for setting phase adjust value
+ * of a pin.
+ *
+ * Context: Acquires pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_pin_phase_adjust_set(const struct dpll_pin *pin, void *pin_priv,
+			      const struct dpll_device *dpll, void *dpll_priv,
+			      s32 phase_adjust,
+			      struct netlink_ext_ack *extack,
+			      enum ice_dpll_pin_type type)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_dpll *d = dpll_priv;
+	struct ice_pf *pf = d->pf;
+	u8 flag, flags_en = 0;
+	int ret;
+
+	mutex_lock(&pf->dplls.lock);
+	if (phase_adjust == p->phase_adjust) {
+		mutex_unlock(&pf->dplls.lock);
+		return 0;
+	}
+	switch (type) {
+	case ICE_DPLL_PIN_TYPE_INPUT:
+		flag = ICE_AQC_SET_CGU_IN_CFG_FLG1_UPDATE_DELAY;
+		if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN)
+			flags_en |= ICE_AQC_SET_CGU_IN_CFG_FLG2_ESYNC_EN;
+		if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_INPUT_EN)
+			flags_en |= ICE_AQC_SET_CGU_IN_CFG_FLG2_INPUT_EN;
+		ret = ice_aq_set_input_pin_cfg(&pf->hw, p->idx, flag, flags_en,
+					       0, phase_adjust);
+		break;
+	case ICE_DPLL_PIN_TYPE_OUTPUT:
+		flag = ICE_AQC_SET_CGU_OUT_CFG_UPDATE_PHASE;
+		if (p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_OUT_EN)
+			flag |= ICE_AQC_SET_CGU_OUT_CFG_OUT_EN;
+		if (p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_EN)
+			flag |= ICE_AQC_SET_CGU_OUT_CFG_ESYNC_EN;
+		ret = ice_aq_set_output_pin_cfg(&pf->hw, p->idx, flag, 0, 0,
+						phase_adjust);
+		break;
+	default:
+		ret = -EINVAL;
+	}
+	if (!ret)
+		p->phase_adjust = phase_adjust;
+	mutex_unlock(&pf->dplls.lock);
+	if (ret)
+		NL_SET_ERR_MSG_FMT(extack,
+				   "err:%d %s failed to set pin phase_adjust:%d for pin:%u on dpll:%u\n",
+				   ret,
+				   ice_aq_str(pf->hw.adminq.sq_last_status),
+				   phase_adjust, p->idx, d->dpll_idx);
+
+	return ret;
+}
+
+/**
+ * ice_dpll_input_phase_adjust_set - callback for set input pin phase adjust
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @phase_adjust: phase_adjust to be set
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Wraps a handler for setting phase adjust on input
+ * pin.
+ *
+ * Context: Calls a function which acquires pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_input_phase_adjust_set(const struct dpll_pin *pin, void *pin_priv,
+				const struct dpll_device *dpll, void *dpll_priv,
+				s32 phase_adjust,
+				struct netlink_ext_ack *extack)
+{
+	return ice_dpll_pin_phase_adjust_set(pin, pin_priv, dpll, dpll_priv,
+					     phase_adjust, extack,
+					     ICE_DPLL_PIN_TYPE_INPUT);
+}
+
+/**
+ * ice_dpll_output_phase_adjust_set - callback for set output pin phase adjust
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @phase_adjust: phase_adjust to be set
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Wraps a handler for setting phase adjust on output
+ * pin.
+ *
+ * Context: Calls a function which acquires pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_output_phase_adjust_set(const struct dpll_pin *pin, void *pin_priv,
+				 const struct dpll_device *dpll, void *dpll_priv,
+				 s32 phase_adjust,
+				 struct netlink_ext_ack *extack)
+{
+	return ice_dpll_pin_phase_adjust_set(pin, pin_priv, dpll, dpll_priv,
+					     phase_adjust, extack,
+					     ICE_DPLL_PIN_TYPE_OUTPUT);
+}
+
+#define ICE_DPLL_PHASE_OFFSET_DIVIDER	100
+#define ICE_DPLL_PHASE_OFFSET_FACTOR		\
+	(DPLL_PHASE_OFFSET_DIVIDER / ICE_DPLL_PHASE_OFFSET_DIVIDER)
+/**
+ * ice_dpll_phase_offset_get - callback for get dpll phase shift value
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @phase_adjust: on success holds pin phase_adjust value
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for getting phase shift value between
+ * dpll's input and output.
+ *
+ * Context: Acquires pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
+			  const struct dpll_device *dpll, void *dpll_priv,
+			  s64 *phase_offset, struct netlink_ext_ack *extack)
+{
+	struct ice_dpll *d = dpll_priv;
+	struct ice_pf *pf = d->pf;
+
+	mutex_lock(&pf->dplls.lock);
+	if (d->active_input == pin)
+		*phase_offset = d->phase_offset * ICE_DPLL_PHASE_OFFSET_FACTOR;
+	else
+		*phase_offset = 0;
+	mutex_unlock(&pf->dplls.lock);
+
+	return 0;
+}
+
 /**
  * ice_dpll_rclk_state_on_pin_set - set a state on rclk pin
  * @pin: pointer to a pin
@@ -993,6 +1190,9 @@ static const struct dpll_pin_ops ice_dpll_input_ops = {
 	.prio_get = ice_dpll_input_prio_get,
 	.prio_set = ice_dpll_input_prio_set,
 	.direction_get = ice_dpll_input_direction,
+	.phase_adjust_get = ice_dpll_pin_phase_adjust_get,
+	.phase_adjust_set = ice_dpll_input_phase_adjust_set,
+	.phase_offset_get = ice_dpll_phase_offset_get,
 };
 
 static const struct dpll_pin_ops ice_dpll_output_ops = {
@@ -1001,6 +1201,8 @@ static const struct dpll_pin_ops ice_dpll_output_ops = {
 	.state_on_dpll_get = ice_dpll_output_state_get,
 	.state_on_dpll_set = ice_dpll_output_state_set,
 	.direction_get = ice_dpll_output_direction,
+	.phase_adjust_get = ice_dpll_pin_phase_adjust_get,
+	.phase_adjust_set = ice_dpll_output_phase_adjust_set,
 };
 
 static const struct dpll_device_ops ice_dpll_ops = {
@@ -1031,6 +1233,8 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
  */
 static void ice_dpll_notify_changes(struct ice_dpll *d)
 {
+	bool pin_notified = false;
+
 	if (d->prev_dpll_state != d->dpll_state) {
 		d->prev_dpll_state = d->dpll_state;
 		dpll_device_change_ntf(d->dpll);
@@ -1039,7 +1243,14 @@ static void ice_dpll_notify_changes(struct ice_dpll *d)
 		if (d->prev_input)
 			dpll_pin_change_ntf(d->prev_input);
 		d->prev_input = d->active_input;
-		if (d->active_input)
+		if (d->active_input) {
+			dpll_pin_change_ntf(d->active_input);
+			pin_notified = true;
+		}
+	}
+	if (d->prev_phase_offset != d->phase_offset) {
+		d->prev_phase_offset = d->phase_offset;
+		if (!pin_notified && d->active_input)
 			dpll_pin_change_ntf(d->active_input);
 	}
 }
@@ -1065,7 +1276,7 @@ ice_dpll_update_state(struct ice_pf *pf, struct ice_dpll *d, bool init)
 
 	ret = ice_get_cgu_state(&pf->hw, d->dpll_idx, d->prev_dpll_state,
 				&d->input_idx, &d->ref_state, &d->eec_mode,
-				&d->phase_shift, &d->dpll_state);
+				&d->phase_offset, &d->dpll_state);
 
 	dev_dbg(ice_pf_to_dev(pf),
 		"update dpll=%d, prev_src_idx:%u, src_idx:%u, state:%d, prev:%d mode:%d\n",
@@ -1656,6 +1867,15 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 				return ret;
 			pins[i].prop.capabilities |=
 				DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE;
+			pins[i].prop.phase_range.min =
+				pf->dplls.input_phase_adj_max;
+			pins[i].prop.phase_range.max =
+				-pf->dplls.input_phase_adj_max;
+		} else {
+			pins[i].prop.phase_range.min =
+				pf->dplls.output_phase_adj_max,
+			pins[i].prop.phase_range.max =
+				-pf->dplls.output_phase_adj_max;
 		}
 		pins[i].prop.capabilities |=
 			DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index 9c524c4bdfd7..5f23f82d31a9 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -19,6 +19,7 @@
  * @state: state of a pin
  * @prop: pin properties
  * @freq: current frequency of a pin
+ * @phase_adjust: current phase adjust value
  */
 struct ice_dpll_pin {
 	struct dpll_pin *pin;
@@ -30,6 +31,7 @@ struct ice_dpll_pin {
 	u8 state[ICE_DPLL_RCLK_NUM_MAX];
 	struct dpll_pin_properties prop;
 	u32 freq;
+	s32 phase_adjust;
 };
 
 /** ice_dpll - store info required for DPLL control
@@ -40,7 +42,8 @@ struct ice_dpll_pin {
  * @prev_input_idx: previously selected input index
  * @ref_state: state of dpll reference signals
  * @eec_mode: eec_mode dpll is configured for
- * @phase_shift: phase shift delay of a dpll
+ * @phase_offset: phase offset of active pin vs dpll signal
+ * @prev_phase_offset: previous phase offset of active pin vs dpll signal
  * @input_prio: priorities of each input
  * @dpll_state: current dpll sync state
  * @prev_dpll_state: last dpll sync state
@@ -55,7 +58,8 @@ struct ice_dpll {
 	u8 prev_input_idx;
 	u8 ref_state;
 	u8 eec_mode;
-	s64 phase_shift;
+	s64 phase_offset;
+	s64 prev_phase_offset;
 	u8 *input_prio;
 	enum dpll_lock_status dpll_state;
 	enum dpll_lock_status prev_dpll_state;
@@ -78,6 +82,8 @@ struct ice_dpll {
  * @cgu_state_acq_err_num: number of errors returned during periodic work
  * @base_rclk_idx: idx of first pin used for clock revocery pins
  * @clock_id: clock_id of dplls
+ * @input_phase_adj_max: max phase adjust value for an input pins
+ * @output_phase_adj_max: max phase adjust value for an output pins
  */
 struct ice_dplls {
 	struct kthread_worker *kworker;
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

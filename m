Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 980E0AE9F94
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jun 2025 15:58:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA7DA60DDC;
	Thu, 26 Jun 2025 13:58:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MpBq9puvrovZ; Thu, 26 Jun 2025 13:58:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8188C60DD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750946328;
	bh=k5+0aBQPxaD/8WOvx8zl0cpMZ/j7VbBOD+YDViaWW94=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YZVqWgxi9UB4f9vVs5ZJesmAAy/KCMB3FCTcBh0RNHU37onfwgMgSTdqkVIFWRp6z
	 yroYJ+QeBHDIUG+j1Cb1HK8xSYigcCzFUYIfEUDmyR6xFj+xnGNdcNiesUkfwjTWfg
	 vxi5y/b8LvkMYb7MvC7KbW951WFw0FTtza3Ojd3U+d1kE21AxCfWs0+WSorYUnRsFT
	 TYrFqjRF/5X6+cqeEDIZ4594On7Imgc7mj21Nd5KQhW06MjPhvOTsMK4OIKhFeFXTC
	 +c/bQD+15yu6TA78bq+sahoGbnjATYthSoy/2zp1tte6515uPf3FxveY8vHZUCk4hM
	 wtCmgxRPYnYRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8188C60DD7;
	Thu, 26 Jun 2025 13:58:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 799BF154
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 13:58:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 601306114F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 13:58:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sAU_QoeU7TsR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jun 2025 13:58:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4743860DD7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4743860DD7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4743860DD7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 13:58:45 +0000 (UTC)
X-CSE-ConnectionGUID: Arv1bHVVR/ugsbHFTuR9ew==
X-CSE-MsgGUID: iVFI6gY4Tp6BCvgie8I1Lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="40859271"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="40859271"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 06:58:44 -0700
X-CSE-ConnectionGUID: EqZ4Acf9TfW2tm0jq5CtNA==
X-CSE-MsgGUID: yGZNMOGeQoy2hmGXgJ94EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="158271347"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa005.jf.intel.com with ESMTP; 26 Jun 2025 06:58:40 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, corbet@lwn.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-doc@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Thu, 26 Jun 2025 15:52:19 +0200
Message-Id: <20250626135219.1769350-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250626135219.1769350-1-arkadiusz.kubalewski@intel.com>
References: <20250626135219.1769350-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750946325; x=1782482325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0laFhqlvaqRpPTlxzuDrZaFjv+XR0TCdM/C39Z5OfSc=;
 b=nvz66jWqHTCfRN1+25LpPN7LX9YZbuRp6JBYJ87LVA9g9B999Ety2LVA
 cPBJhwx8s+SvU72e24FdJnlpyJUg9hkSsNBIOsZaiwqu+WpfWX8kwW1Gy
 vNG5QHmXQg9JoqPbxD+4SFcUIspriaJTmsdLWhYriyPWX7PU0OW/gvnKc
 p2OFd/RLawyQX9shNSlHYlXqoi+TVQvoDNJJVMSTF/tLVKITQd6BXAbdJ
 hNINfPX5PHxWLHJZNQf9p6/jZ6qibsJYoUx9XWf2851JdxU6IWTUbKRzQ
 OV+Zdt7uS81Ev1DxGSu3yvhkSSqz4ydQN+CDjj4dsyfmnKly3G1MlXCji
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nvz66jWq
Subject: [Intel-wired-lan] [PATCH net-next v7 3/3] ice: add ref-sync dpll
 pins
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

Implement reference sync input pin get/set callbacks, allow user space
control over dpll pin pairs capable of reference sync support.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v7:
- rebase and align with introducation of software pins
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 284 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dpll.h     |   2 +
 3 files changed, 288 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 0ae7387e0599..712f7ef2a00a 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2304,6 +2304,8 @@ struct ice_aqc_get_cgu_abilities {
 	u8 rsvd[3];
 };
 
+#define ICE_AQC_CGU_IN_CFG_FLG2_REFSYNC_EN		BIT(7)
+
 /* Set CGU input config (direct 0x0C62) */
 struct ice_aqc_set_cgu_input_config {
 	u8 input_idx;
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index d6190d9e32ba..39743cdba986 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -36,6 +36,19 @@
 #define ICE_DPLL_PIN_SW_2_OUTPUT_ABS_IDX \
 	(ICE_DPLL_PIN_SW_OUTPUT_ABS(ICE_DPLL_PIN_SW_2_IDX))
 
+#define ICE_SR_PFA_DPLL_DEFAULTS		0x152
+#define ICE_DPLL_PFA_REF_SYNC_TYPE		0x2420
+#define ICE_DPLL_PFA_REF_SYNC_TYPE2		0x2424
+#define ICE_DPLL_PFA_END			0xFFFF
+#define ICE_DPLL_PFA_HEADER_LEN			4
+#define ICE_DPLL_PFA_ENTRY_LEN			3
+#define ICE_DPLL_PFA_MAILBOX_REF_SYNC_PIN_S	4
+#define ICE_DPLL_PFA_MASK_OFFSET		1
+#define ICE_DPLL_PFA_VALUE_OFFSET		2
+
+#define ICE_DPLL_E810C_SFP_NC_PINS		2
+#define ICE_DPLL_E810C_SFP_NC_START		4
+
 /**
  * enum ice_dpll_pin_type - enumerate ice pin types:
  * @ICE_DPLL_PIN_INVALID: invalid pin type
@@ -2107,6 +2120,149 @@ ice_dpll_sw_esync_get(const struct dpll_pin *pin, void *pin_priv,
 						 extack);
 }
 
+/*
+ * ice_dpll_input_ref_sync_set - callback for setting reference sync feature
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @ref_pin: pin pointer for reference sync pair
+ * @ref_pin_priv: private data pointer of ref_pin
+ * @state: requested state for reference sync for pin pair
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for setting reference sync frequency
+ * feature for input pin.
+ *
+ * Context: Acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_input_ref_sync_set(const struct dpll_pin *pin, void *pin_priv,
+			    const struct dpll_pin *ref_pin, void *ref_pin_priv,
+			    const enum dpll_pin_state state,
+			    struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_pf *pf = p->pf;
+	u8 flags_en = 0;
+	int ret;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+	mutex_lock(&pf->dplls.lock);
+
+	if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_INPUT_EN)
+		flags_en = ICE_AQC_SET_CGU_IN_CFG_FLG2_INPUT_EN;
+	if (state == DPLL_PIN_STATE_CONNECTED)
+		flags_en |= ICE_AQC_CGU_IN_CFG_FLG2_REFSYNC_EN;
+	ret = ice_aq_set_input_pin_cfg(&pf->hw, p->idx, 0, flags_en, 0, 0);
+	if (!ret)
+		ret = ice_dpll_pin_state_update(pf, p, ICE_DPLL_PIN_TYPE_INPUT,
+						extack);
+	mutex_unlock(&pf->dplls.lock);
+
+	return ret;
+}
+
+/**
+ * ice_dpll_input_ref_sync_get - callback for getting reference sync config
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @ref_pin: pin pointer for reference sync pair
+ * @ref_pin_priv: private data pointer of ref_pin
+ * @state: on success holds reference sync state for pin pair
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for setting reference sync frequency
+ * feature for input pin.
+ *
+ * Context: Acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_input_ref_sync_get(const struct dpll_pin *pin, void *pin_priv,
+			    const struct dpll_pin *ref_pin, void *ref_pin_priv,
+			    enum dpll_pin_state *state,
+			    struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_pf *pf = p->pf;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+	mutex_lock(&pf->dplls.lock);
+	if (p->flags[0] & ICE_AQC_CGU_IN_CFG_FLG2_REFSYNC_EN)
+		*state = DPLL_PIN_STATE_CONNECTED;
+	else
+		*state = DPLL_PIN_STATE_DISCONNECTED;
+	mutex_unlock(&pf->dplls.lock);
+
+	return 0;
+}
+
+/*
+ * ice_dpll_sw_input_ref_sync_set - callback for setting reference sync feature
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @ref_pin: pin pointer for reference sync pair
+ * @ref_pin_priv: private data pointer of ref_pin
+ * @state: requested state for reference sync for pin pair
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for setting reference sync
+ * feature for input pins.
+ *
+ * Context: Calls a function which acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_sw_input_ref_sync_set(const struct dpll_pin *pin, void *pin_priv,
+			       const struct dpll_pin *ref_pin,
+			       void *ref_pin_priv,
+			       const enum dpll_pin_state state,
+			       struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+
+	return ice_dpll_input_ref_sync_set(pin, p->input, ref_pin, ref_pin_priv,
+					   state, extack);
+}
+
+/**
+ * ice_dpll_sw_input_ref_sync_get - callback for getting reference sync config
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @ref_pin: pin pointer for reference sync pair
+ * @ref_pin_priv: private data pointer of ref_pin
+ * @state: on success holds reference sync state for pin pair
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for setting reference sync feature for
+ * input pins.
+ *
+ * Context: Calls a function which acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_sw_input_ref_sync_get(const struct dpll_pin *pin, void *pin_priv,
+			       const struct dpll_pin *ref_pin,
+			       void *ref_pin_priv,
+			       enum dpll_pin_state *state,
+			       struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+
+	return ice_dpll_input_ref_sync_get(pin, p->input, ref_pin, ref_pin_priv,
+					   state, extack);
+}
+
 /**
  * ice_dpll_rclk_state_on_pin_set - set a state on rclk pin
  * @pin: pointer to a pin
@@ -2234,6 +2390,8 @@ static const struct dpll_pin_ops ice_dpll_pin_sma_ops = {
 	.phase_offset_get = ice_dpll_phase_offset_get,
 	.esync_set = ice_dpll_sw_esync_set,
 	.esync_get = ice_dpll_sw_esync_get,
+	.ref_sync_set = ice_dpll_sw_input_ref_sync_set,
+	.ref_sync_get = ice_dpll_sw_input_ref_sync_get,
 };
 
 static const struct dpll_pin_ops ice_dpll_pin_ufl_ops = {
@@ -2262,6 +2420,8 @@ static const struct dpll_pin_ops ice_dpll_input_ops = {
 	.phase_offset_get = ice_dpll_phase_offset_get,
 	.esync_set = ice_dpll_input_esync_set,
 	.esync_get = ice_dpll_input_esync_get,
+	.ref_sync_set = ice_dpll_input_ref_sync_set,
+	.ref_sync_get = ice_dpll_input_ref_sync_get,
 };
 
 static const struct dpll_pin_ops ice_dpll_output_ops = {
@@ -2560,6 +2720,88 @@ static void ice_dpll_periodic_work(struct kthread_work *work)
 				   msecs_to_jiffies(500));
 }
 
+/**
+ * ice_dpll_init_ref_sync_inputs - initialize reference sync pin pairs
+ * @pf: pf private structure
+ *
+ * Read DPLL TLV capabilities and initialize reference sync pin pairs in
+ * dpll subsystem.
+ *
+ * Return:
+ * * 0 - success or nothing to do (no ref-sync tlv are present)
+ * * negative - AQ failure
+ */
+static int ice_dpll_init_ref_sync_inputs(struct ice_pf *pf)
+{
+	struct ice_dpll_pin *inputs = pf->dplls.inputs;
+	struct ice_hw *hw = &pf->hw;
+	u16 addr, len, end, hdr;
+	int ret;
+
+	ret = ice_get_pfa_module_tlv(hw, &hdr, &len, ICE_SR_PFA_DPLL_DEFAULTS);
+	if (ret) {
+		dev_err(ice_pf_to_dev(pf),
+			"Failed to read PFA dpll defaults TLV ret=%d\n", ret);
+		return ret;
+	}
+	end = hdr + len;
+
+	for (addr = hdr + ICE_DPLL_PFA_HEADER_LEN; addr < end;
+	     addr += ICE_DPLL_PFA_ENTRY_LEN) {
+		unsigned long bit, ul_mask, offset;
+		u16 pin, mask, buf;
+		bool valid = false;
+
+		ret = ice_read_sr_word(hw, addr, &buf);
+		if (ret)
+			return ret;
+
+		switch (buf) {
+		case ICE_DPLL_PFA_REF_SYNC_TYPE:
+		case ICE_DPLL_PFA_REF_SYNC_TYPE2:
+		{
+			u16 mask_addr = addr + ICE_DPLL_PFA_MASK_OFFSET;
+			u16 val_addr = addr + ICE_DPLL_PFA_VALUE_OFFSET;
+
+			ret = ice_read_sr_word(hw, mask_addr, &mask);
+			if (ret)
+				return ret;
+			ret = ice_read_sr_word(hw, val_addr, &pin);
+			if (ret)
+				return ret;
+			if (buf == ICE_DPLL_PFA_REF_SYNC_TYPE)
+				pin >>= ICE_DPLL_PFA_MAILBOX_REF_SYNC_PIN_S;
+			valid = true;
+			break;
+		}
+		case ICE_DPLL_PFA_END:
+			addr = end;
+			break;
+		default:
+			continue;
+		}
+		if (!valid)
+			continue;
+
+		ul_mask = mask;
+		offset = 0;
+		for_each_set_bit(bit, &ul_mask, BITS_PER_TYPE(u16)) {
+			int i, j;
+
+			if (hw->device_id == ICE_DEV_ID_E810C_SFP &&
+			    pin > ICE_DPLL_E810C_SFP_NC_START)
+				offset = -ICE_DPLL_E810C_SFP_NC_PINS;
+			i = pin + offset;
+			j = bit + offset;
+			if (i < 0 || j < 0)
+				return -ERANGE;
+			inputs[i].ref_sync = j;
+		}
+	}
+
+	return 0;
+}
+
 /**
  * ice_dpll_release_pins - release pins resources from dpll subsystem
  * @pins: pointer to pins array
@@ -2634,6 +2876,36 @@ ice_dpll_unregister_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
 			dpll_pin_unregister(dpll, pins[i].pin, ops, &pins[i]);
 }
 
+/**
+ * ice_dpll_pin_ref_sync_register - register reference sync pins
+ * @pins: pointer to pins array
+ * @count: number of pins
+ *
+ * Register reference sync pins in dpll subsystem.
+ *
+ * Return:
+ * * 0 - success
+ * * negative - registration failure reason
+ */
+static int
+ice_dpll_pin_ref_sync_register(struct ice_dpll_pin *pins, int count)
+{
+	int ret, i;
+
+	for (i = 0; i < count; i++) {
+		if (!pins[i].hidden && pins[i].ref_sync) {
+			int j = pins[i].ref_sync;
+
+			ret = dpll_pin_ref_sync_pair_add(pins[i].pin,
+							 pins[j].pin);
+			if (ret)
+				return ret;
+		}
+	}
+
+	return 0;
+}
+
 /**
  * ice_dpll_register_pins - register pins with a dpll
  * @dpll: dpll pointer to register pins with
@@ -2922,6 +3194,14 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 				goto deinit_sma;
 			count += ICE_DPLL_PIN_SW_NUM;
 		}
+		ret = ice_dpll_pin_ref_sync_register(pf->dplls.inputs,
+						     pf->dplls.num_inputs);
+		if (ret)
+			goto deinit_ufl;
+		ret = ice_dpll_pin_ref_sync_register(pf->dplls.sma,
+						     ICE_DPLL_PIN_SW_NUM);
+		if (ret)
+			goto deinit_ufl;
 	} else {
 		count += pf->dplls.num_outputs + 2 * ICE_DPLL_PIN_SW_NUM;
 	}
@@ -3219,6 +3499,8 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 		pins[i].prop.freq_supported_num = freq_supp_num;
 		pins[i].pf = pf;
 	}
+	if (input)
+		ret = ice_dpll_init_ref_sync_inputs(pf);
 
 	return ret;
 }
@@ -3284,6 +3566,8 @@ static int ice_dpll_init_info_sw_pins(struct ice_pf *pf)
 		pin->pf = pf;
 		pin->prop.board_label = ice_dpll_sw_pin_sma[i];
 		pin->input = &d->inputs[pin_abs_idx];
+		if (pin->input->ref_sync)
+			pin->ref_sync = pin->input->ref_sync - pin_abs_idx;
 		pin->output = &d->outputs[ICE_DPLL_PIN_SW_OUTPUT_ABS(i)];
 		ice_dpll_phase_range_set(&pin->prop.phase_range, phase_adj_max);
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index a5a5b61c5115..c0da03384ce9 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -32,6 +32,7 @@ enum ice_dpll_pin_sw {
  * @freq: current frequency of a pin
  * @phase_adjust: current phase adjust value
  * @phase_offset: monitored phase offset value
+ * @ref_sync: store id of reference sync pin
  */
 struct ice_dpll_pin {
 	struct dpll_pin *pin;
@@ -49,6 +50,7 @@ struct ice_dpll_pin {
 	enum dpll_pin_direction direction;
 	s64 phase_offset;
 	u8 status;
+	u8 ref_sync;
 	bool active;
 	bool hidden;
 };
-- 
2.38.1


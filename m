Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7720DAD95FD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 22:13:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AF2F80D5F;
	Fri, 13 Jun 2025 20:13:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id blTKwIAugxh0; Fri, 13 Jun 2025 20:13:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2AFA80E68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749845600;
	bh=rmItcp6DrSBZ6dck4QEPTfQlSoFbD4OUl52l+JA4Xd4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sMXsH7bjeqpAy8Baff+2+fQZ1Utfo7m/NRa1sToKF7pMe+LOGVIyyv5a5+QWhssV/
	 MQwqfQx/bKa4BCIp4bfO4zVPxiRxaTH3W0xk5uPsUybV+wCvtU5J2daJ7q2LlEoHux
	 nQmli7VA68gkCN/2RKYIyV/PxT8J0cliemBhHnE2wAuqbK40lVrSYNmgJDUFzZFIaf
	 /Q65O/xKdvC0nTgLC6c7Ql1gqmw/bgz4fcstMqcks75ddaXL+E1XIdVYPz16WVs1cs
	 zGMRYyV87RL5gTNa0LiQtYKkhte2DuNOuklp6Iag7sZ1ryBXZgK5O26AuCML4rVkiq
	 mOgJjaiAAKzYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2AFA80E68;
	Fri, 13 Jun 2025 20:13:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A7370183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D57040921
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:13:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iwDghe8XHebc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 20:13:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B91CE40917
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B91CE40917
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B91CE40917
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:13:17 +0000 (UTC)
X-CSE-ConnectionGUID: NeHTyF6QTQuafKE8zCh7+w==
X-CSE-MsgGUID: Uaf6AVxETkO5Z4fuMw691w==
X-IronPort-AV: E=McAfee;i="6800,10657,11463"; a="51300405"
X-IronPort-AV: E=Sophos;i="6.16,234,1744095600"; d="scan'208";a="51300405"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 13:13:17 -0700
X-CSE-ConnectionGUID: zjc2clQLTJSf35RPxGJfQQ==
X-CSE-MsgGUID: yaY2AtXWTMeP7BRL7Eg4qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,234,1744095600"; d="scan'208";a="148456846"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa007.jf.intel.com with ESMTP; 13 Jun 2025 13:13:12 -0700
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
Date: Fri, 13 Jun 2025 22:06:55 +0200
Message-Id: <20250613200655.1712561-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250613200655.1712561-1-arkadiusz.kubalewski@intel.com>
References: <20250613200655.1712561-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749845598; x=1781381598;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3g+9PWr15IqQZrhqsFba3YoBbwi/Q8JwWyiK6WDk23Q=;
 b=Bs+mUakKR0+Yo2rgd/wBs5HIhfqocOzM5wRhAf4M8ARO4F49uWiETNwq
 8K6X2qGejXaQ5wh+LsqTxE3KWK7OSgsMPDpr0bYmWjmFMQjyEXZh1OfLP
 NuX1WXHngnVcKgysgX723USwnowOnf44FkJZDzjNDQPsTPRuiuGAJomgf
 K2s+u37TNPZ+oNrCX6XBATx7pe+6Q7q8L1Cs5/ARH9/7dqI3nN8NMe5oK
 7pfDOBgJovLiNx737dD2AAd4rkEFa66913hnpEWBzlTwg5rqO8MV/SmEu
 3RHUl1CIwHIUv1dDKL/JdC60IAcpdteQfBAvokbYlnA6mArVzPWBNtacb
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bs+mUakK
Subject: [Intel-wired-lan] [PATCH net-next v6 3/3] ice: add ref-sync dpll
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
v6:
- rebase and align with introducation of software pins
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 284 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dpll.h     |   2 +
 3 files changed, 288 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index bdee499f991a..7fd0f0091d36 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2288,6 +2288,8 @@ struct ice_aqc_get_cgu_abilities {
 	u8 rsvd[3];
 };
 
+#define ICE_AQC_CGU_IN_CFG_FLG2_REFSYNC_EN		BIT(7)
+
 /* Set CGU input config (direct 0x0C62) */
 struct ice_aqc_set_cgu_input_config {
 	u8 input_idx;
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 9fc50bb3f35a..754b865ce1cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -34,6 +34,19 @@
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
@@ -2042,6 +2055,149 @@ ice_dpll_sw_esync_get(const struct dpll_pin *pin, void *pin_priv,
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
@@ -2169,6 +2325,8 @@ static const struct dpll_pin_ops ice_dpll_pin_sma_ops = {
 	.phase_offset_get = ice_dpll_phase_offset_get,
 	.esync_set = ice_dpll_sw_esync_set,
 	.esync_get = ice_dpll_sw_esync_get,
+	.ref_sync_set = ice_dpll_sw_input_ref_sync_set,
+	.ref_sync_get = ice_dpll_sw_input_ref_sync_get,
 };
 
 static const struct dpll_pin_ops ice_dpll_pin_ufl_ops = {
@@ -2197,6 +2355,8 @@ static const struct dpll_pin_ops ice_dpll_input_ops = {
 	.phase_offset_get = ice_dpll_phase_offset_get,
 	.esync_set = ice_dpll_input_esync_set,
 	.esync_get = ice_dpll_input_esync_get,
+	.ref_sync_set = ice_dpll_input_ref_sync_set,
+	.ref_sync_get = ice_dpll_input_ref_sync_get,
 };
 
 static const struct dpll_pin_ops ice_dpll_output_ops = {
@@ -2376,6 +2536,88 @@ static void ice_dpll_periodic_work(struct kthread_work *work)
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
@@ -2450,6 +2692,36 @@ ice_dpll_unregister_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
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
@@ -2738,6 +3010,14 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
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
@@ -3030,6 +3310,8 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 		pins[i].prop.freq_supported_num = freq_supp_num;
 		pins[i].pf = pf;
 	}
+	if (input)
+		ret = ice_dpll_init_ref_sync_inputs(pf);
 
 	return ret;
 }
@@ -3095,6 +3377,8 @@ static int ice_dpll_init_info_sw_pins(struct ice_pf *pf)
 		pin->pf = pf;
 		pin->prop.board_label = ice_dpll_sw_pin_sma[i];
 		pin->input = &d->inputs[pin_abs_idx];
+		if (pin->input->ref_sync)
+			pin->ref_sync = pin->input->ref_sync - pin_abs_idx;
 		pin->output = &d->outputs[ICE_DPLL_PIN_SW_OUTPUT_ABS(i)];
 		ice_dpll_phase_range_set(&pin->prop.phase_range, phase_adj_max);
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index 10cd12d70972..daa332ad0091 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -31,6 +31,7 @@ enum ice_dpll_pin_sw {
  * @prop: pin properties
  * @freq: current frequency of a pin
  * @phase_adjust: current phase adjust value
+ * @ref_sync: store id of reference sync pin
  */
 struct ice_dpll_pin {
 	struct dpll_pin *pin;
@@ -47,6 +48,7 @@ struct ice_dpll_pin {
 	struct ice_dpll_pin *output;
 	enum dpll_pin_direction direction;
 	u8 status;
+	u8 ref_sync;
 	bool active;
 	bool hidden;
 };
-- 
2.38.1


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EA3A8A6B0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 20:23:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 539A661B06;
	Tue, 15 Apr 2025 18:23:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SgyzPEtaem7v; Tue, 15 Apr 2025 18:23:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FAE46128E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744741398;
	bh=L31thvXqcHN6JeqKW6BoJX63/jS8rdI1q011+f9XO3k=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AXHsPRBnLcsNUOeb/WoaxEQrrd0GQCPjnNYfrjhEV2bsyoXf/LIWF40AUG4jWNBdV
	 at1BpCGnYIpMZDJFv/kWdHPSKV2Z4/TwbYgDInR397ixr9xrQfmKu3VpQ45UvXEOwv
	 7MWr1rMjpI3RonsQpLCX4vnRZAGJ3mGCgm7CPgb5XTXmQ0uvwFf7enktlHupZ9mhcP
	 XnroLsbhoKR44aWtbwh76/DKA6MxYjdFrWFUYVkwlsdkAEMd3WYsoehUZhYSSJQ5kf
	 lY7A5Q0A/y0vxzZ9b+0Z7O9u+7mvnX2SN5a3w/wATSo26UUwKm87/A4zjeSEXM7QQ0
	 GHvSkiBGGZh3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FAE46128E;
	Tue, 15 Apr 2025 18:23:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5B0E8108
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:23:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B7576128E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:23:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E4y5-OQNsIlx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 18:23:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1A30661173
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A30661173
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A30661173
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:23:14 +0000 (UTC)
X-CSE-ConnectionGUID: deMWYmHyQDSlk0BiyjCW5w==
X-CSE-MsgGUID: xPn/DY/jSeCWmJuQfdtUTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="45981340"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="45981340"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 11:23:15 -0700
X-CSE-ConnectionGUID: yfjJUONhQA26ned7SSEfIg==
X-CSE-MsgGUID: n/Yf9c6WTDaArsfnR5Ywkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130513325"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa008.fm.intel.com with ESMTP; 15 Apr 2025 11:21:53 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, saeedm@nvidia.com,
 leon@kernel.org, tariqt@nvidia.com, jonathan.lemon@gmail.com,
 richardcochran@gmail.com, aleksandr.loktionov@intel.com,
 milena.olech@intel.com
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Tue, 15 Apr 2025 20:15:43 +0200
Message-Id: <20250415181543.1072342-5-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250415181543.1072342-1-arkadiusz.kubalewski@intel.com>
References: <20250415181543.1072342-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744741396; x=1776277396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LpBMKq9wfdVMdJ6wz89xHQFNDtmFGjsYf4722koXEJ4=;
 b=e2q7yjio2SOfNgap9sz/cR5WFAoM0JHTsEPNUWpjajyUJiejjWPlE50M
 QubaNbXGuDB0Qh5ZKhtUXnSj6Ivt0QSI7DV71YnI7PCGkVmn9vw7siZsh
 ACNoQOHICFni3gtqmMyJYYbKSoJQ6FKC0DENuzluVd2uHEacYLlyCivZC
 tgzWK01YZ6QYXMDrAwe7EuWS/JSJOFH1GI5gL1VqOanBGnWvQ57oBzg7c
 aJMWksDnN4uQT4pOgAMFbgngCs0QGOx7fgLTpSGOZeL/IcUMS98XrlpZc
 +UhsDo8nQX75afuckq1kYU6BDhgPyvJNLXkSSIOKHQn1bfIp0rAUOMVjg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e2q7yjio
Subject: [Intel-wired-lan] [PATCH net-next v2 4/4] ice: add phase offset
 monitor for all PPS dpll inputs
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

Implement new admin command and helper function to handle/obtain CGU
measurements for input pins, initialize PPS dpll capabilities using new
command.
Add callbacks to control dpll device feature:
all-inputs-phase-offset-monitor.
Allow enable/disable of all inputs monitoring for ice PPS dpll device.
If feature is enabled provide users with measured phase offsets and
notifications.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2:
- adapt changes and align wiht new dpll_device_info struct
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  20 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |  26 +++
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 179 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h     |   6 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   4 +
 6 files changed, 237 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index bdee499f991a..181bc2c3b4ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2272,6 +2272,22 @@ struct ice_aqc_get_pkg_info_resp {
 	struct ice_aqc_get_pkg_info pkg_info[];
 };
 
+#define ICE_CGU_INPUT_PHASE_OFFSET_BYTES	6
+
+struct ice_cgu_input_measure {
+	u8 phase_offset[ICE_CGU_INPUT_PHASE_OFFSET_BYTES];
+	__le32 freq;
+} __packed __aligned(sizeof(__le16));
+
+#define ICE_AQC_GET_CGU_IN_MEAS_DPLL_IDX_M	ICE_M(0xf, 0)
+
+/* Get CGU input measurements command response data structure (indirect 0x0C59) */
+struct ice_aqc_get_cgu_input_measure {
+	u8 dpll_idx_opt;
+	u8 length;
+	u8 rsvd[6];
+};
+
 #define ICE_AQC_GET_CGU_MAX_PHASE_ADJ	GENMASK(30, 0)
 
 /* Get CGU abilities command response data structure (indirect 0x0C61) */
@@ -2721,6 +2737,7 @@ struct ice_aq_desc {
 		struct ice_aqc_add_get_update_free_vsi vsi_cmd;
 		struct ice_aqc_add_update_free_vsi_resp add_update_free_vsi_res;
 		struct ice_aqc_download_pkg download_pkg;
+		struct ice_aqc_get_cgu_input_measure get_cgu_input_measure;
 		struct ice_aqc_set_cgu_input_config set_cgu_input_config;
 		struct ice_aqc_get_cgu_input_config get_cgu_input_config;
 		struct ice_aqc_set_cgu_output_config set_cgu_output_config;
@@ -2772,6 +2789,8 @@ enum ice_aq_err {
 	ICE_AQ_RC_OK		= 0,  /* Success */
 	ICE_AQ_RC_EPERM		= 1,  /* Operation not permitted */
 	ICE_AQ_RC_ENOENT	= 2,  /* No such element */
+	ICE_AQ_RC_ESRCH		= 3,  /* Bad opcode */
+	ICE_AQ_RC_EAGAIN	= 8,  /* Try again */
 	ICE_AQ_RC_ENOMEM	= 9,  /* Out of memory */
 	ICE_AQ_RC_EBUSY		= 12, /* Device or resource busy */
 	ICE_AQ_RC_EEXIST	= 13, /* Object already exists */
@@ -2927,6 +2946,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_get_pkg_info_list			= 0x0C43,
 
 	/* 1588/SyncE commands/events */
+	ice_aqc_opc_get_cgu_input_measure		= 0x0C59,
 	ice_aqc_opc_get_cgu_abilities			= 0x0C61,
 	ice_aqc_opc_set_cgu_input_config		= 0x0C62,
 	ice_aqc_opc_get_cgu_input_config		= 0x0C63,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 4fedf0181c4e..48ff515d7c61 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4970,6 +4970,32 @@ ice_dis_vsi_rdma_qset(struct ice_port_info *pi, u16 count, u32 *qset_teid,
 	return status;
 }
 
+/**
+ * ice_aq_get_cgu_input_pin_measure - get input pin signal measurements
+ * @hw: pointer to the HW struct
+ * @dpll_idx: index of dpll to be measured
+ * @meas: array to be filled with results
+ * @meas_num: max number of results array can hold
+ *
+ * Get CGU measurements (0x0C59) of phase and frequency offsets for input
+ * pins on given dpll.
+ *
+ * Return: 0 on success or negative value on failure.
+ */
+int ice_aq_get_cgu_input_pin_measure(struct ice_hw *hw, u8 dpll_idx,
+				     struct ice_cgu_input_measure *meas,
+				     u16 meas_num)
+{
+	struct ice_aqc_get_cgu_input_measure *cmd;
+	struct ice_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_cgu_input_measure);
+	cmd = &desc.params.get_cgu_input_measure;
+	cmd->dpll_idx_opt = dpll_idx & ICE_AQC_GET_CGU_IN_MEAS_DPLL_IDX_M;
+
+	return ice_aq_send_cmd(hw, &desc, meas, meas_num * sizeof(*meas), NULL);
+}
+
 /**
  * ice_aq_get_cgu_abilities - get cgu abilities
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 64c530b39191..c70f56d897dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -229,6 +229,9 @@ void ice_replay_post(struct ice_hw *hw);
 struct ice_q_ctx *
 ice_get_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 q_handle);
 int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flag);
+int ice_aq_get_cgu_input_pin_measure(struct ice_hw *hw, u8 dpll_idx,
+				     struct ice_cgu_input_measure *meas,
+				     u16 meas_num);
 int
 ice_aq_get_cgu_abilities(struct ice_hw *hw,
 			 struct ice_aqc_get_cgu_abilities *abilities);
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 0f7440a889ac..b9363230f6ac 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -11,6 +11,8 @@
 #define ICE_DPLL_RCLK_NUM_PER_PF		1
 #define ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT	25
 #define ICE_DPLL_PIN_GEN_RCLK_FREQ		1953125
+#define ICE_DPLL_INPUT_REF_NUM			10
+#define ICE_DPLL_PHASE_OFFSET_PERIOD		2
 
 /**
  * enum ice_dpll_pin_type - enumerate ice pin types:
@@ -587,6 +589,63 @@ static int ice_dpll_mode_get(const struct dpll_device *dpll, void *dpll_priv,
 	return 0;
 }
 
+/**
+ * ice_dpll_features_set - set dpll's features
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @features: mask of features to be set
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Enable/disable features of dpll.
+ *
+ * Context: Acquires and releases pf->dplls.lock
+ * Return: 0 - success
+ */
+static int ice_dpll_features_set(const struct dpll_device *dpll,
+				 void *dpll_priv, u32 features,
+				 struct netlink_ext_ack *extack)
+{
+	struct ice_dpll *d = dpll_priv;
+	struct ice_pf *pf = d->pf;
+
+	mutex_lock(&pf->dplls.lock);
+	if (features & DPLL_FEATURES_ALL_INPUTS_PHASE_OFFSET_MONITOR)
+		d->phase_offset_monitor_period = ICE_DPLL_PHASE_OFFSET_PERIOD;
+	else
+		d->phase_offset_monitor_period = 0;
+	mutex_unlock(&pf->dplls.lock);
+
+	return 0;
+}
+
+/**
+ * ice_dpll_features_get - get dpll's features
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @features: on success holds currently enabled features of dpll
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Provides currently enabled features of dpll.
+ *
+ * Context: Acquires and releases pf->dplls.lock
+ * Return: 0 - success
+ */
+static int ice_dpll_features_get(const struct dpll_device *dpll,
+				 void *dpll_priv, u32 *features,
+				 struct netlink_ext_ack *extack)
+{
+	struct ice_dpll *d = dpll_priv;
+	struct ice_pf *pf = d->pf;
+
+	mutex_lock(&pf->dplls.lock);
+	*features = 0;
+	if (d->phase_offset_monitor_period)
+		*features |= DPLL_FEATURES_ALL_INPUTS_PHASE_OFFSET_MONITOR;
+	mutex_unlock(&pf->dplls.lock);
+
+	return 0;
+}
+
 /**
  * ice_dpll_pin_state_set - set pin's state on dpll
  * @pin: pointer to a pin
@@ -1093,12 +1152,15 @@ ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
 			  const struct dpll_device *dpll, void *dpll_priv,
 			  s64 *phase_offset, struct netlink_ext_ack *extack)
 {
+	struct ice_dpll_pin *p = pin_priv;
 	struct ice_dpll *d = dpll_priv;
 	struct ice_pf *pf = d->pf;
 
 	mutex_lock(&pf->dplls.lock);
 	if (d->active_input == pin)
 		*phase_offset = d->phase_offset * ICE_DPLL_PHASE_OFFSET_FACTOR;
+	else if (d->phase_offset_monitor_period)
+		*phase_offset = p->phase_offset * ICE_DPLL_PHASE_OFFSET_FACTOR;
 	else
 		*phase_offset = 0;
 	mutex_unlock(&pf->dplls.lock);
@@ -1457,6 +1519,8 @@ static const struct dpll_pin_ops ice_dpll_output_ops = {
 static const struct dpll_device_ops ice_dpll_ops = {
 	.lock_status_get = ice_dpll_lock_status_get,
 	.mode_get = ice_dpll_mode_get,
+	.features_set = ice_dpll_features_set,
+	.features_get = ice_dpll_features_get,
 };
 
 /**
@@ -1503,6 +1567,110 @@ static void ice_dpll_notify_changes(struct ice_dpll *d)
 	}
 }
 
+/**
+ * ice_dpll_is_pps_phase_monitor - check if dpll capable of phase offset monitor
+ * @pf: pf private structure
+ *
+ * Check if firmware is capable of supporting admin command to provide
+ * phase offset monitoring on all the input pins on PPS dpll.
+ *
+ * Returns:
+ * * true - PPS dpll phase offset monitoring is supported
+ * * false - PPS dpll phase offset monitoring is not supported
+ */
+static bool ice_dpll_is_pps_phase_monitor(struct ice_pf *pf)
+{
+	struct ice_cgu_input_measure meas[ICE_DPLL_INPUT_REF_NUM];
+	int ret = ice_aq_get_cgu_input_pin_measure(&pf->hw, DPLL_TYPE_PPS, meas,
+						   ARRAY_SIZE(meas));
+
+	if (ret && pf->hw.adminq.sq_last_status == ICE_AQ_RC_ESRCH)
+		return false;
+
+	return true;
+}
+
+/**
+ * ice_dpll_pins_notify_mask - notify dpll subsystem about bulk pin changes
+ * @pins: array of ice_dpll_pin pointers registered within dpll subsystem
+ * @pin_num: number of pins
+ * @phase_offset_ntf_mask: bitmask of pin indexes to notify
+ *
+ * Iterate over array of pins and call dpll subsystem pin notify if
+ * corresponding pin index within bitmask is set.
+ *
+ * Context: Must be called while pf->dplls.lock is released.
+ */
+static void ice_dpll_pins_notify_mask(struct ice_dpll_pin *pins,
+				      u8 pin_num,
+				      u32 phase_offset_ntf_mask)
+{
+	int i = 0;
+
+	for (i = 0; i < pin_num; i++)
+		if (phase_offset_ntf_mask & (1 << i))
+			dpll_pin_change_ntf(pins[i].pin);
+}
+
+/**
+ * ice_dpll_pps_update_phase_offsets - update phase offset measurements
+ * @pf: pf private structure
+ * @phase_offset_pins_updated: returns mask of updated input pin indexes
+ *
+ * Read phase offset measurements for PPS dpll device and store values in
+ * input pins array. On success phase_offset_pins_updated - fills bitmask of
+ * updated input pin indexes, pins shall be notified.
+ *
+ * Context: Shall be called with pf->dplls.lock being locked.
+ * Returns:
+ * * 0 - success or no data available
+ * * negative - AQ failure
+ */
+static int ice_dpll_pps_update_phase_offsets(struct ice_pf *pf,
+					     u32 *phase_offset_pins_updated)
+{
+	struct ice_cgu_input_measure meas[ICE_DPLL_INPUT_REF_NUM];
+	struct ice_dpll_pin *p;
+	s64 phase_offset, tmp;
+	int i, j, ret;
+
+	*phase_offset_pins_updated = 0;
+	ret = ice_aq_get_cgu_input_pin_measure(&pf->hw, DPLL_TYPE_PPS, meas,
+					       ARRAY_SIZE(meas));
+	if (ret && pf->hw.adminq.sq_last_status == ICE_AQ_RC_EAGAIN) {
+		return 0;
+	} else if (ret) {
+		dev_err(ice_pf_to_dev(pf),
+			"failed to get input pin measurements dpll=%d, ret=%d %s\n",
+			DPLL_TYPE_PPS, ret,
+			ice_aq_str(pf->hw.adminq.sq_last_status));
+		return ret;
+	}
+	for (i = 0; i < pf->dplls.num_inputs; i++) {
+		p = &pf->dplls.inputs[i];
+		phase_offset = 0;
+		for (j = 0; j < ICE_CGU_INPUT_PHASE_OFFSET_BYTES; j++) {
+			tmp = meas[i].phase_offset[j];
+#ifdef __LITTLE_ENDIAN
+			phase_offset += tmp << 8 * j;
+#else
+			phase_offset += tmp << 8 *
+				(ICE_CGU_INPUT_PHASE_OFFSET_BYTES - 1 - j);
+#endif
+		}
+		phase_offset = sign_extend64(phase_offset, 47);
+		if (p->phase_offset != phase_offset) {
+			dev_dbg(ice_pf_to_dev(pf),
+				"phase offset changed for pin:%d old:%llx, new:%llx\n",
+				p->idx, p->phase_offset, phase_offset);
+			p->phase_offset = phase_offset;
+			*phase_offset_pins_updated |= (1 << i);
+		}
+	}
+
+	return 0;
+}
+
 /**
  * ice_dpll_update_state - update dpll state
  * @pf: pf private structure
@@ -1589,14 +1757,19 @@ static void ice_dpll_periodic_work(struct kthread_work *work)
 	struct ice_pf *pf = container_of(d, struct ice_pf, dplls);
 	struct ice_dpll *de = &pf->dplls.eec;
 	struct ice_dpll *dp = &pf->dplls.pps;
+	u32 phase_offset_ntf = 0;
 	int ret = 0;
 
 	if (ice_is_reset_in_progress(pf->state))
 		goto resched;
 	mutex_lock(&pf->dplls.lock);
+	d->periodic_counter++;
 	ret = ice_dpll_update_state(pf, de, false);
 	if (!ret)
 		ret = ice_dpll_update_state(pf, dp, false);
+	if (!ret && dp->phase_offset_monitor_period &&
+	    d->periodic_counter % dp->phase_offset_monitor_period == 0)
+		ret = ice_dpll_pps_update_phase_offsets(pf, &phase_offset_ntf);
 	if (ret) {
 		d->cgu_state_acq_err_num++;
 		/* stop rescheduling this worker */
@@ -1611,6 +1784,9 @@ static void ice_dpll_periodic_work(struct kthread_work *work)
 	mutex_unlock(&pf->dplls.lock);
 	ice_dpll_notify_changes(de);
 	ice_dpll_notify_changes(dp);
+	if (phase_offset_ntf)
+		ice_dpll_pins_notify_mask(d->inputs, d->num_inputs,
+					  phase_offset_ntf);
 
 resched:
 	/* Run twice a second or reschedule if update failed */
@@ -1986,7 +2162,6 @@ ice_dpll_deinit_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu)
  * @pf: board private structure
  * @d: dpll to be initialized
  * @cgu: if cgu is present and controlled by this NIC
- * @type: type of dpll being initialized
  *
  * Allocate dpll instance for this board in dpll subsystem, if cgu is controlled
  * by this NIC, register dpll with the callback ops.
@@ -2368,6 +2543,8 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
 	dp->mode = DPLL_MODE_AUTOMATIC;
 	dp->info.type = DPLL_TYPE_PPS;
 	dp->info.ops = &ice_dpll_ops;
+	dp->info.capabilities = !ice_dpll_is_pps_phase_monitor(pf) ? 0 :
+				DPLL_FEATURES_ALL_INPUTS_PHASE_OFFSET_MONITOR;
 
 	dev_dbg(ice_pf_to_dev(pf),
 		"%s - success, inputs:%u, outputs:%u rclk-parents:%u\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index 9db7463e293a..430f7fb95690 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -19,6 +19,7 @@
  * @prop: pin properties
  * @freq: current frequency of a pin
  * @phase_adjust: current phase adjust value
+ * @phase_offset: monitored phase offset value
  */
 struct ice_dpll_pin {
 	struct dpll_pin *pin;
@@ -31,6 +32,7 @@ struct ice_dpll_pin {
 	struct dpll_pin_properties prop;
 	u32 freq;
 	s32 phase_adjust;
+	s64 phase_offset;
 	u8 status;
 };
 
@@ -47,6 +49,7 @@ struct ice_dpll_pin {
  * @input_prio: priorities of each input
  * @dpll_state: current dpll sync state
  * @prev_dpll_state: last dpll sync state
+ * @phase_offset_monitor_period: period for phase offset monitor read frequency
  * @active_input: pointer to active input pin
  * @prev_input: pointer to previous active input pin
  */
@@ -64,6 +67,7 @@ struct ice_dpll {
 	enum dpll_lock_status dpll_state;
 	enum dpll_lock_status prev_dpll_state;
 	enum dpll_mode mode;
+	u32 phase_offset_monitor_period;
 	struct dpll_pin *active_input;
 	struct dpll_pin *prev_input;
 	struct dpll_device_info info;
@@ -81,6 +85,7 @@ struct ice_dpll {
  * @num_inputs: number of input pins available on dpll
  * @num_outputs: number of output pins available on dpll
  * @cgu_state_acq_err_num: number of errors returned during periodic work
+ * @periodic_counter: counter of periodic work executions
  * @base_rclk_idx: idx of first pin used for clock revocery pins
  * @clock_id: clock_id of dplls
  * @input_phase_adj_max: max phase adjust value for an input pins
@@ -98,6 +103,7 @@ struct ice_dplls {
 	u8 num_inputs;
 	u8 num_outputs;
 	int cgu_state_acq_err_num;
+	u32 periodic_counter;
 	u8 base_rclk_idx;
 	u64 clock_id;
 	s32 input_phase_adj_max;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1fbe13ee93a8..9abc179e1bd3 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7914,6 +7914,10 @@ const char *ice_aq_str(enum ice_aq_err aq_err)
 		return "ICE_AQ_RC_EPERM";
 	case ICE_AQ_RC_ENOENT:
 		return "ICE_AQ_RC_ENOENT";
+	case ICE_AQ_RC_ESRCH:
+		return "ICE_AQ_RC_ESRCH";
+	case ICE_AQ_RC_EAGAIN:
+		return "ICE_AQ_RC_EAGAIN";
 	case ICE_AQ_RC_ENOMEM:
 		return "ICE_AQ_RC_ENOMEM";
 	case ICE_AQ_RC_EBUSY:
-- 
2.38.1


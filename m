Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F3166A5E5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:23:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95D208137B;
	Fri, 13 Jan 2023 22:23:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95D208137B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673648626;
	bh=bgMn3fTnPPBMxlINFdTJZdbsBvvfGEekR+wymTp7fB0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PpCW3CV9KILcmeN7/J9PtSWB6l6HsUG9Iw7JVZ/9DSH0GqbAJOLVtZbf/D2ENqdzI
	 VHurt5lZ9mOvubTX0MlJzL+KsPtTBnP0ip+BphWk3p48sAMoujSO/vnMBy/lMjkhff
	 TjRcXjb0PIhXb6HZZJY+7+j07/nZi/qdH2hfX7HyMDbw7qIca0IYGRBQyFoKeXn3+r
	 Ybj+dsfKqbo36KuTKg8M3TY0LaV+8BjDvc0Wc7GINXQDkG+ntcQ59/s7T4vyCAIjtE
	 qU4tK8hulwzrITNJK43x21fJiuQ6H7KRrONpUT6XbE7VRYK+FyxOVGIAUGOVptaPgP
	 fwg/BDHUAFLjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nQykOxfQjb0O; Fri, 13 Jan 2023 22:23:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2545481389;
	Fri, 13 Jan 2023 22:23:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2545481389
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 369C21BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40A3F404A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:23:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40A3F404A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mWZVo4nlWWpt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:23:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93C5B408C9
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93C5B408C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:23:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="325372721"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="325372721"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:23:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="635919485"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="635919485"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.185.209])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:23:25 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 13 Jan 2023 14:23:17 -0800
Message-Id: <20230113222319.111-4-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230113222319.111-1-paul.m.stillwell.jr@intel.com>
References: <20230113222319.111-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673648607; x=1705184607;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9Xy+JmAh5IeiOQOBI44RDwJ5QopTvgulh6bJIVQL+CM=;
 b=WjUu9xADZn7SvJXeCwztz61Kc/lnCZB+nltTkrjK6OwkqmIDt5+Hc9wT
 9hChn/f0MrNM9FosE27ai1e/whpFfgeMW5wg/gxUvPTIPQJ3ZDY9tTVzP
 lSzwG0HhTlIpaY8lJ60m6NGl+w4LJp2CXK+JW5enOjq5GgF/nfXsonhfQ
 epQDw1aR4LYROpsWM16cLUhCu4zGscR2A5MQSaRuC0Uti34VPdnjq6028
 /+32wlfCERq2AQ+5ZvCHug7gbNDl3CbSdr7N0+J5fL8/0RVA1Z/SqDUkG
 ecdHnA8Ys6clwrHrAbmAtUfQKasAEaCSOjk11F1SbZVp7iVxPg5GiWrz8
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WjUu9xAD
Subject: [Intel-wired-lan] [PATCH net-next v6 3/5] ice: add ability to
 query/set FW log level and resolution
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The E8xx has the ability to change the FW log level and
the granularity at which the logs get output. Enable
the ability to see what the current values are and to
change them.

The following devlink commands are now supported:

devlink dev param set <pci dev> name fwlog_enabled value <true/false> cmode runtime
devlink dev param set <pci dev> name fwlog_level value <0-4> cmode runtime
devlink dev param set <pci dev> name fwlog_resolution value <1-128> cmode runtime

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   4 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 131 ++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 260 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |   5 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 6 files changed, 395 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 0d560287ec23..1af036beeb45 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2374,6 +2374,8 @@ enum ice_adminq_opc {
 	ice_aqc_opc_event_lan_overflow			= 0x1001,
 
 	/* FW Logging Commands */
+	ice_aqc_opc_fw_logs_config			= 0xFF30,
+	ice_aqc_opc_fw_logs_register			= 0xFF31,
 	ice_aqc_opc_fw_logs_query			= 0xFF32,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index ef7e5d7c18f2..da55db0170dd 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -879,7 +879,9 @@ int ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_cqinit;
 
-	ice_fwlog_set_supported(hw);
+	status = ice_fwlog_init(hw);
+	if (status)
+		ice_debug(hw, ICE_DBG_FW_LOG, "Error initializing FW logging: %d\n", status);
 
 	status = ice_clear_pf_cfg(hw);
 	if (status)
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 0e76fd19b61a..307ae6be2b8c 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -374,6 +374,8 @@ enum ice_devlink_param_id {
 	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
 	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
 	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
+	ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
+	ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
 };
 
 /**
@@ -1430,8 +1432,111 @@ static int
 ice_devlink_fwlog_enabled_set(struct devlink *devlink, u32 id,
 			      struct devlink_param_gset_ctx *ctx)
 {
-	/* set operation is unsupported at this time */
-	return -EOPNOTSUPP;
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct ice_hw *hw = &pf->hw;
+	int status;
+
+	/* only support fw log commands on PF 0 */
+	if (hw->bus.func)
+		return -EOPNOTSUPP;
+
+	if (hw->fwlog_ena == ctx->val.vbool)
+		return 0;
+
+	hw->fwlog_ena = ctx->val.vbool;
+
+	if (hw->fwlog_ena)
+		hw->fwlog_cfg.options |= ICE_FWLOG_OPTION_ARQ_ENA;
+	else
+		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
+
+	/* send the cfg to FW and register for events */
+	status = ice_fwlog_set(hw, &hw->fwlog_cfg);
+	if (status)
+		return status;
+
+	return hw->fwlog_ena ? ice_fwlog_register(hw) : ice_fwlog_unregister(hw);
+}
+
+static int
+ice_devlink_fwlog_level_get(struct devlink *devlink, u32 id,
+			    struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	/* only support fw log commands on PF 0 */
+	if (pf->hw.bus.func)
+		return -EOPNOTSUPP;
+
+	/* all the log levels are the same so pick the first one */
+	ctx->val.vu8 = pf->hw.fwlog_cfg.module_entries[0].log_level;
+
+	return 0;
+}
+
+static int
+ice_devlink_fwlog_level_set(struct devlink *devlink, u32 id,
+			    struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct ice_fwlog_cfg *cfg;
+	int i;
+
+	if (pf->hw.bus.func)
+		return -EOPNOTSUPP;
+
+	if (ctx->val.vu8 >= ICE_FWLOG_LEVEL_INVALID) {
+		dev_err(ice_pf_to_dev(pf), "Log level is greater than allowed! %d\n",
+			ctx->val.vu8);
+		return -EINVAL;
+	}
+
+	cfg = &pf->hw.fwlog_cfg;
+
+	/* update the log level for all modules to the same thing. this gets
+	 * written to the FW when the user says enable logging
+	 */
+	for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++)
+		cfg->module_entries[i].log_level = ctx->val.vu8;
+
+	return 0;
+}
+
+static int
+ice_devlink_fwlog_resolution_get(struct devlink *devlink, u32 id,
+				 struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	/* only support fw log commands on PF 0 */
+	if (pf->hw.bus.func)
+		return -EOPNOTSUPP;
+
+	ctx->val.vu8 = pf->hw.fwlog_cfg.log_resolution;
+
+	return 0;
+}
+
+static int
+ice_devlink_fwlog_resolution_set(struct devlink *devlink, u32 id,
+				 struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	/* only support fw log commands on PF 0 */
+	if (pf->hw.bus.func)
+		return -EOPNOTSUPP;
+
+	if (ctx->val.vu8 < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
+	    ctx->val.vu8 > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
+		dev_err(ice_pf_to_dev(pf), "Log resolution is out of range. Should be between 1 - 128: %d\n",
+			ctx->val.vu8);
+		return -EINVAL;
+	}
+
+	pf->hw.fwlog_cfg.log_resolution = ctx->val.vu8;
+
+	return 0;
 }
 
 static const struct devlink_param ice_devlink_params[] = {
@@ -1455,6 +1560,18 @@ static const struct devlink_param ice_devlink_params[] = {
 			     ice_devlink_fwlog_enabled_get,
 			     ice_devlink_fwlog_enabled_set,
 			     NULL),
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
+			     "fwlog_level", DEVLINK_PARAM_TYPE_U8,
+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			     ice_devlink_fwlog_level_get,
+			     ice_devlink_fwlog_level_set,
+			     NULL),
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
+			     "fwlog_resolution", DEVLINK_PARAM_TYPE_U8,
+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			     ice_devlink_fwlog_resolution_get,
+			     ice_devlink_fwlog_resolution_set,
+			     NULL),
 };
 
 static void ice_devlink_free(void *devlink_ptr)
@@ -1559,6 +1676,16 @@ int ice_devlink_register_params(struct ice_pf *pf)
 					   ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
 					   value);
 
+	value.vu8 = ICE_FWLOG_LEVEL_NORMAL;
+	devlink_param_driverinit_value_set(devlink,
+					   ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
+					   value);
+
+	/* set the default value for the FW to pack 10 messages per AQ event */
+	value.vu8 = 10;
+	devlink_param_driverinit_value_set(devlink,
+					   ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
+					   value);
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index fac970f03dd0..22c3c249824a 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -4,6 +4,146 @@
 #include "ice_common.h"
 #include "ice_fwlog.h"
 
+/**
+ * valid_module_entries - validate all the module entry IDs and log levels
+ * @hw: pointer to the HW structure
+ * @entries: entries to validate
+ * @num_entries: number of entries to validate
+ */
+static bool
+valid_module_entries(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
+		     u16 num_entries)
+{
+	int i;
+
+	if (!entries) {
+		ice_debug(hw, ICE_DBG_FW_LOG, "Null ice_fwlog_module_entry array\n");
+		return false;
+	}
+
+	if (!num_entries) {
+		ice_debug(hw, ICE_DBG_FW_LOG, "num_entries must be non-zero\n");
+		return false;
+	}
+
+	for (i = 0; i < num_entries; i++) {
+		struct ice_fwlog_module_entry *entry = &entries[i];
+
+		if (entry->module_id >= ICE_AQC_FW_LOG_ID_MAX) {
+			ice_debug(hw, ICE_DBG_FW_LOG, "Invalid module_id %u, max valid module_id is %u\n",
+				  entry->module_id, ICE_AQC_FW_LOG_ID_MAX - 1);
+			return false;
+		}
+
+		if (entry->log_level >= ICE_FWLOG_LEVEL_INVALID) {
+			ice_debug(hw, ICE_DBG_FW_LOG, "Invalid log_level %u, max valid log_level is %u\n",
+				  entry->log_level,
+				  ICE_AQC_FW_LOG_ID_MAX - 1);
+			return false;
+		}
+	}
+
+	return true;
+}
+
+/**
+ * valid_cfg - validate entire configuration
+ * @hw: pointer to the HW structure
+ * @cfg: config to validate
+ */
+static bool valid_cfg(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
+{
+	if (!cfg) {
+		ice_debug(hw, ICE_DBG_FW_LOG, "Null ice_fwlog_cfg\n");
+		return false;
+	}
+
+	if (cfg->log_resolution < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
+	    cfg->log_resolution > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
+		ice_debug(hw, ICE_DBG_FW_LOG, "Unsupported log_resolution %u, must be between %u and %u\n",
+			  cfg->log_resolution, ICE_AQC_FW_LOG_MIN_RESOLUTION,
+			  ICE_AQC_FW_LOG_MAX_RESOLUTION);
+		return false;
+	}
+
+	return valid_module_entries(hw, cfg->module_entries,
+				    ICE_AQC_FW_LOG_ID_MAX))
+}
+
+/**
+ * ice_fwlog_init - Initialize FW logging configuration
+ * @hw: pointer to the HW structure
+ *
+ * This function should be called on driver initialization during
+ * ice_init_hw().
+ */
+int ice_fwlog_init(struct ice_hw *hw)
+{
+	int status;
+
+	ice_fwlog_set_supported(hw);
+
+	if (ice_fwlog_supported(hw)) {
+		/* read the current config from the FW and store it */
+		status = ice_fwlog_get(hw, &hw->fwlog_cfg);
+		if (status)
+			return status;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_aq_fwlog_set - Set FW logging configuration AQ command (0xFF30)
+ * @hw: pointer to the HW structure
+ * @entries: entries to configure
+ * @num_entries: number of @entries
+ * @options: options from ice_fwlog_cfg->options structure
+ * @log_resolution: logging resolution
+ */
+static int
+ice_aq_fwlog_set(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
+		 u16 num_entries, u16 options, u16 log_resolution)
+{
+	struct ice_aqc_fw_log_cfg_resp *fw_modules;
+	struct ice_aqc_fw_log *cmd;
+	struct ice_aq_desc desc;
+	int status;
+	int i;
+
+	fw_modules = kcalloc(num_entries, sizeof(*fw_modules), GFP_KERNEL);
+	if (!fw_modules)
+		return -ENOMEM;
+
+	for (i = 0; i < num_entries; i++) {
+		fw_modules[i].module_identifier =
+			cpu_to_le16(entries[i].module_id);
+		fw_modules[i].log_level = entries[i].log_level;
+	}
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_config);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+
+	cmd = &desc.params.fw_log;
+
+	cmd->cmd_flags = ICE_AQC_FW_LOG_CONF_SET_VALID;
+	cmd->ops.cfg.log_resolution = cpu_to_le16(log_resolution);
+	cmd->ops.cfg.mdl_cnt = cpu_to_le16(num_entries);
+
+	if (options & ICE_FWLOG_OPTION_ARQ_ENA)
+		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_AQ_EN;
+	if (options & ICE_FWLOG_OPTION_UART_ENA)
+		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_UART_EN;
+
+	status = ice_aq_send_cmd(hw, &desc, fw_modules,
+				 sizeof(*fw_modules) * num_entries,
+				 NULL);
+
+	kfree(fw_modules);
+
+	return status;
+}
+
 /**
  * ice_fwlog_supported - Cached for whether FW supports FW logging or not
  * @hw: pointer to the HW structure
@@ -16,13 +156,102 @@ bool ice_fwlog_supported(struct ice_hw *hw)
 	return hw->fwlog_supported;
 }
 
+/**
+ * ice_fwlog_set - Set the firmware logging settings
+ * @hw: pointer to the HW structure
+ * @cfg: config used to set firmware logging
+ *
+ * This function should be called whenever the driver needs to set the firmware
+ * logging configuration. It can be called on initialization, reset, or during
+ * runtime.
+ *
+ * If the PF wishes to receive FW logging then it must register via
+ * ice_fwlog_register. Note, that ice_fwlog_register does not need to be called
+ * for init.
+ */
+int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
+{
+	int status;
+
+	if (!ice_fwlog_supported(hw))
+		return -EOPNOTSUPP;
+
+	if (!valid_cfg(hw, cfg))
+		return -EINVAL;
+
+	status = ice_aq_fwlog_set(hw, cfg->module_entries,
+				  ICE_AQC_FW_LOG_ID_MAX, cfg->options,
+				  cfg->log_resolution);
+
+	return status;
+}
+
+/**
+ * ice_aq_fwlog_register - Register PF for firmware logging events (0xFF31)
+ * @hw: pointer to the HW structure
+ * @reg: true to register and false to unregister
+ */
+static int ice_aq_fwlog_register(struct ice_hw *hw, bool reg)
+{
+	struct ice_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_register);
+
+	if (reg)
+		desc.params.fw_log.cmd_flags = ICE_AQC_FW_LOG_AQ_REGISTER;
+
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+}
+
+/**
+ * ice_fwlog_register - Register the PF for firmware logging
+ * @hw: pointer to the HW structure
+ *
+ * After this call the PF will start to receive firmware logging based on the
+ * configuration set in ice_fwlog_set.
+ */
+int ice_fwlog_register(struct ice_hw *hw)
+{
+	int status;
+
+	if (!ice_fwlog_supported(hw))
+		return -EOPNOTSUPP;
+
+	status = ice_aq_fwlog_register(hw, true);
+	if (status)
+		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to register for firmware logging events over ARQ\n");
+	else
+		hw->fwlog_cfg.options |= ICE_FWLOG_OPTION_IS_REGISTERED;
+
+	return status;
+}
+
+/**
+ * ice_fwlog_unregister - Unregister the PF from firmware logging
+ * @hw: pointer to the HW structure
+ */
+int ice_fwlog_unregister(struct ice_hw *hw)
+{
+	int status;
+
+	if (!ice_fwlog_supported(hw))
+		return -EOPNOTSUPP;
+
+	status = ice_aq_fwlog_register(hw, false);
+	if (status)
+		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to unregister from firmware logging events over ARQ\n");
+	else
+		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_IS_REGISTERED;
+
+	return status;
+}
+
 /**
  * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
  * @hw: pointer to the HW structure
  * @cfg: firmware logging configuration to populate
  */
-static int
-ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
+static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
 {
 	struct ice_aqc_fw_log_cfg_resp *fw_modules;
 	struct ice_aqc_fw_log *cmd;
@@ -102,9 +331,8 @@ void ice_fwlog_set_supported(struct ice_hw *hw)
 	if (!cfg)
 		return;
 
-	/* don't call ice_fwlog_get() because that would overwrite the cached
-	 * configuration from the call to ice_fwlog_init(), which is expected to
-	 * be called prior to this function
+	/* don't call ice_fwlog_get() because that would check to see if FW
+	 * logging is supported which is what the driver is determining now
 	 */
 	status = ice_aq_fwlog_get(hw, cfg);
 	if (status)
@@ -115,3 +343,25 @@ void ice_fwlog_set_supported(struct ice_hw *hw)
 
 	kfree(cfg);
 }
+
+/**
+ * ice_fwlog_get - Get the firmware logging settings
+ * @hw: pointer to the HW structure
+ * @cfg: config to populate based on current firmware logging settings
+ */
+int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
+{
+	int status;
+
+	if (!ice_fwlog_supported(hw))
+		return -EOPNOTSUPP;
+
+	if (!cfg)
+		return -EINVAL;
+
+	status = ice_aq_fwlog_get(hw, cfg);
+	if (status)
+		return status;
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
index 3a2c83502763..fcfceb9f6ec2 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -49,4 +49,9 @@ struct ice_fwlog_cfg {
 
 void ice_fwlog_set_supported(struct ice_hw *hw);
 bool ice_fwlog_supported(struct ice_hw *hw);
+int ice_fwlog_init(struct ice_hw *hw);
+int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
+int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
+int ice_fwlog_register(struct ice_hw *hw);
+int ice_fwlog_unregister(struct ice_hw *hw);
 #endif /* _ICE_FWLOG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 1284fe8d78f2..5161757f07a6 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -860,6 +860,7 @@ struct ice_hw {
 	u8 fw_patch;		/* firmware patch version */
 	u32 fw_build;		/* firmware build number */
 
+	struct ice_fwlog_cfg fwlog_cfg;
 	bool fwlog_supported; /* does hardware support FW logging? */
 	bool fwlog_ena; /* currently logging? */
 
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

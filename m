Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E50706B16E1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 00:51:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D33D611BE;
	Wed,  8 Mar 2023 23:51:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D33D611BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678319503;
	bh=XRy5Lq+uOJkLAqJfg40a7cnkKyhocKLnSdCflyGxTak=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wee0ZNFjK5IJYZW33No4ejPlFcIvGjE749fDI/AkzsrGZVLyWXjVeiuFDbye4/8+3
	 +Fg/1Y4u4Xg0AoE0NBbToXTUgZNsFL8xFjBhQ/pFV73kbR60gWXaIyTwQBu7YiTEs2
	 5GwsHDrsY6vkBkIXfV2MAhptDNm0I1hGTMvGdANqVGyhSXHYVtHsL1T2g3BoklZ9QT
	 mq6l3eFK4olRESbbPzMfORTCvnlsPXS2ejqTl0A7eRct83JwMyv0GuW2Lz/IcwiJlu
	 XQ0+2mZOJ2y0Q0Zv5AvWSpKbICk4H9juhzG64NbAOxfU2czT8m2bRWjyfIdpEHPkuZ
	 WX+mmcj1wq9qg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RdntovMnTntI; Wed,  8 Mar 2023 23:51:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2CD661228;
	Wed,  8 Mar 2023 23:51:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2CD661228
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9FDF71BF417
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 23:51:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 83BF782000
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 23:51:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83BF782000
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J7dLQam14hBP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 23:51:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 679B382002
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 679B382002
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 23:51:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="363945070"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="363945070"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 15:51:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="679526325"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="679526325"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.174.11])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 15:51:12 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Mar 2023 15:51:01 -0800
Message-Id: <20230308235102.170-5-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308235102.170-1-paul.m.stillwell.jr@intel.com>
References: <20230308235102.170-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678319476; x=1709855476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/nQILP4PH95Czpn88f8qNxX1KeHqxGJ/6t9oBkQUJrw=;
 b=alDOXPEeO/MCqR0T92P1WBGACxoh6iN4xjRKIGSTGJJ3IqsXwmXN6UJC
 m3oXPRIDqg0yOd1wpzEPbc8PtN0ZP0MZe7kiGT2uV4Rmm88PImBZjEvbT
 0xqLy+jxHM1OA3/uOofBYSdBoDnKubrAEQyFCYgNIZ2Q/BouC2jhcH2sT
 4XlOIdE8Ut0tyBqqwmXQ3aTeYaJSEUziQfXq/84pzJCaEOyW/U+3JNqr+
 V8hN1UmMuItT+9T7YrGfR//N4osVfiurFxFFy8s/O7uJgHDTioh5zS8iq
 awi0UHkHxgAzfRQy0B2Pr7YREw0484Z+7SEQPF6WdSfBG4+ltGjD72MGn
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=alDOXPEe
Subject: [Intel-wired-lan] [PATCH net-next v10 4/5] ice: enable FW logging
 based on stored configuration
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Give users the ability to enable/disable the FW logging configuration
that is staged. Enabling the logging causes ARQ events to start
being received by the driver with FW logging data in them.

To enable/disable FW logging use 'enable fwlog' and 'disable fwlog'. An
example command to enable FW logging:

echo enable fwlog > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog

Similarly to disable FW logging:

echo disable fwlog > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog

Co-developed-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   4 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  |  24 +++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 203 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |   3 +
 4 files changed, 234 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 558a17d38918..1af036beeb45 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2075,6 +2075,7 @@ enum ice_aqc_fw_logging_mod {
 };
 
 /* Set FW Logging configuration (indirect 0xFF30)
+ * Register for FW Logging (indirect 0xFF31)
  * Query FW Logging (indirect 0xFF32)
  */
 struct ice_aqc_fw_log {
@@ -2082,6 +2083,8 @@ struct ice_aqc_fw_log {
 #define ICE_AQC_FW_LOG_CONF_UART_EN	BIT(0)
 #define ICE_AQC_FW_LOG_CONF_AQ_EN	BIT(1)
 #define ICE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
+#define ICE_AQC_FW_LOG_CONF_SET_VALID	BIT(3)
+#define ICE_AQC_FW_LOG_AQ_REGISTER	BIT(0)
 #define ICE_AQC_FW_LOG_AQ_QUERY		BIT(2)
 
 	u8 rsp_flag;
@@ -2372,6 +2375,7 @@ enum ice_adminq_opc {
 
 	/* FW Logging Commands */
 	ice_aqc_opc_fw_logs_config			= 0xFF30,
+	ice_aqc_opc_fw_logs_register			= 0xFF31,
 	ice_aqc_opc_fw_logs_query			= 0xFF32,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index 7cc1621fb237..62ff065798fc 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -233,11 +233,35 @@ ice_debugfs_command_write(struct file *filp, const char __user *buf,
 			goto command_write_error;
 
 		hw->fwlog_cfg.log_resolution = resolution;
+	} else if (argc == 2 && !strncmp(argv[0], "enable", 6) &&
+		   !strncmp(argv[1], "fwlog", 5)) {
+		struct ice_hw *hw = &pf->hw;
+
+		hw->fwlog_cfg.options |= ICE_FWLOG_OPTION_ARQ_ENA;
+
+		ret = ice_fwlog_set(hw, &hw->fwlog_cfg);
+		if (ret)
+			goto command_write_error;
+
+		ret = ice_fwlog_register(hw);
+	} else if (argc == 2 && !strncmp(argv[0], "disable", 7) &&
+		   !strncmp(argv[1], "fwlog", 5)) {
+		struct ice_hw *hw = &pf->hw;
+
+		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
+
+		ret = ice_fwlog_set(hw, &hw->fwlog_cfg);
+		if (ret)
+			goto command_write_error;
+
+		ret = ice_fwlog_unregister(hw);
 	} else {
 		dev_info(dev, "unknown or invalid command '%s'\n", cmd_buf);
 		dev_info(dev, "available commands\n");
 		dev_info(dev, "\t dump fwlog_cfg\n");
 		dev_info(dev, "\t update fwlog_cfg <fwlog_level> <fwlog_events> <fwlog_resolution>");
+		dev_info(dev, "\t enable fwlog\n");
+		dev_info(dev, "\t disable fwlog\n");
 		ret = -EINVAL;
 		goto command_write_error;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index ffbbaef08ad6..3022f464e62a 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -5,6 +5,72 @@
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
+				    ICE_AQC_FW_LOG_ID_MAX);
+}
+
 /**
  * ice_fwlog_init - Initialize FW logging configuration
  * @hw: pointer to the HW structure
@@ -44,6 +110,83 @@ bool ice_fwlog_supported(struct ice_hw *hw)
 	return hw->fwlog_supported;
 }
 
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
+	if (!ice_fwlog_supported(hw))
+		return -EOPNOTSUPP;
+
+	if (!valid_cfg(hw, cfg))
+		return -EINVAL;
+
+	return ice_aq_fwlog_set(hw, cfg->module_entries,
+				ICE_AQC_FW_LOG_ID_MAX, cfg->options,
+				cfg->log_resolution);
+}
+
 /**
  * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
  * @hw: pointer to the HW structure
@@ -124,6 +267,66 @@ int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
 	return ice_aq_fwlog_get(hw, cfg);
 }
 
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
  * ice_fwlog_set_supported - Set if FW logging is supported by FW
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
index 9d60e77e2c5b..fcfceb9f6ec2 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -50,5 +50,8 @@ struct ice_fwlog_cfg {
 void ice_fwlog_set_supported(struct ice_hw *hw);
 bool ice_fwlog_supported(struct ice_hw *hw);
 int ice_fwlog_init(struct ice_hw *hw);
+int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
 int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
+int ice_fwlog_register(struct ice_hw *hw);
+int ice_fwlog_unregister(struct ice_hw *hw);
 #endif /* _ICE_FWLOG_H_ */
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9978A64F7B8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Dec 2022 06:07:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27BDD821E8;
	Sat, 17 Dec 2022 05:07:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27BDD821E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671253658;
	bh=kc/Kcm6lN/EO4Wuau6Vz4SfBNjrlhcGHppCumnbczbk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=flpqYIqMtDWCzk9DlZ36VTWYOg+7WAYBM038xfB8at2fC2CZrPLsx+OIxuoKmrkva
	 vp6Jk+FNWMYOGU7OHbrgs0x71HWF4HoClExTWP0BYaAtcSoCZJVdGMmKYlqC87jT3q
	 +CRAsrhs+igf0Rnq4/N/Ny9DbSpjUpXSjv2P1zaW41ytdo87Q0NMIFGyVI8fDUUEkf
	 kRgY8pwBRpH62Jkf78tXMzGe32Qpe6bRZZNWbjyatzbiXCsAXEj70pQ3sZuxN6SxIP
	 oOB9fhEGN0K8aqPQjLDS/g20Q7+rVVkd2ONtCgbj2OyPzLgaxv7/Ir8CPz3KXzT5kX
	 hbg5eGlCEH3RQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kZLeAlYfGC0S; Sat, 17 Dec 2022 05:07:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A76D7821C2;
	Sat, 17 Dec 2022 05:07:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A76D7821C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A88F1BF38B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 05:07:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 44C4760C08
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 05:07:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44C4760C08
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nakmNSBTKHXw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Dec 2022 05:07:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1446760C20
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1446760C20
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 05:07:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="316741931"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="316741931"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 21:07:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="643479296"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="643479296"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.163.232])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 21:07:21 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 21:07:11 -0800
Message-Id: <20221217050714.314-3-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221217050714.314-1-paul.m.stillwell.jr@intel.com>
References: <20221217050714.314-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671253643; x=1702789643;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lhd///kz97hL5s7d+MnaIqV2nf7Ns78P6tlwgMlIphw=;
 b=Z1fLoUvlv8fytYAJE+lA1/2qZBobhdrFR/hnaPtUYlMKU850VptT+x7x
 eL2+mmhl/xhIszIT13dYQpWHFtvn1LJ3V4jUFg1TDmcAh2IRh3biLAjJy
 6Pbl3eG7FCCGE5N6TiVC1MOhH5mgADa3HHqOzXB66hopZSh3a5k1m36Ha
 sVaPlSA+pZNBy1cpfIpCdXQCFDGn99JeQouH/pV2XtgqbhLOq83iJpJKa
 tiZi3vrFuqhFFQnseaslN38c7rpK2oL+wQMmBrrI45ESh0uqOAB3gxN+5
 2bmghk/pam7hMi8lglzFSeSUMueJ0vZJZKoo8gH4n4SX/C05EvmyLdjqk
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z1fLoUvl
Subject: [Intel-wired-lan] [PATCH net-next v4 2/5] ice: enable devlink to
 check FW logging status
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

Users want the ability to debug FW issues by retrieving the
FW logs from the E8xx devices. Enable devlink to query the driver
to see if the NVM image allows FW logging and to see if FW
logging is currently running. The set command is not supported
at this time.

This is the beginning of the v2 for FW logging.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

    pick bfdfb2dc6192 ice: add ability to query/set FW log level and resolution
---
 drivers/net/ethernet/intel/ice/Makefile       |   3 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  81 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  73 ++++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 118 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  52 ++++++++
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 7 files changed, 331 insertions(+), 2 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 060d8f2b4953..750fed7e07d7 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -32,7 +32,8 @@ ice-y := ice_main.o	\
 	 ice_lag.o	\
 	 ice_ethtool.o  \
 	 ice_repr.o	\
-	 ice_tc_lib.o
+	 ice_tc_lib.o	\
+	 ice_fwlog.o
 ice-$(CONFIG_PCI_IOV) +=	\
 	ice_sriov.o		\
 	ice_virtchnl.o		\
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index e1b95cc3a538..0d560287ec23 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2038,6 +2038,83 @@ struct ice_aqc_event_lan_overflow {
 	u8 reserved[8];
 };
 
+enum ice_aqc_fw_logging_mod {
+	ICE_AQC_FW_LOG_ID_GENERAL = 0,
+	ICE_AQC_FW_LOG_ID_CTRL,
+	ICE_AQC_FW_LOG_ID_LINK,
+	ICE_AQC_FW_LOG_ID_LINK_TOPO,
+	ICE_AQC_FW_LOG_ID_DNL,
+	ICE_AQC_FW_LOG_ID_I2C,
+	ICE_AQC_FW_LOG_ID_SDP,
+	ICE_AQC_FW_LOG_ID_MDIO,
+	ICE_AQC_FW_LOG_ID_ADMINQ,
+	ICE_AQC_FW_LOG_ID_HDMA,
+	ICE_AQC_FW_LOG_ID_LLDP,
+	ICE_AQC_FW_LOG_ID_DCBX,
+	ICE_AQC_FW_LOG_ID_DCB,
+	ICE_AQC_FW_LOG_ID_XLR,
+	ICE_AQC_FW_LOG_ID_NVM,
+	ICE_AQC_FW_LOG_ID_AUTH,
+	ICE_AQC_FW_LOG_ID_VPD,
+	ICE_AQC_FW_LOG_ID_IOSF,
+	ICE_AQC_FW_LOG_ID_PARSER,
+	ICE_AQC_FW_LOG_ID_SW,
+	ICE_AQC_FW_LOG_ID_SCHEDULER,
+	ICE_AQC_FW_LOG_ID_TXQ,
+	ICE_AQC_FW_LOG_ID_RSVD,
+	ICE_AQC_FW_LOG_ID_POST,
+	ICE_AQC_FW_LOG_ID_WATCHDOG,
+	ICE_AQC_FW_LOG_ID_TASK_DISPATCH,
+	ICE_AQC_FW_LOG_ID_MNG,
+	ICE_AQC_FW_LOG_ID_SYNCE,
+	ICE_AQC_FW_LOG_ID_HEALTH,
+	ICE_AQC_FW_LOG_ID_TSDRV,
+	ICE_AQC_FW_LOG_ID_PFREG,
+	ICE_AQC_FW_LOG_ID_MDLVER,
+	ICE_AQC_FW_LOG_ID_MAX,
+};
+
+/* Set FW Logging configuration (indirect 0xFF30)
+ * Register for FW Logging (indirect 0xFF31)
+ * Query FW Logging (indirect 0xFF32)
+ */
+struct ice_aqc_fw_log {
+	u8 cmd_flags;
+#define ICE_AQC_FW_LOG_CONF_UART_EN	BIT(0)
+#define ICE_AQC_FW_LOG_CONF_AQ_EN	BIT(1)
+#define ICE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
+#define ICE_AQC_FW_LOG_CONF_SET_VALID	BIT(3)
+#define ICE_AQC_FW_LOG_AQ_REGISTER	BIT(0)
+#define ICE_AQC_FW_LOG_AQ_QUERY		BIT(2)
+
+	u8 rsp_flag;
+	__le16 fw_rt_msb;
+	union {
+		struct {
+			__le32 fw_rt_lsb;
+		} sync;
+		struct {
+			__le16 log_resolution;
+#define ICE_AQC_FW_LOG_MIN_RESOLUTION		(1)
+#define ICE_AQC_FW_LOG_MAX_RESOLUTION		(128)
+
+			__le16 mdl_cnt;
+		} cfg;
+	} ops;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+/* Response Buffer for:
+ *    Set Firmware Logging Configuration (0xFF30)
+ *    Query FW Logging (0xFF32)
+ */
+struct ice_aqc_fw_log_cfg_resp {
+	__le16 module_identifier;
+	u8 log_level;
+	u8 rsvd0;
+};
+
 /**
  * struct ice_aq_desc - Admin Queue (AQ) descriptor
  * @flags: ICE_AQ_FLAG_* flags
@@ -2114,6 +2191,7 @@ struct ice_aq_desc {
 		struct ice_aqc_add_update_free_vsi_resp add_update_free_vsi_res;
 		struct ice_aqc_download_pkg download_pkg;
 		struct ice_aqc_driver_shared_params drv_shared_params;
+		struct ice_aqc_fw_log fw_log;
 		struct ice_aqc_set_mac_lb set_mac_lb;
 		struct ice_aqc_alloc_free_res_cmd sw_res_ctrl;
 		struct ice_aqc_set_mac_cfg set_mac_cfg;
@@ -2294,6 +2372,9 @@ enum ice_adminq_opc {
 
 	/* Standalone Commands/Events */
 	ice_aqc_opc_event_lan_overflow			= 0x1001,
+
+	/* FW Logging Commands */
+	ice_aqc_opc_fw_logs_query			= 0xFF32,
 };
 
 #endif /* _ICE_ADMINQ_CMD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index a1fdda96e4ec..fbe91456777f 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -879,6 +879,8 @@ int ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_cqinit;
 
+	ice_fwlog_set_supported(hw);
+
 	status = ice_clear_pf_cfg(hw);
 	if (status)
 		goto err_unroll_cqinit;
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 8286e47b4bae..b780c999976a 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -369,6 +369,13 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	return err;
 }
 
+enum ice_devlink_param_id {
+	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
+	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
+	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
+	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
+};
+
 /**
  * ice_devlink_reload_empr_start - Start EMP reset to activate new firmware
  * @devlink: pointer to the devlink instance to reload
@@ -1324,6 +1331,50 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
 	return 0;
 }
 
+static int
+ice_devlink_fwlog_supported_get(struct devlink *devlink, u32 id,
+				struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	/* only support fw log commands on PF 0 */
+	if (pf->hw.bus.func)
+		return -EOPNOTSUPP;
+
+	ctx->val.vbool = ice_fwlog_supported(&pf->hw);
+	return 0;
+}
+
+static int
+ice_devlink_fwlog_supported_set(struct devlink *devlink, u32 id,
+				struct devlink_param_gset_ctx *ctx)
+{
+	/* set operation is unsupported */
+	return -EOPNOTSUPP;
+}
+
+static int
+ice_devlink_fwlog_enabled_get(struct devlink *devlink, u32 id,
+			      struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	/* only support fw log commands on PF 0 */
+	if (pf->hw.bus.func)
+		return -EOPNOTSUPP;
+
+	ctx->val.vbool = pf->hw.fwlog_ena;
+	return 0;
+}
+
+static int
+ice_devlink_fwlog_enabled_set(struct devlink *devlink, u32 id,
+			      struct devlink_param_gset_ctx *ctx)
+{
+	/* set operation is unsupported at this time */
+	return -EOPNOTSUPP;
+}
+
 static const struct devlink_param ice_devlink_params[] = {
 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
 			      ice_devlink_enable_roce_get,
@@ -1333,7 +1384,18 @@ static const struct devlink_param ice_devlink_params[] = {
 			      ice_devlink_enable_iw_get,
 			      ice_devlink_enable_iw_set,
 			      ice_devlink_enable_iw_validate),
-
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
+			     "fwlog_supported", DEVLINK_PARAM_TYPE_BOOL,
+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			     ice_devlink_fwlog_supported_get,
+			     ice_devlink_fwlog_supported_set,
+			     NULL),
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
+			     "fwlog_enabled", DEVLINK_PARAM_TYPE_BOOL,
+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			     ice_devlink_fwlog_enabled_get,
+			     ice_devlink_fwlog_enabled_set,
+			     NULL),
 };
 
 static void ice_devlink_free(void *devlink_ptr)
@@ -1429,6 +1491,15 @@ int ice_devlink_register_params(struct ice_pf *pf)
 					   DEVLINK_PARAM_GENERIC_ID_ENABLE_ROCE,
 					   value);
 
+	value.vbool = false;
+	devlink_param_driverinit_value_set(devlink,
+					   ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
+					   value);
+
+	devlink_param_driverinit_value_set(devlink,
+					   ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
+					   value);
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
new file mode 100644
index 000000000000..efea71b6c9f8
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -0,0 +1,118 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2022, Intel Corporation. */
+
+#include "ice_common.h"
+#include "ice_fwlog.h"
+
+/**
+ * ice_fwlog_supported - Cached for whether FW supports FW logging or not
+ * @hw: pointer to the HW structure
+ *
+ * This will always return false if called before ice_init_hw(), so it must be
+ * called after ice_init_hw().
+ */
+bool ice_fwlog_supported(struct ice_hw *hw)
+{
+	return hw->fwlog_supported;
+}
+
+/**
+ * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
+ * @hw: pointer to the HW structure
+ * @cfg: firmware logging configuration to populate
+ */
+static int
+ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
+{
+	struct ice_aqc_fw_log_cfg_resp *fw_modules;
+	struct ice_aqc_fw_log *cmd;
+	struct ice_aq_desc desc;
+	u16 module_id_cnt;
+	int status;
+	void *buf;
+	int i;
+
+	memset(cfg, 0, sizeof(*cfg));
+
+	buf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_query);
+	cmd = &desc.params.fw_log;
+
+	cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_QUERY;
+
+	status = ice_aq_send_cmd(hw, &desc, buf, ICE_AQ_MAX_BUF_LEN, NULL);
+	if (status) {
+		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to get FW log configuration\n");
+		goto status_out;
+	}
+
+	module_id_cnt = le16_to_cpu(cmd->ops.cfg.mdl_cnt);
+	if (module_id_cnt < ICE_AQC_FW_LOG_ID_MAX) {
+		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned less than the expected number of FW log module IDs\n");
+	} else {
+		if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX)
+			ice_debug(hw, ICE_DBG_FW_LOG, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
+				  ICE_AQC_FW_LOG_ID_MAX);
+		module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
+	}
+
+	cfg->log_resolution = le16_to_cpu(cmd->ops.cfg.log_resolution);
+	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_AQ_EN)
+		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
+	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_UART_EN)
+		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
+	if (cmd->cmd_flags & ICE_AQC_FW_LOG_QUERY_REGISTERED)
+		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
+
+	fw_modules = (struct ice_aqc_fw_log_cfg_resp *)buf;
+
+	for (i = 0; i < module_id_cnt; i++) {
+		struct ice_aqc_fw_log_cfg_resp *fw_module = &fw_modules[i];
+
+		cfg->module_entries[i].module_id =
+			le16_to_cpu(fw_module->module_identifier);
+		cfg->module_entries[i].log_level = fw_module->log_level;
+	}
+
+status_out:
+	kfree(buf);
+	return status;
+}
+
+/**
+ * ice_fwlog_set_supported - Set if FW logging is supported by FW
+ * @hw: pointer to the HW struct
+ *
+ * If FW returns success to the ice_aq_fwlog_get call then it supports FW
+ * logging, else it doesn't. Set the fwlog_supported flag accordingly.
+ *
+ * This function is only meant to be called during driver init to determine if
+ * the FW support FW logging.
+ */
+void ice_fwlog_set_supported(struct ice_hw *hw)
+{
+	struct ice_fwlog_cfg *cfg;
+	int status;
+
+	hw->fwlog_supported = false;
+
+	cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
+	if (!cfg)
+		return;
+
+	/* don't call ice_fwlog_get() because that would overwrite the cached
+	 * configuration from the call to ice_fwlog_init(), which is expected to
+	 * be called prior to this function
+	 */
+	status = ice_aq_fwlog_get(hw, cfg);
+	if (status)
+		ice_debug(hw, ICE_DBG_FW_LOG, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
+			  status);
+	else
+		hw->fwlog_supported = true;
+
+	kfree(cfg);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
new file mode 100644
index 000000000000..3a2c83502763
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2022, Intel Corporation. */
+
+#ifndef _ICE_FWLOG_H_
+#define _ICE_FWLOG_H_
+#include "ice_adminq_cmd.h"
+
+struct ice_hw;
+
+/* Only a single log level should be set and all log levels under the set value
+ * are enabled, e.g. if log level is set to ICE_FW_LOG_LEVEL_VERBOSE, then all
+ * other log levels are included (except ICE_FW_LOG_LEVEL_NONE)
+ */
+enum ice_fwlog_level {
+	ICE_FWLOG_LEVEL_NONE = 0,
+	ICE_FWLOG_LEVEL_ERROR = 1,
+	ICE_FWLOG_LEVEL_WARNING = 2,
+	ICE_FWLOG_LEVEL_NORMAL = 3,
+	ICE_FWLOG_LEVEL_VERBOSE = 4,
+	ICE_FWLOG_LEVEL_INVALID, /* all values >= this entry are invalid */
+};
+
+struct ice_fwlog_module_entry {
+	/* module ID for the corresponding firmware logging event */
+	u16 module_id;
+	/* verbosity level for the module_id */
+	u8 log_level;
+};
+
+struct ice_fwlog_cfg {
+	/* list of modules for configuring log level */
+	struct ice_fwlog_module_entry module_entries[ICE_AQC_FW_LOG_ID_MAX];
+	/* options used to configure firmware logging */
+	u16 options;
+#define ICE_FWLOG_OPTION_ARQ_ENA		BIT(0)
+#define ICE_FWLOG_OPTION_UART_ENA		BIT(1)
+	/* set before calling ice_fwlog_init() so the PF registers for firmware
+	 * logging on initialization
+	 */
+#define ICE_FWLOG_OPTION_REGISTER_ON_INIT	BIT(2)
+	/* set in the ice_fwlog_get() response if the PF is registered for FW
+	 * logging events over ARQ
+	 */
+#define ICE_FWLOG_OPTION_IS_REGISTERED		BIT(3)
+
+	/* minimum number of log events sent per Admin Receive Queue event */
+	u16 log_resolution;
+};
+
+void ice_fwlog_set_supported(struct ice_hw *hw);
+bool ice_fwlog_supported(struct ice_hw *hw);
+#endif /* _ICE_FWLOG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 126605b7eb3b..1284fe8d78f2 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -17,6 +17,7 @@
 #include "ice_protocol_type.h"
 #include "ice_sbq_cmd.h"
 #include "ice_vlan_mode.h"
+#include "ice_fwlog.h"
 
 static inline bool ice_is_tc_ena(unsigned long bitmap, u8 tc)
 {
@@ -859,6 +860,9 @@ struct ice_hw {
 	u8 fw_patch;		/* firmware patch version */
 	u32 fw_build;		/* firmware build number */
 
+	bool fwlog_supported; /* does hardware support FW logging? */
+	bool fwlog_ena; /* currently logging? */
+
 /* Device max aggregate bandwidths corresponding to the GL_PWR_MODE_CTL
  * register. Used for determining the ITR/INTRL granularity during
  * initialization.
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

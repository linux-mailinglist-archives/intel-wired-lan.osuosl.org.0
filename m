Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DD7B0D7C1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 13:07:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43CA942A40;
	Tue, 22 Jul 2025 11:07:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nPrO2LD6Qh0f; Tue, 22 Jul 2025 11:07:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A773742A37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753182438;
	bh=lMz6lowTO6cEG1GYxQe6ein/gesYQfNDRxBe2qAYuB4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MFn3UQPTGDqciHmmQzrqMowv6+5A34zggQNyZMxjniSySI9KPZeX4pdX2/yZh/ZVo
	 LxA1FAWlTrMHI7kMYEZYFfdVazsdqHbroJfKTRCU9zzCVQp5tkefJoEsfWnQpqVDsM
	 6Q7fuBMCJjJeAkCnosZGgtezI6+H5ifRZsKu11dI+1dsesbyYBMW2F5FlPlidhq5qS
	 vofx4Hz47tnNmOgaFTJ+YVInD6fzVI/x9kPCzBOk+/gQyMp8C8h+lFVRYg7Gl5HaFU
	 KlEhhL7ZSDf83KXmamcDf3RYvytC5nufDa4GwiBO70qBk30+yoHRTBf92cy3TnKMeo
	 RU/K2pYFe/ZMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A773742A37;
	Tue, 22 Jul 2025 11:07:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C1C23E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9821984BA0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mqHbUyIjjhfO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 11:07:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 80F3C84B46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80F3C84B46
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80F3C84B46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:14 +0000 (UTC)
X-CSE-ConnectionGUID: UYBgpaL7TOubvyBqVtkyMg==
X-CSE-MsgGUID: z8qOqJHyRHCQhJPow7UtMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="59083619"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="59083619"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:07:14 -0700
X-CSE-ConnectionGUID: dSfahmWeSrm2TRShpb4ZTw==
X-CSE-MsgGUID: oimNvhLRR2KIYdghDBz8Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="163153980"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa003.fm.intel.com with ESMTP; 22 Jul 2025 04:07:12 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 22 Jul 2025 12:45:55 +0200
Message-ID: <20250722104600.10141-11-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753182435; x=1784718435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qlcAWky+vEJAF23YDsWmNVWBi7siWl2iDHFxvHuVllE=;
 b=GqXLYjbov5yU9J8VPJDsrWmVYUV23DH7l8DvpxCiazRC2HV9cozbOI1+
 mrBvEey2Jne+EbtffV9NqgZKkaeGxv0O1bY6tDMaK9Enpojj+LjVQGoqc
 xGFIDdE5ZALbCP5W2Kq8YPXqaV3gXZriWXt4H+G5xPbDxICdHTaqZFWqC
 QP55mZmB//RWi93+pPk7o0w1BntiroCcSMvx4ZWMXHglon+yCKyRVDRXP
 5j2eHj0FHvyl8EwQ7jNZdXpFEHxsAz+O21bCZ31jGvYPqpVVA1tnFmw7e
 WkZGVyv0euk/tFbN3yVKGztXLCLrX1GmnWCmvxwbE/Y1TjDCRTeHpJABj
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GqXLYjbo
Subject: [Intel-wired-lan] [PATCH iwl-next v1 10/15] libie,
 ice: move fwlog admin queue to libie
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

Copy the code and:
- change ICE_AQC to LIBIE_AQC
- change ice_aqc to libie_aqc
- move definitions outside the structures

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 78 ----------------
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 21 ++---
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 46 +++++-----
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  2 +-
 include/linux/net/intel/libie/adminq.h        | 89 +++++++++++++++++++
 5 files changed, 124 insertions(+), 112 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index caae1780fd37..93aedb35fd17 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2399,42 +2399,6 @@ struct ice_aqc_event_lan_overflow {
 	u8 reserved[8];
 };
 
-enum ice_aqc_fw_logging_mod {
-	ICE_AQC_FW_LOG_ID_GENERAL = 0,
-	ICE_AQC_FW_LOG_ID_CTRL,
-	ICE_AQC_FW_LOG_ID_LINK,
-	ICE_AQC_FW_LOG_ID_LINK_TOPO,
-	ICE_AQC_FW_LOG_ID_DNL,
-	ICE_AQC_FW_LOG_ID_I2C,
-	ICE_AQC_FW_LOG_ID_SDP,
-	ICE_AQC_FW_LOG_ID_MDIO,
-	ICE_AQC_FW_LOG_ID_ADMINQ,
-	ICE_AQC_FW_LOG_ID_HDMA,
-	ICE_AQC_FW_LOG_ID_LLDP,
-	ICE_AQC_FW_LOG_ID_DCBX,
-	ICE_AQC_FW_LOG_ID_DCB,
-	ICE_AQC_FW_LOG_ID_XLR,
-	ICE_AQC_FW_LOG_ID_NVM,
-	ICE_AQC_FW_LOG_ID_AUTH,
-	ICE_AQC_FW_LOG_ID_VPD,
-	ICE_AQC_FW_LOG_ID_IOSF,
-	ICE_AQC_FW_LOG_ID_PARSER,
-	ICE_AQC_FW_LOG_ID_SW,
-	ICE_AQC_FW_LOG_ID_SCHEDULER,
-	ICE_AQC_FW_LOG_ID_TXQ,
-	ICE_AQC_FW_LOG_ID_RSVD,
-	ICE_AQC_FW_LOG_ID_POST,
-	ICE_AQC_FW_LOG_ID_WATCHDOG,
-	ICE_AQC_FW_LOG_ID_TASK_DISPATCH,
-	ICE_AQC_FW_LOG_ID_MNG,
-	ICE_AQC_FW_LOG_ID_SYNCE,
-	ICE_AQC_FW_LOG_ID_HEALTH,
-	ICE_AQC_FW_LOG_ID_TSDRV,
-	ICE_AQC_FW_LOG_ID_PFREG,
-	ICE_AQC_FW_LOG_ID_MDLVER,
-	ICE_AQC_FW_LOG_ID_MAX,
-};
-
 enum ice_aqc_health_status_mask {
 	ICE_AQC_HEALTH_STATUS_SET_PF_SPECIFIC_MASK = BIT(0),
 	ICE_AQC_HEALTH_STATUS_SET_ALL_PF_MASK      = BIT(1),
@@ -2516,48 +2480,6 @@ struct ice_aqc_health_status_elem {
 	__le32 internal_data2;
 };
 
-/* Set FW Logging configuration (indirect 0xFF30)
- * Register for FW Logging (indirect 0xFF31)
- * Query FW Logging (indirect 0xFF32)
- * FW Log Event (indirect 0xFF33)
- */
-struct ice_aqc_fw_log {
-	u8 cmd_flags;
-#define ICE_AQC_FW_LOG_CONF_UART_EN	BIT(0)
-#define ICE_AQC_FW_LOG_CONF_AQ_EN	BIT(1)
-#define ICE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
-#define ICE_AQC_FW_LOG_CONF_SET_VALID	BIT(3)
-#define ICE_AQC_FW_LOG_AQ_REGISTER	BIT(0)
-#define ICE_AQC_FW_LOG_AQ_QUERY		BIT(2)
-
-	u8 rsp_flag;
-	__le16 fw_rt_msb;
-	union {
-		struct {
-			__le32 fw_rt_lsb;
-		} sync;
-		struct {
-			__le16 log_resolution;
-#define ICE_AQC_FW_LOG_MIN_RESOLUTION		(1)
-#define ICE_AQC_FW_LOG_MAX_RESOLUTION		(128)
-
-			__le16 mdl_cnt;
-		} cfg;
-	} ops;
-	__le32 addr_high;
-	__le32 addr_low;
-};
-
-/* Response Buffer for:
- *    Set Firmware Logging Configuration (0xFF30)
- *    Query FW Logging (0xFF32)
- */
-struct ice_aqc_fw_log_cfg_resp {
-	__le16 module_identifier;
-	u8 log_level;
-	u8 rsvd0;
-};
-
 /* Admin Queue command opcodes */
 enum ice_adminq_opc {
 	/* AQ commands */
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index c0258302d5d5..5d623cea9ef5 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -12,10 +12,11 @@ static struct dentry *ice_debugfs_root;
 /* create a define that has an extra module that doesn't really exist. this
  * is so we can add a module 'all' to easily enable/disable all the modules
  */
-#define ICE_NR_FW_LOG_MODULES (ICE_AQC_FW_LOG_ID_MAX + 1)
+#define ICE_NR_FW_LOG_MODULES (LIBIE_AQC_FW_LOG_ID_MAX + 1)
 
 /* the ordering in this array is important. it matches the ordering of the
- * values in the FW so the index is the same value as in ice_aqc_fw_logging_mod
+ * values in the FW so the index is the same value as in
+ * libie_aqc_fw_logging_mod
  */
 static const char * const ice_fwlog_module_string[] = {
 	"general",
@@ -84,7 +85,7 @@ ice_fwlog_print_module_cfg(struct ice_fwlog_cfg *cfg, int module,
 {
 	struct ice_fwlog_module_entry *entry;
 
-	if (module != ICE_AQC_FW_LOG_ID_MAX) {
+	if (module != LIBIE_AQC_FW_LOG_ID_MAX) {
 		entry =	&cfg->module_entries[module];
 
 		seq_printf(s, "\tModule: %s, Log Level: %s\n",
@@ -93,7 +94,7 @@ ice_fwlog_print_module_cfg(struct ice_fwlog_cfg *cfg, int module,
 	} else {
 		int i;
 
-		for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++) {
+		for (i = 0; i < LIBIE_AQC_FW_LOG_ID_MAX; i++) {
 			entry =	&cfg->module_entries[i];
 
 			seq_printf(s, "\tModule: %s, Log Level: %s\n",
@@ -190,7 +191,7 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
 		return -EINVAL;
 	}
 
-	if (module != ICE_AQC_FW_LOG_ID_MAX) {
+	if (module != LIBIE_AQC_FW_LOG_ID_MAX) {
 		fwlog->cfg.module_entries[module].log_level = log_level;
 	} else {
 		/* the module 'all' is a shortcut so that we can set
@@ -198,7 +199,7 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
 		 */
 		int i;
 
-		for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++)
+		for (i = 0; i < LIBIE_AQC_FW_LOG_ID_MAX; i++)
 			fwlog->cfg.module_entries[i].log_level = log_level;
 	}
 
@@ -266,11 +267,11 @@ ice_debugfs_nr_messages_write(struct file *filp, const char __user *buf,
 	if (ret)
 		return ret;
 
-	if (nr_messages < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
-	    nr_messages > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
+	if (nr_messages < LIBIE_AQC_FW_LOG_MIN_RESOLUTION ||
+	    nr_messages > LIBIE_AQC_FW_LOG_MAX_RESOLUTION) {
 		dev_err(dev, "Invalid FW log number of messages %d, value must be between %d - %d\n",
-			nr_messages, ICE_AQC_FW_LOG_MIN_RESOLUTION,
-			ICE_AQC_FW_LOG_MAX_RESOLUTION);
+			nr_messages, LIBIE_AQC_FW_LOG_MIN_RESOLUTION,
+			LIBIE_AQC_FW_LOG_MAX_RESOLUTION);
 		return -EINVAL;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 8a1fede98865..0e4d0da86e0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -142,8 +142,8 @@ static bool ice_fwlog_supported(struct ice_fwlog *fwlog)
  */
 static int ice_aq_fwlog_get(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg)
 {
-	struct ice_aqc_fw_log_cfg_resp *fw_modules;
-	struct ice_aqc_fw_log *cmd;
+	struct libie_aqc_fw_log_cfg_resp *fw_modules;
+	struct libie_aqc_fw_log *cmd;
 	struct libie_aq_desc desc;
 	u16 module_id_cnt;
 	int status;
@@ -156,10 +156,10 @@ static int ice_aq_fwlog_get(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg)
 	if (!buf)
 		return -ENOMEM;
 
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_query);
+	ice_fill_dflt_direct_cmd_desc(&desc, libie_aqc_opc_fw_logs_query);
 	cmd = libie_aq_raw(&desc);
 
-	cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_QUERY;
+	cmd->cmd_flags = LIBIE_AQC_FW_LOG_AQ_QUERY;
 
 	status = fwlog->send_cmd(fwlog->priv, &desc, buf, ICE_AQ_MAX_BUF_LEN);
 	if (status) {
@@ -168,26 +168,26 @@ static int ice_aq_fwlog_get(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg)
 	}
 
 	module_id_cnt = le16_to_cpu(cmd->ops.cfg.mdl_cnt);
-	if (module_id_cnt < ICE_AQC_FW_LOG_ID_MAX) {
+	if (module_id_cnt < LIBIE_AQC_FW_LOG_ID_MAX) {
 		dev_dbg(&fwlog->pdev->dev, "FW returned less than the expected number of FW log module IDs\n");
-	} else if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX) {
+	} else if (module_id_cnt > LIBIE_AQC_FW_LOG_ID_MAX) {
 		dev_dbg(&fwlog->pdev->dev, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
-			ICE_AQC_FW_LOG_ID_MAX);
-		module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
+			LIBIE_AQC_FW_LOG_ID_MAX);
+		module_id_cnt = LIBIE_AQC_FW_LOG_ID_MAX;
 	}
 
 	cfg->log_resolution = le16_to_cpu(cmd->ops.cfg.log_resolution);
-	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_AQ_EN)
+	if (cmd->cmd_flags & LIBIE_AQC_FW_LOG_CONF_AQ_EN)
 		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
-	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_UART_EN)
+	if (cmd->cmd_flags & LIBIE_AQC_FW_LOG_CONF_UART_EN)
 		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
-	if (cmd->cmd_flags & ICE_AQC_FW_LOG_QUERY_REGISTERED)
+	if (cmd->cmd_flags & LIBIE_AQC_FW_LOG_QUERY_REGISTERED)
 		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
 
-	fw_modules = (struct ice_aqc_fw_log_cfg_resp *)buf;
+	fw_modules = (struct libie_aqc_fw_log_cfg_resp *)buf;
 
 	for (i = 0; i < module_id_cnt; i++) {
-		struct ice_aqc_fw_log_cfg_resp *fw_module = &fw_modules[i];
+		struct libie_aqc_fw_log_cfg_resp *fw_module = &fw_modules[i];
 
 		cfg->module_entries[i].module_id =
 			le16_to_cpu(fw_module->module_identifier);
@@ -326,8 +326,8 @@ ice_aq_fwlog_set(struct ice_fwlog *fwlog,
 		 struct ice_fwlog_module_entry *entries, u16 num_entries,
 		 u16 options, u16 log_resolution)
 {
-	struct ice_aqc_fw_log_cfg_resp *fw_modules;
-	struct ice_aqc_fw_log *cmd;
+	struct libie_aqc_fw_log_cfg_resp *fw_modules;
+	struct libie_aqc_fw_log *cmd;
 	struct libie_aq_desc desc;
 	int status;
 	int i;
@@ -342,19 +342,19 @@ ice_aq_fwlog_set(struct ice_fwlog *fwlog,
 		fw_modules[i].log_level = entries[i].log_level;
 	}
 
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_config);
+	ice_fill_dflt_direct_cmd_desc(&desc, libie_aqc_opc_fw_logs_config);
 	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	cmd = libie_aq_raw(&desc);
 
-	cmd->cmd_flags = ICE_AQC_FW_LOG_CONF_SET_VALID;
+	cmd->cmd_flags = LIBIE_AQC_FW_LOG_CONF_SET_VALID;
 	cmd->ops.cfg.log_resolution = cpu_to_le16(log_resolution);
 	cmd->ops.cfg.mdl_cnt = cpu_to_le16(num_entries);
 
 	if (options & ICE_FWLOG_OPTION_ARQ_ENA)
-		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_AQ_EN;
+		cmd->cmd_flags |= LIBIE_AQC_FW_LOG_CONF_AQ_EN;
 	if (options & ICE_FWLOG_OPTION_UART_ENA)
-		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_UART_EN;
+		cmd->cmd_flags |= LIBIE_AQC_FW_LOG_CONF_UART_EN;
 
 	status = fwlog->send_cmd(fwlog->priv, &desc, fw_modules,
 				 sizeof(*fw_modules) * num_entries);
@@ -383,7 +383,7 @@ int ice_fwlog_set(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg)
 		return -EOPNOTSUPP;
 
 	return ice_aq_fwlog_set(fwlog, cfg->module_entries,
-				ICE_AQC_FW_LOG_ID_MAX, cfg->options,
+				LIBIE_AQC_FW_LOG_ID_MAX, cfg->options,
 				cfg->log_resolution);
 }
 
@@ -394,14 +394,14 @@ int ice_fwlog_set(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg)
  */
 static int ice_aq_fwlog_register(struct ice_fwlog *fwlog, bool reg)
 {
-	struct ice_aqc_fw_log *cmd;
+	struct libie_aqc_fw_log *cmd;
 	struct libie_aq_desc desc;
 
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_register);
+	ice_fill_dflt_direct_cmd_desc(&desc, libie_aqc_opc_fw_logs_register);
 	cmd = libie_aq_raw(&desc);
 
 	if (reg)
-		cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_REGISTER;
+		cmd->cmd_flags = LIBIE_AQC_FW_LOG_AQ_REGISTER;
 
 	return fwlog->send_cmd(fwlog->priv, &desc, NULL, 0);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
index 22585ea9ec93..9efa4a83c957 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -29,7 +29,7 @@ struct ice_fwlog_module_entry {
 
 struct ice_fwlog_cfg {
 	/* list of modules for configuring log level */
-	struct ice_fwlog_module_entry module_entries[ICE_AQC_FW_LOG_ID_MAX];
+	struct ice_fwlog_module_entry module_entries[LIBIE_AQC_FW_LOG_ID_MAX];
 	/* options used to configure firmware logging */
 	u16 options;
 #define ICE_FWLOG_OPTION_ARQ_ENA		BIT(0)
diff --git a/include/linux/net/intel/libie/adminq.h b/include/linux/net/intel/libie/adminq.h
index 1dd5d5924aee..f7d90e9acfe4 100644
--- a/include/linux/net/intel/libie/adminq.h
+++ b/include/linux/net/intel/libie/adminq.h
@@ -222,6 +222,94 @@ struct libie_aqc_list_caps_elem {
 };
 LIBIE_CHECK_STRUCT_LEN(32, libie_aqc_list_caps_elem);
 
+/* Admin Queue command opcodes */
+enum libie_adminq_opc {
+	/* FW Logging Commands */
+	libie_aqc_opc_fw_logs_config			= 0xFF30,
+	libie_aqc_opc_fw_logs_register			= 0xFF31,
+	libie_aqc_opc_fw_logs_query			= 0xFF32,
+	libie_aqc_opc_fw_logs_event			= 0xFF33,
+};
+
+enum libie_aqc_fw_logging_mod {
+	LIBIE_AQC_FW_LOG_ID_GENERAL = 0,
+	LIBIE_AQC_FW_LOG_ID_CTRL,
+	LIBIE_AQC_FW_LOG_ID_LINK,
+	LIBIE_AQC_FW_LOG_ID_LINK_TOPO,
+	LIBIE_AQC_FW_LOG_ID_DNL,
+	LIBIE_AQC_FW_LOG_ID_I2C,
+	LIBIE_AQC_FW_LOG_ID_SDP,
+	LIBIE_AQC_FW_LOG_ID_MDIO,
+	LIBIE_AQC_FW_LOG_ID_ADMINQ,
+	LIBIE_AQC_FW_LOG_ID_HDMA,
+	LIBIE_AQC_FW_LOG_ID_LLDP,
+	LIBIE_AQC_FW_LOG_ID_DCBX,
+	LIBIE_AQC_FW_LOG_ID_DCB,
+	LIBIE_AQC_FW_LOG_ID_XLR,
+	LIBIE_AQC_FW_LOG_ID_NVM,
+	LIBIE_AQC_FW_LOG_ID_AUTH,
+	LIBIE_AQC_FW_LOG_ID_VPD,
+	LIBIE_AQC_FW_LOG_ID_IOSF,
+	LIBIE_AQC_FW_LOG_ID_PARSER,
+	LIBIE_AQC_FW_LOG_ID_SW,
+	LIBIE_AQC_FW_LOG_ID_SCHEDULER,
+	LIBIE_AQC_FW_LOG_ID_TXQ,
+	LIBIE_AQC_FW_LOG_ID_RSVD,
+	LIBIE_AQC_FW_LOG_ID_POST,
+	LIBIE_AQC_FW_LOG_ID_WATCHDOG,
+	LIBIE_AQC_FW_LOG_ID_TASK_DISPATCH,
+	LIBIE_AQC_FW_LOG_ID_MNG,
+	LIBIE_AQC_FW_LOG_ID_SYNCE,
+	LIBIE_AQC_FW_LOG_ID_HEALTH,
+	LIBIE_AQC_FW_LOG_ID_TSDRV,
+	LIBIE_AQC_FW_LOG_ID_PFREG,
+	LIBIE_AQC_FW_LOG_ID_MDLVER,
+	LIBIE_AQC_FW_LOG_ID_MAX,
+};
+
+/* Set FW Logging configuration (indirect 0xFF30)
+ * Register for FW Logging (indirect 0xFF31)
+ * Query FW Logging (indirect 0xFF32)
+ * FW Log Event (indirect 0xFF33)
+ */
+#define LIBIE_AQC_FW_LOG_CONF_UART_EN		BIT(0)
+#define LIBIE_AQC_FW_LOG_CONF_AQ_EN		BIT(1)
+#define LIBIE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
+#define LIBIE_AQC_FW_LOG_CONF_SET_VALID		BIT(3)
+#define LIBIE_AQC_FW_LOG_AQ_REGISTER		BIT(0)
+#define LIBIE_AQC_FW_LOG_AQ_QUERY		BIT(2)
+
+#define LIBIE_AQC_FW_LOG_MIN_RESOLUTION		(1)
+#define LIBIE_AQC_FW_LOG_MAX_RESOLUTION		(128)
+
+struct libie_aqc_fw_log {
+	u8 cmd_flags;
+
+	u8 rsp_flag;
+	__le16 fw_rt_msb;
+	union {
+		struct {
+			__le32 fw_rt_lsb;
+		} sync;
+		struct {
+			__le16 log_resolution;
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
+struct libie_aqc_fw_log_cfg_resp {
+	__le16 module_identifier;
+	u8 log_level;
+	u8 rsvd0;
+};
+
 /**
  * struct libie_aq_desc - Admin Queue (AQ) descriptor
  * @flags: LIBIE_AQ_FLAG_* flags
@@ -253,6 +341,7 @@ struct libie_aq_desc {
 		struct	libie_aqc_driver_ver driver_ver;
 		struct	libie_aqc_req_res res_owner;
 		struct	libie_aqc_list_caps get_cap;
+		struct	libie_aqc_fw_log fw_log;
 	} params;
 };
 LIBIE_CHECK_STRUCT_LEN(32, libie_aq_desc);
-- 
2.49.0


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 112A8B0D7BC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 13:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9753942A35;
	Tue, 22 Jul 2025 11:07:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XhxTSDQrCGBN; Tue, 22 Jul 2025 11:07:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 245B142A3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753182430;
	bh=9SEQN0CvZjp+T3WXSQuOFJGQIf4x7RLKjj4viH8DF4I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dm8gET7ABo4aeO+Av9lJeJ81Rwdd8GLhgFsni5i494hgyh4YQQkK68ikHYlgMXABu
	 maQqjO5efEY/GZIIpx2/HlQJsPbIz8SCfJxqBYeXfkE6z4CAcBMj28g8+KeFfdCfAP
	 R3EYbjs7lu7CQyH2MHukeMwSp1P5Ombrd1e5s13ycYrwYdJs0WVqc2OI+1RkhAo+/u
	 JuKbC4K4WSqGjyMDqcmRWVg6iaRZ5xG4PFHFg7TQl1BVoccYX0lg3VDFyb4IDAINr1
	 /XRiygRosBbEN21DDoGlUIAwhoIUNBG+3N+riy2BDIS22vSKrum60c+cf2yfyPQ1Tt
	 2g9MbGa14uSqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 245B142A3A;
	Tue, 22 Jul 2025 11:07:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 96C7A127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 890F384B7C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A-Xsmo6szZtA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 11:07:07 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 86D8884B46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86D8884B46
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86D8884B46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:07 +0000 (UTC)
X-CSE-ConnectionGUID: M+YIm+g5Qs6bzLHaqv0/xg==
X-CSE-MsgGUID: 0DG+vgTVSnSyR7/TKKHMGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="59083604"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="59083604"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:07:07 -0700
X-CSE-ConnectionGUID: N2mhfjmPTx6KMi4bi0aXaw==
X-CSE-MsgGUID: YuCSIC2mSyGRd3qoYf2VAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="163153951"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa003.fm.intel.com with ESMTP; 22 Jul 2025 04:07:05 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 22 Jul 2025 12:45:51 +0200
Message-ID: <20250722104600.10141-7-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753182428; x=1784718428;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fpXEq2WuccY2v4ci5ak0LXgw51bNhb5vgiurxtb7uQ4=;
 b=OQnj4u2Rr4XLzq8QEBIIessnEvhoNxucYU3fE2DXD6K7AWnKUlFHKzUA
 t9j1O6r6RLJ8+GzfNCvtDu7qPHJATkpG7DwkaXLaJrZ/quXHTFj+DXH8W
 57bIOpvWZ+ERkUDqEEZcII/RW2uhsATxJI7Iv4rRbjo102v7D1GlvqfkS
 yrOYhC+UR0dJZv6C75gZs1jDRugFK9kJ1oma9QAinVExWnbk3j44k0VHA
 y8QCgk9IMDkSRHoWKoyrl46i9yE21yFMRi6ZQXU2bZxEwW8AUooWlG2cq
 R43KKdQ2MRVydmyHPVDfxW68lcD/H1i5Ebfxqz/dYEvjYo+eqw313SKlb
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OQnj4u2R
Subject: [Intel-wired-lan] [PATCH iwl-next v1 06/15] ice: allow calling
 custom send function in fwlog
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

Fwlog code needs to communicate with FW. In ice it is done through admin
queue command. Allow indirect calling the send function to move the
specific admin queue send function from fwlog core code.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  | 23 ++++++-
 drivers/net/ethernet/intel/ice/ice_debugfs.c |  6 +-
 drivers/net/ethernet/intel/ice/ice_fwlog.c   | 67 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_fwlog.h   | 14 ++--
 4 files changed, 65 insertions(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 7f293c791775..7b4ff20f3346 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -984,6 +984,26 @@ static int ice_wait_for_fw(struct ice_hw *hw, u32 timeout)
 	return -ETIMEDOUT;
 }
 
+static int __fwlog_send_cmd(void *priv, struct libie_aq_desc *desc, void *buf,
+			    u16 size)
+{
+	struct ice_hw *hw = priv;
+
+	return ice_aq_send_cmd(hw, desc, buf, size, NULL);
+}
+
+static int __fwlog_init(struct ice_hw *hw)
+{
+	struct ice_pf *pf = hw->back;
+	struct ice_fwlog_api api = {
+		.pdev = pf->pdev,
+		.send_cmd = __fwlog_send_cmd,
+		.priv = hw,
+	};
+
+	return ice_fwlog_init(hw, &hw->fwlog, &api);
+}
+
 /**
  * ice_init_hw - main hardware initialization routine
  * @hw: pointer to the hardware structure
@@ -992,7 +1012,6 @@ int ice_init_hw(struct ice_hw *hw)
 {
 	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
 	void *mac_buf __free(kfree) = NULL;
-	struct ice_pf *pf = hw->back;
 	u16 mac_buf_len;
 	int status;
 
@@ -1013,7 +1032,7 @@ int ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_cqinit;
 
-	status = ice_fwlog_init(hw, &hw->fwlog, pf->pdev);
+	status = __fwlog_init(hw);
 	if (status)
 		ice_debug(hw, ICE_DBG_FW_LOG, "Error initializing FW logging: %d\n",
 			  status);
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index 1e036bc128c5..9235ae099e17 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -350,14 +350,14 @@ ice_debugfs_enable_write(struct file *filp, const char __user *buf,
 	else
 		hw->fwlog.cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
 
-	ret = ice_fwlog_set(hw, &hw->fwlog.cfg);
+	ret = ice_fwlog_set(&hw->fwlog, &hw->fwlog.cfg);
 	if (ret)
 		goto enable_write_error;
 
 	if (enable)
-		ret = ice_fwlog_register(hw, &hw->fwlog);
+		ret = ice_fwlog_register(&hw->fwlog);
 	else
-		ret = ice_fwlog_unregister(hw, &hw->fwlog);
+		ret = ice_fwlog_unregister(&hw->fwlog);
 
 	if (ret)
 		goto enable_write_error;
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index b1c1359d5ab5..172905187a3e 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -137,10 +137,10 @@ static bool ice_fwlog_supported(struct ice_fwlog *fwlog)
 
 /**
  * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
- * @hw: pointer to the HW structure
+ * @fwlog: pointer to the fwlog structure
  * @cfg: firmware logging configuration to populate
  */
-static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
+static int ice_aq_fwlog_get(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg)
 {
 	struct ice_aqc_fw_log_cfg_resp *fw_modules;
 	struct ice_aqc_fw_log *cmd;
@@ -161,17 +161,17 @@ static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
 
 	cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_QUERY;
 
-	status = ice_aq_send_cmd(hw, &desc, buf, ICE_AQ_MAX_BUF_LEN, NULL);
+	status = fwlog->send_cmd(fwlog->priv, &desc, buf, ICE_AQ_MAX_BUF_LEN);
 	if (status) {
-		dev_dbg(&hw->fwlog.pdev->dev, "Failed to get FW log configuration\n");
+		dev_dbg(&fwlog->pdev->dev, "Failed to get FW log configuration\n");
 		goto status_out;
 	}
 
 	module_id_cnt = le16_to_cpu(cmd->ops.cfg.mdl_cnt);
 	if (module_id_cnt < ICE_AQC_FW_LOG_ID_MAX) {
-		dev_dbg(&hw->fwlog.pdev->dev, "FW returned less than the expected number of FW log module IDs\n");
+		dev_dbg(&fwlog->pdev->dev, "FW returned less than the expected number of FW log module IDs\n");
 	} else if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX) {
-		dev_dbg(&hw->fwlog.pdev->dev, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
+		dev_dbg(&fwlog->pdev->dev, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
 			ICE_AQC_FW_LOG_ID_MAX);
 		module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
 	}
@@ -201,7 +201,6 @@ static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
 
 /**
  * ice_fwlog_set_supported - Set if FW logging is supported by FW
- * @hw: pointer to the HW struct
  * @fwlog: pointer to the fwlog structure
  *
  * If FW returns success to the ice_aq_fwlog_get call then it supports FW
@@ -210,7 +209,7 @@ static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
  * This function is only meant to be called during driver init to determine if
  * the FW support FW logging.
  */
-static void ice_fwlog_set_supported(struct ice_hw *hw, struct ice_fwlog *fwlog)
+static void ice_fwlog_set_supported(struct ice_fwlog *fwlog)
 {
 	struct ice_fwlog_cfg *cfg;
 	int status;
@@ -221,7 +220,7 @@ static void ice_fwlog_set_supported(struct ice_hw *hw, struct ice_fwlog *fwlog)
 	if (!cfg)
 		return;
 
-	status = ice_aq_fwlog_get(hw, cfg);
+	status = ice_aq_fwlog_get(fwlog, cfg);
 	if (status)
 		dev_dbg(&fwlog->pdev->dev, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
 			status);
@@ -235,26 +234,26 @@ static void ice_fwlog_set_supported(struct ice_hw *hw, struct ice_fwlog *fwlog)
  * ice_fwlog_init - Initialize FW logging configuration
  * @hw: pointer to the HW structure
  * @fwlog: pointer to the fwlog structure
- * @pdev: pointer to the pci dev used in dev_warn()
+ * @api: api structure to init fwlog
  *
  * This function should be called on driver initialization during
  * ice_init_hw().
  */
 int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
-		   struct pci_dev *pdev)
+		   struct ice_fwlog_api *api)
 {
 	/* only support fw log commands on PF 0 */
 	if (hw->bus.func)
 		return -EINVAL;
 
-	ice_fwlog_set_supported(hw, fwlog);
-	fwlog->pdev = pdev;
+	fwlog->api = *api;
+	ice_fwlog_set_supported(fwlog);
 
 	if (ice_fwlog_supported(fwlog)) {
 		int status;
 
 		/* read the current config from the FW and store it */
-		status = ice_aq_fwlog_get(hw, &fwlog->cfg);
+		status = ice_aq_fwlog_get(fwlog, &fwlog->cfg);
 		if (status)
 			return status;
 
@@ -307,7 +306,7 @@ void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog)
 	 * for the next driver load
 	 */
 	fwlog->cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
-	status = ice_fwlog_set(hw, &fwlog->cfg);
+	status = ice_fwlog_set(fwlog, &fwlog->cfg);
 	if (status)
 		dev_warn(&fwlog->pdev->dev, "Unable to turn off FW logging, status: %d\n",
 			 status);
@@ -316,7 +315,7 @@ void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog)
 
 	pf->ice_debugfs_pf_fwlog_modules = NULL;
 
-	status = ice_fwlog_unregister(hw, fwlog);
+	status = ice_fwlog_unregister(fwlog);
 	if (status)
 		dev_warn(&fwlog->pdev->dev, "Unable to unregister FW logging, status: %d\n",
 			 status);
@@ -329,15 +328,16 @@ void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog)
 
 /**
  * ice_aq_fwlog_set - Set FW logging configuration AQ command (0xFF30)
- * @hw: pointer to the HW structure
+ * @fwlog: pointer to the fwlog structure
  * @entries: entries to configure
  * @num_entries: number of @entries
  * @options: options from ice_fwlog_cfg->options structure
  * @log_resolution: logging resolution
  */
 static int
-ice_aq_fwlog_set(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
-		 u16 num_entries, u16 options, u16 log_resolution)
+ice_aq_fwlog_set(struct ice_fwlog *fwlog,
+		 struct ice_fwlog_module_entry *entries, u16 num_entries,
+		 u16 options, u16 log_resolution)
 {
 	struct ice_aqc_fw_log_cfg_resp *fw_modules;
 	struct ice_aqc_fw_log *cmd;
@@ -369,9 +369,8 @@ ice_aq_fwlog_set(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
 	if (options & ICE_FWLOG_OPTION_UART_ENA)
 		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_UART_EN;
 
-	status = ice_aq_send_cmd(hw, &desc, fw_modules,
-				 sizeof(*fw_modules) * num_entries,
-				 NULL);
+	status = fwlog->send_cmd(fwlog->priv, &desc, fw_modules,
+				 sizeof(*fw_modules) * num_entries);
 
 	kfree(fw_modules);
 
@@ -380,7 +379,7 @@ ice_aq_fwlog_set(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
 
 /**
  * ice_fwlog_set - Set the firmware logging settings
- * @hw: pointer to the HW structure
+ * @fwlog: pointer to the fwlog structure
  * @cfg: config used to set firmware logging
  *
  * This function should be called whenever the driver needs to set the firmware
@@ -391,22 +390,22 @@ ice_aq_fwlog_set(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
  * ice_fwlog_register. Note, that ice_fwlog_register does not need to be called
  * for init.
  */
-int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
+int ice_fwlog_set(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg)
 {
-	if (!ice_fwlog_supported(&hw->fwlog))
+	if (!ice_fwlog_supported(fwlog))
 		return -EOPNOTSUPP;
 
-	return ice_aq_fwlog_set(hw, cfg->module_entries,
+	return ice_aq_fwlog_set(fwlog, cfg->module_entries,
 				ICE_AQC_FW_LOG_ID_MAX, cfg->options,
 				cfg->log_resolution);
 }
 
 /**
  * ice_aq_fwlog_register - Register PF for firmware logging events (0xFF31)
- * @hw: pointer to the HW structure
+ * @fwlog: pointer to the fwlog structure
  * @reg: true to register and false to unregister
  */
-static int ice_aq_fwlog_register(struct ice_hw *hw, bool reg)
+static int ice_aq_fwlog_register(struct ice_fwlog *fwlog, bool reg)
 {
 	struct ice_aqc_fw_log *cmd;
 	struct libie_aq_desc desc;
@@ -417,25 +416,24 @@ static int ice_aq_fwlog_register(struct ice_hw *hw, bool reg)
 	if (reg)
 		cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_REGISTER;
 
-	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+	return fwlog->send_cmd(fwlog->priv, &desc, NULL, 0);
 }
 
 /**
  * ice_fwlog_register - Register the PF for firmware logging
- * @hw: pointer to the HW structure
  * @fwlog: pointer to the fwlog structure
  *
  * After this call the PF will start to receive firmware logging based on the
  * configuration set in ice_fwlog_set.
  */
-int ice_fwlog_register(struct ice_hw *hw, struct ice_fwlog *fwlog)
+int ice_fwlog_register(struct ice_fwlog *fwlog)
 {
 	int status;
 
 	if (!ice_fwlog_supported(fwlog))
 		return -EOPNOTSUPP;
 
-	status = ice_aq_fwlog_register(hw, true);
+	status = ice_aq_fwlog_register(fwlog, true);
 	if (status)
 		dev_dbg(&fwlog->pdev->dev, "Failed to register for firmware logging events over ARQ\n");
 	else
@@ -446,17 +444,16 @@ int ice_fwlog_register(struct ice_hw *hw, struct ice_fwlog *fwlog)
 
 /**
  * ice_fwlog_unregister - Unregister the PF from firmware logging
- * @hw: pointer to the HW structure
  * @fwlog: pointer to the fwlog structure
  */
-int ice_fwlog_unregister(struct ice_hw *hw, struct ice_fwlog *fwlog)
+int ice_fwlog_unregister(struct ice_fwlog *fwlog)
 {
 	int status;
 
 	if (!ice_fwlog_supported(fwlog))
 		return -EOPNOTSUPP;
 
-	status = ice_aq_fwlog_register(hw, false);
+	status = ice_aq_fwlog_register(fwlog, false);
 	if (status)
 		dev_dbg(&fwlog->pdev->dev, "Failed to unregister from firmware logging events over ARQ\n");
 	else
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
index 9c56ca6cbef0..fe4b2ce6813f 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -68,17 +68,21 @@ struct ice_fwlog {
 	struct ice_fwlog_cfg cfg;
 	bool supported; /* does hardware support FW logging? */
 	struct ice_fwlog_ring ring;
-	struct pci_dev *pdev;
+	struct_group_tagged(ice_fwlog_api, api,
+		struct pci_dev *pdev;
+		int (*send_cmd)(void *, struct libie_aq_desc *, void *, u16);
+		void *priv;
+	);
 };
 
 bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings);
 void ice_fwlog_ring_increment(u16 *item, u16 size);
 int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
-		   struct pci_dev *pdev);
+		   struct ice_fwlog_api *api);
 void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog);
-int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
-int ice_fwlog_register(struct ice_hw *hw, struct ice_fwlog *fwlog);
-int ice_fwlog_unregister(struct ice_hw *hw, struct ice_fwlog *fwlog);
+int ice_fwlog_set(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg);
+int ice_fwlog_register(struct ice_fwlog *fwlog);
+int ice_fwlog_unregister(struct ice_fwlog *fwlog);
 void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index);
 void ice_get_fwlog_data(struct ice_fwlog *fwlog, u8 *buf, u16 len);
 #endif /* _ICE_FWLOG_H_ */
-- 
2.49.0


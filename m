Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D00B21C5D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 06:54:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 350D441DFA;
	Tue, 12 Aug 2025 04:54:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3I5-ESlS0Vw7; Tue, 12 Aug 2025 04:54:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18E4D41DEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754974444;
	bh=eVCYfVdVROJZ+UT2g1s5z1ug76j3VRNduTPqq1oHVcc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZOoxwu0FpSCI8lmBpLS1zvPnqzYgqb6qRgNDZwaK3FxaJpQB124KHsegy6h9VDw46
	 vBWWE1K9xybvUL1WcC85/RHL1cDSh/rGiKJkPeCHaUTRxnMpNeyEAnMAG/18m8eo/D
	 cGSNbiL9udHUXwMkOhCkouMtI8vzzRA7aJ1hvsVbALebda/TYO5BlhuEQkrfOmmdkh
	 IdBrVeB9cGVZnRCCqeM3LtAepk+ag1WTBzP/3RQMDSPPj5rodhgLXMXjaChhp4qxPg
	 I/j4/vXofi4KPzBdURF67SxsfbghjtYPb/INcxN1xIf+qC+YoxPYoKs71El7mk6QgM
	 1AgDxpJdLKeYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18E4D41DEE;
	Tue, 12 Aug 2025 04:54:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 859B2183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D355612A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5lVhfa2bBcPY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 04:54:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6A10D61356
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A10D61356
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A10D61356
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:00 +0000 (UTC)
X-CSE-ConnectionGUID: I/5Aqb7qTNew5RLPZiCVdw==
X-CSE-MsgGUID: caeGIcE6RDiKX4WNedbcjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68612725"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68612725"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:46:54 -0700
X-CSE-ConnectionGUID: 0zoUI/+HRbSXOmMG/tC94g==
X-CSE-MsgGUID: mUqLLoiNR7qL2dXyHHBAqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165327868"
Received: from unknown (HELO os-delivery.igk.intel.com) ([10.102.21.165])
 by orviesa010.jf.intel.com with ESMTP; 11 Aug 2025 21:46:53 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, horms@kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 12 Aug 2025 06:23:22 +0200
Message-ID: <20250812042337.1356907-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754974440; x=1786510440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xpI2j6Ya3tzJb0LvCYuMOYI32ZhuLepKOSz+MvOa3Js=;
 b=WKNj6MCdWj+8La3KfBxWdl87fYFzqs/b/99k0/AT/AD+r+3RGvVBwu6r
 6q9aXWOAiWWtra9IoJRbLytpc5rw4GJopfszzRUBN6NlzkGty/k+BiJKM
 PPcw5K5SsxAKzkdtPVCC/N06lRSp+/Ps1EC2ssH2FPmGiyXw/HQNa/dIh
 Axhe6Lg1p7+nYES8u13irjFZPikKnrtPHb7TOi959fj8llwnXXngIl525
 jq3j9IYWUSdlQ4lZ6rnbDcUsCWp1M5vuRBh+19xPFSYG0E7x2r2Dwx35S
 GSUpPak01d2Z1/3m/Eo0AGu/3bBjdZWvujv1NI1IfShQsY6EmJiyCyTZx
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WKNj6MCd
Subject: [Intel-wired-lan] [PATCH iwl-next v2 01/15] ice: make fwlog
 functions static
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

ice_fwlog_supported(), ice_fwlog_get() and ice_fwlog_supported() aren't
called outside the ice_fwlog.c file. Make it static and move in the file
to allow clean build.

Drop ice_fwlog_get(). It is called only from ice_fwlog_init() function
where the fwlog support is already checked. There is no need to check it
again, call ice_aq_fwlog_get() instead.

Drop no longer valid comment from ice_fwlog_get_supported().

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fwlog.c | 232 ++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_fwlog.h |   5 +-
 2 files changed, 109 insertions(+), 128 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index a31bb026ad34..e48856206648 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -123,6 +123,113 @@ void ice_fwlog_realloc_rings(struct ice_hw *hw, int index)
 	hw->fwlog_ring.tail = 0;
 }
 
+/**
+ * ice_fwlog_supported - Cached for whether FW supports FW logging or not
+ * @hw: pointer to the HW structure
+ *
+ * This will always return false if called before ice_init_hw(), so it must be
+ * called after ice_init_hw().
+ */
+static bool ice_fwlog_supported(struct ice_hw *hw)
+{
+	return hw->fwlog_supported;
+}
+
+/**
+ * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
+ * @hw: pointer to the HW structure
+ * @cfg: firmware logging configuration to populate
+ */
+static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
+{
+	struct ice_aqc_fw_log_cfg_resp *fw_modules;
+	struct ice_aqc_fw_log *cmd;
+	struct libie_aq_desc desc;
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
+	cmd = libie_aq_raw(&desc);
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
+	} else if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX) {
+		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
+			  ICE_AQC_FW_LOG_ID_MAX);
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
+static void ice_fwlog_set_supported(struct ice_hw *hw)
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
+	status = ice_aq_fwlog_get(hw, cfg);
+	if (status)
+		ice_debug(hw, ICE_DBG_FW_LOG, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
+			  status);
+	else
+		hw->fwlog_supported = true;
+
+	kfree(cfg);
+}
+
 /**
  * ice_fwlog_init - Initialize FW logging configuration
  * @hw: pointer to the HW structure
@@ -142,7 +249,7 @@ int ice_fwlog_init(struct ice_hw *hw)
 		int status;
 
 		/* read the current config from the FW and store it */
-		status = ice_fwlog_get(hw, &hw->fwlog_cfg);
+		status = ice_aq_fwlog_get(hw, &hw->fwlog_cfg);
 		if (status)
 			return status;
 
@@ -214,18 +321,6 @@ void ice_fwlog_deinit(struct ice_hw *hw)
 	}
 }
 
-/**
- * ice_fwlog_supported - Cached for whether FW supports FW logging or not
- * @hw: pointer to the HW structure
- *
- * This will always return false if called before ice_init_hw(), so it must be
- * called after ice_init_hw().
- */
-bool ice_fwlog_supported(struct ice_hw *hw)
-{
-	return hw->fwlog_supported;
-}
-
 /**
  * ice_aq_fwlog_set - Set FW logging configuration AQ command (0xFF30)
  * @hw: pointer to the HW structure
@@ -300,83 +395,6 @@ int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
 				cfg->log_resolution);
 }
 
-/**
- * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
- * @hw: pointer to the HW structure
- * @cfg: firmware logging configuration to populate
- */
-static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
-{
-	struct ice_aqc_fw_log_cfg_resp *fw_modules;
-	struct ice_aqc_fw_log *cmd;
-	struct libie_aq_desc desc;
-	u16 module_id_cnt;
-	int status;
-	void *buf;
-	int i;
-
-	memset(cfg, 0, sizeof(*cfg));
-
-	buf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
-	if (!buf)
-		return -ENOMEM;
-
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_query);
-	cmd = libie_aq_raw(&desc);
-
-	cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_QUERY;
-
-	status = ice_aq_send_cmd(hw, &desc, buf, ICE_AQ_MAX_BUF_LEN, NULL);
-	if (status) {
-		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to get FW log configuration\n");
-		goto status_out;
-	}
-
-	module_id_cnt = le16_to_cpu(cmd->ops.cfg.mdl_cnt);
-	if (module_id_cnt < ICE_AQC_FW_LOG_ID_MAX) {
-		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned less than the expected number of FW log module IDs\n");
-	} else if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX) {
-		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
-			  ICE_AQC_FW_LOG_ID_MAX);
-		module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
-	}
-
-	cfg->log_resolution = le16_to_cpu(cmd->ops.cfg.log_resolution);
-	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_AQ_EN)
-		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
-	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_UART_EN)
-		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
-	if (cmd->cmd_flags & ICE_AQC_FW_LOG_QUERY_REGISTERED)
-		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
-
-	fw_modules = (struct ice_aqc_fw_log_cfg_resp *)buf;
-
-	for (i = 0; i < module_id_cnt; i++) {
-		struct ice_aqc_fw_log_cfg_resp *fw_module = &fw_modules[i];
-
-		cfg->module_entries[i].module_id =
-			le16_to_cpu(fw_module->module_identifier);
-		cfg->module_entries[i].log_level = fw_module->log_level;
-	}
-
-status_out:
-	kfree(buf);
-	return status;
-}
-
-/**
- * ice_fwlog_get - Get the firmware logging settings
- * @hw: pointer to the HW structure
- * @cfg: config to populate based on current firmware logging settings
- */
-int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
-{
-	if (!ice_fwlog_supported(hw))
-		return -EOPNOTSUPP;
-
-	return ice_aq_fwlog_get(hw, cfg);
-}
-
 /**
  * ice_aq_fwlog_register - Register PF for firmware logging events (0xFF31)
  * @hw: pointer to the HW structure
@@ -438,37 +456,3 @@ int ice_fwlog_unregister(struct ice_hw *hw)
 
 	return status;
 }
-
-/**
- * ice_fwlog_set_supported - Set if FW logging is supported by FW
- * @hw: pointer to the HW struct
- *
- * If FW returns success to the ice_aq_fwlog_get call then it supports FW
- * logging, else it doesn't. Set the fwlog_supported flag accordingly.
- *
- * This function is only meant to be called during driver init to determine if
- * the FW support FW logging.
- */
-void ice_fwlog_set_supported(struct ice_hw *hw)
-{
-	struct ice_fwlog_cfg *cfg;
-	int status;
-
-	hw->fwlog_supported = false;
-
-	cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
-	if (!cfg)
-		return;
-
-	/* don't call ice_fwlog_get() because that would check to see if FW
-	 * logging is supported which is what the driver is determining now
-	 */
-	status = ice_aq_fwlog_get(hw, cfg);
-	if (status)
-		ice_debug(hw, ICE_DBG_FW_LOG, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
-			  status);
-	else
-		hw->fwlog_supported = true;
-
-	kfree(cfg);
-}
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
index 287e71fa4b86..7d95d11b6ef9 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -38,7 +38,7 @@ struct ice_fwlog_cfg {
 	 * logging on initialization
 	 */
 #define ICE_FWLOG_OPTION_REGISTER_ON_INIT	BIT(2)
-	/* set in the ice_fwlog_get() response if the PF is registered for FW
+	/* set in the ice_aq_fwlog_get() response if the PF is registered for FW
 	 * logging events over ARQ
 	 */
 #define ICE_FWLOG_OPTION_IS_REGISTERED		BIT(3)
@@ -67,12 +67,9 @@ struct ice_fwlog_ring {
 bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings);
 bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings);
 void ice_fwlog_ring_increment(u16 *item, u16 size);
-void ice_fwlog_set_supported(struct ice_hw *hw);
-bool ice_fwlog_supported(struct ice_hw *hw);
 int ice_fwlog_init(struct ice_hw *hw);
 void ice_fwlog_deinit(struct ice_hw *hw);
 int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
-int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
 int ice_fwlog_register(struct ice_hw *hw);
 int ice_fwlog_unregister(struct ice_hw *hw);
 void ice_fwlog_realloc_rings(struct ice_hw *hw, int index);
-- 
2.49.0


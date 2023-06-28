Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E44741C47
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 01:15:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90E7D60E31;
	Wed, 28 Jun 2023 23:15:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90E7D60E31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687994136;
	bh=WrQTDIOlHsfY/plAf0wvCrMX+IvoKE4t/KM2umArVZk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cMukN+V4Iz4Sm6jbzRG/VIRS2c4QsR01EZd2aMYGdF09/iSdRBXwRN+y7ZtNrt6kY
	 wgvuvp8zLz83s154yYQMWTMT9yZi6tNZ6U0vcwFVMXWL7Le0PC3qGWEasweisq9u2Z
	 H9joTZPhfsmjlOjjwWJQUfZyfe/KBLsK/D/TchqU+13VMfE4A/zSh8RxqsuCgCAIh6
	 e6zs7Dc9Et7lDd4ZFrWj+tPOn3Vjry+VXGDZ2SHjhi0qBwfET4LfEitiNdO/8ZYlcX
	 TJPYoJZM1E9pc8stUCcjbO0K6qY8Dkv0ZeGp/qd8R4tY6yCEVt2PD/RNt24Zk3dqZu
	 KZL/cmF8Kw6Cg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KnSzyssrB-Kg; Wed, 28 Jun 2023 23:15:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBD6D60B6A;
	Wed, 28 Jun 2023 23:15:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBD6D60B6A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C53851BF969
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 23:15:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A9252400FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 23:15:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9252400FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nidftrv9m4ve for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 23:15:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFC7740462
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFC7740462
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 23:15:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="359470990"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="359470990"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 16:14:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="667300572"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="667300572"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.209.143.119])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 16:14:14 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Jun 2023 16:14:00 -0700
Message-Id: <20230628231402.176-4-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230628231402.176-1-paul.m.stillwell.jr@intel.com>
References: <20230628231402.176-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687994109; x=1719530109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fJaBqDMxzWEfcPz5IbCjQUfW7Zpkia9Rh5fG1tCFjBc=;
 b=kYcCQNiMVu1sVrAA+O494ZDTq2p4BQ0eX2fIRg0fRjwPcS3iTsGje70/
 FhnfgzBj2hox1Ef5Aq/NdCpCdc8taFxqGh5kGINImN8A89DxTYaJC1+Lp
 Wb2pHK3Gh4fIHO+1fZcIqlh4upaSWVwPeAYY8sgfCEQ7OvoCPh8Oqa7eX
 htpgntZ2FI9OG+T6BRaj5pEFCV3MN1YtAPGPawWBcqC2ISPPPH+yVIl2Y
 9V9oCf5BSfrpqy6qzlIG6OwxL7jZl8IoGwZhQTj59ouz9D8fkJZurkwJn
 BboOsu/c7XHlVDOL3hiTugZc/TphMU2+bVjjj01PC/WMPu7ML91qyj/ce
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kYcCQNiM
Subject: [Intel-wired-lan] [PATCH net-next v13 3/5] ice: enable FW logging
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

Once users have configured the FW logging then allow them to enable it
by writing to the 'fwlog/enable' file. Writing a 1 to this file enables
logging and writing a 0 disables logging. Reading the actual data is a
separate patch.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
v12->v13: created a new patch for the enable code
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   1 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 114 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    |  90 ++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |   3 +
 5 files changed, 211 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 2d1073ee1e0f..09aa63225544 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2120,6 +2120,7 @@ enum ice_aqc_fw_logging_mod {
 };
 
 /* Set FW Logging configuration (indirect 0xFF30)
+ * Register for FW Logging (indirect 0xFF31)
  * Query FW Logging (indirect 0xFF32)
  */
 struct ice_aqc_fw_log {
@@ -2128,6 +2129,7 @@ struct ice_aqc_fw_log {
 #define ICE_AQC_FW_LOG_CONF_AQ_EN	BIT(1)
 #define ICE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
 #define ICE_AQC_FW_LOG_CONF_SET_VALID	BIT(3)
+#define ICE_AQC_FW_LOG_AQ_REGISTER	BIT(0)
 #define ICE_AQC_FW_LOG_AQ_QUERY		BIT(2)
 
 	u8 rsp_flag;
@@ -2421,6 +2423,7 @@ enum ice_adminq_opc {
 
 	/* FW Logging Commands */
 	ice_aqc_opc_fw_logs_config			= 0xFF30,
+	ice_aqc_opc_fw_logs_register			= 0xFF31,
 	ice_aqc_opc_fw_logs_query			= 0xFF32,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 12dc94b473f1..e5e2461ef117 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1031,6 +1031,7 @@ void ice_deinit_hw(struct ice_hw *hw)
 	ice_free_hw_tbls(hw);
 	mutex_destroy(&hw->tnl_lock);
 
+	ice_fwlog_deinit(hw);
 	ice_destroy_all_ctrlq(hw);
 
 	/* Clear VSI contexts if not already cleared */
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index 7590b6ae08bc..dba99bf0e44c 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -397,6 +397,117 @@ static const struct file_operations ice_debugfs_resolution_fops = {
 	.write = ice_debugfs_resolution_write,
 };
 
+/**
+ * ice_debugfs_enable_read - read from 'enable' file
+ * @filp: the opened file
+ * @buffer: where to write the data for the user to read
+ * @count: the size of the user's buffer
+ * @ppos: file position offset
+ */
+static ssize_t ice_debugfs_enable_read(struct file *filp,
+				       char __user *buffer, size_t count,
+				       loff_t *ppos)
+{
+	struct ice_pf *pf = filp->private_data;
+	struct ice_hw *hw = &pf->hw;
+	char buff[32] = {};
+	int status;
+
+	/* don't allow commands if the FW doesn't support it */
+	if (!ice_fwlog_supported(&pf->hw))
+		return -EOPNOTSUPP;
+
+	snprintf(buff, sizeof(buff), "%u\n",
+		 (u16)(hw->fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED));
+
+	status = simple_read_from_buffer(buffer, count, ppos, buff,
+					 strlen(buff));
+
+	return status;
+}
+
+/**
+ * ice_debugfs_enable_write - write into 'enable' file
+ * @filp: the opened file
+ * @buf: where to find the user's data
+ * @count: the length of the user's data
+ * @ppos: file position offset
+ */
+static ssize_t
+ice_debugfs_enable_write(struct file *filp, const char __user *buf,
+			 size_t count, loff_t *ppos)
+{
+	struct ice_pf *pf = filp->private_data;
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	ssize_t ret;
+	char **argv;
+	int argc;
+
+	/* don't allow commands if the FW doesn't support it */
+	if (!ice_fwlog_supported(hw))
+		return -EOPNOTSUPP;
+
+	/* don't allow partial writes */
+	if (*ppos != 0)
+		return 0;
+
+	ret = ice_debugfs_parse_cmd_line(buf, count, &argv, &argc);
+	if (ret)
+		goto err_copy_from_user;
+
+	if (argc == 1) {
+		bool enable;
+
+		ret = kstrtobool(argv[0], &enable);
+		if (ret)
+			goto enable_write_error;
+
+		if (enable)
+			hw->fwlog_cfg.options |= ICE_FWLOG_OPTION_ARQ_ENA;
+		else
+			hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
+
+		ret = ice_fwlog_set(hw, &hw->fwlog_cfg);
+		if (ret)
+			goto enable_write_error;
+
+		if (enable)
+			ret = ice_fwlog_register(hw);
+		else
+			ret = ice_fwlog_unregister(hw);
+
+		if (ret)
+			goto enable_write_error;
+	} else {
+		dev_info(dev, "unknown or invalid command '%s'\n", argv[0]);
+		ret = -EINVAL;
+		goto enable_write_error;
+	}
+
+	/* if we get here, nothing went wrong; return bytes copied */
+	ret = (ssize_t)count;
+
+enable_write_error:
+	argv_free(argv);
+err_copy_from_user:
+	/* This function always consumes all of the written input, or produces
+	 * an error. Check and enforce this. Otherwise, the write operation
+	 * won't complete properly.
+	 */
+	if (WARN_ON(ret != (ssize_t)count && ret >= 0))
+		ret = -EIO;
+
+	return ret;
+}
+
+static const struct file_operations ice_debugfs_enable_fops = {
+	.owner = THIS_MODULE,
+	.open  = simple_open,
+	.read = ice_debugfs_enable_read,
+	.write = ice_debugfs_enable_write,
+};
+
 /**
  * ice_debugfs_fwlog_init - setup the debugfs directory
  * @pf: the ice that is starting up
@@ -428,6 +539,9 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
 	debugfs_create_file("resolution", 0600,
 			    pf->ice_debugfs_pf_fwlog, pf,
 			    &ice_debugfs_resolution_fops);
+
+	debugfs_create_file("enable", 0600, pf->ice_debugfs_pf_fwlog,
+			    pf, &ice_debugfs_enable_fops);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 1f4b474dcc97..e882a13cf13f 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -32,6 +32,34 @@ int ice_fwlog_init(struct ice_hw *hw)
 	return 0;
 }
 
+/**
+ * ice_fwlog_deinit - unroll FW logging configuration
+ * @hw: pointer to the HW structure
+ *
+ * This function should be called in ice_deinit_hw().
+ */
+void ice_fwlog_deinit(struct ice_hw *hw)
+{
+	int status;
+
+	/* only support fw log commands on PF 0 */
+	if (hw->bus.func)
+		return;
+
+	/* make sure FW logging is disabled to not put the FW in a weird state
+	 * for the next driver load
+	 */
+	hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
+	status = ice_fwlog_set(hw, &hw->fwlog_cfg);
+	if (status)
+		dev_warn(ice_hw_to_dev(hw), "Unable to turn off FW logging, status: %d\n", status);
+
+	status = ice_fwlog_unregister(hw);
+	if (status)
+		dev_warn(ice_hw_to_dev(hw), "Unable to unregister FW logging, status: %d\n",
+			 status);
+}
+
 /**
  * ice_fwlog_supported - Cached for whether FW supports FW logging or not
  * @hw: pointer to the HW structure
@@ -164,6 +192,8 @@ static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
 		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
 	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_UART_EN)
 		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
+	if (cmd->cmd_flags & ICE_AQC_FW_LOG_QUERY_REGISTERED)
+		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
 
 	fw_modules = (struct ice_aqc_fw_log_cfg_resp *)buf;
 
@@ -196,6 +226,66 @@ int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
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
index 5a4194527cf9..45865558425d 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -50,6 +50,9 @@ struct ice_fwlog_cfg {
 void ice_fwlog_set_supported(struct ice_hw *hw);
 bool ice_fwlog_supported(struct ice_hw *hw);
 int ice_fwlog_init(struct ice_hw *hw);
+void ice_fwlog_deinit(struct ice_hw *hw);
 int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
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

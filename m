Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0428478634F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 00:22:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D11B61091;
	Wed, 23 Aug 2023 22:22:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D11B61091
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692829340;
	bh=hb3LpwC78JLx5L7xY3ZWDOF98bdZsNYgSiO533OdKVQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5Oqbqo3xW5AYGogg8lwEzvJkIjSADFRkXOJmJNyzoShIvo5mEvd77ud8N50t1NlRn
	 KJa/Kk0Z3ZSdPW0yXiVjsx72dIvjNTs/bIgNZd7EzgLNDu2WVdS9yyWudex8fXf63X
	 zaWyWfvtG+w98MkroBru6dA8jOK2WemucOBwDDLYO1YGd+gsoLsekG8n1fQo2FmpoX
	 5Dltb3cezpJ9xufQu3TGQsC9uabziWoWkEyydgjIsf4Gr8+XNYSzQodGlIqZvcyVkW
	 VNActznaE/a/Z7Ty9Uzy3u4tYHWSJV/RPAo3ChyeP8LDOebtjtKeH2Tt3MIEPHgdRp
	 deZEvli9+67xw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R9jPZ6rXtBxk; Wed, 23 Aug 2023 22:22:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C9B660BC6;
	Wed, 23 Aug 2023 22:22:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C9B660BC6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B2881BF280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 22:22:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64F5C60C1C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 22:22:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64F5C60C1C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7AWc_X4KLd2g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 22:22:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4ADE160EB8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 22:22:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4ADE160EB8
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354617270"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354617270"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 15:22:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="910683316"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="910683316"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.25.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 15:22:03 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Aug 2023 15:21:50 -0700
Message-Id: <20230823222152.106-4-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230823222152.106-1-paul.m.stillwell.jr@intel.com>
References: <20230823222152.106-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692829324; x=1724365324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KTjUSIhVjT4kaPmtAiqltSVpd3Q0+OcRnxjjBdkmvo0=;
 b=UkGjfdABw9j6o50yqcZov50iCtfsGhBQ24hP3g7y2bKRqxM9Xt3aFjef
 9Xnrgiwcu3hRcXdnR9itejnVeskIdEUGer2Tn2GXgAlhm1cq4V01OtzDg
 Fwhsu1SfyRCLET5C42wxuPCnHFZXiJWglBbZIV/CQhkVNjwIOL5P7nkSb
 hvl5Fb+HducgKBUhijymPPONXSIRDaJ1c8FTqc0lmevpc3ABaP6wrlpLp
 7odYeeYGIYwOJfjZsw53sQqX5juK3lqR+isf0ixDMGcJSlc3KJw3syJ81
 kmqgohavB/3AAsLQFFFIApW0jo61XDnB6M2C5MlkQYCG5DDtidwKbkpVG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UkGjfdAB
Subject: [Intel-wired-lan] [PATCH net-next v16 3/5] ice: enable FW logging
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
by writing to the 'fwlog/enable' file. The file accepts a boolean value
(0 or 1) where 1 means enable FW logging and 0 means disable FW logging.
The user can read the 'fwlog/enable' file to see whether logging is
enabled or not. Reading the actual data is a separate patch.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
v15->v16: none
v14->v15: none
v13->v14: fixed an issue where reading the file produced an 8 instead of
a 1
v12->v13: created a new patch for the enable code
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   1 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 115 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    |  90 ++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |   3 +
 5 files changed, 212 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 8b9516e3e55e..aafcbb6f19d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2115,6 +2115,7 @@ enum ice_aqc_fw_logging_mod {
 };
 
 /* Set FW Logging configuration (indirect 0xFF30)
+ * Register for FW Logging (indirect 0xFF31)
  * Query FW Logging (indirect 0xFF32)
  */
 struct ice_aqc_fw_log {
@@ -2123,6 +2124,7 @@ struct ice_aqc_fw_log {
 #define ICE_AQC_FW_LOG_CONF_AQ_EN	BIT(1)
 #define ICE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
 #define ICE_AQC_FW_LOG_CONF_SET_VALID	BIT(3)
+#define ICE_AQC_FW_LOG_AQ_REGISTER	BIT(0)
 #define ICE_AQC_FW_LOG_AQ_QUERY		BIT(2)
 
 	u8 rsp_flag;
@@ -2416,6 +2418,7 @@ enum ice_adminq_opc {
 
 	/* FW Logging Commands */
 	ice_aqc_opc_fw_logs_config			= 0xFF30,
+	ice_aqc_opc_fw_logs_register			= 0xFF31,
 	ice_aqc_opc_fw_logs_query			= 0xFF32,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 71c665b3d930..6f12ea050d35 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1032,6 +1032,7 @@ void ice_deinit_hw(struct ice_hw *hw)
 	ice_free_hw_tbls(hw);
 	mutex_destroy(&hw->tnl_lock);
 
+	ice_fwlog_deinit(hw);
 	ice_destroy_all_ctrlq(hw);
 
 	/* Clear VSI contexts if not already cleared */
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index e354c7287ff6..104ea962adee 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -397,6 +397,118 @@ static const struct file_operations ice_debugfs_resolution_fops = {
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
+		 (u16)(hw->fwlog_cfg.options &
+		 ICE_FWLOG_OPTION_IS_REGISTERED) >> 3);
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
@@ -428,6 +540,9 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
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

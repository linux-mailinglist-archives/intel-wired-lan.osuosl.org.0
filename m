Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0012B80F4F8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 18:52:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83D7982C18;
	Tue, 12 Dec 2023 17:52:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83D7982C18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702403530;
	bh=kOQfD7XaNjs9oCUE0gbH+qbGBwMxJ6wrKA34KfssV/8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8/f+ypWzKGARLBI8cHxbpJQl4aJuxpKPPbdj+b/2RdK3mliR+h26Fu5zie6H/XsgM
	 aHOnq+pdyKIZgcUeUtLBhXpqMG41cgZrofNGuGqs+YxJHrgWoUT55Vbmbp98R/GDi5
	 KVInRu32tNEewevx4dbCsVEbvoejbrhdMxO+hV5i93lLq0pQZuWiDLWJYuOkj5AL7l
	 PZyEPzudBVanuW3KSAZTLSFDMxWwI9PquJ9ikJhrpEAE0P8ChxB/7eISmuRJvPIJL5
	 lYfQbtBEIIPWd8W/1LuLessenDlCADfJ8XHEqtDWhHD+vV6WTWGNitx+v/YIteWtI4
	 pHHsmVdPN+Etw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FgLkEl04tvE9; Tue, 12 Dec 2023 17:52:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BBF182B1E;
	Tue, 12 Dec 2023 17:52:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BBF182B1E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C5001BF429
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 17:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1110403CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 17:51:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1110403CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pNISaHKEBCGm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 17:51:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF043408A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 17:51:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF043408A1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="8214849"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; 
   d="scan'208";a="8214849"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 09:48:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="15102052"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.121.197])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 09:48:48 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Dec 2023 09:48:33 -0800
Message-Id: <20231212174835.65-4-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231212174835.65-1-paul.m.stillwell.jr@intel.com>
References: <20231212174835.65-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702403499; x=1733939499;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=miuluS9CdJZKE+TcKzO6J5FXwYzthjNEieIM9DLpFmM=;
 b=f/aRMqggRD0qAT+SlMe5eg9bkKYJU9Jg/ymOmw1K33X2IlfmVmo+JoJc
 eE6ob0YeDawq9GS1QTuyhP/kv4ygvslAHTz+uIM9s1+kvACGysfM19hTl
 8sKyTeIQOJ51t7nTFyxxK3PrDWwntpmupUiH3ErGSrNWyEp4rX9hLct/Y
 QwJez4VBbNVg/054tNM4QRo+LAkjsTe+NlO2np2+DIQtvdQ9A0RyOMpK6
 O7gjuSNkimR08IcuepDXpdfGBqckkaE1jtGwQv7q9F0FOjuT5ORZotfoY
 GcJ+q8ZyX87O+fyK6MrD9jPO/sbWwvRcaZu57jOXQQh9pXoWcMnpYCLqe
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f/aRMqgg
Subject: [Intel-wired-lan] [PATCH net-next v20 3/5] ice: enable FW logging
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
Cc: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Once users have configured the FW logging then allow them to enable it
by writing to the 'fwlog/enable' file. The file accepts a boolean value
(0 or 1) where 1 means enable FW logging and 0 means disable FW logging.

  # echo <value> > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/enable

Where <value> is 0 or 1.

The user can read the 'fwlog/enable' file to see whether logging is
enabled or not. Reading the actual data is a separate patch. To see the
current value then:

  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/enable

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 106 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    |  67 +++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |   2 +
 4 files changed, 178 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 73452333d342..82139e0ede6a 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2393,6 +2393,7 @@ enum ice_aqc_fw_logging_mod {
 };
 
 /* Set FW Logging configuration (indirect 0xFF30)
+ * Register for FW Logging (indirect 0xFF31)
  * Query FW Logging (indirect 0xFF32)
  */
 struct ice_aqc_fw_log {
@@ -2401,6 +2402,7 @@ struct ice_aqc_fw_log {
 #define ICE_AQC_FW_LOG_CONF_AQ_EN	BIT(1)
 #define ICE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
 #define ICE_AQC_FW_LOG_CONF_SET_VALID	BIT(3)
+#define ICE_AQC_FW_LOG_AQ_REGISTER	BIT(0)
 #define ICE_AQC_FW_LOG_AQ_QUERY		BIT(2)
 
 	u8 rsp_flag;
@@ -2722,6 +2724,7 @@ enum ice_adminq_opc {
 
 	/* FW Logging Commands */
 	ice_aqc_opc_fw_logs_config			= 0xFF30,
+	ice_aqc_opc_fw_logs_register			= 0xFF31,
 	ice_aqc_opc_fw_logs_query			= 0xFF32,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index 7ecce55860d0..6cc708b81f8b 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -293,6 +293,109 @@ static const struct file_operations ice_debugfs_nr_messages_fops = {
 	.write = ice_debugfs_nr_messages_write,
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
+	struct ice_hw *hw = &pf->hw;
+	char user_val[2], *cmd_buf;
+	bool enable;
+	ssize_t ret;
+
+	if (count > sizeof(user_val))
+		return -EINVAL;
+
+	/* don't allow partial writes */
+	if (*ppos != 0)
+		return 0;
+
+	cmd_buf = memdup_user(buf, count);
+	if (IS_ERR(cmd_buf))
+		return PTR_ERR(cmd_buf);
+	cmd_buf[count] = '\0';
+
+	ret = sscanf(cmd_buf, "%s", user_val);
+	if (ret != 1)
+		return -EINVAL;
+
+	ret = kstrtobool(user_val, &enable);
+	if (ret)
+		goto enable_write_error;
+
+	if (enable)
+		hw->fwlog_cfg.options |= ICE_FWLOG_OPTION_ARQ_ENA;
+	else
+		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
+
+	ret = ice_fwlog_set(hw, &hw->fwlog_cfg);
+	if (ret)
+		goto enable_write_error;
+
+	if (enable)
+		ret = ice_fwlog_register(hw);
+	else
+		ret = ice_fwlog_unregister(hw);
+
+	if (ret)
+		goto enable_write_error;
+
+	/* if we get here, nothing went wrong; return count since we didn't
+	 * really write anything
+	 */
+	ret = (ssize_t)count;
+
+enable_write_error:
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
@@ -346,6 +449,9 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
 
 	pf->ice_debugfs_pf_fwlog_modules = fw_modules;
 
+	debugfs_create_file("enable", 0600, pf->ice_debugfs_pf_fwlog,
+			    pf, &ice_debugfs_enable_fops);
+
 	return;
 
 err_create_module_files:
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 1074d6e8f263..4155b1d82b13 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -59,6 +59,11 @@ void ice_fwlog_deinit(struct ice_hw *hw)
 	kfree(pf->ice_debugfs_pf_fwlog_modules);
 
 	pf->ice_debugfs_pf_fwlog_modules = NULL;
+
+	status = ice_fwlog_unregister(hw);
+	if (status)
+		dev_warn(ice_hw_to_dev(hw), "Unable to unregister FW logging, status: %d\n",
+			 status);
 }
 
 /**
@@ -193,6 +198,8 @@ static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
 		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
 	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_UART_EN)
 		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
+	if (cmd->cmd_flags & ICE_AQC_FW_LOG_QUERY_REGISTERED)
+		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
 
 	fw_modules = (struct ice_aqc_fw_log_cfg_resp *)buf;
 
@@ -222,6 +229,66 @@ int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
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
index 8e68ee02713b..45865558425d 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -53,4 +53,6 @@ int ice_fwlog_init(struct ice_hw *hw);
 void ice_fwlog_deinit(struct ice_hw *hw);
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

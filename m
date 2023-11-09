Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EE17E6177
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 01:39:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E9B4405A0;
	Thu,  9 Nov 2023 00:39:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E9B4405A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699490349;
	bh=xhzILtAprfw+lq6gqLxis08gS7nLIOL0dN0qa2boPek=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6DSeBUz/uQDg1ZsSDc7o7lCTXl4vGY8FRb631ohDzP2RtGFsA5dGy5+oMIUQxgHLC
	 x8IMA3H6pfFkoTyvNHP5GRAlacIL2S3vDpYVZzYx+Ciy1iE5TBkOxLAQJgexQA4mZu
	 +w3gm2kfpA5GeSnYvukBtMcNBaM26fyqhQMn2ua2aT09+3LjdoaMZuSZePmbs0WQPy
	 8uRR+upVC+mUkn6s7AsUf1k79mBF8RFJ1MYzWO6hsyRXytDTZgJZW2FNsrYfoQkaRQ
	 ct3ZEYX4vQjEfW6IofJ3HEzPPtSmx91xyxs/hUM9fZ8SGXNoGTZxRspk1GlQu10+mU
	 ikQ2EDDT3KvzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yCTR9Wj8DZb7; Thu,  9 Nov 2023 00:39:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C20B4016D;
	Thu,  9 Nov 2023 00:39:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C20B4016D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4430F1BF966
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 00:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9BEF861196
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 00:38:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BEF861196
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AC_h2erjtfTp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 00:38:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D595611A7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 00:38:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D595611A7
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="392762366"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="392762366"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 16:38:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="739681870"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="739681870"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.98.242])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 16:38:40 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Nov 2023 16:38:28 -0800
Message-Id: <20231109003830.154-4-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231109003830.154-1-paul.m.stillwell.jr@intel.com>
References: <20231109003830.154-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699490331; x=1731026331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iB5ooGImTt7a2znjgh0PeMW5bCcIW0VULoqi9ikaHh8=;
 b=Mkon+Cy3L3wvEuzzZouvcCnAZC06Y9u8lh15K9I9+oUbBGycFGZl+6ce
 YWBDX05IlJQ1886IstT8CzMYFAxPHtWurKDW4WGVfSgCbNfHSE52B7K2l
 C6y9ZDzpDPbBroUtp82eOfH2UbSdcpKixIqmykJqwS92wuyHzhYlLmn1r
 g1sWYOEX6hf5dSkC0DaPCnl1f1CpZ95317D5puxVE14SRSv39YrGwJfiB
 MECZ3i0NFZoZbYJ6/BhFBHmnRC5bpmi5HYq8iXeVH2xjG1NhlsC4DZkFY
 vZl7K9AZsub9cmFse2Is55Tho7T7DeCHbcohyPjoeez/PTp5UMr7EB69X
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mkon+Cy3
Subject: [Intel-wired-lan] [PATCH net-next v17 3/5] ice: enable FW logging
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
v16->v17: commit message changes only
v15->v16: none
v14->v15: none
v13->v14: fixed an issue where reading the file produced an 8 instead of
a 1
v12->v13: created a new patch for the enable code
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 117 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    |  67 ++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |   2 +
 4 files changed, 189 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 17e5544702f5..b5d9c4e38809 100644
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
index 75731cf91274..3d1d2f24ff2f 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -389,6 +389,120 @@ static const struct file_operations ice_debugfs_nr_messages_fops = {
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
+	/* if we get here, nothing went wrong; return count since we didn't
+	 * really write anything
+	 */
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
@@ -455,6 +569,9 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
 
 	pf->ice_debugfs_pf_fwlog_modules = fw_modules;
 
+	debugfs_create_file("enable", 0600, pf->ice_debugfs_pf_fwlog,
+			    pf, &ice_debugfs_enable_fops);
+
 	return;
 
 err_create_module_files:
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 54fed6f3c308..3daedb47548d 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -58,6 +58,11 @@ void ice_fwlog_deinit(struct ice_hw *hw)
 	kfree(pf->ice_debugfs_pf_fwlog_modules);
 
 	pf->ice_debugfs_pf_fwlog_modules = NULL;
+
+	status = ice_fwlog_unregister(hw);
+	if (status)
+		dev_warn(ice_hw_to_dev(hw), "Unable to unregister FW logging, status: %d\n",
+			 status);
 }
 
 /**
@@ -192,6 +197,8 @@ static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
 		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
 	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_UART_EN)
 		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
+	if (cmd->cmd_flags & ICE_AQC_FW_LOG_QUERY_REGISTERED)
+		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
 
 	fw_modules = (struct ice_aqc_fw_log_cfg_resp *)buf;
 
@@ -224,6 +231,66 @@ int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
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

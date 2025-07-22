Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BC8B0D7BF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 13:07:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B0106F553;
	Tue, 22 Jul 2025 11:07:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2TCdhHYa-gCN; Tue, 22 Jul 2025 11:07:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C4156F555
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753182435;
	bh=5k6g4hbBhG1ZJYRAPOpOYTOCtUWW69ie2KO+xh5EuN8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=je+g8mgIjbxrHOsOj2YIG9ez49VuzQBFUUV4azvEPgSfH0LX6sQf51Q9HiETWfW+a
	 v18PB+yOHvk2AWh3PPBqHmUtjCMZiNWLndHc+zXLoRfB/NwACzTzL9ZJIchS3iVqlk
	 CytdUQvWFZMDIT8UBZ6uC63J1XLKhMzC4dW6e3jQMUVMiqSfDvEVBEimTLkNHuBywz
	 i2vJ4xm//URNa1QgnNBMSJc9ZO04Y/5Wi//mqKLDmkOHe5kuK/KKMQEw/Az0pN/FMj
	 G/HtdQuGdaOZLC9hq0LslXXOx/DojtJznzVb7ig1b9/9nlpwEn2Ce+uEjyV6fqYMkO
	 wiOLW2p9PUR+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C4156F555;
	Tue, 22 Jul 2025 11:07:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 011E7127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6F8284B46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b-Xk9FD8vrJF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 11:07:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BD9C084B78
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD9C084B78
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD9C084B78
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:12 +0000 (UTC)
X-CSE-ConnectionGUID: 4Wga6dKJRz+zaL16PnSTXQ==
X-CSE-MsgGUID: 2uZYQl7HQ52Sr4X2juy+jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="59083616"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="59083616"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:07:13 -0700
X-CSE-ConnectionGUID: y1eROG92SWOmcLVxFVeUmQ==
X-CSE-MsgGUID: pd+oVZyYTjuAC/bSgdPuOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="163153971"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa003.fm.intel.com with ESMTP; 22 Jul 2025 04:07:10 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 22 Jul 2025 12:45:54 +0200
Message-ID: <20250722104600.10141-10-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753182433; x=1784718433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P0x9N3tWjCpKfR/S4JGMJ8STELvaUvUtKwX1mrUfcJw=;
 b=jUMBl2QdPGHKoyj5tviDy2ZRxLpJ2asVGw5Z2eLpVRF4Tp6/knmmUWPq
 I8GMY8JQfekdcRWBai8hzRl0UyeLUYbxuhN0eUe2ltk/QnsOUtXEnKdrz
 B/Bm7I+217KuG46yRxyHD4r60WmQ7yzAO01RJX0r2OscH0kPfnejJtXY2
 Xb+loR1NcstYFEcGRWJXapqPlnUvozPi5QrvjUTgFnGu/7U3eR7ERf6G8
 df1puzFPm+UmqJAkYEC81Oj0NHnOebacMzk+Ia5jDwqxc41BZzTKLqWtH
 Ul7VMk+ctW/j7fHkZSrYAnLnHH6dcuquXZ1/+HNOOeyJ7+iDBy0ky8yHO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jUMBl2Qd
Subject: [Intel-wired-lan] [PATCH iwl-next v1 09/15] ice: drop driver
 specific structure from fwlog code
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

In debugfs pass ice_fwlog structure instead of ice_pf.

The debgufs dirs specific for fwlog can be stored in fwlog structure.

Add debugfs entry point to fwlog api.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |   5 +-
 drivers/net/ethernet/intel/ice/ice_common.c  |   6 +-
 drivers/net/ethernet/intel/ice/ice_debugfs.c | 128 +++++++++----------
 drivers/net/ethernet/intel/ice/ice_fwlog.c   |  14 +-
 drivers/net/ethernet/intel/ice/ice_fwlog.h   |   9 +-
 5 files changed, 74 insertions(+), 88 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ee2ae0cbc25e..9ed4197ee7bc 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -568,9 +568,6 @@ struct ice_pf {
 	struct ice_sw *first_sw;	/* first switch created by firmware */
 	u16 eswitch_mode;		/* current mode of eswitch */
 	struct dentry *ice_debugfs_pf;
-	struct dentry *ice_debugfs_pf_fwlog;
-	/* keep track of all the dentrys for FW log modules */
-	struct dentry **ice_debugfs_pf_fwlog_modules;
 	struct ice_vfs vfs;
 	DECLARE_BITMAP(features, ICE_F_MAX);
 	DECLARE_BITMAP(state, ICE_STATE_NBITS);
@@ -908,7 +905,7 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
 	return false;
 }
 
-void ice_debugfs_fwlog_init(struct ice_pf *pf);
+void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry *root);
 int ice_debugfs_pf_init(struct ice_pf *pf);
 void ice_debugfs_pf_deinit(struct ice_pf *pf);
 void ice_debugfs_init(void);
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 2666e59b0786..5a365f65c0e3 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1010,7 +1010,9 @@ static int __fwlog_init(struct ice_hw *hw)
 	if (err)
 		return err;
 
-	return ice_fwlog_init(hw, &hw->fwlog, &api);
+	api.debugfs_root = pf->ice_debugfs_pf;
+
+	return ice_fwlog_init(&hw->fwlog, &api);
 }
 
 /**
@@ -1195,7 +1197,7 @@ static void __fwlog_deinit(struct ice_hw *hw)
 		return;
 
 	ice_debugfs_pf_deinit(hw->back);
-	ice_fwlog_deinit(hw, &hw->fwlog);
+	ice_fwlog_deinit(&hw->fwlog);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index e5b63b6bd44d..c0258302d5d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -74,14 +74,14 @@ static const char * const ice_fwlog_log_size[] = {
 
 /**
  * ice_fwlog_print_module_cfg - print current FW logging module configuration
- * @hw: pointer to the HW structure
+ * @cfg: pointer to the fwlog cfg structure
  * @module: module to print
  * @s: the seq file to put data into
  */
 static void
-ice_fwlog_print_module_cfg(struct ice_hw *hw, int module, struct seq_file *s)
+ice_fwlog_print_module_cfg(struct ice_fwlog_cfg *cfg, int module,
+			   struct seq_file *s)
 {
-	struct ice_fwlog_cfg *cfg = &hw->fwlog.cfg;
 	struct ice_fwlog_module_entry *entry;
 
 	if (module != ICE_AQC_FW_LOG_ID_MAX) {
@@ -103,14 +103,14 @@ ice_fwlog_print_module_cfg(struct ice_hw *hw, int module, struct seq_file *s)
 	}
 }
 
-static int ice_find_module_by_dentry(struct ice_pf *pf, struct dentry *d)
+static int ice_find_module_by_dentry(struct dentry **modules, struct dentry *d)
 {
 	int i, module;
 
 	module = -1;
 	/* find the module based on the dentry */
 	for (i = 0; i < ICE_NR_FW_LOG_MODULES; i++) {
-		if (d == pf->ice_debugfs_pf_fwlog_modules[i]) {
+		if (d == modules[i]) {
 			module = i;
 			break;
 		}
@@ -126,21 +126,20 @@ static int ice_find_module_by_dentry(struct ice_pf *pf, struct dentry *d)
  */
 static int ice_debugfs_module_show(struct seq_file *s, void *v)
 {
+	struct ice_fwlog *fwlog = s->private;
 	const struct file *filp = s->file;
 	struct dentry *dentry;
-	struct ice_pf *pf;
 	int module;
 
 	dentry = file_dentry(filp);
-	pf = s->private;
 
-	module = ice_find_module_by_dentry(pf, dentry);
+	module = ice_find_module_by_dentry(fwlog->debugfs_modules, dentry);
 	if (module < 0) {
-		dev_info(ice_pf_to_dev(pf), "unknown module\n");
+		dev_info(&fwlog->pdev->dev, "unknown module\n");
 		return -EINVAL;
 	}
 
-	ice_fwlog_print_module_cfg(&pf->hw, module, s);
+	ice_fwlog_print_module_cfg(&fwlog->cfg, module, s);
 
 	return 0;
 }
@@ -161,10 +160,9 @@ static ssize_t
 ice_debugfs_module_write(struct file *filp, const char __user *buf,
 			 size_t count, loff_t *ppos)
 {
-	struct ice_pf *pf = file_inode(filp)->i_private;
+	struct ice_fwlog *fwlog = file_inode(filp)->i_private;
 	struct dentry *dentry = file_dentry(filp);
-	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_hw *hw = &pf->hw;
+	struct device *dev = &fwlog->pdev->dev;
 	char user_val[16], *cmd_buf;
 	int module, log_level, cnt;
 
@@ -176,7 +174,7 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
 	if (IS_ERR(cmd_buf))
 		return PTR_ERR(cmd_buf);
 
-	module = ice_find_module_by_dentry(pf, dentry);
+	module = ice_find_module_by_dentry(fwlog->debugfs_modules, dentry);
 	if (module < 0) {
 		dev_info(dev, "unknown module\n");
 		return -EINVAL;
@@ -193,7 +191,7 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
 	}
 
 	if (module != ICE_AQC_FW_LOG_ID_MAX) {
-		hw->fwlog.cfg.module_entries[module].log_level = log_level;
+		fwlog->cfg.module_entries[module].log_level = log_level;
 	} else {
 		/* the module 'all' is a shortcut so that we can set
 		 * all of the modules to the same level quickly
@@ -201,7 +199,7 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
 		int i;
 
 		for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++)
-			hw->fwlog.cfg.module_entries[i].log_level = log_level;
+			fwlog->cfg.module_entries[i].log_level = log_level;
 	}
 
 	return count;
@@ -226,12 +224,11 @@ static ssize_t ice_debugfs_nr_messages_read(struct file *filp,
 					    char __user *buffer, size_t count,
 					    loff_t *ppos)
 {
-	struct ice_pf *pf = filp->private_data;
-	struct ice_hw *hw = &pf->hw;
+	struct ice_fwlog *fwlog = filp->private_data;
 	char buff[32] = {};
 
 	snprintf(buff, sizeof(buff), "%d\n",
-		 hw->fwlog.cfg.log_resolution);
+		 fwlog->cfg.log_resolution);
 
 	return simple_read_from_buffer(buffer, count, ppos, buff, strlen(buff));
 }
@@ -247,9 +244,8 @@ static ssize_t
 ice_debugfs_nr_messages_write(struct file *filp, const char __user *buf,
 			      size_t count, loff_t *ppos)
 {
-	struct ice_pf *pf = filp->private_data;
-	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_hw *hw = &pf->hw;
+	struct ice_fwlog *fwlog = filp->private_data;
+	struct device *dev = &fwlog->pdev->dev;
 	char user_val[8], *cmd_buf;
 	s16 nr_messages;
 	ssize_t ret;
@@ -278,7 +274,7 @@ ice_debugfs_nr_messages_write(struct file *filp, const char __user *buf,
 		return -EINVAL;
 	}
 
-	hw->fwlog.cfg.log_resolution = nr_messages;
+	fwlog->cfg.log_resolution = nr_messages;
 
 	return count;
 }
@@ -301,12 +297,11 @@ static ssize_t ice_debugfs_enable_read(struct file *filp,
 				       char __user *buffer, size_t count,
 				       loff_t *ppos)
 {
-	struct ice_pf *pf = filp->private_data;
-	struct ice_hw *hw = &pf->hw;
+	struct ice_fwlog *fwlog = filp->private_data;
 	char buff[32] = {};
 
 	snprintf(buff, sizeof(buff), "%u\n",
-		 (u16)(hw->fwlog.cfg.options &
+		 (u16)(fwlog->cfg.options &
 		 ICE_FWLOG_OPTION_IS_REGISTERED) >> 3);
 
 	return simple_read_from_buffer(buffer, count, ppos, buff, strlen(buff));
@@ -323,8 +318,7 @@ static ssize_t
 ice_debugfs_enable_write(struct file *filp, const char __user *buf,
 			 size_t count, loff_t *ppos)
 {
-	struct ice_pf *pf = filp->private_data;
-	struct ice_hw *hw = &pf->hw;
+	struct ice_fwlog *fwlog = filp->private_data;
 	char user_val[8], *cmd_buf;
 	bool enable;
 	ssize_t ret;
@@ -346,18 +340,18 @@ ice_debugfs_enable_write(struct file *filp, const char __user *buf,
 		goto enable_write_error;
 
 	if (enable)
-		hw->fwlog.cfg.options |= ICE_FWLOG_OPTION_ARQ_ENA;
+		fwlog->cfg.options |= ICE_FWLOG_OPTION_ARQ_ENA;
 	else
-		hw->fwlog.cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
+		fwlog->cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
 
-	ret = ice_fwlog_set(&hw->fwlog, &hw->fwlog.cfg);
+	ret = ice_fwlog_set(fwlog, &fwlog->cfg);
 	if (ret)
 		goto enable_write_error;
 
 	if (enable)
-		ret = ice_fwlog_register(&hw->fwlog);
+		ret = ice_fwlog_register(fwlog);
 	else
-		ret = ice_fwlog_unregister(&hw->fwlog);
+		ret = ice_fwlog_unregister(fwlog);
 
 	if (ret)
 		goto enable_write_error;
@@ -396,12 +390,11 @@ static ssize_t ice_debugfs_log_size_read(struct file *filp,
 					 char __user *buffer, size_t count,
 					 loff_t *ppos)
 {
-	struct ice_pf *pf = filp->private_data;
-	struct ice_hw *hw = &pf->hw;
+	struct ice_fwlog *fwlog = filp->private_data;
 	char buff[32] = {};
 	int index;
 
-	index = hw->fwlog.ring.index;
+	index = fwlog->ring.index;
 	snprintf(buff, sizeof(buff), "%s\n", ice_fwlog_log_size[index]);
 
 	return simple_read_from_buffer(buffer, count, ppos, buff, strlen(buff));
@@ -418,9 +411,8 @@ static ssize_t
 ice_debugfs_log_size_write(struct file *filp, const char __user *buf,
 			   size_t count, loff_t *ppos)
 {
-	struct ice_pf *pf = filp->private_data;
-	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_hw *hw = &pf->hw;
+	struct ice_fwlog *fwlog = filp->private_data;
+	struct device *dev = &fwlog->pdev->dev;
 	char user_val[8], *cmd_buf;
 	ssize_t ret;
 	int index;
@@ -443,14 +435,14 @@ ice_debugfs_log_size_write(struct file *filp, const char __user *buf,
 			 user_val);
 		ret = -EINVAL;
 		goto log_size_write_error;
-	} else if (hw->fwlog.cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
+	} else if (fwlog->cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
 		dev_info(dev, "FW logging is currently running. Please disable FW logging to change log_size\n");
 		ret = -EINVAL;
 		goto log_size_write_error;
 	}
 
 	/* free all the buffers and the tracking info and resize */
-	ice_fwlog_realloc_rings(&hw->fwlog, index);
+	ice_fwlog_realloc_rings(fwlog, index);
 
 	/* if we get here, nothing went wrong; return count since we didn't
 	 * really write anything
@@ -485,19 +477,18 @@ static const struct file_operations ice_debugfs_log_size_fops = {
 static ssize_t ice_debugfs_data_read(struct file *filp, char __user *buffer,
 				     size_t count, loff_t *ppos)
 {
-	struct ice_pf *pf = filp->private_data;
-	struct ice_hw *hw = &pf->hw;
+	struct ice_fwlog *fwlog = filp->private_data;
 	int data_copied = 0;
 	bool done = false;
 
-	if (ice_fwlog_ring_empty(&hw->fwlog.ring))
+	if (ice_fwlog_ring_empty(&fwlog->ring))
 		return 0;
 
-	while (!ice_fwlog_ring_empty(&hw->fwlog.ring) && !done) {
+	while (!ice_fwlog_ring_empty(&fwlog->ring) && !done) {
 		struct ice_fwlog_data *log;
 		u16 cur_buf_len;
 
-		log = &hw->fwlog.ring.rings[hw->fwlog.ring.head];
+		log = &fwlog->ring.rings[fwlog->ring.head];
 		cur_buf_len = log->data_size;
 		if (cur_buf_len >= count) {
 			done = true;
@@ -516,8 +507,7 @@ static ssize_t ice_debugfs_data_read(struct file *filp, char __user *buffer,
 		buffer += cur_buf_len;
 		count -= cur_buf_len;
 		*ppos += cur_buf_len;
-		ice_fwlog_ring_increment(&hw->fwlog.ring.head,
-					 hw->fwlog.ring.size);
+		ice_fwlog_ring_increment(&fwlog->ring.head, fwlog->ring.size);
 	}
 
 	return data_copied;
@@ -534,9 +524,8 @@ static ssize_t
 ice_debugfs_data_write(struct file *filp, const char __user *buf, size_t count,
 		       loff_t *ppos)
 {
-	struct ice_pf *pf = filp->private_data;
-	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_hw *hw = &pf->hw;
+	struct ice_fwlog *fwlog = filp->private_data;
+	struct device *dev = &fwlog->pdev->dev;
 	ssize_t ret;
 
 	/* don't allow partial writes */
@@ -546,9 +535,9 @@ ice_debugfs_data_write(struct file *filp, const char __user *buf, size_t count,
 	/* any value is allowed to clear the buffer so no need to even look at
 	 * what the value is
 	 */
-	if (!(hw->fwlog.cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED)) {
-		hw->fwlog.ring.head = 0;
-		hw->fwlog.ring.tail = 0;
+	if (!(fwlog->cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED)) {
+		fwlog->ring.head = 0;
+		fwlog->ring.tail = 0;
 	} else {
 		dev_info(dev, "Can't clear FW log data while FW log running\n");
 		ret = -EINVAL;
@@ -580,9 +569,10 @@ static const struct file_operations ice_debugfs_data_fops = {
 
 /**
  * ice_debugfs_fwlog_init - setup the debugfs directory
- * @pf: the ice that is starting up
+ * @fwlog: pointer to the fwlog structure
+ * @root: debugfs root entry on which fwlog director will be registered
  */
-void ice_debugfs_fwlog_init(struct ice_pf *pf)
+void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry *root)
 {
 	struct dentry *fw_modules_dir;
 	struct dentry **fw_modules;
@@ -598,41 +588,39 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
 
 	pf->ice_debugfs_pf_fwlog = debugfs_create_dir("fwlog",
 						      pf->ice_debugfs_pf);
-	if (IS_ERR(pf->ice_debugfs_pf_fwlog))
+	if (IS_ERR(fwlog->debugfs))
 		goto err_create_module_files;
 
-	fw_modules_dir = debugfs_create_dir("modules",
-					    pf->ice_debugfs_pf_fwlog);
+	fw_modules_dir = debugfs_create_dir("modules", fwlog->debugfs);
 	if (IS_ERR(fw_modules_dir))
 		goto err_create_module_files;
 
 	for (i = 0; i < ICE_NR_FW_LOG_MODULES; i++) {
 		fw_modules[i] = debugfs_create_file(ice_fwlog_module_string[i],
-						    0600, fw_modules_dir, pf,
+						    0600, fw_modules_dir, fwlog,
 						    &ice_debugfs_module_fops);
 		if (IS_ERR(fw_modules[i]))
 			goto err_create_module_files;
 	}
 
-	debugfs_create_file("nr_messages", 0600,
-			    pf->ice_debugfs_pf_fwlog, pf,
+	debugfs_create_file("nr_messages", 0600, fwlog->debugfs, fwlog,
 			    &ice_debugfs_nr_messages_fops);
 
-	pf->ice_debugfs_pf_fwlog_modules = fw_modules;
+	fwlog->debugfs_modules = fw_modules;
 
-	debugfs_create_file("enable", 0600, pf->ice_debugfs_pf_fwlog,
-			    pf, &ice_debugfs_enable_fops);
+	debugfs_create_file("enable", 0600, fwlog->debugfs, fwlog,
+			    &ice_debugfs_enable_fops);
 
-	debugfs_create_file("log_size", 0600, pf->ice_debugfs_pf_fwlog,
-			    pf, &ice_debugfs_log_size_fops);
+	debugfs_create_file("log_size", 0600, fwlog->debugfs, fwlog,
+			    &ice_debugfs_log_size_fops);
 
-	debugfs_create_file("data", 0600, pf->ice_debugfs_pf_fwlog,
-			    pf, &ice_debugfs_data_fops);
+	debugfs_create_file("data", 0600, fwlog->debugfs, fwlog,
+			    &ice_debugfs_data_fops);
 
 	return;
 
 err_create_module_files:
-	debugfs_remove_recursive(pf->ice_debugfs_pf_fwlog);
+	debugfs_remove_recursive(fwlog->debugfs);
 	kfree(fw_modules);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 634e3de3ae66..8a1fede98865 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -232,15 +232,13 @@ static void ice_fwlog_set_supported(struct ice_fwlog *fwlog)
 
 /**
  * ice_fwlog_init - Initialize FW logging configuration
- * @hw: pointer to the HW structure
  * @fwlog: pointer to the fwlog structure
  * @api: api structure to init fwlog
  *
  * This function should be called on driver initialization during
  * ice_init_hw().
  */
-int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
-		   struct ice_fwlog_api *api)
+int ice_fwlog_init(struct ice_fwlog *fwlog, struct ice_fwlog_api *api)
 {
 
 	fwlog->api = *api;
@@ -273,7 +271,7 @@ int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
 			return status;
 		}
 
-		ice_debugfs_fwlog_init(hw->back);
+		ice_debugfs_fwlog_init(fwlog, api->debugfs_root);
 	} else {
 		dev_warn(&fwlog->pdev->dev, "FW logging is not supported in this NVM image. Please update the NVM to get FW log support\n");
 	}
@@ -283,14 +281,12 @@ int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
 
 /**
  * ice_fwlog_deinit - unroll FW logging configuration
- * @hw: pointer to the HW structure
  * @fwlog: pointer to the fwlog structure
  *
  * This function should be called in ice_deinit_hw().
  */
-void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog)
+void ice_fwlog_deinit(struct ice_fwlog *fwlog)
 {
-	struct ice_pf *pf = hw->back;
 	int status;
 
 	/* make sure FW logging is disabled to not put the FW in a weird state
@@ -302,9 +298,9 @@ void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog)
 		dev_warn(&fwlog->pdev->dev, "Unable to turn off FW logging, status: %d\n",
 			 status);
 
-	kfree(pf->ice_debugfs_pf_fwlog_modules);
+	kfree(fwlog->debugfs_modules);
 
-	pf->ice_debugfs_pf_fwlog_modules = NULL;
+	fwlog->debugfs_modules = NULL;
 
 	status = ice_fwlog_unregister(fwlog);
 	if (status)
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
index fe4b2ce6813f..22585ea9ec93 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -68,18 +68,21 @@ struct ice_fwlog {
 	struct ice_fwlog_cfg cfg;
 	bool supported; /* does hardware support FW logging? */
 	struct ice_fwlog_ring ring;
+	struct dentry *debugfs;
+	/* keep track of all the dentrys for FW log modules */
+	struct dentry **debugfs_modules;
 	struct_group_tagged(ice_fwlog_api, api,
 		struct pci_dev *pdev;
 		int (*send_cmd)(void *, struct libie_aq_desc *, void *, u16);
 		void *priv;
+		struct dentry *debugfs_root;
 	);
 };
 
 bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings);
 void ice_fwlog_ring_increment(u16 *item, u16 size);
-int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
-		   struct ice_fwlog_api *api);
-void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog);
+int ice_fwlog_init(struct ice_fwlog *fwlog, struct ice_fwlog_api *api);
+void ice_fwlog_deinit(struct ice_fwlog *fwlog);
 int ice_fwlog_set(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg);
 int ice_fwlog_register(struct ice_fwlog *fwlog);
 int ice_fwlog_unregister(struct ice_fwlog *fwlog);
-- 
2.49.0


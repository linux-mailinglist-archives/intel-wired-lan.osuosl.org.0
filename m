Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56516B21C69
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 06:54:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B53741E2F;
	Tue, 12 Aug 2025 04:54:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6s2exL9pGGzx; Tue, 12 Aug 2025 04:54:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3788541E08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754974468;
	bh=56/8qV1OQBvcPu7PBRjzbQmXj1XepKdzVryakGQJtE4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q6QXPhp15C2kpN/sro/iuHfuA7RL2CH2NpkqWlsorScune/igvJ6Q6Wh5LcRyPPmh
	 UtT268vvnt80unMnKSziKa/e5nRw/W15ThbdDfXEq1aUAd9jQbA00wzcUqZuRvv+MD
	 QD7OYz4S77NkHVDd+liIQyXFJ8aEFWkoweuX1/Kc86P3lJMH/LtNVKfjztUpP0Lmlq
	 HyhwpWDBmWA44t+4LF5sI/khVRLVVYOCfwkYgZWHtdWfJF2BimLt3Wu1bYquZmRqxf
	 UU4YlMNzeT0kT8GI8WJMYs5SJ7oePoJUGknYmvWQyslRPRluWnldCs+Ck06uvSv3in
	 B+yOcVrB5vN8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3788541E08;
	Tue, 12 Aug 2025 04:54:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E1D5E158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C7F6B827DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lBVCDUhZRwdW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 04:54:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 05F6E82778
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05F6E82778
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05F6E82778
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:23 +0000 (UTC)
X-CSE-ConnectionGUID: 4U2M2kXAT3y1qZEDERaJvw==
X-CSE-MsgGUID: +RRb6cVOQwadXW6DRpN1oQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68612769"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68612769"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:47:16 -0700
X-CSE-ConnectionGUID: bMxGuGSeSrGqUXMq+oCRZQ==
X-CSE-MsgGUID: naSn5xtXSCWXQbBjJaocRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165327915"
Received: from unknown (HELO os-delivery.igk.intel.com) ([10.102.21.165])
 by orviesa010.jf.intel.com with ESMTP; 11 Aug 2025 21:47:14 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, horms@kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 12 Aug 2025 06:23:32 +0200
Message-ID: <20250812042337.1356907-12-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754974464; x=1786510464;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SHlKboKBI+Xs6N7LsQSaWLVnICVMPSzw4mthJhJD/RM=;
 b=G+Dip4+i365QCCv+YnrYnp6ND6a7BFRMesev6+SDBdqtrSVimjmLsny5
 5JTb562Ge/o+KdRHcy/Lt7favvmLYaiAytwGYOBha3N+cXn5ajlkcZVjD
 fusoPHzriyQAnd6llNaQ4mRXrneKCaOzAEDPiMdUGa9XuaHPxdHENzzaL
 8C4h4u1THh41V/vmkvgdEScA1QQFKWMpwWM7pOYoGlP/HfL9kN0iHDK69
 oUwbx9pYrLMLBgmzF7SZRgolsHAURTBFh8iH0TE8ZeWB5TVU3qJfYHxd0
 swrzp6MHENJk7Og8UmBjZjB13iyHv6+fh1HB0P0TvwMFMDtRUtfHyRXWi
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G+Dip4+i
Subject: [Intel-wired-lan] [PATCH iwl-next v2 11/15] ice: move debugfs code
 to fwlog
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

This code is only used in fwlog. Moved it there for easier lib creation.
There is a circular dependency between debugfs and fwlog. Moving to one
file is fixing it.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |   1 -
 drivers/net/ethernet/intel/ice/ice_debugfs.c | 618 ------------------
 drivers/net/ethernet/intel/ice/ice_fwlog.c   | 652 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.h   |   3 -
 4 files changed, 635 insertions(+), 639 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 9ed4197ee7bc..d35eb6404524 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -905,7 +905,6 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
 	return false;
 }
 
-void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry *root);
 int ice_debugfs_pf_init(struct ice_pf *pf);
 void ice_debugfs_pf_deinit(struct ice_pf *pf);
 void ice_debugfs_init(void);
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index 0e31be26a82c..f3f6bcb752b3 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -1,629 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2022, Intel Corporation. */
 
-#include <linux/fs.h>
 #include <linux/debugfs.h>
-#include <linux/random.h>
-#include <linux/vmalloc.h>
 #include "ice.h"
 
 static struct dentry *ice_debugfs_root;
 
-/* create a define that has an extra module that doesn't really exist. this
- * is so we can add a module 'all' to easily enable/disable all the modules
- */
-#define ICE_NR_FW_LOG_MODULES (LIBIE_AQC_FW_LOG_ID_MAX + 1)
-
-/* the ordering in this array is important. it matches the ordering of the
- * values in the FW so the index is the same value as in
- * libie_aqc_fw_logging_mod
- */
-static const char * const ice_fwlog_module_string[] = {
-	"general",
-	"ctrl",
-	"link",
-	"link_topo",
-	"dnl",
-	"i2c",
-	"sdp",
-	"mdio",
-	"adminq",
-	"hdma",
-	"lldp",
-	"dcbx",
-	"dcb",
-	"xlr",
-	"nvm",
-	"auth",
-	"vpd",
-	"iosf",
-	"parser",
-	"sw",
-	"scheduler",
-	"txq",
-	"rsvd",
-	"post",
-	"watchdog",
-	"task_dispatch",
-	"mng",
-	"synce",
-	"health",
-	"tsdrv",
-	"pfreg",
-	"mdlver",
-	"all",
-};
-
-/* the ordering in this array is important. it matches the ordering of the
- * values in the FW so the index is the same value as in ice_fwlog_level
- */
-static const char * const ice_fwlog_level_string[] = {
-	"none",
-	"error",
-	"warning",
-	"normal",
-	"verbose",
-};
-
-static const char * const ice_fwlog_log_size[] = {
-	"128K",
-	"256K",
-	"512K",
-	"1M",
-	"2M",
-};
-
-/**
- * ice_fwlog_print_module_cfg - print current FW logging module configuration
- * @cfg: pointer to the fwlog cfg structure
- * @module: module to print
- * @s: the seq file to put data into
- */
-static void
-ice_fwlog_print_module_cfg(struct ice_fwlog_cfg *cfg, int module,
-			   struct seq_file *s)
-{
-	struct ice_fwlog_module_entry *entry;
-
-	if (module != LIBIE_AQC_FW_LOG_ID_MAX) {
-		entry =	&cfg->module_entries[module];
-
-		seq_printf(s, "\tModule: %s, Log Level: %s\n",
-			   ice_fwlog_module_string[entry->module_id],
-			   ice_fwlog_level_string[entry->log_level]);
-	} else {
-		int i;
-
-		for (i = 0; i < LIBIE_AQC_FW_LOG_ID_MAX; i++) {
-			entry =	&cfg->module_entries[i];
-
-			seq_printf(s, "\tModule: %s, Log Level: %s\n",
-				   ice_fwlog_module_string[entry->module_id],
-				   ice_fwlog_level_string[entry->log_level]);
-		}
-	}
-}
-
-static int ice_find_module_by_dentry(struct dentry **modules, struct dentry *d)
-{
-	int i, module;
-
-	module = -1;
-	/* find the module based on the dentry */
-	for (i = 0; i < ICE_NR_FW_LOG_MODULES; i++) {
-		if (d == modules[i]) {
-			module = i;
-			break;
-		}
-	}
-
-	return module;
-}
-
-/**
- * ice_debugfs_module_show - read from 'module' file
- * @s: the opened file
- * @v: pointer to the offset
- */
-static int ice_debugfs_module_show(struct seq_file *s, void *v)
-{
-	struct ice_fwlog *fwlog = s->private;
-	const struct file *filp = s->file;
-	struct dentry *dentry;
-	int module;
-
-	dentry = file_dentry(filp);
-
-	module = ice_find_module_by_dentry(fwlog->debugfs_modules, dentry);
-	if (module < 0) {
-		dev_info(&fwlog->pdev->dev, "unknown module\n");
-		return -EINVAL;
-	}
-
-	ice_fwlog_print_module_cfg(&fwlog->cfg, module, s);
-
-	return 0;
-}
-
-static int ice_debugfs_module_open(struct inode *inode, struct file *filp)
-{
-	return single_open(filp, ice_debugfs_module_show, inode->i_private);
-}
-
-/**
- * ice_debugfs_module_write - write into 'module' file
- * @filp: the opened file
- * @buf: where to find the user's data
- * @count: the length of the user's data
- * @ppos: file position offset
- */
-static ssize_t
-ice_debugfs_module_write(struct file *filp, const char __user *buf,
-			 size_t count, loff_t *ppos)
-{
-	struct ice_fwlog *fwlog = file_inode(filp)->i_private;
-	struct dentry *dentry = file_dentry(filp);
-	struct device *dev = &fwlog->pdev->dev;
-	char user_val[16], *cmd_buf;
-	int module, log_level, cnt;
-
-	/* don't allow partial writes or invalid input */
-	if (*ppos != 0 || count > 8)
-		return -EINVAL;
-
-	cmd_buf = memdup_user_nul(buf, count);
-	if (IS_ERR(cmd_buf))
-		return PTR_ERR(cmd_buf);
-
-	module = ice_find_module_by_dentry(fwlog->debugfs_modules, dentry);
-	if (module < 0) {
-		dev_info(dev, "unknown module\n");
-		return -EINVAL;
-	}
-
-	cnt = sscanf(cmd_buf, "%s", user_val);
-	if (cnt != 1)
-		return -EINVAL;
-
-	log_level = sysfs_match_string(ice_fwlog_level_string, user_val);
-	if (log_level < 0) {
-		dev_info(dev, "unknown log level '%s'\n", user_val);
-		return -EINVAL;
-	}
-
-	if (module != LIBIE_AQC_FW_LOG_ID_MAX) {
-		fwlog->cfg.module_entries[module].log_level = log_level;
-	} else {
-		/* the module 'all' is a shortcut so that we can set
-		 * all of the modules to the same level quickly
-		 */
-		int i;
-
-		for (i = 0; i < LIBIE_AQC_FW_LOG_ID_MAX; i++)
-			fwlog->cfg.module_entries[i].log_level = log_level;
-	}
-
-	return count;
-}
-
-static const struct file_operations ice_debugfs_module_fops = {
-	.owner = THIS_MODULE,
-	.open  = ice_debugfs_module_open,
-	.read = seq_read,
-	.release = single_release,
-	.write = ice_debugfs_module_write,
-};
-
-/**
- * ice_debugfs_nr_messages_read - read from 'nr_messages' file
- * @filp: the opened file
- * @buffer: where to write the data for the user to read
- * @count: the size of the user's buffer
- * @ppos: file position offset
- */
-static ssize_t ice_debugfs_nr_messages_read(struct file *filp,
-					    char __user *buffer, size_t count,
-					    loff_t *ppos)
-{
-	struct ice_fwlog *fwlog = filp->private_data;
-	char buff[32] = {};
-
-	snprintf(buff, sizeof(buff), "%d\n",
-		 fwlog->cfg.log_resolution);
-
-	return simple_read_from_buffer(buffer, count, ppos, buff, strlen(buff));
-}
-
-/**
- * ice_debugfs_nr_messages_write - write into 'nr_messages' file
- * @filp: the opened file
- * @buf: where to find the user's data
- * @count: the length of the user's data
- * @ppos: file position offset
- */
-static ssize_t
-ice_debugfs_nr_messages_write(struct file *filp, const char __user *buf,
-			      size_t count, loff_t *ppos)
-{
-	struct ice_fwlog *fwlog = filp->private_data;
-	struct device *dev = &fwlog->pdev->dev;
-	char user_val[8], *cmd_buf;
-	s16 nr_messages;
-	ssize_t ret;
-
-	/* don't allow partial writes or invalid input */
-	if (*ppos != 0 || count > 4)
-		return -EINVAL;
-
-	cmd_buf = memdup_user_nul(buf, count);
-	if (IS_ERR(cmd_buf))
-		return PTR_ERR(cmd_buf);
-
-	ret = sscanf(cmd_buf, "%s", user_val);
-	if (ret != 1)
-		return -EINVAL;
-
-	ret = kstrtos16(user_val, 0, &nr_messages);
-	if (ret)
-		return ret;
-
-	if (nr_messages < LIBIE_AQC_FW_LOG_MIN_RESOLUTION ||
-	    nr_messages > LIBIE_AQC_FW_LOG_MAX_RESOLUTION) {
-		dev_err(dev, "Invalid FW log number of messages %d, value must be between %d - %d\n",
-			nr_messages, LIBIE_AQC_FW_LOG_MIN_RESOLUTION,
-			LIBIE_AQC_FW_LOG_MAX_RESOLUTION);
-		return -EINVAL;
-	}
-
-	fwlog->cfg.log_resolution = nr_messages;
-
-	return count;
-}
-
-static const struct file_operations ice_debugfs_nr_messages_fops = {
-	.owner = THIS_MODULE,
-	.open  = simple_open,
-	.read = ice_debugfs_nr_messages_read,
-	.write = ice_debugfs_nr_messages_write,
-};
-
-/**
- * ice_debugfs_enable_read - read from 'enable' file
- * @filp: the opened file
- * @buffer: where to write the data for the user to read
- * @count: the size of the user's buffer
- * @ppos: file position offset
- */
-static ssize_t ice_debugfs_enable_read(struct file *filp,
-				       char __user *buffer, size_t count,
-				       loff_t *ppos)
-{
-	struct ice_fwlog *fwlog = filp->private_data;
-	char buff[32] = {};
-
-	snprintf(buff, sizeof(buff), "%u\n",
-		 (u16)(fwlog->cfg.options &
-		 ICE_FWLOG_OPTION_IS_REGISTERED) >> 3);
-
-	return simple_read_from_buffer(buffer, count, ppos, buff, strlen(buff));
-}
-
-/**
- * ice_debugfs_enable_write - write into 'enable' file
- * @filp: the opened file
- * @buf: where to find the user's data
- * @count: the length of the user's data
- * @ppos: file position offset
- */
-static ssize_t
-ice_debugfs_enable_write(struct file *filp, const char __user *buf,
-			 size_t count, loff_t *ppos)
-{
-	struct ice_fwlog *fwlog = filp->private_data;
-	char user_val[8], *cmd_buf;
-	bool enable;
-	ssize_t ret;
-
-	/* don't allow partial writes or invalid input */
-	if (*ppos != 0 || count > 2)
-		return -EINVAL;
-
-	cmd_buf = memdup_user_nul(buf, count);
-	if (IS_ERR(cmd_buf))
-		return PTR_ERR(cmd_buf);
-
-	ret = sscanf(cmd_buf, "%s", user_val);
-	if (ret != 1)
-		return -EINVAL;
-
-	ret = kstrtobool(user_val, &enable);
-	if (ret)
-		goto enable_write_error;
-
-	if (enable)
-		fwlog->cfg.options |= ICE_FWLOG_OPTION_ARQ_ENA;
-	else
-		fwlog->cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
-
-	ret = ice_fwlog_set(fwlog, &fwlog->cfg);
-	if (ret)
-		goto enable_write_error;
-
-	if (enable)
-		ret = ice_fwlog_register(fwlog);
-	else
-		ret = ice_fwlog_unregister(fwlog);
-
-	if (ret)
-		goto enable_write_error;
-
-	/* if we get here, nothing went wrong; return count since we didn't
-	 * really write anything
-	 */
-	ret = (ssize_t)count;
-
-enable_write_error:
-	/* This function always consumes all of the written input, or produces
-	 * an error. Check and enforce this. Otherwise, the write operation
-	 * won't complete properly.
-	 */
-	if (WARN_ON(ret != (ssize_t)count && ret >= 0))
-		ret = -EIO;
-
-	return ret;
-}
-
-static const struct file_operations ice_debugfs_enable_fops = {
-	.owner = THIS_MODULE,
-	.open  = simple_open,
-	.read = ice_debugfs_enable_read,
-	.write = ice_debugfs_enable_write,
-};
-
-/**
- * ice_debugfs_log_size_read - read from 'log_size' file
- * @filp: the opened file
- * @buffer: where to write the data for the user to read
- * @count: the size of the user's buffer
- * @ppos: file position offset
- */
-static ssize_t ice_debugfs_log_size_read(struct file *filp,
-					 char __user *buffer, size_t count,
-					 loff_t *ppos)
-{
-	struct ice_fwlog *fwlog = filp->private_data;
-	char buff[32] = {};
-	int index;
-
-	index = fwlog->ring.index;
-	snprintf(buff, sizeof(buff), "%s\n", ice_fwlog_log_size[index]);
-
-	return simple_read_from_buffer(buffer, count, ppos, buff, strlen(buff));
-}
-
-/**
- * ice_debugfs_log_size_write - write into 'log_size' file
- * @filp: the opened file
- * @buf: where to find the user's data
- * @count: the length of the user's data
- * @ppos: file position offset
- */
-static ssize_t
-ice_debugfs_log_size_write(struct file *filp, const char __user *buf,
-			   size_t count, loff_t *ppos)
-{
-	struct ice_fwlog *fwlog = filp->private_data;
-	struct device *dev = &fwlog->pdev->dev;
-	char user_val[8], *cmd_buf;
-	ssize_t ret;
-	int index;
-
-	/* don't allow partial writes or invalid input */
-	if (*ppos != 0 || count > 5)
-		return -EINVAL;
-
-	cmd_buf = memdup_user_nul(buf, count);
-	if (IS_ERR(cmd_buf))
-		return PTR_ERR(cmd_buf);
-
-	ret = sscanf(cmd_buf, "%s", user_val);
-	if (ret != 1)
-		return -EINVAL;
-
-	index = sysfs_match_string(ice_fwlog_log_size, user_val);
-	if (index < 0) {
-		dev_info(dev, "Invalid log size '%s'. The value must be one of 128K, 256K, 512K, 1M, 2M\n",
-			 user_val);
-		ret = -EINVAL;
-		goto log_size_write_error;
-	} else if (fwlog->cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
-		dev_info(dev, "FW logging is currently running. Please disable FW logging to change log_size\n");
-		ret = -EINVAL;
-		goto log_size_write_error;
-	}
-
-	/* free all the buffers and the tracking info and resize */
-	ice_fwlog_realloc_rings(fwlog, index);
-
-	/* if we get here, nothing went wrong; return count since we didn't
-	 * really write anything
-	 */
-	ret = (ssize_t)count;
-
-log_size_write_error:
-	/* This function always consumes all of the written input, or produces
-	 * an error. Check and enforce this. Otherwise, the write operation
-	 * won't complete properly.
-	 */
-	if (WARN_ON(ret != (ssize_t)count && ret >= 0))
-		ret = -EIO;
-
-	return ret;
-}
-
-static const struct file_operations ice_debugfs_log_size_fops = {
-	.owner = THIS_MODULE,
-	.open  = simple_open,
-	.read = ice_debugfs_log_size_read,
-	.write = ice_debugfs_log_size_write,
-};
-
-/**
- * ice_debugfs_data_read - read from 'data' file
- * @filp: the opened file
- * @buffer: where to write the data for the user to read
- * @count: the size of the user's buffer
- * @ppos: file position offset
- */
-static ssize_t ice_debugfs_data_read(struct file *filp, char __user *buffer,
-				     size_t count, loff_t *ppos)
-{
-	struct ice_fwlog *fwlog = filp->private_data;
-	int data_copied = 0;
-	bool done = false;
-
-	if (ice_fwlog_ring_empty(&fwlog->ring))
-		return 0;
-
-	while (!ice_fwlog_ring_empty(&fwlog->ring) && !done) {
-		struct ice_fwlog_data *log;
-		u16 cur_buf_len;
-
-		log = &fwlog->ring.rings[fwlog->ring.head];
-		cur_buf_len = log->data_size;
-		if (cur_buf_len >= count) {
-			done = true;
-			continue;
-		}
-
-		if (copy_to_user(buffer, log->data, cur_buf_len)) {
-			/* if there is an error then bail and return whatever
-			 * the driver has copied so far
-			 */
-			done = true;
-			continue;
-		}
-
-		data_copied += cur_buf_len;
-		buffer += cur_buf_len;
-		count -= cur_buf_len;
-		*ppos += cur_buf_len;
-		ice_fwlog_ring_increment(&fwlog->ring.head, fwlog->ring.size);
-	}
-
-	return data_copied;
-}
-
-/**
- * ice_debugfs_data_write - write into 'data' file
- * @filp: the opened file
- * @buf: where to find the user's data
- * @count: the length of the user's data
- * @ppos: file position offset
- */
-static ssize_t
-ice_debugfs_data_write(struct file *filp, const char __user *buf, size_t count,
-		       loff_t *ppos)
-{
-	struct ice_fwlog *fwlog = filp->private_data;
-	struct device *dev = &fwlog->pdev->dev;
-	ssize_t ret;
-
-	/* don't allow partial writes */
-	if (*ppos != 0)
-		return 0;
-
-	/* any value is allowed to clear the buffer so no need to even look at
-	 * what the value is
-	 */
-	if (!(fwlog->cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED)) {
-		fwlog->ring.head = 0;
-		fwlog->ring.tail = 0;
-	} else {
-		dev_info(dev, "Can't clear FW log data while FW log running\n");
-		ret = -EINVAL;
-		goto nr_buffs_write_error;
-	}
-
-	/* if we get here, nothing went wrong; return count since we didn't
-	 * really write anything
-	 */
-	ret = (ssize_t)count;
-
-nr_buffs_write_error:
-	/* This function always consumes all of the written input, or produces
-	 * an error. Check and enforce this. Otherwise, the write operation
-	 * won't complete properly.
-	 */
-	if (WARN_ON(ret != (ssize_t)count && ret >= 0))
-		ret = -EIO;
-
-	return ret;
-}
-
-static const struct file_operations ice_debugfs_data_fops = {
-	.owner = THIS_MODULE,
-	.open  = simple_open,
-	.read = ice_debugfs_data_read,
-	.write = ice_debugfs_data_write,
-};
-
-/**
- * ice_debugfs_fwlog_init - setup the debugfs directory
- * @fwlog: pointer to the fwlog structure
- * @root: debugfs root entry on which fwlog director will be registered
- */
-void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry *root)
-{
-	struct dentry *fw_modules_dir;
-	struct dentry **fw_modules;
-	int i;
-
-	/* allocate space for this first because if it fails then we don't
-	 * need to unwind
-	 */
-	fw_modules = kcalloc(ICE_NR_FW_LOG_MODULES, sizeof(*fw_modules),
-			     GFP_KERNEL);
-	if (!fw_modules)
-		return;
-
-	fwlog->debugfs = debugfs_create_dir("fwlog", root);
-	if (IS_ERR(fwlog->debugfs))
-		goto err_create_module_files;
-
-	fw_modules_dir = debugfs_create_dir("modules", fwlog->debugfs);
-	if (IS_ERR(fw_modules_dir))
-		goto err_create_module_files;
-
-	for (i = 0; i < ICE_NR_FW_LOG_MODULES; i++) {
-		fw_modules[i] = debugfs_create_file(ice_fwlog_module_string[i],
-						    0600, fw_modules_dir, fwlog,
-						    &ice_debugfs_module_fops);
-		if (IS_ERR(fw_modules[i]))
-			goto err_create_module_files;
-	}
-
-	debugfs_create_file("nr_messages", 0600, fwlog->debugfs, fwlog,
-			    &ice_debugfs_nr_messages_fops);
-
-	fwlog->debugfs_modules = fw_modules;
-
-	debugfs_create_file("enable", 0600, fwlog->debugfs, fwlog,
-			    &ice_debugfs_enable_fops);
-
-	debugfs_create_file("log_size", 0600, fwlog->debugfs, fwlog,
-			    &ice_debugfs_log_size_fops);
-
-	debugfs_create_file("data", 0600, fwlog->debugfs, fwlog,
-			    &ice_debugfs_data_fops);
-
-	return;
-
-err_create_module_files:
-	debugfs_remove_recursive(fwlog->debugfs);
-	kfree(fw_modules);
-}
-
 /**
  * ice_debugfs_pf_init - create PF's debugfs
  * @pf: pointer to the PF struct
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 0e4d0da86e0a..aaf6e20f934f 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -1,32 +1,84 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2022, Intel Corporation. */
 
+#include <linux/debugfs.h>
+#include <linux/fs.h>
+#include <linux/random.h>
 #include <linux/vmalloc.h>
 #include "ice.h"
 #include "ice_common.h"
 #include "ice_fwlog.h"
 
-static bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings)
-{
-	u16 head, tail;
-
-	head = rings->head;
-	tail = rings->tail;
-
-	if (head < tail && (tail - head == (rings->size - 1)))
-		return true;
-	else if (head > tail && (tail == (head - 1)))
-		return true;
-
-	return false;
-}
+/* create a define that has an extra module that doesn't really exist. this
+ * is so we can add a module 'all' to easily enable/disable all the modules
+ */
+#define ICE_NR_FW_LOG_MODULES (LIBIE_AQC_FW_LOG_ID_MAX + 1)
 
-bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings)
+/* the ordering in this array is important. it matches the ordering of the
+ * values in the FW so the index is the same value as in
+ * libie_aqc_fw_logging_mod
+ */
+static const char * const ice_fwlog_module_string[] = {
+	"general",
+	"ctrl",
+	"link",
+	"link_topo",
+	"dnl",
+	"i2c",
+	"sdp",
+	"mdio",
+	"adminq",
+	"hdma",
+	"lldp",
+	"dcbx",
+	"dcb",
+	"xlr",
+	"nvm",
+	"auth",
+	"vpd",
+	"iosf",
+	"parser",
+	"sw",
+	"scheduler",
+	"txq",
+	"rsvd",
+	"post",
+	"watchdog",
+	"task_dispatch",
+	"mng",
+	"synce",
+	"health",
+	"tsdrv",
+	"pfreg",
+	"mdlver",
+	"all",
+};
+
+/* the ordering in this array is important. it matches the ordering of the
+ * values in the FW so the index is the same value as in ice_fwlog_level
+ */
+static const char * const ice_fwlog_level_string[] = {
+	"none",
+	"error",
+	"warning",
+	"normal",
+	"verbose",
+};
+
+static const char * const ice_fwlog_log_size[] = {
+	"128K",
+	"256K",
+	"512K",
+	"1M",
+	"2M",
+};
+
+static bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings)
 {
 	return rings->head == rings->tail;
 }
 
-void ice_fwlog_ring_increment(u16 *item, u16 size)
+static void ice_fwlog_ring_increment(u16 *item, u16 size)
 {
 	*item = (*item + 1) & (size - 1);
 }
@@ -77,7 +129,7 @@ static void ice_fwlog_free_ring_buffs(struct ice_fwlog_ring *rings)
  * @index: the new index to use to allocate memory for the log data
  *
  */
-void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index)
+static void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index)
 {
 	struct ice_fwlog_ring ring;
 	int status, ring_size;
@@ -123,6 +175,572 @@ void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index)
 	fwlog->ring.tail = 0;
 }
 
+/**
+ * ice_fwlog_print_module_cfg - print current FW logging module configuration
+ * @cfg: pointer to the fwlog cfg structure
+ * @module: module to print
+ * @s: the seq file to put data into
+ */
+static void
+ice_fwlog_print_module_cfg(struct ice_fwlog_cfg *cfg, int module,
+			   struct seq_file *s)
+{
+	struct ice_fwlog_module_entry *entry;
+
+	if (module != LIBIE_AQC_FW_LOG_ID_MAX) {
+		entry =	&cfg->module_entries[module];
+
+		seq_printf(s, "\tModule: %s, Log Level: %s\n",
+			   ice_fwlog_module_string[entry->module_id],
+			   ice_fwlog_level_string[entry->log_level]);
+	} else {
+		int i;
+
+		for (i = 0; i < LIBIE_AQC_FW_LOG_ID_MAX; i++) {
+			entry =	&cfg->module_entries[i];
+
+			seq_printf(s, "\tModule: %s, Log Level: %s\n",
+				   ice_fwlog_module_string[entry->module_id],
+				   ice_fwlog_level_string[entry->log_level]);
+		}
+	}
+}
+
+static int ice_find_module_by_dentry(struct dentry **modules, struct dentry *d)
+{
+	int i, module;
+
+	module = -1;
+	/* find the module based on the dentry */
+	for (i = 0; i < ICE_NR_FW_LOG_MODULES; i++) {
+		if (d == modules[i]) {
+			module = i;
+			break;
+		}
+	}
+
+	return module;
+}
+
+/**
+ * ice_debugfs_module_show - read from 'module' file
+ * @s: the opened file
+ * @v: pointer to the offset
+ */
+static int ice_debugfs_module_show(struct seq_file *s, void *v)
+{
+	struct ice_fwlog *fwlog = s->private;
+	const struct file *filp = s->file;
+	struct dentry *dentry;
+	int module;
+
+	dentry = file_dentry(filp);
+
+	module = ice_find_module_by_dentry(fwlog->debugfs_modules, dentry);
+	if (module < 0) {
+		dev_info(&fwlog->pdev->dev, "unknown module\n");
+		return -EINVAL;
+	}
+
+	ice_fwlog_print_module_cfg(&fwlog->cfg, module, s);
+
+	return 0;
+}
+
+static int ice_debugfs_module_open(struct inode *inode, struct file *filp)
+{
+	return single_open(filp, ice_debugfs_module_show, inode->i_private);
+}
+
+/**
+ * ice_debugfs_module_write - write into 'module' file
+ * @filp: the opened file
+ * @buf: where to find the user's data
+ * @count: the length of the user's data
+ * @ppos: file position offset
+ */
+static ssize_t
+ice_debugfs_module_write(struct file *filp, const char __user *buf,
+			 size_t count, loff_t *ppos)
+{
+	struct ice_fwlog *fwlog = file_inode(filp)->i_private;
+	struct dentry *dentry = file_dentry(filp);
+	struct device *dev = &fwlog->pdev->dev;
+	char user_val[16], *cmd_buf;
+	int module, log_level, cnt;
+
+	/* don't allow partial writes or invalid input */
+	if (*ppos != 0 || count > 8)
+		return -EINVAL;
+
+	cmd_buf = memdup_user_nul(buf, count);
+	if (IS_ERR(cmd_buf))
+		return PTR_ERR(cmd_buf);
+
+	module = ice_find_module_by_dentry(fwlog->debugfs_modules, dentry);
+	if (module < 0) {
+		dev_info(dev, "unknown module\n");
+		return -EINVAL;
+	}
+
+	cnt = sscanf(cmd_buf, "%s", user_val);
+	if (cnt != 1)
+		return -EINVAL;
+
+	log_level = sysfs_match_string(ice_fwlog_level_string, user_val);
+	if (log_level < 0) {
+		dev_info(dev, "unknown log level '%s'\n", user_val);
+		return -EINVAL;
+	}
+
+	if (module != LIBIE_AQC_FW_LOG_ID_MAX) {
+		fwlog->cfg.module_entries[module].log_level = log_level;
+	} else {
+		/* the module 'all' is a shortcut so that we can set
+		 * all of the modules to the same level quickly
+		 */
+		int i;
+
+		for (i = 0; i < LIBIE_AQC_FW_LOG_ID_MAX; i++)
+			fwlog->cfg.module_entries[i].log_level = log_level;
+	}
+
+	return count;
+}
+
+static const struct file_operations ice_debugfs_module_fops = {
+	.owner = THIS_MODULE,
+	.open  = ice_debugfs_module_open,
+	.read = seq_read,
+	.release = single_release,
+	.write = ice_debugfs_module_write,
+};
+
+/**
+ * ice_debugfs_nr_messages_read - read from 'nr_messages' file
+ * @filp: the opened file
+ * @buffer: where to write the data for the user to read
+ * @count: the size of the user's buffer
+ * @ppos: file position offset
+ */
+static ssize_t ice_debugfs_nr_messages_read(struct file *filp,
+					    char __user *buffer, size_t count,
+					    loff_t *ppos)
+{
+	struct ice_fwlog *fwlog = filp->private_data;
+	char buff[32] = {};
+
+	snprintf(buff, sizeof(buff), "%d\n",
+		 fwlog->cfg.log_resolution);
+
+	return simple_read_from_buffer(buffer, count, ppos, buff, strlen(buff));
+}
+
+/**
+ * ice_debugfs_nr_messages_write - write into 'nr_messages' file
+ * @filp: the opened file
+ * @buf: where to find the user's data
+ * @count: the length of the user's data
+ * @ppos: file position offset
+ */
+static ssize_t
+ice_debugfs_nr_messages_write(struct file *filp, const char __user *buf,
+			      size_t count, loff_t *ppos)
+{
+	struct ice_fwlog *fwlog = filp->private_data;
+	struct device *dev = &fwlog->pdev->dev;
+	char user_val[8], *cmd_buf;
+	s16 nr_messages;
+	ssize_t ret;
+
+	/* don't allow partial writes or invalid input */
+	if (*ppos != 0 || count > 4)
+		return -EINVAL;
+
+	cmd_buf = memdup_user_nul(buf, count);
+	if (IS_ERR(cmd_buf))
+		return PTR_ERR(cmd_buf);
+
+	ret = sscanf(cmd_buf, "%s", user_val);
+	if (ret != 1)
+		return -EINVAL;
+
+	ret = kstrtos16(user_val, 0, &nr_messages);
+	if (ret)
+		return ret;
+
+	if (nr_messages < LIBIE_AQC_FW_LOG_MIN_RESOLUTION ||
+	    nr_messages > LIBIE_AQC_FW_LOG_MAX_RESOLUTION) {
+		dev_err(dev, "Invalid FW log number of messages %d, value must be between %d - %d\n",
+			nr_messages, LIBIE_AQC_FW_LOG_MIN_RESOLUTION,
+			LIBIE_AQC_FW_LOG_MAX_RESOLUTION);
+		return -EINVAL;
+	}
+
+	fwlog->cfg.log_resolution = nr_messages;
+
+	return count;
+}
+
+static const struct file_operations ice_debugfs_nr_messages_fops = {
+	.owner = THIS_MODULE,
+	.open  = simple_open,
+	.read = ice_debugfs_nr_messages_read,
+	.write = ice_debugfs_nr_messages_write,
+};
+
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
+	struct ice_fwlog *fwlog = filp->private_data;
+	char buff[32] = {};
+
+	snprintf(buff, sizeof(buff), "%u\n",
+		 (u16)(fwlog->cfg.options &
+		 ICE_FWLOG_OPTION_IS_REGISTERED) >> 3);
+
+	return simple_read_from_buffer(buffer, count, ppos, buff, strlen(buff));
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
+	struct ice_fwlog *fwlog = filp->private_data;
+	char user_val[8], *cmd_buf;
+	bool enable;
+	ssize_t ret;
+
+	/* don't allow partial writes or invalid input */
+	if (*ppos != 0 || count > 2)
+		return -EINVAL;
+
+	cmd_buf = memdup_user_nul(buf, count);
+	if (IS_ERR(cmd_buf))
+		return PTR_ERR(cmd_buf);
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
+		fwlog->cfg.options |= ICE_FWLOG_OPTION_ARQ_ENA;
+	else
+		fwlog->cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
+
+	ret = ice_fwlog_set(fwlog, &fwlog->cfg);
+	if (ret)
+		goto enable_write_error;
+
+	if (enable)
+		ret = ice_fwlog_register(fwlog);
+	else
+		ret = ice_fwlog_unregister(fwlog);
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
+/**
+ * ice_debugfs_log_size_read - read from 'log_size' file
+ * @filp: the opened file
+ * @buffer: where to write the data for the user to read
+ * @count: the size of the user's buffer
+ * @ppos: file position offset
+ */
+static ssize_t ice_debugfs_log_size_read(struct file *filp,
+					 char __user *buffer, size_t count,
+					 loff_t *ppos)
+{
+	struct ice_fwlog *fwlog = filp->private_data;
+	char buff[32] = {};
+	int index;
+
+	index = fwlog->ring.index;
+	snprintf(buff, sizeof(buff), "%s\n", ice_fwlog_log_size[index]);
+
+	return simple_read_from_buffer(buffer, count, ppos, buff, strlen(buff));
+}
+
+/**
+ * ice_debugfs_log_size_write - write into 'log_size' file
+ * @filp: the opened file
+ * @buf: where to find the user's data
+ * @count: the length of the user's data
+ * @ppos: file position offset
+ */
+static ssize_t
+ice_debugfs_log_size_write(struct file *filp, const char __user *buf,
+			   size_t count, loff_t *ppos)
+{
+	struct ice_fwlog *fwlog = filp->private_data;
+	struct device *dev = &fwlog->pdev->dev;
+	char user_val[8], *cmd_buf;
+	ssize_t ret;
+	int index;
+
+	/* don't allow partial writes or invalid input */
+	if (*ppos != 0 || count > 5)
+		return -EINVAL;
+
+	cmd_buf = memdup_user_nul(buf, count);
+	if (IS_ERR(cmd_buf))
+		return PTR_ERR(cmd_buf);
+
+	ret = sscanf(cmd_buf, "%s", user_val);
+	if (ret != 1)
+		return -EINVAL;
+
+	index = sysfs_match_string(ice_fwlog_log_size, user_val);
+	if (index < 0) {
+		dev_info(dev, "Invalid log size '%s'. The value must be one of 128K, 256K, 512K, 1M, 2M\n",
+			 user_val);
+		ret = -EINVAL;
+		goto log_size_write_error;
+	} else if (fwlog->cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
+		dev_info(dev, "FW logging is currently running. Please disable FW logging to change log_size\n");
+		ret = -EINVAL;
+		goto log_size_write_error;
+	}
+
+	/* free all the buffers and the tracking info and resize */
+	ice_fwlog_realloc_rings(fwlog, index);
+
+	/* if we get here, nothing went wrong; return count since we didn't
+	 * really write anything
+	 */
+	ret = (ssize_t)count;
+
+log_size_write_error:
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
+static const struct file_operations ice_debugfs_log_size_fops = {
+	.owner = THIS_MODULE,
+	.open  = simple_open,
+	.read = ice_debugfs_log_size_read,
+	.write = ice_debugfs_log_size_write,
+};
+
+/**
+ * ice_debugfs_data_read - read from 'data' file
+ * @filp: the opened file
+ * @buffer: where to write the data for the user to read
+ * @count: the size of the user's buffer
+ * @ppos: file position offset
+ */
+static ssize_t ice_debugfs_data_read(struct file *filp, char __user *buffer,
+				     size_t count, loff_t *ppos)
+{
+	struct ice_fwlog *fwlog = filp->private_data;
+	int data_copied = 0;
+	bool done = false;
+
+	if (ice_fwlog_ring_empty(&fwlog->ring))
+		return 0;
+
+	while (!ice_fwlog_ring_empty(&fwlog->ring) && !done) {
+		struct ice_fwlog_data *log;
+		u16 cur_buf_len;
+
+		log = &fwlog->ring.rings[fwlog->ring.head];
+		cur_buf_len = log->data_size;
+		if (cur_buf_len >= count) {
+			done = true;
+			continue;
+		}
+
+		if (copy_to_user(buffer, log->data, cur_buf_len)) {
+			/* if there is an error then bail and return whatever
+			 * the driver has copied so far
+			 */
+			done = true;
+			continue;
+		}
+
+		data_copied += cur_buf_len;
+		buffer += cur_buf_len;
+		count -= cur_buf_len;
+		*ppos += cur_buf_len;
+		ice_fwlog_ring_increment(&fwlog->ring.head, fwlog->ring.size);
+	}
+
+	return data_copied;
+}
+
+/**
+ * ice_debugfs_data_write - write into 'data' file
+ * @filp: the opened file
+ * @buf: where to find the user's data
+ * @count: the length of the user's data
+ * @ppos: file position offset
+ */
+static ssize_t
+ice_debugfs_data_write(struct file *filp, const char __user *buf, size_t count,
+		       loff_t *ppos)
+{
+	struct ice_fwlog *fwlog = filp->private_data;
+	struct device *dev = &fwlog->pdev->dev;
+	ssize_t ret;
+
+	/* don't allow partial writes */
+	if (*ppos != 0)
+		return 0;
+
+	/* any value is allowed to clear the buffer so no need to even look at
+	 * what the value is
+	 */
+	if (!(fwlog->cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED)) {
+		fwlog->ring.head = 0;
+		fwlog->ring.tail = 0;
+	} else {
+		dev_info(dev, "Can't clear FW log data while FW log running\n");
+		ret = -EINVAL;
+		goto nr_buffs_write_error;
+	}
+
+	/* if we get here, nothing went wrong; return count since we didn't
+	 * really write anything
+	 */
+	ret = (ssize_t)count;
+
+nr_buffs_write_error:
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
+static const struct file_operations ice_debugfs_data_fops = {
+	.owner = THIS_MODULE,
+	.open  = simple_open,
+	.read = ice_debugfs_data_read,
+	.write = ice_debugfs_data_write,
+};
+
+/**
+ * ice_debugfs_fwlog_init - setup the debugfs directory
+ * @fwlog: pointer to the fwlog structure
+ * @root: debugfs root entry on which fwlog director will be registered
+ */
+static void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry *root)
+{
+	struct dentry *fw_modules_dir;
+	struct dentry **fw_modules;
+	int i;
+
+	/* allocate space for this first because if it fails then we don't
+	 * need to unwind
+	 */
+	fw_modules = kcalloc(ICE_NR_FW_LOG_MODULES, sizeof(*fw_modules),
+			     GFP_KERNEL);
+	if (!fw_modules)
+		return;
+
+	fwlog->debugfs = debugfs_create_dir("fwlog", root);
+	if (IS_ERR(fwlog->debugfs))
+		goto err_create_module_files;
+
+	fw_modules_dir = debugfs_create_dir("modules", fwlog->debugfs);
+	if (IS_ERR(fw_modules_dir))
+		goto err_create_module_files;
+
+	for (i = 0; i < ICE_NR_FW_LOG_MODULES; i++) {
+		fw_modules[i] = debugfs_create_file(ice_fwlog_module_string[i],
+						    0600, fw_modules_dir, fwlog,
+						    &ice_debugfs_module_fops);
+		if (IS_ERR(fw_modules[i]))
+			goto err_create_module_files;
+	}
+
+	debugfs_create_file("nr_messages", 0600, fwlog->debugfs, fwlog,
+			    &ice_debugfs_nr_messages_fops);
+
+	fwlog->debugfs_modules = fw_modules;
+
+	debugfs_create_file("enable", 0600, fwlog->debugfs, fwlog,
+			    &ice_debugfs_enable_fops);
+
+	debugfs_create_file("log_size", 0600, fwlog->debugfs, fwlog,
+			    &ice_debugfs_log_size_fops);
+
+	debugfs_create_file("data", 0600, fwlog->debugfs, fwlog,
+			    &ice_debugfs_data_fops);
+
+	return;
+
+err_create_module_files:
+	debugfs_remove_recursive(fwlog->debugfs);
+	kfree(fw_modules);
+}
+
+static bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings)
+{
+	u16 head, tail;
+
+	head = rings->head;
+	tail = rings->tail;
+
+	if (head < tail && (tail - head == (rings->size - 1)))
+		return true;
+	else if (head > tail && (tail == (head - 1)))
+		return true;
+
+	return false;
+}
+
 /**
  * ice_fwlog_supported - Cached for whether FW supports FW logging or not
  * @fwlog: pointer to the fwlog structure
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
index 9efa4a83c957..d5868b9e4de6 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -79,13 +79,10 @@ struct ice_fwlog {
 	);
 };
 
-bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings);
-void ice_fwlog_ring_increment(u16 *item, u16 size);
 int ice_fwlog_init(struct ice_fwlog *fwlog, struct ice_fwlog_api *api);
 void ice_fwlog_deinit(struct ice_fwlog *fwlog);
 int ice_fwlog_set(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg);
 int ice_fwlog_register(struct ice_fwlog *fwlog);
 int ice_fwlog_unregister(struct ice_fwlog *fwlog);
-void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index);
 void ice_get_fwlog_data(struct ice_fwlog *fwlog, u8 *buf, u16 len);
 #endif /* _ICE_FWLOG_H_ */
-- 
2.49.0


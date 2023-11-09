Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B7A7E6179
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 01:39:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 337D4404D1;
	Thu,  9 Nov 2023 00:39:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 337D4404D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699490360;
	bh=jZlRYNRhQvhb9gPk6kSVWtKwxaiHOjZNAC5UioMhaNk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yrbngJYjET4hg0X/2d2g9feSupeqoexXRLFjfR5/zImAn0YrwUsWpxOWdMafvKLUF
	 Ttv/xJFFLoUJrHUMS4dyb4WGq3YuFvr+T+Xh3D/NKJcAKMURsBkanDhdO5yJNh7mmc
	 JinElDW4E//5VsBsdarHe2A8wHRbZVWjCmcus29FcK92hc6INBmJ4JPtL1bygv3t7z
	 BF5BtUdQYBWTmqugrXxlepRTXpGVzUHXLUTOh77niuF9FAOvpwmGV9bxKTGu/Z/c1B
	 k/RJu6FmIicpyflB8J7a4FzSIkrql7ajEdc4hlv+TFG1vYDVePlOYwyp6+AsBsyCO5
	 8di3n4d319ZUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id swMJVcF_95KO; Thu,  9 Nov 2023 00:39:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC5934051C;
	Thu,  9 Nov 2023 00:39:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC5934051C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47BAA1BF966
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 00:38:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB65E61197
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 00:38:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB65E61197
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W8HRRp59o-jF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 00:38:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6592461199
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 00:38:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6592461199
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="392762367"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="392762367"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 16:38:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="739681874"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="739681874"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.98.242])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 16:38:40 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Nov 2023 16:38:29 -0800
Message-Id: <20231109003830.154-5-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231109003830.154-1-paul.m.stillwell.jr@intel.com>
References: <20231109003830.154-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699490331; x=1731026331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jDTFUOgHSTgGmzOXgiZfJ21rEjc6LQDKKLrBEfP8iJo=;
 b=gDA8MGSQRRaFEjSCSqdwSY/8MocmPQaJvMoZNSQzDD9mXmQiGDojjZXA
 kmCTIzSbI+dD6/xM2dg+tmuV4FokmEvO1IgabJJ54zRHkbGjL9yfPJ47a
 WtM8NQdTcWXNhZSw/ocbjBVuJNkMVIBQzs1xW0Eog6atcABO0e9ZV8gF+
 POZklD5bNdTL8TgXbVLhZyoibJ2C1f5W/jwy0cx4IJ5SkeZLKYVqDYdUa
 sM6NhYEeLIEaNB4MPADIoOOroorNoRaDtSQl2KJv8eKN5u/tO0cc3YxSh
 o4+42VQAi1OLw/7N+oPLcHrQrIeTRJsu0mGOLXQ03Z/CefAS42Y8KkvL4
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gDA8MGSQ
Subject: [Intel-wired-lan] [PATCH net-next v17 4/5] ice: add ability to read
 FW log data and configure the amount of memory for log data
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

Once logging is enabled the user should read the data from the 'data'
file. The data is in the form of a binary blob that can be sent to Intel
for decoding. To read the data use a command like:

  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/data > log_data.bin

If the user wants to clear the FW log data that has been stored in the
driver then they can write a 0 to the 'data' file and that will clear
the data.

In addition to being able to read the data the user can configure how
much memory is used to store FW log data. This allows the user to
increase/decrease the amount of memory based on the users situation.
The data is stored such that if the memory fills up then the oldest data
will get overwritten in a circular manner. To change the amount of
memory the user can write to the 'log_size' file like this:

  # echo <value> > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/log_size

Where <value> is one of 128K, 256K, 512K, 1M, and 2M. The default value
is 1M.

The user can see the current value of 'log_size' by reading the file:

  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/log_size

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
v16->v17:
- changed 'nr_buffs' to 'log_size' to make it easier for users to set
  the amount of memory they want to use when logging
- changed the 'log_size' values to be set between 128K and 2M instead of
  allowing the user to write any power of 2 value between 1 and 2MB
v15->v16: none
v14->v15: changed PAGE_SIZE to ICE_AQ_MAX_BUF_LEN
v13->v14: fixed an issue where 0 was an accepted value to nr_buffs
v12->v13:
- moved 'enable' file addition to the correct patch
- added comment to header file about inclusion of 0xFF33 command
- added linux/vmalloc.h header file in ice_fwlog.c
- removed NULL check before freeing ring->data
v11->v12:
- added fwlog/data file for reading and clearing data
- added fwlog/nr_buffs to change the number of data buffers to store log
  data in
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 249 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 142 +++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  22 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  29 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 6 files changed, 444 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index b5d9c4e38809..ef404bca5391 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2395,6 +2395,7 @@ enum ice_aqc_fw_logging_mod {
 /* Set FW Logging configuration (indirect 0xFF30)
  * Register for FW Logging (indirect 0xFF31)
  * Query FW Logging (indirect 0xFF32)
+ * FW Log Event (indirect 0xFF33)
  */
 struct ice_aqc_fw_log {
 	u8 cmd_flags;
@@ -2726,6 +2727,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_fw_logs_config			= 0xFF30,
 	ice_aqc_opc_fw_logs_register			= 0xFF31,
 	ice_aqc_opc_fw_logs_query			= 0xFF32,
+	ice_aqc_opc_fw_logs_event			= 0xFF33,
 };
 
 #endif /* _ICE_ADMINQ_CMD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index 3d1d2f24ff2f..953dbeddfb93 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -64,6 +64,17 @@ static const char * const ice_fwlog_level_string[] = {
 	"verbose",
 };
 
+/* the order in this array is important. it matches the ordering of the
+ * values in the FW so the index is the same value as in ice_fwlog_level
+ */
+static const char * const ice_fwlog_log_size[] = {
+	"128K",
+	"256K",
+	"512K",
+	"1M",
+	"2M",
+};
+
 /**
  * ice_fwlog_print_module_cfg - print current FW logging module configuration
  * @hw: pointer to the HW structure
@@ -503,6 +514,238 @@ static const struct file_operations ice_debugfs_enable_fops = {
 	.write = ice_debugfs_enable_write,
 };
 
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
+	struct ice_pf *pf = filp->private_data;
+	struct ice_hw *hw = &pf->hw;
+	char buff[32] = {};
+	int status, index;
+
+	/* don't allow commands if the FW doesn't support it */
+	if (!ice_fwlog_supported(&pf->hw))
+		return -EOPNOTSUPP;
+
+	index = hw->fwlog_ring.index;
+	snprintf(buff, sizeof(buff), "%s\n", ice_fwlog_log_size[index]);
+
+	status = simple_read_from_buffer(buffer, count, ppos, buff,
+					 strlen(buff));
+
+	return status;
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
+		int index;
+
+		index = sysfs_match_string(ice_fwlog_log_size, argv[0]);
+
+		if (index < 0) {
+			dev_info(dev, "Invalid log size '%s'. The value must be one of 128K, 256K, 512K, 1M, 2M\n",
+				 argv[0]);
+			ret = -EINVAL;
+			goto log_size_write_error;
+		} else if (hw->fwlog_cfg.options &
+			   ICE_FWLOG_OPTION_IS_REGISTERED) {
+			dev_info(dev, "FW logging is currently running. Please disable FW logging to change log_size\n");
+			ret = -EINVAL;
+			goto log_size_write_error;
+		}
+
+		/* free all the buffers and the tracking info and resize */
+		ice_fwlog_realloc_rings(hw, index);
+	} else {
+		dev_info(dev, "unknown or invalid parameter '%s'\n", argv[1]);
+		ret = -EINVAL;
+		goto log_size_write_error;
+	}
+
+	/* if we get here, nothing went wrong; return count since we didn't
+	 * really write anything
+	 */
+	ret = (ssize_t)count;
+
+log_size_write_error:
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
+	struct ice_pf *pf = filp->private_data;
+	struct ice_hw *hw = &pf->hw;
+	int data_copied = 0;
+	bool done = false;
+
+	/* don't allow commands if the FW doesn't support it */
+	if (!ice_fwlog_supported(&pf->hw))
+		return -EOPNOTSUPP;
+
+	if (ice_fwlog_ring_empty(&hw->fwlog_ring))
+		return 0;
+
+	while (!ice_fwlog_ring_empty(&hw->fwlog_ring) && !done) {
+		struct ice_fwlog_data *log;
+		u16 cur_buf_len;
+
+		log = &hw->fwlog_ring.rings[hw->fwlog_ring.head];
+		cur_buf_len = log->data_size;
+
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
+		ice_fwlog_ring_increment(&hw->fwlog_ring.head,
+					 hw->fwlog_ring.size);
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
+		if (!(hw->fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED)) {
+			hw->fwlog_ring.head = 0;
+			hw->fwlog_ring.tail = 0;
+		} else {
+			dev_info(dev, "Can't clear FW log data while FW log running\n");
+			ret = -EINVAL;
+			goto nr_buffs_write_error;
+		}
+	} else {
+		dev_info(dev, "unknown or invalid command '%s'\n", argv[0]);
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
+static const struct file_operations ice_debugfs_data_fops = {
+	.owner = THIS_MODULE,
+	.open  = simple_open,
+	.read = ice_debugfs_data_read,
+	.write = ice_debugfs_data_write,
+};
+
 /**
  * ice_debugfs_fwlog_init - setup the debugfs directory
  * @pf: the ice that is starting up
@@ -572,6 +815,12 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
 	debugfs_create_file("enable", 0600, pf->ice_debugfs_pf_fwlog,
 			    pf, &ice_debugfs_enable_fops);
 
+	debugfs_create_file("log_size", 0600, pf->ice_debugfs_pf_fwlog,
+			    pf, &ice_debugfs_log_size_fops);
+
+	debugfs_create_file("data", 0600, pf->ice_debugfs_pf_fwlog,
+			    pf, &ice_debugfs_data_fops);
+
 	return;
 
 err_create_module_files:
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 3daedb47548d..0ead4438bf84 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -1,10 +1,122 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2022, Intel Corporation. */
 
+#include <linux/vmalloc.h>
 #include "ice.h"
 #include "ice_common.h"
 #include "ice_fwlog.h"
 
+bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings)
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
+bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings)
+{
+	return rings->head == rings->tail;
+}
+
+void ice_fwlog_ring_increment(u16 *item, u16 size)
+{
+	*item = (*item + 1) & (size - 1);
+}
+
+static int ice_fwlog_alloc_ring_buffs(struct ice_fwlog_ring *rings)
+{
+	int i, ret = 0;
+
+	for (i = 0; i < rings->size; i++) {
+		struct ice_fwlog_data *ring = &rings->rings[i];
+
+		ring->data_size = ICE_AQ_MAX_BUF_LEN;
+		ring->data = vzalloc(ring->data_size);
+		if (!ring->data) {
+			ret = -ENOMEM;
+			break;
+		}
+	}
+
+	return ret;
+}
+
+static void ice_fwlog_free_ring_buffs(struct ice_fwlog_ring *rings)
+{
+	int i;
+
+	for (i = 0; i < rings->size; i++) {
+		struct ice_fwlog_data *ring = &rings->rings[i];
+
+		vfree(ring->data);
+
+		ring->data_size = 0;
+	}
+}
+
+#define ICE_FWLOG_INDEX_TO_BYTES(n) ((128 * 1024) << (n))
+/**
+ * ice_fwlog_realloc_rings - reallocate the FW log rings
+ * @hw: pointer to the HW structure
+ * @index: the new index to use to allocate memory for the log data
+ *
+ */
+void ice_fwlog_realloc_rings(struct ice_hw *hw, int index)
+{
+	struct ice_fwlog_ring ring;
+	int status, ring_size;
+
+	/* convert the number of bytes into a number of 4K buffers. externally
+	 * the driver presents the interface to the FW log data as a number of
+	 * bytes because that's easy for users to understand. internally the
+	 * driver uses a ring of buffers because the driver doesn't know where
+	 * the beginning and end of any line of log data is so the driver has
+	 * to overwrite data as complete blocks. when the data is returned to
+	 * the user the driver knows that the data is correct and the FW log
+	 * can be correctly parsed by the tools
+	 */
+	ring_size = ICE_FWLOG_INDEX_TO_BYTES(index) / ICE_AQ_MAX_BUF_LEN;
+	if (ring_size == hw->fwlog_ring.size)
+		return;
+
+	/* allocate space for the new rings and buffers then release the
+	 * old rings and buffers. that way if we don't have enough
+	 * memory then we at least have what we had before
+	 */
+	ring.rings = kcalloc(ring_size, sizeof(*ring.rings), GFP_KERNEL);
+	if (!ring.rings) {
+		dev_warn(ice_hw_to_dev(hw), "Unable to allocate memory for FW log ring\n");
+		return;
+	}
+
+	ring.size = ring_size;
+
+	status = ice_fwlog_alloc_ring_buffs(&ring);
+	if (status) {
+		dev_warn(ice_hw_to_dev(hw), "Unable to allocate memory for FW log ring data buffers\n");
+		ice_fwlog_free_ring_buffs(&ring);
+		kfree(ring.rings);
+		return;
+	}
+
+	ice_fwlog_free_ring_buffs(&hw->fwlog_ring);
+	kfree(hw->fwlog_ring.rings);
+
+	hw->fwlog_ring.rings = ring.rings;
+	hw->fwlog_ring.size = ring.size;
+	hw->fwlog_ring.index = index;
+	hw->fwlog_ring.head = 0;
+	hw->fwlog_ring.tail = 0;
+}
+
 /**
  * ice_fwlog_init - Initialize FW logging configuration
  * @hw: pointer to the HW structure
@@ -14,16 +126,39 @@
  */
 int ice_fwlog_init(struct ice_hw *hw)
 {
-	int status;
+	/* only support fw log commands on PF 0 */
+	if (hw->bus.func)
+		return -EINVAL;
 
 	ice_fwlog_set_supported(hw);
 
 	if (ice_fwlog_supported(hw)) {
+		int status;
+
 		/* read the current config from the FW and store it */
 		status = ice_fwlog_get(hw, &hw->fwlog_cfg);
 		if (status)
 			return status;
 
+		hw->fwlog_ring.rings = kcalloc(ICE_FWLOG_RING_SIZE_DFLT,
+					       sizeof(*hw->fwlog_ring.rings),
+					       GFP_KERNEL);
+		if (!hw->fwlog_ring.rings) {
+			dev_warn(ice_hw_to_dev(hw), "Unable to allocate memory for FW log rings\n");
+			return -ENOMEM;
+		}
+
+		hw->fwlog_ring.size = ICE_FWLOG_RING_SIZE_DFLT;
+		hw->fwlog_ring.index = ICE_FWLOG_RING_SIZE_INDEX_DFLT;
+
+		status = ice_fwlog_alloc_ring_buffs(&hw->fwlog_ring);
+		if (status) {
+			dev_warn(ice_hw_to_dev(hw), "Unable to allocate memory for FW log ring data buffers\n");
+			ice_fwlog_free_ring_buffs(&hw->fwlog_ring);
+			kfree(hw->fwlog_ring.rings);
+			return status;
+		}
+
 		ice_debugfs_fwlog_init(hw->back);
 	} else {
 		dev_warn(ice_hw_to_dev(hw), "FW logging is not supported in this NVM image. Please update the NVM to get FW log support\n");
@@ -63,6 +198,11 @@ void ice_fwlog_deinit(struct ice_hw *hw)
 	if (status)
 		dev_warn(ice_hw_to_dev(hw), "Unable to unregister FW logging, status: %d\n",
 			 status);
+
+	if (hw->fwlog_ring.rings) {
+		ice_fwlog_free_ring_buffs(&hw->fwlog_ring);
+		kfree(hw->fwlog_ring.rings);
+	}
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
index 45865558425d..65d9a1cbfa1c 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -47,12 +47,34 @@ struct ice_fwlog_cfg {
 	u16 log_resolution;
 };
 
+struct ice_fwlog_data {
+	u16 data_size;
+	u8 *data;
+};
+
+struct ice_fwlog_ring {
+	struct ice_fwlog_data *rings;
+	u16 index;
+	u16 size;
+	u16 head;
+	u16 tail;
+};
+
+#define ICE_FWLOG_RING_SIZE_INDEX_DFLT 3
+#define ICE_FWLOG_RING_SIZE_DFLT 256
+#define ICE_FWLOG_RING_SIZE_MAX 512
+
+bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings);
+bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings);
+void ice_fwlog_ring_increment(u16 *item, u16 size);
 void ice_fwlog_set_supported(struct ice_hw *hw);
 bool ice_fwlog_supported(struct ice_hw *hw);
 int ice_fwlog_init(struct ice_hw *hw);
 void ice_fwlog_deinit(struct ice_hw *hw);
+void ice_fwlog_deinit(struct ice_hw *hw);
 int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
 int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
 int ice_fwlog_register(struct ice_hw *hw);
 int ice_fwlog_unregister(struct ice_hw *hw);
+void ice_fwlog_realloc_rings(struct ice_hw *hw, int index);
 #endif /* _ICE_FWLOG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 148d193ad35d..81044cc10931 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1252,6 +1252,32 @@ ice_handle_link_event(struct ice_pf *pf, struct ice_rq_event_info *event)
 	return status;
 }
 
+/**
+ * ice_get_fwlog_data - copy the FW log data from ARQ event
+ * @pf: PF that the FW log event is associated with
+ * @event: event structure containing FW log data
+ */
+static void
+ice_get_fwlog_data(struct ice_pf *pf, struct ice_rq_event_info *event)
+{
+	struct ice_fwlog_data *fwlog;
+	struct ice_hw *hw = &pf->hw;
+
+	fwlog = &hw->fwlog_ring.rings[hw->fwlog_ring.tail];
+
+	memset(fwlog->data, 0, PAGE_SIZE);
+	fwlog->data_size = le16_to_cpu(event->desc.datalen);
+
+	memcpy(fwlog->data, event->msg_buf, fwlog->data_size);
+	ice_fwlog_ring_increment(&hw->fwlog_ring.tail, hw->fwlog_ring.size);
+
+	if (ice_fwlog_ring_full(&hw->fwlog_ring)) {
+		/* the rings are full so bump the head to create room */
+		ice_fwlog_ring_increment(&hw->fwlog_ring.head,
+					 hw->fwlog_ring.size);
+	}
+}
+
 /**
  * ice_aq_prep_for_event - Prepare to wait for an AdminQ event from firmware
  * @pf: pointer to the PF private structure
@@ -1533,6 +1559,9 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 
 			ice_vc_process_vf_msg(pf, &event, &data);
 			break;
+		case ice_aqc_opc_fw_logs_event:
+			ice_get_fwlog_data(pf, &event);
+			break;
 		case ice_aqc_opc_lldp_set_mib_change:
 			ice_dcb_process_lldp_set_mib_change(pf, &event);
 			break;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index ed8a1675224d..16615e322382 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -881,6 +881,7 @@ struct ice_hw {
 
 	struct ice_fwlog_cfg fwlog_cfg;
 	bool fwlog_supported; /* does hardware support FW logging? */
+	struct ice_fwlog_ring fwlog_ring;
 
 /* Device max aggregate bandwidths corresponding to the GL_PWR_MODE_CTL
  * register. Used for determining the ITR/INTRL granularity during
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

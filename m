Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC4D80D39D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 18:23:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A3816145B;
	Mon, 11 Dec 2023 17:23:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A3816145B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702315384;
	bh=BftyrRBukCNkGg83ep0ENecVtx1q+BCJ6Rl9dBH4uhw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GHIhP9fc9mFEBi5Z9J9AyB0JUP5co3MmkfV195rsSuCp+aQIutIaWSIBVWmMXND+b
	 3jZ6ogKPH8oT2oi3iFzhp3AkOFPt6fACAIcit231Q8ww7LRE6Fynab4rvbpZUw18id
	 MmX8lXZfhVRcLufjx21TPZQm9guosA1X2HHyKNahpdlcajvKNAp1eVHxL827NWdQu1
	 8Nmi7cHHj/Kj8IU/uqzH+To6d/OYZODs1pyP8rI06ao93oHDX79+HmCWVxjq0t7qGH
	 a58JPYyccJ1vUveTpjk8Oh3uCCV26X/kjO/ickSU0Ugl/QYXBAiVt9rGkR5ERef4n6
	 WjBaJ6OUhUMJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LKkFlj7XC5ub; Mon, 11 Dec 2023 17:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAD5D60B49;
	Mon, 11 Dec 2023 17:23:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAD5D60B49
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D799A1BF488
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 17:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 63C55410CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 17:22:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63C55410CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7W0sgWfVAzUK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 17:22:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E23D741713
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 17:22:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E23D741713
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="394431099"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="394431099"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 09:22:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="916926845"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="916926845"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.25.117])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 09:22:34 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 Dec 2023 09:22:25 -0800
Message-Id: <20231211172226.110-5-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231211172226.110-1-paul.m.stillwell.jr@intel.com>
References: <20231211172226.110-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702315356; x=1733851356;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x5c9rREeK1zhsTQd6Rdof6jvF77oVHnvEhfYNTlS7r0=;
 b=KHLOLc89c0xi7xa5LYJ0I7uq1fXBvBiP/fdbcwXQek2dmZQzpaQXkb60
 18FAgiT8t3MxQ3WXNyXoyEfHF7iRrjRdElDAI/giqZlwwQAuKXy1wlxIY
 3HyGJElgXy5shLcq7DOR7zHBbnvc2VMTbIwBH4sGbbcJjWRqX4jc/SFJv
 zMV0fpmNRUe+CBW6SOBeXnm4xX2Jgh/EI5j8y9WTZsnSdgVGIUJt+U90G
 ktylphHj3Z6HuF+SwKSK8OU8k5wWWM3bkTRtKlJlPsfAW5avRHJcUeJBd
 4lI82miMGCjBbK8WZx+sJG3J/OjvmG15womihL+opouHq5cvW8gzgCvVG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KHLOLc89
Subject: [Intel-wired-lan] [PATCH net-next v19 4/5] ice: add ability to read
 and configure FW log data
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
driver then they can write any value to the 'data' file and that will clear
the data. An example is:

  # echo 34 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/data

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
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 218 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 148 +++++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  22 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  29 +++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 6 files changed, 419 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 82139e0ede6a..6a5e974a1776 100644
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
index d3acf70ef20d..b0fa1db4c43d 100644
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
@@ -393,6 +404,207 @@ static const struct file_operations ice_debugfs_enable_fops = {
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
+	char user_val[5], *cmd_buf;
+	ssize_t ret;
+	int index;
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
+	if (!sscanf(cmd_buf, "%s", user_val))
+		return -EINVAL;
+
+	index = sysfs_match_string(ice_fwlog_log_size, user_val);
+
+	if (index < 0) {
+		dev_info(dev, "Invalid log size '%s'. The value must be one of 128K, 256K, 512K, 1M, 2M\n",
+			 user_val);
+		ret = -EINVAL;
+		goto log_size_write_error;
+	} else if (hw->fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
+		dev_info(dev, "FW logging is currently running. Please disable FW logging to change log_size\n");
+		ret = -EINVAL;
+		goto log_size_write_error;
+	}
+
+	/* free all the buffers and the tracking info and resize */
+	ice_fwlog_realloc_rings(hw, index);
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
+	struct ice_pf *pf = filp->private_data;
+	struct ice_hw *hw = &pf->hw;
+	int data_copied = 0;
+	bool done = false;
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
+
+	/* don't allow partial writes */
+	if (*ppos != 0)
+		return 0;
+
+	/* any value is allowed to clear the buffer so no need to even look at
+	 * what the value is
+	 */
+	if (!(hw->fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED)) {
+		hw->fwlog_ring.head = 0;
+		hw->fwlog_ring.tail = 0;
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
 /**
  * ice_debugfs_fwlog_init - setup the debugfs directory
  * @pf: the ice that is starting up
@@ -449,6 +661,12 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
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
index 4155b1d82b13..92b5dac481cd 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -1,10 +1,128 @@
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
+	int i, nr_bytes;
+	u8 *mem;
+
+	nr_bytes = rings->size * ICE_AQ_MAX_BUF_LEN;
+	mem = vzalloc(nr_bytes);
+	if (!mem)
+		return -ENOMEM;
+
+	for (i = 0; i < rings->size; i++) {
+		struct ice_fwlog_data *ring = &rings->rings[i];
+
+		ring->data_size = ICE_AQ_MAX_BUF_LEN;
+		ring->data = mem;
+		mem += ICE_AQ_MAX_BUF_LEN;
+	}
+
+	return 0;
+}
+
+static void ice_fwlog_free_ring_buffs(struct ice_fwlog_ring *rings)
+{
+	int i;
+
+	for (i = 0; i < rings->size; i++) {
+		struct ice_fwlog_data *ring = &rings->rings[i];
+
+		/* the first ring is the base memory for the whole range so
+		 * free it
+		 */
+		if (!i)
+			vfree(ring->data);
+
+		ring->data = NULL;
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
+	if (!ring.rings)
+		return;
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
@@ -14,16 +132,39 @@
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
@@ -64,6 +205,11 @@ void ice_fwlog_deinit(struct ice_hw *hw)
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
index 686e476a59d5..70f02361321e 100644
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
index 99d5827015e7..e1ded29ca59f 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -883,6 +883,7 @@ struct ice_hw {
 
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

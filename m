Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3B81E6B5C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 21:43:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 926E48921A;
	Thu, 28 May 2020 19:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yRii7zuFNSEB; Thu, 28 May 2020 19:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B79789197;
	Thu, 28 May 2020 19:43:52 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CDAD61BF9B9
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C918E8803D
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xtNWYyJFM0i3 for <intel-wired-lan@osuosl.org>;
 Thu, 28 May 2020 19:43:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9BFBF8819D
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:44 +0000 (UTC)
IronPort-SDR: 0NESE8pUe0WRbp+AoevSeoZO5rNdnHpbBel1Uty2wK4zJaBXXxuim3D7XIoRkaenBFMPcd//wO
 mtNPvDi01f6g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 12:43:44 -0700
IronPort-SDR: cef37uIOJJavIlJj+BdT8m+wOOffXXhWQ0ruyftcvkEp67Sh3cB1XQfYJsWUk9/aRpRG+Kfl9R
 kwDOhySw7CMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="302585286"
Received: from jkoshman-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.154.131])
 by fmsmga002.fm.intel.com with ESMTP; 28 May 2020 12:43:44 -0700
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 28 May 2020 12:43:41 -0700
Message-Id: <20200528194342.3495-14-ranjani.sridharan@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
References: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
Subject: [Intel-wired-lan] [PATCH 13/14] ASoC: SOF: Create client driver for
 IPC test
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
Cc: pierre-louis.bossart@linux.intel.com, fred.oh@linux.intel.com,
 shiraz.saleem@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Create an SOF client driver for IPC flood test. This
driver is used to set up the debugfs entries and the
read/write ops for initiating the IPC flood test that
would be used to measure the min/max/avg response times
for sending IPCs to the DSP.

Signed-off-by: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
Signed-off-by: Fred Oh <fred.oh@linux.intel.com>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
---
 sound/soc/sof/Kconfig               |  10 +
 sound/soc/sof/Makefile              |   6 +-
 sound/soc/sof/sof-ipc-test-client.c | 348 ++++++++++++++++++++++++++++
 3 files changed, 363 insertions(+), 1 deletion(-)
 create mode 100644 sound/soc/sof/sof-ipc-test-client.c

diff --git a/sound/soc/sof/Kconfig b/sound/soc/sof/Kconfig
index 664af8cbacea..9cc76951cfc6 100644
--- a/sound/soc/sof/Kconfig
+++ b/sound/soc/sof/Kconfig
@@ -190,6 +190,16 @@ config SND_SOC_SOF_DEBUG_IPC_FLOOD_TEST
 	  Say Y if you want to enable IPC flood test.
 	  If unsure, select "N".
 
+config SND_SOC_SOF_DEBUG_IPC_FLOOD_TEST_CLIENT
+	tristate "SOF enable IPC flood test client"
+	depends on SND_SOC_SOF_CLIENT
+	help
+	  This option enables a separate client device for IPC flood test
+	  which can be used to flood the DSP with test IPCs and gather stats
+	  about response times.
+	  Say Y if you want to enable IPC flood test.
+	  If unsure, select "N".
+
 config SND_SOC_SOF_DEBUG_RETAIN_DSP_CONTEXT
 	bool "SOF retain DSP context on any FW exceptions"
 	help
diff --git a/sound/soc/sof/Makefile b/sound/soc/sof/Makefile
index 35d6803caf38..bff97ff421b1 100644
--- a/sound/soc/sof/Makefile
+++ b/sound/soc/sof/Makefile
@@ -9,16 +9,20 @@ snd-sof-pci-objs := sof-pci-dev.o
 snd-sof-acpi-objs := sof-acpi-dev.o
 snd-sof-of-objs := sof-of-dev.o
 
+snd-sof-ipc-test-objs := sof-ipc-test-client.o
+
 snd-sof-nocodec-objs := nocodec.o
 
+
 obj-$(CONFIG_SND_SOC_SOF) += snd-sof.o
 obj-$(CONFIG_SND_SOC_SOF_NOCODEC) += snd-sof-nocodec.o
 
-
 obj-$(CONFIG_SND_SOC_SOF_ACPI) += snd-sof-acpi.o
 obj-$(CONFIG_SND_SOC_SOF_OF) += snd-sof-of.o
 obj-$(CONFIG_SND_SOC_SOF_PCI) += snd-sof-pci.o
 
+obj-$(CONFIG_SND_SOC_SOF_DEBUG_IPC_FLOOD_TEST_CLIENT) += snd-sof-ipc-test.o
+
 obj-$(CONFIG_SND_SOC_SOF_INTEL_TOPLEVEL) += intel/
 obj-$(CONFIG_SND_SOC_SOF_IMX_TOPLEVEL) += imx/
 obj-$(CONFIG_SND_SOC_SOF_XTENSA) += xtensa/
diff --git a/sound/soc/sof/sof-ipc-test-client.c b/sound/soc/sof/sof-ipc-test-client.c
new file mode 100644
index 000000000000..3b757ba504aa
--- /dev/null
+++ b/sound/soc/sof/sof-ipc-test-client.c
@@ -0,0 +1,348 @@
+// SPDX-License-Identifier: GPL-2.0-only
+//
+// Copyright(c) 2020 Intel Corporation. All rights reserved.
+//
+// Author: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
+//
+
+#include <linux/completion.h>
+#include <linux/debugfs.h>
+#include <linux/ktime.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/pm_runtime.h>
+#include <linux/slab.h>
+#include <linux/uaccess.h>
+#include <linux/virtual_bus.h>
+#include <sound/sof/header.h>
+#include "sof-client.h"
+
+#define MAX_IPC_FLOOD_DURATION_MS 1000
+#define MAX_IPC_FLOOD_COUNT 10000
+#define IPC_FLOOD_TEST_RESULT_LEN 512
+#define SOF_IPC_CLIENT_SUSPEND_DELAY_MS 3000
+
+struct sof_ipc_client_data {
+	struct dentry *dfs_root;
+	char *buf;
+};
+
+/* helper function to perform the flood test */
+static int sof_debug_ipc_flood_test(struct sof_client_dev *cdev,
+				    bool flood_duration_test,
+				    unsigned long ipc_duration_ms,
+				    unsigned long ipc_count)
+{
+	struct sof_ipc_client_data *ipc_client_data = cdev->data;
+	struct device *dev = &cdev->vdev.dev;
+	struct sof_ipc_cmd_hdr hdr;
+	struct sof_ipc_reply reply;
+	u64 min_response_time = U64_MAX;
+	u64 avg_response_time = 0;
+	u64 max_response_time = 0;
+	ktime_t cur = ktime_get();
+	ktime_t test_end;
+	int i = 0;
+	int ret = 0;
+
+	/* configure test IPC */
+	hdr.cmd = SOF_IPC_GLB_TEST_MSG | SOF_IPC_TEST_IPC_FLOOD;
+	hdr.size = sizeof(hdr);
+
+	/* set test end time for duration flood test */
+	test_end = ktime_get_ns() + ipc_duration_ms * NSEC_PER_MSEC;
+
+	/* send test IPC's */
+	for (i = 0;
+	     flood_duration_test ? ktime_to_ns(cur) < test_end : i < ipc_count;
+	     i++) {
+		ktime_t start;
+		u64 ipc_response_time;
+
+		start = ktime_get();
+		ret = sof_client_ipc_tx_message(cdev, hdr.cmd,
+						&hdr, hdr.size, &reply,
+						sizeof(reply));
+		if (ret < 0)
+			break;
+		cur = ktime_get();
+
+		/* compute min and max response times */
+		ipc_response_time = ktime_to_ns(ktime_sub(cur, start));
+		min_response_time = min(min_response_time, ipc_response_time);
+		max_response_time = max(max_response_time, ipc_response_time);
+
+		/* sum up response times */
+		avg_response_time += ipc_response_time;
+	}
+
+	if (ret < 0)
+		dev_err(dev, "error: ipc flood test failed at %d iterations\n",
+			i);
+
+	/* return if the first IPC fails */
+	if (!i)
+		return ret;
+
+	/* compute average response time */
+	DIV_ROUND_CLOSEST(avg_response_time, i);
+
+	/* clear previous test output */
+	memset(ipc_client_data->buf, 0, IPC_FLOOD_TEST_RESULT_LEN);
+
+	if (flood_duration_test) {
+		dev_dbg(dev, "IPC Flood test duration: %lums\n",
+			ipc_duration_ms);
+		snprintf(ipc_client_data->buf, IPC_FLOOD_TEST_RESULT_LEN,
+			 "IPC Flood test duration: %lums\n", ipc_duration_ms);
+	}
+
+	dev_dbg(dev,
+		"IPC Flood count: %d, Avg response time: %lluns\n",
+		i, avg_response_time);
+	dev_dbg(dev, "Max response time: %lluns\n",
+		max_response_time);
+	dev_dbg(dev, "Min response time: %lluns\n",
+		min_response_time);
+
+	/* format output string and save test results */
+	snprintf(ipc_client_data->buf + strlen(ipc_client_data->buf),
+		 IPC_FLOOD_TEST_RESULT_LEN - strlen(ipc_client_data->buf),
+		 "IPC Flood count: %d\nAvg response time: %lluns\n",
+		 i, avg_response_time);
+
+	snprintf(ipc_client_data->buf + strlen(ipc_client_data->buf),
+		 IPC_FLOOD_TEST_RESULT_LEN - strlen(ipc_client_data->buf),
+		 "Max response time: %lluns\nMin response time: %lluns\n",
+		 max_response_time, min_response_time);
+
+	return ret;
+}
+
+/*
+ * Writing to the debugfs entry initiates the IPC flood test based on
+ * the IPC count or the duration specified by the user.
+ */
+static ssize_t sof_ipc_dfsentry_write(struct file *file,
+				      const char __user *buffer,
+				      size_t count, loff_t *ppos)
+{
+	struct dentry *dentry = file->f_path.dentry;
+	struct sof_client_dev *cdev = file->private_data;
+	struct device *dev = &cdev->vdev.dev;
+	unsigned long ipc_duration_ms = 0;
+	bool flood_duration_test;
+	unsigned long ipc_count = 0;
+	char *string;
+	size_t size;
+	int err;
+	int ret;
+
+	string = kzalloc(count, GFP_KERNEL);
+	if (!string)
+		return -ENOMEM;
+
+	size = simple_write_to_buffer(string, count, ppos, buffer, count);
+
+	flood_duration_test = !strcmp(dentry->d_name.name,
+				      "ipc_flood_duration_ms");
+
+	/* set test completion criterion */
+	ret = flood_duration_test ? kstrtoul(string, 0, &ipc_duration_ms) :
+			kstrtoul(string, 0, &ipc_count);
+	if (ret < 0)
+		goto out;
+
+	/* limit max duration/ipc count for flood test */
+	if (flood_duration_test) {
+		if (!ipc_duration_ms) {
+			ret = size;
+			goto out;
+		}
+
+		ipc_duration_ms = min_t(unsigned long, ipc_duration_ms,
+					MAX_IPC_FLOOD_DURATION_MS);
+	} else {
+		if (!ipc_count) {
+			ret = size;
+			goto out;
+		}
+
+		ipc_count = min_t(unsigned long, ipc_count,
+				  MAX_IPC_FLOOD_COUNT);
+	}
+
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0) {
+		dev_err_ratelimited(dev,
+				    "error: debugfs write failed to resume %d\n",
+				    ret);
+		pm_runtime_put_noidle(dev);
+		goto out;
+	}
+
+	/* flood test */
+	ret = sof_debug_ipc_flood_test(cdev, flood_duration_test,
+				       ipc_duration_ms, ipc_count);
+
+	pm_runtime_mark_last_busy(dev);
+	err = pm_runtime_put_autosuspend(dev);
+	if (err < 0)
+		dev_err_ratelimited(dev,
+				    "error: debugfs write failed to idle %d\n",
+				    err);
+
+	/* return size if test is successful */
+	if (ret >= 0)
+		ret = size;
+out:
+	kfree(string);
+	return ret;
+}
+
+/* return the result of the last IPC flood test */
+static ssize_t sof_ipc_dfsentry_read(struct file *file, char __user *buffer,
+				     size_t count, loff_t *ppos)
+{
+	struct sof_client_dev *cdev = file->private_data;
+	struct sof_ipc_client_data *ipc_client_data = cdev->data;
+	size_t size_ret;
+
+	if (*ppos)
+		return 0;
+
+	/* return results of the last IPC test */
+	count = strlen(ipc_client_data->buf);
+	size_ret = copy_to_user(buffer, ipc_client_data->buf, count);
+	if (size_ret)
+		return -EFAULT;
+
+	*ppos += count;
+	return count;
+}
+
+static const struct file_operations sof_ipc_dfs_fops = {
+	.open = simple_open,
+	.read = sof_ipc_dfsentry_read,
+	.llseek = default_llseek,
+	.write = sof_ipc_dfsentry_write,
+};
+
+/*
+ * The IPC test client creates a couple of debugfs entries that will be used
+ * flood tests. Users can write to these entries to execute the IPC flood test
+ * by specifying either the number of IPCs to flood the DSP with or the duration
+ * (in ms) for which the DSP should be flooded with test IPCs. At the
+ * end of each test, the average, min and max response times are reported back.
+ * The results of the last flood test can be accessed by reading the debugfs
+ * entries.
+ */
+static int sof_ipc_test_probe(struct virtbus_device *vdev)
+{
+	struct sof_client_dev *cdev = virtbus_dev_to_sof_client_dev(vdev);
+	struct sof_ipc_client_data *ipc_client_data;
+
+	/*
+	 * The virtbus device has a usage count of 0 even before runtime PM
+	 * is enabled. So, increment the usage count to let the device
+	 * suspend after probe is complete.
+	 */
+	pm_runtime_get_noresume(&vdev->dev);
+
+	/* allocate memory for client data */
+	ipc_client_data = devm_kzalloc(&vdev->dev, sizeof(*ipc_client_data),
+				       GFP_KERNEL);
+	if (!ipc_client_data)
+		return -ENOMEM;
+
+	ipc_client_data->buf = devm_kzalloc(&vdev->dev,
+					    IPC_FLOOD_TEST_RESULT_LEN,
+					    GFP_KERNEL);
+	if (!ipc_client_data->buf)
+		return -ENOMEM;
+
+	cdev->data = ipc_client_data;
+
+	/* create debugfs root folder with device name under parent SOF dir */
+	ipc_client_data->dfs_root =
+		debugfs_create_dir(dev_name(&vdev->dev),
+				   sof_client_get_debugfs_root(cdev));
+
+	/* create read-write ipc_flood_count debugfs entry */
+	debugfs_create_file("ipc_flood_count", 0644, ipc_client_data->dfs_root,
+			    cdev, &sof_ipc_dfs_fops);
+
+	/* create read-write ipc_flood_duration_ms debugfs entry */
+	debugfs_create_file("ipc_flood_duration_ms", 0644,
+			    ipc_client_data->dfs_root,
+			    cdev, &sof_ipc_dfs_fops);
+
+	/* enable runtime PM */
+	pm_runtime_set_autosuspend_delay(&vdev->dev,
+					 SOF_IPC_CLIENT_SUSPEND_DELAY_MS);
+	pm_runtime_use_autosuspend(&vdev->dev);
+	pm_runtime_set_active(&vdev->dev);
+	pm_runtime_enable(&vdev->dev);
+	pm_runtime_mark_last_busy(&vdev->dev);
+	pm_runtime_put_autosuspend(&vdev->dev);
+
+	/* connect client dev with SOF core */
+	cdev->connect(vdev);
+
+	return 0;
+}
+
+static int sof_ipc_test_cleanup(struct virtbus_device *vdev)
+{
+	struct sof_client_dev *cdev = virtbus_dev_to_sof_client_dev(vdev);
+	struct sof_ipc_client_data *ipc_client_data = cdev->data;
+
+	pm_runtime_disable(&vdev->dev);
+
+	/* disconnect client dev from SOF core */
+	cdev->disconnect(vdev);
+
+	debugfs_remove_recursive(ipc_client_data->dfs_root);
+
+	return 0;
+}
+
+static int sof_ipc_test_remove(struct virtbus_device *vdev)
+{
+	return sof_ipc_test_cleanup(vdev);
+}
+
+static void sof_ipc_test_shutdown(struct virtbus_device *vdev)
+{
+	sof_ipc_test_cleanup(vdev);
+}
+
+static const struct virtbus_device_id sof_ipc_virtbus_id_table[] = {
+	{.name = "sof-ipc-test"},
+	{ },
+};
+MODULE_DEVICE_TABLE(virtbus, sof_ipc_virtbus_id_table);
+
+/*
+ * No need for driver pm_ops as the generic pm callbacks in the virtual bus
+ * type are enough to ensure that the parent SOF device resumes to bring
+ * the DSP back to D0.
+ */
+static struct sof_client_drv sof_ipc_test_client_drv = {
+	.name = "sof-ipc-test-client-drv",
+	.virtbus_drv = {
+		.driver = {
+			.name = "sof-ipc-test-virtbus-drv",
+		},
+		.id_table = sof_ipc_virtbus_id_table,
+		.probe = sof_ipc_test_probe,
+		.remove = sof_ipc_test_remove,
+		.shutdown = sof_ipc_test_shutdown,
+	},
+};
+
+module_sof_client_driver(sof_ipc_test_client_drv);
+
+MODULE_DESCRIPTION("SOF IPC Test Client Driver");
+MODULE_LICENSE("GPL v2");
+MODULE_IMPORT_NS(SND_SOC_SOF_CLIENT);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

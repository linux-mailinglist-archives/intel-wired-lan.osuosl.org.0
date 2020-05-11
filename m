Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7F81CE5C9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2020 22:42:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E13A220379;
	Mon, 11 May 2020 20:41:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZmglDvZqRJ+S; Mon, 11 May 2020 20:41:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 417B720513;
	Mon, 11 May 2020 20:41:53 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 306451BF396
 for <intel-wired-lan@osuosl.org>; Mon, 11 May 2020 20:41:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CE5C882AF
 for <intel-wired-lan@osuosl.org>; Mon, 11 May 2020 20:41:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QLivDzUQmVdK for <intel-wired-lan@osuosl.org>;
 Mon, 11 May 2020 20:41:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0F96E882B6
 for <intel-wired-lan@osuosl.org>; Mon, 11 May 2020 20:41:47 +0000 (UTC)
IronPort-SDR: vK0GS82tLDyz93yDTlsDEaEORJXdCpY4lNtRF5m0IPFCFu1FgqSjM0COm4XvtbWGsF7ndu6mAs
 b8ht0vHQMLpw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 13:41:46 -0700
IronPort-SDR: 41AB1vVF69SOxQeo+is6JRf0OoH9+HwdWc113SpfsZzW3VkujtAZ5AMrExU54jiPOFTScFCp17
 +AKO0Mb1pRRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,381,1583222400"; d="scan'208";a="306281698"
Received: from ajgalle-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.254.179.28])
 by FMSMGA003.fm.intel.com with ESMTP; 11 May 2020 13:41:46 -0700
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 11 May 2020 13:41:44 -0700
Message-Id: <20200511204146.19176-2-ranjani.sridharan@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511204146.19176-1-ranjani.sridharan@linux.intel.com>
References: <20200511204146.19176-1-ranjani.sridharan@linux.intel.com>
Subject: [Intel-wired-lan] [PATCH 1/3] ASoC: SOF: Introduce descriptors for
 SOF client
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
Cc: Fred Oh <fred.oh@linux.intel.com>, pierre-louis.bossart@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A client in the SOF (Sound Open Firmware) context is a
device that needs to communicate with the DSP via IPC
messages. The SOF core is responsible for serializing the
IPC messages to the DSP from the different clients. One
example of an SOF client would be an IPC test client that
floods the DSP with test IPC messages to validate if the
serialization works as expected. Multi-client support will
also add the ability to split the existing audio cards
into multiple ones, so as to e.g. to deal with HDMI with a
dedicated client instead of adding HDMI to all cards.

This patch introduces descriptors for SOF client driver
and SOF client device along with APIs for registering
and unregistering a SOF client driver, sending IPCs from
a client device and accessing the SOF core debugfs root entry.

Along with this, add a couple of new members to struct
snd_sof_dev that will be used for maintaining the list of
clients.

Signed-off-by: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
Signed-off-by: Fred Oh <fred.oh@linux.intel.com>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
---
 sound/soc/sof/Kconfig      | 20 +++++++++
 sound/soc/sof/Makefile     |  1 +
 sound/soc/sof/core.c       |  2 +
 sound/soc/sof/sof-client.c | 91 ++++++++++++++++++++++++++++++++++++++
 sound/soc/sof/sof-client.h | 84 +++++++++++++++++++++++++++++++++++
 sound/soc/sof/sof-priv.h   |  6 +++
 6 files changed, 204 insertions(+)
 create mode 100644 sound/soc/sof/sof-client.c
 create mode 100644 sound/soc/sof/sof-client.h

diff --git a/sound/soc/sof/Kconfig b/sound/soc/sof/Kconfig
index 4dda4b62509f..609989daf85b 100644
--- a/sound/soc/sof/Kconfig
+++ b/sound/soc/sof/Kconfig
@@ -50,6 +50,25 @@ config SND_SOC_SOF_DEBUG_PROBES
 	  Say Y if you want to enable probes.
 	  If unsure, select "N".
 
+config SND_SOC_SOF_CLIENT
+	tristate
+	select VIRTUAL_BUS
+	help
+	  This option is not user-selectable but automagically handled by
+	  'select' statements at a higher level
+
+config SND_SOC_SOF_CLIENT_SUPPORT
+	bool "SOF enable clients"
+	depends on SND_SOC_SOF
+	help
+	  This adds support for client support with Sound Open Firmware.
+	  The SOF driver adds the capability to separate out the debug
+	  functionality for IPC tests, probes etc. into separate client
+	  devices. This option would also allow adding client devices
+	  based on DSP FW capabilities and ACPI/OF device information.
+	  Say Y if you want to enable clients with SOF.
+	  If unsure select "N".
+
 config SND_SOC_SOF_DEVELOPER_SUPPORT
 	bool "SOF developer options support"
 	depends on EXPERT
@@ -186,6 +205,7 @@ endif ## SND_SOC_SOF_DEVELOPER_SUPPORT
 
 config SND_SOC_SOF
 	tristate
+	select SND_SOC_SOF_CLIENT if SND_SOC_SOF_CLIENT_SUPPORT
 	select SND_SOC_TOPOLOGY
 	select SND_SOC_SOF_NOCODEC if SND_SOC_SOF_NOCODEC_SUPPORT
 	help
diff --git a/sound/soc/sof/Makefile b/sound/soc/sof/Makefile
index 05718dfe6cd2..19d996d78468 100644
--- a/sound/soc/sof/Makefile
+++ b/sound/soc/sof/Makefile
@@ -2,6 +2,7 @@
 
 snd-sof-objs := core.o ops.o loader.o ipc.o pcm.o pm.o debug.o topology.o\
 		control.o trace.o utils.o sof-audio.o
+snd-sof-$(CONFIG_SND_SOC_SOF_CLIENT) += sof-client.o
 snd-sof-$(CONFIG_SND_SOC_SOF_DEBUG_PROBES) += probe.o compress.o
 
 snd-sof-pci-objs := sof-pci-dev.o
diff --git a/sound/soc/sof/core.c b/sound/soc/sof/core.c
index 94a2cb58ab9a..e2880b9264a6 100644
--- a/sound/soc/sof/core.c
+++ b/sound/soc/sof/core.c
@@ -313,8 +313,10 @@ int snd_sof_device_probe(struct device *dev, struct snd_sof_pdata *plat_data)
 	INIT_LIST_HEAD(&sdev->widget_list);
 	INIT_LIST_HEAD(&sdev->dai_list);
 	INIT_LIST_HEAD(&sdev->route_list);
+	INIT_LIST_HEAD(&sdev->client_list);
 	spin_lock_init(&sdev->ipc_lock);
 	spin_lock_init(&sdev->hw_lock);
+	mutex_init(&sdev->client_mutex);
 
 	if (IS_ENABLED(CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE))
 		INIT_WORK(&sdev->probe_work, sof_probe_work);
diff --git a/sound/soc/sof/sof-client.c b/sound/soc/sof/sof-client.c
new file mode 100644
index 000000000000..cd1eb81ae6f3
--- /dev/null
+++ b/sound/soc/sof/sof-client.c
@@ -0,0 +1,91 @@
+// SPDX-License-Identifier: GPL-2.0-only
+//
+// Copyright(c) 2020 Intel Corporation. All rights reserved.
+//
+// Author: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
+//
+
+#include <linux/completion.h>
+#include <linux/debugfs.h>
+#include <linux/device.h>
+#include <linux/errno.h>
+#include <linux/jiffies.h>
+#include <linux/list.h>
+#include <linux/mutex.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+#include <linux/virtual_bus.h>
+#include "sof-client.h"
+#include "sof-priv.h"
+
+static void sof_client_virtdev_release(struct virtbus_device *vdev)
+{
+	struct sof_client_dev *cdev = virtbus_dev_to_sof_client_dev(vdev);
+
+	kfree(cdev);
+}
+
+int sof_client_dev_register(struct snd_sof_dev *sdev,
+			    const char *name)
+{
+	struct sof_client_dev *cdev;
+	struct virtbus_device *vdev;
+	unsigned long time, timeout;
+	int ret;
+
+	cdev = kzalloc(sizeof(*cdev), GFP_KERNEL);
+	if (!cdev)
+		return -ENOMEM;
+
+	cdev->sdev = sdev;
+	init_completion(&cdev->probe_complete);
+	vdev = &cdev->vdev;
+	vdev->name = name;
+	vdev->dev.parent = sdev->dev;
+	vdev->release = sof_client_virtdev_release;
+
+	/*
+	 * Register virtbus device for the client.
+	 * The error path in virtbus_register_device() calls put_device(),
+	 * which will free cdev in the release callback.
+	 */
+	ret = virtbus_register_device(vdev);
+	if (ret < 0)
+		return ret;
+
+	/* make sure the probe is complete before updating client list */
+	timeout = msecs_to_jiffies(SOF_CLIENT_PROBE_TIMEOUT_MS);
+	time = wait_for_completion_timeout(&cdev->probe_complete, timeout);
+	if (!time) {
+		dev_err(sdev->dev, "error: probe of virtbus dev %s timed out\n",
+			name);
+		virtbus_unregister_device(vdev);
+		return -ETIMEDOUT;
+	}
+
+	/* add to list of SOF client devices */
+	mutex_lock(&sdev->client_mutex);
+	list_add(&cdev->list, &sdev->client_list);
+	mutex_unlock(&sdev->client_mutex);
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(sof_client_dev_register, SND_SOC_SOF_CLIENT);
+
+int sof_client_ipc_tx_message(struct sof_client_dev *cdev, u32 header,
+			      void *msg_data, size_t msg_bytes,
+			      void *reply_data, size_t reply_bytes)
+{
+	return sof_ipc_tx_message(cdev->sdev->ipc, header, msg_data, msg_bytes,
+				  reply_data, reply_bytes);
+}
+EXPORT_SYMBOL_NS_GPL(sof_client_ipc_tx_message, SND_SOC_SOF_CLIENT);
+
+struct dentry *sof_client_get_debugfs_root(struct sof_client_dev *cdev)
+{
+	return cdev->sdev->debugfs_root;
+}
+EXPORT_SYMBOL_NS_GPL(sof_client_get_debugfs_root, SND_SOC_SOF_CLIENT);
+
+MODULE_AUTHOR("Ranjani Sridharan <ranjani.sridharan@linux.intel.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/sound/soc/sof/sof-client.h b/sound/soc/sof/sof-client.h
new file mode 100644
index 000000000000..fdc4b1511ffc
--- /dev/null
+++ b/sound/soc/sof/sof-client.h
@@ -0,0 +1,84 @@
+/* SPDX-License-Identifier: (GPL-2.0-only) */
+
+#ifndef __SOUND_SOC_SOF_CLIENT_H
+#define __SOUND_SOC_SOF_CLIENT_H
+
+#include <linux/completion.h>
+#include <linux/debugfs.h>
+#include <linux/device.h>
+#include <linux/device/driver.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/virtual_bus.h>
+
+#define SOF_CLIENT_PROBE_TIMEOUT_MS 2000
+
+struct snd_sof_dev;
+
+enum sof_client_type {
+	SOF_CLIENT_AUDIO,
+	SOF_CLIENT_IPC,
+};
+
+/* SOF client device */
+struct sof_client_dev {
+	struct virtbus_device vdev;
+	struct snd_sof_dev *sdev;
+	struct list_head list;	/* item in SOF core client drv list */
+	struct completion probe_complete;
+	void *data;
+};
+
+/* client-specific ops, all optional */
+struct sof_client_ops {
+	int (*client_ipc_rx)(struct sof_client_dev *cdev, u32 msg_cmd);
+};
+
+struct sof_client_drv {
+	const char *name;
+	enum sof_client_type type;
+	const struct sof_client_ops ops;
+	struct virtbus_driver virtbus_drv;
+};
+
+#define virtbus_dev_to_sof_client_dev(virtbus_dev) \
+	container_of(virtbus_dev, struct sof_client_dev, vdev)
+
+static inline int sof_client_drv_register(struct sof_client_drv *drv)
+{
+	return virtbus_register_driver(&drv->virtbus_drv);
+}
+
+static inline void sof_client_drv_unregister(struct sof_client_drv *drv)
+{
+	virtbus_unregister_driver(&drv->virtbus_drv);
+}
+
+int sof_client_dev_register(struct snd_sof_dev *sdev,
+			    const char *name);
+
+static inline void sof_client_dev_unregister(struct sof_client_dev *cdev)
+{
+	virtbus_unregister_device(&cdev->vdev);
+}
+
+int sof_client_ipc_tx_message(struct sof_client_dev *cdev, u32 header,
+			      void *msg_data, size_t msg_bytes,
+			      void *reply_data, size_t reply_bytes);
+
+struct dentry *sof_client_get_debugfs_root(struct sof_client_dev *cdev);
+
+/**
+ * module_sof_client_driver() - Helper macro for registering an SOF Client
+ * driver
+ * @__sof_client_driver: SOF client driver struct
+ *
+ * Helper macro for SOF client drivers which do not do anything special in
+ * module init/exit. This eliminates a lot of boilerplate. Each module may only
+ * use this macro once, and calling it replaces module_init() and module_exit()
+ */
+#define module_sof_client_driver(__sof_client_driver) \
+	module_driver(__sof_client_driver, sof_client_drv_register, \
+			sof_client_drv_unregister)
+
+#endif
diff --git a/sound/soc/sof/sof-priv.h b/sound/soc/sof/sof-priv.h
index 71a3a61d3e67..bf16809539a8 100644
--- a/sound/soc/sof/sof-priv.h
+++ b/sound/soc/sof/sof-priv.h
@@ -441,6 +441,12 @@ struct snd_sof_dev {
 
 	bool msi_enabled;
 
+	/* list of client devices */
+	struct list_head client_list;
+
+	/* mutex to protect client list */
+	struct mutex client_mutex;
+
 	void *private;			/* core does not touch this */
 };
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD8B1E6B65
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 21:44:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 369CF2154B;
	Thu, 28 May 2020 19:44:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q3-4ix8JoG3z; Thu, 28 May 2020 19:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EBEF621509;
	Thu, 28 May 2020 19:43:51 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8E3A1BF2B5
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A5B878729F
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 22M1v6LfvbTt for <intel-wired-lan@osuosl.org>;
 Thu, 28 May 2020 19:43:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 80F9C872B5
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:44 +0000 (UTC)
IronPort-SDR: 4LGAxHnbzF+jmG4Bk8uz/u0V34uWOthAY2Y0eMJIbw43xVRgSHZnFNNDImy7UMGdteiMBuYKSZ
 g/6VTf2j8WQA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 12:43:44 -0700
IronPort-SDR: GAxuLOdgYsa3p0Y5Ca3Olx7xrFFrNFJicykN2cVsiedGz66EJdB/GrCUkRDOJX3GNQhh2vfvnC
 B4lP/vBBKgpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="302585282"
Received: from jkoshman-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.154.131])
 by fmsmga002.fm.intel.com with ESMTP; 28 May 2020 12:43:44 -0700
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 28 May 2020 12:43:40 -0700
Message-Id: <20200528194342.3495-13-ranjani.sridharan@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
References: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
Subject: [Intel-wired-lan] [PATCH 12/14] ASoC: SOF: Introduce descriptors
 for SOF client
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
 sound/soc/sof/Kconfig      | 19 ++++++++
 sound/soc/sof/Makefile     |  1 +
 sound/soc/sof/core.c       |  2 +
 sound/soc/sof/sof-client.c | 89 ++++++++++++++++++++++++++++++++++++++
 sound/soc/sof/sof-client.h | 79 +++++++++++++++++++++++++++++++++
 sound/soc/sof/sof-priv.h   |  6 +++
 6 files changed, 196 insertions(+)
 create mode 100644 sound/soc/sof/sof-client.c
 create mode 100644 sound/soc/sof/sof-client.h

diff --git a/sound/soc/sof/Kconfig b/sound/soc/sof/Kconfig
index 4dda4b62509f..664af8cbacea 100644
--- a/sound/soc/sof/Kconfig
+++ b/sound/soc/sof/Kconfig
@@ -50,6 +50,24 @@ config SND_SOC_SOF_DEBUG_PROBES
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
+	  This adds support for virtual client devices to separate out the debug
+	  functionality for IPC tests, probes etc. into separate devices. This
+	  option would also allow adding client devices based on DSP FW
+	  capabilities and ACPI/OF device information.
+	  Say Y if you want to enable clients with SOF.
+	  If unsure select "N".
+
 config SND_SOC_SOF_DEVELOPER_SUPPORT
 	bool "SOF developer options support"
 	depends on EXPERT
@@ -186,6 +204,7 @@ endif ## SND_SOC_SOF_DEVELOPER_SUPPORT
 
 config SND_SOC_SOF
 	tristate
+	select SND_SOC_SOF_CLIENT if SND_SOC_SOF_CLIENT_SUPPORT
 	select SND_SOC_TOPOLOGY
 	select SND_SOC_SOF_NOCODEC if SND_SOC_SOF_NOCODEC_SUPPORT
 	help
diff --git a/sound/soc/sof/Makefile b/sound/soc/sof/Makefile
index 05718dfe6cd2..35d6803caf38 100644
--- a/sound/soc/sof/Makefile
+++ b/sound/soc/sof/Makefile
@@ -2,6 +2,7 @@
 
 snd-sof-objs := core.o ops.o loader.o ipc.o pcm.o pm.o debug.o topology.o\
 		control.o trace.o utils.o sof-audio.o
+snd-sof-$(CONFIG_SND_SOC_SOF_CLIENT) := sof-client.o
 snd-sof-$(CONFIG_SND_SOC_SOF_DEBUG_PROBES) += probe.o compress.o
 
 snd-sof-pci-objs := sof-pci-dev.o
diff --git a/sound/soc/sof/core.c b/sound/soc/sof/core.c
index 339c4930b0c0..3a7ea7be70fa 100644
--- a/sound/soc/sof/core.c
+++ b/sound/soc/sof/core.c
@@ -314,8 +314,10 @@ int snd_sof_device_probe(struct device *dev, struct snd_sof_pdata *plat_data)
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
index 000000000000..e0230075ccfb
--- /dev/null
+++ b/sound/soc/sof/sof-client.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0-only
+//
+// Copyright(c) 2020 Intel Corporation. All rights reserved.
+//
+// Author: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
+//
+
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
+static void sof_client_connect(struct virtbus_device *vdev)
+{
+	struct sof_client_dev *cdev = virtbus_dev_to_sof_client_dev(vdev);
+	struct snd_sof_dev *sdev = cdev->sdev;
+
+	/* add to list of SOF client devices */
+	mutex_lock(&sdev->client_mutex);
+	list_add(&cdev->list, &sdev->client_list);
+	mutex_unlock(&sdev->client_mutex);
+}
+
+static void sof_client_disconnect(struct virtbus_device *vdev)
+{
+	struct sof_client_dev *cdev = virtbus_dev_to_sof_client_dev(vdev);
+	struct snd_sof_dev *sdev = cdev->sdev;
+
+	/* remove from list of SOF client devices */
+	mutex_lock(&sdev->client_mutex);
+	list_del(&cdev->list);
+	mutex_unlock(&sdev->client_mutex);
+}
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
+
+	cdev = kzalloc(sizeof(*cdev), GFP_KERNEL);
+	if (!cdev)
+		return -ENOMEM;
+
+	cdev->sdev = sdev;
+	cdev->connect = sof_client_connect;
+	cdev->disconnect = sof_client_disconnect;
+	vdev = &cdev->vdev;
+	vdev->match_name = name;
+	vdev->dev.parent = sdev->dev;
+	vdev->release = sof_client_virtdev_release;
+
+	/*
+	 * Register virtbus device for the client.
+	 * The error path in virtbus_register_device() calls put_device(),
+	 * which will free cdev in the release callback.
+	 */
+	return virtbus_register_device(vdev);
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
diff --git a/sound/soc/sof/sof-client.h b/sound/soc/sof/sof-client.h
new file mode 100644
index 000000000000..b390c0d0a698
--- /dev/null
+++ b/sound/soc/sof/sof-client.h
@@ -0,0 +1,79 @@
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
+/* SOF client device */
+struct sof_client_dev {
+	struct virtbus_device vdev;
+	struct snd_sof_dev *sdev;
+	struct list_head list;	/* item in SOF core client drv list */
+	void (*connect)(struct virtbus_device *vdev);
+	void (*disconnect)(struct virtbus_device *vdev);
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
index 9bee2aab750d..2233370a0339 100644
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

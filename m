Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 968871CE5C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2020 22:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51CE78698F;
	Mon, 11 May 2020 20:41:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NrPtkFd-c-8x; Mon, 11 May 2020 20:41:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D4E87869DE;
	Mon, 11 May 2020 20:41:53 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44FF11BF396
 for <intel-wired-lan@osuosl.org>; Mon, 11 May 2020 20:41:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 419388833D
 for <intel-wired-lan@osuosl.org>; Mon, 11 May 2020 20:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JYpGVr4V79rl for <intel-wired-lan@osuosl.org>;
 Mon, 11 May 2020 20:41:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 67780882F7
 for <intel-wired-lan@osuosl.org>; Mon, 11 May 2020 20:41:47 +0000 (UTC)
IronPort-SDR: 7ur92Qx+0TOns68+YZ7Ri1OnA6mvYiwseeTn1iacv0AzvCUurIVo9Yhroj8JqQOD3cVara3O+M
 IQLRpBx6bzHQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 13:41:46 -0700
IronPort-SDR: nGxTdO1P4ZJG1lmIFvyhiSMWI4hp0+kWcmN7LqkLHiUDcydn6VntLdADFc4plvpTudjzQrieJC
 9n8xrPln4a0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,381,1583222400"; d="scan'208";a="306281704"
Received: from ajgalle-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.254.179.28])
 by FMSMGA003.fm.intel.com with ESMTP; 11 May 2020 13:41:46 -0700
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 11 May 2020 13:41:46 -0700
Message-Id: <20200511204146.19176-4-ranjani.sridharan@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511204146.19176-1-ranjani.sridharan@linux.intel.com>
References: <20200511204146.19176-1-ranjani.sridharan@linux.intel.com>
Subject: [Intel-wired-lan] [PATCH 3/3] ASoC: SOF: ops: Add new op for client
 registration
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

Add a new op for registering clients. The clients to be
registered depend on the DSP capabilities and the ACPI/DT
information. For now, we only add 2 IPC test clients that
will be used for run tandem IPC flood tests for all Intel
platforms.

For ACPI platforms, change the Kconfig to select
SND_SOC_SOF_PROBE_WORK_QUEUE to allow the virtbus driver
to probe when the client is registered.

Signed-off-by: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
Signed-off-by: Fred Oh <fred.oh@linux.intel.com>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
---
 sound/soc/sof/core.c        |  8 ++++++++
 sound/soc/sof/intel/Kconfig |  1 +
 sound/soc/sof/intel/apl.c   | 25 +++++++++++++++++++++++++
 sound/soc/sof/intel/bdw.c   | 25 +++++++++++++++++++++++++
 sound/soc/sof/intel/byt.c   | 28 ++++++++++++++++++++++++++++
 sound/soc/sof/intel/cnl.c   | 25 +++++++++++++++++++++++++
 sound/soc/sof/ops.h         | 34 ++++++++++++++++++++++++++++++++++
 sound/soc/sof/sof-priv.h    |  3 +++
 8 files changed, 149 insertions(+)

diff --git a/sound/soc/sof/core.c b/sound/soc/sof/core.c
index e2880b9264a6..db57b97e8536 100644
--- a/sound/soc/sof/core.c
+++ b/sound/soc/sof/core.c
@@ -245,6 +245,12 @@ static int sof_probe_continue(struct snd_sof_dev *sdev)
 	if (plat_data->sof_probe_complete)
 		plat_data->sof_probe_complete(sdev->dev);
 
+	/*
+	 * Register client devices. This can fail but errors cannot be
+	 * propagated.
+	 */
+	snd_sof_register_clients(sdev);
+
 	return 0;
 
 fw_trace_err:
@@ -349,6 +355,7 @@ int snd_sof_device_remove(struct device *dev)
 		cancel_work_sync(&sdev->probe_work);
 
 	if (sdev->fw_state > SOF_FW_BOOT_NOT_STARTED) {
+		snd_sof_unregister_clients(sdev);
 		snd_sof_fw_unload(sdev);
 		snd_sof_ipc_free(sdev);
 		snd_sof_free_debug(sdev);
@@ -382,4 +389,5 @@ EXPORT_SYMBOL(snd_sof_device_remove);
 MODULE_AUTHOR("Liam Girdwood");
 MODULE_DESCRIPTION("Sound Open Firmware (SOF) Core");
 MODULE_LICENSE("Dual BSD/GPL");
+MODULE_IMPORT_NS(SND_SOC_SOF_CLIENT);
 MODULE_ALIAS("platform:sof-audio");
diff --git a/sound/soc/sof/intel/Kconfig b/sound/soc/sof/intel/Kconfig
index 9b3c01072dd8..46e3a17b9bc6 100644
--- a/sound/soc/sof/intel/Kconfig
+++ b/sound/soc/sof/intel/Kconfig
@@ -13,6 +13,7 @@ config SND_SOC_SOF_INTEL_ACPI
 	def_tristate SND_SOC_SOF_ACPI
 	select SND_SOC_SOF_BAYTRAIL  if SND_SOC_SOF_BAYTRAIL_SUPPORT
 	select SND_SOC_SOF_BROADWELL if SND_SOC_SOF_BROADWELL_SUPPORT
+	select SND_SOC_SOF_PROBE_WORK_QUEUE if SND_SOC_SOF_CLIENT
 	help
 	  This option is not user-selectable but automagically handled by
 	  'select' statements at a higher level
diff --git a/sound/soc/sof/intel/apl.c b/sound/soc/sof/intel/apl.c
index 9e29d4fd393a..1f9c25b9ed3d 100644
--- a/sound/soc/sof/intel/apl.c
+++ b/sound/soc/sof/intel/apl.c
@@ -18,6 +18,9 @@
 #include "../sof-priv.h"
 #include "hda.h"
 #include "../sof-audio.h"
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_CLIENT)
+#include "../sof-client.h"
+#endif
 
 static const struct snd_sof_debugfs_map apl_dsp_debugfs[] = {
 	{"hda", HDA_DSP_HDA_BAR, 0, 0x4000, SOF_DEBUGFS_ACCESS_ALWAYS},
@@ -25,6 +28,24 @@ static const struct snd_sof_debugfs_map apl_dsp_debugfs[] = {
 	{"dsp", HDA_DSP_BAR,  0, 0x10000, SOF_DEBUGFS_ACCESS_ALWAYS},
 };
 
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_CLIENT)
+static void apl_register_clients(struct snd_sof_dev *sdev)
+{
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_DEBUG_IPC_FLOOD_TEST_CLIENT)
+	/*
+	 * Register 2 IPC clients to facilitate tandem flood test.
+	 * The device name below is appended with the device ID assigned
+	 * automatically when the virtbus device is registered making
+	 * them unique.
+	 */
+	sof_client_dev_register(sdev, "sof-ipc-test");
+	sof_client_dev_register(sdev, "sof-ipc-test");
+#endif
+}
+#else
+static void apl_register_clients(struct snd_sof_dev *sdev) {}
+#endif
+
 /* apollolake ops */
 const struct snd_sof_dsp_ops sof_apl_ops = {
 	/* probe and remove */
@@ -101,6 +122,9 @@ const struct snd_sof_dsp_ops sof_apl_ops = {
 	.trace_release = hda_dsp_trace_release,
 	.trace_trigger = hda_dsp_trace_trigger,
 
+	/* client register */
+	.register_clients = apl_register_clients,
+
 	/* DAI drivers */
 	.drv		= skl_dai,
 	.num_drv	= SOF_SKL_NUM_DAIS,
@@ -140,3 +164,4 @@ const struct sof_intel_dsp_desc apl_chip_info = {
 	.ssp_base_offset = APL_SSP_BASE_OFFSET,
 };
 EXPORT_SYMBOL_NS(apl_chip_info, SND_SOC_SOF_INTEL_HDA_COMMON);
+MODULE_IMPORT_NS(SND_SOC_SOF_CLIENT);
diff --git a/sound/soc/sof/intel/bdw.c b/sound/soc/sof/intel/bdw.c
index 99fd0bd7276e..96cb88ca9a7c 100644
--- a/sound/soc/sof/intel/bdw.c
+++ b/sound/soc/sof/intel/bdw.c
@@ -18,6 +18,9 @@
 #include "../ops.h"
 #include "shim.h"
 #include "../sof-audio.h"
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_CLIENT)
+#include "../sof-client.h"
+#endif
 
 /* BARs */
 #define BDW_DSP_BAR 0
@@ -563,6 +566,24 @@ static void bdw_set_mach_params(const struct snd_soc_acpi_mach *mach,
 	mach_params->platform = dev_name(dev);
 }
 
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_CLIENT)
+static void bdw_register_clients(struct snd_sof_dev *sdev)
+{
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_DEBUG_IPC_FLOOD_TEST_CLIENT)
+	/*
+	 * Register 2 IPC clients to facilitate tandem flood test.
+	 * The device name below is appended with the device ID assigned
+	 * automatically when the virtbus device is registered making
+	 * them unique.
+	 */
+	sof_client_dev_register(sdev, "sof-ipc-test");
+	sof_client_dev_register(sdev, "sof-ipc-test");
+#endif
+}
+#else
+static void bdw_register_clients(struct snd_sof_dev *sdev) {}
+#endif
+
 /* Broadwell DAIs */
 static struct snd_soc_dai_driver bdw_dai[] = {
 {
@@ -638,6 +659,9 @@ const struct snd_sof_dsp_ops sof_bdw_ops = {
 	/*Firmware loading */
 	.load_firmware	= snd_sof_load_firmware_memcpy,
 
+	/* client register */
+	.register_clients = bdw_register_clients,
+
 	/* DAI drivers */
 	.drv = bdw_dai,
 	.num_drv = ARRAY_SIZE(bdw_dai),
@@ -662,3 +686,4 @@ EXPORT_SYMBOL_NS(bdw_chip_info, SND_SOC_SOF_BROADWELL);
 MODULE_LICENSE("Dual BSD/GPL");
 MODULE_IMPORT_NS(SND_SOC_SOF_INTEL_HIFI_EP_IPC);
 MODULE_IMPORT_NS(SND_SOC_SOF_XTENSA);
+MODULE_IMPORT_NS(SND_SOC_SOF_CLIENT);
diff --git a/sound/soc/sof/intel/byt.c b/sound/soc/sof/intel/byt.c
index f872bb1f2682..37ec979612d1 100644
--- a/sound/soc/sof/intel/byt.c
+++ b/sound/soc/sof/intel/byt.c
@@ -19,6 +19,9 @@
 #include "shim.h"
 #include "../sof-audio.h"
 #include "../../intel/common/soc-intel-quirks.h"
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_CLIENT)
+#include "../sof-client.h"
+#endif
 
 /* DSP memories */
 #define IRAM_OFFSET		0x0C0000
@@ -779,6 +782,24 @@ static int byt_acpi_probe(struct snd_sof_dev *sdev)
 	return ret;
 }
 
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_CLIENT)
+static void byt_register_clients(struct snd_sof_dev *sdev)
+{
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_DEBUG_IPC_FLOOD_TEST_CLIENT)
+	/*
+	 * Register 2 IPC clients to facilitate tandem flood test.
+	 * The device name below is appended with the device ID assigned
+	 * automatically when the virtbus device is registered making
+	 * them unique.
+	 */
+	sof_client_dev_register(sdev, "sof-ipc-test");
+	sof_client_dev_register(sdev, "sof-ipc-test");
+#endif
+}
+#else
+static void byt_register_clients(struct snd_sof_dev *sdev) {}
+#endif
+
 /* baytrail ops */
 const struct snd_sof_dsp_ops sof_byt_ops = {
 	/* device init */
@@ -832,6 +853,9 @@ const struct snd_sof_dsp_ops sof_byt_ops = {
 	/*Firmware loading */
 	.load_firmware	= snd_sof_load_firmware_memcpy,
 
+	/* client register */
+	.register_clients = byt_register_clients,
+
 	/* DAI drivers */
 	.drv = byt_dai,
 	.num_drv = 3, /* we have only 3 SSPs on byt*/
@@ -906,6 +930,9 @@ const struct snd_sof_dsp_ops sof_cht_ops = {
 	/*Firmware loading */
 	.load_firmware	= snd_sof_load_firmware_memcpy,
 
+	/* client register */
+	.register_clients = byt_register_clients,
+
 	/* DAI drivers */
 	.drv = byt_dai,
 	/* all 6 SSPs may be available for cherrytrail */
@@ -933,3 +960,4 @@ EXPORT_SYMBOL_NS(cht_chip_info, SND_SOC_SOF_BAYTRAIL);
 MODULE_LICENSE("Dual BSD/GPL");
 MODULE_IMPORT_NS(SND_SOC_SOF_INTEL_HIFI_EP_IPC);
 MODULE_IMPORT_NS(SND_SOC_SOF_XTENSA);
+MODULE_IMPORT_NS(SND_SOC_SOF_CLIENT);
diff --git a/sound/soc/sof/intel/cnl.c b/sound/soc/sof/intel/cnl.c
index 16db0f50d139..82ee4e5f485b 100644
--- a/sound/soc/sof/intel/cnl.c
+++ b/sound/soc/sof/intel/cnl.c
@@ -19,6 +19,9 @@
 #include "hda.h"
 #include "hda-ipc.h"
 #include "../sof-audio.h"
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_CLIENT)
+#include "../sof-client.h"
+#endif
 
 static const struct snd_sof_debugfs_map cnl_dsp_debugfs[] = {
 	{"hda", HDA_DSP_HDA_BAR, 0, 0x4000, SOF_DEBUGFS_ACCESS_ALWAYS},
@@ -231,6 +234,24 @@ static void cnl_ipc_dump(struct snd_sof_dev *sdev)
 		hipcida, hipctdr, hipcctl);
 }
 
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_CLIENT)
+static void cnl_register_clients(struct snd_sof_dev *sdev)
+{
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_DEBUG_IPC_FLOOD_TEST_CLIENT)
+	/*
+	 * Register 2 IPC clients to facilitate tandem flood test.
+	 * The device name below is appended with the device ID assigned
+	 * automatically when the virtbus device is registered making
+	 * them unique.
+	 */
+	sof_client_dev_register(sdev, "sof-ipc-test");
+	sof_client_dev_register(sdev, "sof-ipc-test");
+#endif
+}
+#else
+static void cnl_register_clients(struct snd_sof_dev *sdev) {}
+#endif
+
 /* cannonlake ops */
 const struct snd_sof_dsp_ops sof_cnl_ops = {
 	/* probe and remove */
@@ -307,6 +328,9 @@ const struct snd_sof_dsp_ops sof_cnl_ops = {
 	.trace_release = hda_dsp_trace_release,
 	.trace_trigger = hda_dsp_trace_trigger,
 
+	/* client register */
+	.register_clients = cnl_register_clients,
+
 	/* DAI drivers */
 	.drv		= skl_dai,
 	.num_drv	= SOF_SKL_NUM_DAIS,
@@ -417,3 +441,4 @@ const struct sof_intel_dsp_desc jsl_chip_info = {
 	.ssp_base_offset = CNL_SSP_BASE_OFFSET,
 };
 EXPORT_SYMBOL_NS(jsl_chip_info, SND_SOC_SOF_INTEL_HDA_COMMON);
+MODULE_IMPORT_NS(SND_SOC_SOF_CLIENT);
diff --git a/sound/soc/sof/ops.h b/sound/soc/sof/ops.h
index b21632f5511a..97066247a22c 100644
--- a/sound/soc/sof/ops.h
+++ b/sound/soc/sof/ops.h
@@ -14,9 +14,14 @@
 #include <linux/device.h>
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/mutex.h>
 #include <linux/types.h>
 #include <sound/pcm.h>
 #include "sof-priv.h"
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_CLIENT)
+#include "sof-client.h"
+#endif
 
 #define sof_ops(sdev) \
 	((sdev)->pdata->desc->ops)
@@ -470,6 +475,35 @@ snd_sof_set_mach_params(const struct snd_soc_acpi_mach *mach,
 		sof_ops(sdev)->set_mach_params(mach, dev);
 }
 
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_CLIENT)
+static inline void
+snd_sof_register_clients(struct snd_sof_dev *sdev)
+{
+	if (sof_ops(sdev) && sof_ops(sdev)->register_clients)
+		sof_ops(sdev)->register_clients(sdev);
+}
+
+static inline void
+snd_sof_unregister_clients(struct snd_sof_dev *sdev)
+{
+	struct sof_client_dev *cdev, *_cdev;
+
+	/* unregister client devices */
+	mutex_lock(&sdev->client_mutex);
+	list_for_each_entry_safe(cdev, _cdev, &sdev->client_list, list) {
+		sof_client_dev_unregister(cdev);
+		list_del(&cdev->list);
+	}
+	mutex_unlock(&sdev->client_mutex);
+}
+#else
+static inline void
+snd_sof_register_clients(struct snd_sof_dev *sdev) {}
+
+static inline void
+snd_sof_unregister_clients(struct snd_sof_dev *sdev) {}
+#endif
+
 static inline const struct snd_sof_dsp_ops
 *sof_get_ops(const struct sof_dev_desc *d,
 	     const struct sof_ops_table mach_ops[], int asize)
diff --git a/sound/soc/sof/sof-priv.h b/sound/soc/sof/sof-priv.h
index bf16809539a8..210ac0a7df95 100644
--- a/sound/soc/sof/sof-priv.h
+++ b/sound/soc/sof/sof-priv.h
@@ -252,6 +252,9 @@ struct snd_sof_dsp_ops {
 	void (*set_mach_params)(const struct snd_soc_acpi_mach *mach,
 				struct device *dev); /* optional */
 
+	/* client ops */
+	void (*register_clients)(struct snd_sof_dev *sdev); /* optional */
+
 	/* DAI ops */
 	struct snd_soc_dai_driver *drv;
 	int num_drv;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

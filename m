Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B65487A411B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:29:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4660C41479;
	Mon, 18 Sep 2023 06:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4660C41479
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695018546;
	bh=hO43wPXld8LQ1E7n/rOxAZtCJBN31YTX0HEI2X9TyTE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vBJyx8rn5GNfHRHUbnwFm6RVgmibrieljbnQ7WTJNOTuiTu7BSbuBh+SWd9BvfcFU
	 YYS/vLs47rZfe67AY3PUIS5CPL/lPJADXM2b2tgLAQFCth7TVuEFAsXj4vcy+Xhew4
	 dRpDVfa0qrV5tpu4tP/yoFVJtH9dnrZHe7F7wmdFG+ZQ/PJLVa6qSZ4HkTZ8L52IEq
	 UNvtYv4fbx73jJot8kuDTZacIByNy/HgIQzQvOvmckWjXgVXR2K4zqJEaD5u92ihk8
	 s3/AinJUUvyaaAYF+vSBbLJ2bmoHgAhWfbdqUtTlo9vwXOVypqgkAsv9xWnt0Yaux4
	 vgwQBitTizUKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FTKSGNShIIKk; Mon, 18 Sep 2023 06:29:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 60FEF40C0E;
	Mon, 18 Sep 2023 06:29:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60FEF40C0E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF73F1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A374081F89
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A374081F89
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eZGCHdkMB4Gk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:28:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E1CA81F8A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E1CA81F8A
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="378488686"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="378488686"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:28:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="815893685"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="815893685"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.186])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2023 23:28:51 -0700
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 06:25:46 +0000
Message-Id: <20230918062546.40419-14-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918062546.40419-1-yahui.cao@intel.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695018537; x=1726554537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BYqtARKbdwN0UZ9MRl8Yh4ddeA5cCMaKnoseZlIqpBs=;
 b=EhzBBh77jTEAjC1EPptAs4yPwJwEk0J3YxfqdGZ5yqaO9RGo372KcEgY
 MWFYJ3Vh+pWBvKnJ+CaF+rgRepc008jkyU3h3Aj8ZA5q51FNYszlUbP0m
 pYjUD1uRcivXXdbRHSwgWnaNUhG5aalO4/r4FRhjXpSws9CDEBZ44oqvI
 ZCse55XE9zh4v561nJ0IPYl/OaKOuw2J/KJ6MrDLUj/+grp+8N6Q+fMLG
 VvLr9wmyBcna4CALXfV0Z0VDQTYLprd3y1OMlpOuboFHGiuiKMFoFo2Ep
 FKeqZUwAmjBlynrvG5W3+kC9IHJySqhGgCSgEvLMc74eanO0SaaezFT0N
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EhzBBh77
Subject: [Intel-wired-lan] [PATCH iwl-next v3 13/13] vfio/ice: Implement
 vfio_pci driver for E800 devices
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, edumazet@google.com, shameerali.kolothum.thodi@huawei.com,
 jesse.brandeburg@intel.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, jgg@nvidia.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lingyu Liu <lingyu.liu@intel.com>

Add a vendor-specific vfio_pci driver for E800 devices.

It uses vfio_pci_core to register to the VFIO subsystem and then
implements the E800 specific logic to support VF live migration.

It implements the device state transition flow for live
migration.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 MAINTAINERS                         |   7 +
 drivers/vfio/pci/Kconfig            |   2 +
 drivers/vfio/pci/Makefile           |   2 +
 drivers/vfio/pci/ice/Kconfig        |  10 +
 drivers/vfio/pci/ice/Makefile       |   4 +
 drivers/vfio/pci/ice/ice_vfio_pci.c | 707 ++++++++++++++++++++++++++++
 6 files changed, 732 insertions(+)
 create mode 100644 drivers/vfio/pci/ice/Kconfig
 create mode 100644 drivers/vfio/pci/ice/Makefile
 create mode 100644 drivers/vfio/pci/ice/ice_vfio_pci.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 389fe9e38884..09ea8454219a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22608,6 +22608,13 @@ L:	kvm@vger.kernel.org
 S:	Maintained
 F:	drivers/vfio/pci/mlx5/
 
+VFIO ICE PCI DRIVER
+M:	Yahui Cao <yahui.cao@intel.com>
+M:	Lingyu Liu <lingyu.liu@intel.com>
+L:	kvm@vger.kernel.org
+S:	Maintained
+F:	drivers/vfio/pci/ice/
+
 VFIO PCI DEVICE SPECIFIC DRIVERS
 R:	Jason Gunthorpe <jgg@nvidia.com>
 R:	Yishai Hadas <yishaih@nvidia.com>
diff --git a/drivers/vfio/pci/Kconfig b/drivers/vfio/pci/Kconfig
index 8125e5f37832..6618208947af 100644
--- a/drivers/vfio/pci/Kconfig
+++ b/drivers/vfio/pci/Kconfig
@@ -65,4 +65,6 @@ source "drivers/vfio/pci/hisilicon/Kconfig"
 
 source "drivers/vfio/pci/pds/Kconfig"
 
+source "drivers/vfio/pci/ice/Kconfig"
+
 endmenu
diff --git a/drivers/vfio/pci/Makefile b/drivers/vfio/pci/Makefile
index 45167be462d8..fc1df82df3ac 100644
--- a/drivers/vfio/pci/Makefile
+++ b/drivers/vfio/pci/Makefile
@@ -13,3 +13,5 @@ obj-$(CONFIG_MLX5_VFIO_PCI)           += mlx5/
 obj-$(CONFIG_HISI_ACC_VFIO_PCI) += hisilicon/
 
 obj-$(CONFIG_PDS_VFIO_PCI) += pds/
+
+obj-$(CONFIG_ICE_VFIO_PCI) += ice/
diff --git a/drivers/vfio/pci/ice/Kconfig b/drivers/vfio/pci/ice/Kconfig
new file mode 100644
index 000000000000..4c6f348d3062
--- /dev/null
+++ b/drivers/vfio/pci/ice/Kconfig
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config ICE_VFIO_PCI
+	tristate "VFIO support for Intel(R) Ethernet Connection E800 Series"
+	depends on ICE
+	depends on VFIO_PCI_CORE
+	help
+	  This provides migration support for Intel(R) Ethernet connection E800
+	  series devices using the VFIO framework.
+
+	  If you don't know what to do here, say N.
diff --git a/drivers/vfio/pci/ice/Makefile b/drivers/vfio/pci/ice/Makefile
new file mode 100644
index 000000000000..259d4ab89105
--- /dev/null
+++ b/drivers/vfio/pci/ice/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_ICE_VFIO_PCI) += ice-vfio-pci.o
+ice-vfio-pci-y := ice_vfio_pci.o
+
diff --git a/drivers/vfio/pci/ice/ice_vfio_pci.c b/drivers/vfio/pci/ice/ice_vfio_pci.c
new file mode 100644
index 000000000000..60a0582d7932
--- /dev/null
+++ b/drivers/vfio/pci/ice/ice_vfio_pci.c
@@ -0,0 +1,707 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/types.h>
+#include <linux/file.h>
+#include <linux/pci.h>
+#include <linux/vfio_pci_core.h>
+#include <linux/net/intel/ice_migration.h>
+#include <linux/anon_inodes.h>
+
+#define DRIVER_DESC     "ICE VFIO PCI - User Level meta-driver for Intel E800 device family"
+
+struct ice_vfio_pci_migration_file {
+	struct file *filp;
+	struct mutex lock; /* protect migration file access */
+	bool disabled;
+
+	u8 mig_data[SZ_128K];
+	size_t total_length;
+};
+
+struct ice_vfio_pci_core_device {
+	struct vfio_pci_core_device core_device;
+	u8 deferred_reset:1;
+	struct mutex state_mutex; /* protect migration state */
+	enum vfio_device_mig_state mig_state;
+	/* protect the reset_done flow */
+	spinlock_t reset_lock;
+	struct ice_vfio_pci_migration_file *resuming_migf;
+	struct ice_vfio_pci_migration_file *saving_migf;
+	struct vfio_device_migration_info mig_info;
+	u8 *mig_data;
+	u8 __iomem *io_base;
+	struct ice_pf *pf;
+	int vf_id;
+};
+
+/**
+ * ice_vfio_pci_load_state - VFIO device state reloading
+ * @ice_vdev: pointer to ice vfio pci core device structure
+ *
+ * Load device state and restore it. This function is called when the VFIO uAPI
+ * consumer wants to load the device state info from VFIO migration region and
+ * restore them into the device. This function should make sure all the device
+ * state info is loaded and restored successfully. As a result, return value is
+ * mandatory to be checked.
+ *
+ * Return 0 for success, negative value for failure.
+ */
+static int __must_check
+ice_vfio_pci_load_state(struct ice_vfio_pci_core_device *ice_vdev)
+{
+	struct ice_vfio_pci_migration_file *migf = ice_vdev->resuming_migf;
+
+	return ice_migration_restore_devstate(ice_vdev->pf,
+					      ice_vdev->vf_id,
+					      migf->mig_data,
+					      SZ_128K);
+}
+
+/**
+ * ice_vfio_pci_save_state - VFIO device state saving
+ * @ice_vdev: pointer to ice vfio pci core device structure
+ * @migf: pointer to migration file
+ *
+ * Snapshot the device state and save it. This function is called when the
+ * VFIO uAPI consumer wants to snapshot the current device state and saves
+ * it into the VFIO migration region. This function should make sure all
+ * of the device state info is collectted and saved successfully. As a
+ * result, return value is mandatory to be checked.
+ *
+ * Return 0 for success, negative value for failure.
+ */
+static int __must_check
+ice_vfio_pci_save_state(struct ice_vfio_pci_core_device *ice_vdev,
+			struct ice_vfio_pci_migration_file *migf)
+{
+	migf->total_length = SZ_128K;
+
+	return ice_migration_save_devstate(ice_vdev->pf,
+					   ice_vdev->vf_id,
+					   migf->mig_data,
+					   SZ_128K);
+}
+
+/**
+ * ice_vfio_migration_init - Initialization for live migration function
+ * @ice_vdev: pointer to ice vfio pci core device structure
+ *
+ * Returns 0 on success, negative value on error
+ */
+static int ice_vfio_migration_init(struct ice_vfio_pci_core_device *ice_vdev)
+{
+	struct pci_dev *pdev = ice_vdev->core_device.pdev;
+	int ret = 0;
+
+	ice_vdev->pf = ice_migration_get_pf(pdev);
+	if (!ice_vdev->pf)
+		return -EFAULT;
+
+	ice_vdev->vf_id = pci_iov_vf_id(pdev);
+	if (ice_vdev->vf_id < 0)
+		return -EINVAL;
+
+	ret = ice_migration_init_dev(ice_vdev->pf, ice_vdev->vf_id);
+	if (ret)
+		return ret;
+
+	ice_vdev->io_base = (u8 __iomem *)pci_iomap(pdev, 0, 0);
+	if (!ice_vdev->io_base)
+		return -EFAULT;
+
+	return 0;
+}
+
+/**
+ * ice_vfio_migration_uninit - Cleanup for live migration function
+ * @ice_vdev: pointer to ice vfio pci core device structure
+ */
+static void ice_vfio_migration_uninit(struct ice_vfio_pci_core_device *ice_vdev)
+{
+	pci_iounmap(ice_vdev->core_device.pdev, ice_vdev->io_base);
+	ice_migration_uninit_dev(ice_vdev->pf, ice_vdev->vf_id);
+}
+
+/**
+ * ice_vfio_pci_disable_fd - Close migration file
+ * @migf: pointer to ice vfio pci migration file
+ */
+static void ice_vfio_pci_disable_fd(struct ice_vfio_pci_migration_file *migf)
+{
+	mutex_lock(&migf->lock);
+	migf->disabled = true;
+	migf->total_length = 0;
+	migf->filp->f_pos = 0;
+	mutex_unlock(&migf->lock);
+}
+
+/**
+ * ice_vfio_pci_disable_fds - Close migration files of ice vfio pci device
+ * @ice_vdev: pointer to ice vfio pci core device structure
+ */
+static void ice_vfio_pci_disable_fds(struct ice_vfio_pci_core_device *ice_vdev)
+{
+	if (ice_vdev->resuming_migf) {
+		ice_vfio_pci_disable_fd(ice_vdev->resuming_migf);
+		fput(ice_vdev->resuming_migf->filp);
+		ice_vdev->resuming_migf = NULL;
+	}
+	if (ice_vdev->saving_migf) {
+		ice_vfio_pci_disable_fd(ice_vdev->saving_migf);
+		fput(ice_vdev->saving_migf->filp);
+		ice_vdev->saving_migf = NULL;
+	}
+}
+
+/*
+ * This function is called in all state_mutex unlock cases to
+ * handle a 'deferred_reset' if exists.
+ * @ice_vdev: pointer to ice vfio pci core device structure
+ */
+static void
+ice_vfio_pci_state_mutex_unlock(struct ice_vfio_pci_core_device *ice_vdev)
+{
+again:
+	spin_lock(&ice_vdev->reset_lock);
+	if (ice_vdev->deferred_reset) {
+		ice_vdev->deferred_reset = false;
+		spin_unlock(&ice_vdev->reset_lock);
+		ice_vdev->mig_state = VFIO_DEVICE_STATE_RUNNING;
+		ice_vfio_pci_disable_fds(ice_vdev);
+		goto again;
+	}
+	mutex_unlock(&ice_vdev->state_mutex);
+	spin_unlock(&ice_vdev->reset_lock);
+}
+
+static void ice_vfio_pci_reset_done(struct pci_dev *pdev)
+{
+	struct ice_vfio_pci_core_device *ice_vdev =
+		(struct ice_vfio_pci_core_device *)dev_get_drvdata(&pdev->dev);
+
+	/*
+	 * As the higher VFIO layers are holding locks across reset and using
+	 * those same locks with the mm_lock we need to prevent ABBA deadlock
+	 * with the state_mutex and mm_lock.
+	 * In case the state_mutex was taken already we defer the cleanup work
+	 * to the unlock flow of the other running context.
+	 */
+	spin_lock(&ice_vdev->reset_lock);
+	ice_vdev->deferred_reset = true;
+	if (!mutex_trylock(&ice_vdev->state_mutex)) {
+		spin_unlock(&ice_vdev->reset_lock);
+		return;
+	}
+	spin_unlock(&ice_vdev->reset_lock);
+	ice_vfio_pci_state_mutex_unlock(ice_vdev);
+}
+
+/**
+ * ice_vfio_pci_open_device - Called when a vfio device is probed by VFIO UAPI
+ * @core_vdev: the vfio device to open
+ *
+ * Initialization of the vfio device
+ *
+ * Returns 0 on success, negative value on error
+ */
+static int ice_vfio_pci_open_device(struct vfio_device *core_vdev)
+{
+	struct ice_vfio_pci_core_device *ice_vdev = container_of(core_vdev,
+			struct ice_vfio_pci_core_device, core_device.vdev);
+	struct vfio_pci_core_device *vdev = &ice_vdev->core_device;
+	int ret;
+
+	ret = vfio_pci_core_enable(vdev);
+	if (ret)
+		return ret;
+
+	ret = ice_vfio_migration_init(ice_vdev);
+	if (ret) {
+		vfio_pci_core_disable(vdev);
+		return ret;
+	}
+	ice_vdev->mig_state = VFIO_DEVICE_STATE_RUNNING;
+	vfio_pci_core_finish_enable(vdev);
+
+	return 0;
+}
+
+/**
+ * ice_vfio_pci_close_device - Called when a vfio device fd is closed
+ * @core_vdev: the vfio device to close
+ */
+static void ice_vfio_pci_close_device(struct vfio_device *core_vdev)
+{
+	struct ice_vfio_pci_core_device *ice_vdev = container_of(core_vdev,
+			struct ice_vfio_pci_core_device, core_device.vdev);
+
+	ice_vfio_pci_disable_fds(ice_vdev);
+	vfio_pci_core_close_device(core_vdev);
+	ice_vfio_migration_uninit(ice_vdev);
+}
+
+/**
+ * ice_vfio_pci_release_file - release ice vfio pci migration file
+ * @inode: pointer to inode
+ * @filp: pointer to the file to release
+ *
+ * Return 0 for success, negative for error
+ */
+static int ice_vfio_pci_release_file(struct inode *inode, struct file *filp)
+{
+	struct ice_vfio_pci_migration_file *migf = filp->private_data;
+
+	ice_vfio_pci_disable_fd(migf);
+	mutex_destroy(&migf->lock);
+	kfree(migf);
+	return 0;
+}
+
+/**
+ * ice_vfio_pci_save_read - save migration file data to user space
+ * @filp: pointer to migration file
+ * @buf: pointer to user space buffer
+ * @len: data length to be saved
+ * @pos: should be 0
+ *
+ * Return len of saved data, negative for error
+ */
+static ssize_t ice_vfio_pci_save_read(struct file *filp, char __user *buf,
+				      size_t len, loff_t *pos)
+{
+	struct ice_vfio_pci_migration_file *migf = filp->private_data;
+	loff_t *off = &filp->f_pos;
+	ssize_t done = 0;
+	int ret;
+
+	if (pos)
+		return -ESPIPE;
+
+	mutex_lock(&migf->lock);
+	if (*off > migf->total_length) {
+		done = -EINVAL;
+		goto out_unlock;
+	}
+
+	if (migf->disabled) {
+		done = -ENODEV;
+		goto out_unlock;
+	}
+
+	len = min_t(size_t, migf->total_length - *off, len);
+	if (len) {
+		ret = copy_to_user(buf, migf->mig_data + *off, len);
+		if (ret) {
+			done = -EFAULT;
+			goto out_unlock;
+		}
+		*off += len;
+		done = len;
+	}
+out_unlock:
+	mutex_unlock(&migf->lock);
+	return done;
+}
+
+static const struct file_operations ice_vfio_pci_save_fops = {
+	.owner = THIS_MODULE,
+	.read = ice_vfio_pci_save_read,
+	.release = ice_vfio_pci_release_file,
+	.llseek = no_llseek,
+};
+
+/**
+ * ice_vfio_pci_stop_copy - create migration file and save migration state to it
+ * @ice_vdev: pointer to ice vfio pci core device structure
+ *
+ * Return migration file handler
+ */
+static struct ice_vfio_pci_migration_file *
+ice_vfio_pci_stop_copy(struct ice_vfio_pci_core_device *ice_vdev)
+{
+	struct ice_vfio_pci_migration_file *migf;
+	int ret;
+
+	migf = kzalloc(sizeof(*migf), GFP_KERNEL);
+	if (!migf)
+		return ERR_PTR(-ENOMEM);
+
+	migf->filp = anon_inode_getfile("ice_vfio_pci_mig",
+					&ice_vfio_pci_save_fops, migf,
+					O_RDONLY);
+	if (IS_ERR(migf->filp)) {
+		int err = PTR_ERR(migf->filp);
+
+		kfree(migf);
+		return ERR_PTR(err);
+	}
+
+	stream_open(migf->filp->f_inode, migf->filp);
+	mutex_init(&migf->lock);
+
+	ret = ice_vfio_pci_save_state(ice_vdev, migf);
+	if (ret) {
+		fput(migf->filp);
+		kfree(migf);
+		return ERR_PTR(ret);
+	}
+
+	return migf;
+}
+
+/**
+ * ice_vfio_pci_resume_write- copy migration file data from user space
+ * @filp: pointer to migration file
+ * @buf: pointer to user space buffer
+ * @len: data length to be copied
+ * @pos: should be 0
+ *
+ * Return len of saved data, negative for error
+ */
+static ssize_t
+ice_vfio_pci_resume_write(struct file *filp, const char __user *buf,
+			  size_t len, loff_t *pos)
+{
+	struct ice_vfio_pci_migration_file *migf = filp->private_data;
+	loff_t *off = &filp->f_pos;
+	loff_t requested_length;
+	ssize_t done = 0;
+	int ret;
+
+	if (pos)
+		return -ESPIPE;
+
+	if (*off < 0 ||
+	    check_add_overflow((loff_t)len, *off, &requested_length))
+		return -EINVAL;
+
+	if (requested_length > sizeof(migf->mig_data))
+		return -ENOMEM;
+
+	mutex_lock(&migf->lock);
+	if (migf->disabled) {
+		done = -ENODEV;
+		goto out_unlock;
+	}
+
+	ret = copy_from_user(migf->mig_data + *off, buf, len);
+	if (ret) {
+		done = -EFAULT;
+		goto out_unlock;
+	}
+	*off += len;
+	done = len;
+	migf->total_length += len;
+out_unlock:
+	mutex_unlock(&migf->lock);
+	return done;
+}
+
+static const struct file_operations ice_vfio_pci_resume_fops = {
+	.owner = THIS_MODULE,
+	.write = ice_vfio_pci_resume_write,
+	.release = ice_vfio_pci_release_file,
+	.llseek = no_llseek,
+};
+
+/**
+ * ice_vfio_pci_resume - create resuming migration file
+ * @ice_vdev: pointer to ice vfio pci core device structure
+ *
+ * Return migration file handler, negative value for failure
+ */
+static struct ice_vfio_pci_migration_file *
+ice_vfio_pci_resume(struct ice_vfio_pci_core_device *ice_vdev)
+{
+	struct ice_vfio_pci_migration_file *migf;
+
+	migf = kzalloc(sizeof(*migf), GFP_KERNEL);
+	if (!migf)
+		return ERR_PTR(-ENOMEM);
+
+	migf->filp = anon_inode_getfile("ice_vfio_pci_mig",
+					&ice_vfio_pci_resume_fops, migf,
+					O_WRONLY);
+	if (IS_ERR(migf->filp)) {
+		int err = PTR_ERR(migf->filp);
+
+		kfree(migf);
+		return ERR_PTR(err);
+	}
+
+	stream_open(migf->filp->f_inode, migf->filp);
+	mutex_init(&migf->lock);
+	return migf;
+}
+
+/**
+ * ice_vfio_pci_step_device_state_locked - process device state change
+ * @ice_vdev: pointer to ice vfio pci core device structure
+ * @new: new device state
+ * @final: final device state
+ *
+ * Return migration file handler or NULL for success, negative value for failure
+ */
+static struct file *
+ice_vfio_pci_step_device_state_locked(struct ice_vfio_pci_core_device *ice_vdev,
+				      u32 new, u32 final)
+{
+	u32 cur = ice_vdev->mig_state;
+	int ret;
+
+	if (cur == VFIO_DEVICE_STATE_RUNNING && new == VFIO_DEVICE_STATE_RUNNING_P2P) {
+		ice_migration_suspend_dev(ice_vdev->pf, ice_vdev->vf_id);
+		return NULL;
+	}
+
+	if (cur == VFIO_DEVICE_STATE_RUNNING_P2P && new == VFIO_DEVICE_STATE_STOP)
+		return NULL;
+
+	if (cur == VFIO_DEVICE_STATE_STOP && new == VFIO_DEVICE_STATE_STOP_COPY) {
+		struct ice_vfio_pci_migration_file *migf;
+
+		migf = ice_vfio_pci_stop_copy(ice_vdev);
+		if (IS_ERR(migf))
+			return ERR_CAST(migf);
+		get_file(migf->filp);
+		ice_vdev->saving_migf = migf;
+		return migf->filp;
+	}
+
+	if (cur == VFIO_DEVICE_STATE_STOP_COPY && new == VFIO_DEVICE_STATE_STOP) {
+		ice_vfio_pci_disable_fds(ice_vdev);
+		return NULL;
+	}
+
+	if (cur == VFIO_DEVICE_STATE_STOP && new == VFIO_DEVICE_STATE_RESUMING) {
+		struct ice_vfio_pci_migration_file *migf;
+
+		migf = ice_vfio_pci_resume(ice_vdev);
+		if (IS_ERR(migf))
+			return ERR_CAST(migf);
+		get_file(migf->filp);
+		ice_vdev->resuming_migf = migf;
+		return migf->filp;
+	}
+
+	if (cur == VFIO_DEVICE_STATE_RESUMING && new == VFIO_DEVICE_STATE_STOP)
+		return NULL;
+
+	if (cur == VFIO_DEVICE_STATE_STOP && new == VFIO_DEVICE_STATE_RUNNING_P2P) {
+		ret = ice_vfio_pci_load_state(ice_vdev);
+		if (ret)
+			return ERR_PTR(ret);
+		ice_vfio_pci_disable_fds(ice_vdev);
+		return NULL;
+	}
+
+	if (cur == VFIO_DEVICE_STATE_RUNNING_P2P && new == VFIO_DEVICE_STATE_RUNNING)
+		return NULL;
+
+	/*
+	 * vfio_mig_get_next_state() does not use arcs other than the above
+	 */
+	WARN_ON(true);
+	return ERR_PTR(-EINVAL);
+}
+
+/**
+ * ice_vfio_pci_set_device_state - Config device state
+ * @vdev: pointer to vfio pci device
+ * @new_state: device state
+ *
+ * Return 0 for success, negative value for failure.
+ */
+static struct file *
+ice_vfio_pci_set_device_state(struct vfio_device *vdev,
+			      enum vfio_device_mig_state new_state)
+{
+	struct ice_vfio_pci_core_device *ice_vdev = container_of(vdev,
+								 struct ice_vfio_pci_core_device,
+								 core_device.vdev);
+	enum vfio_device_mig_state next_state;
+	struct file *res = NULL;
+	int ret;
+
+	mutex_lock(&ice_vdev->state_mutex);
+	while (new_state != ice_vdev->mig_state) {
+		ret = vfio_mig_get_next_state(vdev, ice_vdev->mig_state,
+					      new_state, &next_state);
+		if (ret) {
+			res = ERR_PTR(ret);
+			break;
+		}
+		res = ice_vfio_pci_step_device_state_locked(ice_vdev, next_state,
+							    new_state);
+		if (IS_ERR(res))
+			break;
+		ice_vdev->mig_state = next_state;
+		if (WARN_ON(res && new_state != ice_vdev->mig_state)) {
+			fput(res);
+			res = ERR_PTR(-EINVAL);
+			break;
+		}
+	}
+	ice_vfio_pci_state_mutex_unlock(ice_vdev);
+	return res;
+}
+
+/**
+ * ice_vfio_pci_get_device_state - get device state
+ * @vdev: pointer to vfio pci device
+ * @curr_state: device state
+ *
+ * Return 0 for success
+ */
+static int ice_vfio_pci_get_device_state(struct vfio_device *vdev,
+					 enum vfio_device_mig_state *curr_state)
+{
+	struct ice_vfio_pci_core_device *ice_vdev =
+		container_of(vdev, struct ice_vfio_pci_core_device, core_device.vdev);
+
+	mutex_lock(&ice_vdev->state_mutex);
+	*curr_state = ice_vdev->mig_state;
+	ice_vfio_pci_state_mutex_unlock(ice_vdev);
+	return 0;
+}
+
+/**
+ * ice_vfio_pci_get_data_size - get migration data size
+ * @vdev: pointer to vfio pci device
+ * @stop_copy_length: migration data size
+ *
+ * Return 0 for success
+ */
+static int
+ice_vfio_pci_get_data_size(struct vfio_device *vdev,
+			   unsigned long *stop_copy_length)
+{
+	*stop_copy_length = SZ_128K;
+	return 0;
+}
+
+static const struct vfio_migration_ops ice_vfio_pci_migrn_state_ops = {
+	.migration_set_state = ice_vfio_pci_set_device_state,
+	.migration_get_state = ice_vfio_pci_get_device_state,
+	.migration_get_data_size = ice_vfio_pci_get_data_size,
+};
+
+/**
+ * ice_vfio_pci_core_init_dev - initialize vfio device
+ * @core_vdev: pointer to vfio device
+ *
+ * Return 0 for success
+ */
+static int ice_vfio_pci_core_init_dev(struct vfio_device *core_vdev)
+{
+	struct ice_vfio_pci_core_device *ice_vdev = container_of(core_vdev,
+			struct ice_vfio_pci_core_device, core_device.vdev);
+
+	mutex_init(&ice_vdev->state_mutex);
+	spin_lock_init(&ice_vdev->reset_lock);
+
+	core_vdev->migration_flags = VFIO_MIGRATION_STOP_COPY | VFIO_MIGRATION_P2P;
+	core_vdev->mig_ops = &ice_vfio_pci_migrn_state_ops;
+
+	return vfio_pci_core_init_dev(core_vdev);
+}
+
+static const struct vfio_device_ops ice_vfio_pci_ops = {
+	.name		= "ice-vfio-pci",
+	.init		= ice_vfio_pci_core_init_dev,
+	.release	= vfio_pci_core_release_dev,
+	.open_device	= ice_vfio_pci_open_device,
+	.close_device	= ice_vfio_pci_close_device,
+	.device_feature = vfio_pci_core_ioctl_feature,
+	.read		= vfio_pci_core_read,
+	.write		= vfio_pci_core_write,
+	.ioctl		= vfio_pci_core_ioctl,
+	.mmap		= vfio_pci_core_mmap,
+	.request	= vfio_pci_core_request,
+	.match		= vfio_pci_core_match,
+	.bind_iommufd	= vfio_iommufd_physical_bind,
+	.unbind_iommufd	= vfio_iommufd_physical_unbind,
+	.attach_ioas	= vfio_iommufd_physical_attach_ioas,
+	.detach_ioas	= vfio_iommufd_physical_detach_ioas,
+};
+
+/**
+ * ice_vfio_pci_probe - Device initialization routine
+ * @pdev: PCI device information struct
+ * @id: entry in ice_vfio_pci_table
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int
+ice_vfio_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
+{
+	struct ice_vfio_pci_core_device *ice_vdev;
+	int ret;
+
+	ice_vdev = vfio_alloc_device(ice_vfio_pci_core_device, core_device.vdev,
+				     &pdev->dev, &ice_vfio_pci_ops);
+	if (!ice_vdev)
+		return -ENOMEM;
+
+	dev_set_drvdata(&pdev->dev, &ice_vdev->core_device);
+
+	ret = vfio_pci_core_register_device(&ice_vdev->core_device);
+	if (ret)
+		goto out_free;
+
+	return 0;
+
+out_free:
+	vfio_put_device(&ice_vdev->core_device.vdev);
+	return ret;
+}
+
+/**
+ * ice_vfio_pci_remove - Device removal routine
+ * @pdev: PCI device information struct
+ */
+static void ice_vfio_pci_remove(struct pci_dev *pdev)
+{
+	struct ice_vfio_pci_core_device *ice_vdev =
+		(struct ice_vfio_pci_core_device *)dev_get_drvdata(&pdev->dev);
+
+	vfio_pci_core_unregister_device(&ice_vdev->core_device);
+	vfio_put_device(&ice_vdev->core_device.vdev);
+}
+
+/* ice_pci_tbl - PCI Device ID Table
+ *
+ * Wildcard entries (PCI_ANY_ID) should come last
+ * Last entry must be all 0s
+ *
+ * { Vendor ID, Device ID, SubVendor ID, SubDevice ID,
+ *   Class, Class Mask, private data (not used) }
+ */
+static const struct pci_device_id ice_vfio_pci_table[] = {
+	{ PCI_DRIVER_OVERRIDE_DEVICE_VFIO(PCI_VENDOR_ID_INTEL, 0x1889) },
+	{}
+};
+MODULE_DEVICE_TABLE(pci, ice_vfio_pci_table);
+
+static const struct pci_error_handlers ice_vfio_pci_core_err_handlers = {
+	.reset_done = ice_vfio_pci_reset_done,
+	.error_detected = vfio_pci_core_aer_err_detected,
+};
+
+static struct pci_driver ice_vfio_pci_driver = {
+	.name			= "ice-vfio-pci",
+	.id_table		= ice_vfio_pci_table,
+	.probe			= ice_vfio_pci_probe,
+	.remove			= ice_vfio_pci_remove,
+	.err_handler            = &ice_vfio_pci_core_err_handlers,
+	.driver_managed_dma	= true,
+};
+
+module_pci_driver(ice_vfio_pci_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
+MODULE_DESCRIPTION(DRIVER_DESC);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

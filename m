Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A40CA1A197C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Apr 2020 03:23:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BB1F81F48;
	Wed,  8 Apr 2020 01:23:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fy45bFi1Frg1; Wed,  8 Apr 2020 01:23:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C342782157;
	Wed,  8 Apr 2020 01:23:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F77A1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 01:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 958AC87D6E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 01:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XAwvTi+vC5pb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2020 01:23:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E1C91869D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 01:23:38 +0000 (UTC)
IronPort-SDR: 7X6pnPi+2tvu9/GzCUQq0R8aAzsEA0MX9uSHgi8NTlaSTbXT8CQ/HZyhfLe3gPsBfTvQLuDB7V
 F+ZJTyU8p+KQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 18:23:38 -0700
IronPort-SDR: zsy2iDaJga5DIn7ZuSEan+j+wt8/eZ+JLoVBAY0jItxFJFDM+oQDCZ96Ku56XHyAG+c9fdhA1h
 toV5bjdMfuVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; d="scan'208";a="297102219"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Apr 2020 18:23:36 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Apr 2020 18:23:28 -0700
Message-Id: <20200408012328.3344523-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v8] Implementation of Virtual Bus
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dave Ertman <david.m.ertman@intel.com>

This is the initial implementation of the Virtual Bus,
virtbus_device and virtbus_driver.  The virtual bus is
a software based bus intended to support registering
virtbus_devices and virtbus_drivers and provide matching
between them and probing of the registered drivers.

The bus will support probe/remove shutdown and
suspend/resume callbacks.

Kconfig and Makefile alterations are included

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
---
v8: updated changes on recent changes to kernel and resolved conflicts
    with latest rebase to net-next

 Documentation/driver-api/virtual_bus.rst |  62 ++++++
 drivers/bus/Kconfig                      |  10 +
 drivers/bus/Makefile                     |   2 +
 drivers/bus/virtual_bus.c                | 270 +++++++++++++++++++++++
 include/linux/mod_devicetable.h          |   8 +
 include/linux/virtual_bus.h              |  53 +++++
 scripts/mod/devicetable-offsets.c        |   3 +
 scripts/mod/file2alias.c                 |   7 +
 8 files changed, 415 insertions(+)
 create mode 100644 Documentation/driver-api/virtual_bus.rst
 create mode 100644 drivers/bus/virtual_bus.c
 create mode 100644 include/linux/virtual_bus.h

diff --git a/Documentation/driver-api/virtual_bus.rst b/Documentation/driver-api/virtual_bus.rst
new file mode 100644
index 000000000000..a79db0e9231e
--- /dev/null
+++ b/Documentation/driver-api/virtual_bus.rst
@@ -0,0 +1,62 @@
+===============================
+Virtual Bus Devices and Drivers
+===============================
+
+See <linux/virtual_bus.h> for the models for virtbus_device and virtbus_driver.
+This bus is meant to be a lightweight software based bus to attach generic
+devices and drivers to so that a chunk of data can be passed between them.
+
+One use case example is an RDMA driver needing to connect with several
+different types of PCI LAN devices to be able to request resources from
+them (queue sets).  Each LAN driver that supports RDMA will register a
+virtbus_device on the virtual bus for each physical function.  The RDMA
+driver will register as a virtbus_driver on the virtual bus to be
+matched up with multiple virtbus_devices and receive a pointer to a
+struct containing the callbacks that the PCI LAN drivers support for
+registering with them.
+
+Sections in this document:
+        Virtbus devices
+        Virtbus drivers
+        Device Enumeration
+        Device naming and driver binding
+        Virtual Bus API entry points
+
+Virtbus devices
+~~~~~~~~~~~~~~~
+Virtbus_devices support the minimal device functionality.  Devices will
+accept a name, and then, when added to the virtual bus, an automatically
+generated index is concatenated onto it for the virtbus_device->name.
+
+Virtbus drivers
+~~~~~~~~~~~~~~~
+Virtbus drivers register with the virtual bus to be matched with virtbus
+devices.  They expect to be registered with a probe and remove callback,
+and also support shutdown, suspend, and resume callbacks.  They otherwise
+follow the standard driver behavior of having discovery and enumeration
+handled in the bus infrastructure.
+
+Virtbus drivers register themselves with the API entry point
+virtbus_register_driver and unregister with virtbus_unregister_driver.
+
+Device Enumeration
+~~~~~~~~~~~~~~~~~~
+Enumeration is handled automatically by the bus infrastructure via the
+ida_simple methods.
+
+Device naming and driver binding
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+The virtbus_device.dev.name is the canonical name for the device. It is
+built from two other parts:
+
+        - virtbus_device.name (also used for matching).
+        - virtbus_device.id (generated automatically from ida_simple calls)
+
+Virtbus device IDs are always in "<name>.<instance>" format.  Instances are
+automatically selected through an ida_simple_get so are positive integers.
+Name is taken from the device name field.
+
+Driver IDs are simple <name>.
+
+Need to extract the name from the Virtual Device compare to name of the
+driver.
diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 6d4e4497b59b..8b6c709730ba 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -203,4 +203,14 @@ config DA8XX_MSTPRI
 source "drivers/bus/fsl-mc/Kconfig"
 source "drivers/bus/mhi/Kconfig"
 
+config VIRTUAL_BUS
+       tristate "Software based Virtual Bus"
+       help
+         Provides a software bus for virtbus_devices to be added to it
+         and virtbus_drivers to be registered on it.  It matches driver
+         and device based on id and calls the driver's pobe routine.
+         One example is the irdma driver needing to connect with various
+         PCI LAN drivers to request resources (queues) to be able to perform
+         its function.
+
 endmenu
diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
index 05f32cd694a4..d30828a4768c 100644
--- a/drivers/bus/Makefile
+++ b/drivers/bus/Makefile
@@ -37,3 +37,5 @@ obj-$(CONFIG_DA8XX_MSTPRI)	+= da8xx-mstpri.o
 
 # MHI
 obj-$(CONFIG_MHI_BUS)		+= mhi/
+
+obj-$(CONFIG_VIRTUAL_BUS)	+= virtual_bus.o
diff --git a/drivers/bus/virtual_bus.c b/drivers/bus/virtual_bus.c
new file mode 100644
index 000000000000..fb14cca40eea
--- /dev/null
+++ b/drivers/bus/virtual_bus.c
@@ -0,0 +1,270 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * virtual_bus.c - lightweight software based bus for virtual devices
+ *
+ * Copyright (c) 2019-20 Intel Corporation
+ *
+ * Please see Documentation/driver-api/virtual_bus.rst for
+ * more information
+ */
+
+#include <linux/string.h>
+#include <linux/virtual_bus.h>
+#include <linux/of_irq.h>
+#include <linux/module.h>
+#include <linux/init.h>
+#include <linux/pm_runtime.h>
+#include <linux/pm_domain.h>
+#include <linux/acpi.h>
+#include <linux/device.h>
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("Virtual Bus");
+MODULE_AUTHOR("David Ertman <david.m.ertman@intel.com>");
+MODULE_AUTHOR("Kiran Patil <kiran.patil@intel.com>");
+
+static DEFINE_IDA(virtbus_dev_ida);
+
+static const
+struct virtbus_dev_id *virtbus_match_id(const struct virtbus_dev_id *id,
+					struct virtbus_device *vdev)
+{
+	while (id->name[0]) {
+		if (!strcmp(vdev->name, id->name))
+			return id;
+		id++;
+	}
+	return NULL;
+}
+
+static int virtbus_match(struct device *dev, struct device_driver *drv)
+{
+	struct virtbus_driver *vdrv = to_virtbus_drv(drv);
+	struct virtbus_device *vdev = to_virtbus_dev(dev);
+
+	return virtbus_match_id(vdrv->id_table, vdev) != NULL;
+}
+
+static int virtbus_probe(struct device *dev)
+{
+	return dev->driver->probe(dev);
+}
+
+static int virtbus_remove(struct device *dev)
+{
+	return dev->driver->remove(dev);
+}
+
+static void virtbus_shutdown(struct device *dev)
+{
+	dev->driver->shutdown(dev);
+}
+
+static int virtbus_suspend(struct device *dev, pm_message_t state)
+{
+	if (dev->driver->suspend)
+		return dev->driver->suspend(dev, state);
+
+	return 0;
+}
+
+static int virtbus_resume(struct device *dev)
+{
+	if (dev->driver->resume)
+		return dev->driver->resume(dev);
+
+	return 0;
+}
+
+struct bus_type virtual_bus_type = {
+	.name = "virtbus",
+	.match = virtbus_match,
+	.probe = virtbus_probe,
+	.remove = virtbus_remove,
+	.shutdown = virtbus_shutdown,
+	.suspend = virtbus_suspend,
+	.resume = virtbus_resume,
+};
+
+/**
+ * virtbus_release_device - Destroy a virtbus device
+ * @_dev: device to release
+ */
+static void virtbus_release_device(struct device *_dev)
+{
+	struct virtbus_device *vdev = to_virtbus_dev(_dev);
+
+	ida_simple_remove(&virtbus_dev_ida, vdev->id);
+	vdev->release(vdev);
+}
+
+/**
+ * virtbus_register_device - add a virtual bus device
+ * @vdev: virtual bus device to add
+ */
+int virtbus_register_device(struct virtbus_device *vdev)
+{
+	int ret;
+
+	/* Do this first so that all error paths perform a put_device */
+	device_initialize(&vdev->dev);
+
+	if (!vdev->release) {
+		ret = -EINVAL;
+		dev_err(&vdev->dev, "virtbus_device MUST have a .release callback that does something.\n");
+		goto device_pre_err;
+	}
+
+	/* All device IDs are automatically allocated */
+	ret = ida_simple_get(&virtbus_dev_ida, 0, 0, GFP_KERNEL);
+	if (ret < 0) {
+		dev_err(&vdev->dev, "get IDA idx for virtbus device failed!\n");
+		goto device_pre_err;
+	}
+
+
+	vdev->dev.bus = &virtual_bus_type;
+	vdev->dev.release = virtbus_release_device;
+
+	vdev->id = ret;
+	dev_set_name(&vdev->dev, "%s.%d", vdev->name, vdev->id);
+
+	dev_dbg(&vdev->dev, "Registering virtbus device '%s'\n",
+		dev_name(&vdev->dev));
+
+	ret = device_add(&vdev->dev);
+	if (ret)
+		goto device_add_err;
+
+	return 0;
+
+device_add_err:
+	ida_simple_remove(&virtbus_dev_ida, vdev->id);
+
+device_pre_err:
+	dev_err(&vdev->dev, "Add device to virtbus failed!: %d\n", ret);
+	put_device(&vdev->dev);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(virtbus_register_device);
+
+/**
+ * virtbus_unregister_device - remove a virtual bus device
+ * @vdev: virtual bus device we are removing
+ */
+void virtbus_unregister_device(struct virtbus_device *vdev)
+{
+	device_del(&vdev->dev);
+	put_device(&vdev->dev);
+}
+EXPORT_SYMBOL_GPL(virtbus_unregister_device);
+
+static int virtbus_probe_driver(struct device *_dev)
+{
+	struct virtbus_driver *vdrv = to_virtbus_drv(_dev->driver);
+	struct virtbus_device *vdev = to_virtbus_dev(_dev);
+	int ret;
+
+	ret = dev_pm_domain_attach(_dev, true);
+	if (ret) {
+		dev_warn(_dev, "Failed to attatch to PM Domain : %d\n", ret);
+		return ret;
+	}
+
+	ret = vdrv->probe(vdev);
+	if (ret) {
+		dev_err(&vdev->dev, "Probe returned error\n");
+		dev_pm_domain_detach(_dev, true);
+	}
+
+	return ret;
+}
+
+static int virtbus_remove_driver(struct device *_dev)
+{
+	struct virtbus_driver *vdrv = to_virtbus_drv(_dev->driver);
+	struct virtbus_device *vdev = to_virtbus_dev(_dev);
+	int ret = 0;
+
+	ret = vdrv->remove(vdev);
+	dev_pm_domain_detach(_dev, true);
+
+	return ret;
+}
+
+static void virtbus_shutdown_driver(struct device *_dev)
+{
+	struct virtbus_driver *vdrv = to_virtbus_drv(_dev->driver);
+	struct virtbus_device *vdev = to_virtbus_dev(_dev);
+
+	vdrv->shutdown(vdev);
+}
+
+static int virtbus_suspend_driver(struct device *_dev, pm_message_t state)
+{
+	struct virtbus_driver *vdrv = to_virtbus_drv(_dev->driver);
+	struct virtbus_device *vdev = to_virtbus_dev(_dev);
+
+	if (vdrv->suspend)
+		return vdrv->suspend(vdev, state);
+
+	return 0;
+}
+
+static int virtbus_resume_driver(struct device *_dev)
+{
+	struct virtbus_driver *vdrv = to_virtbus_drv(_dev->driver);
+	struct virtbus_device *vdev = to_virtbus_dev(_dev);
+
+	if (vdrv->resume)
+		return vdrv->resume(vdev);
+
+	return 0;
+}
+
+/**
+ * __virtbus_register_driver - register a driver for virtual bus devices
+ * @vdrv: virtbus_driver structure
+ * @owner: owning module/driver
+ */
+int __virtbus_register_driver(struct virtbus_driver *vdrv, struct module *owner)
+{
+	if (!vdrv->probe || !vdrv->remove || !vdrv->shutdown || !vdrv->id_table)
+		return -EINVAL;
+
+	vdrv->driver.owner = owner;
+	vdrv->driver.bus = &virtual_bus_type;
+	vdrv->driver.probe = virtbus_probe_driver;
+	vdrv->driver.remove = virtbus_remove_driver;
+	vdrv->driver.shutdown = virtbus_shutdown_driver;
+	vdrv->driver.suspend = virtbus_suspend_driver;
+	vdrv->driver.resume = virtbus_resume_driver;
+
+	return driver_register(&vdrv->driver);
+}
+EXPORT_SYMBOL_GPL(__virtbus_register_driver);
+
+/**
+ * virtbus_unregister_driver - unregister a driver for virtual bus devices
+ * @vdrv: virtbus_driver structure
+ */
+void virtbus_unregister_driver(struct virtbus_driver *vdrv)
+{
+	driver_unregister(&vdrv->driver);
+}
+EXPORT_SYMBOL_GPL(virtbus_unregister_driver);
+
+static int __init virtual_bus_init(void)
+{
+	return bus_register(&virtual_bus_type);
+}
+
+static void __exit virtual_bus_exit(void)
+{
+	bus_unregister(&virtual_bus_type);
+	ida_destroy(&virtbus_dev_ida);
+}
+
+module_init(virtual_bus_init);
+module_exit(virtual_bus_exit);
diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
index 4c2ddd0941a7..60bcfe75fb94 100644
--- a/include/linux/mod_devicetable.h
+++ b/include/linux/mod_devicetable.h
@@ -832,4 +832,12 @@ struct mhi_device_id {
 	kernel_ulong_t driver_data;
 };
 
+#define VIRTBUS_NAME_SIZE 20
+#define VIRTBUS_MODULE_PREFIX "virtbus:"
+
+struct virtbus_dev_id {
+	char name[VIRTBUS_NAME_SIZE];
+	kernel_ulong_t driver_data;
+};
+
 #endif /* LINUX_MOD_DEVICETABLE_H */
diff --git a/include/linux/virtual_bus.h b/include/linux/virtual_bus.h
new file mode 100644
index 000000000000..4df06178e72f
--- /dev/null
+++ b/include/linux/virtual_bus.h
@@ -0,0 +1,53 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * virtual_bus.h - lightweight software bus
+ *
+ * Copyright (c) 2019-20 Intel Corporation
+ *
+ * Please see Documentation/driver-api/virtual_bus.rst for more information
+ */
+
+#ifndef _VIRTUAL_BUS_H_
+#define _VIRTUAL_BUS_H_
+
+#include <linux/device.h>
+
+struct virtbus_device {
+	struct device dev;
+	const char *name;
+	void (*release)(struct virtbus_device *);
+	int id;
+};
+
+struct virtbus_driver {
+	int (*probe)(struct virtbus_device *);
+	int (*remove)(struct virtbus_device *);
+	void (*shutdown)(struct virtbus_device *);
+	int (*suspend)(struct virtbus_device *, pm_message_t);
+	int (*resume)(struct virtbus_device *);
+	struct device_driver driver;
+	const struct virtbus_dev_id *id_table;
+};
+
+static inline
+struct virtbus_device *to_virtbus_dev(struct device *dev)
+{
+	return container_of(dev, struct virtbus_device, dev);
+}
+
+static inline
+struct virtbus_driver *to_virtbus_drv(struct device_driver *drv)
+{
+	return container_of(drv, struct virtbus_driver, driver);
+}
+
+int virtbus_register_device(struct virtbus_device *vdev);
+void virtbus_unregister_device(struct virtbus_device *vdev);
+int
+__virtbus_register_driver(struct virtbus_driver *vdrv, struct module *owner);
+void virtbus_unregister_driver(struct virtbus_driver *vdrv);
+
+#define virtbus_register_driver(vdrv) \
+	__virtbus_register_driver(vdrv, THIS_MODULE)
+
+#endif /* _VIRTUAL_BUS_H_ */
diff --git a/scripts/mod/devicetable-offsets.c b/scripts/mod/devicetable-offsets.c
index 010be8ba2116..0c8e0e3a7c84 100644
--- a/scripts/mod/devicetable-offsets.c
+++ b/scripts/mod/devicetable-offsets.c
@@ -241,5 +241,8 @@ int main(void)
 	DEVID(mhi_device_id);
 	DEVID_FIELD(mhi_device_id, chan);
 
+	DEVID(virtbus_dev_id);
+	DEVID_FIELD(virtbus_dev_id, name);
+
 	return 0;
 }
diff --git a/scripts/mod/file2alias.c b/scripts/mod/file2alias.c
index 02d5d79da284..7d78fa3fba34 100644
--- a/scripts/mod/file2alias.c
+++ b/scripts/mod/file2alias.c
@@ -1358,7 +1358,13 @@ static int do_mhi_entry(const char *filename, void *symval, char *alias)
 {
 	DEF_FIELD_ADDR(symval, mhi_device_id, chan);
 	sprintf(alias, MHI_DEVICE_MODALIAS_FMT, *chan);
+	return 1;
+}
 
+static int do_virtbus_entry(const char *filename, void *symval, char *alias)
+{
+	DEF_FIELD_ADDR(symval, virtbus_dev_id, name);
+	sprintf(alias, VIRTBUS_MODULE_PREFIX "%s", *name);
 	return 1;
 }
 
@@ -1436,6 +1442,7 @@ static const struct devtable devtable[] = {
 	{"tee", SIZE_tee_client_device_id, do_tee_entry},
 	{"wmi", SIZE_wmi_device_id, do_wmi_entry},
 	{"mhi", SIZE_mhi_device_id, do_mhi_entry},
+	{"virtbus", SIZE_virtbus_dev_id, do_virtbus_entry},
 };
 
 /* Create MODULE_ALIAS() statements.
-- 
2.25.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

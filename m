Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E378A10125C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 05:07:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C89A878D1;
	Tue, 19 Nov 2019 04:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d6FS8zU4cfB6; Tue, 19 Nov 2019 04:07:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6EE5E8817B;
	Tue, 19 Nov 2019 04:07:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 016341BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 04:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F0FAB86398
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 04:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gfgSb_jphza9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 04:07:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E79C385F3D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 04:07:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 20:07:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="231397554"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga004.fm.intel.com with ESMTP; 18 Nov 2019 20:07:16 -0800
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 18 Nov 2019 20:07:16 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.229]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.101]) with mapi id 14.03.0439.000;
 Mon, 18 Nov 2019 20:07:15 -0800
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "'intel-wired-lan@lists.osuosl.org'" <intel-wired-lan@lists.osuosl.org>,
 "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, "Patil, Kiran"
 <kiran.patil@intel.com>
Thread-Topic: virtual-bus[v4]: Implementation of Virtual Bus
Thread-Index: AdWejsx8GQqdDhAwRmONv45220IUFg==
Date: Tue, 19 Nov 2019 04:07:15 +0000
Message-ID: <2B0E3F215D1AB84DA946C8BEE234CCC97B3014A3@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: [Intel-wired-lan] virtual-bus[v4]: Implementation of Virtual Bus
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

virtual-bus[v4]: Implementation of Virtual Bus

From: Dave Ertman <david.m.ertman@intel.com>

This is the initial implementation of the virtual bus,
virtbus_device and virtbus_driver.  The virtual bus is
a software based bus intended to support registering
virtbus_devices and virtbus_drivers and provide matching
between them and probing of the registered drivers.

The primary purpose of the virtual bus is to provide
matching services to allow the use of a container_of
to get access to a piece of desired data.  This will
allow two separate kernel objects to match up and
start communication.

The bus will support probe/remove shutdown and
suspend/resume callbacks.

Kconfig and Makefile alterations are included

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Kiran Patil <kiran.patil@intel.com>
---
 .../selftests/virtual_bus/virtual_bus_dev/Makefile |    7 +
 .../virtual_bus/virtual_bus_dev/virtual_bus_dev.c  |   60 ++++++++++
 .../selftests/virtual_bus/virtual_bus_drv/Makefile |    7 +
 .../virtual_bus/virtual_bus_drv/virtual_bus_drv.c  |  115 ++++++++++++++++++++
 4 files changed, 189 insertions(+)
 create mode 100644 tools/testing/selftests/virtual_bus/virtual_bus_dev/Makefile
 create mode 100644 tools/testing/selftests/virtual_bus/virtual_bus_dev/virtual_bus_dev.c
 create mode 100644 tools/testing/selftests/virtual_bus/virtual_bus_drv/Makefile
 create mode 100644 tools/testing/selftests/virtual_bus/virtual_bus_drv/virtual_bus_drv.c

diff --git a/Documentation/driver-api/virtual_bus.rst b/Documentation/driver-api/virtual_bus.rst
new file mode 100644
index 000000000000..db8c34fcafe8
--- /dev/null
+++ b/Documentation/driver-api/virtual_bus.rst
@@ -0,0 +1,76 @@
+===============================
+Virtual Bus Devices and Drivers
+===============================
+
+See <linux/virtual_bus.h> for the models for virtbus_device and virtbus_driver.
+This bus is meant to be a lightweight software based bus to attach generic
+devices and drivers to so that a chunk of data can be passed between them.
+
+One use case example is an rdma driver needing to connect with several
+different types of PCI LAN devices to be able to request resources from
+them (queue sets).  Each LAN driver that supports rdma will register a
+virtbus_device on the virtual bus for each physical function.  The rdma
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
+Virtbus_devices are lightweight objects that support the minimal device
+functionality.  Devices will accept a name, and then an automatically
+generated index is concatenated onto it for the virtbus_device->name.
+
+The virtbus_driver and virtbus_device creators need to both have access
+to a predefined virtbus_device_object struct that will look like the
+following:
+     struct virtbus_object {
+          struct virtbus_device vdev;
+          struct foo_type foo;
+     }
+
+Then when the virtbus_driver's probe is called with the virtbus_device
+as a parameter, it can do a container_of on the virtbus_device to get
+to the struct foo_type foo that it cares about.
+
+Virtbus drivers
+~~~~~~~~~~~~~~~
+Virtbus drivers register with the virtual bus to be matched with virtbus
+devices.  They expect to be registered with a probe and remove callback,
+and also support shutdown, suspend, and resume callbacks.  They otherwise
+follow the standard driver behavior of having discovery and enumeration
+handled in the bus infrastructure.
+
+Virtbus drivers register themselves with the API entry point virtbus_drv_reg
+and unregister with virtbus_drv_unreg.
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
+This allows for multiple virtbus_devices with the same name, which will all
+be matched to the same virtbus_driver. Driver binding is performed by the
+driver core, invoking driver probe() after finding a match between device and driver.
+
+Virtual Bus API entry points
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+int virtbus_dev_register(struct virtbus_device *vdev)
+void virtbus_dev_unregister(struct virtbus_device *vdev)
+int virtbus_drv_register(struct virtbus_driver *vdrv, struct module *owner)
+void virtbus_drv_unregister(struct virtbus_driver *vdrv)
diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 6b331061d34b..c2f9029abed6 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -193,4 +193,16 @@ config DA8XX_MSTPRI
 
 source "drivers/bus/fsl-mc/Kconfig"
 
+config VIRTUAL_BUS
+       tristate "lightweight Virtual Bus"
+       depends on PM
+       help
+         Provides a software bus for virtbus_devices to be added to it
+         and virtbus_drivers to be registered on it.  Will create a match
+         between the driver and device, then call the driver's probe with
+         the virtbus_device's struct.
+         One example is the irdma driver needing to connect with various
+         PCI LAN drivers to request resources (queues) to be able to perform
+         its function.
+
 endmenu
diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
index 16b43d3468c6..0b0ba53cbe5b 100644
--- a/drivers/bus/Makefile
+++ b/drivers/bus/Makefile
@@ -33,3 +33,4 @@ obj-$(CONFIG_UNIPHIER_SYSTEM_BUS)	+= uniphier-system-bus.o
 obj-$(CONFIG_VEXPRESS_CONFIG)	+= vexpress-config.o
 
 obj-$(CONFIG_DA8XX_MSTPRI)	+= da8xx-mstpri.o
+obj-$(CONFIG_VIRTUAL_BUS)	+= virtual_bus.o
diff --git a/drivers/bus/virtual_bus.c b/drivers/bus/virtual_bus.c
new file mode 100644
index 000000000000..6bc986659e4b
--- /dev/null
+++ b/drivers/bus/virtual_bus.c
@@ -0,0 +1,295 @@
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
+MODULE_DESCRIPTION("Lightweight Virtual Bus");
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
+		if (!strcmp(vdev->name, id->name)) {
+			vdev->matched_element = id;
+			return id;
+		}
+		id++;
+	}
+	return NULL;
+}
+
+#define to_virtbus_dev(x)	(container_of((x), struct virtbus_device, dev))
+#define to_virtbus_drv(x)	(container_of((x), struct virtbus_driver, \
+				 driver))
+
+/**
+ * virtbus_match - bind virtbus device to virtbus driver
+ * @dev: device
+ * @drv: driver
+ *
+ * Virtbus device IDs are always in "<name>.<instance>" format.
+ * Instances are automatically selected through an ida_simple_get so
+ * are positive integers. Names are taken from the device name field.
+ * Driver IDs are simple <name>.  Need to extract the name from the
+ * Virtual Device compare to name of the driver.
+ */
+static int virtbus_match(struct device *dev, struct device_driver *drv)
+{
+	struct virtbus_driver *vdrv = to_virtbus_drv(drv);
+	struct virtbus_device *vdev = to_virtbus_dev(dev);
+
+	if (vdrv->id_table)
+		return virtbus_match_id(vdrv->id_table, vdev) != NULL;
+
+	return !strcmp(vdev->name, drv->name);
+}
+
+/**
+ * virtbus_probe - call probe of the virtbus_drv
+ * @dev: device struct
+ */
+static int virtbus_probe(struct device *dev)
+{
+	if (dev->driver->probe)
+		return dev->driver->probe(dev);
+
+	return 0;
+}
+
+static int virtbus_remove(struct device *dev)
+{
+	if (dev->driver->remove)
+		return dev->driver->remove(dev);
+
+	return 0;
+}
+
+static void virtbus_shutdown(struct device *dev)
+{
+	if (dev->driver->shutdown)
+		dev->driver->shutdown(dev);
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
+ * virtbus_dev_register - add a virtual bus device
+ * @vdev: virtual bus device to add
+ */
+int virtbus_dev_register(struct virtbus_device *vdev)
+{
+	int ret;
+
+	device_initialize(&vdev->dev);
+
+	vdev->dev.bus = &virtual_bus_type;
+	/* All device IDs are automatically allocated */
+	ret = ida_simple_get(&virtbus_dev_ida, 0, 0, GFP_KERNEL);
+	if (ret < 0)
+		return ret;
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
+	/* Error adding virtual device */
+	put_device(&vdev->dev);
+	ida_simple_remove(&virtbus_dev_ida, vdev->id);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(virtbus_dev_register);
+
+/**
+ * virtbus_dev_unregister - remove a virtual bus device
+ * vdev: virtual bus device we are removing
+ */
+void virtbus_dev_unregister(struct virtbus_device *vdev)
+{
+	put_device(&vdev->dev);
+}
+EXPORT_SYMBOL_GPL(virtbus_dev_unregister);
+
+struct virtbus_object {
+	struct virtbus_device vdev;
+	char name[];
+};
+
+/**
+ * virtbus_dev_release - Destroy a virtbus device
+ * @vdev: virtual device to release
+ *
+ * Note that the vdev->data which is separately allocated needs to be
+ * separately freed on it own.
+ */
+static void virtbus_dev_release(struct device *dev)
+{
+	struct virtbus_object *vo = container_of(dev, struct virtbus_object,
+						 vdev.dev);
+
+	ida_simple_remove(&virtbus_dev_ida, vo->vdev.id);
+	kfree(vo);
+}
+
+static int virtbus_drv_probe(struct device *_dev)
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
+	if (vdrv->probe) {
+		ret = vdrv->probe(vdev);
+		if (ret)
+			dev_pm_domain_detach(_dev, true);
+	}
+
+	return ret;
+}
+
+static int virtbus_drv_remove(struct device *_dev)
+{
+	struct virtbus_driver *vdrv = to_virtbus_drv(_dev->driver);
+	struct virtbus_device *vdev = to_virtbus_dev(_dev);
+	int ret = 0;
+
+	if (vdrv->remove)
+		ret = vdrv->remove(vdev);
+
+	dev_pm_domain_detach(_dev, true);
+
+	return ret;
+}
+
+static void virtbus_drv_shutdown(struct device *_dev)
+{
+	struct virtbus_driver *vdrv = to_virtbus_drv(_dev->driver);
+	struct virtbus_device *vdev = to_virtbus_dev(_dev);
+
+	if (vdrv->shutdown)
+		vdrv->shutdown(vdev);
+}
+
+static int virtbus_drv_suspend(struct device *_dev, pm_message_t state)
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
+static int virtbus_drv_resume(struct device *_dev)
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
+ * __virtbus_drv_register - register a driver for virtual bus devices
+ * @vdrv: virtbus_driver structure
+ * @owner: owning module/driver
+ */
+int __virtbus_drv_register(struct virtbus_driver *vdrv, struct module *owner)
+{
+	vdrv->driver.owner = owner;
+	vdrv->driver.bus = &virtual_bus_type;
+	vdrv->driver.probe = virtbus_drv_probe;
+	vdrv->driver.remove = virtbus_drv_remove;
+	vdrv->driver.shutdown = virtbus_drv_shutdown;
+	vdrv->driver.suspend = virtbus_drv_suspend;
+	vdrv->driver.resume = virtbus_drv_resume;
+
+	return driver_register(&vdrv->driver);
+}
+EXPORT_SYMBOL_GPL(__virtbus_drv_register);
+
+/**
+ * virtbus_drv_unregister - unregister a driver for virtual bus devices
+ * @drv: virtbus_driver structure
+ */
+void virtbus_drv_unregister(struct virtbus_driver *vdrv)
+{
+	driver_unregister(&vdrv->driver);
+}
+EXPORT_SYMBOL_GPL(virtbus_drv_unregister);
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
index 5714fd35a83c..e19214f84c98 100644
--- a/include/linux/mod_devicetable.h
+++ b/include/linux/mod_devicetable.h
@@ -821,4 +821,12 @@ struct wmi_device_id {
 	const void *context;
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
index 000000000000..fe4725b1e6b1
--- /dev/null
+++ b/include/linux/virtual_bus.h
@@ -0,0 +1,45 @@
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
+	const char *name;
+	int id;
+	const struct virtbus_dev_id *matched_element;
+	struct device dev;
+};
+
+/* If the driver uses a id_table to match with virtbus_devices, then the
+ * memory for the table is expected to remain allocated for the duration
+ * of the pairing between driver and device.  The pointer for the matching
+ * element will be copied to the dev_id field of the virtbus_device.
+ */
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
+int virtbus_dev_register(struct virtbus_device *vdev);
+void virtbus_dev_unregister(struct virtbus_device *vdev);
+int __virtbus_drv_register(struct virtbus_driver *vdrv, struct module *owner);
+void virtbus_drv_unregister(struct virtbus_driver *vdrv);
+
+#define virtbus_drv_register(vdrv) \
+	__virtbus_drv_register(vdrv, THIS_MODULE)
+
+#endif /* _VIRTUAL_BUS_H_ */
diff --git a/scripts/mod/devicetable-offsets.c b/scripts/mod/devicetable-offsets.c
index 054405b90ba4..9a6099bf90c8 100644
--- a/scripts/mod/devicetable-offsets.c
+++ b/scripts/mod/devicetable-offsets.c
@@ -231,5 +231,8 @@ int main(void)
 	DEVID(wmi_device_id);
 	DEVID_FIELD(wmi_device_id, guid_string);
 
+	DEVID(virtbus_dev_id);
+	DEVID_FIELD(virtbus_dev_id, name);
+
 	return 0;
 }
diff --git a/scripts/mod/file2alias.c b/scripts/mod/file2alias.c
index c91eba751804..713fdfe010b0 100644
--- a/scripts/mod/file2alias.c
+++ b/scripts/mod/file2alias.c
@@ -1335,6 +1335,13 @@ static int do_wmi_entry(const char *filename, void *symval, char *alias)
 	return 1;
 }
 
+static int do_virtbus_entry(const char *filename, void *symval, char *alias)
+{
+	DEF_FIELD_ADDR(symval, virtbus_dev_id, name);
+	sprintf(alias, VIRTBUS_MODULE_PREFIX "%s", *name);
+	return 1;
+}
+
 /* Does namelen bytes of name exactly match the symbol? */
 static bool sym_is(const char *name, unsigned namelen, const char *symbol)
 {
@@ -1407,6 +1414,7 @@ static const struct devtable devtable[] = {
 	{"typec", SIZE_typec_device_id, do_typec_entry},
 	{"tee", SIZE_tee_client_device_id, do_tee_entry},
 	{"wmi", SIZE_wmi_device_id, do_wmi_entry},
+	{"virtbus", SIZE_virtbus_dev_id, do_virtbus_entry},
 };
 
 /* Create MODULE_ALIAS() statements.
diff --git a/tools/testing/selftests/virtual_bus/virtual_bus_dev/Makefile b/tools/testing/selftests/virtual_bus/virtual_bus_dev/Makefile
new file mode 100644
index 000000000000..ddd5088eb26b
--- /dev/null
+++ b/tools/testing/selftests/virtual_bus/virtual_bus_dev/Makefile
@@ -0,0 +1,7 @@
+obj-m += virtual_bus_dev.o
+
+all:
+	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
+
+clean:
+	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
diff --git a/tools/testing/selftests/virtual_bus/virtual_bus_dev/virtual_bus_dev.c b/tools/testing/selftests/virtual_bus/virtual_bus_dev/virtual_bus_dev.c
new file mode 100644
index 000000000000..2a91813e22db
--- /dev/null
+++ b/tools/testing/selftests/virtual_bus/virtual_bus_dev/virtual_bus_dev.c
@@ -0,0 +1,60 @@
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/module.h>
+#include <linux/virtual_bus.h>
+#include <linux/string.h>
+#include <linux/slab.h>
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Dave Ertman");
+MODULE_DESCRIPTION("Test to create a device on virtual bus");
+MODULE_VERSION("1.0");
+
+struct virtbus_data {
+	int numb;
+};
+
+struct virtbus_object {
+	struct virtbus_device vdev;
+	struct virtbus_data vd;
+};
+
+static struct virtbus_object vo = {
+	.vdev = {
+		.name = "virtual_bus_dev",
+		},
+	.vd = {
+		.numb = 789,
+	},
+};
+
+static int __init test_dev_init(void)
+{
+	int ret = 0;
+
+	printk(KERN_INFO "Loading Virtual Bus Test Device\n");
+
+	printk(KERN_ERR "Virtbus Device values:\n\t%s\n\t%d\n", vo.vdev.name,
+	       vo.vd.numb);
+
+	ret = virtbus_dev_register(&vo.vdev);
+	if(ret) {
+		printk(KERN_ERR "FAILED TO ADD VIRTBUS DEVICE %d\n", ret);
+		return ret;
+	}
+
+	printk(KERN_INFO "Virtual Device created\n");
+	return ret;
+}
+
+static void __exit test_dev_exit(void)
+{
+	printk(KERN_INFO "Exiting Virtual Bus Test Device");
+
+	virtbus_dev_unregister(&vo.vdev);
+
+	printk(KERN_INFO "Virtual Bus Test Device removed\n");
+}
+
+module_init(test_dev_init);
+module_exit(test_dev_exit);
diff --git a/tools/testing/selftests/virtual_bus/virtual_bus_drv/Makefile b/tools/testing/selftests/virtual_bus/virtual_bus_drv/Makefile
new file mode 100644
index 000000000000..a4b7467f7878
--- /dev/null
+++ b/tools/testing/selftests/virtual_bus/virtual_bus_drv/Makefile
@@ -0,0 +1,7 @@
+obj-m += virtual_bus_drv.o
+
+all:
+	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
+
+clean:
+	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
diff --git a/tools/testing/selftests/virtual_bus/virtual_bus_drv/virtual_bus_drv.c b/tools/testing/selftests/virtual_bus/virtual_bus_drv/virtual_bus_drv.c
new file mode 100644
index 000000000000..13e2e3d686ab
--- /dev/null
+++ b/tools/testing/selftests/virtual_bus/virtual_bus_drv/virtual_bus_drv.c
@@ -0,0 +1,115 @@
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/module.h>
+#include <linux/virtual_bus.h>
+#include <linux/string.h>
+#include <linux/slab.h>
+#include <linux/mod_devicetable.h>
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Dave Ertman");
+MODULE_DESCRIPTION("Test to register a driver on virtual bus");
+MODULE_VERSION("1.0");
+
+struct virtbus_data {
+	int numb;
+};
+
+struct virtbus_object {
+	struct virtbus_device vdev;
+	struct virtbus_data vd;
+};
+
+static int td_probe(struct virtbus_device *vdev)
+{
+	struct virtbus_object *vo;
+
+	printk(KERN_ERR "VIRTBUS DRIVER PROBED\n");
+
+	vo = container_of(vdev, struct virtbus_object, vdev);
+
+	if (vdev->matched_element) {
+		printk(KERN_ERR "DEV_ID->DATA 0x%08x\n",
+			(uint)vdev->matched_element->driver_data);
+		if (vdev->matched_element->driver_data == 1)
+			printk(KERN_ERR "NUMB: %d\n",
+			       vo->vd.numb);
+	} else {
+		printk(KERN_ERR "MATCHED_ELEMENT->DATA is NULL\n");
+	}
+
+	return 0;
+}
+
+static int td_remove(struct virtbus_device *vdev)
+{
+	printk(KERN_ERR "VIRTBUS DRIVER REMOVED\n");
+	return 0;
+}
+
+static void td_shutdown(struct virtbus_device *vdev)
+{
+	printk(KERN_ERR "VIRTBUS DRIVER SHUTDOWN\n");
+}
+
+static const struct virtbus_dev_id vdev_id_table[] = {
+
+	{
+		.name = "NOT THE NAME",
+		.driver_data = 0x00000000,
+	},
+	{
+		.name = "virtual_bus_dev",
+		.driver_data = 0x00000001,
+	},
+	{
+		.name = "ice_rdma",
+		.driver_data = 0x00000002,
+	},
+	{
+		.name = "YET AGAIN NOT NAME",
+		.driver_data = 0x00000003,
+	},
+};
+
+static struct virtbus_driver vdrv = {
+	.probe = td_probe,
+	.remove = td_remove,
+	.shutdown = td_shutdown,
+	.driver = {
+		.name = "virtual_bus_dev",
+	},
+};
+
+static int __init test_drv_init(void)
+{
+	int ret;
+
+	printk(KERN_INFO "Registering Virtual Bus Test Driver\n");
+
+	/* To do a simple match, leave the id_table as NULL */
+	vdrv.id_table = &vdev_id_table[0];
+
+	printk(KERN_ERR "name of 0 is %s\n", vdrv.id_table->name);
+
+	ret = virtbus_drv_register(&vdrv);
+
+	if (!ret)
+		printk(KERN_INFO "Virtual Driver registered\n");
+	else
+		printk(KERN_INFO "Virtual Driver FAILED!!\n");
+
+	return ret;
+}
+
+static void __exit test_drv_exit(void)
+{
+	printk(KERN_INFO "Exiting Virtual Bus Test Driver");
+
+	virtbus_drv_unregister(&vdrv);
+
+	printk(KERN_INFO "Virtual Bus Test Driver removed\n");
+}
+
+module_init(test_drv_init);
+module_exit(test_drv_exit);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

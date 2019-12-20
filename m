Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E73C12724E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2019 01:19:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1868787171;
	Fri, 20 Dec 2019 00:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OCAVZMms4qof; Fri, 20 Dec 2019 00:19:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8504F86FA3;
	Fri, 20 Dec 2019 00:19:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 77AF61BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2019 00:19:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7344A88792
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2019 00:19:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rxXzwvatAqjw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2019 00:19:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1789F8878C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2019 00:19:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 16:19:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,333,1571727600"; d="scan'208";a="417784521"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga006.fm.intel.com with ESMTP; 19 Dec 2019 16:19:12 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.147]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.134]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 16:19:12 -0800
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "'intel-wired-lan@lists.osuosl.org'" <intel-wired-lan@lists.osuosl.org>,
 "Patil, Kiran" <kiran.patil@intel.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>
Thread-Topic: virtual-bus[v5]: Implementation of Virtual Bus
Thread-Index: AdW2ywQY+pzzyfjGRtyb53ICRucqNQ==
Date: Fri, 20 Dec 2019 00:19:11 +0000
Message-ID: <2B0E3F215D1AB84DA946C8BEE234CCC97B33B5D6@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: [Intel-wired-lan] virtual-bus[v5]: Implementation of Virtual Bus
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

virtual-bus[v5]: Implementation of Virtual Bus

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
---
 Documentation/driver-api/virtual_bus.rst |   59 +++++++
 drivers/bus/Kconfig                      |   11 +
 drivers/bus/Makefile                     |    1 
 drivers/bus/virtual_bus.c                |  267 ++++++++++++++++++++++++++++++
 include/linux/mod_devicetable.h          |    8 +
 include/linux/virtual_bus.h              |   57 ++++++
 scripts/mod/devicetable-offsets.c        |    3 
 scripts/mod/file2alias.c                 |    8 +
 8 files changed, 414 insertions(+)
 create mode 100644 Documentation/driver-api/virtual_bus.rst
 create mode 100644 drivers/bus/virtual_bus.c
 create mode 100644 include/linux/virtual_bus.h

diff --git a/Documentation/driver-api/virtual_bus.rst b/Documentation/driver-api/virtual_bus.rst
new file mode 100644
index 000000000000..5f35c19171d7
--- /dev/null
+++ b/Documentation/driver-api/virtual_bus.rst
@@ -0,0 +1,59 @@
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
+Virtbus device IDs are always in "<name>.<instance>" format.  Instances are
+automatically selected through an ida_simple_get so are positive integers.
+Names are taken from the device name field.  Driver IDs are simple <name>.
+Need to extract the name from the Virtual Device compare to name of the
+driver.
diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 6b331061d34b..be5247d54827 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -193,4 +193,15 @@ config DA8XX_MSTPRI
 
 source "drivers/bus/fsl-mc/Kconfig"
 
+config VIRTUAL_BUS
+       tristate "Software based Virtual Bus"
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
index 000000000000..9714b0d4bab0
--- /dev/null
+++ b/drivers/bus/virtual_bus.c
@@ -0,0 +1,267 @@
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
+ * virtbus_dev_release - Destroy a virtbus device
+ * @vdev: virtual device to release
+ */
+static void virtbus_dev_release(struct device *_dev)
+{
+	struct virtbus_device *vdev = to_virtbus_dev(_dev);
+
+	ida_simple_remove(&virtbus_dev_ida, vdev->id);
+	vdev->release(vdev);
+}
+
+/**
+ * virtbus_dev_register - add a virtual bus device
+ * @vdev: virtual bus device to add
+ */
+int virtbus_dev_register(struct virtbus_device *vdev)
+{
+	int ret;
+
+	if (!vdev->release) {
+		dev_err(&vdev->dev, "virtbus_device .release callback NULL\n");
+		return -EINVAL;
+	}
+
+	device_initialize(&vdev->dev);
+
+	vdev->dev.bus = &virtual_bus_type;
+	vdev->dev.release = virtbus_dev_release;
+	/* All device IDs are automatically allocated */
+	ret = ida_simple_get(&virtbus_dev_ida, 0, 0, GFP_KERNEL);
+	if (ret < 0) {
+		dev_err(&vdev->dev, "get IDA idx for virtbus device failed!\n");
+		put_device(&vdev->dev);
+		return ret;
+	}
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
+	dev_err(&vdev->dev, "Add device to virtbus failed!\n");
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
+	device_del(&vdev->dev);
+}
+EXPORT_SYMBOL_GPL(virtbus_dev_unregister);
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
+	ret = vdrv->probe(vdev);
+	if (ret) {
+		dev_err(&vdev->dev, "Probe returned error\n");
+		dev_pm_domain_detach(_dev, true);
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
+	ret = vdrv->remove(vdev);
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
+	vdrv->shutdown(vdev);
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
+	if (!vdrv->probe || !vdrv->remove || !vdrv->shutdown || !vdrv->id_table)
+		return -EINVAL;
+
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
index 000000000000..2cbc0e72e182
--- /dev/null
+++ b/include/linux/virtual_bus.h
@@ -0,0 +1,57 @@
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
+	const struct virtbus_dev_id *matched_element;
+};
+
+/* The memory for the table is expected to remain allocated for the duration
+ * of the pairing between driver and device.  The pointer for the matching
+ * element will be copied to the matched_element field of the virtbus_device.
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

-Dave E

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

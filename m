Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C18F7A4D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Nov 2019 18:55:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4682687404;
	Mon, 11 Nov 2019 17:55:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O3f8Fi8cJlyG; Mon, 11 Nov 2019 17:55:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80E1E876F4;
	Mon, 11 Nov 2019 17:55:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F83E1BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2019 17:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4ADDC875F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2019 17:55:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cp81pGGdCMve for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Nov 2019 17:55:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 63EF587404
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2019 17:55:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 09:55:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="405300728"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga006.fm.intel.com with ESMTP; 11 Nov 2019 09:55:02 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 11 Nov 2019 09:55:02 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.229]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.169]) with mapi id 14.03.0439.000;
 Mon, 11 Nov 2019 09:55:02 -0800
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: virtual-bus: Implementation of Virtual Bus
Thread-Index: AdWYuL+tOfwqLkvMRrmvOk0twprxbg==
Date: Mon, 11 Nov 2019 17:55:02 +0000
Message-ID: <2B0E3F215D1AB84DA946C8BEE234CCC97B2FAD00@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: [Intel-wired-lan] virtual-bus: Implementation of Virtual Bus
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

virtual-bus: Implementation of Virtual Bus

This is the initial implementation of the Virtual Bus,
virtbus_device and virtbus_driver.  The virtual bus is
a software based bus intended to support lightweight
devices and drivers and provide matching between them
and probing of the registered drivers.

Files added:
	drivers/bus/virtual_bus.c
	include/linux/virtual_bus.h
	Documentation/driver-api/virtual_bus.rst

The primary purpose of the virual bus is to provide
matching services and to pass the data pointer
contained in the virtbus_device to the virtbus_driver
during its probe call.  This will allow two separate
kernel objects to match up and start communication.

The bus will support probe/remove shutdown and
suspend/resume callbacks.

Kconfig and Makefile alterations are included

Change-Id: I74e48c9d95200d43ea6b7e505ef8ad98cfb8b5c1
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Change-type: FeatureImplementation
Title: Add main files for virtual bus support
---
 include/linux/virtual_bus.h |   64 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 include/linux/virtual_bus.h

diff --git a/Documentation/driver-api/virtual_bus.rst b/Documentation/driver-api/virtual_bus.rst
new file mode 100644
index 000000000000..72e440464e95
--- /dev/null
+++ b/Documentation/driver-api/virtual_bus.rst
@@ -0,0 +1,112 @@
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
+        Virtual Bus Structs
+        Virtual Bus API entry points
+
+Virtbus devices
+~~~~~~~~~~~~~~~
+Virtbus_devices are lightweight objects that support the minimal device
+functionality.  Devices will accept a name, and then an automatically
+generated index is concatenated onto it for the virtbus_device->name.
+
+The memory backing the "void *data" element of the virtbus_device is
+expected to be allocated and freed outside the context of the bus
+operations.  This memory is also expected to remain viable for the
+duration of the time that the virtbus_device is registered to the
+virtual bus. (e.g. from before the virtbus_device_add until after
+the paired virtbus_dev_del).
+
+The provided API for virtbus_dev_alloc is an efficient way of allocating
+the memory for the virtbus_device (except for the data element) and
+automatically freeing it when the device is removed from the bus.
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
+Virtual Bus Structs
+~~~~~~~~~~~~~~~~~~~
+struct device virtual_bus = {
+        .init_name      = "virtbus",
+        .release        = virtual_bus_release,
+};
+
+struct bus_type virtual_bus_type = {
+        .name           = "virtbus",
+        .match          = virtbus_match,
+        .probe          = virtbus_probe,
+        .remove         = virtbus_remove,
+        .shutdown       = virtbus_shutdown,
+        .suspend        = virtbus_suspend,
+        .resume         = virtbus_resume,
+};
+
+struct virtbus_device {
+        const char                      *name;
+        int                             id;
+        const struct virtbus_dev_id     *dev_id;
+        struct device                   dev;
+        void                            *data;
+};
+
+struct virtbus_driver {
+        int (*probe)(struct virtbus_device *);
+        int (*remove)(struct virtbus_device *);
+        void (*shutdown)(struct virtbus_device *);
+        int (*suspend)(struct virtbus_device *, pm_message_t state);
+        int (*resume)(struct virtbus_device *);
+        struct device_driver driver;
+};
+
+
+Virtual Bus API entry points
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+struct virtbus_device *virtbus_dev_alloc(const char *name, void *data)
+int virtbus_dev_add(struct virtbus_device *vdev)
+void virtbus_dev_del(struct virtbus_device *vdev)
+int virtbus_drv_register(struct virtbus_driver *vdrv, struct module *owner)
+void virtbus_drv_unregister(struct virtbus_driver *vdrv)
diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 6b331061d34b..30cef35b0c30 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -193,4 +193,18 @@ config DA8XX_MSTPRI
 
 source "drivers/bus/fsl-mc/Kconfig"
 
+config VIRTUAL_BUS
+       tristate "lightweight Virtual Bus"
+       depends on PM
+       help
+         Provides a lightweight bus for virtbus_devices to be added to it
+         and virtbus_drivers to be registered on it.  Will create a match
+         between the driver and device, then call the driver's probe with
+         the virtbus_device's struct (including a pointer for data).
+         One example is the irdma driver needing to connect with various
+         PCI LAN drivers to request resources (queues) to be able to perform
+         its function.  The data in the virtbus_device created by the
+         PCI LAN driver is a set of ops (function pointers) for the irdma
+         driver to use to register and communicate with the PCI LAN driver.
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
index 000000000000..af3f6d9b60f4
--- /dev/null
+++ b/drivers/bus/virtual_bus.c
@@ -0,0 +1,339 @@
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
+static DEFINE_IDA(virtbus_dev_id);
+
+static void virtual_bus_release(struct device *dev)
+{
+	pr_info("Removing virtual bus device.\n");
+}
+
+struct device virtual_bus = {
+	.init_name	= "virtbus",
+	.release	= virtual_bus_release,
+};
+EXPORT_SYMBOL_GPL(virtual_bus);
+
+/**
+ * virtbus_add_dev - add a virtual bus device
+ * @vdev: virtual bus device to add
+ */
+int virtbus_dev_add(struct virtbus_device *vdev)
+{
+	int ret;
+
+	if (!vdev)
+		return -EINVAL;
+
+	device_initialize(&vdev->dev);
+	if (!vdev->dev.parent)
+		vdev->dev.parent = &virtual_bus;
+
+	vdev->dev.bus = &virtual_bus_type;
+	/* All device IDs are automatically allocated */
+	ret = ida_simple_get(&virtbus_dev_id, 0, 0, GFP_KERNEL);
+	if (ret < 0)
+		return ret;
+
+	vdev->id = ret;
+	dev_set_name(&vdev->dev, "%s.%d", vdev->name, vdev->id);
+
+	pr_debug("Registering VirtBus device '%s'. Parent at %s\n",
+		 dev_name(&vdev->dev), dev_name(vdev->dev.parent));
+
+	ret = device_add(&vdev->dev);
+	if (!ret)
+		return ret;
+
+	/* Error adding virtual device */
+	ida_simple_remove(&virtbus_dev_id, vdev->id);
+	vdev->id = VIRTBUS_DEVID_NONE;
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(virtbus_dev_add);
+
+/**
+ * virtbus_dev_del - remove a virtual bus device
+ * vdev: virtual bus device we are removing
+ */
+void virtbus_dev_del(struct virtbus_device *vdev)
+{
+	if (!IS_ERR_OR_NULL(vdev)) {
+		device_del(&vdev->dev);
+
+		ida_simple_remove(&virtbus_dev_id, vdev->id);
+		vdev->id = VIRTBUS_DEVID_NONE;
+	}
+}
+EXPORT_SYMBOL_GPL(virtbus_dev_del);
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
+	kfree(vo);
+}
+
+/**
+ * virtbus_dev_alloc - allocate a virtbus device
+ * @name: name to associate with the vdev
+ * @data: pointer to data to be associated with this device
+ */
+struct virtbus_device *virtbus_dev_alloc(const char *name, void *data)
+{
+	struct virtbus_object *vo;
+
+	/* Create a virtbus object to contain the vdev and name.  This
+	 * avoids a problem with the const attribute of name in the vdev.
+	 * The virtbus_object will be allocated here and freed in the
+	 * release function.
+	 */
+	vo = kzalloc(sizeof(*vo) + strlen(name) + 1, GFP_KERNEL);
+	if (!vo)
+		return NULL;
+
+	strcpy(vo->name, name);
+	vo->vdev.name = vo->name;
+	vo->vdev.data = data;
+	vo->vdev.dev.release = virtbus_dev_release;
+
+	return &vo->vdev;
+}
+EXPORT_SYMBOL_GPL(virtbus_dev_alloc);
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
+	return vdrv->suspend ? vdrv->suspend(vdev, state) : 0;
+}
+
+static int virtbus_drv_resume(struct device *_dev)
+{
+	struct virtbus_driver *vdrv = to_virtbus_drv(_dev->driver);
+	struct virtbus_device *vdev = to_virtbus_dev(_dev);
+
+	return vdrv->resume ? vdrv->resume(vdev) : 0;
+}
+
+/**
+ * virtbus_drv_register - register a driver for virtual bus devices
+ * @vdrv: virtbus_driver structure
+ * @owner: owning module/driver
+ */
+int virtbus_drv_register(struct virtbus_driver *vdrv, struct module *owner)
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
+EXPORT_SYMBOL_GPL(virtbus_drv_register);
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
+static const
+struct virtbus_dev_id *virtbus_match_id(const struct virtbus_dev_id *id,
+					struct virtbus_device *vdev)
+{
+	while (id->name[0]) {
+		if (strcmp(vdev->name, id->name) == 0) {
+			vdev->dev_id = id;
+			return id;
+		}
+		id++;
+	}
+	return NULL;
+}
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
+	return (strcmp(vdev->name, drv->name) == 0);
+}
+
+/**
+ * virtbus_probe - call probe of the virtbus_drv
+ * @dev: device struct
+ */
+static int virtbus_probe(struct device *dev)
+{
+	return dev->driver->probe ? dev->driver->probe(dev) : 0;
+}
+
+static int virtbus_remove(struct device *dev)
+{
+	return dev->driver->remove ? dev->driver->remove(dev) : 0;
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
+	.name		= "virtbus",
+	.match		= virtbus_match,
+	.probe		= virtbus_probe,
+	.remove		= virtbus_remove,
+	.shutdown	= virtbus_shutdown,
+	.suspend	= virtbus_suspend,
+	.resume		= virtbus_resume,
+};
+EXPORT_SYMBOL_GPL(virtual_bus_type);
+
+static int __init virtual_bus_init(void)
+{
+	int err;
+
+	err = device_register(&virtual_bus);
+	if (err) {
+		put_device(&virtual_bus);
+		return err;
+	}
+
+	err = bus_register(&virtual_bus_type);
+	if (err) {
+		device_unregister(&virtual_bus);
+		return err;
+	}
+
+	pr_debug("Virtual Bus (virtbus) registered with kernel\n");
+	return err;
+}
+
+static void __exit virtual_bus_exit(void)
+{
+	bus_unregister(&virtual_bus_type);
+	device_unregister(&virtual_bus);
+}
+
+module_init(virtual_bus_init);
+module_exit(virtual_bus_exit);
diff --git a/include/linux/virtual_bus.h b/include/linux/virtual_bus.h
new file mode 100644
index 000000000000..722f020ac53b
--- /dev/null
+++ b/include/linux/virtual_bus.h
@@ -0,0 +1,64 @@
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
+#define VIRTBUS_DEVID_NONE	(-1)
+#define VIRTBUS_NAME_SIZE	20
+
+struct virtbus_dev_id {
+	char name[VIRTBUS_NAME_SIZE];
+	u64 driver_data;
+};
+
+/* memory allocation for dev_id is expected to be done by the virtbus_driver
+ * that will match with the virtbus_device, and the matching process will
+ * copy the pointer from the matched element from the driver to the device.
+ */
+struct virtbus_device {
+	const char			*name;
+	int				id;
+	const struct virtbus_dev_id	*dev_id;
+	struct device			dev;
+	void				*data;
+};
+
+struct virtbus_driver {
+	int (*probe)(struct virtbus_device *);
+	int (*remove)(struct virtbus_device *);
+	void (*shutdown)(struct virtbus_device *);
+	int (*suspend)(struct virtbus_device *, pm_message_t state);
+	int (*resume)(struct virtbus_device *);
+	struct device_driver driver;
+	const struct virtbus_dev_id *id_table;
+};
+
+#define virtbus_get_dev_id(vdev)	((vdev)->id_entry)
+#define virtbus_get_devdata(dev)	((dev)->devdata)
+#define dev_is_virtbus(dev)	((dev)->bus == &virtbus_type)
+#define to_virtbus_dev(x)	container_of((x), struct virtbus_device, dev)
+#define to_virtbus_drv(drv)	(container_of((drv), struct virtbus_driver, \
+				 driver))
+
+extern struct bus_type virtual_bus_type;
+extern struct device virtual_bus;
+
+int virtbus_dev_add(struct virtbus_device *vdev);
+void virtbus_dev_del(struct virtbus_device *vdev);
+struct virtbus_device *virtbus_dev_alloc(const char *name, void *devdata);
+int virtbus_drv_register(struct virtbus_driver *vdrv, struct module *owner);
+void virtbus_drv_unregister(struct virtbus_driver *vdrv);
+
+int virtbus_for_each_dev(void *data, int (*fn)(struct device *, void *));
+int virtbus_for_each_drv(void *data, int(*fn)(struct device_driver *, void *));
+
+#endif /* _VIRTUAL_BUS_H_ */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

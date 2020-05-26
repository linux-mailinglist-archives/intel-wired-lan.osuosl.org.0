Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8951E304A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:51:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8DA4A84138;
	Tue, 26 May 2020 20:51:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z8gdo0CjqvPo; Tue, 26 May 2020 20:51:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D363B84428;
	Tue, 26 May 2020 20:51:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D8E81BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6867E88573
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OH6LQhirDnkc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:51:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ECC8281E10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:51:24 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id c8so3234964iob.6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 13:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k4fIpVmUT6F/NE1nV6iBMTmolxamooVfgmufuP1KFOE=;
 b=lxPj4uQUDIJzgyiFunT6G0lNV47QvDDo11B95JWt+guRHzI1dh367BZ4P5olCg7yf9
 pR4AoVclV55KNZsMfyLs4shXK2NSMQ/pXS0t9sOTzbCnfZEF5xdDv2Vk/q5bMsH7Oah+
 pNFW5L1fgz+DSsBs14qxuhTYOUIdAeCSc8FCcmMAeiIjE+FwHt46cYNRolFd0IH1xRbh
 R61gyqoexsBmzdPk7vrfrh5D9M7wuXWjbZGVWjs72Y4ccQoVsDzy4odr1APDezhLK+wi
 Rrqln9AaQOgjUnQTGzGdEjUDOVT5thk7Cj54GtKZ3CjkgIOxcNFnYnBafVxuTAa1qhGM
 Szgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k4fIpVmUT6F/NE1nV6iBMTmolxamooVfgmufuP1KFOE=;
 b=K1IJs7rPTg3J5cx2oMqvQsBgBVkC3gaNN3R7DUw50lhZBpZDMxDVAhBG3iwhksBf/n
 C8X3WyQAQFeDW1WPrDRSCNfwbyvyGl5ADzYHlc+CHtPwleCxeD9M7allNqajmXvSgwCQ
 Dr0uFt7lyMtk8bYqxuVu1gUj0llynoXLjrRC0pM+E3gHtKdLbmFeLcMr8q9LD+zG+8An
 hrOMwrCBSRakpeERPN3H4usC3lFFeH9fS9aPRY4aoRR0eVCE0Zy2OhHiDSlInazX7CCW
 +EZfbgsa1AkUTisIvM/zJQ7bhWSHyaH5uDF9UVEH8+lw2udHgxi8Zu6niRg4200I3tK8
 tagQ==
X-Gm-Message-State: AOAM533mUPLZqLSu0CP5OTSqEkM2YE/09xQTdIQ6mJfRnDseRzHA8aeK
 f2ALScVb5ge60gDvzoJFnFU0g2FjcFgdLdqkLAk=
X-Google-Smtp-Source: ABdhPJxD2AbQQdhGL/MO4A9oD4OIksCWg35l44iz4e1W2zwRWPgHILQoGot8fpoE5obMKXjxdiC2ibibD2i0BY20+O4=
X-Received: by 2002:a6b:5f06:: with SMTP id t6mr8847362iob.88.1590526283845;
 Tue, 26 May 2020 13:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200523070750.3972397-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200523070750.3972397-1-jeffrey.t.kirsher@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 26 May 2020 13:51:12 -0700
Message-ID: <CAKgT0UcVW+E7caQKzgEhjdxbvy3pSQESAobx0TH+8NOMnJVYBg@mail.gmail.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Subject: Re: [Intel-wired-lan] [net-next v4 01/12] Implementation of Virtual
 Bus
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
Cc: "Duyck, Alexander H" <alexander.h.duyck@intel.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, May 23, 2020 at 12:08 AM Jeff Kirsher
<jeffrey.t.kirsher@intel.com> wrote:
>
> From: Dave Ertman <david.m.ertman@intel.com>
>
> This is the initial implementation of the Virtual Bus,
> virtbus_device and virtbus_driver.  The virtual bus is
> a software based bus intended to support registering
> virtbus_devices and virtbus_drivers and provide matching
> between them and probing of the registered drivers.
>
> The bus will support probe/remove shutdown and
> suspend/resume callbacks.
>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
> Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
> Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> ---
>
> Jesse/Alex,
>
> I am sending the latest virtbus patch to you, as respected Linux
> community members, and Greg KH is wanting additional SOB's by respected
> Intel developers.  Please feel free to share with other developers as
> needed.  Greg's focus was on the documentation changes, which he feels
> does not properly reflect or convey how the interface works.  I have
> also sent this latest version to patchworks so that you can respond to
> IWL with your comments.
>
> Thanks,
> Jeff
>
>  Documentation/driver-api/index.rst       |   1 +
>  Documentation/driver-api/virtual_bus.rst |  93 ++++++++++
>  drivers/bus/Kconfig                      |  10 ++
>  drivers/bus/Makefile                     |   2 +
>  drivers/bus/virtual_bus.c                | 215 +++++++++++++++++++++++
>  include/linux/mod_devicetable.h          |   8 +
>  include/linux/virtual_bus.h              |  62 +++++++
>  scripts/mod/devicetable-offsets.c        |   3 +
>  scripts/mod/file2alias.c                 |   7 +
>  9 files changed, 401 insertions(+)
>  create mode 100644 Documentation/driver-api/virtual_bus.rst
>  create mode 100644 drivers/bus/virtual_bus.c
>  create mode 100644 include/linux/virtual_bus.h
>
> diff --git a/Documentation/driver-api/index.rst b/Documentation/driver-api/index.rst
> index d4e78cb3ef4d..4e628a6b8408 100644
> --- a/Documentation/driver-api/index.rst
> +++ b/Documentation/driver-api/index.rst
> @@ -101,6 +101,7 @@ available subsections can be seen below.
>     sync_file
>     vfio-mediated-device
>     vfio
> +   virtual_bus
>     xilinx/index
>     xillybus
>     zorro
> diff --git a/Documentation/driver-api/virtual_bus.rst b/Documentation/driver-api/virtual_bus.rst
> new file mode 100644
> index 000000000000..c01fb2f079d5
> --- /dev/null
> +++ b/Documentation/driver-api/virtual_bus.rst
> @@ -0,0 +1,93 @@
> +===============================
> +Virtual Bus Devices and Drivers
> +===============================
> +
> +See <linux/virtual_bus.h> for the models for virtbus_device and virtbus_driver.
> +
> +This bus is meant to be a minimalist software-based bus used for
> +connecting devices (that may not physically exist) to be able to
> +communicate with each other.
> +
> +
> +Memory Allocation Lifespan and Model
> +~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> +
> +The memory for a virtbus_device or virtbus_driver needs to be
> +allocated before registering them on the virtual bus.

Isn't this statement kind of obvious? Of course you need to allocate
something before you can register it.

> +The memory for the virtual_device is expected to remain viable until the
> +device's mandatory .release() callback which is invoked when the device
> +is unregistered by calling virtbus_unregister_device().
> +
> +Memory associated with a virtbus_driver is expected to remain viable
> +until the driver's .remove() or .shutdown() callbacks are invoked
> +during module insertion or removal.
> +

All this talk about memory has me somewhat concerned that I might not
understand what is being talked about here. What is the memory in
question? It isn't clear. I was thinking this was for the structure
that the device lives in but I assume now that it must be referring to
something else. Is this supposed to be referring to the lifetime of
the device/driver instance?

> +Device Enumeration
> +~~~~~~~~~~~~~~~~~~
> +
> +The virtbus device is enumerated when it is attached to the bus. The
> +device is assigned a unique ID that will be appended to its name
> +making it unique.  If two virtbus_devices both named "foo" are
> +registered onto the bus, they will have a sub-device names of "foo.x"
> +and "foo.y" where x and y are unique integers.
> +
> +Common Usage and Structure Design
> +~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> +
> +The virtbus_device and virtbus_driver need to have a common header
> +file.
> +
> +In the common header file outside of the virtual_bus infrastructure,
> +define struct virtbus_object:
> +
> +.. code-block:: c
> +
> +        struct virtbus_object {
> +                virtbus_device vdev;
> +                struct my_private_struct *my_stuff;
> +        }
> +

Is this supposed to be an example? It is confusing from the setup.
Normally something like this would be "struct foo {" and not "struct
virtbus_object" as it makes it sound like it is a part of the virtbus
infrastructure which I don't believe it is. The idea behind "struct
foo" is that it is an unidentified object, see RFC 3092
https://tools.ietf.org/html/rfc3092. Also I wouldn't bother with
"my_stuff" and would just call it "stuff".

> +When the virtbus_device vdev is passed to the virtbus_driver's probe
> +callback, it can then get access to the struct my_stuff.
> +
> +An example of the driver encapsulation:
> +
> +.. code-block:: c
> +
> +       struct custom_driver {
> +               struct virtbus_driver virtbus_drv;
> +               const struct custom_driver_ops ops;
> +       }
> +
> +An example of this usage would be :
> +
> +.. code-block:: c
> +
> +       struct custom_driver custom_drv = {
> +               .virtbus_drv = {
> +                       .driver = {
> +                               .name = "sof-ipc-test-virtbus-drv",
> +                       },
> +                       .id_table = custom_virtbus_id_table,
> +                       .probe = custom_probe,
> +                       .remove = custom_remove,
> +                       .shutdown = custom_shutdown,
> +               },
> +               .ops = custom_ops,
> +       };
> +
> +Mandatory Elements
> +~~~~~~~~~~~~~~~~~~
> +
> +virtbus_device:
> +
> +- .release() callback must not be NULL and is expected to perform memory cleanup.
> +- .match_name must be populated to be able to match with a driver
>
> +virtbus_driver:
> +
> +- .probe() callback must not be NULL
> +- .remove() callback must not be NULL
> +- .shutdown() callback must not be NULL
> +- .id_table must not be NULL, used to perform matching

It might help to include an explanation of probe, remove, and shutdown
assuming someone hasn't played with driver code before.

> diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
> index 6d4e4497b59b..00553c78510c 100644
> --- a/drivers/bus/Kconfig
> +++ b/drivers/bus/Kconfig
> @@ -203,4 +203,14 @@ config DA8XX_MSTPRI
>  source "drivers/bus/fsl-mc/Kconfig"
>  source "drivers/bus/mhi/Kconfig"
>
> +config VIRTUAL_BUS
> +       tristate "Software based Virtual Bus"
> +       help
> +         Provides a software bus for virtbus_devices to be added to it
> +         and virtbus_drivers to be registered on it.  It matches driver
> +         and device based on id and calls the driver's probe routine.
> +         One example is the irdma driver needing to connect with various
> +         PCI LAN drivers to request resources (queues) to be able to perform
> +         its function.
> +
>  endmenu
> diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
> index 05f32cd694a4..d30828a4768c 100644
> --- a/drivers/bus/Makefile
> +++ b/drivers/bus/Makefile
> @@ -37,3 +37,5 @@ obj-$(CONFIG_DA8XX_MSTPRI)    += da8xx-mstpri.o
>
>  # MHI
>  obj-$(CONFIG_MHI_BUS)          += mhi/
> +
> +obj-$(CONFIG_VIRTUAL_BUS)      += virtual_bus.o
> diff --git a/drivers/bus/virtual_bus.c b/drivers/bus/virtual_bus.c
> new file mode 100644
> index 000000000000..b70023d5b58a
> --- /dev/null
> +++ b/drivers/bus/virtual_bus.c
> @@ -0,0 +1,215 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * virtual_bus.c - lightweight software based bus for virtual devices
> + *
> + * Copyright (c) 2019-2020 Intel Corporation
> + *
> + * Please see Documentation/driver-api/virtual_bus.rst for
> + * more information
> + */
> +
> +#include <linux/string.h>
> +#include <linux/virtual_bus.h>
> +#include <linux/of_irq.h>
> +#include <linux/module.h>
> +#include <linux/init.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/pm_domain.h>
> +#include <linux/acpi.h>
> +#include <linux/device.h>
> +
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("Virtual Bus");
> +MODULE_AUTHOR("David Ertman <david.m.ertman@intel.com>");
> +MODULE_AUTHOR("Kiran Patil <kiran.patil@intel.com>");
> +
> +static DEFINE_IDA(virtbus_dev_ida);
> +#define VIRTBUS_INVALID_ID     0xFFFFFFFF

I would probably change the definition for VIRTBUS_INVALID_ID to ~0u
so that I can avoid having to count the F's and we know the type is
unsigned since technically what is defined currently is -1.

> +
> +static const
> +struct virtbus_dev_id *virtbus_match_id(const struct virtbus_dev_id *id,
> +                                       struct virtbus_device *vdev)
> +{
> +       while (id->name[0]) {
> +               if (!strcmp(vdev->match_name, id->name))
> +                       return id;
> +               id++;
> +       }
> +       return NULL;
> +}
> +
> +static int virtbus_match(struct device *dev, struct device_driver *drv)
> +{
> +       struct virtbus_driver *vdrv = to_virtbus_drv(drv);
> +       struct virtbus_device *vdev = to_virtbus_dev(dev);
> +
> +       return virtbus_match_id(vdrv->id_table, vdev) != NULL;
> +}
> +
> +static int virtbus_uevent(struct device *dev, struct kobj_uevent_env *env)
> +{
> +       struct virtbus_device *vdev = to_virtbus_dev(dev);
> +
> +       if (add_uevent_var(env, "MODALIAS=%s%s", "virtbus:", vdev->match_name))
> +               return -ENOMEM;
> +
> +       return 0;
> +}
> +
> +static const struct dev_pm_ops virtbus_dev_pm_ops = {
> +       SET_RUNTIME_PM_OPS(pm_generic_runtime_suspend,
> +                          pm_generic_runtime_resume, NULL)
> +#ifdef CONFIG_PM_SLEEP
> +       SET_SYSTEM_SLEEP_PM_OPS(pm_generic_suspend, pm_generic_resume)
> +#endif
> +};
> +
> +struct bus_type virtual_bus_type = {
> +       .name = "virtbus",
> +       .match = virtbus_match,
> +       .uevent = virtbus_uevent,
> +       .pm = &virtbus_dev_pm_ops,
> +};
> +
> +/**
> + * virtbus_release_device - Destroy a virtbus device
> + * @_dev: device to release
> + */
> +static void virtbus_release_device(struct device *_dev)
> +{
> +       struct virtbus_device *vdev = to_virtbus_dev(_dev);
> +       u32 ida = vdev->id;
> +
> +       vdev->release(vdev);
> +       if (ida != VIRTBUS_INVALID_ID)
> +               ida_simple_remove(&virtbus_dev_ida, ida);
> +}
> +
> +/**
> + * virtbus_register_device - add a virtual bus device
> + * @vdev: virtual bus device to add
> + */
> +int virtbus_register_device(struct virtbus_device *vdev)
> +{
> +       int ret;
> +
> +       if (WARN_ON(!vdev->release))
> +               return -EINVAL;
> +
> +       /* All error paths out of this function after the device_initialize
> +        * must perform a put_device() so that the .release() callback is
> +        * called for an error condition.
> +        */
> +       device_initialize(&vdev->dev);
> +
> +       vdev->dev.bus = &virtual_bus_type;
> +       vdev->dev.release = virtbus_release_device;
> +
> +       /* All device IDs are automatically allocated */
> +       ret = ida_simple_get(&virtbus_dev_ida, 0, 0, GFP_KERNEL);
> +
> +       if (ret < 0) {
> +               vdev->id = VIRTBUS_INVALID_ID;
> +               dev_err(&vdev->dev, "get IDA idx for virtbus device failed!\n");
> +               goto device_add_err;
> +       }
> +
> +       vdev->id = ret;
> +
> +       ret = dev_set_name(&vdev->dev, "%s.%d", vdev->match_name, vdev->id);
> +       if (ret) {
> +               dev_err(&vdev->dev, "dev_set_name failed for device\n");
> +               goto device_add_err;
> +       }
> +
> +       dev_dbg(&vdev->dev, "Registering virtbus device '%s'\n",
> +               dev_name(&vdev->dev));
> +
> +       ret = device_add(&vdev->dev);
> +       if (ret)
> +               goto device_add_err;
> +
> +       return 0;
> +
> +device_add_err:
> +       dev_err(&vdev->dev, "Add device to virtbus failed!: %d\n", ret);
> +       put_device(&vdev->dev);
> +
> +       return ret;
> +}
> +EXPORT_SYMBOL_GPL(virtbus_register_device);
> +
> +static int virtbus_probe_driver(struct device *_dev)
> +{
> +       struct virtbus_driver *vdrv = to_virtbus_drv(_dev->driver);
> +       struct virtbus_device *vdev = to_virtbus_dev(_dev);
> +       int ret;
> +
> +       ret = dev_pm_domain_attach(_dev, true);
> +       if (ret) {
> +               dev_warn(_dev, "Failed to attach to PM Domain : %d\n", ret);
> +               return ret;
> +       }
> +
> +       ret = vdrv->probe(vdev);
> +       if (ret) {
> +               dev_err(&vdev->dev, "Probe returned error\n");
> +               dev_pm_domain_detach(_dev, true);
> +       }
> +
> +       return ret;
> +}
> +
> +static int virtbus_remove_driver(struct device *_dev)
> +{
> +       struct virtbus_driver *vdrv = to_virtbus_drv(_dev->driver);
> +       struct virtbus_device *vdev = to_virtbus_dev(_dev);
> +       int ret = 0;
> +
> +       ret = vdrv->remove(vdev);
> +       dev_pm_domain_detach(_dev, true);
> +
> +       return ret;
> +}
> +
> +static void virtbus_shutdown_driver(struct device *_dev)
> +{
> +       struct virtbus_driver *vdrv = to_virtbus_drv(_dev->driver);
> +       struct virtbus_device *vdev = to_virtbus_dev(_dev);
> +
> +       vdrv->shutdown(vdev);
> +}
> +
> +/**
> + * __virtbus_register_driver - register a driver for virtual bus devices
> + * @vdrv: virtbus_driver structure
> + * @owner: owning module/driver
> + */
> +int __virtbus_register_driver(struct virtbus_driver *vdrv, struct module *owner)
> +{
> +       if (!vdrv->probe || !vdrv->remove || !vdrv->shutdown || !vdrv->id_table)
> +               return -EINVAL;
> +
> +       vdrv->driver.owner = owner;
> +       vdrv->driver.bus = &virtual_bus_type;
> +       vdrv->driver.probe = virtbus_probe_driver;
> +       vdrv->driver.remove = virtbus_remove_driver;
> +       vdrv->driver.shutdown = virtbus_shutdown_driver;
> +
> +       return driver_register(&vdrv->driver);
> +}
> +EXPORT_SYMBOL_GPL(__virtbus_register_driver);
> +
> +static int __init virtual_bus_init(void)
> +{
> +       return bus_register(&virtual_bus_type);
> +}
> +
> +static void __exit virtual_bus_exit(void)
> +{
> +       bus_unregister(&virtual_bus_type);
> +       ida_destroy(&virtbus_dev_ida);
> +}
> +
> +module_init(virtual_bus_init);
> +module_exit(virtual_bus_exit);
> diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
> index 4c2ddd0941a7..60bcfe75fb94 100644
> --- a/include/linux/mod_devicetable.h
> +++ b/include/linux/mod_devicetable.h
> @@ -832,4 +832,12 @@ struct mhi_device_id {
>         kernel_ulong_t driver_data;
>  };
>
> +#define VIRTBUS_NAME_SIZE 20
> +#define VIRTBUS_MODULE_PREFIX "virtbus:"
> +
> +struct virtbus_dev_id {
> +       char name[VIRTBUS_NAME_SIZE];
> +       kernel_ulong_t driver_data;
> +};
> +
>  #endif /* LINUX_MOD_DEVICETABLE_H */
> diff --git a/include/linux/virtual_bus.h b/include/linux/virtual_bus.h
> new file mode 100644
> index 000000000000..4872fd5a9218
> --- /dev/null
> +++ b/include/linux/virtual_bus.h
> @@ -0,0 +1,62 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * virtual_bus.h - lightweight software bus
> + *
> + * Copyright (c) 2019-2020 Intel Corporation
> + *
> + * Please see Documentation/driver-api/virtual_bus.rst for more information
> + */
> +
> +#ifndef _VIRTUAL_BUS_H_
> +#define _VIRTUAL_BUS_H_
> +
> +#include <linux/device.h>
> +
> +struct virtbus_device {
> +       struct device dev;
> +       const char *match_name;
> +       void (*release)(struct virtbus_device *);
> +       u32 id;
> +};
> +
> +struct virtbus_driver {
> +       int (*probe)(struct virtbus_device *);
> +       int (*remove)(struct virtbus_device *);
> +       void (*shutdown)(struct virtbus_device *);
> +       int (*suspend)(struct virtbus_device *, pm_message_t);
> +       int (*resume)(struct virtbus_device *);
> +       struct device_driver driver;
> +       const struct virtbus_dev_id *id_table;
> +};
> +
> +static inline
> +struct virtbus_device *to_virtbus_dev(struct device *dev)
> +{
> +       return container_of(dev, struct virtbus_device, dev);
> +}
> +
> +static inline
> +struct virtbus_driver *to_virtbus_drv(struct device_driver *drv)
> +{
> +       return container_of(drv, struct virtbus_driver, driver);
> +}
> +
> +int virtbus_register_device(struct virtbus_device *vdev);
> +
> +int
> +__virtbus_register_driver(struct virtbus_driver *vdrv, struct module *owner);
> +
> +#define virtbus_register_driver(vdrv) \
> +       __virtbus_register_driver(vdrv, THIS_MODULE)
> +
> +static inline void virtbus_unregister_device(struct virtbus_device *vdev)
> +{
> +       device_unregister(&vdev->dev);
> +}
> +
> +static inline void virtbus_unregister_driver(struct virtbus_driver *vdrv)
> +{
> +       driver_unregister(&vdrv->driver);
> +}
> +
> +#endif /* _VIRTUAL_BUS_H_ */
> diff --git a/scripts/mod/devicetable-offsets.c b/scripts/mod/devicetable-offsets.c
> index 010be8ba2116..0c8e0e3a7c84 100644
> --- a/scripts/mod/devicetable-offsets.c
> +++ b/scripts/mod/devicetable-offsets.c
> @@ -241,5 +241,8 @@ int main(void)
>         DEVID(mhi_device_id);
>         DEVID_FIELD(mhi_device_id, chan);
>
> +       DEVID(virtbus_dev_id);
> +       DEVID_FIELD(virtbus_dev_id, name);
> +
>         return 0;
>  }
> diff --git a/scripts/mod/file2alias.c b/scripts/mod/file2alias.c
> index 02d5d79da284..7d78fa3fba34 100644
> --- a/scripts/mod/file2alias.c
> +++ b/scripts/mod/file2alias.c
> @@ -1358,7 +1358,13 @@ static int do_mhi_entry(const char *filename, void *symval, char *alias)
>  {
>         DEF_FIELD_ADDR(symval, mhi_device_id, chan);
>         sprintf(alias, MHI_DEVICE_MODALIAS_FMT, *chan);
> +       return 1;
> +}
>
> +static int do_virtbus_entry(const char *filename, void *symval, char *alias)
> +{
> +       DEF_FIELD_ADDR(symval, virtbus_dev_id, name);
> +       sprintf(alias, VIRTBUS_MODULE_PREFIX "%s", *name);
>         return 1;
>  }
>
> @@ -1436,6 +1442,7 @@ static const struct devtable devtable[] = {
>         {"tee", SIZE_tee_client_device_id, do_tee_entry},
>         {"wmi", SIZE_wmi_device_id, do_wmi_entry},
>         {"mhi", SIZE_mhi_device_id, do_mhi_entry},
> +       {"virtbus", SIZE_virtbus_dev_id, do_virtbus_entry},
>  };
>
>  /* Create MODULE_ALIAS() statements.
> --
> 2.26.2
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

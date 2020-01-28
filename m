Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB7E14B377
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jan 2020 12:24:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0D4984EDB;
	Tue, 28 Jan 2020 11:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KkBxz88CRxxx; Tue, 28 Jan 2020 11:24:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A00E484D0A;
	Tue, 28 Jan 2020 11:24:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 83F8B1BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jan 2020 11:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7FAD1204AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jan 2020 11:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YdOMmjOfE3Ma for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jan 2020 11:24:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id D2D462033D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jan 2020 11:24:35 +0000 (UTC)
Received: from hypnotoad.molgen.mpg.de (hypnotoad.molgen.mpg.de [141.14.18.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D162520646FF0;
 Tue, 28 Jan 2020 12:24:32 +0100 (CET)
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <20200122174152.5962-1-jeffrey.t.kirsher@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <2e19c1f8-49e4-ac9a-cb2c-817f3cc0a344@molgen.mpg.de>
Date: Tue, 28 Jan 2020 12:24:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200122174152.5962-1-jeffrey.t.kirsher@intel.com>
Subject: Re: [Intel-wired-lan] [next-queue v6] virtual-bus: Implementation
 of Virtual Bus
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="===============3551877222864705005=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a cryptographically signed message in MIME format.

--===============3551877222864705005==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms060908030903000806010905"

This is a cryptographically signed message in MIME format.

--------------ms060908030903000806010905
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Dear Jeff, dear Dave,


Thank you. I have a few more style issues and nitpicks.


On 2020-01-22 18:41, Jeff Kirsher wrote:
> From: Dave Ertman <david.m.ertman@intel.com>
>=20
> This is the initial implementation of the Virtual Bus,
> virtbus_device and virtbus_driver.  The virtual bus is
> a software based bus intended to support registering
> virtbus_devices and virtbus_drivers and provide matching
> between them and probing of the registered drivers.
>=20
> The bus will support probe/remove shutdown and
> suspend/resume callbacks.
>=20
> Kconfig and Makefile alterations are included

Nit: Dot/period at the end?

Are tests available, or examples how to use it?

> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> ---
> v6: Fix the order of put_device() and device_del() in
>     virtbus_dev_unregister()
>=20
>  Documentation/driver-api/virtual_bus.rst |  59 +++++
>  drivers/bus/Kconfig                      |  11 +
>  drivers/bus/Makefile                     |   1 +
>  drivers/bus/virtual_bus.c                | 267 +++++++++++++++++++++++=

>  include/linux/mod_devicetable.h          |   8 +
>  include/linux/virtual_bus.h              |  57 +++++
>  scripts/mod/devicetable-offsets.c        |   3 +
>  scripts/mod/file2alias.c                 |   8 +
>  8 files changed, 414 insertions(+)
>  create mode 100644 Documentation/driver-api/virtual_bus.rst
>  create mode 100644 drivers/bus/virtual_bus.c
>  create mode 100644 include/linux/virtual_bus.h
>=20
> diff --git a/Documentation/driver-api/virtual_bus.rst b/Documentation/d=
river-api/virtual_bus.rst
> new file mode 100644
> index 000000000000..5f35c19171d7
> --- /dev/null
> +++ b/Documentation/driver-api/virtual_bus.rst
> @@ -0,0 +1,59 @@
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> +Virtual Bus Devices and Drivers
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> +
> +See <linux/virtual_bus.h> for the models for virtbus_device and virtbu=
s_driver.

Mark up ``virtbus_device`` and ``virtbus_driver``?

> +This bus is meant to be a lightweight software based bus to attach gen=
eric
> +devices and drivers to so that a chunk of data can be passed between t=
hem.
> +
> +One use case example is an rdma driver needing to connect with several=

> +different types of PCI LAN devices to be able to request resources fro=
m
> +them (queue sets).  Each LAN driver that supports rdma will register a=

> +virtbus_device on the virtual bus for each physical function.  The rdm=
a
> +driver will register as a virtbus_driver on the virtual bus to be
> +matched up with multiple virtbus_devices and receive a pointer to a
> +struct containing the callbacks that the PCI LAN drivers support for
> +registering with them.

Ditto. (Also in the rest of the file.)

> +
> +Sections in this document:
> +        Virtbus devices
> +        Virtbus drivers
> +        Device Enumeration
> +        Device naming and driver binding
> +        Virtual Bus API entry points
> +
> +Virtbus devices
> +~~~~~~~~~~~~~~~
> +Virtbus_devices support the minimal device functionality.  Devices wil=
l

Virtbus devices =E2=80=A6

> +accept a name, and then, when added to the virtual bus, an automatical=
ly
> +generated index is concatenated onto it for the virtbus_device->name.
> +
> +Virtbus drivers
> +~~~~~~~~~~~~~~~
> +Virtbus drivers register with the virtual bus to be matched with virtb=
us
> +devices.  They expect to be registered with a probe and remove callbac=
k,
> +and also support shutdown, suspend, and resume callbacks.  They otherw=
ise
> +follow the standard driver behavior of having discovery and enumeratio=
n
> +handled in the bus infrastructure.
> +
> +Virtbus drivers register themselves with the API entry point virtbus_d=
rv_reg
> +and unregister with virtbus_drv_unreg.
> +
> +Device Enumeration
> +~~~~~~~~~~~~~~~~~~
> +Enumeration is handled automatically by the bus infrastructure via the=

> +ida_simple methods.
> +
> +Device naming and driver binding
> +~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> +The virtbus_device.dev.name is the canonical name for the device. It i=
s
> +built from two other parts:
> +
> +        - virtbus_device.name (also used for matching).
> +        - virtbus_device.id (generated automatically from ida_simple c=
alls)
> +
> +Virtbus device IDs are always in "<name>.<instance>" format.  Instance=
s are

``<name>.<instance>``

> +automatically selected through an ida_simple_get so are positive integ=
ers.
> +Names are taken from the device name field.  Driver IDs are simple <na=
me>.
> +Need to extract the name from the Virtual Device compare to name of th=
e
> +driver.

The last sentence sounds incomplete to me.

> diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
> index 50200d1c06ea..43e9f108d690 100644
> --- a/drivers/bus/Kconfig
> +++ b/drivers/bus/Kconfig
> @@ -203,4 +203,15 @@ config DA8XX_MSTPRI
> =20
>  source "drivers/bus/fsl-mc/Kconfig"
> =20
> +config VIRTUAL_BUS
> +       tristate "Software based Virtual Bus"
> +       help
> +         Provides a software bus for virtbus_devices to be added to it=

> +         and virtbus_drivers to be registered on it.  Will create a ma=
tch
> +         between the driver and device, then call the driver's probe w=
ith
> +         the virtbus_device's struct.
> +         One example is the irdma driver needing to connect with vario=
us

Above only rdma was written.

> +         PCI LAN drivers to request resources (queues) to be able to p=
erform
> +         its function.
> +
>  endmenu
> diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
> index 1320bcf9fa9d..6721c77dc71b 100644
> --- a/drivers/bus/Makefile
> +++ b/drivers/bus/Makefile
> @@ -34,3 +34,4 @@ obj-$(CONFIG_UNIPHIER_SYSTEM_BUS)	+=3D uniphier-syste=
m-bus.o
>  obj-$(CONFIG_VEXPRESS_CONFIG)	+=3D vexpress-config.o
> =20
>  obj-$(CONFIG_DA8XX_MSTPRI)	+=3D da8xx-mstpri.o
> +obj-$(CONFIG_VIRTUAL_BUS)	+=3D virtual_bus.o
> diff --git a/drivers/bus/virtual_bus.c b/drivers/bus/virtual_bus.c
> new file mode 100644
> index 000000000000..85d2dbfa3376
> --- /dev/null
> +++ b/drivers/bus/virtual_bus.c
> @@ -0,0 +1,267 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * virtual_bus.c - lightweight software based bus for virtual devices
> + *
> + * Copyright (c) 2019-20 Intel Corporation
> + *
> + * Please see Documentation/driver-api/virtual_bus.rst for
> + * more information

At least *more* fits on the line above. Below it=E2=80=99s on one line.

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
> +MODULE_DESCRIPTION("Lightweight Virtual Bus");
> +MODULE_AUTHOR("David Ertman <david.m.ertman@intel.com>");
> +MODULE_AUTHOR("Kiran Patil <kiran.patil@intel.com>");
> +
> +static DEFINE_IDA(virtbus_dev_ida);
> +
> +static const
> +struct virtbus_dev_id *virtbus_match_id(const struct virtbus_dev_id *i=
d,
> +					struct virtbus_device *vdev)
> +{
> +	while (id->name[0]) {
> +		if (!strcmp(vdev->name, id->name)) {

Use strncmp with `VIRTBUS_NAME_SIZE`?

> +			vdev->matched_element =3D id;
> +			return id;
> +		}
> +		id++;
> +	}
> +	return NULL;
> +}
> +
> +static int virtbus_match(struct device *dev, struct device_driver *drv=
)
> +{
> +	struct virtbus_driver *vdrv =3D to_virtbus_drv(drv);
> +	struct virtbus_device *vdev =3D to_virtbus_dev(dev);
> +
> +	return virtbus_match_id(vdrv->id_table, vdev) !=3D NULL;
> +}
> +
> +static int virtbus_probe(struct device *dev)
> +{
> +	return dev->driver->probe(dev);
> +}
> +
> +static int virtbus_remove(struct device *dev)
> +{
> +	return dev->driver->remove(dev);
> +}
> +
> +static void virtbus_shutdown(struct device *dev)
> +{
> +	dev->driver->shutdown(dev);
> +}
> +
> +static int virtbus_suspend(struct device *dev, pm_message_t state)
> +{
> +	if (dev->driver->suspend)
> +		return dev->driver->suspend(dev, state);
> +
> +	return 0;
> +}
> +
> +static int virtbus_resume(struct device *dev)
> +{
> +	if (dev->driver->resume)
> +		return dev->driver->resume(dev);
> +
> +	return 0;
> +}
> +
> +struct bus_type virtual_bus_type =3D {
> +	.name =3D "virtbus",
> +	.match =3D virtbus_match,
> +	.probe =3D virtbus_probe,
> +	.remove =3D virtbus_remove,
> +	.shutdown =3D virtbus_shutdown,
> +	.suspend =3D virtbus_suspend,
> +	.resume =3D virtbus_resume,
> +};
> +
> +/**
> + * virtbus_dev_release - Destroy a virtbus device
> + * @vdev: virtual device to release
> + */
> +static void virtbus_dev_release(struct device *_dev)
> +{
> +	struct virtbus_device *vdev =3D to_virtbus_dev(_dev);
> +
> +	ida_simple_remove(&virtbus_dev_ida, vdev->id);
> +	vdev->release(vdev);
> +}
> +
> +/**
> + * virtbus_dev_register - add a virtual bus device
> + * @vdev: virtual bus device to add
> + */
> +int virtbus_dev_register(struct virtbus_device *vdev)
> +{
> +	int ret;
> +
> +	if (!vdev->release) {
> +		dev_err(&vdev->dev, "virtbus_device .release callback NULL\n");
> +		return -EINVAL;
> +	}
> +
> +	device_initialize(&vdev->dev);
> +
> +	vdev->dev.bus =3D &virtual_bus_type;
> +	vdev->dev.release =3D virtbus_dev_release;
> +	/* All device IDs are automatically allocated */
> +	ret =3D ida_simple_get(&virtbus_dev_ida, 0, 0, GFP_KERNEL);
> +	if (ret < 0) {
> +		dev_err(&vdev->dev, "get IDA idx for virtbus device failed!\n");
> +		put_device(&vdev->dev);
> +		return ret;
> +	}
> +
> +	vdev->id =3D ret;
> +	dev_set_name(&vdev->dev, "%s.%d", vdev->name, vdev->id);
> +
> +	dev_dbg(&vdev->dev, "Registering virtbus device '%s'\n",
> +		dev_name(&vdev->dev));
> +
> +	ret =3D device_add(&vdev->dev);
> +	if (ret)
> +		goto device_add_err;
> +
> +	return 0;
> +
> +device_add_err:
> +	dev_err(&vdev->dev, "Add device to virtbus failed!\n");
> +	put_device(&vdev->dev);
> +	ida_simple_remove(&virtbus_dev_ida, vdev->id);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(virtbus_dev_register);
> +
> +/**
> + * virtbus_dev_unregister - remove a virtual bus device
> + * vdev: virtual bus device we are removing
> + */
> +void virtbus_dev_unregister(struct virtbus_device *vdev)
> +{
> +	device_del(&vdev->dev);
> +	put_device(&vdev->dev);
> +}
> +EXPORT_SYMBOL_GPL(virtbus_dev_unregister);
> +
> +static int virtbus_drv_probe(struct device *_dev)
> +{
> +	struct virtbus_driver *vdrv =3D to_virtbus_drv(_dev->driver);
> +	struct virtbus_device *vdev =3D to_virtbus_dev(_dev);
> +	int ret;
> +
> +	ret =3D dev_pm_domain_attach(_dev, true);
> +	if (ret) {
> +		dev_warn(_dev, "Failed to attatch to PM Domain : %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D vdrv->probe(vdev);
> +	if (ret) {
> +		dev_err(&vdev->dev, "Probe returned error\n");

Print out the error value?

> +		dev_pm_domain_detach(_dev, true);
> +	}
> +
> +	return ret;
> +}
> +

[=E2=80=A6]


Kind regards,

Paul


--------------ms060908030903000806010905
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
EFowggUSMIID+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYT
AkRFMSswKQYDVQQKDCJULVN5c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYD
VQQLDBZULVN5c3RlbXMgVHJ1c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFs
Um9vdCBDbGFzcyAyMB4XDTE2MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNV
BAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVu
IEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNVBAMTJERG
Ti1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAMtg1/9moUHN0vqHl4pzq5lN6mc5WqFggEcVToyVsuXPztNXS43O+FZs
FVV2B+pG/cgDRWM+cNSrVICxI5y+NyipCf8FXRgPxJiZN7Mg9mZ4F4fCnQ7MSjLnFp2uDo0p
eQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+BaL2w8pQDcNb1lDY9/Mm3yWmpLYgHurDg0
WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qLNupOkSk9s1FcragMvp0049ENF4N1
xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCrKq4Xl14zzsjz9AkH4wKGMUZrAcUQDBHHWekC
AwEAAaOCAXQwggFwMA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUk+PYMiba1fFKpZFK4OpL
4qIMz+EwHwYDVR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYDVR0TAQH/BAgwBgEB
/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGCLB4wCAYGZ4EM
AQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUvcmwvVGVs
ZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3JsMIGGBggrBgEFBQcBAQR6MHgwLAYIKwYBBQUH
MAGGIGh0dHA6Ly9vY3NwMDMzNi50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRw
Oi8vcGtpMDMzNi50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5j
ZXIwDQYJKoZIhvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5Ri71sqQPrhE4
eTizDnS6dl2e6BiClmLbTDPo3flq3zK9LExHYFV/53RrtCyD2HlrtrdNUAtmB7Xts5et6u5/
MOaZ/SLick0+hFvu+c+Z6n/XUjkurJgARH5pO7917tALOxrN5fcPImxHhPalR6D90Bo0fa3S
PXez7vTXTf/D6OWST1k+kEcQSrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc2
2CzeIs2LgtjZeOJVEqM7h0S2EQvVDFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bP
ZYoaorVyGTkwggWNMIIEdaADAgECAgwcOtRQhH7u81j4jncwDQYJKoZIhvcNAQELBQAwgZUx
CzAJBgNVBAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1
dHNjaGVuIEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNV
BAMTJERGTi1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMjAeFw0xNjExMDMxNTI0
NDhaFw0zMTAyMjIyMzU5NTlaMGoxCzAJBgNVBAYTAkRFMQ8wDQYDVQQIDAZCYXllcm4xETAP
BgNVBAcMCE11ZW5jaGVuMSAwHgYDVQQKDBdNYXgtUGxhbmNrLUdlc2VsbHNjaGFmdDEVMBMG
A1UEAwwMTVBHIENBIC0gRzAyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnhx4
59Lh4WqgOs/Md04XxU2yFtfM15ZuJV0PZP7BmqSJKLLPyqmOrADfNdJ5PIGBto2JBhtRRBHd
G0GROOvTRHjzOga95WOTeura79T21FWwwAwa29OFnD3ZplQs6HgdwQrZWNi1WHNJxn/4mA19
rNEBUc5urSIpZPvZi5XmlF3v3JHOlx3KWV7mUteB4pwEEfGTg4npPAJbp2o7arxQdoIq+Pu2
OsvqhD7Rk4QeaX+EM1QS4lqd1otW4hE70h/ODPy1xffgbZiuotWQLC6nIwa65Qv6byqlIX0q
Zuu99Vsu+r3sWYsL5SBkgecNI7fMJ5tfHrjoxfrKl/ErTAt8GQIDAQABo4ICBTCCAgEwEgYD
VR0TAQH/BAgwBgEB/wIBATAOBgNVHQ8BAf8EBAMCAQYwKQYDVR0gBCIwIDANBgsrBgEEAYGt
IYIsHjAPBg0rBgEEAYGtIYIsAQEEMB0GA1UdDgQWBBTEiKUH7rh7qgwTv9opdGNSG0lwFjAf
BgNVHSMEGDAWgBST49gyJtrV8UqlkUrg6kviogzP4TCBjwYDVR0fBIGHMIGEMECgPqA8hjpo
dHRwOi8vY2RwMS5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWcyLWNhL3B1Yi9jcmwvY2Fjcmwu
Y3JsMECgPqA8hjpodHRwOi8vY2RwMi5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWcyLWNhL3B1
Yi9jcmwvY2FjcmwuY3JsMIHdBggrBgEFBQcBAQSB0DCBzTAzBggrBgEFBQcwAYYnaHR0cDov
L29jc3AucGNhLmRmbi5kZS9PQ1NQLVNlcnZlci9PQ1NQMEoGCCsGAQUFBzAChj5odHRwOi8v
Y2RwMS5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWcyLWNhL3B1Yi9jYWNlcnQvY2FjZXJ0LmNy
dDBKBggrBgEFBQcwAoY+aHR0cDovL2NkcDIucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1j
YS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwDQYJKoZIhvcNAQELBQADggEBABLpeD5FygzqOjj+
/lAOy20UQOGWlx0RMuPcI4nuyFT8SGmK9lD7QCg/HoaJlfU/r78ex+SEide326evlFAoJXIF
jVyzNltDhpMKrPIDuh2N12zyn1EtagqPL6hu4pVRzcBpl/F2HCvtmMx5K4WN1L1fmHWLcSap
dhXLvAZ9RG/B3rqyULLSNN8xHXYXpmtvG0VGJAndZ+lj+BH7uvd3nHWnXEHC2q7iQlDUqg0a
wIqWJgdLlx1Q8Dg/sodv0m+LN0kOzGvVDRCmowBdWGhhusD+duKV66pBl+qhC+4LipariWaM
qK5ppMQROATjYeNRvwI+nDcEXr2vDaKmdbxgDVwwggWvMIIEl6ADAgECAgweKlJIhfynPMVG
/KIwDQYJKoZIhvcNAQELBQAwajELMAkGA1UEBhMCREUxDzANBgNVBAgMBkJheWVybjERMA8G
A1UEBwwITXVlbmNoZW4xIDAeBgNVBAoMF01heC1QbGFuY2stR2VzZWxsc2NoYWZ0MRUwEwYD
VQQDDAxNUEcgQ0EgLSBHMDIwHhcNMTcxMTE0MTEzNDE2WhcNMjAxMTEzMTEzNDE2WjCBizEL
MAkGA1UEBhMCREUxIDAeBgNVBAoMF01heC1QbGFuY2stR2VzZWxsc2NoYWZ0MTQwMgYDVQQL
DCtNYXgtUGxhbmNrLUluc3RpdHV0IGZ1ZXIgbW9sZWt1bGFyZSBHZW5ldGlrMQ4wDAYDVQQL
DAVNUElNRzEUMBIGA1UEAwwLUGF1bCBNZW56ZWwwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
ggEKAoIBAQDIh/UR/AX/YQ48VWWDMLTYtXjYJyhRHMc81ZHMMoaoG66lWB9MtKRTnB5lovLZ
enTIUyPsCrMhTqV9CWzDf6v9gOTWVxHEYqrUwK5H1gx4XoK81nfV8oGV4EKuVmmikTXiztGz
peyDmOY8o/EFNWP7YuRkY/lPQJQBeBHYq9AYIgX4StuXu83nusq4MDydygVOeZC15ts0tv3/
6WmibmZd1OZRqxDOkoBbY3Djx6lERohs3IKS6RKiI7e90rCSy9rtidJBOvaQS9wvtOSKPx0a
+2pAgJEVzZFjOAfBcXydXtqXhcpOi2VCyl+7+LnnTz016JJLsCBuWEcB3kP9nJYNAgMBAAGj
ggIxMIICLTAJBgNVHRMEAjAAMA4GA1UdDwEB/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcD
AgYIKwYBBQUHAwQwHQYDVR0OBBYEFHM0Mc3XjMLlhWpp4JufRELL4A/qMB8GA1UdIwQYMBaA
FMSIpQfuuHuqDBO/2il0Y1IbSXAWMCAGA1UdEQQZMBeBFXBtZW56ZWxAbW9sZ2VuLm1wZy5k
ZTB9BgNVHR8EdjB0MDigNqA0hjJodHRwOi8vY2RwMS5wY2EuZGZuLmRlL21wZy1nMi1jYS9w
dWIvY3JsL2NhY3JsLmNybDA4oDagNIYyaHR0cDovL2NkcDIucGNhLmRmbi5kZS9tcGctZzIt
Y2EvcHViL2NybC9jYWNybC5jcmwwgc0GCCsGAQUFBwEBBIHAMIG9MDMGCCsGAQUFBzABhido
dHRwOi8vb2NzcC5wY2EuZGZuLmRlL09DU1AtU2VydmVyL09DU1AwQgYIKwYBBQUHMAKGNmh0
dHA6Ly9jZHAxLnBjYS5kZm4uZGUvbXBnLWcyLWNhL3B1Yi9jYWNlcnQvY2FjZXJ0LmNydDBC
BggrBgEFBQcwAoY2aHR0cDovL2NkcDIucGNhLmRmbi5kZS9tcGctZzItY2EvcHViL2NhY2Vy
dC9jYWNlcnQuY3J0MEAGA1UdIAQ5MDcwDwYNKwYBBAGBrSGCLAEBBDARBg8rBgEEAYGtIYIs
AQEEAwYwEQYPKwYBBAGBrSGCLAIBBAMGMA0GCSqGSIb3DQEBCwUAA4IBAQCQs6bUDROpFO2F
Qz2FMgrdb39VEo8P3DhmpqkaIMC5ZurGbbAL/tAR6lpe4af682nEOJ7VW86ilsIJgm1j0ueY
aOuL8jrN4X7IF/8KdZnnNnImW3QVni6TCcc+7+ggci9JHtt0IDCj5vPJBpP/dKXLCN4M+exl
GXYpfHgxh8gclJPY1rquhQrihCzHfKB01w9h9tWZDVMtSoy9EUJFhCXw7mYUsvBeJwZesN2B
fndPkrXx6XWDdU3S1LyKgHlLIFtarLFm2Hb5zAUR33h+26cN6ohcGqGEEzgIG8tXS8gztEaj
1s2RyzmKd4SXTkKR3GhkZNVWy+gM68J7jP6zzN+cMYIDmjCCA5YCAQEwejBqMQswCQYDVQQG
EwJERTEPMA0GA1UECAwGQmF5ZXJuMREwDwYDVQQHDAhNdWVuY2hlbjEgMB4GA1UECgwXTWF4
LVBsYW5jay1HZXNlbGxzY2hhZnQxFTATBgNVBAMMDE1QRyBDQSAtIEcwMgIMHipSSIX8pzzF
RvyiMA0GCWCGSAFlAwQCAQUAoIIB8TAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
SIb3DQEJBTEPFw0yMDAxMjgxMTI0MzJaMC8GCSqGSIb3DQEJBDEiBCACnprEssrlveeaCcCd
UGMKf/PeiprciFlm+f3luYrSvjBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjALBglg
hkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcG
BSsOAwIHMA0GCCqGSIb3DQMCAgEoMIGJBgkrBgEEAYI3EAQxfDB6MGoxCzAJBgNVBAYTAkRF
MQ8wDQYDVQQIDAZCYXllcm4xETAPBgNVBAcMCE11ZW5jaGVuMSAwHgYDVQQKDBdNYXgtUGxh
bmNrLUdlc2VsbHNjaGFmdDEVMBMGA1UEAwwMTVBHIENBIC0gRzAyAgweKlJIhfynPMVG/KIw
gYsGCyqGSIb3DQEJEAILMXygejBqMQswCQYDVQQGEwJERTEPMA0GA1UECAwGQmF5ZXJuMREw
DwYDVQQHDAhNdWVuY2hlbjEgMB4GA1UECgwXTWF4LVBsYW5jay1HZXNlbGxzY2hhZnQxFTAT
BgNVBAMMDE1QRyBDQSAtIEcwMgIMHipSSIX8pzzFRvyiMA0GCSqGSIb3DQEBAQUABIIBACmV
ncYKRzokmQQagGNjh+ooTWIjfdvBVQg36hKihEVe2+Lf1m6qQHq5u0FIVWjZtR2kJi2it4EV
N6yAelqoRF4Sqbl2W+XtEKCekcFR23yZlvzM/SigLJosVGwRL/H77HA3DjFvuEEFTnum/P0n
m9tdUIjraprgzcTblcDy98Hwe1f1n4uzdiD3JlzkYUeivwpmwOS2xx7H2FjEap/EE/2lB9QA
Y9Xs5vT+bKqsZ11e5cJNuS4eHTk691xVQ+0PpmbqV7JtthwTimhrZa7NeWBkxsNYh4bB04Lu
TuWeT0Fk8inLodxaDwdQF+09TdkM7NGgOPIOErwTvX0QxnUDfJwAAAAAAAA=
--------------ms060908030903000806010905--

--===============3551877222864705005==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3551877222864705005==--

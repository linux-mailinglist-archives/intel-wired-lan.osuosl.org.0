Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9636881A3F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 00:51:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3235382046;
	Wed, 20 Mar 2024 23:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W6k3ruDxsT68; Wed, 20 Mar 2024 23:51:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 231688204C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710978696;
	bh=H/9hLwEo4s76vBZKJyIiwsJF7slTmob+EUfEhxQ5AA8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UEMibQjhI3MVYqj8iO/+fKAr+N8CEbhf4Dvx4E0p0dioCc3NebVjnYkwwOrY763CU
	 V+36sTrnhyDms6GFhyUIJkwK40zNnHPDVUeqwmhe2qc2nCHRuj/dKsWBxsiE9+HU4k
	 CZHsB7nVMtCWzCfcpiznp9iJhLmvkSPTPTLNNPDMymF8gjsmLsDDstOwxw3k8GGvJv
	 XqvGeeumIzCIJNDUiQBMMJ6rfD9OFxpQ75lDbIKTDliZLgC9nbEqEFSlHYZiEYe/pt
	 +CQEvUpkFDpsz3wz1vKVgi0YKbD3Adbg/dtaZiNRlbKsMv71ClzzupCgEYS9wdTE6O
	 b0bA2tT6LUzmA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 231688204C;
	Wed, 20 Mar 2024 23:51:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B3BBF1BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 16:25:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AC4C34090D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 16:25:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yISed4SfduiE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 16:25:02 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 20 Mar 2024 16:25:01 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EF8B240898
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF8B240898
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=62.149.156.41;
 helo=smtpcmd0641.aruba.it; envelope-from=giometti@enneenne.com;
 receiver=<UNKNOWN> 
Received: from smtpcmd0641.aruba.it (smtpcmd0641.aruba.it [62.149.156.41])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF8B240898
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 16:25:01 +0000 (UTC)
Received: from [192.168.1.59] ([79.0.204.227])
 by Aruba Outgoing Smtp  with ESMTPSA
 id mydRrZKfJABX0mydSraZYc; Wed, 20 Mar 2024 17:17:52 +0100
Message-ID: <27762fd2-123c-4286-904c-7ecaa748e9ff@enneenne.com>
Date: Wed, 20 Mar 2024 17:17:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: lakshmi.sowjanya.d@intel.com, tglx@linutronix.de, jstultz@google.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
 <20240319130547.4195-10-lakshmi.sowjanya.d@intel.com>
From: Rodolfo Giometti <giometti@enneenne.com>
In-Reply-To: <20240319130547.4195-10-lakshmi.sowjanya.d@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfBQ3W1huGSm9HfyrIvb/sLpAPYZQlnEzdbAk5JwPRPc3uyz7Crng2g7hyJhJHOgua9I6/cH/vmxv4crNW/YjbciHweksht9+knPA1mxarj7t0NP7visW
 cCisaCmzTT73xYdkBAtXM7Yw8cGhqdgm7aYjSU+Sd61qhtsEQuh5Q7PtF2xvARUfqwr4oihER5csY1brvRZin/MPaEHYnQqbyQxuro4+FbLa7/tLC9xB4uDQ
 n+5q7m1uMpMiXGSAstwWuUizAJfFOlb6dsBVxCBrddE9UJS/7CWIXrN2f0WnQ4WfRWl+QetNxU8ehFAzgRQ8+pNaMIcEVgWugz5yOowt87gTWp0XBoe1nd7/
 sn7VZA56qgydY7Vk388+lYdbCYmBjrFomzGY1E9yuV14x8O/BKrY3bryJzcXwp1tWT7i9yxjR/RhsqDWPJQOrcchjrA6D5+dYRHiupfBrdNwLbFS4iFJ/1HK
 lRRt+5op9RHPTfu+qoX0SXsw4gyLltvW50vpb6Z7a5XUZIodyDsN5AefM2K8QNvBFKfsgG4tFx7NFbs9urmweCG211IjuFtRNl6Hppj76IrSGBi79auFZtEP
 lQaRFidQqTAUozQWyJz34OeXXa0jiaiA/jE7iRM4uc68Tgriuq8dE1DKINYNnHku4tagZYKlUulDGoN+NOvaZVrancmcwJaBQWGTjuSFkSDV0Jhm02KQzT6N
 EXmX22y0wlAEZTpyhDNb+Vp2vQ0a4I8KlYgj4KZXooxhAkR3fHGYfwUuAq7t3PjDFR1ldnkM7FnPcImuGBdXb2b0RZaB9bo13sd6qnIQXvIqXWrV+pT4xXc5
 XUj2aojbyr0VhgorKLKUSH4cr97hh8jjVkEVb7zyBRvRC9YEVY6RXtHwUQ0MwBjCkK32tlItk+Oh+cVO8Wx/tjrEKw5nOm2ajSKTxdpSkYVt/EiFN/UrBuO9
 fC/P9feaLnYjrm3E6Tzy1FNa0nIuhbWb2vjh9eFoV2SWRJ7XFHsfyflrVCD4LawMZ9S19wP+CbmxOTX/zxPbWL02sCShwhjZOdefACmbcF6P2ve6rbMypZHD
 JBrfpvRwyZqxCQQArwIxZqAG4ItlQqeW9/jKn4Z+TED6Ac/EPjrSEHS2v6tTHQL2CVGW9B8Y3BuQIQ==
X-Mailman-Approved-At: Wed, 20 Mar 2024 23:51:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=aruba.it; s=a1; 
 t=1710951472; bh=ctS95Q/KqX2J/LUXSQyKH/pl2BP05hlflbuiDxVyUyk=;
 h=Date:MIME-Version:Subject:To:From:Content-Type;
 b=fEWG19CRlTCije51eKJeWgbgQkcpKTUa/eJ8vGADiEhNzEoOZtLYDOgN7zM0WSaIn
 u/lswLkrYKB4QWg468VN3n3kemWYbuPwf7g2rGf9lG+bj2BDroy4of8ZtBe3fT3ivU
 OiRnOv0BDVXEAmu0jHpxQS2enXXpWvbgyQKMGrx8PLBC+BfRDoJaECWnvMKvUGZMCC
 p0ob78whtTAr56SEiMsM2gwdGFNQFA4ZlcFFEjqI6BEbWbrcPDJ6bVpg8y1teXeaXD
 XUAjbzuX9B56/PXuDgzYBsAjjFOJOnXJBKeH/x/hAnT0Izp3DarF+IWvVgv2gpXZIN
 LGsIZt3XpW8kA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enneenne.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=aruba.it header.i=@aruba.it header.a=rsa-sha256
 header.s=a1 header.b=fEWG19CR
Subject: Re: [Intel-wired-lan] [PATCH v5 09/11] pps: generators: Add PPS
 Generator TIO Driver
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
Cc: christopher.s.hall@intel.com, subramanian.mohan@intel.com,
 linux-doc@vger.kernel.org, netdev@vger.kernel.org, pandith.n@intel.com,
 x86@kernel.org, eddie.dong@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 mallikarjunappa.sangannavar@intel.com, basavaraj.goudar@intel.com,
 joabreu@synopsys.com, intel-wired-lan@lists.osuosl.org,
 mcoquelin.stm32@gmail.com, thejesh.reddy.t.r@intel.com, perex@perex.cz,
 anthony.l.nguyen@intel.com, andriy.shevchenko@linux.intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 19/03/24 14:05, lakshmi.sowjanya.d@intel.com wrote:
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> 
> The Intel Timed IO PPS generator driver outputs a PPS signal using
> dedicated hardware that is more accurate than software actuated PPS.
> The Timed IO hardware generates output events using the ART timer.
> The ART timer period varies based on platform type, but is less than 100
> nanoseconds for all current platforms. Timed IO output accuracy is
> within 1 ART period.
> 
> PPS output is enabled by writing '1' the 'enable' sysfs attribute. The
> driver uses hrtimers to schedule a wake-up 10 ms before each event
> (edge) target time. At wakeup, the driver converts the target time in
> terms of CLOCK_REALTIME to ART trigger time and writes this to the Timed
> IO hardware. The Timed IO hardware generates an event precisely at the
> requested system time without software involvement.
> 
> Co-developed-by: Christopher Hall <christopher.s.hall@intel.com>
> Signed-off-by: Christopher Hall <christopher.s.hall@intel.com>
> Co-developed-by: Pandith N <pandith.n@intel.com>
> Signed-off-by: Pandith N <pandith.n@intel.com>
> Co-developed-by: Thejesh Reddy T R <thejesh.reddy.t.r@intel.com>
> Signed-off-by: Thejesh Reddy T R <thejesh.reddy.t.r@intel.com>
> Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> Reviewed-by: Eddie Dong <eddie.dong@intel.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Acked-by: Rodolfo Giometti <giometti@enneenne.com>

> ---
>   drivers/pps/generators/Kconfig       |  16 ++
>   drivers/pps/generators/Makefile      |   1 +
>   drivers/pps/generators/pps_gen_tio.c | 245 +++++++++++++++++++++++++++
>   3 files changed, 262 insertions(+)
>   create mode 100644 drivers/pps/generators/pps_gen_tio.c
> 
> diff --git a/drivers/pps/generators/Kconfig b/drivers/pps/generators/Kconfig
> index d615e640fcad..0f090932336f 100644
> --- a/drivers/pps/generators/Kconfig
> +++ b/drivers/pps/generators/Kconfig
> @@ -12,3 +12,19 @@ config PPS_GENERATOR_PARPORT
>   	  If you say yes here you get support for a PPS signal generator which
>   	  utilizes STROBE pin of a parallel port to send PPS signals. It uses
>   	  parport abstraction layer and hrtimers to precisely control the signal.
> +
> +config PPS_GENERATOR_TIO
> +	tristate "TIO PPS signal generator"
> +	depends on X86 && CPU_SUP_INTEL
> +	help
> +	  If you say yes here you get support for a PPS TIO signal generator
> +	  which generates a pulse at a prescribed time based on the system clock.
> +	  It uses time translation and hrtimers to precisely generate a pulse.
> +	  This hardware is present on 2019 and newer Intel CPUs. However, this
> +	  driver is not useful without adding highly specialized hardware outside
> +	  the Linux system to observe these pulses.
> +
> +	  To compile this driver as a module, choose M here: the module
> +	  will be called pps_gen_tio.
> +
> +	  If unsure, say N.
> diff --git a/drivers/pps/generators/Makefile b/drivers/pps/generators/Makefile
> index 2d56dd0495d5..07004cfd3996 100644
> --- a/drivers/pps/generators/Makefile
> +++ b/drivers/pps/generators/Makefile
> @@ -4,6 +4,7 @@
>   #
>   
>   obj-$(CONFIG_PPS_GENERATOR_PARPORT) += pps_gen_parport.o
> +obj-$(CONFIG_PPS_GENERATOR_TIO) += pps_gen_tio.o
>   
>   ifeq ($(CONFIG_PPS_DEBUG),y)
>   EXTRA_CFLAGS += -DDEBUG
> diff --git a/drivers/pps/generators/pps_gen_tio.c b/drivers/pps/generators/pps_gen_tio.c
> new file mode 100644
> index 000000000000..3ee271524482
> --- /dev/null
> +++ b/drivers/pps/generators/pps_gen_tio.c
> @@ -0,0 +1,245 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Intel PPS signal Generator Driver
> + *
> + * Copyright (C) 2023 Intel Corporation
> + */
> +
> +#include <linux/bits.h>
> +#include <linux/bitfield.h>
> +#include <linux/cleanup.h>
> +#include <linux/container_of.h>
> +#include <linux/cpu.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/hrtimer.h>
> +#include <linux/io-64-nonatomic-hi-lo.h>
> +#include <linux/kstrtox.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/spinlock.h>
> +#include <linux/sysfs.h>
> +#include <linux/timekeeping.h>
> +#include <linux/types.h>
> +
> +#include <asm/cpu_device_id.h>
> +
> +#define TIOCTL			0x00
> +#define TIOCOMPV		0x10
> +
> +/* Control Register */
> +#define TIOCTL_EN			BIT(0)
> +#define TIOCTL_DIR			BIT(1)
> +#define TIOCTL_EP			GENMASK(3, 2)
> +#define TIOCTL_EP_RISING_EDGE		FIELD_PREP(TIOCTL_EP, 0)
> +#define TIOCTL_EP_FALLING_EDGE		FIELD_PREP(TIOCTL_EP, 1)
> +#define TIOCTL_EP_TOGGLE_EDGE		FIELD_PREP(TIOCTL_EP, 2)
> +
> +#define SAFE_TIME_NS			(10 * NSEC_PER_MSEC) /* Safety time to set hrtimer early */
> +#define MAGIC_CONST			(NSEC_PER_SEC - SAFE_TIME_NS)
> +#define ART_HW_DELAY_CYCLES		2
> +
> +struct pps_tio {
> +	struct hrtimer timer;
> +	struct device *dev;
> +	spinlock_t lock;
> +	struct attribute_group attrs;
> +	void __iomem *base;
> +	bool enabled;
> +};
> +
> +static inline u32 pps_ctl_read(struct pps_tio *tio)
> +{
> +	return readl(tio->base + TIOCTL);
> +}
> +
> +static inline void pps_ctl_write(struct pps_tio *tio, u32 value)
> +{
> +	writel(value, tio->base + TIOCTL);
> +}
> +
> +/* For COMPV register, It's safer to write higher 32-bit followed by lower 32-bit */
> +static inline void pps_compv_write(struct pps_tio *tio, u64 value)
> +{
> +	hi_lo_writeq(value, tio->base + TIOCOMPV);
> +}
> +
> +static inline ktime_t first_event(struct pps_tio *tio)
> +{
> +	return ktime_set(ktime_get_real_seconds() + 1, MAGIC_CONST);
> +}
> +
> +static u32 pps_tio_disable(struct pps_tio *tio)
> +{
> +	u32 ctrl;
> +
> +	ctrl = pps_ctl_read(tio);
> +	pps_compv_write(tio, 0);
> +
> +	ctrl &= ~TIOCTL_EN;
> +	pps_ctl_write(tio, ctrl);
> +
> +	return ctrl;
> +}
> +
> +static void pps_tio_direction_output(struct pps_tio *tio)
> +{
> +	u32 ctrl;
> +
> +	ctrl = pps_tio_disable(tio);
> +
> +	/* We enable the device, be sure that the 'compare' value is invalid */
> +	pps_compv_write(tio, 0);
> +
> +	ctrl &= ~(TIOCTL_DIR | TIOCTL_EP);
> +	ctrl |= TIOCTL_EP_TOGGLE_EDGE;
> +	pps_ctl_write(tio, ctrl);
> +
> +	ctrl |= TIOCTL_EN;
> +	pps_ctl_write(tio, ctrl);
> +}
> +
> +static bool pps_generate_next_pulse(struct pps_tio *tio, ktime_t expires)
> +{
> +	u64 art;
> +
> +	if (!ktime_real_to_base_clock(expires, CSID_X86_ART, &art)) {
> +		pps_tio_disable(tio);
> +		return false;
> +	}
> +
> +	pps_compv_write(tio, art - ART_HW_DELAY_CYCLES);
> +	return true;
> +}
> +
> +static enum hrtimer_restart hrtimer_callback(struct hrtimer *timer)
> +{
> +	struct pps_tio *tio = container_of(timer, struct pps_tio, timer);
> +	ktime_t expires, now;
> +
> +	guard(spinlock)(&tio->lock);
> +
> +	expires = hrtimer_get_expires(timer);
> +	now = ktime_get_real();
> +
> +	if (now - expires < SAFE_TIME_NS) {
> +		if (!pps_generate_next_pulse(tio, expires + SAFE_TIME_NS))
> +			return HRTIMER_NORESTART;
> +	}
> +
> +	hrtimer_forward(timer, now, NSEC_PER_SEC / 2);
> +	return HRTIMER_RESTART;
> +}
> +
> +static ssize_t enable_store(struct device *dev, struct device_attribute *attr, const char *buf,
> +			    size_t count)
> +{
> +	struct pps_tio *tio = dev_get_drvdata(dev);
> +	bool enable;
> +	int err;
> +
> +	err = kstrtobool(buf, &enable);
> +	if (err)
> +		return err;
> +
> +	guard(spinlock_irqsave)(&tio->lock);
> +	if (enable && !tio->enabled) {
> +		if (!timekeeping_clocksource_has_base(CSID_X86_ART)) {
> +			dev_err(tio->dev, "PPS cannot be started as clock is not related to ART");
> +			return -EPERM;
> +		}
> +		pps_tio_direction_output(tio);
> +		hrtimer_start(&tio->timer, first_event(tio), HRTIMER_MODE_ABS);
> +		tio->enabled = true;
> +	} else if (!enable && tio->enabled) {
> +		hrtimer_cancel(&tio->timer);
> +		pps_tio_disable(tio);
> +		tio->enabled = false;
> +	}
> +	return count;
> +}
> +
> +static ssize_t enable_show(struct device *dev, struct device_attribute *devattr, char *buf)
> +{
> +	struct pps_tio *tio = dev_get_drvdata(dev);
> +	u32 ctrl;
> +
> +	ctrl = pps_ctl_read(tio);
> +	ctrl &= TIOCTL_EN;
> +
> +	return sysfs_emit(buf, "%u\n", ctrl);
> +}
> +static DEVICE_ATTR_RW(enable);
> +
> +static struct attribute *pps_tio_attrs[] = {
> +	&dev_attr_enable.attr,
> +	NULL
> +};
> +ATTRIBUTE_GROUPS(pps_tio);
> +
> +static int pps_tio_probe(struct platform_device *pdev)
> +{
> +	struct pps_tio *tio;
> +
> +	if (!(cpu_feature_enabled(X86_FEATURE_TSC_KNOWN_FREQ) &&
> +	      cpu_feature_enabled(X86_FEATURE_ART))) {
> +		dev_warn(&pdev->dev, "TSC/ART is not enabled");
> +		return -ENODEV;
> +	}
> +
> +	tio = devm_kzalloc(&pdev->dev, sizeof(*tio), GFP_KERNEL);
> +	if (!tio)
> +		return -ENOMEM;
> +
> +	tio->dev = &pdev->dev;
> +	tio->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(tio->base))
> +		return PTR_ERR(tio->base);
> +
> +	pps_tio_disable(tio);
> +	hrtimer_init(&tio->timer, CLOCK_REALTIME, HRTIMER_MODE_ABS);
> +	tio->timer.function = hrtimer_callback;
> +	spin_lock_init(&tio->lock);
> +	tio->enabled = false;
> +	platform_set_drvdata(pdev, tio);
> +
> +	return 0;
> +}
> +
> +static int pps_tio_remove(struct platform_device *pdev)
> +{
> +	struct pps_tio *tio = platform_get_drvdata(pdev);
> +
> +	hrtimer_cancel(&tio->timer);
> +	pps_tio_disable(tio);
> +
> +	return 0;
> +}
> +
> +static const struct acpi_device_id intel_pmc_tio_acpi_match[] = {
> +	{ "INTC1021" },
> +	{ "INTC1022" },
> +	{ "INTC1023" },
> +	{ "INTC1024" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(acpi, intel_pmc_tio_acpi_match);
> +
> +static struct platform_driver pps_tio_driver = {
> +	.probe          = pps_tio_probe,
> +	.remove         = pps_tio_remove,
> +	.driver         = {
> +		.name                   = "intel-pps-generator",
> +		.acpi_match_table       = intel_pmc_tio_acpi_match,
> +		.dev_groups             = pps_tio_groups,
> +	},
> +};
> +module_platform_driver(pps_tio_driver);
> +
> +MODULE_AUTHOR("Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>");
> +MODULE_AUTHOR("Christopher Hall <christopher.s.hall@intel.com>");
> +MODULE_AUTHOR("Pandith N <pandith.n@intel.com>");
> +MODULE_AUTHOR("Thejesh Reddy T R <thejesh.reddy.t.r@intel.com>");
> +MODULE_DESCRIPTION("Intel PMC Time-Aware IO Generator Driver");
> +MODULE_LICENSE("GPL");

-- 
GNU/Linux Solutions                  e-mail: giometti@enneenne.com
Linux Device Driver                          giometti@linux.it
Embedded Systems                     phone:  +39 349 2432127
UNIX programming


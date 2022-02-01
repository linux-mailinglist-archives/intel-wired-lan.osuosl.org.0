Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 009CE4A6522
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Feb 2022 20:45:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 875A160B71;
	Tue,  1 Feb 2022 19:45:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BjopNTRh5cK5; Tue,  1 Feb 2022 19:45:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79C0360B26;
	Tue,  1 Feb 2022 19:45:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AFD731BF293
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Feb 2022 19:45:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B22F404F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Feb 2022 19:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8CRkDlA3_4Gn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Feb 2022 19:45:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C3F140477
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Feb 2022 19:45:00 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id b9so36039390lfq.6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Feb 2022 11:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lppi0QB/yuGy6eJOiuLd91tJ0zPSGYMKd4VRe6HauAg=;
 b=LYxXuiAeedRN1EeELHvq+f8tOZpD0FK+rAnLg4MChvaSDa5NaHqbgUtlV6UstrmxDa
 NxaUBTQ2bCpIPSA1s2QYCD2Ldd7mkqwTsnlQpcVYIef/6ZbgWr7vg2jZ4PssgtBdoq9o
 zMu1S86ELS978Sof++71dYckDqdhHa/xR3Wf1UwZC3t1pwxXPzo+RveeHqhrX0/VXajt
 sCYO90ARrUPm1ElZmMdSxNmN3+ja/bZ5CQZiWid0poeZCvM968LSQtLlfNw6YD6E26+L
 n9CMyGcBI0n2QcjjEGMLhAjjuz9IQ/i2tG/m4e5sx5d9wDF0qS/filkCHOu+fTMGcoTn
 REMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lppi0QB/yuGy6eJOiuLd91tJ0zPSGYMKd4VRe6HauAg=;
 b=xfbOllZrWGxuDL2iCg3adZwcL+MYxrO28r7JNTfgVy9yO0D3TuOuzadlmckaNzDROP
 hQqmORvPBvK4eZrXoxHUmObznU/XU9Hr4ecO04sDPPmlkL5/40j746NfYnmHuG1iQc2c
 YDo4KtOl90tJmUrUS53uacPjAugGojUycnUPGk8IZGVHj8JIp/ca89X3IP4Bq2IuZzxB
 JymS/yaipfjFqjtG0R7W/7EUAmpGytHhZhfICwj6dlNsbKBMnhPp92Q3oZqlYj8xl6jO
 yi3Bmj2luMc5ik9GfJ9J7XqF0ch+OXy0H8Ud0HLPj9T/e7V7hi6qFaDHsYBRbG1m2D59
 Jryg==
X-Gm-Message-State: AOAM531fxhycL5uVatYsaG8+PeUPoZcOSO+23rOl07lJ0f6cC/w+VJQo
 3X6MUxvuI+b+E2WGPduTuLfbDO/RnQhjaX0wDeI=
X-Google-Smtp-Source: ABdhPJw+ssl8McAWBxjUs4cHEcWGR9fVNVBOOYlUJA72hESdBOYdVjmCC6OCp5YUVoY2tdHCD01unIdQt1pO8y+cV0g=
X-Received: by 2002:a05:6512:2245:: with SMTP id
 i5mr20081266lfu.289.1643744697811; 
 Tue, 01 Feb 2022 11:44:57 -0800 (PST)
MIME-Version: 1.0
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-3-alan.brady@intel.com>
In-Reply-To: <20220128001009.721392-3-alan.brady@intel.com>
From: Shannon Nelson <shannon.lee.nelson@gmail.com>
Date: Tue, 1 Feb 2022 11:44:46 -0800
Message-ID: <CAP-MU4OwDLJ623dDX7kJhXaTQqBM0coyLxAL06C3pKB_EO8Caw@mail.gmail.com>
To: Alan Brady <alan.brady@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 02/19] iecm: add basic module
 init and documentation
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
Cc: Phani Burra <phani.r.burra@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 27, 2022 at 4:34 PM Alan Brady <alan.brady@intel.com> wrote:
>
> This adds the basics needed to make a kernel module and documentation
> needed to use iecm module.
>

[ snip ]

> diff --git a/drivers/net/ethernet/intel/iecm/Makefile b/drivers/net/ethernet/intel/iecm/Makefile
> new file mode 100644
> index 000000000000..d2d087ac71e9
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/iecm/Makefile
> @@ -0,0 +1,13 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +# Copyright (C) 2019 Intel Corporation
> +
> +#
> +# Makefile for the Intel(R) Data Plane Function Linux Driver

Maybe the iecm here rather than idpf?

> +#
> +
> +obj-$(CONFIG_IECM) += iecm.o
> +
> +ccflags-y += -I$(srctree)/drivers/net/ethernet/intel/include
> +
> +iecm-y := \
> +       iecm_main.o
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_main.c b/drivers/net/ethernet/intel/iecm/iecm_main.c
> new file mode 100644
> index 000000000000..7c09403c6918
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/iecm/iecm_main.c
> @@ -0,0 +1,40 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/* Copyright (C) 2019 Intel Corporation */
> +
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +
> +#include "iecm.h"
> +
> +#define DRV_SUMMARY    "Intel(R) Ethernet Common Module"
> +static const char iecm_driver_string[] = DRV_SUMMARY;
> +static const char iecm_copyright[] = "Copyright (c) 2020, Intel Corporation.";

Do you want this copyright string "2020" to match the top of the file "2019"?

> +
> +MODULE_DESCRIPTION(DRV_SUMMARY);
> +MODULE_LICENSE("GPL v2");
> +
> +/**
> + * iecm_module_init - Driver registration routine
> + *
> + * iecm_module_init is the first routine called when the driver is
> + * loaded. All it does is register with the PCI subsystem.
> + */
> +static int __init iecm_module_init(void)
> +{
> +       pr_info("%s - version %d\n", iecm_driver_string, LINUX_VERSION_CODE);
> +       pr_info("%s\n", iecm_copyright);
> +
> +       return 0;
> +}
> +module_init(iecm_module_init);
> +
> +/**
> + * iecm_module_exit - Driver exit cleanup routine
> + *
> + * iecm_module_exit is called just before the driver is removed
> + * from memory.
> + */
> +static void __exit iecm_module_exit(void)
> +{
> +       pr_info("module unloaded\n");
> +}
> +module_exit(iecm_module_exit);
> diff --git a/drivers/net/ethernet/intel/include/iecm.h b/drivers/net/ethernet/intel/include/iecm.h
> new file mode 100644
> index 000000000000..f66f0d7db8e7
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/include/iecm.h
> @@ -0,0 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright (C) 2019 Intel Corporation */
> +
> +#ifndef _IECM_H_
> +#define _IECM_H_
> +
> +#include <linux/etherdevice.h>
> +#include <linux/version.h>
> +
> +#endif /* !_IECM_H_ */
> --
> 2.33.0
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

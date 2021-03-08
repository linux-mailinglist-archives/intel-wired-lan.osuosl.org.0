Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7913314EE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Mar 2021 18:33:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 799FB487DC;
	Mon,  8 Mar 2021 17:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QoKjDvg7zdYQ; Mon,  8 Mar 2021 17:33:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E76F34891C;
	Mon,  8 Mar 2021 17:33:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57DFD1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 17:32:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 44A706F4DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 17:32:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2yG6Udz_Wk86 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Mar 2021 17:32:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 54FA86F483
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 17:32:03 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id v15so12324286wrx.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Mar 2021 09:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1vN6k5pXokza2dBxBoaJoD8BYKPtCKRtAZbFCogTu4k=;
 b=uzMcXdB9W0g3/ZzqbsUdTGkHnHhto0xQ0ZKxA6WLWZOAfmDO5zFTvvBnjRS6J7Ve2h
 7ara4xxaM+MPvxBqK+rPRCCYPCdG+62lIjIfMd0W5ez17XMmvrhLiLMwrHMS/j20uaq2
 VbXSXUAm62wZ0qqccLLQq3bbT+7mxYyPOidgu67rRGDm/KFOcmTFckvjYgP5uz660DyW
 1L7ozkmQPZIxhtg/58TrgrV74I9QYq8mUoT6vNjgEksm37wtR0h4XQM7lFNjTzfT+05k
 r04dT+1u6QQN2q+QcAUjC3rrAg38lM/C3Xr/PxZWwBYT1Me0YwMqT0NZ0Kuwc4qGdBz5
 GZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1vN6k5pXokza2dBxBoaJoD8BYKPtCKRtAZbFCogTu4k=;
 b=CidA/7NBNUQySeoHnRMhSBD2CXdb6JymhBMnvwt45D8zY08qV3jym0Pyei1qYIG5AC
 9+WOIawpCTpuc0MZeOx6ovZbRPH43rEAyG/74FiFVdUGW8OenGwgLJLYRnqZSHjxqKCS
 v7lTLZyHewdS2vfxQZqTb190i37GJmPSZ3fjsrSp2yOyYhnCxe38+htpc4nGaUsG+dp1
 B+LV/76dKb9REyYnUt2HMkiSKS2ghiiAawPqasA6mHH/CAQ6JLqRz8raeSfBVaJqL+kH
 C8rCLzLw5ST1/qaEE7CMWM0QCQQKWoKGtxnUJo1ZKrX4JAxJXdFKbHWnUeW95DXZcbk3
 XHSA==
X-Gm-Message-State: AOAM531ib0VO6/+XScIkOb+6LRuABG9Jz8dL4udsnNhvlNm8lvW5UkDy
 dHCjmhARoFG0SREey0JMAWtcRhc9fsNYCEuUMr57OeJlgp4=
X-Google-Smtp-Source: ABdhPJy6O5q2U60BX+GftuoCMbfRjFLZKH23/XhLP5CJCA7uB8txB4c2JjQsJ3gVxgS8e8PY8wT49Jghmbchocuc+pk=
X-Received: by 2002:a5d:564b:: with SMTP id j11mr24184602wrw.326.1615224721526; 
 Mon, 08 Mar 2021 09:32:01 -0800 (PST)
MIME-Version: 1.0
References: <20210305190608.1834164-1-david.e.box@linux.intel.com>
 <SA1PR19MB49261823693E915E7D646B07FA939@SA1PR19MB4926.namprd19.prod.outlook.com>
In-Reply-To: <SA1PR19MB49261823693E915E7D646B07FA939@SA1PR19MB4926.namprd19.prod.outlook.com>
From: Rajneesh Bhardwaj <irenic.rajneesh@gmail.com>
Date: Mon, 8 Mar 2021 12:31:35 -0500
Message-ID: <CAE2upjT1SabzsEtxnVzFV9hVDVm-KuqXP9QEQqO6HHKVS0-HZg@mail.gmail.com>
To: "Limonciello, Mario" <Mario.Limonciello@dell.com>
X-Mailman-Approved-At: Mon, 08 Mar 2021 17:33:17 +0000
Subject: Re: [Intel-wired-lan] [PATCH] platform/x86: intel_pmc: Ignore GBE
 LTR on Tiger Lake platforms
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
Cc: "mgross@linux.intel.com" <mgross@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 "hdegoede@redhat.com" <hdegoede@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "David E. Box" <david.e.box@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 8, 2021 at 12:20 PM Limonciello, Mario
<Mario.Limonciello@dell.com> wrote:
>
> >
> > [EXTERNAL EMAIL]
> >
> > Due to a HW limitation, the Latency Tolerance Reporting (LTR) value
> > programmed in the Tiger Lake GBE controller is not large enough to allow
> > the platform to enter Package C10, which in turn prevents the platform from
> > achieving its low power target during suspend-to-idle.  Ignore the GBE LTR
> > value on Tiger Lake. LTR ignore functionality is currently performed solely
> > by a debugfs write call. Split out the LTR code into its own function that
> > can be called by both the debugfs writer and by this work around.
> >
> > Signed-off-by: David E. Box <david.e.box@linux.intel.com>
> > Reviewed-by: Sasha Neftin <sasha.neftin@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org
> > ---
> >  drivers/platform/x86/intel_pmc_core.c | 55 ++++++++++++++++++++-------
> >  1 file changed, 42 insertions(+), 13 deletions(-)
>
> I feel like this driver change causes a weak reference between e1000e and intel_pmc_core.
> It would mean significantly different behavior if you use e1000e but don't have PMC module
> available for any reason.

Can you elaborate what would change significantly? This is a FW/HW
issue and the driver is just doing a work around to let the platform
enter a deep idle state beyond PC10. If the system could enter PC10
and was denied entry by PMC only because of a bad LAN LTR, then that's
purely an e1000e driver/GBE fw issue.

>
> In this case does it maybe make sense to at least use "imply" in the Kconfig for e1000e so
> that selecting e1000e gets intel-pmc-core enabled too?

This change would tell PMC to ignore GBE LTR, regardless of which GBE
driver is selected. This doesn't bind e1000e.

>
> >
> > diff --git a/drivers/platform/x86/intel_pmc_core.c
> > b/drivers/platform/x86/intel_pmc_core.c
> > index ee2f757515b0..ab31eb646a1a 100644
> > --- a/drivers/platform/x86/intel_pmc_core.c
> > +++ b/drivers/platform/x86/intel_pmc_core.c
> > @@ -863,34 +863,45 @@ static int pmc_core_pll_show(struct seq_file *s, void
> > *unused)
> >  }
> >  DEFINE_SHOW_ATTRIBUTE(pmc_core_pll);
> >
> > -static ssize_t pmc_core_ltr_ignore_write(struct file *file,
> > -                                      const char __user *userbuf,
> > -                                      size_t count, loff_t *ppos)
> > +static int pmc_core_write_ltr_ignore(u32 value)
> >  {
> >       struct pmc_dev *pmcdev = &pmc;
> >       const struct pmc_reg_map *map = pmcdev->map;
> > -     u32 val, buf_size, fd;
> > -     int err;
> > -
> > -     buf_size = count < 64 ? count : 64;
> > -
> > -     err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
> > -     if (err)
> > -             return err;
> > +     u32 fd;
> > +     int err = 0;
> >
> >       mutex_lock(&pmcdev->lock);
> >
> > -     if (val > map->ltr_ignore_max) {
> > +     if (fls(value) > map->ltr_ignore_max) {
> >               err = -EINVAL;
> >               goto out_unlock;
> >       }
> >
> >       fd = pmc_core_reg_read(pmcdev, map->ltr_ignore_offset);
> > -     fd |= (1U << val);
> > +     fd |= value;
> >       pmc_core_reg_write(pmcdev, map->ltr_ignore_offset, fd);
> >
> >  out_unlock:
> >       mutex_unlock(&pmcdev->lock);
> > +
> > +     return err;
> > +}
> > +
> > +static ssize_t pmc_core_ltr_ignore_write(struct file *file,
> > +                                      const char __user *userbuf,
> > +                                      size_t count, loff_t *ppos)
> > +{
> > +     u32 buf_size, val;
> > +     int err;
> > +
> > +     buf_size = count < 64 ? count : 64;
> > +
> > +     err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
> > +     if (err)
> > +             return err;
> > +
> > +     err = pmc_core_write_ltr_ignore(1U << val);
> > +
> >       return err == 0 ? count : err;
> >  }
> >
> > @@ -1189,6 +1200,15 @@ static int quirk_xtal_ignore(const struct dmi_system_id
> > *id)
> >       return 0;
> >  }
> >
> > +static int quirk_ltr_ignore(u32 val)
> > +{
> > +     int err;
> > +
> > +     err = pmc_core_write_ltr_ignore(val);
> > +
> > +     return err;
> > +}
> > +
> >  static const struct dmi_system_id pmc_core_dmi_table[]  = {
> >       {
> >       .callback = quirk_xtal_ignore,
> > @@ -1244,6 +1264,15 @@ static int pmc_core_probe(struct platform_device *pdev)
> >       pmcdev->pmc_xram_read_bit = pmc_core_check_read_lock_bit();
> >       dmi_check_system(pmc_core_dmi_table);
> >
> > +     /*
> > +      * On TGL, due to a hardware limitation, the GBE LTR blocks PC10 when
> > +      * a cable is attached. Tell the PMC to ignore it.
> > +      */
> > +     if (pmcdev->map == &tgl_reg_map) {
> > +             dev_dbg(&pdev->dev, "ignoring GBE LTR\n");
> > +             quirk_ltr_ignore(1U << 3);
> > +     }
> > +
> >       pmc_core_dbgfs_register(pmcdev);
> >
> >       device_initialized = true;
> > --
> > 2.25.1
>


-- 
Thanks,
Rajneesh
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

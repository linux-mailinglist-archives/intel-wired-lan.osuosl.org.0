Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76418331115
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Mar 2021 15:41:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D0EF48CE3;
	Mon,  8 Mar 2021 14:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KpSfNHqvNbFr; Mon,  8 Mar 2021 14:41:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D995648BB1;
	Mon,  8 Mar 2021 14:41:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5898E1BF30E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 14:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F7FB60599
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 14:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ii8wXomtotTu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Mar 2021 14:05:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F2F62605CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 14:05:02 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 m20-20020a7bcb940000b029010cab7e5a9fso3872870wmi.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Mar 2021 06:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u0rxkzcpEQymr2WKgLCpuC2S/8N0HG0Aoqtpouow3H4=;
 b=PaX5YYLCSMMUiQETtB0dVNpVssXBosDEtg/oMphDxy4Q6eDv6Gsx0vfy0jcqRrCcfH
 i5VUvlsUz8xyhMfM3RpJjtZ4eldJdvWOjyiYnaHQu+CSU6RF7EgGBbbct+HFCnY2nnnj
 XLUKkKQdnhFLmVCIV4ptbzVspk9M+f5mrFXrBUw2aCsRM5a5U7LyCTYUOyqaKWknMC1A
 i6SDfkTjEFMv4FotCQjVvt9Lk6F+vCUvDwCkOWqex3QmmvkH6wDT3Eu6CsRqCapQn0K5
 TP3rWwj5x0vESs98HaFZo9FBhLljY5X1I3VgiKZ24WT7A2KDh5zyYXDJc5qWzab3ZtAI
 n/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u0rxkzcpEQymr2WKgLCpuC2S/8N0HG0Aoqtpouow3H4=;
 b=o91/jYRS1Ogexp+G8ufWEVwEHd6bPW5QmNALUeQ2/zKj34hTyCHDa3Wa/9K/W8clNl
 IXtSxqLi6rLWbWESGJQaKMUPn646QnnfSrpxsX0yknYub8ylyTl9bquV9xyM2sRBBFX1
 D4RLQZQev8oKT7cC/kRLsKEXzPpA8K6NSlGf36ybWWAUbb0sRVxIQqc3qmcMLA2tK+o2
 /WfvdoUnP1SK47zfzDqAF/xxCTz6J/rwjikk1AMX9pkzZGPvSDjYlszJUYbKyjwJ0JWD
 AQ6bIU9e9wePpJobwWYSImTBe1bPDj9eXLm7DdQDTCOYxLXkTBzeb/jcSA53t0QVrOP0
 bWZg==
X-Gm-Message-State: AOAM531SQy0Tl6WZ5ZaXU/JYh2WorzIx7yIeX3HuNIV1oemYFz48WlDk
 XQe2qeKZ3UYcJdWVVwQ9dZKWqzdvgZYBKxxcVOU=
X-Google-Smtp-Source: ABdhPJySxZcF2LBkg+JoYZ/p2nuMDUJ0PxOWgO75l+dbeMUnrpiO23sIxaWNg38e8MPIA9xbc3XNOUyhSLTUN9OfvwQ=
X-Received: by 2002:a7b:c442:: with SMTP id l2mr22396841wmi.69.1615212301078; 
 Mon, 08 Mar 2021 06:05:01 -0800 (PST)
MIME-Version: 1.0
References: <20210305190608.1834164-1-david.e.box@linux.intel.com>
In-Reply-To: <20210305190608.1834164-1-david.e.box@linux.intel.com>
From: Rajneesh Bhardwaj <irenic.rajneesh@gmail.com>
Date: Mon, 8 Mar 2021 09:04:33 -0500
Message-ID: <CAE2upjSkN6R_MNxNOwT+sTREGXRq0RVehnG3gCD5Wx9_-D41vg@mail.gmail.com>
To: "David E. Box" <david.e.box@linux.intel.com>
X-Mailman-Approved-At: Mon, 08 Mar 2021 14:41:13 +0000
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
Cc: mgross@linux.intel.com, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, hdegoede@redhat.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi David

Overall, it looks like the right thing to do but i have a few
comments. See below.

On Fri, Mar 5, 2021 at 2:07 PM David E. Box <david.e.box@linux.intel.com> wrote:
>
> Due to a HW limitation, the Latency Tolerance Reporting (LTR) value
> programmed in the Tiger Lake GBE controller is not large enough to allow
> the platform to enter Package C10, which in turn prevents the platform from
> achieving its low power target during suspend-to-idle.  Ignore the GBE LTR
> value on Tiger Lake. LTR ignore functionality is currently performed solely
> by a debugfs write call. Split out the LTR code into its own function that
> can be called by both the debugfs writer and by this work around.
>

I presume this must be the last resort to use such quirk and you've
already considered a user space tuning program or fw patch is not an
option on this generation of SOCs.

> Signed-off-by: David E. Box <david.e.box@linux.intel.com>
> Reviewed-by: Sasha Neftin <sasha.neftin@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> ---
>  drivers/platform/x86/intel_pmc_core.c | 55 ++++++++++++++++++++-------
>  1 file changed, 42 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/platform/x86/intel_pmc_core.c b/drivers/platform/x86/intel_pmc_core.c
> index ee2f757515b0..ab31eb646a1a 100644
> --- a/drivers/platform/x86/intel_pmc_core.c
> +++ b/drivers/platform/x86/intel_pmc_core.c
> @@ -863,34 +863,45 @@ static int pmc_core_pll_show(struct seq_file *s, void *unused)
>  }
>  DEFINE_SHOW_ATTRIBUTE(pmc_core_pll);
>
> -static ssize_t pmc_core_ltr_ignore_write(struct file *file,
> -                                        const char __user *userbuf,
> -                                        size_t count, loff_t *ppos)
> +static int pmc_core_write_ltr_ignore(u32 value)

This sounds a bit confusing with pmc_core_ltr_ignore_write.

>  {
>         struct pmc_dev *pmcdev = &pmc;
>         const struct pmc_reg_map *map = pmcdev->map;
> -       u32 val, buf_size, fd;
> -       int err;
> -
> -       buf_size = count < 64 ? count : 64;
> -
> -       err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
> -       if (err)
> -               return err;
> +       u32 fd;

lets just call it value

> +       int err = 0;
>
>         mutex_lock(&pmcdev->lock);
>
> -       if (val > map->ltr_ignore_max) {
> +       if (fls(value) > map->ltr_ignore_max) {

I am not sure why you're considering a bit position here. We rather
use absolute value for this and we already preserve (OR) previously
programmed LTR while changing to the new desired value.  Current
modification would allow users to supply even bigger values than the
MAX IP ignore allowed. This can be useful when you want to ignore more
than 1 IP at a time but that's not how we usually use it for debug.
This is more for a user space debug script to deal with.
https://01.org/blogs/rajneesh/2019/using-power-management-controller-drivers-debug-low-power-platform-states

>                 err = -EINVAL;
>                 goto out_unlock;
>         }
>
>         fd = pmc_core_reg_read(pmcdev, map->ltr_ignore_offset);
> -       fd |= (1U << val);
> +       fd |= value;
>         pmc_core_reg_write(pmcdev, map->ltr_ignore_offset, fd);
>
>  out_unlock:
>         mutex_unlock(&pmcdev->lock);
> +
> +       return err;
> +}
> +
> +static ssize_t pmc_core_ltr_ignore_write(struct file *file,
> +                                        const char __user *userbuf,
> +                                        size_t count, loff_t *ppos)
> +{
> +       u32 buf_size, val;
> +       int err;
> +
> +       buf_size = count < 64 ? count : 64;
> +
> +       err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
> +       if (err)
> +               return err;
> +
> +       err = pmc_core_write_ltr_ignore(1U << val);
> +
>         return err == 0 ? count : err;
>  }
>
> @@ -1189,6 +1200,15 @@ static int quirk_xtal_ignore(const struct dmi_system_id *id)
>         return 0;
>  }
>
> +static int quirk_ltr_ignore(u32 val)
> +{
> +       int err;
> +
> +       err = pmc_core_write_ltr_ignore(val);
> +
> +       return err;
> +}
> +
>  static const struct dmi_system_id pmc_core_dmi_table[]  = {
>         {
>         .callback = quirk_xtal_ignore,
> @@ -1244,6 +1264,15 @@ static int pmc_core_probe(struct platform_device *pdev)
>         pmcdev->pmc_xram_read_bit = pmc_core_check_read_lock_bit();
>         dmi_check_system(pmc_core_dmi_table);
>
> +       /*
> +        * On TGL, due to a hardware limitation, the GBE LTR blocks PC10 when
> +        * a cable is attached. Tell the PMC to ignore it.
> +        */
> +       if (pmcdev->map == &tgl_reg_map) {
> +               dev_dbg(&pdev->dev, "ignoring GBE LTR\n");
> +               quirk_ltr_ignore(1U << 3);

Can this be made a part of *_reg_map itself if intended to be used for
more future platforms? Otherwise we just leave it as a one time quirk.

> +       }
> +
>         pmc_core_dbgfs_register(pmcdev);
>
>         device_initialized = true;
> --
> 2.25.1
>


-- 
Thanks,
Rajneesh
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

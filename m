Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0753313F2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Mar 2021 17:59:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8ED182EA4;
	Mon,  8 Mar 2021 16:59:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wZnSe_YIYtMS; Mon,  8 Mar 2021 16:59:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E57983611;
	Mon,  8 Mar 2021 16:59:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CBD7D1BF97C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 16:58:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9E7E83A89
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 16:58:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7SdfrWbJJ-XP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Mar 2021 16:58:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 33C2083A88
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 16:58:02 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id e10so12168857wro.12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Mar 2021 08:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OnHAjmDWkyG0OgRiCPQeBHzNS7NRL4e8ys0PrZWdmUU=;
 b=I45iT+is9XBtXMUSazIIvZU2nZDn9CKEDfNkv1jsw4JT/4KYopER8s0K26oo2tvXr0
 ZJftm7fZIrKTYjPtLwYKaHKh9cRSL5N2NEzgATLO75+lbc2r5QoEFwzeiyKqMHXp1RXT
 b887XDbjCWZf1wK/w/81X5VKSVO5VQiuBTQfXwKunaqnlvyFesj1Vay3AoH1raB7eK8C
 r2V/HXupGbBSvzpZnRSGhR1f5ylTyZd0Ey+JCqMXQpXXNC+P/u7m2Pz0rBLQZtc8sA+h
 hAtIGhykRwEzoFzmk4+hpS6CH80rlloCMn+dldjjE4wAzzgeXNMslgPLXjitY9sfekt1
 J+oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OnHAjmDWkyG0OgRiCPQeBHzNS7NRL4e8ys0PrZWdmUU=;
 b=h7lrWEFfc4jWGbVBKB696vQPiWdH7JlzRUymM308AD/IhV3OedkVqx5vJWHXotnc/t
 ww7lxHh2JrqCEaWvpcRPQzTY2kXyeP33Q4RQ9g0jq7i1BB2+OJ2xEMqwJA1347gF+pe5
 Rug2cIFoABY39OIJE9nSMZZ7wrmhE98upN0nlWr8XzCOV48LLIxm2A63pe7GheNABXm6
 RMJVhOnLrCbgT39r6rWfaaB3JX14ZAa7rRAA/qPAnv0185tXzxAsCq8EPpeWcediAfLk
 zzcI9GvIkoBpvufyFoK4Zgkz2JHZmkHWh8C51EwoTtGupR1/6EHGJXSBldl9dQKtp+vv
 rTWQ==
X-Gm-Message-State: AOAM532NiCLyuPhmikFEz8i+YG2OxIIyq/wIojeT6ZjJiMNcQw3mhpO1
 UNCGZ00FSsLirI7y1J51pWlF1VuaYm9/fILXKHM=
X-Google-Smtp-Source: ABdhPJxAnGQRZutgoohHwju0D4XrH20sQZAAbuuHUAKzuWGmahPIvwi5Ja1pA4CcwG53TJKu6z9/oY02KgzSiWlh8U8=
X-Received: by 2002:adf:9bce:: with SMTP id e14mr24852437wrc.29.1615222680218; 
 Mon, 08 Mar 2021 08:58:00 -0800 (PST)
MIME-Version: 1.0
References: <20210305190608.1834164-1-david.e.box@linux.intel.com>
 <CAE2upjSkN6R_MNxNOwT+sTREGXRq0RVehnG3gCD5Wx9_-D41vg@mail.gmail.com>
 <46331047a90e25a83972f5cf856f027e9c43da46.camel@linux.intel.com>
In-Reply-To: <46331047a90e25a83972f5cf856f027e9c43da46.camel@linux.intel.com>
From: Rajneesh Bhardwaj <irenic.rajneesh@gmail.com>
Date: Mon, 8 Mar 2021 11:57:49 -0500
Message-ID: <CAE2upjSBQd2VL=QY+v99EAN5Vv-RLnVh+A8g5o--DMw5RmTKgg@mail.gmail.com>
To: david.e.box@linux.intel.com
X-Mailman-Approved-At: Mon, 08 Mar 2021 16:59:23 +0000
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
Content-Type: multipart/mixed; boundary="===============4585929211011069439=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4585929211011069439==
Content-Type: multipart/alternative; boundary="000000000000166d8105bd09565d"

--000000000000166d8105bd09565d
Content-Type: text/plain; charset="UTF-8"

Sounds good. When you send your v2 feel free to add my RB.

Reviewed-by: Rajneesh Bhardwaj <irenic.raineesh@gmail.com>


On Mon, Mar 8, 2021 at 11:54 AM David E. Box <david.e.box@linux.intel.com>
wrote:

> Hi Rajneesh,
>
> On Mon, 2021-03-08 at 09:04 -0500, Rajneesh Bhardwaj wrote:
> > Hi David
> >
> > Overall, it looks like the right thing to do but i have a few
> > comments. See below.
> >
> > On Fri, Mar 5, 2021 at 2:07 PM David E. Box <
> > david.e.box@linux.intel.com> wrote:
> > >
> > > Due to a HW limitation, the Latency Tolerance Reporting (LTR) value
> > > programmed in the Tiger Lake GBE controller is not large enough to
> > > allow
> > > the platform to enter Package C10, which in turn prevents the
> > > platform from
> > > achieving its low power target during suspend-to-idle.  Ignore the
> > > GBE LTR
> > > value on Tiger Lake. LTR ignore functionality is currently
> > > performed solely
> > > by a debugfs write call. Split out the LTR code into its own
> > > function that
> > > can be called by both the debugfs writer and by this work around.
> > >
> >
> > I presume this must be the last resort to use such quirk and you've
> > already considered a user space tuning program or fw patch is not an
> > option on this generation of SOCs.
>
> This was the suggested work around by the LAN team. A FW solution may
> be considered for future products but is not in the works for TGL.
>
> >
> > > Signed-off-by: David E. Box <david.e.box@linux.intel.com>
> > > Reviewed-by: Sasha Neftin <sasha.neftin@intel.com>
> > > Cc: intel-wired-lan@lists.osuosl.org
> > > ---
> > >  drivers/platform/x86/intel_pmc_core.c | 55 ++++++++++++++++++++---
> > > ----
> > >  1 file changed, 42 insertions(+), 13 deletions(-)
> > >
> > > diff --git a/drivers/platform/x86/intel_pmc_core.c
> > > b/drivers/platform/x86/intel_pmc_core.c
> > > index ee2f757515b0..ab31eb646a1a 100644
> > > --- a/drivers/platform/x86/intel_pmc_core.c
> > > +++ b/drivers/platform/x86/intel_pmc_core.c
> > > @@ -863,34 +863,45 @@ static int pmc_core_pll_show(struct seq_file
> > > *s, void *unused)
> > >  }
> > >  DEFINE_SHOW_ATTRIBUTE(pmc_core_pll);
> > >
> > > -static ssize_t pmc_core_ltr_ignore_write(struct file *file,
> > > -                                        const char __user
> > > *userbuf,
> > > -                                        size_t count, loff_t
> > > *ppos)
> > > +static int pmc_core_write_ltr_ignore(u32 value)
> >
> > This sounds a bit confusing with pmc_core_ltr_ignore_write.
>
> Ack
>
> >
> > >  {
> > >         struct pmc_dev *pmcdev = &pmc;
> > >         const struct pmc_reg_map *map = pmcdev->map;
> > > -       u32 val, buf_size, fd;
> > > -       int err;
> > > -
> > > -       buf_size = count < 64 ? count : 64;
> > > -
> > > -       err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
> > > -       if (err)
> > > -               return err;
> > > +       u32 fd;
> >
> > lets just call it value
>
> Yeah, I'll clean it up the names. It was just moved without changing
> it.
>
> >
> > > +       int err = 0;
> > >
> > >         mutex_lock(&pmcdev->lock);
> > >
> > > -       if (val > map->ltr_ignore_max) {
> > > +       if (fls(value) > map->ltr_ignore_max) {
> >
> > I am not sure why you're considering a bit position here. We rather
> > use absolute value for this and we already preserve (OR) previously
> > programmed LTR while changing to the new desired value.  Current
> > modification would allow users to supply even bigger values than the
> > MAX IP ignore allowed. This can be useful when you want to ignore
> > more
> > than 1 IP at a time but that's not how we usually use it for debug.
> > This is more for a user space debug script to deal with.
>
> This was unintentionally added. The line should not have changed at
> all. Thanks for catching.
>
> >
> >
> https://01.org/blogs/rajneesh/2019/using-power-management-controller-drivers-debug-low-power-platform-states
> >
> > >                 err = -EINVAL;
> > >                 goto out_unlock;
> > >         }
> > >
> > >         fd = pmc_core_reg_read(pmcdev, map->ltr_ignore_offset);
> > > -       fd |= (1U << val);
> > > +       fd |= value;
> > >         pmc_core_reg_write(pmcdev, map->ltr_ignore_offset, fd);
> > >
> > >  out_unlock:
> > >         mutex_unlock(&pmcdev->lock);
> > > +
> > > +       return err;
> > > +}
> > > +
> > > +static ssize_t pmc_core_ltr_ignore_write(struct file *file,
> > > +                                        const char __user
> > > *userbuf,
> > > +                                        size_t count, loff_t
> > > *ppos)
> > > +{
> > > +       u32 buf_size, val;
> > > +       int err;
> > > +
> > > +       buf_size = count < 64 ? count : 64;
> > > +
> > > +       err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
> > > +       if (err)
> > > +               return err;
> > > +
> > > +       err = pmc_core_write_ltr_ignore(1U << val);
> > > +
> > >         return err == 0 ? count : err;
> > >  }
> > >
> > > @@ -1189,6 +1200,15 @@ static int quirk_xtal_ignore(const struct
> > > dmi_system_id *id)
> > >         return 0;
> > >  }
> > >
> > > +static int quirk_ltr_ignore(u32 val)
> > > +{
> > > +       int err;
> > > +
> > > +       err = pmc_core_write_ltr_ignore(val);
> > > +
> > > +       return err;
> > > +}
> > > +
> > >  static const struct dmi_system_id pmc_core_dmi_table[]  = {
> > >         {
> > >         .callback = quirk_xtal_ignore,
> > > @@ -1244,6 +1264,15 @@ static int pmc_core_probe(struct
> > > platform_device *pdev)
> > >         pmcdev->pmc_xram_read_bit = pmc_core_check_read_lock_bit();
> > >         dmi_check_system(pmc_core_dmi_table);
> > >
> > > +       /*
> > > +        * On TGL, due to a hardware limitation, the GBE LTR blocks
> > > PC10 when
> > > +        * a cable is attached. Tell the PMC to ignore it.
> > > +        */
> > > +       if (pmcdev->map == &tgl_reg_map) {
> > > +               dev_dbg(&pdev->dev, "ignoring GBE LTR\n");
> > > +               quirk_ltr_ignore(1U << 3);
> >
> > Can this be made a part of *_reg_map itself if intended to be used
> > for
> > more future platforms? Otherwise we just leave it as a one time
> > quirk.
>
> The intent right now is not to use this for future platforms. We'll see
> if that can happen.
>
> David
>
> >
> > > +       }
> > > +
> > >         pmc_core_dbgfs_register(pmcdev);
> > >
> > >         device_initialized = true;
> > > --
> > > 2.25.1
> > >
> >
> >
>
>
> --
Thanks,
Rajneesh

--000000000000166d8105bd09565d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Sounds good. When you send your v2 feel free to add my RB=
.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Reviewed-by: Rajneesh =
Bhardwaj &lt;<a href=3D"mailto:irenic.raineesh@gmail.com">irenic.raineesh@g=
mail.com</a>&gt;</div><div dir=3D"auto"><br></div><div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 8, 2021 at 11:=
54 AM David E. Box &lt;<a href=3D"mailto:david.e.box@linux.intel.com">david=
.e.box@linux.intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x">Hi Rajneesh,<br>
<br>
On Mon, 2021-03-08 at 09:04 -0500, Rajneesh Bhardwaj wrote:<br>
&gt; Hi David<br>
&gt; <br>
&gt; Overall, it looks like the right thing to do but i have a few<br>
&gt; comments. See below.<br>
&gt; <br>
&gt; On Fri, Mar 5, 2021 at 2:07 PM David E. Box &lt;<br>
&gt; <a href=3D"mailto:david.e.box@linux.intel.com" target=3D"_blank">david=
.e.box@linux.intel.com</a>&gt; wrote:<br>
&gt; &gt; <br>
&gt; &gt; Due to a HW limitation, the Latency Tolerance Reporting (LTR) val=
ue<br>
&gt; &gt; programmed in the Tiger Lake GBE controller is not large enough t=
o<br>
&gt; &gt; allow<br>
&gt; &gt; the platform to enter Package C10, which in turn prevents the<br>
&gt; &gt; platform from<br>
&gt; &gt; achieving its low power target during suspend-to-idle.=C2=A0 Igno=
re the<br>
&gt; &gt; GBE LTR<br>
&gt; &gt; value on Tiger Lake. LTR ignore functionality is currently<br>
&gt; &gt; performed solely<br>
&gt; &gt; by a debugfs write call. Split out the LTR code into its own<br>
&gt; &gt; function that<br>
&gt; &gt; can be called by both the debugfs writer and by this work around.=
<br>
&gt; &gt; <br>
&gt; <br>
&gt; I presume this must be the last resort to use such quirk and you&#39;v=
e<br>
&gt; already considered a user space tuning program or fw patch is not an<b=
r>
&gt; option on this generation of SOCs.<br>
<br>
This was the suggested work around by the LAN team. A FW solution may<br>
be considered for future products but is not in the works for TGL.<br>
<br>
&gt; <br>
&gt; &gt; Signed-off-by: David E. Box &lt;<a href=3D"mailto:david.e.box@lin=
ux.intel.com" target=3D"_blank">david.e.box@linux.intel.com</a>&gt;<br>
&gt; &gt; Reviewed-by: Sasha Neftin &lt;<a href=3D"mailto:sasha.neftin@inte=
l.com" target=3D"_blank">sasha.neftin@intel.com</a>&gt;<br>
&gt; &gt; Cc: <a href=3D"mailto:intel-wired-lan@lists.osuosl.org" target=3D=
"_blank">intel-wired-lan@lists.osuosl.org</a><br>
&gt; &gt; ---<br>
&gt; &gt; =C2=A0drivers/platform/x86/intel_pmc_core.c | 55 ++++++++++++++++=
++++---<br>
&gt; &gt; ----<br>
&gt; &gt; =C2=A01 file changed, 42 insertions(+), 13 deletions(-)<br>
&gt; &gt; <br>
&gt; &gt; diff --git a/drivers/platform/x86/intel_pmc_core.c<br>
&gt; &gt; b/drivers/platform/x86/intel_pmc_core.c<br>
&gt; &gt; index ee2f757515b0..ab31eb646a1a 100644<br>
&gt; &gt; --- a/drivers/platform/x86/intel_pmc_core.c<br>
&gt; &gt; +++ b/drivers/platform/x86/intel_pmc_core.c<br>
&gt; &gt; @@ -863,34 +863,45 @@ static int pmc_core_pll_show(struct seq_fil=
e<br>
&gt; &gt; *s, void *unused)<br>
&gt; &gt; =C2=A0}<br>
&gt; &gt; =C2=A0DEFINE_SHOW_ATTRIBUTE(pmc_core_pll);<br>
&gt; &gt; <br>
&gt; &gt; -static ssize_t pmc_core_ltr_ignore_write(struct file *file,<br>
&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const char __user<br>
&gt; &gt; *userbuf,<br>
&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 size_t count, loff_t<br>
&gt; &gt; *ppos)<br>
&gt; &gt; +static int pmc_core_write_ltr_ignore(u32 value)<br>
&gt; <br>
&gt; This sounds a bit confusing with pmc_core_ltr_ignore_write.<br>
<br>
Ack<br>
<br>
&gt; <br>
&gt; &gt; =C2=A0{<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct pmc_dev *pmcdev=
 =3D &amp;pmc;<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct pmc_reg_m=
ap *map =3D pmcdev-&gt;map;<br>
&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 val, buf_size, fd;<br>
&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int err;<br>
&gt; &gt; -<br>
&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 buf_size =3D count &lt; 64 =
? count : 64;<br>
&gt; &gt; -<br>
&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D kstrtou32_from_user=
(userbuf, buf_size, 10, &amp;val);<br>
&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (err)<br>
&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return err;<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 fd;<br>
&gt; <br>
&gt; lets just call it value<br>
<br>
Yeah, I&#39;ll clean it up the names. It was just moved without changing<br=
>
it.<br>
<br>
&gt; <br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int err =3D 0;<br>
&gt; &gt; <br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mutex_lock(&amp;pmcdev=
-&gt;lock);<br>
&gt; &gt; <br>
&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (val &gt; map-&gt;ltr_ig=
nore_max) {<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (fls(value) &gt; map-&gt=
;ltr_ignore_max) {<br>
&gt; <br>
&gt; I am not sure why you&#39;re considering a bit position here. We rathe=
r<br>
&gt; use absolute value for this and we already preserve (OR) previously<br=
>
&gt; programmed LTR while changing to the new desired value.=C2=A0 Current<=
br>
&gt; modification would allow users to supply even bigger values than the<b=
r>
&gt; MAX IP ignore allowed. This can be useful when you want to ignore<br>
&gt; more<br>
&gt; than 1 IP at a time but that&#39;s not how we usually use it for debug=
.<br>
&gt; This is more for a user space debug script to deal with.<br>
<br>
This was unintentionally added. The line should not have changed at<br>
all. Thanks for catching.<br>
<br>
&gt;=C2=A0 =C2=A0<br>
&gt; <a href=3D"https://01.org/blogs/rajneesh/2019/using-power-management-c=
ontroller-drivers-debug-low-power-platform-states" rel=3D"noreferrer" targe=
t=3D"_blank">https://01.org/blogs/rajneesh/2019/using-power-management-cont=
roller-drivers-debug-low-power-platform-states</a><br>
&gt; <br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D -EINVAL;<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto out_unlock;<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<br>
&gt; &gt; <br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fd =3D pmc_core_reg_re=
ad(pmcdev, map-&gt;ltr_ignore_offset);<br>
&gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fd |=3D (1U &lt;&lt; val);<=
br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fd |=3D value;<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pmc_core_reg_write(pmc=
dev, map-&gt;ltr_ignore_offset, fd);<br>
&gt; &gt; <br>
&gt; &gt; =C2=A0out_unlock:<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mutex_unlock(&amp;pmcd=
ev-&gt;lock);<br>
&gt; &gt; +<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return err;<br>
&gt; &gt; +}<br>
&gt; &gt; +<br>
&gt; &gt; +static ssize_t pmc_core_ltr_ignore_write(struct file *file,<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const char __user<br>
&gt; &gt; *userbuf,<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 size_t count, loff_t<br>
&gt; &gt; *ppos)<br>
&gt; &gt; +{<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 buf_size, val;<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int err;<br>
&gt; &gt; +<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 buf_size =3D count &lt; 64 =
? count : 64;<br>
&gt; &gt; +<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D kstrtou32_from_user=
(userbuf, buf_size, 10, &amp;val);<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (err)<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return err;<br>
&gt; &gt; +<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D pmc_core_write_ltr_=
ignore(1U &lt;&lt; val);<br>
&gt; &gt; +<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return err =3D=3D 0 ? =
count : err;<br>
&gt; &gt; =C2=A0}<br>
&gt; &gt; <br>
&gt; &gt; @@ -1189,6 +1200,15 @@ static int quirk_xtal_ignore(const struct<=
br>
&gt; &gt; dmi_system_id *id)<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;<br>
&gt; &gt; =C2=A0}<br>
&gt; &gt; <br>
&gt; &gt; +static int quirk_ltr_ignore(u32 val)<br>
&gt; &gt; +{<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int err;<br>
&gt; &gt; +<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D pmc_core_write_ltr_=
ignore(val);<br>
&gt; &gt; +<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return err;<br>
&gt; &gt; +}<br>
&gt; &gt; +<br>
&gt; &gt; =C2=A0static const struct dmi_system_id pmc_core_dmi_table[]=C2=
=A0 =3D {<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 {<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .callback =3D quirk_xt=
al_ignore,<br>
&gt; &gt; @@ -1244,6 +1264,15 @@ static int pmc_core_probe(struct<br>
&gt; &gt; platform_device *pdev)<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pmcdev-&gt;pmc_xram_re=
ad_bit =3D pmc_core_check_read_lock_bit();<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dmi_check_system(pmc_c=
ore_dmi_table);<br>
&gt; &gt; <br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /*<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * On TGL, due to a ha=
rdware limitation, the GBE LTR blocks<br>
&gt; &gt; PC10 when<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * a cable is attached=
. Tell the PMC to ignore it.<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (pmcdev-&gt;map =3D=3D &=
amp;tgl_reg_map) {<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 dev_dbg(&amp;pdev-&gt;dev, &quot;ignoring GBE LTR\n&q=
uot;);<br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 quirk_ltr_ignore(1U &lt;&lt; 3);<br>
&gt; <br>
&gt; Can this be made a part of *_reg_map itself if intended to be used<br>
&gt; for<br>
&gt; more future platforms? Otherwise we just leave it as a one time<br>
&gt; quirk.<br>
<br>
The intent right now is not to use this for future platforms. We&#39;ll see=
<br>
if that can happen.<br>
<br>
David<br>
<br>
&gt; <br>
&gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<br>
&gt; &gt; +<br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pmc_core_dbgfs_registe=
r(pmcdev);<br>
&gt; &gt; <br>
&gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 device_initialized =3D=
 true;<br>
&gt; &gt; --<br>
&gt; &gt; 2.25.1<br>
&gt; &gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><font face=3D"aria=
l, helvetica, sans-serif" color=3D"#000000">Thanks,</font></div><div><font =
face=3D"arial, helvetica, sans-serif" color=3D"#000000">Rajneesh</font></di=
v></div></div>

--000000000000166d8105bd09565d--

--===============4585929211011069439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4585929211011069439==--

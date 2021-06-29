Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE6B3B774B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 19:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8242A40425;
	Tue, 29 Jun 2021 17:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6AqIfvy9_Rpu; Tue, 29 Jun 2021 17:35:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 566B740403;
	Tue, 29 Jun 2021 17:35:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A3B51BF909
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 17:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 769A541D0D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 17:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KfwrqSO6ya5L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 17:34:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 525FD41D0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 17:34:11 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 p10-20020a05600c430ab02901df57d735f7so2364317wme.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 10:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OEApLvfEbbAnvp84mGU1RbKO0KhbR6D6eEsGaT/iOs4=;
 b=Ypko322NXIcsKYtbpxEMo8B6odCsAzZFfrpfrRhrSWdfP0FKASoBl+7Au8Eug8cmLL
 k1mbIefQedeN9l/JtzNt5QMoWayAJXVBQKgnFGJMgSuD+3er19IUj3lqH4hlkEFCo45N
 yq+esxodICrCXFR3lNAEL5oOEl7dW+ZevPrMZmmz5O/Pludq7hjNejt0jhv+9tfq19KV
 CsoZ1FqrI1K295YkrRvAlZPShNOP6EWLlCUL+hbll8oa05eqqKNB0U+hwxaZ5V26Vq4y
 qfXItXHXJjiWyUgOe1YSeNA5UW0IsEGcyjuLiZYh2zXYi4xjIX894e2c9ViYRH9CsPJD
 SbQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OEApLvfEbbAnvp84mGU1RbKO0KhbR6D6eEsGaT/iOs4=;
 b=UkmQppXG78mdxzuejf+LTJfee+2vK2sszlIlMsvMkjoSRGfV5zHyRPoaytjjAlU4vn
 k2ZtThQ7FHXnrsCrALBh1J0Hc3A0ASFRt82q3e6yWIZYBC72JQl/ffquBpMBScMaBQkY
 rBRoL2fMEZNHV+x879OxVFtpbtS21npVYCc72FM1H0iC0vQhGNjqmAyRObDatX/OTqrP
 s2OBNvhAvnFErHQ+s929PrHimH9N73eBGN9EVuoDvABNjRIqLMsmM2QesFr0GbH9mbQK
 hu48haXFip1OutPZpref0J2MgcFbNPhbDkF62/664jlcTc/wK2/U0yXpfxVSiLk6PeQs
 F2cg==
X-Gm-Message-State: AOAM530zgQR84khecQ3m1EpJFHhj78F154F3I//5t/FgTJhMY1Z+6HNB
 zAFTyY8PQgRINPjcnhjOM1iD01adG7xkkiPK/Bo=
X-Google-Smtp-Source: ABdhPJxKxfc1rypUard2hE5HKdqZZAN+sOIJow6EXKsq1dLdwMGNYbL4Jl5CkON0kl2w54IXjplc3RTuXyVX5xqZT5c=
X-Received: by 2002:a05:600c:1d1a:: with SMTP id
 l26mr33618566wms.21.1624988049531; 
 Tue, 29 Jun 2021 10:34:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210629082128.255988-1-seven.yi.lee@gmail.com>
 <02ff77ef-e802-8e13-d169-1ab2c250405a@intel.com>
In-Reply-To: <02ff77ef-e802-8e13-d169-1ab2c250405a@intel.com>
From: Yee Li <seven.yi.lee@gmail.com>
Date: Wed, 30 Jun 2021 01:33:57 +0800
Message-ID: <CALX8JfQymbSmCP0xk0C-=v64__uaH=BR0UZjr2yRyLWVwm9dLQ@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Tue, 29 Jun 2021 17:35:31 +0000
Subject: Re: [Intel-wired-lan] [PATCH] driver core: fix e1000e ltr bug
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
Cc: linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============0680552461767087837=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============0680552461767087837==
Content-Type: multipart/alternative; boundary="00000000000074e42705c5eb036c"

--00000000000074e42705c5eb036c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, 18874368ns > 3145728ns.
But, 0xe40 < 0x1003.

So, the final lat_enc is 0xe40.
(Latency encoded is less than maximum LTR encoded by platform)

Neftin, Sasha <sasha.neftin@intel.com> =E4=BA=8E 2021=E5=B9=B46=E6=9C=8829=
=E6=97=A5=E5=91=A8=E4=BA=8C 22:49=E5=86=99=E9=81=93=EF=BC=9A

> On 6/29/2021 11:21, YeeLi wrote:
> Yeeli,
> > In e1000e driver, a PCIe-like device, the max snoop/no-snoop latency
> > is the upper limit.So, directly compare the size of lat_enc and
> > max_ltr_enc is incorrect.
> >
> why?
> >      In 1000Mbps, 0x8b9 < 0x1003, 189440 ns < 3145728 ns, correct.
> >
> >      In 100Mbps, 0xc3a < 0x1003, 1900544 ns < 3145728 ns, correct.
> >
> >      In 10Mbps, 0xe40 < 0x1003, 18874368 > 3145728, incorrect.
> >
> Platform LTR encoded is 0x1003 - right. It is meant 1048576ns x 3 =3D
> 3145738ns.
> Now,
> for 1000M: 0x08b9 =3D> 185ns x 1024 =3D 189440ns (you are correct)
> for 100M: 0x0c3a =3D> 58ns x 32768 =3D 1900544ns (correct)
> for 10M: 0x0e41 =3D> 577ns x 32768 =3D 18907136ns (ok?)
> 18907136ns > 3145738ns, (latency encoded is great than maximum LTR
> encoded by platform) - so, there is no point to wait more than platform
> required, and lat_enc=3Dmax_ltr_enc. It is expected and we sent right
> value to the power management controller.
> What is the problem you try solve?
>
> > Decoded the lat_enc and max_ltr_enc before compare them is necessary.
> >
> > Signed-off-by: YeeLi <seven.yi.lee@gmail.com>
> > ---
> >   drivers/net/ethernet/intel/e1000e/ich8lan.c | 23 ++++++++++++++++++++=
-
> >   1 file changed, 22 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> > index 590ad110d383..3bff1b570b76 100644
> > --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> > +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> > @@ -986,6 +986,27 @@ static s32 e1000_k1_workaround_lpt_lp(struct
> e1000_hw *hw, bool link)
> >       return ret_val;
> >   }
> >
> > +static u32 convert_e1000e_ltr_scale(u32 val)
> > +{
> > +     if (val > 5)
> > +             return 0;
> > +
> > +     return 1U << (5 * val);
> > +}
> > +
> > +static u64 decoded_ltr(u32 val)
> > +{
> > +     u64 decoded_latency;
> > +     u32 value;
> > +     u32 scale;
> > +
> > +     value =3D val & 0x03FF;
> > +     scale =3D (val & 0x1C00) >> 10;
> > +     decoded_latency =3D value * convert_e1000e_ltr_scale(scale);
> > +
> > +     return decoded_latency;
> > +}
> > +
> >   /**
> >    *  e1000_platform_pm_pch_lpt - Set platform power management values
> >    *  @hw: pointer to the HW structure
> > @@ -1059,7 +1080,7 @@ static s32 e1000_platform_pm_pch_lpt(struct
> e1000_hw *hw, bool link)
> >                                    E1000_PCI_LTR_CAP_LPT + 2,
> &max_nosnoop);
> >               max_ltr_enc =3D max_t(u16, max_snoop, max_nosnoop);
> >
> > -             if (lat_enc > max_ltr_enc)
> > +             if (decoded_ltr(lat_enc) > decoded_ltr(max_ltr_enc))
> >                       lat_enc =3D max_ltr_enc;
> >       }
> >
> >
> sasha
>

--00000000000074e42705c5eb036c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto"><br></div><div dir=3D"auto">Yes,=C2=A0<=
span style=3D"font-family:sans-serif">18874368ns &gt; 3145728ns.</span></di=
v><div dir=3D"auto">But, 0xe40 &lt; 0x1003.</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">So, the final lat_enc is 0xe40.</div><div dir=3D"auto">=
(Latency encoded is less than maximum LTR encoded by platform)<br></div><di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Neft=
in, Sasha &lt;<a href=3D"mailto:sasha.neftin@intel.com" target=3D"_blank" r=
el=3D"noreferrer">sasha.neftin@intel.com</a>&gt; =E4=BA=8E 2021=E5=B9=B46=
=E6=9C=8829=E6=97=A5=E5=91=A8=E4=BA=8C 22:49=E5=86=99=E9=81=93=EF=BC=9A<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">On 6/29/2021 11:21, YeeLi wrote:<br>
Yeeli,<br>
&gt; In e1000e driver, a PCIe-like device, the max snoop/no-snoop latency<b=
r>
&gt; is the upper limit.So, directly compare the size of lat_enc and<br>
&gt; max_ltr_enc is incorrect.<br>
&gt; <br>
why?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 In 1000Mbps, 0x8b9 &lt; 0x1003, 189440 ns &lt; 314=
5728 ns, correct.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 In 100Mbps, 0xc3a &lt; 0x1003, 1900544 ns &lt; 314=
5728 ns, correct.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 In 10Mbps, 0xe40 &lt; 0x1003, 18874368 &gt; 314572=
8, incorrect.<br>
&gt; <br>
Platform LTR encoded is 0x1003 - right. It is meant 1048576ns x 3 =3D <br>
3145738ns.<br>
Now,<br>
for 1000M: 0x08b9 =3D&gt; 185ns x 1024 =3D 189440ns (you are correct)<br>
for 100M: 0x0c3a =3D&gt; 58ns x 32768 =3D 1900544ns (correct)<br>
for 10M: 0x0e41 =3D&gt; 577ns x 32768 =3D 18907136ns (ok?)<br>
18907136ns &gt; 3145738ns, (latency encoded is great than maximum LTR <br>
encoded by platform) - so, there is no point to wait more than platform <br=
>
required, and lat_enc=3Dmax_ltr_enc. It is expected and we sent right <br>
value to the power management controller.<br>
What is the problem you try solve?<br>
<br>
&gt; Decoded the lat_enc and max_ltr_enc before compare them is necessary.<=
br>
&gt; <br>
&gt; Signed-off-by: YeeLi &lt;<a href=3D"mailto:seven.yi.lee@gmail.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">seven.yi.lee@gmail.com</a>&gt;=
<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/e1000e/ich8lan.c | 23 +++++++++=
+++++++++++-<br>
&gt;=C2=A0 =C2=A01 file changed, 22 insertions(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net=
/ethernet/intel/e1000e/ich8lan.c<br>
&gt; index 590ad110d383..3bff1b570b76 100644<br>
&gt; --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c<br>
&gt; +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c<br>
&gt; @@ -986,6 +986,27 @@ static s32 e1000_k1_workaround_lpt_lp(struct e100=
0_hw *hw, bool link)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return ret_val;<br>
&gt;=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0<br>
&gt; +static u32 convert_e1000e_ltr_scale(u32 val)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (val &gt; 5)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return 1U &lt;&lt; (5 * val);<br>
&gt; +}<br>
&gt; +<br>
&gt; +static u64 decoded_ltr(u32 val)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0u64 decoded_latency;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0u32 value;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0u32 scale;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0value =3D val &amp; 0x03FF;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0scale =3D (val &amp; 0x1C00) &gt;&gt; 10;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0decoded_latency =3D value * convert_e1000e_ltr_sc=
ale(scale);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return decoded_latency;<br>
&gt; +}<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0/**<br>
&gt;=C2=A0 =C2=A0 *=C2=A0 e1000_platform_pm_pch_lpt - Set platform power ma=
nagement values<br>
&gt;=C2=A0 =C2=A0 *=C2=A0 @hw: pointer to the HW structure<br>
&gt; @@ -1059,7 +1080,7 @@ static s32 e1000_platform_pm_pch_lpt(struct e100=
0_hw *hw, bool link)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 E1000_PCI_LTR_CAP_L=
PT + 2, &amp;max_nosnoop);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0max_ltr_enc =3D =
max_t(u16, max_snoop, max_nosnoop);<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (lat_enc &gt; max_=
ltr_enc)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (decoded_ltr(lat_e=
nc) &gt; decoded_ltr(max_ltr_enc))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0lat_enc =3D max_ltr_enc;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0<br>
&gt; <br>
sasha<br>
</blockquote></div></div></div>

--00000000000074e42705c5eb036c--

--===============0680552461767087837==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0680552461767087837==--

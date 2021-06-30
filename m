Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E703B84F7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jun 2021 16:20:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE903404B3;
	Wed, 30 Jun 2021 14:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ophYOCKevWDm; Wed, 30 Jun 2021 14:20:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC8A1403B7;
	Wed, 30 Jun 2021 14:20:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E18F91BF83C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 06:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF80E4011F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 06:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0I--fToemY8y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jun 2021 06:26:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com
 [IPv6:2607:f8b0:4864:20::336])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 834344010C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 06:26:40 +0000 (UTC)
Received: by mail-ot1-x336.google.com with SMTP id
 i12-20020a05683033ecb02903346fa0f74dso1565256otu.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 23:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nG0hpuigbqFud9fQQl3gmruYC2xcAwu8juKEquMqLs8=;
 b=H/B8V7HEedqvMlfEJHt0LeaIhxRz9xGzcsM9zfxWCtjU2+1YUULdoQ+D23MglHbcxE
 4gX6ve/tP5J+d63gxKI6OGAngwhW1r12qITwrX2c+gQUXXirgtVuRblVnKr09CDmaYDt
 KtlzU+adbJLKuWRJKNoyawd45qmdXzBWxEJQUTytm7H8qxAvMbNjuSpzVDSv1snaxAUu
 us7pIUFwv1HxejJEusdcQXdp3kiQt7/uGTzAFA4IUH1+2wAIuCEpLQRF3wbDi6/B19x4
 5lNRm1VosSEhmSZEb15kpvuD7wM3bbwv3WBJzLQ2npbN+T9Im+5Dil56rq1oiqdkvtg6
 FolA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nG0hpuigbqFud9fQQl3gmruYC2xcAwu8juKEquMqLs8=;
 b=dmZOtoK3o+1YzXI2KaVPNxu7TxDQO6G460uqw0mW7fqTwM/SI/xG8GTcUN4lxbN46b
 nZ3ZbZdR7nMMuKRpsauhqlizmA8LyTe1nv0IisVD/OzeuqHTjDMgH5mcSUjC6iaGtZPE
 rKcd6zMPZT60JouyZ5VafF6GphQEESq4t4l0JT9S4pigs3QL0M/Kthvd6Lp3yRTqqb3g
 YX7ufXpqzTFgWr59ZHc/a+suLiq0EPfCp7oTlialo3KE1jmPc9VXi6jv/3a8F1aKrGlY
 5YL2Z9fH/zl3OhuirChg7NkKvbznu1Jjb3E+bBsW0l5NwtpBz5hTxrpHyRStyxQad1fz
 jxEA==
X-Gm-Message-State: AOAM532Y9JtYT6HwFLhJRu4Yrx1hbD090TQXj0i4T3qFFjDtqXfdDC37
 GaXx+Wnp5a4/mY2gxxUlm7qKkNUbS8yda/GujAQ=
X-Google-Smtp-Source: ABdhPJyh5upNp7juDrJD0yG86AQCsj5H9UPWxqF6osLfU2Qv7BLsYlNEVba/lL+XhH38310HyYgeip8UjLFeG86UWW4=
X-Received: by 2002:a05:6830:1e99:: with SMTP id
 n25mr7575329otr.279.1625034399592; 
 Tue, 29 Jun 2021 23:26:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210629082128.255988-1-seven.yi.lee@gmail.com>
 <02ff77ef-e802-8e13-d169-1ab2c250405a@intel.com>
 <CALX8JfQymbSmCP0xk0C-=v64__uaH=BR0UZjr2yRyLWVwm9dLQ@mail.gmail.com>
 <0234b97a-f207-47b0-1545-582ee5282824@intel.com>
In-Reply-To: <0234b97a-f207-47b0-1545-582ee5282824@intel.com>
From: Yee Li <seven.yi.lee@gmail.com>
Date: Wed, 30 Jun 2021 14:26:27 +0800
Message-ID: <CALX8JfTOG7bXn7gP+4n1_3CfFFk6aL-RJDY03RCOeBSpUeTEPQ@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Wed, 30 Jun 2021 14:20:29 +0000
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
Cc: "Efrati, Nir" <nir.efrati@intel.com>, linux-kernel@vger.kernel.org, "Edri,
 Michael" <michael.edri@intel.com>, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============3327556111433571986=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3327556111433571986==
Content-Type: multipart/alternative; boundary="00000000000022b4dc05c5f5cecb"

--00000000000022b4dc05c5f5cecb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I agree with you.
That's better code.

Neftin, Sasha <sasha.neftin@intel.com> =E4=BA=8E2021=E5=B9=B46=E6=9C=8830=
=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8B=E5=8D=882:13=E5=86=99=E9=81=93=EF=BC=
=9A

> On 6/29/2021 20:33, Yee Li wrote:
> >
> > Yes, 18874368ns > 3145728ns.
> > But, 0xe40 < 0x1003.
> I got you. I would agree, direct comparison is error-prone. (10M is
> impacted)
> I would suggest do not use convert function. lat_en should rather
> presented as lat_enc =3D scale x value:
> Introduce two u16 variables, u16 lat_enc_d and u16 max_ltr_enc_d;
>
> lat_enc_d =3D (lat_enc & 0x0x3ff) x (1U << 5*((max_ltr_enc & 0x1c00) >> 1=
0))
>
> max_ltr_enc_d =3D (max_ltr_enc & 0x0x3ff) x (1U << 5*((max_ltr_enc &
> 0x1c00) >> 10))
>
> Then:
> if (lat_enc_d > max_ltr_enc_d)
>         lat_enc =3D max_ltr_enc;
> what do you think?
>
> >
> > So, the final lat_enc is 0xe40.
> > (Latency encoded is less than maximum LTR encoded by platform)
> >
> > Neftin, Sasha <sasha.neftin@intel.com <mailto:sasha.neftin@intel.com>>
> > =E4=BA=8E 2021=E5=B9=B46=E6=9C=8829=E6=97=A5=E5=91=A8=E4=BA=8C 22:49=E5=
=86=99=E9=81=93=EF=BC=9A
> >
> >     On 6/29/2021 11:21, YeeLi wrote:
> >     Yeeli,
> >      > In e1000e driver, a PCIe-like device, the max snoop/no-snoop
> latency
> >      > is the upper limit.So, directly compare the size of lat_enc and
> >      > max_ltr_enc is incorrect.
> >      >
> >     why?
> >      >      In 1000Mbps, 0x8b9 < 0x1003, 189440 ns < 3145728 ns, correc=
t.
> >      >
> >      >      In 100Mbps, 0xc3a < 0x1003, 1900544 ns < 3145728 ns, correc=
t.
> >      >
> >      >      In 10Mbps, 0xe40 < 0x1003, 18874368 > 3145728, incorrect.
> >      >
> >     Platform LTR encoded is 0x1003 - right. It is meant 1048576ns x 3 =
=3D
> >     3145738ns.
> >     Now,
> >     for 1000M: 0x08b9 =3D> 185ns x 1024 =3D 189440ns (you are correct)
> >     for 100M: 0x0c3a =3D> 58ns x 32768 =3D 1900544ns (correct)
> >     for 10M: 0x0e41 =3D> 577ns x 32768 =3D 18907136ns (ok?)
> >     18907136ns > 3145738ns, (latency encoded is great than maximum LTR
> >     encoded by platform) - so, there is no point to wait more than
> platform
> >     required, and lat_enc=3Dmax_ltr_enc. It is expected and we sent rig=
ht
> >     value to the power management controller.
> >     What is the problem you try solve?
> >
> >      > Decoded the lat_enc and max_ltr_enc before compare them is
> necessary.
> >      >
> >      > Signed-off-by: YeeLi <seven.yi.lee@gmail.com
> >     <mailto:seven.yi.lee@gmail.com>>
> >      > ---
> >      >   drivers/net/ethernet/intel/e1000e/ich8lan.c | 23
> >     ++++++++++++++++++++-
> >      >   1 file changed, 22 insertions(+), 1 deletion(-)
> >      >
> >      > diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> >     b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> >      > index 590ad110d383..3bff1b570b76 100644
> >      > --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> >      > +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> >      > @@ -986,6 +986,27 @@ static s32 e1000_k1_workaround_lpt_lp(struc=
t
> >     e1000_hw *hw, bool link)
> >      >       return ret_val;
> >      >   }
> >      >
> >      > +static u32 convert_e1000e_ltr_scale(u32 val)
> >      > +{
> >      > +     if (val > 5)
> >      > +             return 0;
> >      > +
> >      > +     return 1U << (5 * val);
> >      > +}
> >      > +
> >      > +static u64 decoded_ltr(u32 val)
> >      > +{
> >      > +     u64 decoded_latency;
> >      > +     u32 value;
> >      > +     u32 scale;
> >      > +
> >      > +     value =3D val & 0x03FF;
> >      > +     scale =3D (val & 0x1C00) >> 10;
> >      > +     decoded_latency =3D value * convert_e1000e_ltr_scale(scale=
);
> >      > +
> >      > +     return decoded_latency;
> >      > +}
> >      > +
> >      >   /**
> >      >    *  e1000_platform_pm_pch_lpt - Set platform power management
> >     values
> >      >    *  @hw: pointer to the HW structure
> >      > @@ -1059,7 +1080,7 @@ static s32 e1000_platform_pm_pch_lpt(struc=
t
> >     e1000_hw *hw, bool link)
> >      >                                    E1000_PCI_LTR_CAP_LPT + 2,
> >     &max_nosnoop);
> >      >               max_ltr_enc =3D max_t(u16, max_snoop, max_nosnoop)=
;
> >      >
> >      > -             if (lat_enc > max_ltr_enc)
> >      > +             if (decoded_ltr(lat_enc) > decoded_ltr(max_ltr_enc=
))
> >      >                       lat_enc =3D max_ltr_enc;
> >      >       }
> >      >
> >      >
> >     sasha
> >
>

--00000000000022b4dc05c5f5cecb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I agree with you.<div>That&#39;s better code.</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Neftin,=
 Sasha &lt;<a href=3D"mailto:sasha.neftin@intel.com">sasha.neftin@intel.com=
</a>&gt; =E4=BA=8E2021=E5=B9=B46=E6=9C=8830=E6=97=A5=E5=91=A8=E4=B8=89 =E4=
=B8=8B=E5=8D=882:13=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 6/29/2021 20:33, Yee Li wrote:<br>
&gt; <br>
&gt; Yes, 18874368ns &gt; 3145728ns.<br>
&gt; But, 0xe40 &lt; 0x1003.<br>
I got you. I would agree, direct comparison is error-prone. (10M is <br>
impacted)<br>
I would suggest do not use convert function. lat_en should rather <br>
presented as lat_enc =3D scale x value:<br>
Introduce two u16 variables, u16 lat_enc_d and u16 max_ltr_enc_d;<br>
<br>
lat_enc_d =3D (lat_enc &amp; 0x0x3ff) x (1U &lt;&lt; 5*((max_ltr_enc &amp; =
0x1c00) &gt;&gt; 10))<br>
<br>
max_ltr_enc_d =3D (max_ltr_enc &amp; 0x0x3ff) x (1U &lt;&lt; 5*((max_ltr_en=
c &amp; <br>
0x1c00) &gt;&gt; 10))<br>
<br>
Then:<br>
if (lat_enc_d &gt; max_ltr_enc_d)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 lat_enc =3D max_ltr_enc;<br>
what do you think?<br>
<br>
&gt; <br>
&gt; So, the final lat_enc is 0xe40.<br>
&gt; (Latency encoded is less than maximum LTR encoded by platform)<br>
&gt; <br>
&gt; Neftin, Sasha &lt;<a href=3D"mailto:sasha.neftin@intel.com" target=3D"=
_blank">sasha.neftin@intel.com</a> &lt;mailto:<a href=3D"mailto:sasha.nefti=
n@intel.com" target=3D"_blank">sasha.neftin@intel.com</a>&gt;&gt; <br>
&gt; =E4=BA=8E 2021=E5=B9=B46=E6=9C=8829=E6=97=A5=E5=91=A8=E4=BA=8C 22:49=
=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 6/29/2021 11:21, YeeLi wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0Yeeli,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; In e1000e driver, a PCIe-like device, the max=
 snoop/no-snoop latency<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; is the upper limit.So, directly compare the s=
ize of lat_enc and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; max_ltr_enc is incorrect.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0why?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 In 1000Mbps, 0x8b9 &lt; 0=
x1003, 189440 ns &lt; 3145728 ns, correct.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 In 100Mbps, 0xc3a &lt; 0x=
1003, 1900544 ns &lt; 3145728 ns, correct.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 In 10Mbps, 0xe40 &lt; 0x1=
003, 18874368 &gt; 3145728, incorrect.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Platform LTR encoded is 0x1003 - right. It is meant=
 1048576ns x 3 =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A03145738ns.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Now,<br>
&gt;=C2=A0 =C2=A0 =C2=A0for 1000M: 0x08b9 =3D&gt; 185ns x 1024 =3D 189440ns=
 (you are correct)<br>
&gt;=C2=A0 =C2=A0 =C2=A0for 100M: 0x0c3a =3D&gt; 58ns x 32768 =3D 1900544ns=
 (correct)<br>
&gt;=C2=A0 =C2=A0 =C2=A0for 10M: 0x0e41 =3D&gt; 577ns x 32768 =3D 18907136n=
s (ok?)<br>
&gt;=C2=A0 =C2=A0 =C2=A018907136ns &gt; 3145738ns, (latency encoded is grea=
t than maximum LTR<br>
&gt;=C2=A0 =C2=A0 =C2=A0encoded by platform) - so, there is no point to wai=
t more than platform<br>
&gt;=C2=A0 =C2=A0 =C2=A0required, and lat_enc=3Dmax_ltr_enc. It is expected=
 and we sent right<br>
&gt;=C2=A0 =C2=A0 =C2=A0value to the power management controller.<br>
&gt;=C2=A0 =C2=A0 =C2=A0What is the problem you try solve?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Decoded the lat_enc and max_ltr_enc before co=
mpare them is necessary.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: YeeLi &lt;<a href=3D"mailto:se=
ven.yi.lee@gmail.com" target=3D"_blank">seven.yi.lee@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:seven.yi.lee@gmail.com=
" target=3D"_blank">seven.yi.lee@gmail.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/e1000e=
/ich8lan.c | 23<br>
&gt;=C2=A0 =C2=A0 =C2=A0++++++++++++++++++++-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A01 file changed, 22 insertions(+),=
 1 deletion(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/net/ethernet/intel/e1000=
e/ich8lan.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0b/drivers/net/ethernet/intel/e1000e/ich8lan.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; index 590ad110d383..3bff1b570b76 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/net/ethernet/intel/e1000e/ich8l=
an.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/net/ethernet/intel/e1000e/ich8l=
an.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; @@ -986,6 +986,27 @@ static s32 e1000_k1_work=
around_lpt_lp(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0e1000_hw *hw, bool link)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return ret_val;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +static u32 convert_e1000e_ltr_scale(u32 val)=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0if (val &gt; 5)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0return 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0return 1U &lt;&lt; (5 * =
val);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +static u64 decoded_ltr(u32 val)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0u64 decoded_latency;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0u32 value;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0u32 scale;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0value =3D val &amp; 0x03=
FF;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0scale =3D (val &amp; 0x1=
C00) &gt;&gt; 10;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0decoded_latency =3D valu=
e * convert_e1000e_ltr_scale(scale);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0return decoded_latency;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0/**<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 *=C2=A0 e1000_platform_pm_pch_lp=
t - Set platform power management<br>
&gt;=C2=A0 =C2=A0 =C2=A0values<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 *=C2=A0 @hw: pointer to the HW s=
tructure<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; @@ -1059,7 +1080,7 @@ static s32 e1000_platfo=
rm_pm_pch_lpt(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0e1000_hw *hw, bool link)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 E1000_PCI_LTR_CAP_LPT + 2,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&amp;max_nosnoop);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0max_ltr_enc =3D max_t(u16, max_snoop, max_nosnoop);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0if (lat_enc &gt; max_ltr_enc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0if (decoded_ltr(lat_enc) &gt; decoded_ltr(max_ltr_enc))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lat_enc =3D max_ltr_enc;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0sasha<br>
&gt;<br>
</blockquote></div>

--00000000000022b4dc05c5f5cecb--

--===============3327556111433571986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3327556111433571986==--

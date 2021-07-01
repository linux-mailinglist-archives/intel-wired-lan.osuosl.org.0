Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C313B933A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jul 2021 16:24:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C037260AC7;
	Thu,  1 Jul 2021 14:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 80ThkuHqMqrS; Thu,  1 Jul 2021 14:24:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53E8A60AD3;
	Thu,  1 Jul 2021 14:24:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BA651BF29D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 08:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EC3944061A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 08:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XoEQ-tw7TS72 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jul 2021 08:53:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C12040613
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 08:53:12 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id u8so7129018wrq.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Jul 2021 01:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5BcqgMwaeks9NMUhYgAKXFv88PdpAsqVFUvP4tlLvb8=;
 b=e38F+bYJ4SXLKJJdJGSeZvAhxUpVYp+Ha27Y4I8bSHOTQwRyMSQobMabTmVt8QMvjV
 UZTvyaKP3VIv0aZZ9aUHiQf8+fKU1OYKbP/YyYs+VYR+SzZMafXLqoAsIaZ0gs9TCvYY
 FMPz40juf6JOlBQxx3xQXX1sesFQR0QRSdeMIcRuU4JuiPUppJxvGgtyd+/sS0atWK53
 CrlPNYPQg/bSUHEb1V3nb2vJhBZtAKt/oNXYOieBFSm3ifUldJBLftkKeaW2iJoQJYsR
 JMzneIiloo+eMcLBaOhNQgLENP5IZFgz1nY7FW66b+nV4cEITEmAt9GCFykf7aW0zJau
 lQCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5BcqgMwaeks9NMUhYgAKXFv88PdpAsqVFUvP4tlLvb8=;
 b=g/d6xSeCoHwK3Xjfszw9BTes9ZvEIeEH4qiIVm4SVl9qiivwvtkG/MSaTmKxh8XzL8
 UR9+ME8k1pzW8nRpfCrQ2eqMwef5Vw7fkExaIsHtYnwSwIt0FyQtyaE4g6wy8liPuEb3
 aSK/B/yKPvSKJU91Q0F6708ciLV/udrAT5Bcyoe0Jk4r6D6aiuvIKgP0zh5a+5B2UIMA
 GBvnQ85s0c4Tc7Wi/wp+eeVoWVRaNHqbAYX5sF3QTtTpjnA+Mpj/Hczr9x4sxw4otavm
 QzPLKsa7GUqi+mrKXcbopDkizPuZz3+wmdhg1XscF39xMfK+V55mNp2ejraHYOnUzPpa
 H3lA==
X-Gm-Message-State: AOAM533K9CpCYkw8VlRf5ES1hTXBu9G5qYFNDYF5QjSURG21AGZkrY1M
 LymUUCxCubpyeHCLU8wSgfxJnEwqJt3lz74+lsY=
X-Google-Smtp-Source: ABdhPJwoqfvwSa7c9pIxEPG5hE6rmHm7EGmDZxWY8CpMM3Gl+EgLdRXm2HnlCKvbM9qxfj4glcyWBsw4bDh0POGvEpo=
X-Received: by 2002:a05:6000:178c:: with SMTP id
 e12mr45173294wrg.140.1625129590546; 
 Thu, 01 Jul 2021 01:53:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210629082128.255988-1-seven.yi.lee@gmail.com>
 <02ff77ef-e802-8e13-d169-1ab2c250405a@intel.com>
 <CALX8JfQymbSmCP0xk0C-=v64__uaH=BR0UZjr2yRyLWVwm9dLQ@mail.gmail.com>
 <0234b97a-f207-47b0-1545-582ee5282824@intel.com>
 <CALX8JfTOG7bXn7gP+4n1_3CfFFk6aL-RJDY03RCOeBSpUeTEPQ@mail.gmail.com>
 <1e15c452-f8be-85fa-e424-b7463cc703eb@intel.com>
In-Reply-To: <1e15c452-f8be-85fa-e424-b7463cc703eb@intel.com>
From: Yee Li <seven.yi.lee@gmail.com>
Date: Thu, 1 Jul 2021 16:52:59 +0800
Message-ID: <CALX8JfRFej=qU8cLMQf2Lp_BunedYfWYy47K1qCVPzwuG=Ph-Q@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Thu, 01 Jul 2021 14:24:15 +0000
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
Content-Type: multipart/mixed; boundary="===============3813602572487354027=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3813602572487354027==
Content-Type: multipart/alternative; boundary="000000000000f5645d05c60bf7de"

--000000000000f5645d05c60bf7de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sure, it's my pleasure.

Neftin, Sasha <sasha.neftin@intel.com> =E4=BA=8E2021=E5=B9=B47=E6=9C=881=E6=
=97=A5=E5=91=A8=E5=9B=9B =E4=B8=8B=E5=8D=884:34=E5=86=99=E9=81=93=EF=BC=9A

> On 6/30/2021 09:26, Yee Li wrote:
> > I agree with you.
> > That's better code.
> Thank Yee-Li for discovering this problem. I would suggest we (intel)
> will process a patch to address this problem. Can I put you kindly as
> "Suggested-by"?
> >
> > Neftin, Sasha <sasha.neftin@intel.com <mailto:sasha.neftin@intel.com>>
> > =E4=BA=8E2021=E5=B9=B46=E6=9C=8830=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8B=
=E5=8D=882:13=E5=86=99=E9=81=93=EF=BC=9A
> >
> >     On 6/29/2021 20:33, Yee Li wrote:
> >      >
> >      > Yes, 18874368ns > 3145728ns.
> >      > But, 0xe40 < 0x1003.
> >     I got you. I would agree, direct comparison is error-prone. (10M is
> >     impacted)
> >     I would suggest do not use convert function. lat_en should rather
> >     presented as lat_enc =3D scale x value:
> >     Introduce two u16 variables, u16 lat_enc_d and u16 max_ltr_enc_d;
> >
> >     lat_enc_d =3D (lat_enc & 0x0x3ff) x (1U << 5*((max_ltr_enc & 0x1c00=
)
> >      >> 10))
> >
> >     max_ltr_enc_d =3D (max_ltr_enc & 0x0x3ff) x (1U << 5*((max_ltr_enc =
&
> >     0x1c00) >> 10))
> >
> >     Then:
> >     if (lat_enc_d > max_ltr_enc_d)
> >              lat_enc =3D max_ltr_enc;
> >     what do you think?
> >
> >      >
> >      > So, the final lat_enc is 0xe40.
> >      > (Latency encoded is less than maximum LTR encoded by platform)
> >      >
> >      > Neftin, Sasha <sasha.neftin@intel.com
> >     <mailto:sasha.neftin@intel.com> <mailto:sasha.neftin@intel.com
> >     <mailto:sasha.neftin@intel.com>>>
> >      > =E4=BA=8E 2021=E5=B9=B46=E6=9C=8829=E6=97=A5=E5=91=A8=E4=BA=8C 2=
2:49=E5=86=99=E9=81=93=EF=BC=9A
> >      >
> >      >     On 6/29/2021 11:21, YeeLi wrote:
> >      >     Yeeli,
> >      >      > In e1000e driver, a PCIe-like device, the max
> >     snoop/no-snoop latency
> >      >      > is the upper limit.So, directly compare the size of
> >     lat_enc and
> >      >      > max_ltr_enc is incorrect.
> >      >      >
> >      >     why?
> >      >      >      In 1000Mbps, 0x8b9 < 0x1003, 189440 ns < 3145728 ns,
> >     correct.
> >      >      >
> >      >      >      In 100Mbps, 0xc3a < 0x1003, 1900544 ns < 3145728 ns,
> >     correct.
> >      >      >
> >      >      >      In 10Mbps, 0xe40 < 0x1003, 18874368 > 3145728,
> incorrect.
> >      >      >
> >      >     Platform LTR encoded is 0x1003 - right. It is meant 1048576n=
s
> >     x 3 =3D
> >      >     3145738ns.
> >      >     Now,
> >      >     for 1000M: 0x08b9 =3D> 185ns x 1024 =3D 189440ns (you are co=
rrect)
> >      >     for 100M: 0x0c3a =3D> 58ns x 32768 =3D 1900544ns (correct)
> >      >     for 10M: 0x0e41 =3D> 577ns x 32768 =3D 18907136ns (ok?)
> >      >     18907136ns > 3145738ns, (latency encoded is great than
> >     maximum LTR
> >      >     encoded by platform) - so, there is no point to wait more
> >     than platform
> >      >     required, and lat_enc=3Dmax_ltr_enc. It is expected and we s=
ent
> >     right
> >      >     value to the power management controller.
> >      >     What is the problem you try solve?
> >      >
> >      >      > Decoded the lat_enc and max_ltr_enc before compare them i=
s
> >     necessary.
> >      >      >
> >      >      > Signed-off-by: YeeLi <seven.yi.lee@gmail.com
> >     <mailto:seven.yi.lee@gmail.com>
> >      >     <mailto:seven.yi.lee@gmail.com <mailto:seven.yi.lee@gmail.co=
m
> >>>
> >      >      > ---
> >      >      >   drivers/net/ethernet/intel/e1000e/ich8lan.c | 23
> >      >     ++++++++++++++++++++-
> >      >      >   1 file changed, 22 insertions(+), 1 deletion(-)
> >      >      >
> >      >      > diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> >      >     b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> >      >      > index 590ad110d383..3bff1b570b76 100644
> >      >      > --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> >      >      > +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> >      >      > @@ -986,6 +986,27 @@ static s32
> >     e1000_k1_workaround_lpt_lp(struct
> >      >     e1000_hw *hw, bool link)
> >      >      >       return ret_val;
> >      >      >   }
> >      >      >
> >      >      > +static u32 convert_e1000e_ltr_scale(u32 val)
> >      >      > +{
> >      >      > +     if (val > 5)
> >      >      > +             return 0;
> >      >      > +
> >      >      > +     return 1U << (5 * val);
> >      >      > +}
> >      >      > +
> >      >      > +static u64 decoded_ltr(u32 val)
> >      >      > +{
> >      >      > +     u64 decoded_latency;
> >      >      > +     u32 value;
> >      >      > +     u32 scale;
> >      >      > +
> >      >      > +     value =3D val & 0x03FF;
> >      >      > +     scale =3D (val & 0x1C00) >> 10;
> >      >      > +     decoded_latency =3D value *
> >     convert_e1000e_ltr_scale(scale);
> >      >      > +
> >      >      > +     return decoded_latency;
> >      >      > +}
> >      >      > +
> >      >      >   /**
> >      >      >    *  e1000_platform_pm_pch_lpt - Set platform power
> >     management
> >      >     values
> >      >      >    *  @hw: pointer to the HW structure
> >      >      > @@ -1059,7 +1080,7 @@ static s32
> >     e1000_platform_pm_pch_lpt(struct
> >      >     e1000_hw *hw, bool link)
> >      >      >                                    E1000_PCI_LTR_CAP_LPT =
+
> 2,
> >      >     &max_nosnoop);
> >      >      >               max_ltr_enc =3D max_t(u16, max_snoop,
> >     max_nosnoop);
> >      >      >
> >      >      > -             if (lat_enc > max_ltr_enc)
> >      >      > +             if (decoded_ltr(lat_enc) >
> >     decoded_ltr(max_ltr_enc))
> >      >      >                       lat_enc =3D max_ltr_enc;
> >      >      >       }
> >      >      >
> >      >      >
> >      >     sasha
> >      >
> >
> sasha
>

--000000000000f5645d05c60bf7de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sure, it&#39;s my pleasure.</div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">Neftin, Sasha &lt;<a href=3D"ma=
ilto:sasha.neftin@intel.com">sasha.neftin@intel.com</a>&gt; =E4=BA=8E2021=
=E5=B9=B47=E6=9C=881=E6=97=A5=E5=91=A8=E5=9B=9B =E4=B8=8B=E5=8D=884:34=E5=
=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On 6/30/2021 09:26, Yee Li wrote:<br>
&gt; I agree with you.<br>
&gt; That&#39;s better code.<br>
Thank Yee-Li for discovering this problem. I would suggest we (intel) <br>
will process a patch to address this problem. Can I put you kindly as <br>
&quot;Suggested-by&quot;?<br>
&gt; <br>
&gt; Neftin, Sasha &lt;<a href=3D"mailto:sasha.neftin@intel.com" target=3D"=
_blank">sasha.neftin@intel.com</a> &lt;mailto:<a href=3D"mailto:sasha.nefti=
n@intel.com" target=3D"_blank">sasha.neftin@intel.com</a>&gt;&gt; <br>
&gt; =E4=BA=8E2021=E5=B9=B46=E6=9C=8830=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=
=8B=E5=8D=882:13=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 6/29/2021 20:33, Yee Li wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Yes, 18874368ns &gt; 3145728ns.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; But, 0xe40 &lt; 0x1003.<br>
&gt;=C2=A0 =C2=A0 =C2=A0I got you. I would agree, direct comparison is erro=
r-prone. (10M is<br>
&gt;=C2=A0 =C2=A0 =C2=A0impacted)<br>
&gt;=C2=A0 =C2=A0 =C2=A0I would suggest do not use convert function. lat_en=
 should rather<br>
&gt;=C2=A0 =C2=A0 =C2=A0presented as lat_enc =3D scale x value:<br>
&gt;=C2=A0 =C2=A0 =C2=A0Introduce two u16 variables, u16 lat_enc_d and u16 =
max_ltr_enc_d;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0lat_enc_d =3D (lat_enc &amp; 0x0x3ff) x (1U &lt;&lt=
; 5*((max_ltr_enc &amp; 0x1c00)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; 10))<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0max_ltr_enc_d =3D (max_ltr_enc &amp; 0x0x3ff) x (1U=
 &lt;&lt; 5*((max_ltr_enc &amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A00x1c00) &gt;&gt; 10))<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Then:<br>
&gt;=C2=A0 =C2=A0 =C2=A0if (lat_enc_d &gt; max_ltr_enc_d)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lat_enc =3D max_ltr_en=
c;<br>
&gt;=C2=A0 =C2=A0 =C2=A0what do you think?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; So, the final lat_enc is 0xe40.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (Latency encoded is less than maximum LTR enc=
oded by platform)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Neftin, Sasha &lt;<a href=3D"mailto:sasha.nef=
tin@intel.com" target=3D"_blank">sasha.neftin@intel.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:sasha.neftin@intel.com=
" target=3D"_blank">sasha.neftin@intel.com</a>&gt; &lt;mailto:<a href=3D"ma=
ilto:sasha.neftin@intel.com" target=3D"_blank">sasha.neftin@intel.com</a><b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:sasha.neftin@intel.com=
" target=3D"_blank">sasha.neftin@intel.com</a>&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; =E4=BA=8E 2021=E5=B9=B46=E6=9C=8829=E6=97=A5=
=E5=91=A8=E4=BA=8C 22:49=E5=86=99=E9=81=93=EF=BC=9A<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On 6/29/2021 11:21, YeeLi =
wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Yeeli,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; In e1000e driver, a =
PCIe-like device, the max<br>
&gt;=C2=A0 =C2=A0 =C2=A0snoop/no-snoop latency<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; is the upper limit.S=
o, directly compare the size of<br>
&gt;=C2=A0 =C2=A0 =C2=A0lat_enc and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; max_ltr_enc is incor=
rect.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0why?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
In 1000Mbps, 0x8b9 &lt; 0x1003, 189440 ns &lt; 3145728 ns,<br>
&gt;=C2=A0 =C2=A0 =C2=A0correct.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
In 100Mbps, 0xc3a &lt; 0x1003, 1900544 ns &lt; 3145728 ns,<br>
&gt;=C2=A0 =C2=A0 =C2=A0correct.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
In 10Mbps, 0xe40 &lt; 0x1003, 18874368 &gt; 3145728, incorrect.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Platform LTR encoded is 0x=
1003 - right. It is meant 1048576ns<br>
&gt;=C2=A0 =C2=A0 =C2=A0x 3 =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A03145738ns.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Now,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0for 1000M: 0x08b9 =3D&gt; =
185ns x 1024 =3D 189440ns (you are correct)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0for 100M: 0x0c3a =3D&gt; 5=
8ns x 32768 =3D 1900544ns (correct)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0for 10M: 0x0e41 =3D&gt; 57=
7ns x 32768 =3D 18907136ns (ok?)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A018907136ns &gt; 3145738ns,=
 (latency encoded is great than<br>
&gt;=C2=A0 =C2=A0 =C2=A0maximum LTR<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0encoded by platform) - so,=
 there is no point to wait more<br>
&gt;=C2=A0 =C2=A0 =C2=A0than platform<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0required, and lat_enc=3Dma=
x_ltr_enc. It is expected and we sent<br>
&gt;=C2=A0 =C2=A0 =C2=A0right<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0value to the power managem=
ent controller.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0What is the problem you tr=
y solve?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Decoded the lat_enc =
and max_ltr_enc before compare them is<br>
&gt;=C2=A0 =C2=A0 =C2=A0necessary.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: YeeLi=
 &lt;<a href=3D"mailto:seven.yi.lee@gmail.com" target=3D"_blank">seven.yi.l=
ee@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:seven.yi.lee@gmail.com=
" target=3D"_blank">seven.yi.lee@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mail=
to:seven.yi.lee@gmail.com" target=3D"_blank">seven.yi.lee@gmail.com</a> &lt=
;mailto:<a href=3D"mailto:seven.yi.lee@gmail.com" target=3D"_blank">seven.y=
i.lee@gmail.com</a>&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0drivers/=
net/ethernet/intel/e1000e/ich8lan.c | 23<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0++++++++++++++++++++-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A01 file c=
hanged, 22 insertions(+), 1 deletion(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers=
/net/ethernet/intel/e1000e/ich8lan.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0b/drivers/net/ethernet/int=
el/e1000e/ich8lan.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; index 590ad110d383..=
3bff1b570b76 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/net/et=
hernet/intel/e1000e/ich8lan.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/net/et=
hernet/intel/e1000e/ich8lan.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; @@ -986,6 +986,27 @@=
 static s32<br>
&gt;=C2=A0 =C2=A0 =C2=A0e1000_k1_workaround_lpt_lp(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0e1000_hw *hw, bool link)<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0return ret_val;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +static u32 convert_=
e1000e_ltr_scale(u32 val)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=
=A0if (val &gt; 5)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=
=A0return 1U &lt;&lt; (5 * val);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +static u64 decoded_=
ltr(u32 val)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=
=A0u64 decoded_latency;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=
=A0u32 value;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=
=A0u32 scale;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=
=A0value =3D val &amp; 0x03FF;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=
=A0scale =3D (val &amp; 0x1C00) &gt;&gt; 10;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=
=A0decoded_latency =3D value *<br>
&gt;=C2=A0 =C2=A0 =C2=A0convert_e1000e_ltr_scale(scale);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=
=A0return decoded_latency;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0/**<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 *=C2=A0=
 e1000_platform_pm_pch_lpt - Set platform power<br>
&gt;=C2=A0 =C2=A0 =C2=A0management<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0values<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 *=C2=A0=
 @hw: pointer to the HW structure<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; @@ -1059,7 +1080,7 @=
@ static s32<br>
&gt;=C2=A0 =C2=A0 =C2=A0e1000_platform_pm_pch_lpt(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0e1000_hw *hw, bool link)<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 E1000_PCI_LTR_CAP_LPT + 2,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&amp;max_nosnoop);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0max_ltr_enc =3D max_t(u16, max_snoop,<br>
&gt;=C2=A0 =C2=A0 =C2=A0max_nosnoop);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (lat_enc &gt; max_ltr_enc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (decoded_ltr(lat_enc) &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0decoded_ltr(max_ltr_enc))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lat_enc =3D m=
ax_ltr_enc;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0sasha<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
sasha<br>
</blockquote></div>

--000000000000f5645d05c60bf7de--

--===============3813602572487354027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3813602572487354027==--

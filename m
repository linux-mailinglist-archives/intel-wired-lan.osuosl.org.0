Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EFD3B84F6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jun 2021 16:20:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FC7F404C0;
	Wed, 30 Jun 2021 14:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0TbwMoGhPxoj; Wed, 30 Jun 2021 14:20:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35B5B40399;
	Wed, 30 Jun 2021 14:20:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 313251BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 01:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2CAC740178
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 01:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MzUWU__fr_W6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jun 2021 01:46:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24A4B400CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 01:46:44 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id o22so908283wms.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 18:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zfD0mK29u8JP7RsEwDm/zqAyPxRgfQw0d4m+50EuXMs=;
 b=TiqfpMAqez3SkmnY1c9xNc35YnIL5FTZDYvRsjS3Ywrs6RSFrwVCY9HGXc4yZWS++f
 ZrCCFCvVFAsM5cZ3XuDwhrkjZ/u768JVKG/CZOROGkzrYSkTvSRLt5nDWA80w8Qixg0g
 jZsvSVxkDfVInkDnpjtSKAyUkxtNTqZTBok8/6vIEyvNQF6FkL/fvhtm6NYsJQXeciE2
 mWZmFM9RXPAe2/QceQ/NtPYab1SQ1bDZZWS+zktxpK5tIiXKNFRN029ACM113jM+DN5d
 fuWew3NV3l5ICAGpI9NbtdYbyxqYd2wYcVudk1Etwl/BcDzJ+gV1jaCVrqW5ON6q5vkR
 kb8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zfD0mK29u8JP7RsEwDm/zqAyPxRgfQw0d4m+50EuXMs=;
 b=ffUczXz7oBGmgEQDryXgi9hg679edXoDEn6PDv3IK5qyf0v+bIz3/Z3zpZALs07hUM
 aivcnkuFbcIa4W93pXI3DXLQTltfPsd+AK6EuMTZpxTEY0qlPr1zNx5LSgrvHcKXb1xv
 IMvXKruFRVVlZpytgc0CROc1n6xkY6Rs1Zm1XJ0sUVuvGfvVr3eTADLcS7Jh0DP3ukSj
 nx4DZ/83ngGs+Qshf0seh/+cekT1RNSWYpMMDCNhWFA5xUq36xScDE3STpDAJaNwqTbO
 18QmEnjL7AyTGYptlm+MnkQMtpQK1gDT6xaH6LHW6YpPR4fZrRGkh8qZTq29c2hmTvev
 LbCQ==
X-Gm-Message-State: AOAM532lbrAGC90z0DIigk+2Lloj8g17EJ5MKSjOk6i9jQOCMJZp6ZJV
 MbBtbp4W1aIFVB+/pfWQbB9yqVva+Dmh1RcGRlg=
X-Google-Smtp-Source: ABdhPJyQbqJpOz42JDJELDfkA4xmUApa4Q3324Mz5vKZH68T5VBnPgQutpaHfMlVYDnoHQfGUj48hRoeZavcN6/lPCM=
X-Received: by 2002:a05:600c:1d1a:: with SMTP id
 l26mr35380100wms.21.1625017602364; 
 Tue, 29 Jun 2021 18:46:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210629082128.255988-1-seven.yi.lee@gmail.com>
 <02ff77ef-e802-8e13-d169-1ab2c250405a@intel.com>
 <CALX8JfQymbSmCP0xk0C-=v64__uaH=BR0UZjr2yRyLWVwm9dLQ@mail.gmail.com>
In-Reply-To: <CALX8JfQymbSmCP0xk0C-=v64__uaH=BR0UZjr2yRyLWVwm9dLQ@mail.gmail.com>
From: Yee Li <seven.yi.lee@gmail.com>
Date: Wed, 30 Jun 2021 09:46:31 +0800
Message-ID: <CALX8JfQ15gmSJTp5CaXOTXah+KqUiSs2uCRCgNBXO9hejcmbeg@mail.gmail.com>
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
Cc: linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============3024210159896450369=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3024210159896450369==
Content-Type: multipart/alternative; boundary="000000000000f15e0105c5f1e4d8"

--000000000000f15e0105c5f1e4d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*if (lat_enc > max_ltr_enc)*
*        lat_enc =3D max_ltr_enc;*
Does this code mean *Latency* cannot greater than *maximum LTR (by
platform)?*
Directly compare lat_enc (Latency encoded) and max_ltr_enc (maximum LTR
encoded by platform) is *ok?*

In 10Mbps,
Decoded LTR (calculate): 18874368ns > 3145728ns
Encoded LTR (driver code): 0xe40 (*lat_enc*) < 0x1003 (*max_ltr_enc*), so *=
end
if* and *no lat_enc =3D max_ltr_enc.*



Yee Li <seven.yi.lee@gmail.com> =E4=BA=8E2021=E5=B9=B46=E6=9C=8830=E6=97=A5=
=E5=91=A8=E4=B8=89 =E4=B8=8A=E5=8D=881:33=E5=86=99=E9=81=93=EF=BC=9A

>
> Yes, 18874368ns > 3145728ns.
> But, 0xe40 < 0x1003.
>
> So, the final lat_enc is 0xe40.
> (Latency encoded is less than maximum LTR encoded by platform)
>
> Neftin, Sasha <sasha.neftin@intel.com> =E4=BA=8E 2021=E5=B9=B46=E6=9C=882=
9=E6=97=A5=E5=91=A8=E4=BA=8C 22:49=E5=86=99=E9=81=93=EF=BC=9A
>
>> On 6/29/2021 11:21, YeeLi wrote:
>> Yeeli,
>> > In e1000e driver, a PCIe-like device, the max snoop/no-snoop latency
>> > is the upper limit.So, directly compare the size of lat_enc and
>> > max_ltr_enc is incorrect.
>> >
>> why?
>> >      In 1000Mbps, 0x8b9 < 0x1003, 189440 ns < 3145728 ns, correct.
>> >
>> >      In 100Mbps, 0xc3a < 0x1003, 1900544 ns < 3145728 ns, correct.
>> >
>> >      In 10Mbps, 0xe40 < 0x1003, 18874368 > 3145728, incorrect.
>> >
>> Platform LTR encoded is 0x1003 - right. It is meant 1048576ns x 3 =3D
>> 3145738ns.
>> Now,
>> for 1000M: 0x08b9 =3D> 185ns x 1024 =3D 189440ns (you are correct)
>> for 100M: 0x0c3a =3D> 58ns x 32768 =3D 1900544ns (correct)
>> for 10M: 0x0e41 =3D> 577ns x 32768 =3D 18907136ns (ok?)
>> 18907136ns > 3145738ns, (latency encoded is great than maximum LTR
>> encoded by platform) - so, there is no point to wait more than platform
>> required, and lat_enc=3Dmax_ltr_enc. It is expected and we sent right
>> value to the power management controller.
>> What is the problem you try solve?
>>
>> > Decoded the lat_enc and max_ltr_enc before compare them is necessary.
>> >
>> > Signed-off-by: YeeLi <seven.yi.lee@gmail.com>
>> > ---
>> >   drivers/net/ethernet/intel/e1000e/ich8lan.c | 23 +++++++++++++++++++=
+-
>> >   1 file changed, 22 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> > index 590ad110d383..3bff1b570b76 100644
>> > --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> > +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> > @@ -986,6 +986,27 @@ static s32 e1000_k1_workaround_lpt_lp(struct
>> e1000_hw *hw, bool link)
>> >       return ret_val;
>> >   }
>> >
>> > +static u32 convert_e1000e_ltr_scale(u32 val)
>> > +{
>> > +     if (val > 5)
>> > +             return 0;
>> > +
>> > +     return 1U << (5 * val);
>> > +}
>> > +
>> > +static u64 decoded_ltr(u32 val)
>> > +{
>> > +     u64 decoded_latency;
>> > +     u32 value;
>> > +     u32 scale;
>> > +
>> > +     value =3D val & 0x03FF;
>> > +     scale =3D (val & 0x1C00) >> 10;
>> > +     decoded_latency =3D value * convert_e1000e_ltr_scale(scale);
>> > +
>> > +     return decoded_latency;
>> > +}
>> > +
>> >   /**
>> >    *  e1000_platform_pm_pch_lpt - Set platform power management values
>> >    *  @hw: pointer to the HW structure
>> > @@ -1059,7 +1080,7 @@ static s32 e1000_platform_pm_pch_lpt(struct
>> e1000_hw *hw, bool link)
>> >                                    E1000_PCI_LTR_CAP_LPT + 2,
>> &max_nosnoop);
>> >               max_ltr_enc =3D max_t(u16, max_snoop, max_nosnoop);
>> >
>> > -             if (lat_enc > max_ltr_enc)
>> > +             if (decoded_ltr(lat_enc) > decoded_ltr(max_ltr_enc))
>> >                       lat_enc =3D max_ltr_enc;
>> >       }
>> >
>> >
>> sasha
>>
>

--000000000000f15e0105c5f1e4d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><i>if (lat_enc &gt; max_ltr_enc)</i><br></div><i>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 lat_enc =3D max_ltr_enc;</i><br><div>Does this cod=
e mean=C2=A0<b>Latency</b> cannot greater than=C2=A0<b>maximum LTR (by plat=
form)?</b></div><div>Directly compare lat_enc (Latency encoded) and=C2=A0ma=
x_ltr_enc (maximum LTR encoded by platform) is <b>ok?</b></div><div><b><br>=
</b></div><div>In 10Mbps,=C2=A0</div><div>Decoded LTR (calculate): 18874368=
ns &gt; 3145728ns<br>Encoded LTR (driver code): 0xe40 (<b>lat_enc</b>) &lt;=
 0x1003 (<b>max_ltr_enc</b>), so <b>end if</b> and <b>no lat_enc =3D max_lt=
r_enc.</b></div><div><br></div><div><br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">Yee Li &lt;<a href=3D"mailto:=
seven.yi.lee@gmail.com">seven.yi.lee@gmail.com</a>&gt; =E4=BA=8E2021=E5=B9=
=B46=E6=9C=8830=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8A=E5=8D=881:33=E5=86=99=
=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"auto"><div dir=3D"auto"><br></div><div dir=3D"auto">Yes,=C2=
=A0<span style=3D"font-family:sans-serif">18874368ns &gt; 3145728ns.</span>=
</div><div dir=3D"auto">But, 0xe40 &lt; 0x1003.</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">So, the final lat_enc is 0xe40.</div><div dir=3D"au=
to">(Latency encoded is less than maximum LTR encoded by platform)<br></div=
><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
Neftin, Sasha &lt;<a href=3D"mailto:sasha.neftin@intel.com" rel=3D"noreferr=
er" target=3D"_blank">sasha.neftin@intel.com</a>&gt; =E4=BA=8E 2021=E5=B9=
=B46=E6=9C=8829=E6=97=A5=E5=91=A8=E4=BA=8C 22:49=E5=86=99=E9=81=93=EF=BC=9A=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 6/29/2021 11=
:21, YeeLi wrote:<br>
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
</blockquote></div>

--000000000000f15e0105c5f1e4d8--

--===============3024210159896450369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3024210159896450369==--

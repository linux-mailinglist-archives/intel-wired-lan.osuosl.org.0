Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 845214F6384
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Apr 2022 17:41:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19DE083211;
	Wed,  6 Apr 2022 15:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OOHkCHT4_YGP; Wed,  6 Apr 2022 15:41:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB1BA83218;
	Wed,  6 Apr 2022 15:41:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 382AD1BF59E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 15:22:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2561541949
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 15:22:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=googlemail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Ufik4PNPhNi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Apr 2022 15:22:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B24E541942
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 15:22:20 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id b15so2754469pfm.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Apr 2022 08:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fyQXsFcbeHUTt7iaPGkKAGSya6rueDLxdMdh21HSI80=;
 b=FlTFvcsGGOX2MGWoAQQWVu+q+XnV6K/i8RXapvgI/rp0mMxW5iRCrr5Y0uVvIkZvqL
 HDgaW/nBPQAS2Qksjwhn/PTfgKzsH3jVlwRO0moZpXQeY7KMfgA7ZxDSW/eJRbMYbTeW
 LB52MmXyfHgq0xvFSVLdiOgVnq0MP0Oi7gwhgI5j2vsKFFgbR270jj4xfNmsU1NpHG1F
 AJ9uHFAd+2v6M8LPNRDK4RJ3EilqOOWlrKYSQBxbnBtf/LO0CfvOv+9hcFJr87J+Rqpv
 A99Nam0221Z7XeHheDR/U1Z9d2wddcoG/ftsQjlKvDrHb81vPIr+6/j7+Cvs7aP8ro8q
 jILQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fyQXsFcbeHUTt7iaPGkKAGSya6rueDLxdMdh21HSI80=;
 b=C2C1PLXrj8MWHzKSfWON98V936wxzii0iwEHzMVHe+FdylK7tiQWurbdowjHxCeOTG
 R3Be4PBLGRfrgyRclfIzqaUbCZOEJ1MLuH3cj+vNCzW8bEg//zg66KSh8eW4UGPMuEaf
 Or+MqHVr/a/HD+tiFbAsEDiU13TWclp6ylE1rQ9t1P9BNK9TWOx9l5XtZTar7DM6G6vZ
 0e3qks/ebQYaiLWOgI12K3jPFLyaQoIJZwyhv1MlZj6IfX7VbrjtwVdzWk7XRvNH3UjG
 GtMbdLzwu5xfHInjAvvgMIeY6lwInhL7g4KqiobFePLxgM0M+upOjtXP6wq64c/li/7Q
 4THw==
X-Gm-Message-State: AOAM531M9RmG2bAsoaxCAMKnbCkOjQyUeqM1JZfJXC4naaNKy537jVVK
 aVyoQpciDd0/1YVZqzzZn9iC+NWnlbgbve4Bq9c=
X-Google-Smtp-Source: ABdhPJyULorg5Kv4Zv84KeN0GT8J2svgDRbgOJSkoLcY9y/jyT65Sz+/YhstmmqIi3iWnTYR8QGYGHLCHf33pervbcI=
X-Received: by 2002:a05:6a02:105:b0:381:fd01:330f with SMTP id
 bg5-20020a056a02010500b00381fd01330fmr7291712pgb.483.1649258540032; Wed, 06
 Apr 2022 08:22:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220405155601.1443799-1-sasha.neftin@intel.com>
 <f0402937-8594-6ecb-c4f9-c6605dd73d77@molgen.mpg.de>
 <46988714-070b-fca0-efe8-52004649976a@intel.com>
In-Reply-To: <46988714-070b-fca0-efe8-52004649976a@intel.com>
From: James Hutchinson <jahutchinson99@googlemail.com>
Date: Wed, 6 Apr 2022 16:22:07 +0100
Message-ID: <CAD+OKUpr5NeRU-uNKJsCbNq4Bnf7_o6AzkoMSbjp=T84AG-_Cw@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Wed, 06 Apr 2022 15:41:51 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Fix possible overflow
 in LTR decoding
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="===============4763416001357031479=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4763416001357031479==
Content-Type: multipart/alternative; boundary="0000000000006be78205dbfded65"

--0000000000006be78205dbfded65
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 6 Apr 2022, 15:37 Neftin, Sasha, <sasha.neftin@intel.com> wrote:

> On 4/6/2022 08:34, Paul Menzel wrote:
> > Dear Sasha,
> >
> >
> > Thank you for your patch.
> >
> > Am 05.04.22 um 17:56 schrieb Sasha Neftin:
> >> When we decode the latency and the max_latency u16 value does not fill
> >> the required size
> >
> > Do you mean =E2=80=9Cfit into=E2=80=9D or =E2=80=9Cis too small for the=
 required size=E2=80=9D?
> >
> >> and could lead to the wrong LTR representation.
> >
> > Maybe give an example of values leading to incorrect behavior?
> >
> >> Replace the u16 type with the u32 type and allow corrected LTR
> >> representation.
> >
> > Maybe: Increase the variable size from u16 to u32, so the decoded
> > latency can be represented. Why are 32 bit enough? Why not 64 bit?
> Hello Paul,
> Scaling represented as:
> scale 0 - 1         (2^(5*0)) =3D 2^0
> scale 1 - 32        (2^(5 *1))=3D 2^5
> scale 2 - 1024      (2^(5 *2)) =3D2^10
> scale 3 - 32768     (2^(5 *3)) =3D2^15
> scale 4 =E2=80=93 1048576   (2^(5 *4)) =3D 2^20
> scale 5 =E2=80=93 33554432  (2^(5 *4)) =3D 2^25
> scale 4 and scale 5 required 20 and 25 bits respectively.
> scale 6 reserved.
> >
> > Please use 75 characters per line.
> >
> >> Fixes: 44a13a5d99c7 ("e1000e: Fix the max snoop/no-snoop latency for
> >> 10M")
> >> Reported-by: James Hutchinson <jahutchinson99@googlemail.com>
> >> Link: https://bugzilla.kernel.org/show_bug.cgi?id=3D215689
> >> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> >> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> >
> > Add
> >
> > Tested-by: James Hutchinson <jahutchinson99@googlemail.com> (I219-V
> (rev
> > 30))
> I will let James add this tag.
> >
> >> ---
> >> v2: added link tag
> >>
> >>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
> >>   1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> >> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> >> index d60e2016d03c..e6c8e6d5234f 100644
> >> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> >> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> >> @@ -1009,8 +1009,8 @@ static s32 e1000_platform_pm_pch_lpt(struct
> >> e1000_hw *hw, bool link)
> >>   {
> >>       u32 reg =3D link << (E1000_LTRV_REQ_SHIFT +
> >> E1000_LTRV_NOSNOOP_SHIFT) |
> >>           link << E1000_LTRV_REQ_SHIFT | E1000_LTRV_SEND;
> >> -    u16 max_ltr_enc_d =3D 0;    /* maximum LTR decoded by platform */
> >> -    u16 lat_enc_d =3D 0;    /* latency decoded */
> >> +    u32 max_ltr_enc_d =3D 0;    /* maximum LTR decoded by platform */
> >> +    u32 lat_enc_d =3D 0;    /* latency decoded */
> >>       u16 lat_enc =3D 0;    /* latency encoded */
> >>       if (link) {
> >
> > The diff looks good.
> Thanks
> >
> >
> > Kind regards,
> >
> > Paul
> Sasha
>
Tested-by: James Hutchinson <jahutchinson99@googlemail.com>

--0000000000006be78205dbfded65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, 6 Apr 2022, 15:37 Neftin, Sasha, &lt;<a href=3D"mailto=
:sasha.neftin@intel.com">sasha.neftin@intel.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">On 4/6/2022 08:34, Paul Menzel wrote:<br>
&gt; Dear Sasha,<br>
&gt; <br>
&gt; <br>
&gt; Thank you for your patch.<br>
&gt; <br>
&gt; Am 05.04.22 um 17:56 schrieb Sasha Neftin:<br>
&gt;&gt; When we decode the latency and the max_latency u16 value does not =
fill<br>
&gt;&gt; the required size<br>
&gt; <br>
&gt; Do you mean =E2=80=9Cfit into=E2=80=9D or =E2=80=9Cis too small for th=
e required size=E2=80=9D?<br>
&gt; <br>
&gt;&gt; and could lead to the wrong LTR representation.<br>
&gt; <br>
&gt; Maybe give an example of values leading to incorrect behavior?<br>
&gt; <br>
&gt;&gt; Replace the u16 type with the u32 type and allow corrected LTR<br>
&gt;&gt; representation.<br>
&gt; <br>
&gt; Maybe: Increase the variable size from u16 to u32, so the decoded <br>
&gt; latency can be represented. Why are 32 bit enough? Why not 64 bit?<br>
Hello Paul,<br>
Scaling represented as:<br>
scale 0 - 1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(2^(5*0)) =3D 2^0<br>
scale 1 - 32=C2=A0 =C2=A0 =C2=A0 =C2=A0 (2^(5 *1))=3D 2^5<br>
scale 2 - 1024=C2=A0 =C2=A0 =C2=A0 (2^(5 *2)) =3D2^10<br>
scale 3 - 32768=C2=A0 =C2=A0 =C2=A0(2^(5 *3)) =3D2^15<br>
scale 4 =E2=80=93 1048576=C2=A0 =C2=A0(2^(5 *4)) =3D 2^20<br>
scale 5 =E2=80=93 33554432=C2=A0 (2^(5 *4)) =3D 2^25<br>
scale 4 and scale 5 required 20 and 25 bits respectively.<br>
scale 6 reserved.<br>
&gt; <br>
&gt; Please use 75 characters per line.<br>
&gt; <br>
&gt;&gt; Fixes: 44a13a5d99c7 (&quot;e1000e: Fix the max snoop/no-snoop late=
ncy for <br>
&gt;&gt; 10M&quot;)<br>
&gt;&gt; Reported-by: James Hutchinson &lt;<a href=3D"mailto:jahutchinson99=
@googlemail.com" target=3D"_blank" rel=3D"noreferrer">jahutchinson99@google=
mail.com</a>&gt;<br>
&gt;&gt; Link: <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D215=
689" rel=3D"noreferrer noreferrer" target=3D"_blank">https://bugzilla.kerne=
l.org/show_bug.cgi?id=3D215689</a><br>
&gt;&gt; Suggested-by: Dima Ruinskiy &lt;<a href=3D"mailto:dima.ruinskiy@in=
tel.com" target=3D"_blank" rel=3D"noreferrer">dima.ruinskiy@intel.com</a>&g=
t;<br>
&gt;&gt; Signed-off-by: Sasha Neftin &lt;<a href=3D"mailto:sasha.neftin@int=
el.com" target=3D"_blank" rel=3D"noreferrer">sasha.neftin@intel.com</a>&gt;=
<br>
&gt; <br>
&gt; Add<br>
&gt; <br>
&gt; Tested-by: James Hutchinson &lt;<a href=3D"mailto:jahutchinson99@googl=
email.com" target=3D"_blank" rel=3D"noreferrer">jahutchinson99@googlemail.c=
om</a>&gt; (I219-V (rev <br>
&gt; 30))<br>
I will let James add this tag.<br>
&gt; <br>
&gt;&gt; ---<br>
&gt;&gt; v2: added link tag<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0 drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--<br>
&gt;&gt; =C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c <br>
&gt;&gt; b/drivers/net/ethernet/intel/e1000e/ich8lan.c<br>
&gt;&gt; index d60e2016d03c..e6c8e6d5234f 100644<br>
&gt;&gt; --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c<br>
&gt;&gt; +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c<br>
&gt;&gt; @@ -1009,8 +1009,8 @@ static s32 e1000_platform_pm_pch_lpt(struct =
<br>
&gt;&gt; e1000_hw *hw, bool link)<br>
&gt;&gt; =C2=A0 {<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 reg =3D link &lt;&lt; (E1000_LT=
RV_REQ_SHIFT + <br>
&gt;&gt; E1000_LTRV_NOSNOOP_SHIFT) |<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 link &lt;&l=
t; E1000_LTRV_REQ_SHIFT | E1000_LTRV_SEND;<br>
&gt;&gt; -=C2=A0=C2=A0=C2=A0 u16 max_ltr_enc_d =3D 0;=C2=A0=C2=A0=C2=A0 /* =
maximum LTR decoded by platform */<br>
&gt;&gt; -=C2=A0=C2=A0=C2=A0 u16 lat_enc_d =3D 0;=C2=A0=C2=A0=C2=A0 /* late=
ncy decoded */<br>
&gt;&gt; +=C2=A0=C2=A0=C2=A0 u32 max_ltr_enc_d =3D 0;=C2=A0=C2=A0=C2=A0 /* =
maximum LTR decoded by platform */<br>
&gt;&gt; +=C2=A0=C2=A0=C2=A0 u32 lat_enc_d =3D 0;=C2=A0=C2=A0=C2=A0 /* late=
ncy decoded */<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 lat_enc =3D 0;=C2=A0=C2=A0=C2=
=A0 /* latency encoded */<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (link) {<br>
&gt; <br>
&gt; The diff looks good.<br>
Thanks<br>
&gt; <br>
&gt; <br>
&gt; Kind regards,<br>
&gt; <br>
&gt; Paul<br>
Sasha<br></blockquote></div></div><div dir=3D"auto">Tested-by: James Hutchi=
nson &lt;<a href=3D"mailto:jahutchinson99@googlemail.com">jahutchinson99@go=
oglemail.com</a>&gt;<br></div><div dir=3D"auto"><br></div><div dir=3D"auto"=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"></blockquote></d=
iv></div></div>

--0000000000006be78205dbfded65--

--===============4763416001357031479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4763416001357031479==--

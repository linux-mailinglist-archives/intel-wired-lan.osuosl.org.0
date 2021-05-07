Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B79DA376B57
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 May 2021 22:57:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09E2D6080B;
	Fri,  7 May 2021 20:57:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xko-oMSPhOJB; Fri,  7 May 2021 20:57:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF166607FA;
	Fri,  7 May 2021 20:57:47 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 16C681BF338
 for <intel-wired-lan@osuosl.org>; Fri,  7 May 2021 20:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 048D0607FA
 for <intel-wired-lan@osuosl.org>; Fri,  7 May 2021 20:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CG_bR5v0XSr3 for <intel-wired-lan@osuosl.org>;
 Fri,  7 May 2021 20:57:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21F80607BD
 for <intel-wired-lan@osuosl.org>; Fri,  7 May 2021 20:57:40 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id z16so8285726pga.1
 for <intel-wired-lan@osuosl.org>; Fri, 07 May 2021 13:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carbonrobotics-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0Lbile7UhO/EnrhFu4veaQ13R/SCGmCGd9YCm9jty5k=;
 b=bftIdnvPdXrgkCBonh9z1KY/PgQTIGk5CwL4x5WjXWcNIAbFYX4N1EEytTWuhLagVk
 9MHjSjA4MsD84m7A/OL1BOnZwyw7aiQU6bC3BDztwtxg9TopDgb+5u8FxaQ9PsRWnz99
 iZiAImRQywz8ZuGDB/cvmDZPbhLSas2DH2XAv118chw0KIs4KUB7+iReFbSD+/xkPUVf
 7Hr8lY4upIYhgdE0fyyuO3SYCL9y5/JsI2iH/nQkRAetilo6a9IzzKFuNj/bZWUN7t7X
 G9dynqW7VHdZS3Nzova6LB8+TJL9pl0Ql1vGzAw0IF4LYdLXjOdviHWwHTuSWXVJI+20
 cVIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0Lbile7UhO/EnrhFu4veaQ13R/SCGmCGd9YCm9jty5k=;
 b=tgvP+m6+Er8nKAVmKmA3EVl39t4NOF2b7uimLdME3vgplSB0NW6PbkxydVik5EjYoV
 9iGhesKvKq1cfviSYwT41Wj1/Q1dYzDOO804Gm9vfuOlcKJdFrT3JopkTji3LR5mVnXE
 vfaj6Uyic5xT91CZCMX4tBjIffl5+jzM/sNfGsJKSiDe2N5LTuXAsCoytLi1SA8Azt8c
 JsUUPdb9MwmzrG/cVNR+ie5157FVCDAct9S7mno8AksgeLuYBLWk/Z1xrzBheO9Ar/Rm
 kz9i7sfsfxuS4gQ+tWlSBG/oqR685WrFny1PYTYWQUQDfcr8LVSQk6tCfGMoPvDJEXT1
 +WcQ==
X-Gm-Message-State: AOAM533l/jvzD9B828VBZpA7w91VG+QQsCJcEML5T4GSselFRSmctipL
 gPGuSl/gjtxqXF5dnvuSWMgoP6rAfRvNE1upcvo14qHVmJoChQ==
X-Google-Smtp-Source: ABdhPJzCs96C9c/IgPFzkbPmqqtpn2EoTwscRhFVoL+Zrr+LfBo6M5PDYvJykx7jmPuc4jjr3QtW8LmsmW5FQbAIdOM=
X-Received: by 2002:a62:1dca:0:b029:28e:74d9:1e1a with SMTP id
 d193-20020a621dca0000b029028e74d91e1amr11918908pfd.62.1620421059550; Fri, 07
 May 2021 13:57:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAAE-T7+Q__0ONDwzm89uufc6WKrmiCsUPvW_ARhVzaRwv93JFA@mail.gmail.com>
 <20210507103544.000047ed@intel.com>
In-Reply-To: <20210507103544.000047ed@intel.com>
From: Alex Sergeev <asergeev@carbonrobotics.com>
Date: Fri, 7 May 2021 13:57:29 -0700
Message-ID: <CAAE-T7KPQ73PX0LkPPQPeb9Eaun33GbN9AWcyJ18jUXcGMUS3w@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Subject: Re: [Intel-wired-lan] X710-T4L: 5Gb support for IEEE1588
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
Cc: intel-wired-lan@osuosl.org
Content-Type: multipart/mixed; boundary="===============7779988180065724532=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7779988180065724532==
Content-Type: multipart/alternative; boundary="000000000000a4368405c1c3ad59"

--000000000000a4368405c1c3ad59
Content-Type: text/plain; charset="UTF-8"

Thanks for quick response and the fix!

Would it be backported to standalone drivers, or previous kernel versions
(e.g. 5.4), too?

Thanks,
Alex Sergeev


On Fri, May 7, 2021 at 10:35 AM Jesse Brandeburg <jesse.brandeburg@intel.com>
wrote:

> Alex Sergeev wrote:
>
> > Hello,
> >
> > I got forwarded here by folks at e1000-devel@.
> >
> > We have tried to use PTP with X710-T4L and 5Gb link, and encountered
> > clockcheck problem in phc2sys:
> >
> > Apr 30 22:57:36 budtb phc2sys[5940]: [50.569] clockcheck: clock jumped
> > forward or running faster than expected!
> >
> > After further code examination, it turned out that 5Gb case is not
> handled
> > in i40e_ptp.c
> >
> > Here's the naive version of the patch that fixed the problem for us:
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > index f1f6fc3744e9..5747b652ee9e 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > @@ -12,12 +12,13 @@
> >   *
> >   * Much like the 82599, the update period is dependent upon the link
> speed:
> >   * At 40Gb link or no link, the period is 1.6ns.
> > - * At 10Gb link, the period is multiplied by 2. (3.2ns)
> > + * At 5Gb or 10Gb link, the period is multiplied by 2. (3.2ns)
> >   * At 1Gb link, the period is multiplied by 20. (32ns)
> >   * 1588 functionality is not supported at 100Mbps.
> >   */
> >  #define I40E_PTP_40GB_INCVAL 0x0199999999ULL
> >  #define I40E_PTP_10GB_INCVAL_MULT 2
> > +#define I40E_PTP_5GB_INCVAL_MULT    2
> >  #define I40E_PTP_1GB_INCVAL_MULT 20
> >
> >  #define I40E_PRTTSYN_CTL1_TSYNTYPE_V1
> >  BIT(I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
> > @@ -465,6 +466,9 @@ void i40e_ptp_set_increment(struct i40e_pf *pf)
> >   case I40E_LINK_SPEED_10GB:
> >       mult = I40E_PTP_10GB_INCVAL_MULT;
> >       break;
> > + case I40E_LINK_SPEED_5GB:
> > +     mult = I40E_PTP_5GB_INCVAL_MULT;
> > +     break;
> >   case I40E_LINK_SPEED_1GB:
> >       mult = I40E_PTP_1GB_INCVAL_MULT;
> >       break;
> >
> > What's the process to get it applied upstream?
>
> Hi Alex, that's totally a bug, I've filed an internal bug and we'll be
> providing a patch for this problem shortly.
>
> We'll be sure to credit you for the work to find the bug and proposal
> for the fix!
>
> If you wish to have the patch be authored by you, you're welcome to
> resend to this list with a correctly formatted git patch from
> git-format-patch and git-send-email. If you do nothing, we'll just take
> care of it. :-)
>
> Thanks for the report and the fix!
> Jesse
>

--000000000000a4368405c1c3ad59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for quick response and the fix!<div><br></div><div>=
Would it be backported to standalone drivers,=C2=A0or previous kernel versi=
ons (e.g. 5.4), too?</div><div><br clear=3D"all"><div><div dir=3D"ltr" clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">T=
hanks,<div>Alex Sergeev</div><div><br></div></div></div></div></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri,=
 May 7, 2021 at 10:35 AM Jesse Brandeburg &lt;<a href=3D"mailto:jesse.brand=
eburg@intel.com">jesse.brandeburg@intel.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Alex Sergeev wrote:<br>
<br>
&gt; Hello,<br>
&gt; <br>
&gt; I got forwarded here by folks at e1000-devel@.<br>
&gt; <br>
&gt; We have tried to use PTP with X710-T4L and 5Gb link, and encountered<b=
r>
&gt; clockcheck problem in phc2sys:<br>
&gt; <br>
&gt; Apr 30 22:57:36 budtb phc2sys[5940]: [50.569] clockcheck: clock jumped=
<br>
&gt; forward or running faster than expected!<br>
&gt; <br>
&gt; After further code examination, it turned out that 5Gb case is not han=
dled<br>
&gt; in i40e_ptp.c<br>
&gt; <br>
&gt; Here&#39;s the naive version of the patch that fixed the problem for u=
s:<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c<br>
&gt; b/drivers/net/ethernet/intel/i40e/i40e_ptp.c<br>
&gt; index f1f6fc3744e9..5747b652ee9e 100644<br>
&gt; --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c<br>
&gt; +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c<br>
&gt; @@ -12,12 +12,13 @@<br>
&gt;=C2=A0 =C2=A0*<br>
&gt;=C2=A0 =C2=A0* Much like the 82599, the update period is dependent upon=
 the link speed:<br>
&gt;=C2=A0 =C2=A0* At 40Gb link or no link, the period is 1.6ns.<br>
&gt; - * At 10Gb link, the period is multiplied by 2. (3.2ns)<br>
&gt; + * At 5Gb or 10Gb link, the period is multiplied by 2. (3.2ns)<br>
&gt;=C2=A0 =C2=A0* At 1Gb link, the period is multiplied by 20. (32ns)<br>
&gt;=C2=A0 =C2=A0* 1588 functionality is not supported at 100Mbps.<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 #define I40E_PTP_40GB_INCVAL 0x0199999999ULL<br>
&gt;=C2=A0 #define I40E_PTP_10GB_INCVAL_MULT 2<br>
&gt; +#define I40E_PTP_5GB_INCVAL_MULT=C2=A0 =C2=A0 2<br>
&gt;=C2=A0 #define I40E_PTP_1GB_INCVAL_MULT 20<br>
&gt; <br>
&gt;=C2=A0 #define I40E_PRTTSYN_CTL1_TSYNTYPE_V1<br>
&gt;=C2=A0 BIT(I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)<br>
&gt; @@ -465,6 +466,9 @@ void i40e_ptp_set_increment(struct i40e_pf *pf)<br=
>
&gt;=C2=A0 =C2=A0case I40E_LINK_SPEED_10GB:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mult =3D I40E_PTP_10GB_INCVAL_MULT;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; + case I40E_LINK_SPEED_5GB:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0mult =3D I40E_PTP_5GB_INCVAL_MULT;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0case I40E_LINK_SPEED_1GB:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mult =3D I40E_PTP_1GB_INCVAL_MULT;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; <br>
&gt; What&#39;s the process to get it applied upstream?<br>
<br>
Hi Alex, that&#39;s totally a bug, I&#39;ve filed an internal bug and we&#3=
9;ll be<br>
providing a patch for this problem shortly.<br>
<br>
We&#39;ll be sure to credit you for the work to find the bug and proposal<b=
r>
for the fix!<br>
<br>
If you wish to have the patch be authored by you, you&#39;re welcome to<br>
resend to this list with a correctly formatted git patch from<br>
git-format-patch and git-send-email. If you do nothing, we&#39;ll just take=
<br>
care of it. :-)<br>
<br>
Thanks for the report and the fix!<br>
Jesse<br>
</blockquote></div>

--000000000000a4368405c1c3ad59--

--===============7779988180065724532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7779988180065724532==--

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68301C7EE7A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 04:40:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4262E40947;
	Mon, 24 Nov 2025 03:40:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kDSG7dmee8Il; Mon, 24 Nov 2025 03:40:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99C3C40944
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763955622;
	bh=GaELAJ/S95BpyxzoA3783XWN/9Se1kE70pL3UqC0Vos=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kOKTUQwQGnaRZcR0d7NBVp4p8D6FcAivfVNSI8hOQaa+7U9HJ2IAQ/2goryuqLR8H
	 PqJoGlVBewKgYNEHSYVJoAxFEDe6QAZpITQHLsJoNAlbSaGjAvPnaTD9MlKs1Sryeq
	 1sCKUZnukV55tyL8jMpQ9Yhf0VT7xqKsUhyIdNmWrKWPYWSMCxmtyzcyF5NRvD4rJE
	 txeJyGe0RbeL28/atk3Q6Q5mMK7XmCEl5G7nNCOpK/z8WbORjWsaKLy8U2VsdsZgNJ
	 8RAr/h4rFMGwXDzpTJBDobKVZ5BBLA9dQVwFE8Z8KY1NbDY9UE6uBErBFpt7/eSA5v
	 fUMZakSsktyyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99C3C40944;
	Mon, 24 Nov 2025 03:40:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6BBCC158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 03:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F2AE40939
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 03:40:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fNcCwL8ltmu2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 03:40:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1136; helo=mail-yw1-x1136.google.com;
 envelope-from=lgs201920130244@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F2BDA40935
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2BDA40935
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com
 [IPv6:2607:f8b0:4864:20::1136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F2BDA40935
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 03:40:18 +0000 (UTC)
Received: by mail-yw1-x1136.google.com with SMTP id
 00721157ae682-786a822e73aso37296807b3.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 19:40:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763955617; x=1764560417;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GaELAJ/S95BpyxzoA3783XWN/9Se1kE70pL3UqC0Vos=;
 b=VqCDulesj9o5Ou8eZ8DG7X/IEsoUE1zJJovxQ++FDQUNCZ9XXC1Hc0HgHZ15YOFJkv
 Af2Nr0QEdDqvJQ8kgQMOt8VuFyVFLTpTQG3sEvMTI1flehs4yFnRs1ZkSF/gUelb7/Wi
 HV6/YQpaZwXf0bKlEMIOjxdvHRSDCFKIR+mRzNQf6P2D+Gp9p4z1p8eAwZvaphDdhAkU
 Q7FhtbY62451ohXv5CffoxOPgF90hPQg6nEdrEpSkeuyUfAvKlwIwwFs9htuLqb/SkO3
 lxyt8ThDtdb7lwvJVfk/gj8cUqWPljP67Qw5e6Te2qwtniF3f3SrNJaXgK8ONTzIJxGQ
 v4TQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXXzR9H1tzZ3uXtuPrE9Ft1TS2ODHDzDTTNWY4RaLCmCGCs6LreKVieUmGnPznEiBgDMTj5Hh0Ttb5UoCvJS8g=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx4II7X8IUHlxljralvgAVaCHRiormjKYfZQPrh2ibgDFXu36kD
 7jCBBbOGdkgIogAIM2VHlX1K15bYtz22767ogvW2x4WWlKZS3ieDR+SPPN6aMqDOUGcbVYAVsVE
 4ZAgyx8P25JSp4rBZkBJzwU5xaVOi+BI=
X-Gm-Gg: ASbGncsNym/9IdLBbR6oe/qBQeKYc3vBCr470gLiCZ1afGWIxBpvfKd8EhqLbAYDd7d
 hlnHGMYjF9BTkA4nDgkZj3cy/EOfD8pyRfmiEOQ/CKcwJwZQPU8alBBIenaA9dpRKOVswEOKl5Y
 u9x/02SMp/kNNQIA3Wr1VuWT/VoIyUzVIVCBLlHTfs9DqJ7sKk1a+BumF7MgRWTX1arouWj0ZcF
 2WwZ/g0yFgBL78DLZ+TVxQRojbwPtXN5fCvg3QfgjRQ11mpVCSVnH67mPjYKKL9IcDJBXdlD9ig
 q7GpwCo=
X-Google-Smtp-Source: AGHT+IGGTIYoG2668L+glKKotqLZbZ/uLif2PktryBGM2rYomVpBEO1fohxwqwaUM1hw7vu69GDTZ0EXjx5kYvRgcOU=
X-Received: by 2002:a05:690c:61c3:b0:78a:8251:8476 with SMTP id
 00721157ae682-78a8b4953f2mr91495707b3.24.1763955617556; Sun, 23 Nov 2025
 19:40:17 -0800 (PST)
MIME-Version: 1.0
References: <20251104082801.994195-1-lgs201920130244@gmail.com>
 <b53c3a7e-6833-4e87-ae24-c344f2c3c5a1@intel.com>
In-Reply-To: <b53c3a7e-6833-4e87-ae24-c344f2c3c5a1@intel.com>
From: Guangshuo Li <lgs201920130244@gmail.com>
Date: Mon, 24 Nov 2025 11:40:06 +0800
X-Gm-Features: AWmQ_bkzg2Rwdfp32OFVs5az4TyKn1bXnojyPQ0v20LSIqQ594TlWvcYoDlVxo4
Message-ID: <CANUHTR-6tzTELjM0wkfV3DX7Sm1Lgc_iTB_c+OtGd65FH7iY8Q@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Florian Westphal <fw@strlen.de>,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: multipart/alternative; boundary="000000000000fbeb5306444eebec"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763955617; x=1764560417; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=GaELAJ/S95BpyxzoA3783XWN/9Se1kE70pL3UqC0Vos=;
 b=JhopTRoLBU/ivttW6whzOAlUimt672rbpYmQYgxPQO/9nDFJL8984Bs0a1ulKIwJrl
 nOH36vTxAU4wzsO/MihD3UdR+JTM8AxzNyIeMNRpLAb5BwA1SfzneMifpegJGl03dTHq
 gydkGezRZ4oGKTdF+ddIbpcVPjwLWhAOrkUcXaqJidIpj1Dc1eWB5aQcC0CIDynjqxfW
 lew0hLkbUVn1mvE2lrJTjQEDdmV6yoe7kZMd3MVEm6ygz96mwEJADvYPwvf6GCbyWJCP
 hvm+hdtbyTDzWhVoMOet9CJa4R4a+l2WckjWVHwP5ieFbCylu9fbewbwJqfjZvz258gg
 Likw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=JhopTRoL
Subject: Re: [Intel-wired-lan] [PATCH] e1000: fix OOB in
 e1000_tbi_should_accept()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--000000000000fbeb5306444eebec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Tony Nguyen <anthony.l.nguyen@intel.com> =E4=BA=8E2025=E5=B9=B411=E6=9C=881=
8=E6=97=A5=E5=91=A8=E4=BA=8C 07:24=E5=86=99=E9=81=93=EF=BC=9A

>
>
> On 11/4/2025 12:28 AM, Guangshuo Li wrote:
> > In e1000_tbi_should_accept() we read the last byte of the frame via
> > 'data[length - 1]' to evaluate the TBI workaround. If the descriptor-
> > reported length is zero or larger than the actual RX buffer size, this
> > read goes out of bounds and can hit unrelated slab objects. The issue
> > is observed from the NAPI receive path (e1000_clean_rx_irq):
>
> ...
>
> > --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> > +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> > @@ -4090,6 +4090,12 @@ static bool e1000_tbi_should_accept(struct
> e1000_adapter *adapter,
> >                                   u8 status, u8 errors,
> >                                   u32 length, const u8 *data)
> >   {
> > +     /* Guard against OOB on data[length - 1] */
> > +     if (unlikely(!length))
> > +             return false;
> > +     /* Upper bound: length must not exceed rx_buffer_len */
> > +     if (unlikely(length > adapter->rx_buffer_len))
> > +             return false;
>
> The change itself looks fine, however, the declarations should be at the
> beginning of the function so this should be moved to be after that.
>
> >       struct e1000_hw *hw =3D &adapter->hw;
> >       u8 last_byte =3D *(data + length - 1);
>
> Also, since last_byte uses length, this should be broken up and the
> assignment moved after the added checks.
>
> Thanks,
> Tony
>

Hi Tony, all,
>
Thanks for the review. As suggested by Tony, I=E2=80=99ll keep the declarat=
ions at
> the top and place the bounds checks before assigning last_byte. I=E2=80=
=99ll send
> a v2 with the following change:
> static bool e1000_tbi_should_accept(struct e1000_adapter *adapter,
>                                     u8 status, u8 errors,
>                                     u32 length, const u8 *data)
> {
>     struct e1000_hw *hw =3D &adapter->hw;
>     u8 last_byte;
>
>     /* Guard against OOB on data[length - 1] */
>     if (unlikely(!length))
>         return false;
>
>     /* Upper bound: length must not exceed rx_buffer_len */
>     if (unlikely(length > adapter->rx_buffer_len))
>         return false;
>
>     last_byte =3D data[length - 1];
>
>     /* existing logic follows ... */
> }

Please let me know if further adjustments are preferred.



> Best regards,

Guangshuo Li

--000000000000fbeb5306444eebec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Tony Nguyen &lt=
;<a href=3D"mailto:anthony.l.nguyen@intel.com">anthony.l.nguyen@intel.com</=
a>&gt; =E4=BA=8E2025=E5=B9=B411=E6=9C=8818=E6=97=A5=E5=91=A8=E4=BA=8C 07:24=
=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><br>
<br>
On 11/4/2025 12:28 AM, Guangshuo Li wrote:<br>
&gt; In e1000_tbi_should_accept() we read the last byte of the frame via<br=
>
&gt; &#39;data[length - 1]&#39; to evaluate the TBI workaround. If the desc=
riptor-<br>
&gt; reported length is zero or larger than the actual RX buffer size, this=
<br>
&gt; read goes out of bounds and can hit unrelated slab objects. The issue<=
br>
&gt; is observed from the NAPI receive path (e1000_clean_rx_irq):<br>
<br>
...<br>
<br>
&gt; --- a/drivers/net/ethernet/intel/e1000/e1000_main.c<br>
&gt; +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c<br>
&gt; @@ -4090,6 +4090,12 @@ static bool e1000_tbi_should_accept(struct e100=
0_adapter *adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8 status, u8 errors=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 length, const u8=
 *data)<br>
&gt;=C2=A0 =C2=A0{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/* Guard against OOB on data[length - 1] */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (unlikely(!length))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return false;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/* Upper bound: length must not exceed rx_buffer_=
len */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (unlikely(length &gt; adapter-&gt;rx_buffer_le=
n))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return false;<br>
<br>
The change itself looks fine, however, the declarations should be at the <b=
r>
beginning of the function so this should be moved to be after that.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct e1000_hw *hw =3D &amp;adapter-&gt;hw;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 last_byte =3D *(data + length - 1);<br>
<br>
Also, since last_byte uses length, this should be broken up and the <br>
assignment moved after the added checks.<br>
<br>
Thanks,<br>
Tony<br></blockquote><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Hi Tony, all,=C2=A0</p></blockquote><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><p>Thanks for the review. As suggested by Tony, I=
=E2=80=99ll keep the declarations at the top and place the bounds checks be=
fore assigning=C2=A0<code>last_byte</code>. I=E2=80=99ll send a v2 with the=
 following change:</p>static bool e1000_tbi_should_accept(struct e1000_adap=
ter *adapter,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 st=
atus, u8 errors,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 =
length, const u8 *data)<br>{<br>=C2=A0 =C2=A0 struct e1000_hw *hw =3D &amp;=
adapter-&gt;hw;<br>=C2=A0 =C2=A0 u8 last_byte;<br><br>=C2=A0 =C2=A0 /* Guar=
d against OOB on data[length - 1] */<br>=C2=A0 =C2=A0 if (unlikely(!length)=
)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return false;<br><br>=C2=A0 =C2=A0 /* Uppe=
r bound: length must not exceed rx_buffer_len */<br>=C2=A0 =C2=A0 if (unlik=
ely(length &gt; adapter-&gt;rx_buffer_len))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
return false;<br><br>=C2=A0 =C2=A0 last_byte =3D data[length - 1];<br><br>=
=C2=A0 =C2=A0 /* existing logic follows ... */<br>}=C2=A0=C2=A0</blockquote=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Please let me know if fu=
rther adjustments are preferred.</blockquote><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Best regards,</blockquote><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Guangshuo Li=C2=A0</blockquote><div>=
=C2=A0</div><div>=C2=A0=C2=A0</div></div></div>

--000000000000fbeb5306444eebec--

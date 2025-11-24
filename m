Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E74EBC7EE8F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 04:45:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A49E7409A9;
	Mon, 24 Nov 2025 03:45:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0fG4oBwj1xMi; Mon, 24 Nov 2025 03:45:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00E5C409AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763955943;
	bh=NwBJJ+S7I60kL5Cyql6W9czYrkNv7wfefVSgmWrdXjM=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cJTi8/I4GFqn1zq8Dt7/OIV1kWuQO66Ji826nfdR3l3sE/t9mXAi1xeP7RW90iuUy
	 HG7eV/bGvPDYOqVikIQMSj5TqZ/4DbHNo4djXsfgRfxELtuzx7/YtpniCv8EIubKE+
	 YH48VCxeXcTQwFbb3oStH3X0IPfEIqLccV0DqlThkzV7ncmmcO/Vb6d7Wxy9cpIeHV
	 xnZb3IPjakVMXYnDwO3ZPvtKmf8Kw3BUPpZrvQY26vfl8mizogwT1RGBD+nPg4IPlN
	 D3DCKkIjyHJmxxxDtffmrB2GSZVwiNSnPPx5qki4Bi+wZJd24pnUx0Keq2vd1aRN0i
	 ZM+8tc0/kD3wQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00E5C409AE;
	Mon, 24 Nov 2025 03:45:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 38800158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 03:45:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B98960715
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 03:45:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tHWyQQ7D4o52 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 03:45:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1136; helo=mail-yw1-x1136.google.com;
 envelope-from=lgs201920130244@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 529C660714
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 529C660714
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com
 [IPv6:2607:f8b0:4864:20::1136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 529C660714
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 03:45:40 +0000 (UTC)
Received: by mail-yw1-x1136.google.com with SMTP id
 00721157ae682-78a712cfbc0so34987427b3.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 19:45:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763955939; x=1764560739;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NwBJJ+S7I60kL5Cyql6W9czYrkNv7wfefVSgmWrdXjM=;
 b=umF/poGHMwpVKUsJ9jOw3qkbng3H5UHE/W/T2WezlZsEFCpJ4s0fyunCwf+fFFmDF8
 NW4qhQHfs92gjnlJjHB1nd1jCCXYEdKn4ODYq6LCyOtoHhBjCd+daJO6wCJNehxjLErK
 sxhE1B1eo/YSIUHUC1pGwW+t8KHz98D+5DgdFPklkekafTPQxRmU6RwTWTkPLmTh/jG+
 5i4bVQA0yGaKkRXei2nlneKKzeIkrFUE+Rdgq0IUYdrtab7bexjw+eHK9bh5CNrrr0oy
 IY4uqpX9ckrM0UX6d1uB9a1vKKbSlHVvFLK1EfO4uQ2xL6pdGTWdRdUmzYtmRHq52Nu5
 9uXw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWu2q3WLqzv+2Z7Nl4gWG0DpTTPgSc/+H+PpQ75TpaUmXJhqqXGmOXL9Idl2g7FcrUQGA9uGBHMtPyTww3UfrU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzrHdWJwrNm+GVZPtQgLpCLYnmbkRsMTk8ma2A1Lg4plw63+zOH
 SM2U5+eNud5ABxyfNIb6jfkt2coA9f4+5+GtxevWwiOedOmTITKAo5+DLr2VfjhbVrkpPcELN1f
 0/Slp4Je+xdolXTFiHh5Cx4S9F/KG5ME=
X-Gm-Gg: ASbGncuFS4gseFE2GuSmlMhkD9itC9bO1M0rfXO1cfZ6fnXOTFR5w6kD167wQJl1HrE
 r0pqYucy7A1Dm6RZ78eD+f2Q0oe1XIx01jMl6g8dBISTxySWKvssH0v+85eKqmfqCotDNuMkFc1
 aKEmYzens+B15iO8FNoQQEXHuzhpR1abefiil+siIh/AQ3dKrHwt4YyYIVGETMAolgFha7C/Q0c
 wHcUFT7IIfI+VFKzMv8RQXkhptYt7brfMGXpp9HI/3hkS3YuEUb0wMdEa7LAX58YT6pBkmr
X-Google-Smtp-Source: AGHT+IGgcTA1ndZTaThZTKoqRCLXlg+x3MwefWN2FQbDHAumLPxbLA4SUX+WrLRdIOpP43YNDnHiJ9Vqj8pHvONZIJI=
X-Received: by 2002:a53:c05b:0:20b0:63f:a103:5d57 with SMTP id
 956f58d0204a3-64302a2ddefmr6071626d50.5.1763955939050; Sun, 23 Nov 2025
 19:45:39 -0800 (PST)
MIME-Version: 1.0
References: <20251104082801.994195-1-lgs201920130244@gmail.com>
 <b53c3a7e-6833-4e87-ae24-c344f2c3c5a1@intel.com>
In-Reply-To: <b53c3a7e-6833-4e87-ae24-c344f2c3c5a1@intel.com>
From: Guangshuo Li <lgs201920130244@gmail.com>
Date: Mon, 24 Nov 2025 11:45:28 +0800
X-Gm-Features: AWmQ_bnEevVdFKwpdcG3xlZdPhh-YQc34CNqirskw1qMJLSeF_jQ4mnXjyFnJko
Message-ID: <CANUHTR8QDRPZE1b8msLC2WXkdjSjn_+6co0RzsLy7BPENUxjYQ@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Florian Westphal <fw@strlen.de>,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: multipart/alternative; boundary="00000000000025886506444effeb"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763955939; x=1764560739; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=NwBJJ+S7I60kL5Cyql6W9czYrkNv7wfefVSgmWrdXjM=;
 b=kcMBcpyLQ73zDXMIwQug/4eStPO9afjVA9i2oj6egKXGbvvn7Ns5zutX8bOGZy27v9
 V20XSYEQ694iDokb2DLypYLdiSy7WswDKfILns1SrLxqYUmdwCJCIHSAI2GN8HtXeucz
 zGahqIg4mOV609JVX64hRoB9O0PSbJ3J9fpRz8mmHeYFpj6adRGSlB8pLfCzY170GARq
 dyRjHYnymcmTlbT9oSESCfyolYqGl8zfe1iTd6YbnCuI1KcjUWu1Mum3aUNN78eIEOpc
 TqjbLOXs6moixhxTSoqzx2h6PoGjIjmsQNR0GBaNM+sXCGRWrIIayHKRodbpAqigyYZH
 alqg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=kcMBcpyL
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

--00000000000025886506444effeb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tony, all,

Thanks for the review. As suggested by Tony, I=E2=80=99ll keep the declarat=
ions at
the top and place the bounds checks before assigning last_byte. I=E2=80=99l=
l send a
v2 with the following change:

static bool e1000_tbi_should_accept(struct e1000_adapter *adapter,
                                    u8 status, u8 errors,
                                    u32 length, const u8 *data)
{
    struct e1000_hw *hw =3D &adapter->hw;
    u8 last_byte;

    /* Guard against OOB on data[length - 1] */
    if (unlikely(!length))
        return false;

    /* Upper bound: length must not exceed rx_buffer_len */
    if (unlikely(length > adapter->rx_buffer_len))
        return false;

    last_byte =3D data[length - 1];

    /* existing logic follows ... */
}
Please let me know if further adjustments are preferred.

Best regards,
Guangshuo Li


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

--00000000000025886506444effeb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Tony, all, <br><br>Thanks for the revi=
ew. As suggested by Tony, I=E2=80=99ll keep the declarations at the top and=
 place the bounds checks before assigning last_byte. I=E2=80=99ll send a v2=
 with the following change:<br><br>static bool e1000_tbi_should_accept(stru=
ct e1000_adapter *adapter,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 u8 status, u8 errors,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 u32 length, const u8 *data)<br>{<br>=C2=A0 =C2=A0 struct e1000_h=
w *hw =3D &amp;adapter-&gt;hw;<br>=C2=A0 =C2=A0 u8 last_byte;<br><br>=C2=A0=
 =C2=A0 /* Guard against OOB on data[length - 1] */<br>=C2=A0 =C2=A0 if (un=
likely(!length))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return false;<br><br>=C2=A0=
 =C2=A0 /* Upper bound: length must not exceed rx_buffer_len */<br>=C2=A0 =
=C2=A0 if (unlikely(length &gt; adapter-&gt;rx_buffer_len))<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 return false;<br><br>=C2=A0 =C2=A0 last_byte =3D data[len=
gth - 1];<br><br>=C2=A0 =C2=A0 /* existing logic follows ... */<br>} =C2=A0=
<br>Please let me know if further adjustments are preferred.<br>=C2=A0<br>B=
est regards,<br>Guangshuo Li <br>=C2=A0</div><br><div class=3D"gmail_quote =
gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Tony Nguyen &l=
t;<a href=3D"mailto:anthony.l.nguyen@intel.com">anthony.l.nguyen@intel.com<=
/a>&gt; =E4=BA=8E2025=E5=B9=B411=E6=9C=8818=E6=97=A5=E5=91=A8=E4=BA=8C 07:2=
4=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><br>
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
Tony<br></blockquote><div>=C2=A0</div></div></div>

--00000000000025886506444effeb--

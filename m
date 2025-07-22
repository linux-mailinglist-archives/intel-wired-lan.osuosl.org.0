Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC3DB0E6E2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 01:05:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFF5261201;
	Tue, 22 Jul 2025 23:05:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5v4bmnyNVQf6; Tue, 22 Jul 2025 23:05:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 403B760855
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753225508;
	bh=o7EJqvbx78jyg/AF+HgULO5h7plKJg0CprdQbemfJYI=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dfZCzY6nrMUC5vXk4vQpWEgdMWuNrue8ungu6X4KxNAjWf32FSCyQkGJIOeGJLNk1
	 qiHn2D/1L4cPIHvqe60jitnX1ufvyQy/QMR3OdHBmv9il7+lV4tOB/vvXTxXTWZ+JJ
	 pNY+7HoYyz1OUtC18hQ4itFUwUpij91OMOIG9PdN3fwnXnUhj0wKd2Q3p5CN1w5DOP
	 fRibzjsqLhsTjTriOiC6JgI4rUMXIMDq4MAoAOTpltDrs3IzKQdB9puPuzxEmTFHYd
	 pKmg93CkC0yDAHMK6wGD33tb2WEMZPRXEdFGty4Dy0Uyi7TaGTpqIpkPN23Z9gvWpf
	 OxTbcvpBh0HJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 403B760855;
	Tue, 22 Jul 2025 23:05:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 61001E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 23:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 527DE60855
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 23:05:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rUsu3rbGPUKd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 23:05:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::136; helo=mail-il1-x136.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 966EF60862
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 966EF60862
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com
 [IPv6:2607:f8b0:4864:20::136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 966EF60862
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 23:05:05 +0000 (UTC)
Received: by mail-il1-x136.google.com with SMTP id
 e9e14a558f8ab-3e2c547bc90so9781545ab.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 16:05:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753225504; x=1753830304;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=o7EJqvbx78jyg/AF+HgULO5h7plKJg0CprdQbemfJYI=;
 b=wA4yXaReGnnYR0ILEcXbe5ueN/OWxRQ3sqhfaoiZnSjdaYrEbJCJkBFEPg7nWvkwTP
 f4fdVYuWUPLHHQWxBUdEyrnApgxNRE4/SDK61ffQ1Rn1EwCkN4c6tStvaLcVKNjIdkSR
 sDvaPZeJE7/WZLfbAEB0QFjBgd4iWQ4133x/d4Wpos3IkA0Q6YJFLKBizSsKjch7ZUwt
 9S1Ot7FTPCp3CDvSe75ZwAln5esMBAs5yTCa79RSadkAJSeTOoDD0kbkr+/98n+eRLcA
 pP4kchdaPbddh4W6Qa8LVtUNq92SflaE9I5nOpAw6qo2eOLhb7DpioF188CuZuO3H+/e
 5E9g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWgfCCHwjOlz9jLCVtTHgyrt8LO6MujGl5vqSRIgSJ0ghcjPTY+wBg3ZZDrQlxTY5V+s4gc6DRx+XiRQs6wa3A=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzGga1EXnnfSz89r3zgMTftQLvJP9+zTd+E/POOv4I6EJngY8tC
 Aql8U2/fnuajbLJiovwpcy8FX4G1n7Fc27ToSEsPqBGVY31uek3QaP1/zwXyMEIjva8hMo1iHts
 HhtUNXeBPvmN7vjQChecBXxKLW31g5aY=
X-Gm-Gg: ASbGncvMem7w8+zEix6FnNxe1R8u4rNNPnBN5MhlV3xmw+fPZpeFJlANjr8G8ohX5gK
 J7R73UKZ9F2WqPFEeoizCcsqPJtdTH3WBLzT4mxl4UP7zMxpwxemQfsT2HjIX1Dt7NU64HsdEnt
 6x1oePxqj0nT+I6h2wYB+E3ZFOcKME9aRBkbStxY+ZDw1qIIvG+RurjDjCWTumNv36ubwB0PWNe
 /lUWsA=
X-Google-Smtp-Source: AGHT+IGM9UuN6Ixs1sIL8NACSug2SQUUVxyblxGzqYvFhlPX7uYT59jMr39yoO6RCwIf1f0wFOILXKZ+Lj8MuW7dEg8=
X-Received: by 2002:a05:6e02:3c8a:b0:3df:49fa:7af5 with SMTP id
 e9e14a558f8ab-3e3354b36d0mr17914325ab.21.1753225503835; Tue, 22 Jul 2025
 16:05:03 -0700 (PDT)
MIME-Version: 1.0
References: <20250721083343.16482-1-kerneljasonxing@gmail.com>
 <20250721083343.16482-2-kerneljasonxing@gmail.com>
 <8c9e97e4-3590-49a8-940b-717deac0078d@molgen.mpg.de>
 <CAL+tcoAP7Zk7A4pzK-za+_NMoX11SGR3ubtY6R+aaywoEq_H+g@mail.gmail.com>
 <687f9d4cf0b14_2aa7cc29443@willemb.c.googlers.com.notmuch>
 <CAL+tcoC5KnTuWKxKcUqFGh-nBSF+X+RWzr=RkkK86+jY1Q20Kw@mail.gmail.com>
 <687fca7852e84_2cbf622949d@willemb.c.googlers.com.notmuch>
In-Reply-To: <687fca7852e84_2cbf622949d@willemb.c.googlers.com.notmuch>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 23 Jul 2025 07:04:27 +0800
X-Gm-Features: Ac12FXxlIdpCobXEpYuKgIInC5aDftS0FkSg-5UHsYyoMLW8D0PgDpjZEO7FH-U
Message-ID: <CAL+tcoA7W=3m2+=EGicrAkiwc2HUGTn3js=0r_gm9=z0BKR3ag@mail.gmail.com>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org, 
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com, 
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org, 
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com, 
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, 
 linux-stm32@st-md-mailman.stormreply.com, bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753225504; x=1753830304; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o7EJqvbx78jyg/AF+HgULO5h7plKJg0CprdQbemfJYI=;
 b=ePVkH3q1fUE1mBW/NJK9sG6WAnXn2KajCOtMzWSW4PwlIBB8n3qxhakcYvRzJBWW6w
 /m06tZsqgGsqSp7NG0y31Cvt5PRU8mbetFiIb0St7mAY5w3nAchKlH8ebLIkUYI45+PT
 nVBIG6nhZ07tCzEDbGYU2HRd6DpfUfMrnV+SpDVTLyKiQO3cFNjOt855JZguG4XTM6he
 wquxsISoe3LeNKCo6ZA1DctaIyNkWA7/B44L6jvEUGgec++Ut6D+y7sWznf8mo8+RQ/N
 DCUSctUXICLvTkjwWqpse4vNeMe5J/ilkhf14kuSa15aeXABjUxVFN5UriIxUOoscJKN
 zNoQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ePVkH3q1
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] stmmac: xsk: fix
 underflow of budget in zerocopy mode
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

On Wed, Jul 23, 2025 at 1:29=E2=80=AFAM Willem de Bruijn
<willemdebruijn.kernel@gmail.com> wrote:
>
> Jason Xing wrote:
> > On Tue, Jul 22, 2025 at 10:16=E2=80=AFPM Willem de Bruijn
> > <willemdebruijn.kernel@gmail.com> wrote:
> > >
> > > Jason Xing wrote:
> > > > Hi Paul,
> > > >
> > > > On Mon, Jul 21, 2025 at 4:56=E2=80=AFPM Paul Menzel <pmenzel@molgen=
.mpg.de> wrote:
> > > > >
> > > > > Dear Jason,
> > > > >
> > > > >
> > > > > Thank you for your patch.
> > > >
> > > > Thanks for your quick response and review :)
> > > >
> > > > >
> > > > > Am 21.07.25 um 10:33 schrieb Jason Xing:
> > > > > > From: Jason Xing <kernelxing@tencent.com>
> > > > > >
> > > > > > The issue can happen when the budget number of descs are consum=
ed. As
> > > > >
> > > > > Instead of =E2=80=9CThe issue=E2=80=9D, I=E2=80=99d use =E2=80=9C=
An underflow =E2=80=A6=E2=80=9D.
> > > >
> > > > Will change it.
> > > >
> > > > >
> > > > > > long as the budget is decreased to zero, it will again go into
> > > > > > while (budget-- > 0) statement and get decreased by one, so the
> > > > > > underflow issue can happen. It will lead to returning true wher=
eas the
> > > > > > expected value should be false.
> > > > >
> > > > > What is =E2=80=9Cit=E2=80=9D?
> > > >
> > > > It means 'underflow of budget' behavior.
> > >
> > > A technicality, but this is (negative) overflow.
> > >
> > > Underflow is a computation that results in a value that is too small
> > > to be represented by the given type.
> >
> > Interesting. Thanks for sharing this with me:)
> >
> > I just checked the wikipedia[1] that says " Underflow can in part be
> > regarded as negative overflow of the exponent of the floating-point
> > value.". I assume this rule can also be applied in this case? I'm
> > hesitant to send the v3 patch tomorrow with this 'negative overflow'
> > term included.
>
> My point is very pedantic. I think these cases are not underflow.
>
> But it is often called that, understandably. So choose as you see fit.

I see. Thanks for pointing that out. I will change it :)

Thanks,
Jason

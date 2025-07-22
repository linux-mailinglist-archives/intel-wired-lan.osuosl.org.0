Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E60B0E0FB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 17:53:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C902A80332;
	Tue, 22 Jul 2025 15:53:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Liwi7UmABVvy; Tue, 22 Jul 2025 15:53:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2D5C8032E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753199623;
	bh=adr5sYEO4gGv2YXAYDqrl4czLFwxUgDgxoHepLkF+Nw=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tZOTYof5a4FlG2Tuw9zEpSSstP7FxSV7Pm/ismdP7uibeH3UCBZ108QhRqyqG5vd2
	 B6EW+TBMc2yFvuH1B/MAsvvrwANg/NDgjCw+q8mY5Dt/WiV03q4OPmSmLkelzNuhih
	 1ixyTPrjx0HFzwyrjHN7Z3st5D4xhCh8rTcPo7Q3zJEmmIqxynTre268SjyEApAMCf
	 XmwzCheJyMgRaypAupxZe5mDfYUrnUNtMD/yvD5OJptT4+tpYBtiDIvAZUyTMP2WJk
	 I2fBih+EWyzMd9pHgYHaGsciyMXTORqK9OBDqDZ39BuE14VMlT4iNOisiGa9xQMGmu
	 cNZhpJh5CrNWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2D5C8032E;
	Tue, 22 Jul 2025 15:53:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B3A2E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 15:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0204C6088C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 15:53:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1mRl1m0XGtbC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 15:53:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::135; helo=mail-il1-x135.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D495C60E42
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D495C60E42
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D495C60E42
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 15:53:40 +0000 (UTC)
Received: by mail-il1-x135.google.com with SMTP id
 e9e14a558f8ab-3e2c521efddso3358405ab.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 08:53:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753199620; x=1753804420;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=adr5sYEO4gGv2YXAYDqrl4czLFwxUgDgxoHepLkF+Nw=;
 b=SeyeTYh2YXYKsTXnrPmkY0n3jBCvo3STKI7qaSqnj27ddU2MTeiFz19KIhccz8Eprr
 zmvqEG+3R2fDTYmwUnLC/8eMK5VTF0rrtAx6lmHOx7Oj7L8WJD4jsA1InfV5pJskD5I7
 fsG9G1DrjUB03RvVYwN8FH7bpDeuHaY3F0b5SyoCsKoHTGTe0d5IYkvvkyuJiHthujxR
 AOt76ZUxM1wqkrCu8F+a1n4myC/d32b9DYW/qZtLGwhKhkmBnOwIF3V1o3/kewXC3FJ3
 Rdcr9fN1SvnGrXeK17/Q+kND/CG7p2V3uQ2W6etCwEaqdzhLM6vYHDTXrHX9d5Mx4Kkw
 Cx1A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWdCFCLauoDtnrxagXnjYGOaVy4L/fLHd7uiVkXBZgF8X+AcEi8/8PZkm80US7+CPwvEtkU/yzUosmIvvyFY2s=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwR0RC5ZUV9HwQkvH2EK5sILHz9JJHkp4HkGhJ4Hatg4DSDkU83
 P0umpav2QOWeiWz7DDvZ410kVHRDIe3dTOy8Kg9C815fgEbXK2UXP1DFU6vAbELZVn1oYURlzpm
 xo4iOYDJTdLa+LtgDnZ6Am4LkpfY2pKb+C58fGdYXNw==
X-Gm-Gg: ASbGncv7fkEOH+Nb5DNL+cXKi40hXorSVD2GnqyULGosIDadIcnuiA91nkEyZC8GXrl
 0BiXFkrx0N92hSJL2oEgwBpbCEBZpImiPiEAzFU6gzjy7T5/h3xLGJJEVstfsmsFg4Hj6f6pLSS
 dtt3sTZyYvQDp20A5SGBp5a27VaHLOcqMvuLIZPGaVuKlQXXbl2EZlny7/OxhxNs4irnw7mPTnd
 Ey6Dg9mIJ/Od5Yt
X-Google-Smtp-Source: AGHT+IEJWm/iCeW2Y4moVUtuGQu6TSWVSa6lw45TSOWwh0m4HIQqc9HfG9s47AeP0XtnyGFnP1g9pMf1aTcA5QyVbwo=
X-Received: by 2002:a92:d110:0:b0:3dd:89b0:8e1b with SMTP id
 e9e14a558f8ab-3e28245d435mr236925025ab.15.1753199619608; Tue, 22 Jul 2025
 08:53:39 -0700 (PDT)
MIME-Version: 1.0
References: <20250721083343.16482-1-kerneljasonxing@gmail.com>
 <20250721083343.16482-2-kerneljasonxing@gmail.com>
 <8c9e97e4-3590-49a8-940b-717deac0078d@molgen.mpg.de>
 <CAL+tcoAP7Zk7A4pzK-za+_NMoX11SGR3ubtY6R+aaywoEq_H+g@mail.gmail.com>
 <687f9d4cf0b14_2aa7cc29443@willemb.c.googlers.com.notmuch>
In-Reply-To: <687f9d4cf0b14_2aa7cc29443@willemb.c.googlers.com.notmuch>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Tue, 22 Jul 2025 23:53:03 +0800
X-Gm-Features: Ac12FXwbckjpwxjxMK_Lfr5hlSRd7HzN5fKFdGn8nikqBlfITUYZXyaXfPGKt0A
Message-ID: <CAL+tcoC5KnTuWKxKcUqFGh-nBSF+X+RWzr=RkkK86+jY1Q20Kw@mail.gmail.com>
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
 d=gmail.com; s=20230601; t=1753199620; x=1753804420; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=adr5sYEO4gGv2YXAYDqrl4czLFwxUgDgxoHepLkF+Nw=;
 b=HimsQk3W3HoZ+26L2lWm3/ygE5e8cvF1AowuHZmZsbujD0rl3dP5KPKtHHZ7NKpSiF
 3DTT5yAJgOwc2NZTKCfIBVtkeBgaU4MiWnNPNh0j1F2Nbf+WA3+dbsNuWNu9F22yelxw
 ZkNwQ48D9au9jQoHJbkGTPmm129FuMTt7XkVCb7/xt7AJBI+zkA7HHyAlOCiHd90xaSi
 N2LzHmY0KGa39+/pFraE5TnNlBFYcPMWUyPrbE0lwtlDktQfqsONrFq0VvIpG8Ri0BGF
 NzTlfs/o69mq3uIJw7IDo7sqXuk+Y4s6GG8IfAOAToDTOS1wCpG0Ziit+TQ+bWINzJ2d
 NjZw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=HimsQk3W
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

On Tue, Jul 22, 2025 at 10:16=E2=80=AFPM Willem de Bruijn
<willemdebruijn.kernel@gmail.com> wrote:
>
> Jason Xing wrote:
> > Hi Paul,
> >
> > On Mon, Jul 21, 2025 at 4:56=E2=80=AFPM Paul Menzel <pmenzel@molgen.mpg=
.de> wrote:
> > >
> > > Dear Jason,
> > >
> > >
> > > Thank you for your patch.
> >
> > Thanks for your quick response and review :)
> >
> > >
> > > Am 21.07.25 um 10:33 schrieb Jason Xing:
> > > > From: Jason Xing <kernelxing@tencent.com>
> > > >
> > > > The issue can happen when the budget number of descs are consumed. =
As
> > >
> > > Instead of =E2=80=9CThe issue=E2=80=9D, I=E2=80=99d use =E2=80=9CAn u=
nderflow =E2=80=A6=E2=80=9D.
> >
> > Will change it.
> >
> > >
> > > > long as the budget is decreased to zero, it will again go into
> > > > while (budget-- > 0) statement and get decreased by one, so the
> > > > underflow issue can happen. It will lead to returning true whereas =
the
> > > > expected value should be false.
> > >
> > > What is =E2=80=9Cit=E2=80=9D?
> >
> > It means 'underflow of budget' behavior.
>
> A technicality, but this is (negative) overflow.
>
> Underflow is a computation that results in a value that is too small
> to be represented by the given type.

Interesting. Thanks for sharing this with me:)

I just checked the wikipedia[1] that says " Underflow can in part be
regarded as negative overflow of the exponent of the floating-point
value.". I assume this rule can also be applied in this case? I'm
hesitant to send the v3 patch tomorrow with this 'negative overflow'
term included.

[1]: https://en.wikipedia.org/wiki/Arithmetic_underflow

Thanks,
Jason

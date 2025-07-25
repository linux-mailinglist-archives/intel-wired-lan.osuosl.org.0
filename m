Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B27B11E20
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 14:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A65AB41BA8;
	Fri, 25 Jul 2025 12:08:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bOyAaXyrSrxJ; Fri, 25 Jul 2025 12:08:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 808C941BA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753445333;
	bh=TG2LtX3donk6Ed77YQCRqF6WJ6SVdooidmIVvg9rxNc=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PBoaV/VqCwDlKHvSLR9pZMoq/7odmdCdCquS3a/tVEgtS8MQqkdoianBuhnLB45OY
	 Z6dYnbcTdkVrU++v7dupSyuNVio9NJw7BNUTWmEnHYOGbcWRO+5oQ4/rulpy5DeJp/
	 g2BUSs0AdADpNqvB7Fz0aCQ3l/v0U+KVJiLW1VRAptV7cL91a1YC9LhFbxj9myaL9Z
	 5eMz+oAvXdBBDe5UYqzquZtmCxntzyqhWjehP6B4lEPE1hu5QxzVHmTx+r8QqmeDP2
	 L2xihnZ+MciBjbN3QedV4cq5lHhNoWejF9tX0Fg7q9UkGYKitl5jI5HTm3/3ngLACY
	 hJ1dwVkV1gr8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 808C941BA7;
	Fri, 25 Jul 2025 12:08:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2300A909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 12:08:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 14B8960E43
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 12:08:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id glMGDIz8q5Uu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 12:08:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::12e; helo=mail-il1-x12e.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 22FD660D77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22FD660D77
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com
 [IPv6:2607:f8b0:4864:20::12e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 22FD660D77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 12:08:50 +0000 (UTC)
Received: by mail-il1-x12e.google.com with SMTP id
 e9e14a558f8ab-3df2d8cb8d2so8629095ab.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 05:08:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753445330; x=1754050130;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TG2LtX3donk6Ed77YQCRqF6WJ6SVdooidmIVvg9rxNc=;
 b=eOCTwqGMc4ftuXodpUESlg4mayGWBRuYcpC0aZR5EuKfkAatz1y2kuOORFleb2naga
 jqXEC+ZQqxFPNIjAfSxAMiV+pvgP7d35Zmd6/ENvrpsUnHIBS4aOmufE/Gg1ZIHheyLR
 CcFdhbkTBA7JvqnObpq1NmUj4x59pqA9PB9Og61zwsIVHFAuMTgLOpohr6P95CeGrmlg
 jzj6UiVL/DS/aFOiGv8Dv5u78BjpsnLmTil9ZKpnbfe4zGt9eMtlrziNRC+l2QQ/5q7y
 LyUZ1MRcBkaPINqVJ15RvgF/7wWYjbtZaIU0Y0Jn7clrmplSb2MTjm8E3XnMoPfrWFay
 DU7g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUZ34UrOVegALAOnDTEf7nsNRY8rSuaZmMTklmu4kFonKMUspS8+0FcLO0J6m3PmQ/WVC9cFmqrADEUvW7KIn0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyFbOxyuzn+mEyDoep/H0lvtU5mQUa/BjoOUw8ATlDN1E9YtrD5
 V88GzFkcvSYj33laWamxJEQUT+uwlDkACbzIbYqbXJg4rWZ8ne5fFo7BcTtokO3H9pm4ncD8ans
 NERvCIgE5uGAhMFq5ltlYJDc5biuyJkI=
X-Gm-Gg: ASbGncvkk6WQVYnTFZGPD44H16laGhINULJbRUSw4D4zZRtheDwhaZW8/hUlWNChMYD
 0R33HaizZmK1kbA0U0y7WWiX1WbEDoEHGOWIKmQ7gOgtgLzdxvD9XzoIeff1TsReXbLPH3/ZMvI
 YfJqkqblSbUnjfksU+4NepzL/wgX2txE731vHSG243/61lYpELvCXZd6VYFlbQ/6wOo0X1I222l
 YkAGi5s1aEWVCXK
X-Google-Smtp-Source: AGHT+IFTe1aGWEP1F2o5nZ8tomsl7n6MwFk0t5nMbJXavVUgt2Ch/wAgCL0LtA8gvNir66KP4ln8muVPeiyM0kbkd5w=
X-Received: by 2002:a05:6e02:3f0e:b0:3dd:f1bb:da0b with SMTP id
 e9e14a558f8ab-3e3c527d13dmr24001305ab.7.1753445329820; Fri, 25 Jul 2025
 05:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
 <20250720091123.474-3-kerneljasonxing@gmail.com>
 <6ecfc595-04a8-42f4-b86d-fdaec793d4db@intel.com>
 <CAL+tcoBTejWSmv6XTpFqvgy4Qk4c39-OJm8Vqcwraa0cAST=sw@mail.gmail.com>
 <aINjHQU7Uwz_ZThs@soc-5CG4396X81.clients.intel.com>
In-Reply-To: <aINjHQU7Uwz_ZThs@soc-5CG4396X81.clients.intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Fri, 25 Jul 2025 20:08:13 +0800
X-Gm-Features: Ac12FXwtJZ9cIf9K60HL09QtqGDJ69_VP6hWxr5eIBL5FKMs6zgs-l1bssv_1Ug
Message-ID: <CAL+tcoD8BHkRhzqi2pcYYmYP-qaxQN9JMfEMAW6xwqvCiEpwGw@mail.gmail.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org, 
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com, 
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org, 
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com, 
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753445330; x=1754050130; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TG2LtX3donk6Ed77YQCRqF6WJ6SVdooidmIVvg9rxNc=;
 b=mrQbudgssQtZtVUAbKsuZuOMIuBO35sqor2h0cgr2F2hjbhnL1VVHlBnHgHi8NtRMi
 +kXf2Gysu1vQ1OcagWc66hNYcKEvu9IAdY3Rl4AyMpEcvuh1PXpEKbGv1mLBPq5sMicu
 DPEWP1igiXdFxJp0pxwMpBkcm8ZqlOfG5qSYbU+KU3418BvC6oIoEXmHmOMf13Au9bPt
 rmHqCqUi4FDQGx9H8vcd2nmRUyAV3W5UV/t9kYzr0f/QmFfy4n+hGrkYeS3lSidRUAuU
 Hf3Noy7VhOdWNk4I9XjKRmpJgSdKOwC6NzrvSJxS+grDQ/GRSNxdX/24oFc5JJh4ywX5
 JbQQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=mrQbudgs
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] ixgbe: xsk: resolve the
 underflow of budget in ixgbe_xmit_zc
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

On Fri, Jul 25, 2025 at 6:58=E2=80=AFPM Larysa Zaremba <larysa.zaremba@inte=
l.com> wrote:
>
> On Fri, Jul 25, 2025 at 07:18:11AM +0800, Jason Xing wrote:
> > Hi Tony,
> >
> > On Fri, Jul 25, 2025 at 4:21=E2=80=AFAM Tony Nguyen <anthony.l.nguyen@i=
ntel.com> wrote:
> > >
> > >
> > >
> > > On 7/20/2025 2:11 AM, Jason Xing wrote:
> > > > From: Jason Xing <kernelxing@tencent.com>
> > > >
> > > > Resolve the budget underflow which leads to returning true in ixgbe=
_xmit_zc
> > > > even when the budget of descs are thoroughly consumed.
> > > >
> > > > Before this patch, when the budget is decreased to zero and finishe=
s
> > > > sending the last allowed desc in ixgbe_xmit_zc, it will always turn=
 back
> > > > and enter into the while() statement to see if it should keep proce=
ssing
> > > > packets, but in the meantime it unexpectedly decreases the value ag=
ain to
> > > > 'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc =
returns
> > > > true, showing 'we complete cleaning the budget'. That also means
> > > > 'clean_complete =3D true' in ixgbe_poll.
> > > >
> > > > The true theory behind this is if that budget number of descs are c=
onsumed,
> > > > it implies that we might have more descs to be done. So we should r=
eturn
> > > > false in ixgbe_xmit_zc to tell napi poll to find another chance to =
start
> > > > polling to handle the rest of descs. On the contrary, returning tru=
e here
> > > > means job done and we know we finish all the possible descs this ti=
me and
> > > > we don't intend to start a new napi poll.
> > > >
> > > > It is apparently against our expectations. Please also see how
> > > > ixgbe_clean_tx_irq() handles the problem: it uses do..while() state=
ment
> > > > to make sure the budget can be decreased to zero at most and the un=
derflow
> > > > never happens.
> > > >
> > > > Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> > >
> > > Hi Jason,
> > >
> > > Seems like this one should be split off and go to iwl-net/net like th=
e
> > > other similar ones [1]? Also, some of the updates made to the other
> > > series apply here as well?
> >
> > The other three patches are built on top of this one. If without the
> > patch, the whole series will be warned because of build failure. I was
> > thinking we could backport this patch that will be backported to the
> > net branch after the whole series goes into the net-next branch.
> >
> > Or you expect me to cook four patches without this one first so that
> > you could easily cherry pick this one then without building conflict?
> >
> > >
> > > Thanks,
> > > Tony
> > >
> > > [1]
> > > https://lore.kernel.org/netdev/20250723142327.85187-1-kerneljasonxing=
@gmail.com/
> >
> > Regarding this one, should I send a v4 version with the current patch
> > included? And target [iwl-net/net] explicitly as well?
> >
> > I'm not sure if I follow you. Could you instruct me on how to proceed
> > next in detail?
> >
>
> What I usually do is send the fix as soon as I have it. While I prepare a=
nd test
> the series, the fix usually manages to get into the tree. Advise you do t=
he

I see, but this series is built on top of this patch, so in V2 I
should still cook these three patches based on the current patch?

> same, given you have things to change in v2, but the fix can be resent al=
most
> as it is now (just change the tree).

Got it, I will send it soon as a standalone patch.

Thanks,
Jason

>
> Tony can have a different opinion though.
>
> > Thanks,
> > Jason
> >

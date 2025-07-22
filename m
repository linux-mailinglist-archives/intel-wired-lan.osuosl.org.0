Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA30DB0CEA1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 02:13:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24A5C60B3A;
	Tue, 22 Jul 2025 00:13:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F0xhv1gWhU9W; Tue, 22 Jul 2025 00:13:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E60D60DC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753143191;
	bh=nI2QMNGgMj3J8RDFB4fygTxaPTI02cve37bjkV39hu4=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jiGTF7q4MHEYStUClTBBX8g1xMCDDaUEdh0xD+WqydeWgDtU+VQ2rosTLbVt3MUnd
	 nwpMfY8Jq184XNdNWwtD14VBNhFNezY5jV9g5+aBgJnf1PYTzLZ+yakNjEo9CeGGSL
	 AGL3y1YQt1AJBMI24RfvkXSg0I/7UWy5j9xMm6EQ8MRzFhR2kA3DmNl8HNwNNn7R1G
	 xxRsqgy7+amOh5WXXo2LYwPBzvThVF4mRBsn5GVBR+huDSnedRAZnto8qgfnbxsHoT
	 FvP0hSuNoFydB8j2LDyn2rdU46aMtnmw3q9VcysaXy5+mnEXH2N4/mkDoQCg6oBjhx
	 iRouXIQM6nKzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E60D60DC9;
	Tue, 22 Jul 2025 00:13:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E5D2A127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 00:13:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC10F84ACF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 00:13:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tOqusVvGhu4Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 00:13:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::d35; helo=mail-io1-xd35.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4910284ACE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4910284ACE
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4910284ACE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 00:13:08 +0000 (UTC)
Received: by mail-io1-xd35.google.com with SMTP id
 ca18e2360f4ac-87c070b2dfbso143267039f.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 17:13:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753143187; x=1753747987;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nI2QMNGgMj3J8RDFB4fygTxaPTI02cve37bjkV39hu4=;
 b=bOEXPfVlJ7oIuwHFQY2MAEFgMLzKxYIwPYHLnst3Okl1KGsyJhxOpHmkiIy26B3aZx
 atEX0ZRcOybTZ/jdHtU6F8RIJtXR70hzOS760FnFA0Y4eVvTULQ7ktm7ChiuTkSKvKpd
 JYRERV3Kb0tZwz3F1MIee0vup8mfAWZtQn0uictNRsHnVkegMp6iDUEQFvnZwXJqbsdI
 lSCo0qVMSYmZWpZwU6PeuxPX5SKdAhFaYKXmFA30mNsX7rxkth/NVGRDDkih6b/GO8CN
 fYqI9wO7/VzsFKjWgIZoMKhtOtPKmTMEL0OA/mTIXPxD9t/BE/ltzEZawxXuoAdObOzV
 XVSQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUITUEq1CkPHc4muymYiR0/HUhrHrF9kPL2BYu6bNqIUUi3SYteNdqfPwohb0+FK8HJ5k69/s01QVTMc8Mj9fk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyO1O8ooUyR9LeQ8GxT40jBQ1F4ECaySze1sPiNEL1JEJHL90lu
 NREqatl01jB/KehRwHNDjMvi9UsCUb6q6kOlHvksrWKF3DPxVK197D4ba2bgDixZfLXxgxciutZ
 cxUiqnC1J1FoywISGpXZF9SpkK4v78Go=
X-Gm-Gg: ASbGncvh0R93sv/EodypXF4Nqk4CUTeWe0Jt6uEjRhUIFBJVDz/QAuq+TsxRX19xb7v
 h+ht7lizYHSYalgxbl2UzGCzwDAUkmhM+mGBLcmkIGQ1alCuM+qvKAjlTfhMXm3plhzPFtmk98b
 5yFogHbImvEsdce05WWQE19ieMEKDGPgYCJKrJfJDjPgk0poAC8V/5MD3giHcQAbdYUOIlAG3/Z
 uzrQtg=
X-Google-Smtp-Source: AGHT+IHkIo1E+xz5iEr8q7c7k+6dv3JOxmpiAY/Iii9TcI5lbuWd/CS88OtlDMQETFPvj7tY1e+BLPWawYxnyx/DaCw=
X-Received: by 2002:a05:6e02:3c87:b0:3df:5333:c2ab with SMTP id
 e9e14a558f8ab-3e282e64ee3mr249275185ab.17.1753143187112; Mon, 21 Jul 2025
 17:13:07 -0700 (PDT)
MIME-Version: 1.0
References: <20250721083343.16482-1-kerneljasonxing@gmail.com>
 <20250721083343.16482-2-kerneljasonxing@gmail.com>
 <aH5exXo_BdonTfmf@mini-arch>
 <CAL+tcoB9U-YnJ7MPn7FQ4+ZsW5cgQXE3Tks-7=kGMhUE6nNprg@mail.gmail.com>
In-Reply-To: <CAL+tcoB9U-YnJ7MPn7FQ4+ZsW5cgQXE3Tks-7=kGMhUE6nNprg@mail.gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Tue, 22 Jul 2025 08:12:30 +0800
X-Gm-Features: Ac12FXwDqdw8CTdPU0GZ9MGtwXJTttOt4N3GfGIw0dI8oN7Gjar3PdzKubKY-XQ
Message-ID: <CAL+tcoDo3p52+j8hahpDVAcWF-pGPAoGY5Z_=wkn25C=eH3FNA@mail.gmail.com>
To: Stanislav Fomichev <stfomichev@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org, 
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
 d=gmail.com; s=20230601; t=1753143187; x=1753747987; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nI2QMNGgMj3J8RDFB4fygTxaPTI02cve37bjkV39hu4=;
 b=NxgdoSKVyukaN6ERrmSG6IKYkfmE3qryjGmQREPIA3M1zKlE5D8cd39Qg7cDPJEYxf
 PD6MzVCk9vw/LC8yrxf4V/YeS0mRiADGIpJV3eU5mNxB310HwIgOBSUhSep9OQYN4mr5
 kupIHspLOpezaN6k73DLq1g7WVDWkrJOZXI4aU62p40hfBgTTt2MkuoB0oJheTCuQOZI
 946eROfhlJHM8L5mD3QoIvecLiRVDUBbgOsHvoQ7ifSR5FGIdx40RPA7J8dYzapo6qlH
 paxBO6deLgJgmDgqBFOSNjYZRegfF1n+lgAP5565sHId9IkEsr7rr8Y3yGhA7DnIK0Sy
 tZNg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=NxgdoSKV
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

On Tue, Jul 22, 2025 at 7:05=E2=80=AFAM Jason Xing <kerneljasonxing@gmail.c=
om> wrote:
>
> On Mon, Jul 21, 2025 at 11:37=E2=80=AFPM Stanislav Fomichev
> <stfomichev@gmail.com> wrote:
> >
> > On 07/21, Jason Xing wrote:
> > > From: Jason Xing <kernelxing@tencent.com>
> > >
> > > The issue can happen when the budget number of descs are consumed. As
> > > long as the budget is decreased to zero, it will again go into
> > > while (budget-- > 0) statement and get decreased by one, so the
> > > underflow issue can happen. It will lead to returning true whereas th=
e
> > > expected value should be false.
> > >
> > > In this case where all the budget are used up, it means zc function
> > > should return false to let the poll run again because normally we
> > > might have more data to process.
> > >
> > > Fixes: 132c32ee5bc0 ("net: stmmac: Add TX via XDP zero-copy socket")
> > > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > > ---
> > >  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/driv=
ers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > index f350a6662880..ea5541f9e9a6 100644
> > > --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > @@ -2596,7 +2596,7 @@ static bool stmmac_xdp_xmit_zc(struct stmmac_pr=
iv *priv, u32 queue, u32 budget)
> > >
> > >       budget =3D min(budget, stmmac_tx_avail(priv, queue));
> > >
> > > -     while (budget-- > 0) {
> > > +     while (budget > 0) {
> >
> > There is a continue on line 2621.
>
> Thanks for catching this!
>
> > Should we do 'for (; budget > 0; budget--)'
> > instead? And maybe the same for ixgbe [0]?
>
> Not really. I think I can move the 'budget--' just before the
> 'continue' part. If we convert it to use 'for' loop and then we end up
> with one of 'break' statements, the budget still gets accidently
> increased by one whereas ixgbe driver even doesn't handle the desc
> this time. IIUC, it should not happen, right?

Sorry, I was totally wrong. Your suggestions work and I will revise
them as you said :)

Thanks,
Jason

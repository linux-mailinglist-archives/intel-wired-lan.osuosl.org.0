Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D69B127F2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jul 2025 02:23:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E4B2412C0;
	Sat, 26 Jul 2025 00:23:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rCUBHPdlU4b7; Sat, 26 Jul 2025 00:23:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 079FE4120D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753489381;
	bh=59Vu4UzUC/JMMQqQH2RP8veIclAnDjH6tcSPWkXla5A=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gnfudl27H7arKfWjaN6PXwDiShRj2VFk6RP4dCkd4fegR0NXg2KGYk2pWQAPAkG6l
	 GTNPvBZfupq8ynA3gytA5U4dambu8g/8pNrgDMaO5CKmf10SXQkKdOW2kKv9+OHzVn
	 nNIysjafTjFK6kPClR4ajMGNYZtxrq40Q1yTLPf4N3RQslBvfG1FKwbrAjtBmM/8EY
	 q5udbSYvw5wOEoggMgZb2Nt7yXA+JX4YIksDN1y/EdLgrbuhyQWy1a/ZxKfZ6KwoY2
	 nkf9Di1LBPX3eiLdTerS4LNPC+rT8nd/rgb2GdLCH0q3r97KZ7saFo7prSo1RBB9RX
	 XQ6KQfklJ67Aw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 079FE4120D;
	Sat, 26 Jul 2025 00:23:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BD379DA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 00:22:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2B5C83DC7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 00:22:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JYFYxjKBVBre for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Jul 2025 00:22:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::133; helo=mail-il1-x133.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B049583DA3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B049583DA3
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com
 [IPv6:2607:f8b0:4864:20::133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B049583DA3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 00:22:58 +0000 (UTC)
Received: by mail-il1-x133.google.com with SMTP id
 e9e14a558f8ab-3e2953dcaa1so9823615ab.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 17:22:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753489377; x=1754094177;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=59Vu4UzUC/JMMQqQH2RP8veIclAnDjH6tcSPWkXla5A=;
 b=ndnz0D1hECN1m5zhuVPIV6ivpyUipXoD4DfpU3msuRbVUEi9S2jlGEI/J2uFz2LWMD
 xds0EbWRm/RiWTMbHMdlCVc7lBoHgq/2FQy4pcRaXYzrldCPH9OSyOizDvWKKQ0Vfu8P
 LjxiOa8nM5JNppzkOi/iewplbuA072FBO5+ZzQfyIc5F7aD7AK6t7YT5Uw6JUf9kX3rQ
 w1wdkUDcmiWck72b14CzLayVN1u4KfKvSRpJ/ensuLOBZrYfofhBCVZuwUYiL+g1TZkZ
 iHpjNg2eOE3U1rIrnhbCWL3UvGOrcrextiasAi1rCFIaRJp+OVU0/eVDjEm9QBBT+2g8
 RmoA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWJSkk+yuam4CmZVGBI9y09KXzV2u7zGzjrvnRYSY4dlZ8tEvPLDHi1wgsRiH2IFnN9NQezq9l+m50F833rjzo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwyYkF/MiccTfft3CPjHpxfrp4VIXVcaYEzHL5iX9IyNr5scv2t
 oh/vaMTDPSjMjjoEkSLVWQzMnPZqpwSE9idnuUSHjcvSZRSfWU+kyg0VfujgGBZNsB7yJ0C2j+R
 elU31EuvGSoq2wqQ7MCZK8WCY4YdkTv4=
X-Gm-Gg: ASbGncvKzySH4+wAmtE2Foi8zIFE18wR9/CcvlJildeH3ZAGqMNUp007mOS7USCipLe
 5lUJB/trzCK6RHBDkr8BjC4enNhuiszWD1HWFBFLdOMpsiFj05j4LRcLIVX8Vp8lLnMjJtM2xa6
 uVDMLcMgfkf95cSRtKDRL4HAzbOnzkUVaLYWU7ngtNrVaQYaiERUNZtmjgtVxq+pri+dIRMJzH6
 ywpsOE=
X-Google-Smtp-Source: AGHT+IHB4NPlAjQxD6BkYXKrz60HqH1+D3z7Ld1KBDo+gdXSpJRVwQ6CWlgCZppX81Uw++0cNW5F5c2YfK9e28gzm+0=
X-Received: by 2002:a05:6e02:2681:b0:3dc:7f3b:acb1 with SMTP id
 e9e14a558f8ab-3e3c52c7ec8mr57210265ab.13.1753489377560; Fri, 25 Jul 2025
 17:22:57 -0700 (PDT)
MIME-Version: 1.0
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
 <20250720091123.474-3-kerneljasonxing@gmail.com>
 <6ecfc595-04a8-42f4-b86d-fdaec793d4db@intel.com>
 <CAL+tcoBTejWSmv6XTpFqvgy4Qk4c39-OJm8Vqcwraa0cAST=sw@mail.gmail.com>
 <aINjHQU7Uwz_ZThs@soc-5CG4396X81.clients.intel.com>
 <cae34d33-3e32-4c89-a775-df764d964c4d@intel.com>
In-Reply-To: <cae34d33-3e32-4c89-a775-df764d964c4d@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Sat, 26 Jul 2025 08:22:21 +0800
X-Gm-Features: Ac12FXxnz1RbcpICFx5PlD2qfV1XUE12aPb3sm84n5AESFoJenPD09RXgIli5V0
Message-ID: <CAL+tcoCCM2Yxy=rQHcLJmi9=Vm=4whCJbVH=EqU8hazL5XXA-A@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Larysa Zaremba <larysa.zaremba@intel.com>, przemyslaw.kitszel@intel.com, 
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
 d=gmail.com; s=20230601; t=1753489377; x=1754094177; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=59Vu4UzUC/JMMQqQH2RP8veIclAnDjH6tcSPWkXla5A=;
 b=Z1DEjr+3FRw5lYT+Y2EGISA6oPhBVMeXT0pmpZBeh5BuCUtCMVdQfNxhkwA/1/VN13
 lgkUx6uiWGpMUE19iE4PWaHsaFxCP362n+fiXN0fvjU/r0BGtH7IU+756/GLLzPOhjg1
 VclZ7Oc2d6E9eH1w94jOLLc5A6jYJtzOvH+2Hb7j6pVBygdP0FSDk7VaOkb+0uiRzDCH
 laguJjS9qSKIpz31XfQ3p/wP6g28pE33bUAJwqy0CkQ0i1+Pnlbx0eV2hSvooBZMeTWs
 8ZEBWTQfnNfSKo4LbiOXt/yW1x6I63HKT06s6reTtwK1Be3jZf+/ZrR5+1WYN9KznmvV
 cpng==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Z1DEjr+3
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

On Sat, Jul 26, 2025 at 12:54=E2=80=AFAM Tony Nguyen <anthony.l.nguyen@inte=
l.com> wrote:
>
>
>
> On 7/25/2025 3:57 AM, Larysa Zaremba wrote:
> > On Fri, Jul 25, 2025 at 07:18:11AM +0800, Jason Xing wrote:
> >> Hi Tony,
> >>
> >> On Fri, Jul 25, 2025 at 4:21=E2=80=AFAM Tony Nguyen <anthony.l.nguyen@=
intel.com> wrote:
> >>>
> >>>
> >>>
> >>> On 7/20/2025 2:11 AM, Jason Xing wrote:
> >>>> From: Jason Xing <kernelxing@tencent.com>
> >>>>
> >>>> Resolve the budget underflow which leads to returning true in ixgbe_=
xmit_zc
> >>>> even when the budget of descs are thoroughly consumed.
> >>>>
> >>>> Before this patch, when the budget is decreased to zero and finishes
> >>>> sending the last allowed desc in ixgbe_xmit_zc, it will always turn =
back
> >>>> and enter into the while() statement to see if it should keep proces=
sing
> >>>> packets, but in the meantime it unexpectedly decreases the value aga=
in to
> >>>> 'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc r=
eturns
> >>>> true, showing 'we complete cleaning the budget'. That also means
> >>>> 'clean_complete =3D true' in ixgbe_poll.
> >>>>
> >>>> The true theory behind this is if that budget number of descs are co=
nsumed,
> >>>> it implies that we might have more descs to be done. So we should re=
turn
> >>>> false in ixgbe_xmit_zc to tell napi poll to find another chance to s=
tart
> >>>> polling to handle the rest of descs. On the contrary, returning true=
 here
> >>>> means job done and we know we finish all the possible descs this tim=
e and
> >>>> we don't intend to start a new napi poll.
> >>>>
> >>>> It is apparently against our expectations. Please also see how
> >>>> ixgbe_clean_tx_irq() handles the problem: it uses do..while() statem=
ent
> >>>> to make sure the budget can be decreased to zero at most and the und=
erflow
> >>>> never happens.
> >>>>
> >>>> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> >>>
> >>> Hi Jason,
> >>>
> >>> Seems like this one should be split off and go to iwl-net/net like th=
e
> >>> other similar ones [1]? Also, some of the updates made to the other
> >>> series apply here as well?
> >>
> >> The other three patches are built on top of this one. If without the
> >> patch, the whole series will be warned because of build failure. I was
> >> thinking we could backport this patch that will be backported to the
> >> net branch after the whole series goes into the net-next branch.
> >>
> >> Or you expect me to cook four patches without this one first so that
> >> you could easily cherry pick this one then without building conflict?
> >>
> >>>
> >>> Thanks,
> >>> Tony
> >>>
> >>> [1]
> >>> https://lore.kernel.org/netdev/20250723142327.85187-1-kerneljasonxing=
@gmail.com/
> >>
> >> Regarding this one, should I send a v4 version with the current patch
> >> included? And target [iwl-net/net] explicitly as well?
> >>
> >> I'm not sure if I follow you. Could you instruct me on how to proceed
> >> next in detail?
> >>
> >
> > What I usually do is send the fix as soon as I have it. While I prepare=
 and test
> > the series, the fix usually manages to get into the tree. Advise you do=
 the
> > same, given you have things to change in v2, but the fix can be resent =
almost
> > as it is now (just change the tree).
> >
> > Tony can have a different opinion though.
>
> I agree. Normally in these situations, send the fix first and after that
> one is
> applied, the other patches can be sent.
> This patch would've fit in nice with the other series, however, as that
> one is already in process and this one can standalone. I would send this
> fix by itself.

Got it. I will leave those two fixes as they are and send this one
targetting the right branch as soon as possible today.

Thanks,
Jason

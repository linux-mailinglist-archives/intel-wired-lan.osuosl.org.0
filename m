Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1E0B12FD2
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Jul 2025 16:16:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD987611C4;
	Sun, 27 Jul 2025 14:16:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wlwkZqY1Ae81; Sun, 27 Jul 2025 14:16:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7A0B611C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753625811;
	bh=w1qV5YSbtVjT7o1D4U3/3TyCz9t1aKACYnwaTjXc0bM=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hAX+exQ3q9BWHwU7m/tNGfP6pISoabsDS563/7jh9OfkyoIsNiJfo8fOHDl+Pd66u
	 vyaR2F+ksIl+4VCmno2zmmX/RaO7QPzfR7aiKK+tGKDgSxrZYrvsJWAikXGpMa0fCT
	 jWhtn9mRxslVjSNKqEkc1ye1RgEe/8ijk7e0P++vmkDNKwDq96W0ykQDbFVMiA4fHz
	 Ggwnxt6Bya8+Ls9guAQsQ4SEbcOFYBPCAY9g54QpJlL+Rg5Z0j53497yi4E3o9BoY7
	 nah+YW8thhQwT0b/rz31/SaIZTATzIf+Ed9rrUpnT7uRa+bUlkEPL/y7QdpXXDVJV/
	 gX7mJ0nJi+Y8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7A0B611C1;
	Sun, 27 Jul 2025 14:16:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4BC021BE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 14:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D91F41190
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 14:16:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LRDqBT5mG-WU for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 14:16:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::131; helo=mail-il1-x131.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3519C40C52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3519C40C52
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com
 [IPv6:2607:f8b0:4864:20::131])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3519C40C52
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 14:16:48 +0000 (UTC)
Received: by mail-il1-x131.google.com with SMTP id
 e9e14a558f8ab-3e3d2ad9180so5244675ab.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 07:16:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753625807; x=1754230607;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=w1qV5YSbtVjT7o1D4U3/3TyCz9t1aKACYnwaTjXc0bM=;
 b=uRbZUAyj84J3WeWlTSdbLAEmhQNR3mXdGPRGOyQBaW56YYOZE9y5qB4MHX/bHiuO3o
 6XZPRq+kvCv/xh0mKc/id/qzvlxTomKMblHL7xAuigBJ+WG8ly9+sxQVmQN6oFPkuUON
 mCFNqYFw4a6ltmVcko3ehVDJL/kuO20+fU7ywPYxgk4+Yb+WvUNnJGaNzDkxa6x9TnRr
 aIpmWnVKfsBtQHflokR/NHZP/4kEIlG5iRLbV0jPNrRSBh5/ptFsK2ASLAmH78lWt9MX
 muSNuMhGDkO1sEz42VyngqwRh0sATRJa8YP/HZPjN3hub93GYoXxcXnHqjTedFa+TS4J
 VhvQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWHoWjvDvipeo2FPpPYqoGs5OWTnU690ncRoMXD01RaJ0Li1PoOS/Q1qsvGf4ZFc159KKih7+bPK5AJQ+XSKFg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxCM/5geZb9VmWkiI90prL6TKGu5rWnkf3irQaI77BeZLLcS5O8
 CV68xADDJFznT6k6/7Ej30m/L7P4wB/S6BU3Y5Edy2mMzehx4f1GigAM2Q/xSmr8HMF4YLYJwXV
 D0KvvF32tm9uZBxyWjbx40mGpkNyUp8I=
X-Gm-Gg: ASbGncuARDZzlgISijK1b+DRLvA/e34Ta+AjQkIbsPwhnccnJxLZE4CvgD8Z9Dcs1Hq
 LjwgU68emzpOKY6xaBX51re782mA7UlOosdqTeyBy2p5I5mWdSWckRsUAxjzhACSChtDwBNsUqD
 FLfoIDA6FlRJlnD6vw7f2qR9w9J3RwlDup4lXhTEQ2QX36WR8MZuhwMnpIjQBhJsFpSNREoEyIJ
 1fnow==
X-Google-Smtp-Source: AGHT+IHNWz7Ze19aP8Qn/NvNkSn04IjDbBR95MDhpBVO3zCWcdGmJDZdvPaefeS/ooBAY70nKCC8LDnwqIZvOkRc07w=
X-Received: by 2002:a05:6e02:440c:20b0:3e3:cc88:f48c with SMTP id
 e9e14a558f8ab-3e3cc88f602mr65847965ab.5.1753625807000; Sun, 27 Jul 2025
 07:16:47 -0700 (PDT)
MIME-Version: 1.0
References: <20250726070356.58183-1-kerneljasonxing@gmail.com>
 <a8eba276-afbf-456c-943d-36144877cfc0@molgen.mpg.de>
 <CAL+tcoD3zwiWsrqDQp1uhegiiFnYs8jcpFVTpuacZ_c6y9-X+Q@mail.gmail.com>
 <20250727135455.GW1367887@horms.kernel.org>
In-Reply-To: <20250727135455.GW1367887@horms.kernel.org>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Sun, 27 Jul 2025 22:16:10 +0800
X-Gm-Features: Ac12FXxBhmNmPowy6FzD5kGh5feEaT6P3fqSupxQKERh9GJapy7ZTo_vXKFwkeU
Message-ID: <CAL+tcoBUKmt5mCq4coLkbqT5Ehb+V6NFDcjOErg_8AYHG4fgcg@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, larysa.zaremba@intel.com, andrew+netdev@lunn.ch, 
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 bjorn@kernel.org, maciej.fijalkowski@intel.com, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753625807; x=1754230607; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=w1qV5YSbtVjT7o1D4U3/3TyCz9t1aKACYnwaTjXc0bM=;
 b=E6ZBKw0a8vddcXJtVBzkBal1NmABQtFSUpP3G84bleLGot9cp/13BqIOsh/W7coz0x
 TqDZPuilNjKCFaKnVRY5MRKn0Q3/UuiFdH/dJ8t2wNrnkb3bV3LnxmuOh1m+bmZGCF4Z
 tAXoRWtfCTf/SILLlvCc0eovTh6RkhifPXsqOCi15QEyKB3wbuzGnjNFoCj5KJXJVJT1
 cXzvSfLrVIqL5FfzfLECqoV9TFGuliVFI2TINK9Zc1bbSyp+zP3Ir0/lJLSoG84TqQ0e
 Vkuq+I9g3cpbegJPs2VesHwkVnpeB38CGb/geNTUJ/LRLqcv9kibL12SITbnk1i4vApZ
 J+6g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=E6ZBKw0a
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ixgbe: xsk: resolve the
 negative overflow of budget in ixgbe_xmit_zc
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

Hi Simon,

On Sun, Jul 27, 2025 at 9:55=E2=80=AFPM Simon Horman <horms@kernel.org> wro=
te:
>
> On Sun, Jul 27, 2025 at 06:06:55PM +0800, Jason Xing wrote:
> > Hi Paul,
> >
> > On Sun, Jul 27, 2025 at 4:36=E2=80=AFPM Paul Menzel <pmenzel@molgen.mpg=
.de> wrote:
> > >
> > > Dear Jason,
> > >
> > >
> > > Thank you for the improved version.
> > >
> > > Am 26.07.25 um 09:03 schrieb Jason Xing:
> > > > From: Jason Xing <kernelxing@tencent.com>
> > > >
> > > > Resolve the budget negative overflow which leads to returning true =
in
> > > > ixgbe_xmit_zc even when the budget of descs are thoroughly consumed=
.
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
> > > > to make sure the budget can be decreased to zero at most and the ne=
gative
> > > > overflow never happens.
> > > >
> > > > The patch adds 'likely' because we rarely would not hit the loop co=
dition
> > > > since the standard budget is 256.
> > > >
> > > > Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> > > > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > > > Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > > ---
> > > > Link: https://lore.kernel.org/all/20250720091123.474-3-kerneljasonx=
ing@gmail.com/
> > > > 1. use 'negative overflow' instead of 'underflow' (Willem)
> > > > 2. add reviewed-by tag (Larysa)
> > > > 3. target iwl-net branch (Larysa)
> > > > 4. add the reason why the patch adds likely() (Larysa)
> > > > ---
> > > >   drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 +++-
> > > >   1 file changed, 3 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers=
/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > > index ac58964b2f08..7b941505a9d0 100644
> > > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > > @@ -398,7 +398,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xd=
p_ring, unsigned int budget)
> > > >       dma_addr_t dma;
> > > >       u32 cmd_type;
> > > >
> > > > -     while (budget-- > 0) {
> > > > +     while (likely(budget)) {
> > > >               if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
> > > >                       work_done =3D false;
> > > >                       break;
> > > > @@ -433,6 +433,8 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xd=
p_ring, unsigned int budget)
> > > >               xdp_ring->next_to_use++;
> > > >               if (xdp_ring->next_to_use =3D=3D xdp_ring->count)
> > > >                       xdp_ring->next_to_use =3D 0;
> > > > +
> > > > +             budget--;
> > > >       }
> > > >
> > > >       if (tx_desc) {
> > >
> > > Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> > >
> > > Is this just the smallest fix, and the rewrite to the more idiomatic =
for
> > > loop going to be done in a follow-up?
> >
> > Thanks for the review. But I'm not that sure if it's worth a follow-up
> > patch. Or if anyone else also expects to see a 'for loop' version, I
> > can send a V3 patch then. I have no strong opinion either way.
>
> I think we have iterated over this enough (pun intended).

Hhh, interesting.

> If this patch is correct then lets stick with this approach.

No problem. Tomorrow I will send the 'for loop' version :)

Thanks,
Jason

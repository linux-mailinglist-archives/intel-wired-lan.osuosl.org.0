Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C304B0C135
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 12:22:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85F5F83D56;
	Mon, 21 Jul 2025 10:22:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IVZHVvOUogYq; Mon, 21 Jul 2025 10:22:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDAF883D57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753093365;
	bh=VHEm6bHDLYflRAkB3nDyc8N9yM14dw/BsI6dT8qL9b8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9fQEeriKN18zAuPqvDln0VzEqJyIsm+JTPwe6nxjiHCcp+67o/l7hI+BMwgf1G4r0
	 JbAHMSOktnBl6cDQ6Abv0yqefIamxZMBzvmP7E14XgU0N7BZ7bLehNtQtOw+9SumnY
	 84IYVnDY7H/OGv5+I97eId5/w432V/tNT8FN1XUmfkdzLD/Qu/K6YcclREjhauiqCy
	 AmB3U7g0wodtHN5EJO0XPI1PjQgQ7QdJDRu5xxYRuV3e920GW5vbPzeQatm2dWFDkr
	 txtUvX+mCgHpUQQlh2PIrRHu76UZGtxgciDYlFgfXR3M5hT00KQv4Q0uZQ1BRt75YC
	 aTecGoCB6o4GQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDAF883D57;
	Mon, 21 Jul 2025 10:22:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A66AB1F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 10:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97865608D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 10:22:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FMoYDIygHsf5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 10:22:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::d31; helo=mail-io1-xd31.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D873361488
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D873361488
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com
 [IPv6:2607:f8b0:4864:20::d31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D873361488
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 10:22:42 +0000 (UTC)
Received: by mail-io1-xd31.google.com with SMTP id
 ca18e2360f4ac-879c734f0e2so139732139f.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 03:22:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753093362; x=1753698162;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VHEm6bHDLYflRAkB3nDyc8N9yM14dw/BsI6dT8qL9b8=;
 b=GJF1Mq7cG/wMRSosEd/N8J1U7P0a2+o1mVNqOjNyUnCzOljv+/nVUBsK7gGsteDxYB
 BuXmMuxkNQXWkkUHsaat4wLUupl+LSq7R9xsEj2KzcUlxFyXGwpwJfnz07thBo8b+4hl
 oNn7a2s0vblsPfPSMCOW9V9MWwqsHnDusCOJAXEQRPd6HSXPLog9+ibv3j0FCH+rTNVp
 x/3p2+ijvaYeiY7xl2IpuufLT8YauC/3qhWv5y+L12vZvCdoa1QdiLKrVmnJexhlzno7
 KJ0I5D4IGwHQ4d/93VghAAPasi/NqAPssT8oTTsES6MYt3pho3plqufcx3dyDMGBLdDR
 S0/w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUKfwwM/JpsnaTSRefkSS5t7Z/D9U8N9GMV+v9jYLbLJMOLauT1IYXyXRbT3XqeQHayttJa8yeUN52NE1PikJY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyOorvC71p/dXsAeKwhXCGivzyPNRvn+1vpul86y1J3su4YAdRX
 1hiYNnn6THVt2X3H86vqm5zk8cTB0tI9AYLLarJZwiLy0soaTLLDwVTgXpOnONXbHG16/dvJEE/
 i+7TQEHJ7zXDEJdlgZBAfZmx9DlmXwHA=
X-Gm-Gg: ASbGnctSKSCnGxUMecIvdTCT+669Gv/eBh1nkBYMSBZlSQzaePyjOxp/ne7TZ9HnULw
 KmafC3IPP/3HN+kQpjceqzdQPPyFg7jVgf3g0ROBY8L4JmLgPdi6XC1tSQWxTYbSSpQWY3gkMPG
 6ftvji1rW+xsC8vM9qaSdF0wyxlJouTpEfjes9IGd/g2+fPQBC3Og4UdWh+nSJ7qiZnq0x753sO
 J9mDvsz1013JOlk7A==
X-Google-Smtp-Source: AGHT+IFXBPH0yx8S02iqQkJZIi4L0Jm+RaJLQnvPek++YwE2QGcqsWI+nl8r2YrcQAJo6zGNTHvEyQhndIVsVoiBNsI=
X-Received: by 2002:a05:6e02:1806:b0:3e2:9e93:b673 with SMTP id
 e9e14a558f8ab-3e29e93b68cmr100435465ab.1.1753093361694; Mon, 21 Jul 2025
 03:22:41 -0700 (PDT)
MIME-Version: 1.0
References: <20250721083343.16482-1-kerneljasonxing@gmail.com>
 <20250721083343.16482-3-kerneljasonxing@gmail.com>
 <20250721101217.GC2459@horms.kernel.org>
In-Reply-To: <20250721101217.GC2459@horms.kernel.org>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Mon, 21 Jul 2025 18:22:05 +0800
X-Gm-Features: Ac12FXxglQj0R4EkMw3SzP0qFiFwMjjIS-PnIkKo_EqhulukoCpP4A9yL3kNbVo
Message-ID: <CAL+tcoAEtRVvX5YkK980OtfaKHAf2+dw+WFR-HwPO2GO0nemyA@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
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
 d=gmail.com; s=20230601; t=1753093362; x=1753698162; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VHEm6bHDLYflRAkB3nDyc8N9yM14dw/BsI6dT8qL9b8=;
 b=c77DZUkDVWmUvMjbEklrU9cOKWzKN7RRwz5MYDbM6S4bPTrEGhhC9wAc2X4UcenHzS
 OBu794BggtT7J7EIMEOQGDofcaWIvJTtxp7LzIEjys/n9rw3JrE8FiLVYiP289XLQKcV
 nti/W4Wl2pIdRYsJ4oQXnVrNfyoXzSz+jjuDXfq3s+5DMArwn71TzOiIsum1j6X0qudF
 WgCzFbFfycGRChSQOdWb670cVDmthkVyl5EhMHijXxz07Ew+HiC0CbNDzw+XsRxhRiLk
 TrLZiCz9upR3F0xYs7NAsh+PTZUQQlSTb86u3HXKRjNFtrUWzbvoFbm3labhnKlwQp8q
 9Yog==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=c77DZUkD
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] igb: xsk: solve
 underflow of nb_pkts in zerocopy mode
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

On Mon, Jul 21, 2025 at 6:12=E2=80=AFPM Simon Horman <horms@kernel.org> wro=
te:
>
> On Mon, Jul 21, 2025 at 04:33:43PM +0800, Jason Xing wrote:
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > There is no break time in the while() loop, so every time at the end of
> > igb_xmit_zc(), underflow of nb_pkts will occur, which renders the retur=
n
> > value always false. But theoretically, the result should be set after
> > calling xsk_tx_peek_release_desc_batch(). We can take i40e_xmit_zc() as
> > a good example.
> >
> > Returning false means we're not done with transmission and we need one
> > more poll, which is exactly what igb_xmit_zc() always did before this
> > patch. After this patch, the return value depends on the nb_pkts value.
> > Two cases might happen then:
> > 1. if (nb_pkts < budget), it means we process all the possible data, so
> >    return true and no more necessary poll will be triggered because of
> >    this.
> > 2. if (nb_pkts =3D=3D budget), it means we might have more data, so ret=
urn
> >    false to let another poll run again.
> >
> > Fixes: f8e284a02afc ("igb: Add AF_XDP zero-copy Tx support")
> > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > ---
> >  drivers/net/ethernet/intel/igb/igb_xsk.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/eth=
ernet/intel/igb/igb_xsk.c
> > index 5cf67ba29269..243f4246fee8 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > @@ -482,7 +482,7 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct x=
sk_buff_pool *xsk_pool)
> >       if (!nb_pkts)
> >               return true;
> >
> > -     while (nb_pkts-- > 0) {
> > +     while (i < nb_pkts) {
>
> Hi Jason,
>
> FWIIW, I think using a for loop is a more idiomatic way
> of handling the relationship between i, nb_pkts, and
> the iterations of this loop.

Sure, I can turn it into 'for (i =3D 0; i < nb_pkts; i++)' in the next vers=
ion.

Thanks,
Jason

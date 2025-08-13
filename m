Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEE1B248B1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 13:45:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 225A560892;
	Wed, 13 Aug 2025 11:45:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fLejDGPglPka; Wed, 13 Aug 2025 11:45:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49182608AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755085506;
	bh=gUhWu7vD3crqHUMbzM2VV1c4jy08jvkD/8PH3CnbVQQ=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AV190JuMNTGnby+7aPHy+HbbVx2KGtHqQVg/GUc3QLHXNYciIfnSTeIp8fDWB0x9L
	 I0sEI2z78AERo5EnfLMtI22VtFfqH2JqHP6UnrKyZvzZRoopRtVHLw6uNYkT7h5gBv
	 7ZAuENYT67PuAkqW0pHhHCA2EgwnH85h6IkPOe4C+TKojpaWw3ECRN2xFHx1rel60Z
	 K+x6IDSFXR8goTquewiD/5Ba8crdbVC8afwkvn6o5rv8QwKfeNP2jwv1glY2+fKmzc
	 D6JrtPMUmk3riVM3wN6tKdj1QN0sx0rrkjKw8llUIMZ+FMxI4/2DokQR0Gvr1SRTcc
	 nYx05qJAgHO2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49182608AA;
	Wed, 13 Aug 2025 11:45:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B8401C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 11:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 31A2F60859
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 11:45:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MI1xR-29t62Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 11:45:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::d34; helo=mail-io1-xd34.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 232EA60662
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 232EA60662
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com
 [IPv6:2607:f8b0:4864:20::d34])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 232EA60662
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 11:45:02 +0000 (UTC)
Received: by mail-io1-xd34.google.com with SMTP id
 ca18e2360f4ac-883ee958891so175987039f.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 04:45:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755085502; x=1755690302;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gUhWu7vD3crqHUMbzM2VV1c4jy08jvkD/8PH3CnbVQQ=;
 b=H6Gw7oSIDXgqB1SAZw40t2XZ9seDPmzIOpS4lJCM29I5kDQb4nc/RGpG69/fXbaS4k
 u/hSJRB7KPpsUKhzmoaRIiLCabemMEixGygeizLoejEs+D5iAXs2zvT0+iwbDZk2yMQY
 hR/35Y8e5Mc0mnngsa1XTBQWCB8UTN6+4ZN3F2id/7YIFx4JNXg+6eUZnRw8KYTOVgYg
 woVHYYtvRU/OD2HBECIP8s3Wkji7UX7PLxSbrH8CZ7kt6wHjRsSc+fAbSOK6telHLCEw
 dsrcN5vdLkEGswsDcNCR9WNxKi6+hDZvAZ4me0NLiwqKI8FRwpaerSP5NCVJmQ+/I+98
 6GUQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXs986ibQPElUwCT7HM+qpkmUR8OTkgfqJqFNkK45HH7CPq0TR7A8dBcRzWbV5CvITK+/N4kHpwPafL8k759S0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwoHRz0qj0jtZxlqPWiG6ZhehWLvUZhr1ci9HsJxH7f38CLwRjs
 ZIbw52j+/LZj+4lC6EqJz0JdH7pqpWmoh+UaErmSAMv03UvTa7LJp/Fu6gw5gTBgsgU6rxbbUwW
 8OEv/JaYwtxcBifPy12WS0u/z04xL+3k=
X-Gm-Gg: ASbGncuu39lqbrZ1Lt3ECITjMMyeYVgxIIzSTYnZyuj+ixJGTgedc98Jx66cLg77nqD
 9JXYxhqcA3ODcm/pchn841NQBG3K66tji97jzDJJgqbr71tDyuxEzxfXPLhybvQ9cBwYRmUnUdV
 lyXGcfCJ1BF5ViYsf66Cew0/YALAdq2LXSXIdaSxNFD8xZKAc8a0y9NV3IRA3jr1Hy4okeGkgpJ
 aPmwu4=
X-Google-Smtp-Source: AGHT+IEMleh6MlTZE63lr0ZMsSsNEyZkVbztB1HEuYFg2Vh/3kj9JVLr26YLuI07w46MyxabiEU8JlG8pYjoegndrhk=
X-Received: by 2002:a05:6602:6d05:b0:861:6f49:626 with SMTP id
 ca18e2360f4ac-88429657518mr501915039f.6.1755085501945; Wed, 13 Aug 2025
 04:45:01 -0700 (PDT)
MIME-Version: 1.0
References: <20250812075504.60498-1-kerneljasonxing@gmail.com>
 <20250812075504.60498-3-kerneljasonxing@gmail.com>
 <IA3PR11MB89869A1D876059D6EBCB64E0E52AA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89869A1D876059D6EBCB64E0E52AA@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 13 Aug 2025 19:44:25 +0800
X-Gm-Features: Ac12FXxtntZrEczNCaQP-bA796Yt2hGBzgWpRgmXZA45z6JGpss5pVtvJfdGWqQ
Message-ID: <CAL+tcoDHgcr+fapRxVZMoefi+PujENenYSr+e-Dd=Tb=jJP03w@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, 
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "horms@kernel.org" <horms@kernel.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "sdf@fomichev.me" <sdf@fomichev.me>, 
 "Zaremba, Larysa" <larysa.zaremba@intel.com>, 
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1755085502; x=1755690302; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gUhWu7vD3crqHUMbzM2VV1c4jy08jvkD/8PH3CnbVQQ=;
 b=JdATxjKUTK80tJK3X4SdPVR/yTCG6rDJItF6aIEBlsVRtp08CWHACL86sCwcg4Q1ZR
 6n5NpjXXVcnwSYx8s3i1yrzpcHmOLLWVHEjLtgTUgODFPXDkYOZP1G5j6aLSOmOPrC5a
 G+sONpofTndHYEkWWq+Zne40RZwqK4/74zz3JwTSwobe07D3mHfH2b/rqmNZ/mXcgNVK
 Y0hlFnRpEPxXrWFd93hducUwKg44I1SZTc2YSzsHMaajEnclXseWFirc2pMWwVwvWBaC
 tZMXdNNkpj9LnCFEq4lvwkGr3JlqSjJcsH0MR/poW/dKINof+qPoEGbikAo9gwA3MQZF
 Z7Qg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=JdATxjKU
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] ixgbe: xsk: use
 ixgbe_desc_unused as the budget in ixgbe_xmit_zc
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

On Wed, Aug 13, 2025 at 7:14=E2=80=AFPM Loktionov, Aleksandr
<aleksandr.loktionov@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Jason Xing
> > Sent: Tuesday, August 12, 2025 9:55 AM
> > To: davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> > pabeni@redhat.com; horms@kernel.org; andrew+netdev@lunn.ch; Nguyen,
> > Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; sdf@fomichev.me; Zaremba, Larysa
> > <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Jason
> > Xing <kernelxing@tencent.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/3] ixgbe: xsk: use
> > ixgbe_desc_unused as the budget in ixgbe_xmit_zc
> >
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > - Adjust ixgbe_desc_unused as the budget value.
> > - Avoid checking desc_unused over and over again in the loop.
> >
> > The patch makes ixgbe follow i40e driver that was done in commit
> > 1fd972ebe523 ("i40e: move check of full Tx ring to outside of send
> > loop").
> > [ Note that the above i40e patch has problem when
> > ixgbe_desc_unused(tx_ring)
> > returns zero. The zero value as the budget value means we don't have
> > any
> > possible descs to be sent, so it should return true instead to tell
> > the
> > napi poll not to launch another poll to handle tx packets. Even
> > though
> > that patch behaves correctly by returning true in this case, it
> > happens
> > because of the unexpected underflow of the budget. Taking the
> > current
> > version of i40e_xmit_zc() as an example, it returns true as
> > expected. ]
> > Hence, this patch adds a standalone if statement of zero budget in
> > front
> > of ixgbe_xmit_zc() as explained before.
> >
> > Use ixgbe_desc_unused to replace the original fixed budget with the
> > number
> > of available slots in the Tx ring. It can gain some performance.
> You state =E2=80=9CIt can gain some performance=E2=80=9D but provide no n=
umbers
> (before/after metrics, hardware, workload, methodology).
> The https://www.kernel.org/doc/html/latest/process/submitting-patches.htm=
l
> ask to quantify optimizations with measurements and discuss trade=E2=80=
=91offs.

Based on my understanding of performance, there are two kinds: 1) it
can save some cycles and indeed reduce the time but cannot be easily
observed, 2) it can be directly shown through various tests. The whole
series belongs to the former due to limited tests. We cannot deny the
optimization even though we cannot see it from the numbers but we can
conclude it from the theory.

As the official doc requires us to do so, I will remove all the
related words to avoid further confusion in V3. Thanks for sharing it
with me.

>
> >
> If the change addresses a behavioral bug (e.g., incorrect NAPI completion=
 behavior when budget is zero),
> add Fixes: <sha1> ("commit subject") to help backporting and tracking.

Well, it's not a bugfix. I just pointed out that the i40e patch that
has a bug was overwritten/buried by another patch :)

Thanks,
Jason

>
> > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > ---
> > In this version, I keep it as is (please see the following link)
> > https://lore.kernel.org/intel-wired-
> > lan/CAL+tcoAUW_J62aw3aGBru+0GmaTjoom1qu8Y=3DaiSc9EGU09Nww@mail.gmail.c
> > om/
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 13 +++++--------
> >  1 file changed, 5 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > index a463c5ac9c7c..f3d3f5c1cdc7 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > @@ -393,17 +393,14 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring
> > *xdp_ring, unsigned int budget)
> >       struct xsk_buff_pool *pool =3D xdp_ring->xsk_pool;
> >       union ixgbe_adv_tx_desc *tx_desc =3D NULL;
> >       struct ixgbe_tx_buffer *tx_bi;
> > -     bool work_done =3D true;
> >       struct xdp_desc desc;
> >       dma_addr_t dma;
> >       u32 cmd_type;
> >
> > -     while (likely(budget)) {
> > -             if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
> > -                     work_done =3D false;
> > -                     break;
> > -             }
> > +     if (!budget)
> > +             return true;
> >
> > +     while (likely(budget)) {
> >               if (!netif_carrier_ok(xdp_ring->netdev))
> >                       break;
> >
> > @@ -442,7 +439,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring
> > *xdp_ring, unsigned int budget)
> >               xsk_tx_release(pool);
> >       }
> >
> > -     return !!budget && work_done;
> > +     return !!budget;
> >  }
> >
> >  static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
> > @@ -505,7 +502,7 @@ bool ixgbe_clean_xdp_tx_irq(struct
> > ixgbe_q_vector *q_vector,
> >       if (xsk_uses_need_wakeup(pool))
> >               xsk_set_tx_need_wakeup(pool);
> >
> > -     return ixgbe_xmit_zc(tx_ring, q_vector->tx.work_limit);
> > +     return ixgbe_xmit_zc(tx_ring, ixgbe_desc_unused(tx_ring));
> >  }
> >
> >  int ixgbe_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> > --
> > 2.41.3
>

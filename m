Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B5BB11E60
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 14:21:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8F9541456;
	Fri, 25 Jul 2025 12:21:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lCeM8-NXxpuQ; Fri, 25 Jul 2025 12:21:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 205C841484
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753446103;
	bh=W13LH+UK8D4i4jKHiisS0BChwj6oA7twJsq3FXAduDw=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C/upSzQ7k2C1SKagPojs2ZXy6Kr5c/ABYwjlkA22XUfmw/C4ltyxd1uXOwnnDFh9W
	 yn+R8twzpKXnASEKm+fi4EPzSkXfaQ8P6cOMkQyWCZeR7bG+DTCO4jTbvroxUCjD9e
	 OBCPq5Tk1ukBAdHjN4s4w9BuZOTYxWnLrX45u9Ib9kRGoK850Lo8EyoZbnNfQJHG+G
	 du5D9qYzjmAIXQyJn/FA3UtYHwN86k2o/GvDJq0RmZCZTA8hcCXBdkEKV85Hy6XIq5
	 yg/1huK8ePtA4tOPTq1VB/Snku4Cpn5SJktGkLouW4ARdWt+3O9lohoJIAlQI4BCTz
	 TYOUVIsSCjqgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 205C841484;
	Fri, 25 Jul 2025 12:21:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 63664177
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 12:21:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 49A8183CFB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 12:21:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s1UOvFeF4Ihb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 12:21:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::131; helo=mail-il1-x131.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7AFF983CFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AFF983CFA
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com
 [IPv6:2607:f8b0:4864:20::131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AFF983CFA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 12:21:40 +0000 (UTC)
Received: by mail-il1-x131.google.com with SMTP id
 e9e14a558f8ab-3e2c521efddso20067345ab.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 05:21:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753446099; x=1754050899;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=W13LH+UK8D4i4jKHiisS0BChwj6oA7twJsq3FXAduDw=;
 b=bMWFngzyjEoW2CLgvVzASocrfLw2GJNJMdkSbH0ncz2NlLwHqNjlSQj0IsgLb5cBAd
 ezMX1b9s3h4GivsRTu6hzDZ6LqElMFXSdpgLQpmr1qcPROmizj/a0pIRONxYEnYia/dZ
 RbwLagTKfY/6GdMPxp5Appa9HR7Als/G9SICKJKJmMxn/hpseG1wmxys3AGJTsrtIrrO
 NjengIqwKsY7dHVkOWxykw9tmS8yDoqadrB7rpXXSUOgkYAJ2aWvbSrNFUXAN0QfMmp1
 iICjZiHbCuzJxqJwO+G27gJWk6QRtiOKWQ6DlMbVspR8FgT/RSnryrn250cbuJ9O8NVD
 kceA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUp9XCk2tl21Mgn74XZ/4cns7TvSRubEylJeBZd73hxz1Tn7dgI3QXT6P6M3lB5t3yXTtDzasfYPusPa0qW6/8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxNxAHkcp7WGxBiZHDVYfqS1ltGyHtpxtutLo1ZbMY/XygjY92+
 vgpAYyo52YDw3oRd0OqvEJ3S40ulADd00jM8NVD4jr5TvXmn1GkCxQcXZooeZjgVj8J++/OZwz2
 VlncJ+n/f3umOgZInwEQiDiGfSJ5b9pw=
X-Gm-Gg: ASbGncuy/+yEY7sYZPidkUXMargAqxyW319P1BWhSVKTw4D9eYjD3opgnuLq8nwOnTf
 aKJ5rYo0QO0IQda3v32jcaE6hF+bE4fhE2s76V/XpqBuUDmSH0iQSF+7OCaAv9m1jQ7mAdVKTt5
 RuRv4V+8TGRBhnVGvnyE4+aLyVkUKnC5gtQP/2EPNbGUqVqYD3/ZFUASijnSSF3sQ82+K9Fhvmb
 fHorA==
X-Google-Smtp-Source: AGHT+IEPIShuk+mVCS1GaQLe/6O7xiKmk84XLA/bOK+4kE+w2xf49d8oU58Vp8hWb5S0e5KbfWFQJv2soLssESkheIQ=
X-Received: by 2002:a05:6e02:3f03:b0:3e2:dc2e:85d8 with SMTP id
 e9e14a558f8ab-3e3c5377a21mr22661995ab.19.1753446099355; Fri, 25 Jul 2025
 05:21:39 -0700 (PDT)
MIME-Version: 1.0
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
 <20250720091123.474-4-kerneljasonxing@gmail.com>
 <aINSDD1BezlEn_gM@soc-5CG4396X81.clients.intel.com>
In-Reply-To: <aINSDD1BezlEn_gM@soc-5CG4396X81.clients.intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Fri, 25 Jul 2025 20:21:03 +0800
X-Gm-Features: Ac12FXwsLiHwfDK_OwTHMCzcEIzX9OGtl7zZ6hoqgP_leACZAesBwzcjUmkIDzo
Message-ID: <CAL+tcoAUW_J62aw3aGBru+0GmaTjoom1qu8Y=aiSc9EGU09Nww@mail.gmail.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
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
 d=gmail.com; s=20230601; t=1753446099; x=1754050899; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W13LH+UK8D4i4jKHiisS0BChwj6oA7twJsq3FXAduDw=;
 b=Es+DqxxIlrwzHqHqRaMMxvzUTYM2jGlGVhXBHmlZtwT3p27i8nnXFedI19hJMicyd6
 cB6QdRTmo7q8dUtEcR44gYwofEWmCRJ5P3vuSh0zFc9wAGpSK+/GpMFsXKYHw2a4l0Ir
 58CoaBDQxLq7yTXDNNiYpv/8nhrlO3wMjDwYZKHlsgJjOKlFbzK11qizHf9NlTwVSgf1
 d0VUKWjvDrE5ferpBuEWVi4uXxkoQ07wYMOzKmilBw1Qp+7WC7hOjKcEH2hqdjuAnNeH
 6L1iLtcXM8WtZHir8d1bJusPhq4KaV+xwoOeezW3JhtaC5vyaAOBZlfI2uaBbv0gI+Y7
 LCRw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Es+DqxxI
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] ixgbe: xsk: use
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

On Fri, Jul 25, 2025 at 5:45=E2=80=AFPM Larysa Zaremba <larysa.zaremba@inte=
l.com> wrote:
>
> On Sun, Jul 20, 2025 at 05:11:21PM +0800, Jason Xing wrote:
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > - Adjust ixgbe_desc_unused as the budget value.
> > - Avoid checking desc_unused over and over again in the loop.
> >
> > The patch makes ixgbe follow i40e driver that was done in commit
> > 1fd972ebe523 ("i40e: move check of full Tx ring to outside of send loop=
").
> > [ Note that the above i40e patch has problem when ixgbe_desc_unused(tx_=
ring)
> > returns zero. The zero value as the budget value means we don't have an=
y
> > possible descs to be sent, so it should return true instead to tell the
> > napi poll not to launch another poll to handle tx packets.
>
> I do not think such reasoning is correct. If you look at the current matu=
re
> implementation in i40e and ice, it always returns (nb_pkts < budget), so =
when
> the budget is `0`, the napi will always be rescheduled. Zero unused descr=
iptors

Sorry, I'm afraid I don't think so. In ice_xmit_zc(), if the budget is
zero, it will return true because of the following codes:
nb_pkts =3D xsk_tx_peek_release_desc_batch(xsk_pool, budget);
if (!nb_pkts)
        return true;

Supposing there is no single desc in the tx ring, the budget will
always be zero even when the napi poll is triggered.

Thanks,
Jason

> means that the entire ring is held by HW, so it makes sense to retry to
> reclaim some resources ASAP. Also, zero unused normal descriptors does no=
t mean
> there is no UMEM descriptors to process.
>
> Please, remove the following lines and the patch should be fine:
>
> +     if (!budget)
> +             return true;
>
> > Even though
> > that patch behaves correctly by returning true in this case, it happens
> > because of the unexpected underflow of the budget. Taking the current
> > version of i40e_xmit_zc() as an example, it returns true as expected. ]
> > Hence, this patch adds a standalone if statement of zero budget in fron=
t
> > of ixgbe_xmit_zc() as explained before.
> >
> > Use ixgbe_desc_unused to replace the original fixed budget with the num=
ber
> > of available slots in the Tx ring. It can gain some performance.
> >
> > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 13 +++++--------
> >  1 file changed, 5 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net=
/ethernet/intel/ixgbe/ixgbe_xsk.c
> > index a463c5ac9c7c..f3d3f5c1cdc7 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > @@ -393,17 +393,14 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_=
ring, unsigned int budget)
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
> > @@ -442,7 +439,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ri=
ng, unsigned int budget)
> >               xsk_tx_release(pool);
> >       }
> >
> > -     return !!budget && work_done;
> > +     return !!budget;
> >  }
> >
> >  static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
> > @@ -505,7 +502,7 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *=
q_vector,
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
> >
> >

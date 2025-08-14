Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF275B25860
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Aug 2025 02:34:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C6A742BC1;
	Thu, 14 Aug 2025 00:34:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PhAN2IFHJ7G6; Thu, 14 Aug 2025 00:34:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B92242BC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755131642;
	bh=YWRL0yvRLw+HWZc5+rldo2UC0zZtFic0t8vaTUjoURc=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rz/ZuybGRlmXUwuZZa1IjS3n16kestxfggrUwhYDUulAF4pz+FsNGPEOCDsX+4qJr
	 2/Mu8hXuiyyPFszVoHso+nxULsieHTliRrmfL5m+fVtwxQNZwP0FRe8oO4BrjedNXl
	 p9K2g9MVpox25/b7MxKXR1JJAZ2Eg5h2tpuGSa6s5PUqF7P/0D80EHklPRrIA/md52
	 ngZ+ELV8cUoAvzR1K33omfrcACQDmFfSUqx8y8RiFwV6c1yhsVjvRtlvgPzmlGIzxj
	 GmjdHsYyElM2JRDi0K2fz7TqfhstKzdiIcS1AeKTxSXMp2hMIEA7TgZktq4oEYVZt7
	 KG71Qt4oYmKMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B92242BC2;
	Thu, 14 Aug 2025 00:34:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 08F231B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 00:34:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE7CD4011D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 00:33:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bE7d1GUn_Cq3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Aug 2025 00:33:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::12f; helo=mail-il1-x12f.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C92A440B1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C92A440B1A
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C92A440B1A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 00:33:58 +0000 (UTC)
Received: by mail-il1-x12f.google.com with SMTP id
 e9e14a558f8ab-3e570045e05so3765945ab.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 17:33:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755131637; x=1755736437;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YWRL0yvRLw+HWZc5+rldo2UC0zZtFic0t8vaTUjoURc=;
 b=HjCilTKQI/0p1pHB5WTIp/BMalysTd+soDfkqq1G27qL/FkyuMzuaBfbc76RZB4Ysn
 XSR6wseM/iP07qDJEeYh7GOxc+wOWYwOdNupRWWI5M6J4e6tAxt5cAjLrIeo/3Nyhq7V
 8Z86j4ZKjKjhj542+s4Tzz11sMW6rdUZ1+62yQBigMq0N7I5EdUcVejNi4xBiud3VR6m
 E9f+frH84MvpARU6EiftAogEhueTJnGs/f7tn+cCGER8GygyJCsc2nvhIHKVEVzrxejj
 arc4Oa/dA6EREj8UbMfLgsyVUOL72siUyM+rQfWHnpRn+UduHzPNkxCgTVfBd4DzKqik
 OPZQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUfqbft45mHtGyYu28BXaF2DjOpfG7YM5JqXZ0TEus+FuEjkS+gbFUIfQqVXmgj8gBBAuJI2lVz+qMesuTd3EU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzFabhvljuS8fNalZKLIrvsUmhzdgLT2vN4iEhN2F0bw/zzZLbc
 Yzt4f0L1dYTtqziiymlq3nmoGePm1l64LQVYXPg93LBaH36H5NIO4UsRL4uHymQ77BChiNmhWWt
 3LNQRZxhMlQRglYlYt790dyuJNms/AR4=
X-Gm-Gg: ASbGncuidsg6DGGB6suT910R/QqBd6g4V111xHHhIkJwq1MHB9PKNhbJh2MzDz2E+Wh
 jCqTZ+Y4XOvGhAjdnMdO42SqVzL4Kv8/dJo4DNLNdc2S9TsNYSCghqL0BA8axK4UIe9cYU1B6gG
 irk117rdclaL9ZrGEWuRIYeuRTDyqaeJCY4v8t6sCf2D5Y3ySLRhZwsE0d52REIYbKOxVjV+RkR
 tK1V3g=
X-Google-Smtp-Source: AGHT+IEKnF67Wj3kFQRPW4QIMVtxk50Qleoibrw/iPkN3/yxV/MJhq6yiRlxORVlyLswpy8WUlKs9z/vkKsTt8Tzp/E=
X-Received: by 2002:a05:6e02:184c:b0:3e5:4ca1:b4ba with SMTP id
 e9e14a558f8ab-3e571e5c12amr16683015ab.21.1755131637072; Wed, 13 Aug 2025
 17:33:57 -0700 (PDT)
MIME-Version: 1.0
References: <20250812075504.60498-1-kerneljasonxing@gmail.com>
 <20250812075504.60498-4-kerneljasonxing@gmail.com> <aJtg0gsR6paO22eQ@boxer>
 <CAL+tcoAGq1DhjF42qYH_yVPf9PqmMknn79WF2SncXFJmP0fDhg@mail.gmail.com>
 <aJzUqg5m3sKPWDe0@boxer>
In-Reply-To: <aJzUqg5m3sKPWDe0@boxer>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Thu, 14 Aug 2025 08:33:20 +0800
X-Gm-Features: Ac12FXwcv2p-1O0Bnl_6z-OTJunZGPvvbkLVbhfXRr0fI7LQtvzYqQsVi54a5s8
Message-ID: <CAL+tcoCC8yVS9R9bky4XatgJmX4bzrV8Pio6+jwyMSmKo0UiSw@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org, 
 pabeni@redhat.com, horms@kernel.org, andrew+netdev@lunn.ch, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, sdf@fomichev.me, 
 larysa.zaremba@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1755131637; x=1755736437; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YWRL0yvRLw+HWZc5+rldo2UC0zZtFic0t8vaTUjoURc=;
 b=f8YBYT2L3/F8Ax+eIhkXlRkWpNPQb2YvyO5I5oXMBsjEQCIwobHuhHe/4RUYXsYTe4
 i4B9vnhai7k0Wd3gUyJ4esAjDy484L3yNGrNGceEzjTpOKj0OE95sW0shYJ6WTYEdBxM
 rI5q1e7u9VLn8ZTitGerfUpSn+Xr47mrIOY+BpZs/uYFp7RXMDeu0pFlIZiSfH8CDC7M
 VRn6wXa+31DsRXQQoTH/v1DdGtTaor2PTvdL6Z9IuHazyqAi5DjyNPHy7ItL0OcBZLeu
 N/tLXY2jObwUwfnw6K/dJRmoiQLBNZZturgkMRTPhYoeKkoAcB9fxOsvSa4F7gv4sdNS
 glBw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=f8YBYT2L
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/3] ixgbe: xsk: support
 batched xsk Tx interfaces to increase performance
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

On Thu, Aug 14, 2025 at 2:09=E2=80=AFAM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> On Wed, Aug 13, 2025 at 08:34:52AM +0800, Jason Xing wrote:
> > Hi Maciej,
> >
> > On Tue, Aug 12, 2025 at 11:42=E2=80=AFPM Maciej Fijalkowski
> > <maciej.fijalkowski@intel.com> wrote:
> > >
> > > On Tue, Aug 12, 2025 at 03:55:04PM +0800, Jason Xing wrote:
> > > > From: Jason Xing <kernelxing@tencent.com>
> > > >
> > >
> > > Hi Jason,
> > >
> > > patches should be targetted at iwl-next as these are improvements, no=
t
> > > fixes.
> >
> > Oh, right.
> >
> > >
> > > > Like what i40e driver initially did in commit 3106c580fb7cf
> > > > ("i40e: Use batched xsk Tx interfaces to increase performance"), us=
e
> > > > the batched xsk feature to transmit packets.
> > > >
> > > > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > > > ---
> > > > In this version, I still choose use the current implementation. Las=
t
> > > > time at the first glance, I agreed 'i' is useless but it is not.
> > > > https://lore.kernel.org/intel-wired-lan/CAL+tcoADu-ZZewsZzGDaL7Nugx=
FTWO_Q+7WsLHs3Mx-XHjJnyg@mail.gmail.com/
> > >
> > > dare to share the performance improvement (if any, in the current for=
m)?
> >
> > I tested the whole series, sorry, no actual improvement could be seen
> > through xdpsock. Not even with the first series. :(
>
> So if i were you i would hesitate with posting it :P in the past batching

(I'm definitely not an intel nic expert but still willing to write
some codes on the driver side. I need to study more.)

> approaches always yielded performance gain.

No, I still assume no better numbers can be seen with xdpsock even
with further tweaks. Especially yesterday I saw the zerocopy mode
already hit 70% of full speed, which means in all likelihood that is
the bottleneck. That is also the answer to what you questioned in that
patch[0]. Zerocopy mode for most advanced NICs must be much better for
copy mode except for ixgbe, somehow standing for the maximum
throughput of af_xdp.

[0]: https://lore.kernel.org/all/CAL+tcoAst1xs=3DxCLykUoj1=3DVj-0LtVyK-qrcD=
yoy4mQrHgW1kg@mail.gmail.com/

>
> >
> > >
> > > also you have not mentioned in v1->v2 that you dropped the setting of
> > > xdp_zc_max_segs, which is a step in a correct path.

In v1, you asked me to give up the multi buffer function[1] so I did
it. Yesterday, I wrongly corrected myself and made me think
xdp_zc_max_segs is related to the batch process.

IIUC, you have these multi buffer patches locally or you decided to
accomplish them?

[1]: https://lore.kernel.org/intel-wired-lan/aINVrP8vrxIkxhZr@boxer/

> >
> > Oops, I blindly dropped the last patch without carefully checking it.
> > Thanks for showing me.
> >
> > I set it as four for ixgbe. I'm not that sure if there is any theory
> > behind setting this value?
>
> you're confusing two different things. xdp_zc_max_segs is related to
> multi-buffer support in xsk zc whereas you're referring to loop unrolling
> counter.

No, actually I'm confusing the idea behind the value of xdp_zc_max_segs.

>
> >
> > >
> > > > ---
> > > >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 106 +++++++++++++--=
----
> > > >  1 file changed, 72 insertions(+), 34 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers=
/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > > index f3d3f5c1cdc7..9fe2c4bf8bc5 100644
> > > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > > @@ -2,12 +2,15 @@
> > > >  /* Copyright(c) 2018 Intel Corporation. */
> > > >
> > > >  #include <linux/bpf_trace.h>
> > > > +#include <linux/unroll.h>
> > > >  #include <net/xdp_sock_drv.h>
> > > >  #include <net/xdp.h>
> > > >
> > > >  #include "ixgbe.h"
> > > >  #include "ixgbe_txrx_common.h"
> > > >
> > > > +#define PKTS_PER_BATCH 4
> > > > +
> > > >  struct xsk_buff_pool *ixgbe_xsk_pool(struct ixgbe_adapter *adapter=
,
> > > >                                    struct ixgbe_ring *ring)
> > > >  {
> > > > @@ -388,58 +391,93 @@ void ixgbe_xsk_clean_rx_ring(struct ixgbe_rin=
g *rx_ring)
> > > >       }
> > > >  }
> > > >
> > > > -static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned in=
t budget)
> > > > +static void ixgbe_set_rs_bit(struct ixgbe_ring *xdp_ring)
> > > > +{
> > > > +     u16 ntu =3D xdp_ring->next_to_use ? xdp_ring->next_to_use - 1=
 : xdp_ring->count - 1;
> > > > +     union ixgbe_adv_tx_desc *tx_desc;
> > > > +
> > > > +     tx_desc =3D IXGBE_TX_DESC(xdp_ring, ntu);
> > > > +     tx_desc->read.cmd_type_len |=3D cpu_to_le32(IXGBE_TXD_CMD_RS)=
;
> > >
> > > you have not addressed the descriptor cleaning path which makes this
> > > change rather pointless or even the driver behavior is broken.
> >
> > Are you referring to 'while (ntc !=3D ntu) {}' in
> > ixgbe_clean_xdp_tx_irq()? But I see no difference between that part
> > and the similar part 'for (i =3D 0; i < completed_frames; i++) {}' in
> > i40e_clean_xdp_tx_irq()
>
>         if (likely(!tx_ring->xdp_tx_active)) {
>                 xsk_frames =3D completed_frames;
>                 goto skip;
>         }

Thanks for the instruction. I will append a patch similar to this[2]
into the series. It's exactly the one that helps ramping up speed.

[2]:
commit 5574ff7b7b3d864556173bf822796593451a6b8c
Author: Magnus Karlsson <magnus.karlsson@intel.com>
Date:   Tue Jun 23 11:44:16 2020 +0200

    i40e: optimize AF_XDP Tx completion path

    Improve the performance of the AF_XDP zero-copy Tx completion
    path. When there are no XDP buffers being sent using XDP_TX or
    XDP_REDIRECT, we do not have go through the SW ring to clean up any
    entries since the AF_XDP path does not use these. In these cases, just
    fast forward the next-to-use counter and skip going through the SW
    ring. The limit on the maximum number of entries to complete is also
    removed since the algorithm is now O(1). To simplify the code path, the
    maximum number of entries to complete for the XDP path is therefore
    also increased from 256 to 512 (the default number of Tx HW
    descriptors). This should be fine since the completion in the XDP path
    is faster than in the SKB path that has 256 as the maximum number.

> >
> > >
> > > point of such change is to limit the interrupts raised by HW once it =
is
> > > done with sending the descriptor. you still walk the descs one-by-one=
 in
> > > ixgbe_clean_xdp_tx_irq().
> >
> > Sorry, I must be missing something important. In my view only at the
> > end of ixgbe_xmit_zc(), ixgbe always kicks the hardware through
> > ixgbe_xdp_ring_update_tail() before/after this series.
> >
> > As to 'one-by-one', I see i40e also handles like that in 'for (i =3D 0;
> > i < completed_frames; i++)' in i40e_clean_xdp_tx_irq(). Ice does this
> > in ice_clean_xdp_irq_zc()?
>
> i40e does not look up DD bit from descriptor. plus this loop you refer to
> is taken only when (see above) xdp_tx_active is not 0 (meaning that there
> have been some XDP_TX action on queue and we have to clean the buffer in =
a
> different way).

I think until now I know what to do next: implement xdp_tx_active function.

>
> in general i would advise to look at ice as i40e writes back the tx ring
> head which is used in cleaning logic. ice does not have this feature,
> neither does ixgbe.

Thanks. I will also dig into those datasheets that are all I have.

Thanks,
Jason

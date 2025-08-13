Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA51CB23D12
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 02:35:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8121583DAF;
	Wed, 13 Aug 2025 00:35:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HHtrs8bRAb-D; Wed, 13 Aug 2025 00:35:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 092A383DB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755045333;
	bh=YZE850cHcxA42tkC6rSziIjkShOIH4fUX6GWfF2o1Do=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aTS5V6rHMt0leKV+LRfij6ml4VFyvBMJLRqIah/Td/FdGx2iokT3ZJOTcKk051TnE
	 8kJKvBjeSb6WmWegnzarLGP0Hy7bn4A+yY5gT/Gq8ue7FPX+wXE7bFwGHSZwUam7K7
	 vRV7sYzyXrSz/N38Va3oW6oXUBcZ55nLhV3QAwFMt3vef3YpLAwgAUghkXDBMWd6pM
	 SZqV7MiKhZ+OHr5MQ/x2ibDPjmkBSE5duH+Ob1yD9jHb+St2ArI1/CkdHBDMQoeBLW
	 eqmRH3SJKtzTPldLSScvMuNHMhmVk1kUO/o/7USf1TsAdfrLcheE8hJTbjZaj/MMkr
	 kqsSQ7ZLhs78g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 092A383DB3;
	Wed, 13 Aug 2025 00:35:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2103B1C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 00:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 130CF83DAA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 00:35:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id umGd3cMzMwOp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 00:35:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::d2c; helo=mail-io1-xd2c.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E8C8E83DA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8C8E83DA7
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E8C8E83DA7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 00:35:29 +0000 (UTC)
Received: by mail-io1-xd2c.google.com with SMTP id
 ca18e2360f4ac-87653e3adc6so134949739f.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 17:35:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755045329; x=1755650129;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YZE850cHcxA42tkC6rSziIjkShOIH4fUX6GWfF2o1Do=;
 b=DtODmUWmQGVc2CbKokDZ/k5xeOPDe9VOOYFdOBWpnbCpKEJ8NvaM+9MXDAspeAiRZA
 hWSVZlCeo8az+1ZOpS+r09WGEB9poN6MQ9uzyRcGUgSZmtbqcmDfw7xH3haS6ArLfbka
 qyfHAlChRd2YTsa4kIUgYv6YeSROLsDkxbZ43fL1Rug8sQJbU0V2SuBq2WJC6+qsFOvF
 6JZhLJf5hT2oOgRmCWoUol0CfGQ0EDx2bib9oatlKPb4radzxR/qKLouG/3+C/gcc2tx
 I4XuKY0bQstmdBPzWMANMiQENyCY7N/+vBabZ8dpWho+V1waFmAR3zvzeJnHrDeAAg9l
 ufZQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW1ybnPykbQ7NTzeyJCtClgMOR0cMsjyzmnuZXc4mko6zCGkZ3Ed6eiRbGonQIRDryn5hu+lyO9A0uv+LytglM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxZUY77hGH6gdmmKaTr+R/+BH7uMGJNRvke/GMe98b26ZXomROU
 dGpL7USGeloBnoWlXlol6qi6HhN49KRVuJ01YzV74xp01b/fLC0iMuqigsYRtBbpNkBsYKh+jec
 PrYBrfNVqrI8mSfOH/Bv3+03tIcaQKHk=
X-Gm-Gg: ASbGncuDSWIV81bWfEwaItmydYg3JuAGP9J3mWbDXMjD+F961MvIbrBU4vbLjPH2vbL
 r6jCDjE0vV9sX/AHxdSnu6H8Gt/rMOHDoZXIfirHCDY1cOWnGZ699+rvHHH0pmnBuAjWrEtCvU0
 EzDeN/7nQgLfB+kYiGXwzRTWKjuSBZ4uUSf/FEMzPEb25jpLwN2WMB2j947EiXe6JOWl5LoQ2zM
 1o5jWY=
X-Google-Smtp-Source: AGHT+IGNhApSylNhif5bi0LBKjDMOGVL3P0LOVLl4XdVysv0taJHy+61fO/tffUMSHPhBe4SeUU+9Fwmmbe9efi93/w=
X-Received: by 2002:a05:6602:c85:b0:881:8bc8:b02d with SMTP id
 ca18e2360f4ac-8842969fd9dmr251224839f.12.1755045328762; Tue, 12 Aug 2025
 17:35:28 -0700 (PDT)
MIME-Version: 1.0
References: <20250812075504.60498-1-kerneljasonxing@gmail.com>
 <20250812075504.60498-4-kerneljasonxing@gmail.com> <aJtg0gsR6paO22eQ@boxer>
In-Reply-To: <aJtg0gsR6paO22eQ@boxer>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 13 Aug 2025 08:34:52 +0800
X-Gm-Features: Ac12FXxyDzIzfAG-vV__5xs4GvdEbej64C7rDCBw4XMjRL9S7cY6385YSYFUzc0
Message-ID: <CAL+tcoAGq1DhjF42qYH_yVPf9PqmMknn79WF2SncXFJmP0fDhg@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org, 
 pabeni@redhat.com, horms@kernel.org, andrew+netdev@lunn.ch, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, sdf@fomichev.me, 
 larysa.zaremba@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1755045329; x=1755650129; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YZE850cHcxA42tkC6rSziIjkShOIH4fUX6GWfF2o1Do=;
 b=P/x9tEYfHp0K6qiOrM0+gGA+yipwPnue8xtattODwCsWx5lByr2fqJwqinqaM+9j4I
 6VE5woAhlQ0KjFXx4mNDAmIvq/Ik2NtkCY2C3rEnbIlvzZc4tXWTWXb+5NW/XmCLjUFF
 /MypJ+SzPvP3adbSDRpEgq867VmO1gdp3qPdc+8RrD8Lc1676ae0m54jTYQtE+T7YasJ
 5soTa952LcTLRrSLEeGQWaasGLs0UTKIEQV2j21QSxeTuo1uat8YXTrEW2RV17g0bVp8
 ZHwHCLXhUr2slBoP8I3tAQkYC/wQvMQHmEwipHn6yIO77v0WbAg+b6SR1Zm7N3Kjogf0
 KAMg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=P/x9tEYf
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

Hi Maciej,

On Tue, Aug 12, 2025 at 11:42=E2=80=AFPM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> On Tue, Aug 12, 2025 at 03:55:04PM +0800, Jason Xing wrote:
> > From: Jason Xing <kernelxing@tencent.com>
> >
>
> Hi Jason,
>
> patches should be targetted at iwl-next as these are improvements, not
> fixes.

Oh, right.

>
> > Like what i40e driver initially did in commit 3106c580fb7cf
> > ("i40e: Use batched xsk Tx interfaces to increase performance"), use
> > the batched xsk feature to transmit packets.
> >
> > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > ---
> > In this version, I still choose use the current implementation. Last
> > time at the first glance, I agreed 'i' is useless but it is not.
> > https://lore.kernel.org/intel-wired-lan/CAL+tcoADu-ZZewsZzGDaL7NugxFTWO=
_Q+7WsLHs3Mx-XHjJnyg@mail.gmail.com/
>
> dare to share the performance improvement (if any, in the current form)?

I tested the whole series, sorry, no actual improvement could be seen
through xdpsock. Not even with the first series. :(

>
> also you have not mentioned in v1->v2 that you dropped the setting of
> xdp_zc_max_segs, which is a step in a correct path.

Oops, I blindly dropped the last patch without carefully checking it.
Thanks for showing me.

I set it as four for ixgbe. I'm not that sure if there is any theory
behind setting this value?

>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 106 +++++++++++++------
> >  1 file changed, 72 insertions(+), 34 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net=
/ethernet/intel/ixgbe/ixgbe_xsk.c
> > index f3d3f5c1cdc7..9fe2c4bf8bc5 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > @@ -2,12 +2,15 @@
> >  /* Copyright(c) 2018 Intel Corporation. */
> >
> >  #include <linux/bpf_trace.h>
> > +#include <linux/unroll.h>
> >  #include <net/xdp_sock_drv.h>
> >  #include <net/xdp.h>
> >
> >  #include "ixgbe.h"
> >  #include "ixgbe_txrx_common.h"
> >
> > +#define PKTS_PER_BATCH 4
> > +
> >  struct xsk_buff_pool *ixgbe_xsk_pool(struct ixgbe_adapter *adapter,
> >                                    struct ixgbe_ring *ring)
> >  {
> > @@ -388,58 +391,93 @@ void ixgbe_xsk_clean_rx_ring(struct ixgbe_ring *r=
x_ring)
> >       }
> >  }
> >
> > -static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int bu=
dget)
> > +static void ixgbe_set_rs_bit(struct ixgbe_ring *xdp_ring)
> > +{
> > +     u16 ntu =3D xdp_ring->next_to_use ? xdp_ring->next_to_use - 1 : x=
dp_ring->count - 1;
> > +     union ixgbe_adv_tx_desc *tx_desc;
> > +
> > +     tx_desc =3D IXGBE_TX_DESC(xdp_ring, ntu);
> > +     tx_desc->read.cmd_type_len |=3D cpu_to_le32(IXGBE_TXD_CMD_RS);
>
> you have not addressed the descriptor cleaning path which makes this
> change rather pointless or even the driver behavior is broken.

Are you referring to 'while (ntc !=3D ntu) {}' in
ixgbe_clean_xdp_tx_irq()? But I see no difference between that part
and the similar part 'for (i =3D 0; i < completed_frames; i++) {}' in
i40e_clean_xdp_tx_irq()

>
> point of such change is to limit the interrupts raised by HW once it is
> done with sending the descriptor. you still walk the descs one-by-one in
> ixgbe_clean_xdp_tx_irq().

Sorry, I must be missing something important. In my view only at the
end of ixgbe_xmit_zc(), ixgbe always kicks the hardware through
ixgbe_xdp_ring_update_tail() before/after this series.

As to 'one-by-one', I see i40e also handles like that in 'for (i =3D 0;
i < completed_frames; i++)' in i40e_clean_xdp_tx_irq(). Ice does this
in ice_clean_xdp_irq_zc()?

Could you shed some light on this? Thanks in advance!

Thanks,
Jason

>
> > +}
> > +
> > +static void ixgbe_xmit_pkt(struct ixgbe_ring *xdp_ring, struct xdp_des=
c *desc,
> > +                        int i)
> > +
> >  {
> >       struct xsk_buff_pool *pool =3D xdp_ring->xsk_pool;
> >       union ixgbe_adv_tx_desc *tx_desc =3D NULL;
> >       struct ixgbe_tx_buffer *tx_bi;
> > -     struct xdp_desc desc;
> >       dma_addr_t dma;
> >       u32 cmd_type;
> >
> > -     if (!budget)
> > -             return true;
> > +     dma =3D xsk_buff_raw_get_dma(pool, desc[i].addr);
> > +     xsk_buff_raw_dma_sync_for_device(pool, dma, desc[i].len);
> >
> > -     while (likely(budget)) {
> > -             if (!netif_carrier_ok(xdp_ring->netdev))
> > -                     break;
> > +     tx_bi =3D &xdp_ring->tx_buffer_info[xdp_ring->next_to_use];
> > +     tx_bi->bytecount =3D desc[i].len;
> > +     tx_bi->xdpf =3D NULL;
> > +     tx_bi->gso_segs =3D 1;
> >
> > -             if (!xsk_tx_peek_desc(pool, &desc))
> > -                     break;
> > +     tx_desc =3D IXGBE_TX_DESC(xdp_ring, xdp_ring->next_to_use);
> > +     tx_desc->read.buffer_addr =3D cpu_to_le64(dma);
> >
> > -             dma =3D xsk_buff_raw_get_dma(pool, desc.addr);
> > -             xsk_buff_raw_dma_sync_for_device(pool, dma, desc.len);
> > +     cmd_type =3D IXGBE_ADVTXD_DTYP_DATA |
> > +                IXGBE_ADVTXD_DCMD_DEXT |
> > +                IXGBE_ADVTXD_DCMD_IFCS;
> > +     cmd_type |=3D desc[i].len | IXGBE_TXD_CMD_EOP;
> > +     tx_desc->read.cmd_type_len =3D cpu_to_le32(cmd_type);
> > +     tx_desc->read.olinfo_status =3D
> > +             cpu_to_le32(desc[i].len << IXGBE_ADVTXD_PAYLEN_SHIFT);
> >
> > -             tx_bi =3D &xdp_ring->tx_buffer_info[xdp_ring->next_to_use=
];
> > -             tx_bi->bytecount =3D desc.len;
> > -             tx_bi->xdpf =3D NULL;
> > -             tx_bi->gso_segs =3D 1;
> > +     xdp_ring->next_to_use++;
> > +}
> >
> > -             tx_desc =3D IXGBE_TX_DESC(xdp_ring, xdp_ring->next_to_use=
);
> > -             tx_desc->read.buffer_addr =3D cpu_to_le64(dma);
> > +static void ixgbe_xmit_pkt_batch(struct ixgbe_ring *xdp_ring, struct x=
dp_desc *desc)
> > +{
> > +     u32 i;
> >
> > -             /* put descriptor type bits */
> > -             cmd_type =3D IXGBE_ADVTXD_DTYP_DATA |
> > -                        IXGBE_ADVTXD_DCMD_DEXT |
> > -                        IXGBE_ADVTXD_DCMD_IFCS;
> > -             cmd_type |=3D desc.len | IXGBE_TXD_CMD;
> > -             tx_desc->read.cmd_type_len =3D cpu_to_le32(cmd_type);
> > -             tx_desc->read.olinfo_status =3D
> > -                     cpu_to_le32(desc.len << IXGBE_ADVTXD_PAYLEN_SHIFT=
);
> > +     unrolled_count(PKTS_PER_BATCH)
> > +     for (i =3D 0; i < PKTS_PER_BATCH; i++)
> > +             ixgbe_xmit_pkt(xdp_ring, desc, i);
> > +}
> >
> > -             xdp_ring->next_to_use++;
> > -             if (xdp_ring->next_to_use =3D=3D xdp_ring->count)
> > -                     xdp_ring->next_to_use =3D 0;
> > +static void ixgbe_fill_tx_hw_ring(struct ixgbe_ring *xdp_ring,
> > +                               struct xdp_desc *descs, u32 nb_pkts)
> > +{
> > +     u32 batched, leftover, i;
> > +
> > +     batched =3D nb_pkts & ~(PKTS_PER_BATCH - 1);
> > +     leftover =3D nb_pkts & (PKTS_PER_BATCH - 1);
> > +     for (i =3D 0; i < batched; i +=3D PKTS_PER_BATCH)
> > +             ixgbe_xmit_pkt_batch(xdp_ring, &descs[i]);
> > +     for (i =3D batched; i < batched + leftover; i++)
> > +             ixgbe_xmit_pkt(xdp_ring, &descs[i], 0);
> > +}
> >
> > -             budget--;
> > -     }
> > +static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int bu=
dget)
> > +{
> > +     struct xdp_desc *descs =3D xdp_ring->xsk_pool->tx_descs;
> > +     u32 nb_pkts, nb_processed =3D 0;
> >
> > -     if (tx_desc) {
> > -             ixgbe_xdp_ring_update_tail(xdp_ring);
> > -             xsk_tx_release(pool);
> > +     if (!netif_carrier_ok(xdp_ring->netdev))
> > +             return true;
> > +
> > +     nb_pkts =3D xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, bu=
dget);
> > +     if (!nb_pkts)
> > +             return true;
> > +
> > +     if (xdp_ring->next_to_use + nb_pkts >=3D xdp_ring->count) {
> > +             nb_processed =3D xdp_ring->count - xdp_ring->next_to_use;
> > +             ixgbe_fill_tx_hw_ring(xdp_ring, descs, nb_processed);
> > +             xdp_ring->next_to_use =3D 0;
> >       }
> >
> > -     return !!budget;
> > +     ixgbe_fill_tx_hw_ring(xdp_ring, &descs[nb_processed], nb_pkts - n=
b_processed);
> > +
> > +     ixgbe_set_rs_bit(xdp_ring);
> > +     ixgbe_xdp_ring_update_tail(xdp_ring);
> > +
> > +     return nb_pkts < budget;
> >  }
> >
> >  static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
> > --
> > 2.41.3
> >

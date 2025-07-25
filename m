Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 918A7B11E3D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 14:12:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4235782238;
	Fri, 25 Jul 2025 12:11:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w3SgSJcjDlDj; Fri, 25 Jul 2025 12:11:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1070F83CE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753445518;
	bh=+CPgnpxfmPhs+gnt6ZDYO4+q1U78COBGpsuFjQMxKjo=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JFfk2CYMHhCmXeo2VsfgCL9mys2E3gAdSetqZUIp8QDMURSu1s74V2eHWXN4jTRZN
	 RZJr1zKWdI/KaubUbCAtzW1PvSW1886Q4xNGIAYAHNj0E0hGl9Ycp11vJR3h8GJkia
	 eV3JSK2PMR1heKpzUm1hUOUFQPy4BsPAG6opV1G7e0W7X+h7uhm+k3BvCFeoit1+Yh
	 epilGVogH02cKhVJCvo41ZXusqzLme1Nq9W6w5v5JCubgFqLUt/K86OtZA2yu68MHe
	 Eoq7wMH3oztPHxIDhNpsI9PC263SI0TkuXruneXKd0Fxz+AtIGfozqO+BHcIutPH7M
	 1EKm65+Twxgfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1070F83CE7;
	Fri, 25 Jul 2025 12:11:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 71535177
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 12:11:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57FFC6177C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 12:11:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TReseFFhs2nb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 12:11:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::133; helo=mail-il1-x133.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 98BE16176E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98BE16176E
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com
 [IPv6:2607:f8b0:4864:20::133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 98BE16176E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 12:11:55 +0000 (UTC)
Received: by mail-il1-x133.google.com with SMTP id
 e9e14a558f8ab-3e3c1d106e2so3775485ab.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 05:11:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753445514; x=1754050314;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+CPgnpxfmPhs+gnt6ZDYO4+q1U78COBGpsuFjQMxKjo=;
 b=OSElzufFR+jEXw5qTla3GddEhL4AL5mDHsOH6dhjeZo8mK9oS9sVkCT3Gn31zIj4td
 XQBXtba+LX88ubwOCCdiYkuY/EXjW6MYzuBnPqNOvaN8bXdivUVSZMSEHJDRZkWLCbQV
 sLVtyx1T2MsSKdfE3b16EBMhXjiGuj8fRtylGw9G36srtotcVXdLgu9pTAx9LB8ZmyGt
 HwQeOP522TtcHDd+Cj8oyj7GgyzSDdE1AxnsEm/l3CqJacW+vc8BcUyqlGPZiYJQYD1u
 GBG5oz5aLmcnGgAntAb0n7ELu6oREHt7HFVmnZ5ogG6LvnsWkuUo00DMd/ZJJHztakhS
 etOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUic1pg+qeOiZhkCNPRTwJJCbJTSQv4jeCNchy/hJIwPuPDsSQH8NuPLOVicoymci1v+H4bHd273S6T7CiXMG4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx6h9rue+Ya+6LTVDGW4nSGi11obBC9dZ2rrkfwBkkMO2hhPb+z
 owfY4F7qxrGcx97XJCqGiaFaA19rkiCY2/QsgxjUmcGSKCSsiogXUIG4nE1XIruUkM3hRqTvpV3
 bZZRXTuWb8IaTo7yeSDszQo5L2jqD9m0=
X-Gm-Gg: ASbGnctKIgtevQqUPFzCUsZ7QbviFNpn3pxDWIsf7H8k09Y70SsSiTqdugnWr35OUG4
 WOzLrnrQtSmCX2WheC0uY6Rfz/LuZ1e+Ew3ydbYr3Lk2fHNc+OLFerkDYm46/uXGGyeMRwMp3qF
 NHhBGE6DrB/PcgEZge2QsmiDmxebtH2IR0UTi/PE3l+pJYm4qCjDr24gh3lE3aJE9RyfrC2Etn6
 uT3MA==
X-Google-Smtp-Source: AGHT+IHkvDgSrSxVsaaYe7jXkMrGwMFeg53FXhoU7TAFU5nMzUO9QlX144tZhknqnEG2zc+3h0RKASR/5QVcg2M58cc=
X-Received: by 2002:a05:6e02:3385:b0:3dd:d995:30ec with SMTP id
 e9e14a558f8ab-3e3c52bc2e2mr26936935ab.12.1753445514394; Fri, 25 Jul 2025
 05:11:54 -0700 (PDT)
MIME-Version: 1.0
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
 <20250720091123.474-5-kerneljasonxing@gmail.com>
 <aINhqcDpvw2FM9Ia@soc-5CG4396X81.clients.intel.com>
In-Reply-To: <aINhqcDpvw2FM9Ia@soc-5CG4396X81.clients.intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Fri, 25 Jul 2025 20:11:18 +0800
X-Gm-Features: Ac12FXwy5edfAgZ8nM8Thz1nd5cFl2oaEhRyBVWnC_ZJoykfgiCMOwVvG5Oid3s
Message-ID: <CAL+tcoADu-ZZewsZzGDaL7NugxFTWO_Q+7WsLHs3Mx-XHjJnyg@mail.gmail.com>
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
 d=gmail.com; s=20230601; t=1753445514; x=1754050314; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+CPgnpxfmPhs+gnt6ZDYO4+q1U78COBGpsuFjQMxKjo=;
 b=UPVAvOGhpI3z6h/JQtRllxJMeTnwdeUyOTxUAE+saVmkDDPIgg04mL1XN5ayweWwad
 R1k/NKOMUTByzAQ+A/Sw7NqmoDOkzaQ5g45BOl/DFWB+j1ADhQAfBhzI8Dc/TFObB1pJ
 WlrT1bUoqO9SSzaQ+vH+yK/fK7U9epR2RW8l/EZeSyXwJ38+9WnMVT7S2dmLFo2iSuSg
 +rpynHl1Tc1kkKmyo3+oJYGtnlJUTb3S0hjqoZhBapw4wicejNWh6HNv99IIumeA2DGD
 XK0513bzYt3UT4XhdK73DiVFLXhptQ7mH2XpqizddBw71bK1VP+Kz+ftz/ozBtAQ2lmK
 Z7yw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=UPVAvOGh
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] ixgbe: xsk: support
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

On Fri, Jul 25, 2025 at 6:52=E2=80=AFPM Larysa Zaremba <larysa.zaremba@inte=
l.com> wrote:
>
> On Sun, Jul 20, 2025 at 05:11:22PM +0800, Jason Xing wrote:
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > Like what i40e driver initially did in commit 3106c580fb7cf
> > ("i40e: Use batched xsk Tx interfaces to increase performance"), use
> > the batched xsk feature to transmit packets.
> >
> > Signed-off-by: Jason Xing <kernelxing@tencent.com>
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
> > +}
> > +
> > +static void ixgbe_xmit_pkt(struct ixgbe_ring *xdp_ring, struct xdp_des=
c *desc,
> > +                        int i)
> > +
>
> `i` parameter seems redundant here, why not just pass desc + i as a param=
eter?

Let me resolve this :)

Thanks,
Jason

>
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
> >

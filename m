Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B272048EE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2020 07:02:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01E2288BB9;
	Tue, 23 Jun 2020 05:02:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p2+mBN42HkMj; Tue, 23 Jun 2020 05:02:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5A87D885C3;
	Tue, 23 Jun 2020 05:02:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C02DE1BF322
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 05:02:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BAE588938A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 05:02:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nj+eqb0WWYBa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2020 05:02:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com
 [209.85.221.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BE3248923C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 05:02:47 +0000 (UTC)
Received: by mail-vk1-f196.google.com with SMTP id n188so4501040vkc.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 22:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RQt+AGRJghmCR4VSGJk0DwGPgHtH5mpNDvt/7Fx7waw=;
 b=SMNlMhHZ1M88j+h7fjI9ajjdSOJpQAe9DvUKGtNkLM8oGNJeSKdh8rdQeneo1dyGBp
 QUxD7BU8yBispBN2EToR5/ZjkbBNzRizcF0npE/2imp7R4vDLLbIt9ChiCDsxmQwifnl
 ThYpeyLF9iWBmaxsS0roF65DLSZBGijAnSvQSgl/f8wOTmxVS3gFUI4UJ6njk7rB4B6+
 mfnMePg3ky70qkuQLvGO+FrUDsiYYOQFxm/GUdVq5NW475NpfueKy8231a7BiiA7uua0
 LcLm2+dgMXbCZFiJj2qMwzdKp2kjXLi9tDkFrk63dfaVqEWKBiDGmCwdWuiZD/cyr3qU
 qjnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RQt+AGRJghmCR4VSGJk0DwGPgHtH5mpNDvt/7Fx7waw=;
 b=h15JCzUqaALsOkweuYTZJ36dzC/7YVxzfAng3c+F00EDZC2LtxrKVPbVWFSWa370Vc
 wd8TvYFnP78OIVB/VbXo6Inp21sbIhyupj24TU8YnyZsESuYnC6UeqV2iXJDmnA68S05
 lh7j3esvTn+VmT5TMqmT//8HgM0nBOOiVPp+oKObRyGy8JmJyuryX5VmAYTC8yDtkaHY
 +FciYu/VzbLy3choa6a7uGnIfJVs6J3oZqhWU68Y2ED3jXMr9wCSowjCART75CThPIV0
 76ZzN9v1X+pjrhoekeaPtAKp3hC4TtILsgPBLwnMvSzY5OUuWJ0Fy791kqGg0FzsaNUr
 uwew==
X-Gm-Message-State: AOAM532hc2M7/ak8dnpGPj91lB6tM7tfgeevNuJFLTdLeMGvH3dMFMkz
 7HtlzYiVuJ4CpRrC5wbPRC8YU1TOKtjpOCHAn6U=
X-Google-Smtp-Source: ABdhPJxIl1UC64/exoJGtYvcVBbrzZVwR/ArfZ6ocjQY5EgD+XP52rdmr2i31u49pfZxDrFK4AxNQymOeAlcHFM9E9A=
X-Received: by 2002:a1f:3ac6:: with SMTP id h189mr18049467vka.16.1592888566578; 
 Mon, 22 Jun 2020 22:02:46 -0700 (PDT)
MIME-Version: 1.0
References: <1592832083-23249-1-git-send-email-magnus.karlsson@intel.com>
 <1592832083-23249-2-git-send-email-magnus.karlsson@intel.com>
 <57effc14-afed-51c8-9926-686d1cdea803@intel.com>
In-Reply-To: <57effc14-afed-51c8-9926-686d1cdea803@intel.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Tue, 23 Jun 2020 07:02:35 +0200
Message-ID: <CAJ8uoz1jNy==6qw8Yjx5C8wwHORE8RkcXmhuih0xcwnhpb=Fqg@mail.gmail.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] i40e: optimize AF_XDP Tx
 completion path
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>,
 Network Development <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 23, 2020 at 3:00 AM Samudrala, Sridhar
<sridhar.samudrala@intel.com> wrote:
>
>
>
> On 6/22/2020 6:21 AM, Magnus Karlsson wrote:
> > Improve the performance of the AF_XDP zero-copy Tx completion
> > path. When there are no XDP buffers being sent using XDP_TX or
> > XDP_REDIRECT, we do not have go through the SW ring to clean up any
> > entries since the AF_XDP path does not use these. In these cases, just
> > fast forward the next-to-use counter and skip going through the SW
> > ring. The limit on the maximum number of entries to complete is also
> > removed since the algorithm is now O(1). To simplify the code path, the
> > maximum number of entries to complete for the XDP path is therefore
> > also increased from 256 to 512 (the default number of Tx HW
> > descriptors). This should be fine since the completion in the XDP path
> > is faster than in the SKB path that has 256 as the maximum number.
> >
> > This patch provides around 4% throughput improvement for the l2fwd
> > application in xdpsock on my machine.
> >
> > Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_txrx.c |  1 +
> >   drivers/net/ethernet/intel/i40e/i40e_txrx.h |  1 +
> >   drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 34 ++++++++++++++++-------------
> >   3 files changed, 21 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > index f9555c8..0ce9d1e 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > @@ -3538,6 +3538,7 @@ static int i40e_xmit_xdp_ring(struct xdp_frame *xdpf,
> >        */
> >       smp_wmb();
> >
> > +     xdp_ring->xdp_tx_active++;
> >       i++;
> >       if (i == xdp_ring->count)
> >               i = 0;
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > index 5c25597..c16fcd9 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > @@ -371,6 +371,7 @@ struct i40e_ring {
> >       /* used in interrupt processing */
> >       u16 next_to_use;
> >       u16 next_to_clean;
> > +     u16 xdp_tx_active;
> >
> >       u8 atr_sample_rate;
> >       u8 atr_count;
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > index 7276580..c8cd6a6 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > @@ -378,6 +378,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
> >    **/
> >   static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
> >   {
> > +     unsigned int sent_frames = 0, total_bytes = 0;
> >       struct i40e_tx_desc *tx_desc = NULL;
> >       struct i40e_tx_buffer *tx_bi;
> >       bool work_done = true;
> > @@ -408,6 +409,9 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
> >                                  | I40E_TX_DESC_CMD_EOP,
> >                                  0, desc.len, 0);
> >
> > +             sent_frames++;
> > +             total_bytes += tx_bi->bytecount;
> > +
> >               xdp_ring->next_to_use++;
> >               if (xdp_ring->next_to_use == xdp_ring->count)
> >                       xdp_ring->next_to_use = 0;
> > @@ -420,6 +424,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
> >               i40e_xdp_ring_update_tail(xdp_ring);
> >
> >               xsk_umem_consume_tx_done(xdp_ring->xsk_umem);
> > +             i40e_update_tx_stats(xdp_ring, sent_frames, total_bytes);
> >       }
> >
> >       return !!budget && work_done;
> > @@ -434,6 +439,7 @@ static void i40e_clean_xdp_tx_buffer(struct i40e_ring *tx_ring,
> >                                    struct i40e_tx_buffer *tx_bi)
> >   {
> >       xdp_return_frame(tx_bi->xdpf);
> > +     tx_ring->xdp_tx_active--;
> >       dma_unmap_single(tx_ring->dev,
> >                        dma_unmap_addr(tx_bi, dma),
> >                        dma_unmap_len(tx_bi, len), DMA_TO_DEVICE);
> > @@ -450,24 +456,23 @@ static void i40e_clean_xdp_tx_buffer(struct i40e_ring *tx_ring,
> >   bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
> >                          struct i40e_ring *tx_ring, int napi_budget)
>
> napi_budget is not used. so the 3rd arg can be removed

Thanks Sridhar. You are correct on all accounts in this mail. Will fix
and send a v2.

/Magnus

> >   {
> > -     unsigned int ntc, total_bytes = 0, budget = vsi->work_limit;
> > -     u32 i, completed_frames, frames_ready, xsk_frames = 0;
> > +     unsigned int ntc, budget = vsi->work_limit;
> >       struct xdp_umem *umem = tx_ring->xsk_umem;
> > +     u32 i, completed_frames, xsk_frames = 0;
> >       u32 head_idx = i40e_get_head(tx_ring);
> >       bool work_done = true, xmit_done;
>
> work_done is no longer required
>
> >       struct i40e_tx_buffer *tx_bi;
> >
> >       if (head_idx < tx_ring->next_to_clean)
> >               head_idx += tx_ring->count;
> > -     frames_ready = head_idx - tx_ring->next_to_clean;
> > +     completed_frames = head_idx - tx_ring->next_to_clean;
> >
> > -     if (frames_ready == 0) {
> > +     if (completed_frames == 0)
> >               goto out_xmit;
> > -     } else if (frames_ready > budget) {
> > -             completed_frames = budget;
> > -             work_done = false;
> > -     } else {
> > -             completed_frames = frames_ready;
> > +
> > +     if (likely(!tx_ring->xdp_tx_active)) {
> > +             xsk_frames = completed_frames;
> > +             goto skip;
> >       }
> >
> >       ntc = tx_ring->next_to_clean;
> > @@ -475,18 +480,18 @@ bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
> >       for (i = 0; i < completed_frames; i++) {
> >               tx_bi = &tx_ring->tx_bi[ntc];
> >
> > -             if (tx_bi->xdpf)
> > +             if (tx_bi->xdpf) {
> >                       i40e_clean_xdp_tx_buffer(tx_ring, tx_bi);
> > -             else
> > +                     tx_bi->xdpf = NULL;
> > +             } else {
> >                       xsk_frames++;
> > -
> > -             tx_bi->xdpf = NULL;
> > -             total_bytes += tx_bi->bytecount;
> > +             }
> >
> >               if (++ntc >= tx_ring->count)
> >                       ntc = 0;
> >       }
> >
> > +skip:
> >       tx_ring->next_to_clean += completed_frames;
> >       if (unlikely(tx_ring->next_to_clean >= tx_ring->count))
> >               tx_ring->next_to_clean -= tx_ring->count;
> > @@ -495,7 +500,6 @@ bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
> >               xsk_umem_complete_tx(umem, xsk_frames);
> >
> >       i40e_arm_wb(tx_ring, vsi, budget);
>
> I guess budget here should be replaced with completed_frames
>
> > -     i40e_update_tx_stats(tx_ring, completed_frames, total_bytes);
> >
> >   out_xmit:
> >       if (xsk_umem_uses_need_wakeup(tx_ring->xsk_umem))
>
>
> >
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8DD999DF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 19:10:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D4D122034F;
	Thu, 22 Aug 2019 17:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dd3i1AYIDqml; Thu, 22 Aug 2019 17:10:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3841C2150A;
	Thu, 22 Aug 2019 17:10:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A7861BF407
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 17:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 25817204B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 17:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ITQyta4idKlM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 17:10:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by silver.osuosl.org (Postfix) with ESMTPS id D502F2034F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 17:10:13 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id s21so13449897ioa.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 10:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K5QxQnSR1sLnNyiZrXphHKuKyO7cUdQ482SPnqH2Tkk=;
 b=JZeE/ndS1DDujsWeRS5HHIOitkPdDWwkdvUijQTRdl10J4ikvIGwKcnxTEeiPD/glP
 8LNmLqcP32sXsX9C441KhzG+UbUW1rMLLN/J+Gl9QZMYun+cNyBouIl9LkyhucUbZiJU
 hkQt1brp14uFu+rFvfVUnXkHHSc+SX6ZADNiOz2mkVmglTPNTAYhFst+eREl/wsnPI4Z
 sdMPsgDdl9XBXRSCCXr64YinRK3h0ngVl/3Tk2xINqJr5dbUZ0s+CK5KhbF6Kp3KdAHs
 BlhhWb3VC+dtCno14FTjRi96i1hNhIJhhzfwuUlnVJZ5V1j3l6aOj+r9/phFZhDepJEn
 HRxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K5QxQnSR1sLnNyiZrXphHKuKyO7cUdQ482SPnqH2Tkk=;
 b=hji8L4oVIBugyDly5BRFYcdRb7DR5jLKWFyqxRV9cZjuiqBg1VzutF5QSFu/vRtY2I
 TugKK7ClMOLRN8psfwH+DfOrQkNPqoGD+vU+2UoZWntv41pRTCvZ4BAzAZJIwblxDXpA
 wqcAt8jeb60Cq70VvvuOPljERSnu4702MVN6sFU4BmEU8Q6Vvn5IE/PQNIegkSq8K8Xe
 nBLlGYxv/fPBF72hGP5gJ28/uFHk9L/ENNptfy2zPqC+mVyOZoIo+wYNTQKvDvhra3wB
 uQdQGubT6EvFHQh4oncPnujg8Aly5uBlcyRdwN+fLaqnBea761pU0tH3Jc/QByqTsL8F
 mcCw==
X-Gm-Message-State: APjAAAVxezXmNu74tmGlqnlcV3OopnQKrEhGfWES7tcgkQXE+7KdXKua
 b+OBU8Cups/eUqKOqromdkRNDGbMsqaxiwOGaTk=
X-Google-Smtp-Source: APXvYqznlGzO9///GQlTHFipqOf1FjBgjp6ACdYOP1geIv85E7YyB8iPkGCWyBpLM9moASJ09UVXiyq3iPmIzFQzdVE=
X-Received: by 2002:a02:810:: with SMTP id 16mr521044jac.121.1566493812923;
 Thu, 22 Aug 2019 10:10:12 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190822123045eucas1p125b6e106f0310bdb50e759ef41993a91@eucas1p1.samsung.com>
 <20190822123037.28068-1-i.maximets@samsung.com>
 <CAKgT0Uf26P53EA4m503aehq3tWCX9b3C+17TW2Ursbue9Kp=_w@mail.gmail.com>
 <7e9e426c-92eb-ebf8-2447-6c804a0c7135@samsung.com>
In-Reply-To: <7e9e426c-92eb-ebf8-2447-6c804a0c7135@samsung.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 22 Aug 2019 10:10:01 -0700
Message-ID: <CAKgT0Uetca8i4o89YHukoKTW_TTdrW8n-gKON7sXUi=U7bqrSw@mail.gmail.com>
To: Ilya Maximets <i.maximets@samsung.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: fix double clean of tx
 descriptors with xdp
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 William Tu <u9012063@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf@vger.kernel.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 22, 2019 at 9:58 AM Ilya Maximets <i.maximets@samsung.com> wrote:
>
> On 22.08.2019 19:38, Alexander Duyck wrote:
> > On Thu, Aug 22, 2019 at 5:30 AM Ilya Maximets <i.maximets@samsung.com> wrote:
> >>
> >> Tx code doesn't clear the descriptors' status after cleaning.
> >> So, if the budget is larger than number of used elems in a ring, some
> >> descriptors will be accounted twice and xsk_umem_complete_tx will move
> >> prod_tail far beyond the prod_head breaking the comletion queue ring.
> >>
> >> Fix that by limiting the number of descriptors to clean by the number
> >> of used descriptors in the tx ring.
> >>
> >> 'ixgbe_clean_xdp_tx_irq()' function refactored to look more like
> >> 'ixgbe_xsk_clean_tx_ring()' since we don't need most of the
> >> complications implemented in the regular 'ixgbe_clean_tx_irq()'
> >> and we're allowed to directly use 'next_to_clean' and 'next_to_use'
> >> indexes.
> >>
> >> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> >> Signed-off-by: Ilya Maximets <i.maximets@samsung.com>
> >> ---
> >>
> >> Version 2:
> >>   * 'ixgbe_clean_xdp_tx_irq()' refactored to look more like
> >>     'ixgbe_xsk_clean_tx_ring()'.
> >>
> >>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 34 ++++++++------------
> >>  1 file changed, 13 insertions(+), 21 deletions(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> >> index 6b609553329f..d1297660e14a 100644
> >> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> >> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> >> @@ -633,22 +633,23 @@ static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
> >>  bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
> >>                             struct ixgbe_ring *tx_ring, int napi_budget)
> >>  {
> >> +       u16 ntc = tx_ring->next_to_clean, ntu = tx_ring->next_to_use;
> >>         unsigned int total_packets = 0, total_bytes = 0;
> >> -       u32 i = tx_ring->next_to_clean, xsk_frames = 0;
> >>         unsigned int budget = q_vector->tx.work_limit;
> >>         struct xdp_umem *umem = tx_ring->xsk_umem;
> >> -       union ixgbe_adv_tx_desc *tx_desc;
> >> -       struct ixgbe_tx_buffer *tx_bi;
> >> +       u32 xsk_frames = 0;
> >>         bool xmit_done;
> >>
> >> -       tx_bi = &tx_ring->tx_buffer_info[i];
> >> -       tx_desc = IXGBE_TX_DESC(tx_ring, i);
> >> -       i -= tx_ring->count;
> >> +       while (likely(ntc != ntu && budget)) {
> >
> > I would say you can get rid of budget entirely. It was only really
> > needed for the regular Tx case where you can have multiple CPUs
> > feeding a single Tx queue and causing a stall. Since we have a 1:1
> > mapping we should never have more than the Rx budget worth of packets
> > to really process. In addition we can only make one pass through the
> > ring since the ntu value is not updated while running the loop.
>
> OK. Will remove.
>
> >
> >> +               union ixgbe_adv_tx_desc *tx_desc;
> >> +               struct ixgbe_tx_buffer *tx_bi;
> >> +
> >> +               tx_desc = IXGBE_TX_DESC(tx_ring, ntc);
> >>
> >> -       do {
> >>                 if (!(tx_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
> >>                         break;
> >>
> >> +               tx_bi = &tx_ring->tx_buffer_info[ntc];
> >
> > Please don't move this logic into the loop. We were intentionally
> > processing this outside of the loop once and then just doing the
> > increments because it is faster that way. It takes several operations
> > to compute tx_bi based on ntc, whereas just incrementing is a single
> > operation.
>
> OK.
>
> >
> >>                 total_bytes += tx_bi->bytecount;
> >>                 total_packets += tx_bi->gso_segs;
> >>
> >> @@ -659,24 +660,15 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
> >>
> >>                 tx_bi->xdpf = NULL;
> >>
> >> -               tx_bi++;
> >> -               tx_desc++;
> >> -               i++;
> >> -               if (unlikely(!i)) {
> >> -                       i -= tx_ring->count;
> >
> > So these two lines can probably just be replaced by:
> > if (unlikely(ntc == tx_ring->count)) {
> >         ntc = 0;
>
> Sure.
>
> >
> >> -                       tx_bi = tx_ring->tx_buffer_info;
> >> -                       tx_desc = IXGBE_TX_DESC(tx_ring, 0);
> >> -               }
> >> -
> >> -               /* issue prefetch for next Tx descriptor */
> >> -               prefetch(tx_desc);
> >
> > Did you just drop the prefetch?
>
> I'll keep the prefetch in v3 because, as you fairly mentioned, it's not
> related to this patch. However, I'm not sure if this prefetch makes any
> sense here, because there is only one comparison operation between the
> prefetch and the data usage:
>
>  while (ntc != ntu) {
>      if (!(tx_desc->wb.status ...
>      <...>
>      prefetch(tx_desc);
>  }

I'm not opposed to dropping the prefetch, but if you are going to do
it you should do it in a separate patch.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

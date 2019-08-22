Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 257EE9995F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 18:38:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF1338846E;
	Thu, 22 Aug 2019 16:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CeJCOPtRSETA; Thu, 22 Aug 2019 16:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D69CE8829F;
	Thu, 22 Aug 2019 16:38:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74F9D1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:38:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 69F5A86516
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:38:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vM73en1qInNJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 16:38:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9CC9986329
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:38:44 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id j4so4810761iog.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 09:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q3FgN6tHPMtfR2eh2tcn0+eFg5p7QIcdpMVYh3HXblQ=;
 b=YoksQZH6CZk9rispM3SOYYBOusbFtUm5rCwC6capVqF+tL2k5etGl9dtOzNww/DeIW
 B7lKpSIveYDL+qGTWVEo1jV4Alwe1mYrnZ1DcUsI+IbRzPodvEHkUIYkQgQkhp+rBf0Z
 Wu/ab1GuYxbWMikSOUCMaPBePwnYr1Tudq/JOzMMceWNH0XmhEubdBxFuYzHiLrSSwjW
 vdWwzLmHl9xhse/616UGWp4M4C7FQQHwtlM0ZkkDaGEepsxCSKaV7Rl6/xewiMrsjt3j
 5pNjVBzObfsDLHsrKls4T2blO6t151Z4lm/kSYXcCbKmx2BlTZr2kL+8+O4CpHoAPsDK
 PmqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q3FgN6tHPMtfR2eh2tcn0+eFg5p7QIcdpMVYh3HXblQ=;
 b=kRFDm/z5dWyu8bzstCOd9DC/RBKwJLKDDjSEY8zVIjAMUYL6gb/KUNJcmMM/Qw7d93
 LPZelreFL3n4GZmP3xs4LMM8+BkPaO+EeAb9tRRUduiv+O45zH9XwRWtjLujEtkJr2Et
 2ePos/SDEPUiAU6nckr8l9b8qhAgHaVNq7pq4d1UxYCYr40Y0E3HLrpdDGVibbDFAh2g
 En+DqgwYvzu90xa6Wfl6jMFlO0WuXoypV6pWHMeg+OMJ3HtNKvqN4G4uP/ZwM5x53btw
 f9FE2LgcYPSe+WMQ7x4EURRndF5PQuU2j7hPWXTiz+wDD6gsWj2X9Q3YLJDiAJk4Jd7q
 dJpA==
X-Gm-Message-State: APjAAAXJCiJRA38ZydQewoBZU9kspWkqhmwNQm9/WqXSJksa8YwQAJV6
 W+FitcsIg4gCy+CKTjRTIbCumoX6MRiQZ5njRTA=
X-Google-Smtp-Source: APXvYqzwldhCiG7ir76K/uWSEH120ud4pRYjWlRwuINIRmmSCViVvYmdKA/Qla5MKm403JbmwHQAN3MfzwJ6cMxzYhY=
X-Received: by 2002:a6b:dd18:: with SMTP id f24mr679216ioc.97.1566491923755;
 Thu, 22 Aug 2019 09:38:43 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190822123045eucas1p125b6e106f0310bdb50e759ef41993a91@eucas1p1.samsung.com>
 <20190822123037.28068-1-i.maximets@samsung.com>
In-Reply-To: <20190822123037.28068-1-i.maximets@samsung.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 22 Aug 2019 09:38:32 -0700
Message-ID: <CAKgT0Uf26P53EA4m503aehq3tWCX9b3C+17TW2Ursbue9Kp=_w@mail.gmail.com>
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

On Thu, Aug 22, 2019 at 5:30 AM Ilya Maximets <i.maximets@samsung.com> wrote:
>
> Tx code doesn't clear the descriptors' status after cleaning.
> So, if the budget is larger than number of used elems in a ring, some
> descriptors will be accounted twice and xsk_umem_complete_tx will move
> prod_tail far beyond the prod_head breaking the comletion queue ring.
>
> Fix that by limiting the number of descriptors to clean by the number
> of used descriptors in the tx ring.
>
> 'ixgbe_clean_xdp_tx_irq()' function refactored to look more like
> 'ixgbe_xsk_clean_tx_ring()' since we don't need most of the
> complications implemented in the regular 'ixgbe_clean_tx_irq()'
> and we're allowed to directly use 'next_to_clean' and 'next_to_use'
> indexes.
>
> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> Signed-off-by: Ilya Maximets <i.maximets@samsung.com>
> ---
>
> Version 2:
>   * 'ixgbe_clean_xdp_tx_irq()' refactored to look more like
>     'ixgbe_xsk_clean_tx_ring()'.
>
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 34 ++++++++------------
>  1 file changed, 13 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> index 6b609553329f..d1297660e14a 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> @@ -633,22 +633,23 @@ static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
>  bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
>                             struct ixgbe_ring *tx_ring, int napi_budget)
>  {
> +       u16 ntc = tx_ring->next_to_clean, ntu = tx_ring->next_to_use;
>         unsigned int total_packets = 0, total_bytes = 0;
> -       u32 i = tx_ring->next_to_clean, xsk_frames = 0;
>         unsigned int budget = q_vector->tx.work_limit;
>         struct xdp_umem *umem = tx_ring->xsk_umem;
> -       union ixgbe_adv_tx_desc *tx_desc;
> -       struct ixgbe_tx_buffer *tx_bi;
> +       u32 xsk_frames = 0;
>         bool xmit_done;
>
> -       tx_bi = &tx_ring->tx_buffer_info[i];
> -       tx_desc = IXGBE_TX_DESC(tx_ring, i);
> -       i -= tx_ring->count;
> +       while (likely(ntc != ntu && budget)) {

I would say you can get rid of budget entirely. It was only really
needed for the regular Tx case where you can have multiple CPUs
feeding a single Tx queue and causing a stall. Since we have a 1:1
mapping we should never have more than the Rx budget worth of packets
to really process. In addition we can only make one pass through the
ring since the ntu value is not updated while running the loop.

> +               union ixgbe_adv_tx_desc *tx_desc;
> +               struct ixgbe_tx_buffer *tx_bi;
> +
> +               tx_desc = IXGBE_TX_DESC(tx_ring, ntc);
>
> -       do {
>                 if (!(tx_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
>                         break;
>
> +               tx_bi = &tx_ring->tx_buffer_info[ntc];

Please don't move this logic into the loop. We were intentionally
processing this outside of the loop once and then just doing the
increments because it is faster that way. It takes several operations
to compute tx_bi based on ntc, whereas just incrementing is a single
operation.

>                 total_bytes += tx_bi->bytecount;
>                 total_packets += tx_bi->gso_segs;
>
> @@ -659,24 +660,15 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
>
>                 tx_bi->xdpf = NULL;
>
> -               tx_bi++;
> -               tx_desc++;
> -               i++;
> -               if (unlikely(!i)) {
> -                       i -= tx_ring->count;

So these two lines can probably just be replaced by:
if (unlikely(ntc == tx_ring->count)) {
        ntc = 0;

> -                       tx_bi = tx_ring->tx_buffer_info;
> -                       tx_desc = IXGBE_TX_DESC(tx_ring, 0);
> -               }
> -
> -               /* issue prefetch for next Tx descriptor */
> -               prefetch(tx_desc);

Did you just drop the prefetch? You are changing way too much with
this patch. All you should need to do is replace i with ntc, replace
the "do {" with "while (ntc != ntu) {", and remove the while at the
end.

> +               ntc++;
> +               if (unlikely(ntc == tx_ring->count))
> +                       ntc = 0;
>
>                 /* update budget accounting */
>                 budget--;
> -       } while (likely(budget));

As I stated earlier, budget can be removed entirely.

> +       }
>
> -       i += tx_ring->count;
> -       tx_ring->next_to_clean = i;
> +       tx_ring->next_to_clean = ntc;
>
>         u64_stats_update_begin(&tx_ring->syncp);
>         tx_ring->stats.bytes += total_bytes;
> --
> 2.17.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

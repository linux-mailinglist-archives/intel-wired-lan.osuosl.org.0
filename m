Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E0D964A9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2019 17:36:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A4D56868CF;
	Tue, 20 Aug 2019 15:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3XdIq4iNuAz8; Tue, 20 Aug 2019 15:36:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4BB8A868E8;
	Tue, 20 Aug 2019 15:36:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA83A1BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 15:36:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D523E876C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 15:36:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8CBHykhy8ZcJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2019 15:36:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7039E85CCF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 15:36:02 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id t6so13081374ios.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 08:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=betivsvr4AelvMYk1f7BvVRG9eVc6jzveihA0CUREfA=;
 b=ZMbs/CyFDcGcZjg15qK1k0UlcNySK5t0cty2YGSNDbK4NEqE9VZM7sdY4yV3BZ4UBK
 68wxoNWuHAjCm7ZU6lclpm0yOfV9fue2l+vJTRPjdPIGeD+WCH0J0J/55fn1wEaKQe+D
 QfuATjcGDOxBFWyUOqKZWDJzUizAKo98u0zFWi68C6CTNwLoUol3G7Khdb6q/voRF0RZ
 7UgNRPvGwMB+YgdFQmlgCbWHvp2LaG2Co9Nm983E2mpmCXUTRZ0tunreEhOIIz3z257Y
 WsGfobzx0P6CF6lgyVxyhUvCIfj6rtY/4uYYzHtz0aMFM1/yKPS7MGLzfkICT5QBBPiY
 CMuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=betivsvr4AelvMYk1f7BvVRG9eVc6jzveihA0CUREfA=;
 b=EdWLdeJfOTqesoMaP6OU57uYyB54dA6vz8af6tlgAJ7L9IeA4qwIO9k3p4sXaVA1c9
 G9D0nogTVB4KWs+U93awMEkwFKxvkWdh3cf0N8gp+aXxGH1Hnva56NYMUX9jn1ZPzIJ2
 u+D0PH9YSpeQH/uLDSenxIbeqWrZ4ZO1gLYAS+thy9ELBTAgxhMsfq07K32fgCcAVOeM
 0iaRwAzZdc94TmsEbOyxXu3GTlasXVBbSlEgN8k5tIzrAMTpglONSY6FHZuMmRk/MwhL
 nUBeFX54z41w9YiDQY3uH5dELq+ur5z38q9jmLJ47TTizzEYQj+1xsONyCTjP6GQ5kv0
 FnsA==
X-Gm-Message-State: APjAAAU8xKbHyLRsW1qezucx0tTnnbp1r3TJbDRoR2H1MBkLdCRk98b2
 DSJ7hVY5F+8PQ2qtsKdy8K2wwEyju1PnEFYE6lU=
X-Google-Smtp-Source: APXvYqx0vEyR2/pfDBG77yPnfPGuP8f9SCwjX0x5W/RGTq31e8p3VgL3OlNVb9vv/jmc9J2l+PYowle1aCyNoIhVTgE=
X-Received: by 2002:a6b:b549:: with SMTP id e70mr31268407iof.95.1566315361509; 
 Tue, 20 Aug 2019 08:36:01 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce@eucas1p1.samsung.com>
 <20190820151611.10727-1-i.maximets@samsung.com>
In-Reply-To: <20190820151611.10727-1-i.maximets@samsung.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 20 Aug 2019 08:35:50 -0700
Message-ID: <CAKgT0Udn0D0_f=SOH2wpBRWV_u4rb1Qe2h7gguXnRNzJ_VkRzg@mail.gmail.com>
To: Ilya Maximets <i.maximets@samsung.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix double clean of tx
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

On Tue, Aug 20, 2019 at 8:18 AM Ilya Maximets <i.maximets@samsung.com> wrote:
>
> Tx code doesn't clear the descriptor status after cleaning.
> So, if the budget is larger than number of used elems in a ring, some
> descriptors will be accounted twice and xsk_umem_complete_tx will move
> prod_tail far beyond the prod_head breaking the comletion queue ring.
>
> Fix that by limiting the number of descriptors to clean by the number
> of used descriptors in the tx ring.
>
> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> Signed-off-by: Ilya Maximets <i.maximets@samsung.com>

I'm not sure this is the best way to go. My preference would be to
have something in the ring that would prevent us from racing which I
don't think this really addresses. I am pretty sure this code is safe
on x86 but I would be worried about weak ordered systems such as
PowerPC.

It might make sense to look at adding the eop_desc logic like we have
in the regular path with a proper barrier before we write it and after
we read it. So for example we could hold of on writing the bytecount
value until the end of an iteration and call smp_wmb before we write
it. Then on the cleanup we could read it and if it is non-zero we take
an smp_rmb before proceeding further to process the Tx descriptor and
clearing the value. Otherwise this code is going to just keep popping
up with issues.

> ---
>
> Not tested yet because of lack of available hardware.
> So, testing is very welcome.
>
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 10 ++++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 12 +-----------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  |  6 ++++--
>  3 files changed, 15 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 39e73ad60352..0befcef46e80 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -512,6 +512,16 @@ static inline u16 ixgbe_desc_unused(struct ixgbe_ring *ring)
>         return ((ntc > ntu) ? 0 : ring->count) + ntc - ntu - 1;
>  }
>
> +static inline u64 ixgbe_desc_used(struct ixgbe_ring *ring)
> +{
> +       unsigned int head, tail;
> +
> +       head = ring->next_to_clean;
> +       tail = ring->next_to_use;
> +
> +       return ((head <= tail) ? tail : tail + ring->count) - head;
> +}
> +
>  #define IXGBE_RX_DESC(R, i)        \
>         (&(((union ixgbe_adv_rx_desc *)((R)->desc))[i]))
>  #define IXGBE_TX_DESC(R, i)        \
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 7882148abb43..d417237857d8 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -1012,21 +1012,11 @@ static u64 ixgbe_get_tx_completed(struct ixgbe_ring *ring)
>         return ring->stats.packets;
>  }
>
> -static u64 ixgbe_get_tx_pending(struct ixgbe_ring *ring)
> -{
> -       unsigned int head, tail;
> -
> -       head = ring->next_to_clean;
> -       tail = ring->next_to_use;
> -
> -       return ((head <= tail) ? tail : tail + ring->count) - head;
> -}
> -
>  static inline bool ixgbe_check_tx_hang(struct ixgbe_ring *tx_ring)
>  {
>         u32 tx_done = ixgbe_get_tx_completed(tx_ring);
>         u32 tx_done_old = tx_ring->tx_stats.tx_done_old;
> -       u32 tx_pending = ixgbe_get_tx_pending(tx_ring);
> +       u32 tx_pending = ixgbe_desc_used(tx_ring);
>
>         clear_check_for_tx_hang(tx_ring);
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> index 6b609553329f..7702efed356a 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> @@ -637,6 +637,7 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
>         u32 i = tx_ring->next_to_clean, xsk_frames = 0;
>         unsigned int budget = q_vector->tx.work_limit;
>         struct xdp_umem *umem = tx_ring->xsk_umem;
> +       u32 used_descs = ixgbe_desc_used(tx_ring);
>         union ixgbe_adv_tx_desc *tx_desc;
>         struct ixgbe_tx_buffer *tx_bi;
>         bool xmit_done;
> @@ -645,7 +646,7 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
>         tx_desc = IXGBE_TX_DESC(tx_ring, i);
>         i -= tx_ring->count;
>
> -       do {
> +       while (likely(budget && used_descs)) {
>                 if (!(tx_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
>                         break;
>
> @@ -673,7 +674,8 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
>
>                 /* update budget accounting */
>                 budget--;
> -       } while (likely(budget));
> +               used_descs--;
> +       }
>
>         i += tx_ring->count;
>         tx_ring->next_to_clean = i;
> --
> 2.17.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

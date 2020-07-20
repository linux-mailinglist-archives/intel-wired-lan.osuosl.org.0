Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D64A5225852
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jul 2020 09:21:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8F3B62083F;
	Mon, 20 Jul 2020 07:21:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eyy7XIlPwmBB; Mon, 20 Jul 2020 07:21:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1097F21080;
	Mon, 20 Jul 2020 07:21:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7E761BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 07:21:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B345B84974
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 07:21:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mR-5VBUbYJOa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jul 2020 07:21:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
 [209.85.222.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BC20084867
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 07:21:39 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id k7so4701114uan.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 00:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lk9bxoTF19AsH+nbjrEOR1j+cZub7m55W6YZx8DEAGQ=;
 b=lOYSDLzgNeqYzSnpQycYzVulyymK6oBXPuoH/rvxFkesKhhctp8eHyLAFd8MMc8seZ
 KI4VD4oZnFdn+/RD3DmO9FW0wkB5bC86N+XPSxEo0Cfdq6RApQ/aaf1hrCbzDehl+3aI
 7+H/bVDOmq41xM3pzR1imgx86a1+s+CV57O+aU1aH5N8WGc1JdEZAQ93KpHI6wHtV70Y
 Vn6kjnnmj/7ZJPJtQQXc0V9NzQsSC3tN7/iPA2j5A7LObnFS+bqyMjQOI41EVd1Eor17
 9mOgbmLpviUBZHxtzHWon5cR4BmlYI5mhvKSaU2zBR0XzgBb1KVp955Y63tUHZx2ApC5
 UYzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lk9bxoTF19AsH+nbjrEOR1j+cZub7m55W6YZx8DEAGQ=;
 b=fBw5+OfrXyo5sijDzdZCKs/t4S6k0vHcxlPxxLpRaGKvHlCIn67Ux+MkwBOeZVqESi
 o5VIGT+g69Gmq0msCAPAuCuhMxM8vwa+2kau9BBQn2STW+GFcj2lARfUaP7Hs9f9VxwI
 PtjqE7U0dABd5QXA986SXm1aDmYrB+Mas4s/9EAkvtg6wuvo/3cgjLB1Xhu8ibIu9nN4
 rtOtA22IEKoOdq43BHBfbWg4SEg1dSU7Fp5yc8bcs8/8ZElLIL9UVdOUnBz4r5/kxOoK
 4BIiePdMXJspllnab1/m6bARzAlH7DGn8clF/AYEPcBHUjvuvEaXmWoeubcOCbn+bxC8
 c1Ug==
X-Gm-Message-State: AOAM5309gctUc75/Fp9PLAEn2TbZ+UO29+qToGowJ5+lyXweBRWNZeN0
 IIH7V2Q27F3ItdFBv3cEOEaBVlYaGO4OHAcCrDQ=
X-Google-Smtp-Source: ABdhPJwPPZvw9Ln/OBEx0G9f9nFbM9rgByLuLxOCe2l2ukck+z+4Yid+GUce/RuID+5tW9eBhIUPzJZk34rdKgRFiA4=
X-Received: by 2002:ab0:3753:: with SMTP id i19mr14814786uat.58.1595229698517; 
 Mon, 20 Jul 2020 00:21:38 -0700 (PDT)
MIME-Version: 1.0
References: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
 <1594967062-20674-2-git-send-email-lirongqing@baidu.com>
In-Reply-To: <1594967062-20674-2-git-send-email-lirongqing@baidu.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Mon, 20 Jul 2020 09:21:27 +0200
Message-ID: <CAJ8uoz2hdemss9S5vuF=Ttapkfb8U4YJy41oVjpMUVLiCOJTkw@mail.gmail.com>
To: Li RongQing <lirongqing@baidu.com>
Subject: Re: [Intel-wired-lan] [PATCH 1/2] xdp: i40e: ixgbe: ixgbevf: not
 flip rx buffer for copy mode xdp
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
Cc: Network Development <netdev@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 17, 2020 at 8:24 AM Li RongQing <lirongqing@baidu.com> wrote:
>
> i40e/ixgbe/ixgbevf_rx_buffer_flip in copy mode xdp can lead to
> data corruption, like the following flow:
>
>    1. first skb is not for xsk, and forwarded to another device
>       or socket queue
>    2. seconds skb is for xsk, copy data to xsk memory, and page
>       of skb->data is released
>    3. rx_buff is reusable since only first skb is in it, but
>       *_rx_buffer_flip will make that page_offset is set to
>       first skb data
>    4. then reuse rx buffer, first skb which still is living
>       will be corrupted.
>
> so add flags in xdp struct, to report xdp's data status, then
> driver has knowledge whether to flip rx buffer
>
> Fixes: c497176cb2e4 ("xsk: add Rx receive functions and poll support")
> Signed-off-by: Li RongQing <lirongqing@baidu.com>
> Signed-off-by: Dongsheng Rong <rongdongsheng@baidu.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c       | 5 ++++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     | 5 ++++-
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 5 ++++-
>  include/net/xdp.h                                 | 3 +++
>  net/xdp/xsk.c                                     | 4 +++-
>  5 files changed, 18 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index b3836092c327..51fa6f86f917 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -2376,6 +2376,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
>
>                 /* retrieve a buffer from the ring */
>                 if (!skb) {
> +                       xdp.flags = 0;
>                         xdp.data = page_address(rx_buffer->page) +
>                                    rx_buffer->page_offset;
>                         xdp.data_meta = xdp.data;
> @@ -2394,7 +2395,9 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
>
>                         if (xdp_res & (I40E_XDP_TX | I40E_XDP_REDIR)) {
>                                 xdp_xmit |= xdp_res;
> -                               i40e_rx_buffer_flip(rx_ring, rx_buffer, size);
> +
> +                               if (!(xdp.flags & XDP_DATA_RELEASED))
> +                                       i40e_rx_buffer_flip(rx_ring, rx_buffer, size);
>                         } else {
>                                 rx_buffer->pagecnt_bias++;
>                         }
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index a8bf941c5c29..9e44a7e1d91c 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -2333,6 +2333,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>
>                 /* retrieve a buffer from the ring */
>                 if (!skb) {
> +                       xdp.flags = 0;
>                         xdp.data = page_address(rx_buffer->page) +
>                                    rx_buffer->page_offset;
>                         xdp.data_meta = xdp.data;
> @@ -2351,7 +2352,9 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>
>                         if (xdp_res & (IXGBE_XDP_TX | IXGBE_XDP_REDIR)) {
>                                 xdp_xmit |= xdp_res;
> -                               ixgbe_rx_buffer_flip(rx_ring, rx_buffer, size);
> +
> +                               if (!(xdp.flags & XDP_DATA_RELEASED))
> +                                       ixgbe_rx_buffer_flip(rx_ring, rx_buffer, size);
>                         } else {
>                                 rx_buffer->pagecnt_bias++;
>                         }
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> index a39e2cb384dd..1c1a8b6a5dcf 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> @@ -1168,6 +1168,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>
>                 /* retrieve a buffer from the ring */
>                 if (!skb) {
> +                       xdp.flags = 0;
>                         xdp.data = page_address(rx_buffer->page) +
>                                    rx_buffer->page_offset;
>                         xdp.data_meta = xdp.data;
> @@ -1184,7 +1185,9 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>                 if (IS_ERR(skb)) {
>                         if (PTR_ERR(skb) == -IXGBEVF_XDP_TX) {
>                                 xdp_xmit = true;
> -                               ixgbevf_rx_buffer_flip(rx_ring, rx_buffer,
> +
> +                               if (!(xdp.flags & XDP_DATA_RELEASED))
> +                                       ixgbevf_rx_buffer_flip(rx_ring, rx_buffer,
>                                                        size);
>                         } else {
>                                 rx_buffer->pagecnt_bias++;
> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index 609f819ed08b..6b32a01ade19 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -47,6 +47,8 @@ enum xdp_mem_type {
>  #define XDP_XMIT_FLUSH         (1U << 0)       /* doorbell signal consumer */
>  #define XDP_XMIT_FLAGS_MASK    XDP_XMIT_FLUSH
>
> +#define XDP_DATA_RELEASED (1U << 0)
> +
>  struct xdp_mem_info {
>         u32 type; /* enum xdp_mem_type, but known size type */
>         u32 id;
> @@ -73,6 +75,7 @@ struct xdp_buff {
>         struct xdp_rxq_info *rxq;
>         struct xdp_txq_info *txq;
>         u32 frame_sz; /* frame size to deduce data_hard_end/reserved tailroom*/
> +       u32 flags;

RongQing,

Sorry that I was not clear enough. Could you please submit the simple
patch you had, the one that only tests for the memory type.

if (xdp->rxq->mem.type != MEM_TYPE_XSK_BUFF_POOL)
      i40e_rx_buffer_flip(rx_ring, rx_buffer, size);

I do not think that adding a flags field in the xdp_mem_info to fix an
Intel driver problem will be hugely popular. The struct is also meant
to contain long lived information, not things that will frequently
change.

Thank you: Magnus

>  };
>
>  /* Reserve memory area at end-of data area.
> diff --git a/net/xdp/xsk.c b/net/xdp/xsk.c
> index b6c0f08bd80d..2c4c5c16660b 100644
> --- a/net/xdp/xsk.c
> +++ b/net/xdp/xsk.c
> @@ -172,8 +172,10 @@ static int __xsk_rcv(struct xdp_sock *xs, struct xdp_buff *xdp, u32 len,
>                 xsk_buff_free(xsk_xdp);
>                 return err;
>         }
> -       if (explicit_free)
> +       if (explicit_free) {
>                 xdp_return_buff(xdp);
> +               xdp->flags |= XDP_DATA_RELEASED;
> +       }
>         return 0;
>  }
>
> --
> 2.16.2
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

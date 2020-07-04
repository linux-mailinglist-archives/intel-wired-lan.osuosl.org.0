Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA080214734
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jul 2020 18:06:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C95989294;
	Sat,  4 Jul 2020 16:06:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ltAaMsl7JCwX; Sat,  4 Jul 2020 16:06:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B47C892A1;
	Sat,  4 Jul 2020 16:06:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 504BC1BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 16:06:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4B293883D4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 16:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9HGYC4IvD6At for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jul 2020 16:06:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5C3AC883C4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 16:06:00 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id h16so6252798ilj.11
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Jul 2020 09:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ODHZ3f5eaFjThQNy1ZH1ODuExiCMIx4dGKFuIMQycDw=;
 b=eXaw5hyn1DlJTN9+CuJ68vCNARTwivoLZmwxV2nk+eiU9l4cu8J57gvDVx2la4cdQH
 F45M46Hp2KUEL27s9NCuDwj7RqGvtJZeCqzVBB4uoBwYPhM0AgA0R38QKNPTxDpJtUAD
 2DUeaZOmKAppV2Hbt9QZqnGCZ3EyFIyAKtGRjS7GEHEMd840d6rm6gEQdE1OLh5Eh5aZ
 nEDFyrWul5L29yxZl0DChN4fsU9epiKleEkmpifHWTvrQ5+ARFsDSN6mlBkBd1belI+h
 MDdA6+vM4ON+hdBQTVKZrWCT2zFd8wRoMwOc15sR8yAUrZVbOE0UG1RVxjXn2RDc4bOg
 lSJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ODHZ3f5eaFjThQNy1ZH1ODuExiCMIx4dGKFuIMQycDw=;
 b=m6sazqDlsKk584XD1xejB1qoK95nBG1CaMxop/HW0CJpUDp1s0T+pyfVrflo1j739G
 +KaYO9WgQ6ECNha9l3NsATxzZ8johWCjri63WNej/KcLR+kWndYZxYt0Qshz0uQti0JW
 koSQ10p41GV1ZD9AMlCbfV6OWPMzNZ74uqhyT96J2Y9pBrSXcKoeZ+H2VQopon5IaxUh
 ywodQJPgATycmLAwd0DfA6SRP6FR9fW5Vbxlyrf3NDK92fOzVaQpyLH2WZ9yqxnSvgTA
 JxYsGF9AsZYXyhHdH0BM+MtoC0hKPl/IZAt2QSKLEhYIsvquCDbbI+WgIM7p8biepdyC
 VCiw==
X-Gm-Message-State: AOAM5314I71k3AxirCNYkywVIuqDYWucVHK7qz4R3x0eezY6HWPF31DU
 eR12RPvJQJ/OTdrEMM9xkDWi8CEWgMC/VgS540A=
X-Google-Smtp-Source: ABdhPJzWM29TMUej+iL+jdlpOERWnMeNOp63J3Uc4L++L7sTeG0IuET1vhWvp/f2zID3OWSCC0/FHOp8Sf4CxOvC7yo=
X-Received: by 2002:a92:5a05:: with SMTP id o5mr17126179ilb.237.1593878759489; 
 Sat, 04 Jul 2020 09:05:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200703182010.1867-1-bruceshenzk@gmail.com>
In-Reply-To: <20200703182010.1867-1-bruceshenzk@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Sat, 4 Jul 2020 09:05:48 -0700
Message-ID: <CAKgT0Uc0sxRmADBozs3BvK2HFsDAcgzwUKWHyu91npQvyFRM1w@mail.gmail.com>
To: Zekun Shen <bruceshenzk@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH] net: fm10k: check size from dma region
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 3, 2020 at 11:21 AM Zekun Shen <bruceshenzk@gmail.com> wrote:
>
> Size is read from a dma region as input from device. Add sanity
> check of size before calling dma_sync_single_range_for_cpu
> with it.
>
> This would prevent DMA-API warning: device driver tries to sync DMA
> memory it has not allocated.
>
> Signed-off-by: Zekun Shen <bruceshenzk@gmail.com>
> ---
>  drivers/net/ethernet/intel/fm10k/fm10k_main.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
> index 17738b0a9..e020b346b 100644
> --- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
> +++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
> @@ -304,6 +304,11 @@ static struct sk_buff *fm10k_fetch_rx_buffer(struct fm10k_ring *rx_ring,
>         struct fm10k_rx_buffer *rx_buffer;
>         struct page *page;
>
> +       if (unlikely(size > PAGE_SIZE)) {
> +               dev_err(rx_ring->dev, "size %d exceeds PAGE_SIZE\n", size);
> +               return NULL;
> +       }
> +
>         rx_buffer = &rx_ring->rx_buffer[rx_ring->next_to_clean];
>         page = rx_buffer->page;
>         prefetchw(page);

The upper limitation for the size should be 2K or FM10K_RX_BUFSZ, not
PAGE_SIZE. Otherwise you are still capable of going out of bounds
because the offset is used within the page to push the start of the
region up by 2K.

If this is actually fixing the warning it makes me wonder if the code
performing the check is broken itself since we would still be
accessing outside of the accessible DMA range.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC565839F5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2019 22:01:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 48B3D86101;
	Tue,  6 Aug 2019 20:01:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9gr6I3cDrex2; Tue,  6 Aug 2019 20:01:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 606648612B;
	Tue,  6 Aug 2019 20:00:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 529A21BF39F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 20:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4EB2787DA6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 20:00:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TI-d-62yRFCn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2019 20:00:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 893718700E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 20:00:57 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id d17so95688374oth.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Aug 2019 13:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VaOMR+SUZElYH0Eetic8a/+Hs8jgmt9NIHaGtBcxFPM=;
 b=TngasMsK4VNmxfirXQoozUrNZixTJrh5h2kC3Fa/ZBpmNydnUMizu+QaNDXrbPORqA
 LUcxKGR2kGLPUVCAG+ujMbZlMdv+IqWR9ra+m7iTJ+AfMC++Y8R1xruk5J8HBma3OVeD
 271cMVDklGhu0DXNyPhReNS4Glv9BEMFIaN627Isa45aEM8M/7FYQLApxbPd9oAnUBsi
 +jSt8X2b5XtoADey3XpzbHQ8I/uqgwx1UQszsKkhViGmHE+noAbMvXvgz0Hlxq3sflXD
 a5q/tYKeEbtB+ocWno6jFcyYfWsM3YCcfNsKZjEyssRSg0lno7aji39ysG0kykKk8pNV
 foHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VaOMR+SUZElYH0Eetic8a/+Hs8jgmt9NIHaGtBcxFPM=;
 b=deiOKHRLWmZ7zXD23uCrV2iZ1fxcEPquneXfvHwjywvDnkscgeyfR75GZisZIZfFNh
 tiOCnfePYN7xyH8cUVXAhINNQp5HRc7+uQOKIqcmErUZRh6jJb1010sDFoCvCtlNhbIY
 tpew6NU85bUHAAKHzg3zD/xRYD0nU+tKSQiRG2VL+Wz8awPCJHCmnkeGKNZNNUkYc3ry
 +zNPq39/ykje4dL0T6dLSF0tbV2mwsD8rh9RwHUbHbEKBIDrC3OQpaIh+ys2U7exqw1n
 2rBep8w9Hin1u6ZXrNowzaMOC/UbHQP7rvSNMBBftRl+53bxl43WfwIaWmRjSDUj8y2o
 waIA==
X-Gm-Message-State: APjAAAUdMovcFXeEJM+pspjNwUdoykWAd1SnPjV83jAO0RPWv72Q6mIH
 8rWnW6e0f+ygzIFDU6PYcMfpc8hNgwaZkwDFvls=
X-Google-Smtp-Source: APXvYqx+MC/6Cl1pEL3O2XLiSNXCdL35U9JI3kpbwQNG/AkZ6DUYfCMIFGJfMWultA7dg8cGYp72TdjyMGK15LDUL3o=
X-Received: by 2002:a6b:dd18:: with SMTP id f24mr5102882ioc.97.1565121656651; 
 Tue, 06 Aug 2019 13:00:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190806092919.13211-1-firo.yang@suse.com>
In-Reply-To: <20190806092919.13211-1-firo.yang@suse.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 6 Aug 2019 13:00:45 -0700
Message-ID: <CAKgT0UdFky-tnyhn_oXGefex=9FN5ckAJ0YYd2Z7STZg1V48Hg@mail.gmail.com>
To: Firo Yang <firo.yang@suse.com>
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ixgbe: sync the first fragment
 unconditionally
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 6, 2019 at 2:38 AM Firo Yang <firo.yang@suse.com> wrote:
>
> In Xen environment, if Xen-swiotlb is enabled, ixgbe driver
> could possibly allocate a page, DMA memory buffer, for the first
> fragment which is not suitable for Xen-swiotlb to do DMA operations.
> Xen-swiotlb will internally allocate another page for doing DMA
> operations. It requires syncing between those two pages. Otherwise,
> we may get an incomplete skb. To fix this problem, sync the first
> fragment no matter the first fargment is makred as "page_released"
> or not.
>
> Signed-off-by: Firo Yang <firo.yang@suse.com>

From what I can tell the code below is fine. However the patch
description isn't very clear about the issue.

Specifically since we are mapping the frame with
DMA_ATTR_SKIP_CPU_SYNC we have to unmap with that as well. As a result
a sync is not performed on an unmap and must be done manually as we
skipped it for the first frag. As such we need to always sync before
possibly performing a page unmap operation.

Also you can probably add the following to your patch description"
Fixes: f3213d932173 ("ixgbe: Update driver to make use of DMA
attributes in Rx path")
Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index cbaf712d6529..200de9838096 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -1825,13 +1825,7 @@ static void ixgbe_pull_tail(struct ixgbe_ring *rx_ring,
>  static void ixgbe_dma_sync_frag(struct ixgbe_ring *rx_ring,
>                                 struct sk_buff *skb)
>  {
> -       /* if the page was released unmap it, else just sync our portion */
> -       if (unlikely(IXGBE_CB(skb)->page_released)) {
> -               dma_unmap_page_attrs(rx_ring->dev, IXGBE_CB(skb)->dma,
> -                                    ixgbe_rx_pg_size(rx_ring),
> -                                    DMA_FROM_DEVICE,
> -                                    IXGBE_RX_DMA_ATTR);
> -       } else if (ring_uses_build_skb(rx_ring)) {
> +       if (ring_uses_build_skb(rx_ring)) {
>                 unsigned long offset = (unsigned long)(skb->data) & ~PAGE_MASK;
>
>                 dma_sync_single_range_for_cpu(rx_ring->dev,
> @@ -1848,6 +1842,14 @@ static void ixgbe_dma_sync_frag(struct ixgbe_ring *rx_ring,
>                                               skb_frag_size(frag),
>                                               DMA_FROM_DEVICE);
>         }
> +
> +       /* If the page was released, just unmap it. */
> +       if (unlikely(IXGBE_CB(skb)->page_released)) {
> +               dma_unmap_page_attrs(rx_ring->dev, IXGBE_CB(skb)->dma,
> +                                    ixgbe_rx_pg_size(rx_ring),
> +                                    DMA_FROM_DEVICE,
> +                                    IXGBE_RX_DMA_ATTR);
> +       }
>  }
>
>  /**
> --
> 2.16.4
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

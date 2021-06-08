Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8215A39F49E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jun 2021 13:07:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF8C183BDA;
	Tue,  8 Jun 2021 11:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vSgJnJqCimcV; Tue,  8 Jun 2021 11:07:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9526683BD9;
	Tue,  8 Jun 2021 11:07:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC3EC1BF869
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 11:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA023400E6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 11:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AbDGnbZu8RIM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jun 2021 11:07:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93EB9400D0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 11:07:22 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id p13so5867938pfw.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Jun 2021 04:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UJVsqI/ei0WczshYuB8pLAQsFgqQWwx9v5zxVqgopwU=;
 b=B9ab52pbsKXDXa+qRWwLhBk1hn1Q5Y5Epsog2G5yDfhkg5IOo9jKJ2yFIQFwMAzGud
 AcSRIaZ8KgYDCs+rim+4y/6lRxahUee70hAve0OSKrKrsbZZQij7nBPhyvvDc1HBnS6M
 ngcCKuustZvvUxVhpJYky5CuYcYU4kUvomXBT9SOle0uV5+XZoXfXEQH4t9GhG2hbRS3
 Bj3KqAasLfgPV7LJBkffZQB5uBR+wC3S/r/+wrwD79PoJZgN9ov0Q6SlyNIkVznJzrKx
 VikGD3Fo8rv+94mK8O47KXO6kqFcS+lnDOMXrGGMWVpyB8mztLWH4TukVO7Hh8ZWKPf7
 eXaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UJVsqI/ei0WczshYuB8pLAQsFgqQWwx9v5zxVqgopwU=;
 b=j7qOl+MGroMocVMY5Ep3Kquhid9CzH2VmAXj/HClxAYT5F4JxHt+55tZkLduh5xU2l
 gjF0VKKY1Ac83AioDj+C1vVJZCKdHCm/oIGgd40bmCIjFjXwTFqgJ/B2G3ni7pRTxRUh
 4t7QMTX2BAir+R+hjdcMr+6cw/ml3qWZPyk5VWhWZToPZk9MzxfvMV6DU7G3QV350bot
 d6cBd1jumM1hUPL1tDMAvcbVveBWZd45IM+mGrCoJPajXhzfYqcQI4ikJ/zmsL2qykKq
 J8/vLEDTThjDo1Z1nBYLytOra2qFbK7f9GpK7AGOSuywswLD3U6q9FxuefHAxDdgtUau
 Vn0w==
X-Gm-Message-State: AOAM532vXfODIcx4xDxmyeZrx2BW1ylWt0kh5ue9iIDbz61wEXgEb34n
 mzonOjisaIJvjHam2M5sKg47bJb0jJfzcV7Gxu4=
X-Google-Smtp-Source: ABdhPJxjGu8PU0C2DW8HKf2a2BcxewJ3P/4FVJ4FKwCahJzQrzq27XcDUuxYrsnQ3WmcxDTGCfmmKI5172RPm/6SJlM=
X-Received: by 2002:a63:4e4f:: with SMTP id o15mr22260611pgl.208.1623150442052; 
 Tue, 08 Jun 2021 04:07:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210607122644.59021-1-wanghai38@huawei.com>
In-Reply-To: <20210607122644.59021-1-wanghai38@huawei.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Tue, 8 Jun 2021 13:07:11 +0200
Message-ID: <CAJ8uoz2mfCGNmEaAhGZAaSs=Mrer008f3+C7MdoAySsLn=busw@mail.gmail.com>
To: Wang Hai <wanghai38@huawei.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe,
 xsk: clean up the resources in ixgbe_xsk_pool_enable error path
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
Cc: open list <linux-kernel@vger.kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf <bpf@vger.kernel.org>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 7, 2021 at 2:17 PM Wang Hai <wanghai38@huawei.com> wrote:
>
> In ixgbe_xsk_pool_enable(), if ixgbe_xsk_wakeup() fails,
> We should restore the previous state and clean up the
> resources. Add the missing clear af_xdp_zc_qps and unmap dma
> to fix this bug.
>
> Fixes: d49e286d354e ("ixgbe: add tracking of AF_XDP zero-copy state for each queue pair")
> Fixes: 4a9b32f30f80 ("ixgbe: fix potential RX buffer starvation for AF_XDP")
> Signed-off-by: Wang Hai <wanghai38@huawei.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Thanks Wang.

Acked-by: Magnus Karlsson <magnus.karlsson@intel.com>

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> index 91ad5b902673..d912f14d2ba4 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> @@ -52,8 +52,11 @@ static int ixgbe_xsk_pool_enable(struct ixgbe_adapter *adapter,
>
>                 /* Kick start the NAPI context so that receiving will start */
>                 err = ixgbe_xsk_wakeup(adapter->netdev, qid, XDP_WAKEUP_RX);
> -               if (err)
> +               if (err) {
> +                       clear_bit(qid, adapter->af_xdp_zc_qps);
> +                       xsk_pool_dma_unmap(pool, IXGBE_RX_DMA_ATTR);
>                         return err;
> +               }
>         }
>
>         return 0;
> --
> 2.17.1
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

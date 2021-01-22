Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F8F300A4F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jan 2021 18:54:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDFE885766;
	Fri, 22 Jan 2021 17:54:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s6nss2gPYi7N; Fri, 22 Jan 2021 17:54:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B3BB85F94;
	Fri, 22 Jan 2021 17:54:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A7EF41BF39E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 17:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 970122E0F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 17:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3iJIqg43UDik for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jan 2021 17:54:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
 [209.85.166.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 74B8D230E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 17:54:18 +0000 (UTC)
Received: by mail-io1-f44.google.com with SMTP id z22so12797272ioh.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 09:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=en0pKUDdVrjCdZfapa198SUX27NqVVu0iZ8HtPzzk/Y=;
 b=pXK8O8ZLUptUgimH8Q88ZdsOAsdemWPfaK3PDmnWIMfx72UZbtRcuwBh2slDxzyDgq
 SoDlXuz5rqlhxESo+oWmRy4oV//b7Z3UpKmOZAnyKACooXv2Kw92EYdLbgr4AmJX4Kcx
 l2M82iaZJ6wZxrLg1dxe/EhFcNKDtzKb1/GQbwaKLutMFpIz6koHbXD4glAy1LTor659
 2CtJqAXImkWQpehbYOTv/qlCiS+EN7iTG+KOkC76IpqYjbUxDwzZ505echJYHhPEPd0s
 RIjDCPnUGD50psnfH8IeqjhlEjZ9IA0W4fhyEpRYAKzTqaVlez+G75CDWde2jJbNXv+a
 ATUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=en0pKUDdVrjCdZfapa198SUX27NqVVu0iZ8HtPzzk/Y=;
 b=NmI+aw5XJmlTqjG8yMGnlEL2YKpxjdvJqGR9567Tu0yDHxWBWpYrSO+jqeCCQ0ltKg
 cxrc7uVR1pjySGksBlFD5jtSJ9FcvvL9XHU/v6e2OjQluX39/haco22vvvRAYx9IhPsw
 qe3eYsGEgf5IaN/zQeYkT3MoMo0MkSvTpr39te7iUEyoF/gxcvG/Ac7Sq079b5JSloB0
 bGFj31UO9GkBFgk7f133PFHrSrkukA/5Sw4++BR9QhyQW0wPFr4Qi/qjBGnihsIIS/WR
 9C0NT8xLNwl9p8/GgF5sGUZuE7eH2p5WSyMca1mEju4jlRBj8qdfB9li7WjXp6CEB1Vx
 o01w==
X-Gm-Message-State: AOAM5327B/E4nWoIWp4P5Os0RLl0RB9xzJPRI2lUqL7M68U5bcB1K18E
 vxe/l1xQPH+9iQnFvGCJD57pAtvKOIyvfB5kx2w=
X-Google-Smtp-Source: ABdhPJyErizpSLTVDb3WVf3ROd1EhRz1fDFKJeYebB7dS8QpmS5oVknkL7R3SwMUqaWc81/ZrUGZXbnHY3QsGe0jInY=
X-Received: by 2002:a92:cf04:: with SMTP id c4mr1706787ilo.237.1611338057641; 
 Fri, 22 Jan 2021 09:54:17 -0800 (PST)
MIME-Version: 1.0
References: <1611322105-30688-1-git-send-email-wangyunjian@huawei.com>
In-Reply-To: <1611322105-30688-1-git-send-email-wangyunjian@huawei.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 22 Jan 2021 09:54:06 -0800
Message-ID: <CAKgT0UcpQpGLCdRbaEzyb4Q4gC9gmefg4bMFcgrQoRwy6UJvrQ@mail.gmail.com>
To: wangyunjian <wangyunjian@huawei.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: add NULL pointer check
 before calling xdp_rxq_info_reg
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
Cc: Netdev <netdev@vger.kernel.org>, jerry.lilijun@huawei.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 xudingke@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 22, 2021 at 5:29 AM wangyunjian <wangyunjian@huawei.com> wrote:
>
> From: Yunjian Wang <wangyunjian@huawei.com>
>
> The rx_ring->q_vector could be NULL, so it needs to be checked before
> calling xdp_rxq_info_reg.
>
> Fixes: b02e5a0ebb172 ("xsk: Propagate napi_id to XDP socket Rx path")
> Addresses-Coverity: ("Dereference after null check")
> Signed-off-by: Yunjian Wang <wangyunjian@huawei.com>

This is kind of a big escape for the driver. From what I can tell it
looks like the "ethtool -t" test now causes a NULL pointer
dereference.

As far as the patch itself it looks good to me. This should probably
be pushed for any of the other Intel drivers that follow a similar
model as I suspect they were exhibit the same symptom with "ethtool
-t" triggering a NULL pointer dereference.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>

> ---
> v2:
>   * fix commit log
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 6cbbe09ce8a0..7b76b3f448f7 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -6586,8 +6586,9 @@ int ixgbe_setup_rx_resources(struct ixgbe_adapter *adapter,
>         rx_ring->next_to_use = 0;
>
>         /* XDP RX-queue info */
> -       if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
> -                            rx_ring->queue_index, rx_ring->q_vector->napi.napi_id) < 0)
> +       if (rx_ring->q_vector && xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
> +                                                 rx_ring->queue_index,
> +                                                 rx_ring->q_vector->napi.napi_id) < 0)
>                 goto err;
>
>         rx_ring->xdp_prog = adapter->xdp_prog;
> --
> 2.23.0
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

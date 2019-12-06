Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACCE11565F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Dec 2019 18:25:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AEEE820346;
	Fri,  6 Dec 2019 17:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xWAl3ThAeSkx; Fri,  6 Dec 2019 17:25:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C50E24B3A;
	Fri,  6 Dec 2019 17:25:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1BA61BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2019 09:03:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6EDCE86303
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2019 09:03:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KAiVtVoWyS3y for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Dec 2019 09:03:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ADD27863AC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2019 09:03:02 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id i18so5857936qkl.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Dec 2019 01:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=67Zm7DHp5bx3f5X4Sn0b2d1HLcXMK42K0L6gRmue3rE=;
 b=d3feDSha0xG+RZp0j+3vha7KiBw83C3laRnnu+OzA8nwsNRqB4vH8U8gQKDGLDp7FM
 JQPlaMf8CPf/mlk05jD+VE3MN8+T4U8RvvSmO/bsEdtAE1xh8aCYpQ5gwAb2bUJDhstF
 9Xm0dfZpExcUDk4s7z1dhdSWs36p9wSjHITcsMGRsdNHyFY8TTtBhGFTHYKHuOrgCm51
 MDn8Z9LAWb+7sd9NbS1KF5pn5fQ9whoHK1bNYHZsUzVzbz/0z4ligdVDFtr7QJIL8m7Z
 r0JuJ7aZS5bDpWBrgTa7RyYHvHoosvW/CjtqvYrT5mD5lDkdM34rxPxsQ8fdrNitQr8Y
 B+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=67Zm7DHp5bx3f5X4Sn0b2d1HLcXMK42K0L6gRmue3rE=;
 b=J/TFdwQXLi45Thl/+3Fz/6DzbE2mAEg7AI0V9hLzTwUgcLOViOyYEW1uAVvYkUmaiN
 /e9//O0WuxKdt74elLZWhGo34dWmkmAnKftt4kzToPtZxBWSzdOjBVzICES94oIM2tef
 FlbOpASpsWyt3RSkrLceijInM0GyWLHSJSRqsZyh+s5/3vZIx6isDPxuMMuODDhS5/He
 Uo9MHO/JBc+atTghANNK4v64/QHHpkFlTv/AwL7B/EDg52CSIuK7Hz+/pPe16XDnpnjW
 5Bnw3rJ3TOiagvWTIwdXpsmERQVc+SjQj0U/m/xdELfNViUijsP5ZG9YS9BV9dYueNNn
 f7Gg==
X-Gm-Message-State: APjAAAW3xrSud/92udkSGFEaMdunogioMDeIonfWg8gNrWgtta5/OXBw
 aA49Fx0Nm4ggajzXlHoNLA3ep+crO8iwqEFLKq0=
X-Google-Smtp-Source: APXvYqxSZ4JnMoHxxdfoD4IykH04l1uQoKHN9CzO1hbq5PSRCGJHDPqur5UTkQT+V8vRqdqXefjZmtsnAb2xgd7sKKQ=
X-Received: by 2002:a37:aa45:: with SMTP id t66mr12613240qke.218.1575622981697; 
 Fri, 06 Dec 2019 01:03:01 -0800 (PST)
MIME-Version: 1.0
References: <20191205155028.28854-1-maximmi@mellanox.com>
 <20191205155028.28854-2-maximmi@mellanox.com>
In-Reply-To: <20191205155028.28854-2-maximmi@mellanox.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Fri, 6 Dec 2019 10:02:50 +0100
Message-ID: <CAJ+HfNiV0A+Wic2JcQGQfLemf-bRghP1FKdJ0uREZz6ONdCDmw@mail.gmail.com>
To: Maxim Mikityanskiy <maximmi@mellanox.com>
X-Mailman-Approved-At: Fri, 06 Dec 2019 17:25:54 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf 1/4] xsk: Add rcu_read_lock around
 the XSK wakeup
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
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 5 Dec 2019 at 16:52, Maxim Mikityanskiy <maximmi@mellanox.com> wrote:
>
> The XSK wakeup callback in drivers makes some sanity checks before
> triggering NAPI. However, some configuration changes may occur during
> this function that affect the result of those checks. For example, the
> interface can go down, and all the resources will be destroyed after the
> checks in the wakeup function, but before it attempts to use these
> resources. Wrap this callback in rcu_read_lock to allow driver to
> synchronize_rcu before actually destroying the resources.
>

Thanks for taking a deeper look!

> Signed-off-by: Maxim Mikityanskiy <maximmi@mellanox.com>
> ---
>  net/xdp/xsk.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/net/xdp/xsk.c b/net/xdp/xsk.c
> index 956793893c9d..d2261c90f03a 100644
> --- a/net/xdp/xsk.c
> +++ b/net/xdp/xsk.c
> @@ -337,9 +337,13 @@ EXPORT_SYMBOL(xsk_umem_consume_tx);
>  static int xsk_zc_xmit(struct xdp_sock *xs)
>  {
>         struct net_device *dev = xs->dev;
> +       int err;
>
> -       return dev->netdev_ops->ndo_xsk_wakeup(dev, xs->queue_id,
> -                                              XDP_WAKEUP_TX);
> +       rcu_read_lock();
> +       err = dev->netdev_ops->ndo_xsk_wakeup(dev, xs->queue_id, XDP_WAKEUP_TX);
> +       rcu_read_unlock();
> +

The rationale for the the not having any synchronization on the
ndo_xsk_wakeup was to not constrain the drivers. The idea was to let
drivers take care of the required synchronization themselves, since
this is most likely driver specific. I'd prefer leaving that to the
driver implementors, not having the read-lock in the generic AF_XDP
code.

(And note that the ndo_xsk_wakeup is also called in the poll() implementation.)

I don't think this is needed for the Intel drivers, but let me
elaborate on that in those patches. Note "think" here -- I might be
way off here! :-)

> +       return err;
>  }
>
>  static void xsk_destruct_skb(struct sk_buff *skb)
> --
> 2.20.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

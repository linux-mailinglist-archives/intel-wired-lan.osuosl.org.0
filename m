Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3DA44BD2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2019 21:12:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10951876FD;
	Thu, 13 Jun 2019 19:12:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Z0hKcy4UqYx; Thu, 13 Jun 2019 19:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07EFD87727;
	Thu, 13 Jun 2019 19:12:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 296D51BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 19:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 22A3386302
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 19:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G9rlJaB8Gn4l for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2019 19:07:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 75AD4862EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 19:07:38 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id v186so167394oie.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 12:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gVMzjQLQqpf/QZtbz+QWdOL32d3AtsR0Mk6m6bcVxhQ=;
 b=oeDYYEnQD8BtRsIpw+UxvqdqjdOMmpi5OKZg2EWOiM77g1i/l9yeqSb9fQEav6Bpa3
 +A7ie7n+seZpkDZK+YCOS3lT+BhYVflmKL/IYQbkpg5kdUekiW1kSYxm1pxSwbzMI3/Q
 WwNvvtwHNzJPK5z6kYGAQKnH1X3XUrFiyAb1U9dP7DmvAu6+UmOweaQzzB1FJWymCcih
 5/+ZYECskmztALMGrsFnYQn9AA9fRdqXmisilQqd8uLJYSqLYj6vTjbVV8HTMGFLEQ5t
 lF4QDDFEV+zRmGjxoTVhPylms34sc/Azog/7IL7EGnobpzSQndcbus5sYwa4BCNvWnP2
 z2eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gVMzjQLQqpf/QZtbz+QWdOL32d3AtsR0Mk6m6bcVxhQ=;
 b=P6hRyuoQMynjWwXXBTYkwWWVZ/v+b7VfzNpGP9KLnQrK9b4eD7WhKw16nTUMiLGTEO
 XOXEz1z/wwvejQ+E8ykiYnQEXwdik49NEh7jY9WLdz7VuqeVTPL426Ec2bVLotVWpiya
 Tz9wvqUQ10w41oGqbh/ArYz5HJ8PSQEB+tRHZN54ajHwlYVx0pMctPW45m67fvW3Di+X
 GhVDkfdBS3cHnAFMFSsVbsi5//76zWIlWjWrS6EJv2MkkzvwxbP7fiJFQH66ZbarHRE4
 /xosoSFZ++1JSYZgwX4sifixMFD+74ffGwOA0j3K9UQTH/R0BvBXddP88Nl3Sk0fi6t0
 PX6g==
X-Gm-Message-State: APjAAAWFbwpHzNeFr5sNDUecoA555kjsA27r35OFj3+eamW+kmsie1BJ
 XB97XXQCTS5ipUN8t3FZrdmKbAxq44M/Q4EQ63E=
X-Google-Smtp-Source: APXvYqy7vf8KcrIRKPQuYh0e3GDnawVO2IByKOIxBiJs/qCE03bNbJljPJ1izbCdDJlEfQW8Yf9YVdKaFWMGG7JEe1c=
X-Received: by 2002:aca:cdd3:: with SMTP id d202mr3819686oig.115.1560452857649; 
 Thu, 13 Jun 2019 12:07:37 -0700 (PDT)
MIME-Version: 1.0
References: <1560411450-29121-1-git-send-email-magnus.karlsson@intel.com>
 <1560411450-29121-3-git-send-email-magnus.karlsson@intel.com>
 <20190613120411.35ef3c52@cakuba.netronome.com>
In-Reply-To: <20190613120411.35ef3c52@cakuba.netronome.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Thu, 13 Jun 2019 21:07:26 +0200
Message-ID: <CAJ8uoz0jXyVt8OPOq+B8L7gEm8bbd8cE5vdf3-KAhaVK871k8w@mail.gmail.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
X-Mailman-Approved-At: Thu, 13 Jun 2019 19:11:59 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/6] xsk: add support for
 need_wakeup flag in AF_XDP rings
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
Cc: axboe@kernel.dk, Maxim Mikityanskiy <maximmi@mellanox.com>,
 kevin.laatz@intel.com, "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Network Development <netdev@vger.kernel.org>, ciara.loftus@intel.com, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>, Alexei Starovoitov <ast@kernel.org>,
 Ye Xiaolong <xiaolong.ye@intel.com>, ilias.apalodimas@linaro.org,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jesper Dangaard Brouer <brouer@redhat.com>, bruce.richardson@intel.com,
 bpf@vger.kernel.org, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 13, 2019 at 9:05 PM Jakub Kicinski
<jakub.kicinski@netronome.com> wrote:
>
> On Thu, 13 Jun 2019 09:37:26 +0200, Magnus Karlsson wrote:
> >
> > -     if (!dev->netdev_ops->ndo_bpf ||
> > -         !dev->netdev_ops->ndo_xsk_async_xmit) {
> > +     if (!dev->netdev_ops->ndo_bpf || !dev->netdev_ops->ndo_xsk_wakeup) {
> >               err = -EOPNOTSUPP;
> >               goto err_unreg_umem;
> >       }
>
> > @@ -198,7 +258,8 @@ static int xsk_zc_xmit(struct sock *sk)
> >       struct xdp_sock *xs = xdp_sk(sk);
> >       struct net_device *dev = xs->dev;
> >
> > -     return dev->netdev_ops->ndo_xsk_async_xmit(dev, xs->queue_id);
> > +     return dev->netdev_ops->ndo_xsk_wakeup(dev, xs->queue_id,
> > +                                            XDP_WAKEUP_TX);
> >  }
> >
> >  static void xsk_destruct_skb(struct sk_buff *skb)
>
> Those two look like they should be in the previous patch?  Won't it
> break build?

You are correct. That should have been in patch 1. Will fix that in the v2.

Thanks: Magnus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

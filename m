Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA2A3F619A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 17:28:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEAA560BB0;
	Tue, 24 Aug 2021 15:28:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 99HyoeiiFxsE; Tue, 24 Aug 2021 15:28:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5686D60BB2;
	Tue, 24 Aug 2021 15:28:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 125C61BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 15:24:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E8B6480B97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 15:24:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4L5-ke0VJeEi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Aug 2021 15:24:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com
 [IPv6:2607:f8b0:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 87C5E81B84
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 15:24:06 +0000 (UTC)
Received: by mail-ot1-x331.google.com with SMTP id
 61-20020a9d0d430000b02903eabfc221a9so47127781oti.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 08:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oeGV5t/oJZwqNMB4jX1FuHm+Z0cA2twU4gN/nkkX+8A=;
 b=SFUT5QMnrpG848wlRzo/0AfLJVjur8Qo1T9Lz0HM4GJS+LOQcQzqpAD9b6x3yll444
 S473LxVNAIJyWwFOVIqr/HUgDkX+T0qgceS8A9m+NRiQ7gmDeIBaK+y1TQ3YtHVcMOQi
 mYAn1SmcAq20Nw74K6bPs+eWszTRocP5WfVWvmnl/VZNtSVA2ZOpYuaL//ZfRFihjjxU
 sbSX/QRZZWz0IaA3UY4SBPsOxKxhk3lgCiXSOn4e8wVz1NcqqSy0Z8OaU4/blrQ55iqe
 3BdBHw3Nyb4kDl5yLxPU+KmoNGeaHEY+29K3stzCDjOe7j3Gf/3IyKFCkSBpSf/p99Do
 9U1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oeGV5t/oJZwqNMB4jX1FuHm+Z0cA2twU4gN/nkkX+8A=;
 b=R0CJQiSUkaTjXDRuZPOXYMZxcdQKJTftTDorlyjBzHegX/fJrEz1RPZQyF/nUi6ong
 JNSXQbkF2yPdinUohfVekSgMRclJjZD/FMJpRjMCt9ZVXnwv+N3++Xtgi6/a1R2QGUFM
 HNuhtZpGcaz84MaPvAl01oI1YgywjhyAgYQqe5KfBdCnZ+NNk/I67VhvfQRiaebmmS/z
 oAPxAYvUtjV8U8ShQddRmw+/nSllzdNLXsh1n3EK5YU9ZH2i0w2RTZtk1tjSXfZaqHp0
 Zv+3Se1JhF3QbeMaNnNSS3UXTmyikTGD1aQoqWZ5LXYoUKLPuEeWtaa0Y2M0UoR2TS76
 juhA==
X-Gm-Message-State: AOAM532hg1s3uP8cTUPONjgZ8LYjCGtyzf/DSGWNk9WDs3Q0uZdlvhmv
 YG4PAyLOuBQMk8MLENySfhbgJzTMittzFjD4das=
X-Google-Smtp-Source: ABdhPJxJq0hfArntSLZ0Abf4D5GQ30roxEYoGaXVebZpbQrC3CJzfxuKFpUFpNA7eAbrlywZMiuj9ilh9kov66IugqA=
X-Received: by 2002:a05:6808:208b:: with SMTP id
 s11mr3145964oiw.95.1629818645584; 
 Tue, 24 Aug 2021 08:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210824104918.7930-1-kerneljasonxing@gmail.com>
 <59dff551-2d52-5ecc-14ac-4a6ada5b1275@redhat.com>
In-Reply-To: <59dff551-2d52-5ecc-14ac-4a6ada5b1275@redhat.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Tue, 24 Aug 2021 23:23:29 +0800
Message-ID: <CAL+tcoDERDZqtjK1BCc0vYYwYtvgRtb8H6z2FTVbGqr+N7bVmA@mail.gmail.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Mailman-Approved-At: Tue, 24 Aug 2021 15:28:05 +0000
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: let the xdpdrv work with more
 than 64 cpus
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
Cc: songliubraving@fb.com, kafai@fb.com, hawk@kernel.org, daniel@iogearbox.net,
 =?UTF-8?B?w43DsWlnbyBIdWd1ZXQ=?= <ihuguet@redhat.com>,
 netdev <netdev@vger.kernel.org>, brouer@redhat.com, ast@kernel.org,
 andrii@kernel.org, Shujin Li <lishujin@kuaishou.com>, yhs@fb.com,
 kpsingh@kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, David Miller <davem@davemloft.net>,
 LKML <linux-kernel@vger.kernel.org>, Jason Xing <xingwanli@kuaishou.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 24, 2021 at 9:32 PM Jesper Dangaard Brouer
<jbrouer@redhat.com> wrote:
>
>
>
> On 24/08/2021 12.49, kerneljasonxing@gmail.com wrote:
> > From: Jason Xing <xingwanli@kuaishou.com>
> >
> > Originally, ixgbe driver doesn't allow the mounting of xdpdrv if the
> > server is equipped with more than 64 cpus online. So it turns out that
> > the loading of xdpdrv causes the "NOMEM" failure.
> >
> > Actually, we can adjust the algorithm and then make it work, which has
> > no harm at all, only if we set the maxmium number of xdp queues.
>
> This is not true, it can cause harm, because XDP transmission queues are
> used without locking. See drivers ndo_xdp_xmit function ixgbe_xdp_xmit().
> As driver assumption is that each CPU have its own XDP TX-queue.
>

Point taken. I indeed miss that part which would cause bad behavior if it
happens.

At this point, I think I should find all the allocation and use of XDP
related, say,
queues and rings, then adjust them all?

Let's say if the server is shipped with 128 cpus, we could map 128 cpus to 64
rings in the function ixgbe_xdp_xmit(). However, it sounds a little bit odd.

Do you think that it makes any sense?

Thanks,
Jason

> This patch is not a proper fix.
>
> I do think we need a proper fix for this issue on ixgbe.
>
>
> > Fixes: 33fdc82f08 ("ixgbe: add support for XDP_TX action")
> > Co-developed-by: Shujin Li <lishujin@kuaishou.com>
> > Signed-off-by: Shujin Li <lishujin@kuaishou.com>
> > Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
> > ---
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  | 2 +-
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ---
> >   2 files changed, 1 insertion(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > index 0218f6c..5953996 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > @@ -299,7 +299,7 @@ static void ixgbe_cache_ring_register(struct ixgbe_adapter *adapter)
> >
> >   static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
> >   {
> > -     return adapter->xdp_prog ? nr_cpu_ids : 0;
> > +     return adapter->xdp_prog ? min_t(int, MAX_XDP_QUEUES, nr_cpu_ids) : 0;
> >   }
> >
> >   #define IXGBE_RSS_64Q_MASK  0x3F
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > index 14aea40..b36d16b 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -10130,9 +10130,6 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
> >                       return -EINVAL;
> >       }
> >
> > -     if (nr_cpu_ids > MAX_XDP_QUEUES)
> > -             return -ENOMEM;
> > -
> >       old_prog = xchg(&adapter->xdp_prog, prog);
> >       need_reset = (!!prog != !!old_prog);
> >
> >
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

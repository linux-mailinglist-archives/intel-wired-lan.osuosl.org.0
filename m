Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0593F76BA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Aug 2021 16:00:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18FE3613BF;
	Wed, 25 Aug 2021 14:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eptVrvavO0eL; Wed, 25 Aug 2021 14:00:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 678CE613B6;
	Wed, 25 Aug 2021 14:00:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DAC431BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 11:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C4EC0613D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 11:59:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WrICLcvKKerG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Aug 2021 11:59:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E186C613AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 11:59:40 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id v2so362871oie.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 04:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xXGfHXHkacFj3hVjAUMIKLTRt2NjWIABsXsOJbwv1xg=;
 b=m5g4kNz6Al26gevow/MoVyW3uh9WKyVcZ6nXsCyOM63pHloaWtfHOitbj/ddMrII8Z
 BH49fwETN3J0KAb4hyOK0V61UNkUU2zIVZe6WA+2JSjp22qH3I87Pi0RfRHRg87dRtL2
 2yJHVjk+aEHHpS8j0ezFb9h09F4LiRFrIX8PAYXS4uZhoeO+z5njZFyjX/YG0NM2KiJ+
 g3WH1FSmp6OShKNgatAM1fKdH+1UYaYmJQncijEoM9sMkO+DIcdiW9c4+ACYWNjEacYr
 KDFZqlmg5O/9TGY0QYOtJ2CayVIQoHpJRsrgN+nIWFza6f5Mo05MtRlbwiKuH7MTDQY4
 LJUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xXGfHXHkacFj3hVjAUMIKLTRt2NjWIABsXsOJbwv1xg=;
 b=jf+uPPT+Bg92OI14u++3oq7ojgGxHkkdfogQVuk7tWbM2/4bi7UzDOITQdw900282P
 nctb7TDqX9hGDNCFmBAwCMSPSLrYjfooDWyoIoz1Luz5cHB0bQsgMcKjr8fmYz26zabf
 jsWunzekq/AkzayVN/7cOaBtkveerPvv4po6fAsqnqffUym1NzO4owODvOu+hcGPEhN1
 d6p9XJU9ogVpkWfs3Bs9HnDzQRKGeteaOWDJqYt6T9EcrrpC9URG7MpZEKZWlSIAK3l/
 BygMEtECJ5nI9Yy0SF8YkMJBoJ8/AuKK/BNJ5EJtmHRi5EMFJ1xTf1pL+C4P7lxGpnlv
 se1g==
X-Gm-Message-State: AOAM530Q6ZZLXTvsIQM8bAgKaulepjTCdVXC8TB+PHimy19jmkCIDzhf
 zU4utgckRMoFQrcoOqOGjcoEASiVHnsnjLvU3yE=
X-Google-Smtp-Source: ABdhPJzWL+J6f3VWAKw/V+b1F/vnLPMT3Ack2d5dRdJjoa09Q2zMLn5qgMA6S2GCDl0lDpXLguAgSB22yJrbmwObfoA=
X-Received: by 2002:aca:c2c6:: with SMTP id s189mr6426351oif.123.1629892779899; 
 Wed, 25 Aug 2021 04:59:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210824104918.7930-1-kerneljasonxing@gmail.com>
 <59dff551-2d52-5ecc-14ac-4a6ada5b1275@redhat.com>
 <CAL+tcoDERDZqtjK1BCc0vYYwYtvgRtb8H6z2FTVbGqr+N7bVmA@mail.gmail.com>
 <20210824153225.GA16546@ranger.igk.intel.com>
In-Reply-To: <20210824153225.GA16546@ranger.igk.intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 25 Aug 2021 19:59:03 +0800
Message-ID: <CAL+tcoDUhZfy3NTx4TOv3wa1f8SMkNhzNpVS5qyySaVOm6L-qQ@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
X-Mailman-Approved-At: Wed, 25 Aug 2021 14:00:04 +0000
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
Cc: songliubraving@fb.com, ast@kernel.org, andrii@kernel.org,
 daniel@iogearbox.net, intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 yhs@fb.com, hawk@kernel.org, kpsingh@kernel.org, kuba@kernel.org,
 =?UTF-8?B?w43DsWlnbyBIdWd1ZXQ=?= <ihuguet@redhat.com>,
 Shujin Li <lishujin@kuaishou.com>, Jason Xing <xingwanli@kuaishou.com>,
 netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>,
 David Miller <davem@davemloft.net>, bpf@vger.kernel.org, kafai@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 24, 2021 at 11:48 PM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> On Tue, Aug 24, 2021 at 11:23:29PM +0800, Jason Xing wrote:
> > On Tue, Aug 24, 2021 at 9:32 PM Jesper Dangaard Brouer
> > <jbrouer@redhat.com> wrote:
> > >
> > >
> > >
> > > On 24/08/2021 12.49, kerneljasonxing@gmail.com wrote:
> > > > From: Jason Xing <xingwanli@kuaishou.com>
> > > >
> > > > Originally, ixgbe driver doesn't allow the mounting of xdpdrv if the
> > > > server is equipped with more than 64 cpus online. So it turns out that
> > > > the loading of xdpdrv causes the "NOMEM" failure.
> > > >
> > > > Actually, we can adjust the algorithm and then make it work, which has
> > > > no harm at all, only if we set the maxmium number of xdp queues.
> > >
> > > This is not true, it can cause harm, because XDP transmission queues are
> > > used without locking. See drivers ndo_xdp_xmit function ixgbe_xdp_xmit().
> > > As driver assumption is that each CPU have its own XDP TX-queue.
>
> Thanks Jesper for chiming in.
>
> > >
> >
> > Point taken. I indeed miss that part which would cause bad behavior if it
> > happens.
> >
> > At this point, I think I should find all the allocation and use of XDP
> > related, say,
> > queues and rings, then adjust them all?
> >
> > Let's say if the server is shipped with 128 cpus, we could map 128 cpus to 64
> > rings in the function ixgbe_xdp_xmit(). However, it sounds a little bit odd.
> >
> > Do you think that it makes any sense?
>
> We need a fallback path for ixgbe. I did the following for ice:
> https://x-lore.kernel.org/bpf/20210819120004.34392-9-maciej.fijalkowski@intel.com/T/#u
>

Thanks. I'm ready to send the v2 patch. Please help me review the next
submission.

Jason

> >
> > Thanks,
> > Jason
> >
> > > This patch is not a proper fix.
> > >
> > > I do think we need a proper fix for this issue on ixgbe.
> > >
> > >
> > > > Fixes: 33fdc82f08 ("ixgbe: add support for XDP_TX action")
> > > > Co-developed-by: Shujin Li <lishujin@kuaishou.com>
> > > > Signed-off-by: Shujin Li <lishujin@kuaishou.com>
> > > > Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
> > > > ---
> > > >   drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  | 2 +-
> > > >   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ---
> > > >   2 files changed, 1 insertion(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > > > index 0218f6c..5953996 100644
> > > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > > > @@ -299,7 +299,7 @@ static void ixgbe_cache_ring_register(struct ixgbe_adapter *adapter)
> > > >
> > > >   static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
> > > >   {
> > > > -     return adapter->xdp_prog ? nr_cpu_ids : 0;
> > > > +     return adapter->xdp_prog ? min_t(int, MAX_XDP_QUEUES, nr_cpu_ids) : 0;
> > > >   }
> > > >
> > > >   #define IXGBE_RSS_64Q_MASK  0x3F
> > > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > > index 14aea40..b36d16b 100644
> > > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > > @@ -10130,9 +10130,6 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
> > > >                       return -EINVAL;
> > > >       }
> > > >
> > > > -     if (nr_cpu_ids > MAX_XDP_QUEUES)
> > > > -             return -ENOMEM;
> > > > -
> > > >       old_prog = xchg(&adapter->xdp_prog, prog);
> > > >       need_reset = (!!prog != !!old_prog);
> > > >
> > > >
> > >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D3E2EE77E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jan 2021 22:16:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2C50866C4;
	Thu,  7 Jan 2021 21:16:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zBla8J0mCDV2; Thu,  7 Jan 2021 21:16:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCA5287092;
	Thu,  7 Jan 2021 21:16:02 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F0D01BF391
 for <intel-wired-lan@osuosl.org>; Thu,  7 Jan 2021 21:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 78D0187515
 for <intel-wired-lan@osuosl.org>; Thu,  7 Jan 2021 21:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lmwogosLc977 for <intel-wired-lan@osuosl.org>;
 Thu,  7 Jan 2021 21:16:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
 [209.85.166.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B373B87514
 for <intel-wired-lan@osuosl.org>; Thu,  7 Jan 2021 21:16:00 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id n4so7531861iow.12
 for <intel-wired-lan@osuosl.org>; Thu, 07 Jan 2021 13:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r9xMPhwO650SkubUjGknZGVj33UqYQe/HEsVWuoyiYk=;
 b=n+gHo/CuDJOI0UvyJpipzoUhTwcnAtMBU3+fcQATSz0B0vs7nGI8NDSBjNR99aopow
 42pf8DjSkJcAwnfzGFT3KN7kJXJ5B4swT+PgKemwG7EcFu1ZVBOM6unPbrkoBqSdHyLT
 2ecdRhKdAOjH3tS23RlzcE2zDvF2UHsjtKk/IDI+Wlc234S6FeaiMs4/aj1ZRqVDSy+b
 +7UptUfiVP3CPKuxknx6u1UdipRYShW0kQDZOvgkUNnCQp6DhJm6ItaQmar/bKKTbbJ1
 C8OvF3hHcas4bwUhkeX8wCLJ9f+NjnOMsRGw/xgeuPwEJvklXG8ZV7hnP5h/byyQLgvI
 y8+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r9xMPhwO650SkubUjGknZGVj33UqYQe/HEsVWuoyiYk=;
 b=TfowjpJ9i5J641lCB8mlCxa/Rk30+Vivv6aBg5IPcbNLI/gNZMZvbsAz3Y6syc0KAI
 /ngJZYOuw/0X93NctkG5HNtK/ToAv2h7vxJbPKC2NiVXctRgrZwX+8xs3dE68IAuJYbl
 ZE8nvcYIgLrESWXgMiDxG1eERUk0P22nHYe83lHyynadfWrEKdKiSLN1N7lPtgphh9CD
 SVcvhVo2Vg5oXUlxJzxOD4GiJEsJvd6JW5PCgTmN66Wow2aFaps6jjRM6QdOlJm79E3M
 vBKPesQ7dtxPyXC0wp0HqVfzxFywk7beAehRPPq4EnkAcFBtnfPaphyNlfiORR6AxxH4
 TqKw==
X-Gm-Message-State: AOAM533XGRRvzsN+jaUvQ6uaPXfEP9NEMRvEAFcUAg/gIHdsLYC08mzC
 gxPainUjbInlAVt2ZGqFFsXHRh+KlZkr/QBwss8=
X-Google-Smtp-Source: ABdhPJzlfzLPflJQkYdxB0u0uBfx/+CEviOl7GGn2z8Qj8btYh/7enAt7E5rhOrTvjV3+E8FVWu68Mxo3FJ8ivJvucY=
X-Received: by 2002:a5d:9a82:: with SMTP id c2mr2828214iom.38.1610054159955;
 Thu, 07 Jan 2021 13:15:59 -0800 (PST)
MIME-Version: 1.0
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
 <5badc441-6de9-54cf-2b72-d67572cbb105@intel.com>
In-Reply-To: <5badc441-6de9-54cf-2b72-d67572cbb105@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 7 Jan 2021 13:15:49 -0800
Message-ID: <CAKgT0UejO3B-KML-F0ADo-8BrrC7-N37BL_nxN=QNkhXWBJ-xg@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] net: core: count
 drops from GRO
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 7, 2021 at 10:47 AM Jacob Keller <jacob.e.keller@intel.com> wrote:
>
>
>
> On 1/6/2021 1:55 PM, Jesse Brandeburg wrote:
> > When drivers call the various receive upcalls to receive an skb
> > to the stack, sometimes that stack can drop the packet. The good
> > news is that the return code is given to all the drivers of
> > NET_RX_DROP or GRO_DROP. The bad news is that no drivers except
> > the one "ice" driver that I changed, check the stat and increment
> > the dropped count. This is currently leading to packets that
> > arrive at the edge interface and are fully handled by the driver
> > and then mysteriously disappear.
> >
> > Rather than fix all drivers to increment the drop stat when
> > handling the return code, emulate the already existing statistic
> > update for NET_RX_DROP events for the two GRO_DROP locations, and
> > increment the dev->rx_dropped associated with the skb.
> >
> > Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > Cc: Eric Dumazet <edumazet@google.com>
> > Cc: Jamal Hadi Salim <jhs@mojatatu.com>
> > ---
> >  net/core/dev.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/net/core/dev.c b/net/core/dev.c
> > index 8fa739259041..ef34043a9550 100644
> > --- a/net/core/dev.c
> > +++ b/net/core/dev.c
> > @@ -6071,6 +6071,7 @@ static gro_result_t napi_skb_finish(struct napi_struct *napi,
> >               break;
> >
> >       case GRO_DROP:
> > +             atomic_long_inc(&skb->dev->rx_dropped);
> >               kfree_skb(skb);
> >               break;
>
> Would it makes sense to have this be a different stat? or is it really
> basically the same as the existing rx_dropped, so treating it
> differently wouldn't make much sense..

I'm not seeing why this is anything that we really need to track. From
what I can tell GRO_DROP is only returned in one case, and that is if
we are using napi_gro_frags and napi_frags_skb returns NULL. I cannot
see how you can actually return GRO_DROP to the two functions in
question as it looks like dev_gro_receive. Are these paths perhaps
dead code?

Also it doesn't make much sense to free the skb in the GRO_DROP case
as it looks like the skb has already been recycled. It might make more
sense to add the counter in napi_frags_skb in the case where we are
going to return NULL and reset the NAPI skb, and maybe look at
dropping these code paths since I don't think it is possible for us to
get here.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

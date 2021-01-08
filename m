Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0422EF778
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jan 2021 19:35:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 428A1203DB;
	Fri,  8 Jan 2021 18:35:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8PFOpWR44rru; Fri,  8 Jan 2021 18:35:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C81E0204F6;
	Fri,  8 Jan 2021 18:35:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2C0481BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 18:35:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2661520400
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 18:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BCH-otZN8NlA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jan 2021 18:35:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id B51DC203DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 18:35:39 +0000 (UTC)
IronPort-SDR: +hsLMju6IUb8hEsV42XuaQW4EuIFhdFjIF/PrrJxflVueHx1HZWK3qy855+QK9aHPTlEx6r8zp
 jLR7p9EEEVcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="177737602"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="177737602"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:35:38 -0800
IronPort-SDR: o8bS21OClYQAd0KB7U06eFITSFA+f0yhrO24xDbHK075rPQ4Oe9es/nOq8F8MinuDxkiX2v8YG
 Bh2TOiMG+UWQ==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="399064663"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.68.23])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:35:38 -0800
Date: Fri, 8 Jan 2021 10:35:37 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Eric Dumazet <edumazet@google.com>
Message-ID: <20210108103537.00005168@intel.com>
In-Reply-To: <CANn89iLcRrmXW_MGjuMMnNxWS+kaEnY=Y79hCPuiwiDd_G9=EA@mail.gmail.com>
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
 <CANn89iLcRrmXW_MGjuMMnNxWS+kaEnY=Y79hCPuiwiDd_G9=EA@mail.gmail.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
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
Cc: netdev <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jamal Hadi Salim <jhs@mojatatu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Eric Dumazet wrote:
> > --- a/net/core/dev.c
> > +++ b/net/core/dev.c
> > @@ -6071,6 +6071,7 @@ static gro_result_t napi_skb_finish(struct napi_struct *napi,
> >                 break;
> >
> >         case GRO_DROP:
> > +               atomic_long_inc(&skb->dev->rx_dropped);
> >                 kfree_skb(skb);
> >                 break;
> >
> > @@ -6159,6 +6160,7 @@ static gro_result_t napi_frags_finish(struct napi_struct *napi,
> >                 break;
> >
> >         case GRO_DROP:
> > +               atomic_long_inc(&skb->dev->rx_dropped);
> >                 napi_reuse_skb(napi, skb);
> >                 break;
> >
> 
> 
> This is not needed. I think we should clean up ice instead.

My patch 2 already did that. I was trying to address the fact that I'm
*actually seeing* GRO_DROP return codes coming back from stack.

I'll try to reproduce that issue again that I saw. Maybe modern kernels
don't have the problem as frequently or at all.

> Drivers are supposed to have allocated the skb (using
> napi_get_frags()) before calling napi_gro_frags()

ice doesn't use napi_get_frags/napi_gro_frags, so I'm not sure how this
is relevant. 

> Only napi_gro_frags() would return GRO_DROP, but we supposedly could
> crash at that point, since a driver is clearly buggy.

seems unlikely since we don't call those functions.
 
> We probably can remove GRO_DROP completely, assuming lazy drivers are fixed.

This might be ok, but doesn't explain why I was seeing this return
code (which was the whole reason I was trying to count them), however I
may have been running on a distro kernel from redhat/centos 8 when I
was seeing these events. I haven't fully completed spelunking all the
different sources, but might be able to follow down the rabbit hole
further.

 
> diff --git a/net/core/dev.c b/net/core/dev.c
> index 8fa739259041aaa03585b5a7b8ebce862f4b7d1d..c9460c9597f1de51957fdcfc7a64ca45bce5af7c
> 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -6223,9 +6223,6 @@ gro_result_t napi_gro_frags(struct napi_struct *napi)
>         gro_result_t ret;
>         struct sk_buff *skb = napi_frags_skb(napi);
> 
> -       if (!skb)
> -               return GRO_DROP;
> -
>         trace_napi_gro_frags_entry(skb);
> 
>         ret = napi_frags_finish(napi, skb, dev_gro_receive(napi, skb));

This change (noted from your other patches is fine), and a likely
improvement, thanks for sending those!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

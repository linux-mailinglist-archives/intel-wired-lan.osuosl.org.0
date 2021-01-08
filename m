Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79A32EF79E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jan 2021 19:45:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 647BC875CC;
	Fri,  8 Jan 2021 18:45:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2sdFW7xEEU7; Fri,  8 Jan 2021 18:45:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C5E5587602;
	Fri,  8 Jan 2021 18:45:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E1AD1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 18:45:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3378120347
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 18:45:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ThJloq4UlG8f for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jan 2021 18:45:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com
 [209.85.166.177])
 by silver.osuosl.org (Postfix) with ESMTPS id 5026D20341
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 18:45:55 +0000 (UTC)
Received: by mail-il1-f177.google.com with SMTP id n9so11271632ili.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 Jan 2021 10:45:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GxUfRyuTPxVrCCGePmmFFitKQEftWvBnavnssBc4Aig=;
 b=E+mF052pil7+9hXec3kIWtV03Zwf6FkJw1r03uE75jO4XEV1WW8vdZmc+U7I/j+xZx
 awBX318w0QgvkvGzDr75xmnzvS76jYLHTNsuA5qkmWPQTPM4guVEVkBNGTjdKLxLoXgw
 k6UJWrSKJ707HBk/yUQRKMioHH6STHPIqUYOjQCPUZTZGrgWnbGNSPfaQFQ/YowGGqzB
 FAAli63roPiwQbLi1PQ3tyug3xzsuSXr/LwxJNV0obvuk/n4xyc/v9Qn+VAGzmH7NUMr
 L5cn5GW+1IhhahtCNj6ZV3TxjWmEbhaulMlLew+GNSWueHTSZ0IC8+uoJmBb0NmXykTC
 GLIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GxUfRyuTPxVrCCGePmmFFitKQEftWvBnavnssBc4Aig=;
 b=tU7r/iSPO+8ZPZupQmJxqc89R3POgQjhepCoYVKu5XNZcy+qPo9EBF7OTXlsyuSCmK
 KV2zYKdakcMxmMMYEXv2A9fH+sExvxB942YVEtm2FTx+QV4wf+6QKXiEmOHDKNHNddM3
 61vDrrEiTmxMFXvTh589msVcS4Ob2c7I9c0v6U9hZxpCH2mv8tAERX/ubsMQ93hbDdb9
 tm6Lrv3fnRHtJ8OcWXJ/guhymBDYkjTazQ8DNozhjP16zS1xeK8lZ9xRt5b+Wp0YtuQG
 AX7R/KB7w7mYd7zexF3wWZ5B1FsWlMij8yAtHS7CEfJCL8T6vpmOpp4b18AS6Y3X9v0e
 KuLA==
X-Gm-Message-State: AOAM533RzVkNBzOIVkpVCw1+iMrEHX/nqw8KFL6LxbPZCidaQUiUMjEr
 srVuEPxrsmE94cgdFhAEo0laxA0eCgAKUDJeLFw6dw==
X-Google-Smtp-Source: ABdhPJxYJrROJVQzMsC1f84cva+Nai4diMkoX08bgz6sdKNsVPEZjrpcb+EX8aw7kQ03PdMx23BPstTh93vGEY0nFV4=
X-Received: by 2002:a05:6e02:1a6d:: with SMTP id
 w13mr4960928ilv.69.1610131554387; 
 Fri, 08 Jan 2021 10:45:54 -0800 (PST)
MIME-Version: 1.0
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
 <CANn89iLcRrmXW_MGjuMMnNxWS+kaEnY=Y79hCPuiwiDd_G9=EA@mail.gmail.com>
 <20210108103537.00005168@intel.com>
In-Reply-To: <20210108103537.00005168@intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 8 Jan 2021 19:45:41 +0100
Message-ID: <CANn89iL8KZGQhNbwwYRS2POkc_VEiSCecOyaCF4z95=StRn_xQ@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
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

On Fri, Jan 8, 2021 at 7:35 PM Jesse Brandeburg
<jesse.brandeburg@intel.com> wrote:
>
> Eric Dumazet wrote:
> > > --- a/net/core/dev.c
> > > +++ b/net/core/dev.c
> > > @@ -6071,6 +6071,7 @@ static gro_result_t napi_skb_finish(struct napi_struct *napi,
> > >                 break;
> > >
> > >         case GRO_DROP:
> > > +               atomic_long_inc(&skb->dev->rx_dropped);
> > >                 kfree_skb(skb);
> > >                 break;
> > >
> > > @@ -6159,6 +6160,7 @@ static gro_result_t napi_frags_finish(struct napi_struct *napi,
> > >                 break;
> > >
> > >         case GRO_DROP:
> > > +               atomic_long_inc(&skb->dev->rx_dropped);
> > >                 napi_reuse_skb(napi, skb);
> > >                 break;
> > >
> >
> >
> > This is not needed. I think we should clean up ice instead.
>
> My patch 2 already did that. I was trying to address the fact that I'm
> *actually seeing* GRO_DROP return codes coming back from stack.
>
> I'll try to reproduce that issue again that I saw. Maybe modern kernels
> don't have the problem as frequently or at all.


Jesse, you are sending a patch for current kernels.

It is pretty clear that the issue you have can not happen with current
kernels, by reading the code source,
even without an actual ICE piece of hardware to test this :)

>
> > Drivers are supposed to have allocated the skb (using
> > napi_get_frags()) before calling napi_gro_frags()
>
> ice doesn't use napi_get_frags/napi_gro_frags, so I'm not sure how this
> is relevant.
>
> > Only napi_gro_frags() would return GRO_DROP, but we supposedly could
> > crash at that point, since a driver is clearly buggy.
>
> seems unlikely since we don't call those functions.
>
> > We probably can remove GRO_DROP completely, assuming lazy drivers are fixed.
>
> This might be ok, but doesn't explain why I was seeing this return
> code (which was the whole reason I was trying to count them), however I
> may have been running on a distro kernel from redhat/centos 8 when I
> was seeing these events. I haven't fully completed spelunking all the
> different sources, but might be able to follow down the rabbit hole
> further.

Yes please :)

>
>
> > diff --git a/net/core/dev.c b/net/core/dev.c
> > index 8fa739259041aaa03585b5a7b8ebce862f4b7d1d..c9460c9597f1de51957fdcfc7a64ca45bce5af7c
> > 100644
> > --- a/net/core/dev.c
> > +++ b/net/core/dev.c
> > @@ -6223,9 +6223,6 @@ gro_result_t napi_gro_frags(struct napi_struct *napi)
> >         gro_result_t ret;
> >         struct sk_buff *skb = napi_frags_skb(napi);
> >
> > -       if (!skb)
> > -               return GRO_DROP;
> > -
> >         trace_napi_gro_frags_entry(skb);
> >
> >         ret = napi_frags_finish(napi, skb, dev_gro_receive(napi, skb));
>
> This change (noted from your other patches is fine), and a likely
> improvement, thanks for sending those!

Sure !
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

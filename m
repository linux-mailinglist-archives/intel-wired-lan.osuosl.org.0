Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0850C725B42
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 12:05:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 612B18229D;
	Wed,  7 Jun 2023 10:05:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 612B18229D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686132338;
	bh=gsKbfks9+gLFBiXlGaIj+3AWCXsuc4QMg6ZIyCVt/N0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o+Hv0gOp9pEzWVhOKFZ3w5tsDQOEqMn7FOuljgE9m6zXPcVUN+J0YH1c+WAdCwsyk
	 YMIn0e35o2zpFm2kQz5nIN2D/n/CJ97swiVgtZT5l8l3a+gp+WzQC33cZQv/T6Oyp3
	 zTAYVVXNjSes1WvSRozlKtdpHsKCT0YiG1W7G7eLnV9wUKkESrah9XoNIXExxehNOw
	 C8jyyix9rTpFZ9XIaUoMu5xOGK0butRNb/tRIVCQG5LJx8Ty+o9eUV9fb61/zmCS1S
	 vLwS3mY7xu0V2JII8wqmZnqRXnIUvsJgGNC/DTAIosjAxHKjIqzAI5Zm2bOqfLysPR
	 rNMYe6JKZ4UTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9-BxyLZcmCoM; Wed,  7 Jun 2023 10:05:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C975E8223A;
	Wed,  7 Jun 2023 10:05:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C975E8223A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68EE91BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 10:05:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 417C88223A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 10:05:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 417C88223A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TPwxM6MritoK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 10:05:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CE7E81F27
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CE7E81F27
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 10:05:28 +0000 (UTC)
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-166-bZLilfKWPeSDc4jbtyD3WQ-1; Wed, 07 Jun 2023 06:05:25 -0400
X-MC-Unique: bZLilfKWPeSDc4jbtyD3WQ-1
Received: by mail-qv1-f71.google.com with SMTP id
 6a1803df08f44-62849c5e9f0so8660826d6.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Jun 2023 03:05:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686132324; x=1688724324;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=pabWd2MRgsuVxUvV0DGgCD7SRbaF3wZm1tvsg81rdig=;
 b=ehO6Mjo1LUY1RRkVhwCsHBoHWSdJrNY767FbgLKyXPLz1ZZRWhJ2JHk3x+qfUi2lCT
 kdmsExoFALTOanNqxeiZTCvIPsO55PpbMO6tWxpTTJOsKqTBX7ncmARyvv7paef/dMAO
 ftyw3gZ8tL50uSlcaWVwfVPKovhFaZq83wgH4Xo66g6GIh1pVcKsDHEfWyc4LiAC+N/I
 OKzZ6+zWGHW4wVtFE5fUjGlaCHI0RrnSdLCiXf2nsIsj/P3eI4fh++98BrlBRtAvobKZ
 XExOTPzImxExRy0P0kuLfMYc3GC2PRU3HPacRzbh98Osi//xxI5uy9XLagiB5/FodclF
 Ro1A==
X-Gm-Message-State: AC+VfDxNhNwvgZMjferxxENBbru4puxvg+oPeVH+48y2lvHYNiJNiv41
 GrPcUK4pzOMLEjv8WSRdnI3KDtyDoPA1h8tX9+1BzrckYcDiXcB9x8cBy1RTb/ryNUXiG2BGOGd
 zQbSqDJjZvNMXRXp/1tqVAAfAioKFCg==
X-Received: by 2002:a05:6214:5297:b0:625:77a1:2a5f with SMTP id
 kj23-20020a056214529700b0062577a12a5fmr1380580qvb.5.1686132324230; 
 Wed, 07 Jun 2023 03:05:24 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7sCXPPAWyY9MZsxKcdqeTNcw91QomhRFU3GqMhd2G/fj4dGIw1ubuYxSotSN/dL/v4EjVLzA==
X-Received: by 2002:a05:6214:5297:b0:625:77a1:2a5f with SMTP id
 kj23-20020a056214529700b0062577a12a5fmr1380549qvb.5.1686132323832; 
 Wed, 07 Jun 2023 03:05:23 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-247-199.dyn.eolo.it.
 [146.241.247.199]) by smtp.gmail.com with ESMTPSA id
 y9-20020ad457c9000000b00626161ea7a3sm6033222qvx.2.2023.06.07.03.05.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Jun 2023 03:05:23 -0700 (PDT)
Message-ID: <c4707459ac2cb0b48cb9552e83ad4057ae5b9300.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Date: Wed, 07 Jun 2023 12:05:19 +0200
In-Reply-To: <20230606155605.so7xpob6zbuugnwv@skbuf>
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
 <20230602103750.2290132-3-vladimir.oltean@nxp.com>
 <6bce1c55e1cd4295a3f36cb4b37398d951ead07b.camel@redhat.com>
 <20230606155605.so7xpob6zbuugnwv@skbuf>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1686132326;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eDw1g4zc8aTktP6K+1jMPutp4GyUZ40xFy/d/j9WdUY=;
 b=L0e31/WNb2jp29rp/yZxXyiersgccm7bzzUpsdu3/FqhrH+ujEYqvTWyV6vvdv3xfi0rTp
 etCiNJglAW+Zat7fzSv//PonhEpdDLSkaVJYi1RruojY6agvuAA0LOFAI+aybLXSBlIokZ
 wB7gb2DnwCiVQ3U4i3l0fXvqSNdNOrA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=L0e31/WN
Subject: Re: [Intel-wired-lan] [PATCH RESEND net-next 2/5] net/sched:
 taprio: keep child Qdisc refcount elevated at 2 in offload mode
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 netdev@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Peilin Ye <yepeilin.cs@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2023-06-06 at 18:56 +0300, Vladimir Oltean wrote:
> On Tue, Jun 06, 2023 at 12:27:09PM +0200, Paolo Abeni wrote:
> > On Fri, 2023-06-02 at 13:37 +0300, Vladimir Oltean wrote:
> > > The taprio qdisc currently lives in the following equilibrium.
> > > 
> > > In the software scheduling case, taprio attaches itself to all TXQs,
> > > thus having a refcount of 1 + the number of TX queues. In this mode,
> > > q->qdiscs[] is not visible directly to the Qdisc API. The lifetime of
> > > the Qdiscs from this private array lasts until qdisc_destroy() ->
> > > taprio_destroy().
> > > 
> > > In the fully offloaded case, the root taprio has a refcount of 1, and
> > > all child q->qdiscs[] also have a refcount of 1. The child q->qdiscs[]
> > > are visible to the Qdisc API (they are attached to the netdev TXQs
> > > directly), however taprio loses a reference to them very early - during
> > > qdisc_graft(parent==NULL) -> taprio_attach(). At that time, taprio frees
> > > the q->qdiscs[] array to not leak memory, but interestingly, it does not
> > > release a reference on these qdiscs because it doesn't effectively own
> > > them - they are created by taprio but owned by the Qdisc core, and will
> > > be freed by qdisc_graft(parent==NULL, new==NULL) -> qdisc_put(old) when
> > > the Qdisc is deleted or when the child Qdisc is replaced with something
> > > else.
> > > 
> > > My interest is to change this equilibrium such that taprio also owns a
> > > reference on the q->qdiscs[] child Qdiscs for the lifetime of the root
> > > Qdisc, including in full offload mode. I want this because I would like
> > > taprio_leaf(), taprio_dump_class(), taprio_dump_class_stats() to have
> > > insight into q->qdiscs[] for the software scheduling mode - currently
> > > they look at dev_queue->qdisc_sleeping, which is, as mentioned, the same
> > > as the root taprio.
> > > 
> > > The following set of changes is necessary:
> > > - don't free q->qdiscs[] early in taprio_attach(), free it late in
> > >   taprio_destroy() for consistency with software mode. But:
> > > - currently that's not possible, because taprio doesn't own a reference
> > >   on q->qdiscs[]. So hold that reference - once during the initial
> > >   attach() and once during subsequent graft() calls when the child is
> > >   changed.
> > > - always keep track of the current child in q->qdiscs[], even for full
> > >   offload mode, so that we free in taprio_destroy() what we should, and
> > >   not something stale.
> > > 
> > > Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> > > ---
> > >  net/sched/sch_taprio.c | 28 +++++++++++++++++-----------
> > >  1 file changed, 17 insertions(+), 11 deletions(-)
> > > 
> > > diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
> > > index b1c611c72aa4..8807fc915b79 100644
> > > --- a/net/sched/sch_taprio.c
> > > +++ b/net/sched/sch_taprio.c
> > > @@ -2138,23 +2138,20 @@ static void taprio_attach(struct Qdisc *sch)
> > >  
> > >  			qdisc->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
> > >  			old = dev_graft_qdisc(dev_queue, qdisc);
> > > +			/* Keep refcount of q->qdiscs[ntx] at 2 */
> > > +			qdisc_refcount_inc(qdisc);
> > >  		} else {
> > >  			/* In software mode, attach the root taprio qdisc
> > >  			 * to all netdev TX queues, so that dev_qdisc_enqueue()
> > >  			 * goes through taprio_enqueue().
> > >  			 */
> > >  			old = dev_graft_qdisc(dev_queue, sch);
> > > +			/* Keep root refcount at 1 + num_tx_queues */
> > >  			qdisc_refcount_inc(sch);
> > >  		}
> > >  		if (old)
> > >  			qdisc_put(old);
> > >  	}
> > > -
> > > -	/* access to the child qdiscs is not needed in offload mode */
> > > -	if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
> > > -		kfree(q->qdiscs);
> > > -		q->qdiscs = NULL;
> > > -	}
> > >  }
> > >  
> > >  static struct netdev_queue *taprio_queue_get(struct Qdisc *sch,
> > > @@ -2183,15 +2180,24 @@ static int taprio_graft(struct Qdisc *sch, unsigned long cl,
> > >  	if (dev->flags & IFF_UP)
> > >  		dev_deactivate(dev);
> > >  
> > > -	if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
> > > +	/* In software mode, the root taprio qdisc is still the one attached to
> > > +	 * all netdev TX queues, and hence responsible for taprio_enqueue() to
> > > +	 * forward the skbs to the child qdiscs from the private q->qdiscs[]
> > > +	 * array. So only attach the new qdisc to the netdev queue in offload
> > > +	 * mode, where the enqueue must bypass taprio. However, save the
> > > +	 * reference to the new qdisc in the private array in both cases, to
> > > +	 * have an up-to-date reference to our children.
> > > +	 */
> > > +	if (FULL_OFFLOAD_IS_ENABLED(q->flags))
> > >  		*old = dev_graft_qdisc(dev_queue, new);
> > > -	} else {
> > > +	else
> > >  		*old = q->qdiscs[cl - 1];
> > > -		q->qdiscs[cl - 1] = new;
> > > -	}
> > >  
> > > -	if (new)
> > > +	q->qdiscs[cl - 1] = new;
> > > +	if (new) {
> > > +		qdisc_refcount_inc(new);
> > >  		new->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
> > > +	}
> > >  
> > Isn't the above leaking a reference to old with something alike:
> > 
> > tc qdisc replace dev eth0 handle 8001: parent root stab overhead 24 taprio flags 0x2 #...
> > 	# each q in q->qdiscs has refcnt == 2
> > tc qdisc replace dev eth0 parent 8001:8 cbs #...
> > 	# -> taprio_graft(..., cbs, ...)
> > 	# cbs refcnt is 2
> > 	# 'old' refcnt decreases by 1, refcount will not reach 0?!?
> > 
> > kmemleak should be able to see that.
> 
> You're right - in full offload mode, the refcount of "old" (pfifo, parent 8001:8)
> does not drop to 0 after grafting something else to 8001:8.
> 
> I believe this other implementation should work in all cases.
> 
> static int taprio_graft(struct Qdisc *sch, unsigned long cl,
> 			struct Qdisc *new, struct Qdisc **old,
> 			struct netlink_ext_ack *extack)
> {
> 	struct taprio_sched *q = qdisc_priv(sch);
> 	struct net_device *dev = qdisc_dev(sch);
> 	struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);
> 
> 	if (!dev_queue)
> 		return -EINVAL;
> 
> 	if (dev->flags & IFF_UP)
> 		dev_deactivate(dev);
> 
> 	/* In offload mode, the child Qdisc is directly attached to the netdev
> 	 * TX queue, and thus, we need to keep its refcount elevated in order
> 	 * to counteract qdisc_graft()'s call to qdisc_put() once per TX queue.
> 	 * However, save the reference to the new qdisc in the private array in
> 	 * both software and offload cases, to have an up-to-date reference to
> 	 * our children.
> 	 */
> 	if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
> 		*old = dev_graft_qdisc(dev_queue, new);
> 		if (new)
> 			qdisc_refcount_inc(new);
> 		if (*old)
> 			qdisc_put(*old);
> 	} else {
> 		*old = q->qdiscs[cl - 1];
> 	}

Perhaps the above chunk could be:

	*old = q->qdiscs[cl - 1];
	if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
		WARN_ON_ONCE(dev_graft_qdisc(dev_queue, new) != *old);
		if (new)
			qdisc_refcount_inc(new);
		if (*old)
			qdisc_put(*old);
	}

(boldly assuming I'm not completely lost, which looks a wild bet ;)

> 	q->qdiscs[cl - 1] = new;
> 	if (new)
> 		new->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
> 
> 	if (dev->flags & IFF_UP)
> 		dev_activate(dev);
> 
> 	return 0;
> }
> 
> > BTW, what about including your tests from the cover letter somewhere under tc-testing?
> 
> I don't know about that. Does it involve adding taprio hw offload to netdevsim,
> so that both code paths are covered?

I guess I underlooked the needed effort and we could live without new
tests here.


Cheers,

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

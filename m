Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F19E723F64
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 12:27:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CF0060E84;
	Tue,  6 Jun 2023 10:27:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CF0060E84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686047245;
	bh=Eu+iFSzp8pwlNxWxvQrbdCuYoFyFz5a0s7xDDoR0YDQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pN3AO9CDDxZpmM5hI3+HuoKrT+IikTueafxpQo3Ko8AhI0NFv/Tp+TaSsyCvdsB5T
	 LzX8Njz25MfwWeZaF0bJeEovj7mbyOW3g5kken2M3sTUjWc6V0zT8fiNDXbKVi2BL4
	 3KW3xlY/KPrerlaZzqG+iLvEEYgCUfbLYsi5QpHRsNUeoBr7729F8jvrx1VXBrQrf4
	 tetNslvPCu0geSWeNBqHSmHlhgabZ9APvaa2NJtS75Fdr6MQL5IC1z9KcUBedKqzQG
	 5Ut25m/T58l/Bfjb5A1z2fl3f0Sz06KTqTHq0SvRbFvyTYKB7duCY8juGmZbVTf7V5
	 uLmzdvANUHkeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l8thF8zIolft; Tue,  6 Jun 2023 10:27:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24A5160A9F;
	Tue,  6 Jun 2023 10:27:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24A5160A9F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F5ED1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 10:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D85A64168D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 10:27:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D85A64168D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M9HPyS8_96fQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 10:27:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97E2F4161B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 97E2F4161B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 10:27:17 +0000 (UTC)
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-298-8IcwzCspOFWm22drDj4vKw-1; Tue, 06 Jun 2023 06:27:15 -0400
X-MC-Unique: 8IcwzCspOFWm22drDj4vKw-1
Received: by mail-qk1-f199.google.com with SMTP id
 af79cd13be357-75b147a2548so118788685a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Jun 2023 03:27:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686047234; x=1688639234;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yJVswKQZ4ZBsOXRb2fcji4jRQbDRIYhvTVo8Uo+LZ/k=;
 b=CPiIhCo8FqUpjkqa5Bk9shW+E9x//r4cJeQAvk0Tzptgr+qMvSclZUysbD4f/+ee0/
 2Bkg7vdeNBGnxFpe9vBPE+Uo1dwQqo/MR74jZmcezUhsVucvAXM29kn/ETxUzz+1Up7s
 CLB/4soxh86wcCoeBelqanI0bNgIhCGrm8d26jqjn7WfTh9ZyhnJVSgLiXS6UXmx8d4a
 ddN+h5I+hhrmc5nypIJdQ52zMpK1tH0zO+S65YE+vpFcvdUFU2iZ/AWw21psRW9Bc9YP
 jlH472rM8RGlk2WXDXndicphIAxxM4mWvlR2rVl2+LsuuRQk/HcLg2gg7b/quWpb449B
 5afw==
X-Gm-Message-State: AC+VfDwttMbjSWyhyOucxRgsb9K1rP1fgQlzOVzwS7VNs63ZJlbz5ilM
 y37+bFjQF1UcXRbUeBBvRJwLM0+/yQurjHi84sVEqO38GMAyCOFlKQx+bS5DbUnLnZ+mC3D12ep
 z211GBMfjfkiA6pFlgqhVttOosjAXvg==
X-Received: by 2002:a05:620a:480e:b0:75e:b9ab:2690 with SMTP id
 eb14-20020a05620a480e00b0075eb9ab2690mr1406139qkb.6.1686047234473; 
 Tue, 06 Jun 2023 03:27:14 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5OSiucGERn1Apv2naVnzdBF0n9nP1P0fLHpwJatKTXLloqbnBmljCcAsUu1droayCJqVXfwg==
X-Received: by 2002:a05:620a:480e:b0:75e:b9ab:2690 with SMTP id
 eb14-20020a05620a480e00b0075eb9ab2690mr1406116qkb.6.1686047234158; 
 Tue, 06 Jun 2023 03:27:14 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-114-89.dyn.eolo.it.
 [146.241.114.89]) by smtp.gmail.com with ESMTPSA id
 n13-20020ae9c30d000000b0075c97468f57sm4803347qkg.82.2023.06.06.03.27.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jun 2023 03:27:13 -0700 (PDT)
Message-ID: <6bce1c55e1cd4295a3f36cb4b37398d951ead07b.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org
Date: Tue, 06 Jun 2023 12:27:09 +0200
In-Reply-To: <20230602103750.2290132-3-vladimir.oltean@nxp.com>
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
 <20230602103750.2290132-3-vladimir.oltean@nxp.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1686047236;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oYczoWZT0Yx85r0oal+sD+GYfzQNSm/yq26gHMgACGA=;
 b=XH0bNCo1grwQOEngA8ZfNNAM/WzqLI95hwZd83RNsWMKyHVoY0Vqwoi7dr16DFH4cRcqhQ
 09wouAAH+DR3/yJx7SmWpWJI+hgYA92yVaa6bn1yTVdXuj2U/pxzerOGardWOg2TeSTY5Y
 XGt2D3sCiYYFyfUeMyHnxyl9cY4MGVk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=XH0bNCo1
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
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Cong Wang <xiyou.wangcong@gmail.com>, Peilin Ye <yepeilin.cs@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2023-06-02 at 13:37 +0300, Vladimir Oltean wrote:
> The taprio qdisc currently lives in the following equilibrium.
> 
> In the software scheduling case, taprio attaches itself to all TXQs,
> thus having a refcount of 1 + the number of TX queues. In this mode,
> q->qdiscs[] is not visible directly to the Qdisc API. The lifetime of
> the Qdiscs from this private array lasts until qdisc_destroy() ->
> taprio_destroy().
> 
> In the fully offloaded case, the root taprio has a refcount of 1, and
> all child q->qdiscs[] also have a refcount of 1. The child q->qdiscs[]
> are visible to the Qdisc API (they are attached to the netdev TXQs
> directly), however taprio loses a reference to them very early - during
> qdisc_graft(parent==NULL) -> taprio_attach(). At that time, taprio frees
> the q->qdiscs[] array to not leak memory, but interestingly, it does not
> release a reference on these qdiscs because it doesn't effectively own
> them - they are created by taprio but owned by the Qdisc core, and will
> be freed by qdisc_graft(parent==NULL, new==NULL) -> qdisc_put(old) when
> the Qdisc is deleted or when the child Qdisc is replaced with something
> else.
> 
> My interest is to change this equilibrium such that taprio also owns a
> reference on the q->qdiscs[] child Qdiscs for the lifetime of the root
> Qdisc, including in full offload mode. I want this because I would like
> taprio_leaf(), taprio_dump_class(), taprio_dump_class_stats() to have
> insight into q->qdiscs[] for the software scheduling mode - currently
> they look at dev_queue->qdisc_sleeping, which is, as mentioned, the same
> as the root taprio.
> 
> The following set of changes is necessary:
> - don't free q->qdiscs[] early in taprio_attach(), free it late in
>   taprio_destroy() for consistency with software mode. But:
> - currently that's not possible, because taprio doesn't own a reference
>   on q->qdiscs[]. So hold that reference - once during the initial
>   attach() and once during subsequent graft() calls when the child is
>   changed.
> - always keep track of the current child in q->qdiscs[], even for full
>   offload mode, so that we free in taprio_destroy() what we should, and
>   not something stale.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  net/sched/sch_taprio.c | 28 +++++++++++++++++-----------
>  1 file changed, 17 insertions(+), 11 deletions(-)
> 
> diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
> index b1c611c72aa4..8807fc915b79 100644
> --- a/net/sched/sch_taprio.c
> +++ b/net/sched/sch_taprio.c
> @@ -2138,23 +2138,20 @@ static void taprio_attach(struct Qdisc *sch)
>  
>  			qdisc->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
>  			old = dev_graft_qdisc(dev_queue, qdisc);
> +			/* Keep refcount of q->qdiscs[ntx] at 2 */
> +			qdisc_refcount_inc(qdisc);
>  		} else {
>  			/* In software mode, attach the root taprio qdisc
>  			 * to all netdev TX queues, so that dev_qdisc_enqueue()
>  			 * goes through taprio_enqueue().
>  			 */
>  			old = dev_graft_qdisc(dev_queue, sch);
> +			/* Keep root refcount at 1 + num_tx_queues */
>  			qdisc_refcount_inc(sch);
>  		}
>  		if (old)
>  			qdisc_put(old);
>  	}
> -
> -	/* access to the child qdiscs is not needed in offload mode */
> -	if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
> -		kfree(q->qdiscs);
> -		q->qdiscs = NULL;
> -	}
>  }
>  
>  static struct netdev_queue *taprio_queue_get(struct Qdisc *sch,
> @@ -2183,15 +2180,24 @@ static int taprio_graft(struct Qdisc *sch, unsigned long cl,
>  	if (dev->flags & IFF_UP)
>  		dev_deactivate(dev);
>  
> -	if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
> +	/* In software mode, the root taprio qdisc is still the one attached to
> +	 * all netdev TX queues, and hence responsible for taprio_enqueue() to
> +	 * forward the skbs to the child qdiscs from the private q->qdiscs[]
> +	 * array. So only attach the new qdisc to the netdev queue in offload
> +	 * mode, where the enqueue must bypass taprio. However, save the
> +	 * reference to the new qdisc in the private array in both cases, to
> +	 * have an up-to-date reference to our children.
> +	 */
> +	if (FULL_OFFLOAD_IS_ENABLED(q->flags))
>  		*old = dev_graft_qdisc(dev_queue, new);
> -	} else {
> +	else
>  		*old = q->qdiscs[cl - 1];
> -		q->qdiscs[cl - 1] = new;
> -	}
>  
> -	if (new)
> +	q->qdiscs[cl - 1] = new;
> +	if (new) {
> +		qdisc_refcount_inc(new);
>  		new->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
> +	}
>  
Isn't the above leaking a reference to old with something alike:

tc qdisc replace dev eth0 handle 8001: parent root stab overhead 24 taprio flags 0x2 #...
	# each q in q->qdiscs has refcnt == 2
tc qdisc replace dev eth0 parent 8001:8 cbs #...
	# -> taprio_graft(..., cbs, ...)
	# cbs refcnt is 2
	# 'old' refcnt decreases by 1, refcount will not reach 0?!?

kmemleak should be able to see that.

BTW, what about including your tests from the cover letter somewhere under tc-testing?

Thanks!

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

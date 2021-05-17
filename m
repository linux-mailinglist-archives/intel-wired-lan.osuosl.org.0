Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB0C386D26
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 May 2021 00:44:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14D18606E1;
	Mon, 17 May 2021 22:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A3gVSJtIspfN; Mon, 17 May 2021 22:44:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F22A360776;
	Mon, 17 May 2021 22:44:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 227311BF368
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 22:44:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D86C83168
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 22:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V_FG72M20s4F for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 22:44:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 59E6C83218
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 22:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621291484;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PzeDuFKqOdq6XOChkUVF1K14DQOzccWrFoItEVYjLtI=;
 b=L61zr0Cbj4Y9P2kE99SUkfC+/y0NdNkYcIj6JnBKPhgTvNuWaZPBdMtBJAZh3lA5uHgTdJ
 xj10Qsut4VP4/2jGDeJZQF8oyYFLDuxJc60oNviAtgy4az5YdtjHvNF1oXDfvJVRE0q70F
 afwEpmafhNA+/gapO1loPirKNCSxNqE=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-sHyOtLpsOuOEYGqCqgh25g-1; Mon, 17 May 2021 18:44:42 -0400
X-MC-Unique: sHyOtLpsOuOEYGqCqgh25g-1
Received: by mail-lf1-f69.google.com with SMTP id
 g25-20020a19e0590000b029022452ed1b20so1165516lfj.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 15:44:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PzeDuFKqOdq6XOChkUVF1K14DQOzccWrFoItEVYjLtI=;
 b=qwX1y36mL8v0U4QQdx6F/UKjFvuLLTqzohKaM4u8BYxy4UsPQJ7o1wA73C2zVeNl37
 x0auQJsVqwYOz2Ic996nyb3YvFPeBMNz39SX85WoBNwKgzvs4gNZn9HQc4/2TUjwUjjN
 SnoklG06uLtP9QOfbKcdC2LzK0xQ/gdnPK13qSOUZmyhsx6eZ2daIazU76GcN8qrP2d5
 DdDftKTdSAEoYPC2KzzvxHE3BunH4T6ZJllBERouPVs6sVr6RJw+w+m/MkDuxYMb285K
 4mygdzs+Wkw2BhwcOVLkj6dO5V481a6k5y6/m7Il37qKlbOtoFmHWoOFKfKiavjFhKBg
 IDBg==
X-Gm-Message-State: AOAM530oWk+zjRmmeGSnSYE3ZkrY3nFIKhyWBlTYxRJu9IkBtgJ8ye4s
 F9HwahXKfKPZMtxIrn51lQayHrbx4bVFEedCeJFyucxbjwKuhLJnMof1y+lPbLnwdbab4xdh5yO
 ausH7TBA2YHezI78/AfHCpVUFKNFrdZYf2diNdMrQ9nE3Mg==
X-Received: by 2002:a05:6512:3da1:: with SMTP id
 k33mr1581780lfv.114.1621291480900; 
 Mon, 17 May 2021 15:44:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJybam1+aZWd8ZoxqggTlhbg2Te1/mPCVDQmAynvHsV1tsF6N/JdmZVJTtQ8LuKC3UoE52OmVHe8fTZ2XXqBun0=
X-Received: by 2002:a05:6512:3da1:: with SMTP id
 k33mr1581740lfv.114.1621291480634; 
 Mon, 17 May 2021 15:44:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210504092340.00006c61@intel.com>
 <87pmxpdr32.ffs@nanos.tec.linutronix.de>
In-Reply-To: <87pmxpdr32.ffs@nanos.tec.linutronix.de>
From: Nitesh Lal <nilal@redhat.com>
Date: Mon, 17 May 2021 18:44:29 -0400
Message-ID: <CAFki+Lkjn2VCBcLSAfQZ2PEkx-TR0Ts_jPnK9b-5ne3PUX37TQ@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nilal@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH tip:irq/core v1] genirq: remove
 auto-set of the mask when setting the hint
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
Cc: "juri.lelli@redhat.com" <juri.lelli@redhat.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, jbrandeb@kernel.org,
 Ingo Molnar <mingo@kernel.org>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 Marc Zyngier <maz@kernel.org>, "jinyuqi@huawei.com" <jinyuqi@huawei.com>,
 intel-wired-lan@lists.osuosl.org, Alex Belits <abelits@marvell.com>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 "rppt@linux.vnet.ibm.com" <rppt@linux.vnet.ibm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 netdev@vger.kernel.org,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 17, 2021 at 4:48 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Tue, May 04 2021 at 09:23, Jesse Brandeburg wrote:
> > I'd add in addition that irqbalance daemon *stopped* paying attention
> > to hints quite a while ago, so I'm not quite sure what purpose they
> > serve.
>
> The hint was added so that userspace has a better understanding where it
> should place the interrupt. So if irqbalanced ignores it anyway, then
> what's the point of the hint? IOW, why is it still used drivers?
>

Took a quick look at the irqbalance repo and saw the following commit:

dcc411e7bf    remove affinity_hint infrastructure

The commit message mentions that "PJ is redesiging how affinity hinting
works in the kernel, the future model will just tell us to ignore an IRQ,
and the kernel will handle placement for us.  As such we can remove the
affinity_hint recognition entirely".

This does indicate that apparently, irqbalance moved away from the usage of
affinity_hint. However, the next question is what was this future model?
I don't know but I can surely look into it if that helps or maybe someone
here already knows about it?

> Now there is another aspect to that. What happens if irqbalanced does
> not run at all and a driver relies on the side effect of the hint
> setting the initial affinity. Bah...
>

Right, but if they only rely on this API so that the IRQs are spread across
all the CPUs then that issue is already resolved and these other drivers
should not regress because of changing this behavior. Isn't it?

> While none of the drivers (except the perf muck) actually prevents
> userspace from fiddling with the affinity (via IRQF_NOBALANCING) a
> deeper inspection shows that they actually might rely on the current
> behaviour if irqbalanced is disabled. Of course every driver has its own
> convoluted way to do that and all of those functions are well
> documented. What a mess.
>
> If the hint still serves a purpose then we can provide a variant which
> solely applies the hint and does not fiddle with the actual affinity,
> but if the hint is useless anyway then we have a way better option to
> clean that up.
>

+1



-- 
Thanks
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

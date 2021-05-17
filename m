Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB29383C24
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 20:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 823D84056E;
	Mon, 17 May 2021 18:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d2bbjiQ9zP93; Mon, 17 May 2021 18:22:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B5994057C;
	Mon, 17 May 2021 18:22:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 750BE1BF308
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 18:22:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F31640209
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 18:22:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PgzXIauZ0Lnh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 18:22:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10B4740015
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 18:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621275724;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0Ohvz0veaN5YV4OnEyJTkyNbce7kLNQOfav9z5UAAmk=;
 b=a+cMKgNSLLkqUOgIeZ9LjGXsp1mDZB5xBfOEXt9ztnFhNipmDYKEFaZy1Gcz/KSJppMbiY
 LdQdh/IisWs7ovxDRnBuNpanJ1geXOtS6Qh2mOni0RyhFIIlROGLZrLLDPUcOLKShtwen+
 jyk3991ldyMbjt0dsWHwbRPvbv8IbTM=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-219-XBVgtxjDO-i36DPTD7X7GA-1; Mon, 17 May 2021 14:22:00 -0400
X-MC-Unique: XBVgtxjDO-i36DPTD7X7GA-1
Received: by mail-lf1-f72.google.com with SMTP id
 d26-20020a194f1a0000b02902390d1deb9dso388211lfb.18
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 11:22:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0Ohvz0veaN5YV4OnEyJTkyNbce7kLNQOfav9z5UAAmk=;
 b=pbMoQwK3DER/oabR1qrfq4LHOSQCCwUjf+BsUbH0xeXHjmi2CYy4UbxT2DZo4BbddD
 qbsX5kPuFPe+GO4buckN8aCxan4Qpw9y2QCM2alMWZzk/E4wAOR+ZPhXpn/P7XQ+dHEW
 9mAGGljZDzm1oMWm4HkTcKJA9oa0tLzk6t/yNATUwrvmMGdwdJMlZaprI3ZjcH1fcovl
 3ZI5KAQJMY38JDhD1p4yKPQ0k0gY4WFwgimaYNoClPicrM/mhgPFhNXjxr0kmgYNYK/2
 IjZ5ExUxLVzts8cG50lEjK2JVBehH75gTDCPBMIzIyF5ks6wEDm9YP9VCsIFaVbMCSnT
 JQWg==
X-Gm-Message-State: AOAM530efy/uaeoK1TbNMbwPyCkliZSjRSSD08eFVwG3ARFx5a3jPLFT
 /49mTr7OKOGFbqyBq1MYSRxSOkyKD2YGVvSxhahwfnOpujXQSmdGSnrgEpqGGcECwb4WKyCAbaD
 SkDIeF13c9Azk1zE7bjJzxoIvVa8EEpmK3qc4fiiryCJi7g==
X-Received: by 2002:a05:6512:2302:: with SMTP id
 o2mr773408lfu.647.1621275719260; 
 Mon, 17 May 2021 11:21:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwrzOCPhmlYUdV7MidYS7zax5+JMdj0yOGQTWafj9uEJx26idggzqb+1uILAInTM0kZZW7u6CfEAVSGwFUPCng=
X-Received: by 2002:a05:6512:2302:: with SMTP id
 o2mr773377lfu.647.1621275718883; 
 Mon, 17 May 2021 11:21:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210501021832.743094-1-jesse.brandeburg@intel.com>
 <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
 <20210504092340.00006c61@intel.com>
 <CAFki+LmR-o+Fng21ggy48FUX7RhjjpjO87dn3Ld+L4BK2pSRZg@mail.gmail.com>
 <bf1d4892-0639-0bbf-443e-ba284a8ed457@arm.com>
In-Reply-To: <bf1d4892-0639-0bbf-443e-ba284a8ed457@arm.com>
From: Nitesh Lal <nilal@redhat.com>
Date: Mon, 17 May 2021 14:21:47 -0400
Message-ID: <CAFki+L=LDizBJmFUieMDg9J=U6mn6XxTPPkAaWiyppTouTzaqw@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
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
 Alex Belits <abelits@marvell.com>, Ingo Molnar <mingo@kernel.org>,
 "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>, Marc Zyngier <maz@kernel.org>,
 "jinyuqi@huawei.com" <jinyuqi@huawei.com>, intel-wired-lan@lists.osuosl.org,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 "rppt@linux.vnet.ibm.com" <rppt@linux.vnet.ibm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 netdev@vger.kernel.org,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, jbrandeb@kernel.org,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 17, 2021 at 1:26 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-05-17 17:57, Nitesh Lal wrote:
> > On Tue, May 4, 2021 at 12:25 PM Jesse Brandeburg
> > <jesse.brandeburg@intel.com> wrote:
> >>
> >> Robin Murphy wrote:
> >>
> >>> On 2021-05-01 03:18, Jesse Brandeburg wrote:
> >>>> It was pointed out by Nitesh that the original work I did in 2014
> >>>> to automatically set the interrupt affinity when requesting a
> >>>> mask is no longer necessary. The kernel has moved on and no
> >>>> longer has the original problem, BUT the original patch
> >>>> introduced a subtle bug when booting a system with reserved or
> >>>> excluded CPUs. Drivers calling this function with a mask value
> >>>> that included a CPU that was currently or in the future
> >>>> unavailable would generally not update the hint.
> >>>>
> >>>> I'm sure there are a million ways to solve this, but the simplest
> >>>> one is to just remove a little code that tries to force the
> >>>> affinity, as Nitesh has shown it fixes the bug and doesn't seem
> >>>> to introduce immediate side effects.
> >>>
> >>> Unfortunately, I think there are quite a few other drivers now relying
> >>> on this behaviour, since they are really using irq_set_affinity_hint()
> >>> as a proxy for irq_set_affinity(). Partly since the latter isn't
> >>> exported to modules, but also I have a vague memory of it being said
> >>> that it's nice to update the user-visible hint to match when the
> >>> affinity does have to be forced to something specific.
> >>>
> >>> Robin.
> >>
> >> Thanks for your feedback Robin, but there is definitely a bug here that
> >> is being exposed by this code. The fact that people are using this
> >> function means they're all exposed to this bug.
> >>
> >> Not sure if you saw, but this analysis from Nitesh explains what
> >> happened chronologically to the kernel w.r.t this code, it's a useful
> >> analysis! [1]
> >>
> >> I'd add in addition that irqbalance daemon *stopped* paying attention
> >> to hints quite a while ago, so I'm not quite sure what purpose they
> >> serve.
> >>
> >> [1]
> >> https://lore.kernel.org/lkml/CAFki+Lm0W_brLu31epqD3gAV+WNKOJfVDfX2M8ZM__aj3nv9uA@mail.gmail.com/
> >>
> >
> > Wanted to follow up to see if there are any more objections or even
> > suggestions to take this forward?
>
> Oops, sorry, seems I got distracted before getting round to actually
> typing up my response :)

No worries.

>
> I'm not implying that there isn't a bug, or that this code ever made
> sense in the first place, just that fixing it will unfortunately be a
> bit more involved than a simple revert.

Fair point.

> This patch as-is *will* subtly
> break at least the system PMU drivers currently using
> irq_set_affinity_hint() - those I know require the IRQ affinity to
> follow whichever CPU the PMU context is bound to, in order to meet perf
> core's assumptions about mutual exclusion.

Thanks for bringing this up.
Please correct me if I am wrong, so the PMU driver(s) is/are written
in a way that
it uses the hint API to overwrite the previously set affinity mask with a
CPU to which the PMU context is bound to?

Is this context information exposed in the userspace and can we modify the
IRQ affinity mask from the userspace based on that?
I do understand that this is a behavior change from the PMU drivers
perspective.

>
> As far as the consistency argument goes, maybe that's just backwards and
> it should be irq_set_affinity() that also sets the hint, to indicate to
> userspace that the affinity has been forced by the kernel? Either way
> we'll need to do a little more diligence to figure out which callers
> actually care about more than just the hint, and sort them out first.
>

We can use irq_set_affinity() to set the hint mask as well, however, maybe
there is a specific reason behind separating those two in the
first place (maybe not?).
But even in this case, we have to either modify the PMU drivers' IRQs
affinity from the userspace or we will have to make changes in the existing
request_irq code path.
I am not sure about the latter because we already have the required controls
to adjust the device IRQ mask (by using default_smp_affinity or by modifying
them manually).

-- 
Thanks
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

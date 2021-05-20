Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC30B38B949
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 23:58:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CCF1414EE;
	Thu, 20 May 2021 21:58:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Db81Wq96IhN; Thu, 20 May 2021 21:58:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE39A414ED;
	Thu, 20 May 2021 21:58:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4C581BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 21:58:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B7EE844FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 21:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mGEjCAIXy3Qx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 May 2021 21:58:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8473C844F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 21:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621547883;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GkTVO6S3XAPMr10XOopEA4GoA4JfOcUYU8NEFBnvEmw=;
 b=X3QnwKOjsSFLCL8ZOzIZpb8v8gn52yzvkZ7Fu0N8FRieaXTR9WVjEeJbGoaki8EIcH6bkn
 JHE+CgCDvyWOvax+sW6NXPCtssChyYWmj0AMWidx8PXqJQQnCTK8Pql8EFpPaOyG/D8WkN
 WTlq9+UyX0nLMcScaO48hPT3v0DjBdQ=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-349-0Xx5Sy7mPw297Vt6WNhCmA-1; Thu, 20 May 2021 17:58:01 -0400
X-MC-Unique: 0Xx5Sy7mPw297Vt6WNhCmA-1
Received: by mail-lf1-f69.google.com with SMTP id
 g16-20020ac24d900000b0290239d19e27ffso3520887lfe.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 14:58:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GkTVO6S3XAPMr10XOopEA4GoA4JfOcUYU8NEFBnvEmw=;
 b=XmgRANnK+DjWruoeKn7so8KOrv6OclLYUTNO/y01sMr1uURuQ4uFOfpGfudbdlWMG3
 69IbW5JwcE+ez9DJrCEPM6znUmIhN7qyBNNH58Y5fsLyuKELuddB+4fF8wy7CFWaR/Ri
 jUYTDhzXh8T92VQSJT2XizF9HFPPpGe8oU296M2lJa7b4JVKcDQs/OTpJAX4KS6U6U4P
 LvmlfKMVlLbmDGZ31aTmxi39qRQXL0VNTxESZUjJ2P89geaQSFNvLziG7F//Je0W1S/j
 X23TxNu9oB/CwU3SE9Cn6bD1NQYy1SQlEqGeLnbj1Rn2gMeIXpLLcmXUd2S2mC1xQYJo
 BlTQ==
X-Gm-Message-State: AOAM533zgyw/2gPWqaiUusZk/xlv+2rWsVi9awcs2zycC83nEwvoG9Wy
 tmhZfr9kZNvFf1mhf9o+hfAp3K1gaQMb1+UYJQvyqTib3h9yK91mIIjjV8jP71pJlJVV71GkRT5
 uwEAF/wutr44XQPxYK8Mkoqj+LKfCLr94AovspE53VNu7aA==
X-Received: by 2002:a05:6512:3b93:: with SMTP id
 g19mr4668380lfv.548.1621547879600; 
 Thu, 20 May 2021 14:57:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJycNBHNApdEMPPfyR1CFYsoWikWJFtl6kPpEuS6x/SuQ79H+NxWtvmFXVfNLuDCxOYam0+CaH+Jtui15wxD2Gc=
X-Received: by 2002:a05:6512:3b93:: with SMTP id
 g19mr4668344lfv.548.1621547879329; 
 Thu, 20 May 2021 14:57:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210504092340.00006c61@intel.com>
 <87pmxpdr32.ffs@nanos.tec.linutronix.de>
 <CAFki+Lkjn2VCBcLSAfQZ2PEkx-TR0Ts_jPnK9b-5ne3PUX37TQ@mail.gmail.com>
 <87im3gewlu.ffs@nanos.tec.linutronix.de>
 <CAFki+L=gp10W1ygv7zdsee=BUGpx9yPAckKr7pyo=tkFJPciEg@mail.gmail.com>
In-Reply-To: <CAFki+L=gp10W1ygv7zdsee=BUGpx9yPAckKr7pyo=tkFJPciEg@mail.gmail.com>
From: Nitesh Lal <nilal@redhat.com>
Date: Thu, 20 May 2021 17:57:47 -0400
Message-ID: <CAFki+L=eQoMq+mWhw_jVT-biyuDXpxbXY5nO+F6HvCtpbG9V2w@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Robin Murphy <robin.murphy@arm.com>, Marcelo Tosatti <mtosatti@redhat.com>
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
 "bhelgaas@google.com" <bhelgaas@google.com>, pjwaskiewicz@gmail.com,
 Neil Horman <nhorman@tuxdriver.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, jbrandeb@kernel.org,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 17, 2021 at 8:23 PM Nitesh Lal <nilal@redhat.com> wrote:
>
> On Mon, May 17, 2021 at 8:04 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> >
> > On Mon, May 17 2021 at 18:44, Nitesh Lal wrote:
> > > On Mon, May 17, 2021 at 4:48 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> > >> The hint was added so that userspace has a better understanding where it
> > >> should place the interrupt. So if irqbalanced ignores it anyway, then
> > >> what's the point of the hint? IOW, why is it still used drivers?
> > >>
> > > Took a quick look at the irqbalance repo and saw the following commit:
> > >
> > > dcc411e7bf    remove affinity_hint infrastructure
> > >
> > > The commit message mentions that "PJ is redesiging how affinity hinting
> > > works in the kernel, the future model will just tell us to ignore an IRQ,
> > > and the kernel will handle placement for us.  As such we can remove the
> > > affinity_hint recognition entirely".
> >
> > No idea who PJ is. I really love useful commit messages. Maybe Neil can
> > shed some light on that.
> >
> > > This does indicate that apparently, irqbalance moved away from the usage of
> > > affinity_hint. However, the next question is what was this future
> > > model?
> >
> > I might have missed something in the last 5 years, but that's the first
> > time I hear about someone trying to cleanup that thing.
> >
> > > I don't know but I can surely look into it if that helps or maybe someone
> > > here already knows about it?
> >
> > I CC'ed Neil :)
>
> Thanks, I have added PJ Waskiewicz as well who I think was referred in
> that commit message as PJ.
>
> >
> > >> Now there is another aspect to that. What happens if irqbalanced does
> > >> not run at all and a driver relies on the side effect of the hint
> > >> setting the initial affinity. Bah...
> > >>
> > >
> > > Right, but if they only rely on this API so that the IRQs are spread across
> > > all the CPUs then that issue is already resolved and these other drivers
> > > should not regress because of changing this behavior. Isn't it?
> >
> > Is that true for all architectures?
>
> Unfortunately, I don't know and that's probably why we have to be careful.

I think here to ensure that we are not breaking any of the drivers we have
to first analyze all the existing drivers and understand how they are using
this API.
AFAIK there are three possible scenarios:

- A driver use this API to spread the IRQs
  + For this case we should be safe considering the spreading is naturally
    done from the IRQ subsystem itself.

- A driver use this API to actually set the hint
  + These drivers should have no functional impact because of this revert

- Driver use this API to force a certain affinity mask
  + In this case we have to replace the API with the irq_force_affinity()

I can start looking into the individual drivers, however, testing them will
be a challenge.

Any thoughts?

--
Thanks
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

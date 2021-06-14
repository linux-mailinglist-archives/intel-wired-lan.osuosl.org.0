Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1013A6B5D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jun 2021 18:13:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EEA7D60801;
	Mon, 14 Jun 2021 16:13:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0m3GJQ9JoiHL; Mon, 14 Jun 2021 16:13:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD44C6064F;
	Mon, 14 Jun 2021 16:13:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 67A0C1BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 16:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 562ED82E5F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 16:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zSFRAWeZXCZa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jun 2021 16:12:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A39182CFD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 16:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623687175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=U/Ya1k1nXvvGjrRExG8q3FmOawUUZX1h7T0TrtPnmSM=;
 b=QAngivRxe+uiRW8zx6PjhU3dbeweK0ron/E3bJcGLgONSr5JdgaAevxxo+8bjA1A2roAtb
 7wWAHU02f8VBndohw4LWIt4NjKw/UD91TWgoiPaJvD3RdsyDax49lAXFl9pZV9heqK1PC4
 e0HtWxTplt8PXwovID2Yo6+/SQ3aHZo=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-581-Wi6IRnXbOgOSwUuOZZ4rhg-1; Mon, 14 Jun 2021 12:12:52 -0400
X-MC-Unique: Wi6IRnXbOgOSwUuOZZ4rhg-1
Received: by mail-lf1-f71.google.com with SMTP id
 bu14-20020a056512168eb029031226594940so416314lfb.15
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 09:12:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U/Ya1k1nXvvGjrRExG8q3FmOawUUZX1h7T0TrtPnmSM=;
 b=GwEn6uVoMoNXeYEeoeDj0huzlileir3UWjYUbrgiXFIpEbnrK00A+kHVKUAo9Scjac
 jV6Hc5vQ4qsmLFHdCTKynoVF7V7ikOrhq+1i093Og+2cBjFek0vJIGtn3LVdBmpBKQn8
 PSrOIG1u0hOjXKXXO9SoHLPpO04BaXWFIjP8RnzIhaEHWGVaQCN0eV5Pceu4o1Vrchgd
 Sw5N6gasWRG5UJN9BpNQsiN1g/ciSdklz+E5wHKu4fYPt6F1lzLKi54GNsOaDvYtvx7L
 6sxcZzrIEq+EN4dOEK3CPw5Vfk/0cPVu6XmWyEBHjqinkpQq+IBBngpNa++TKKliRfoi
 S91g==
X-Gm-Message-State: AOAM533VwocaeTW4ADgv4NuZ3GmJp9gsmGwEXI/OJlxC0JYeKZZsmwcU
 g88epmQdLidf+T05CEFQFX7Q3K/ljx8UJUYX42aSbLNVj+BnHau/XkabIzPHICjjkMxl0EzMxiJ
 ixLuCTxbD0oBMkIL7acoksHZv3VBsQbR+5REjzWBzbKqr1w==
X-Received: by 2002:a05:6512:2101:: with SMTP id
 q1mr8877574lfr.647.1623687170948; 
 Mon, 14 Jun 2021 09:12:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwAbGhpPvqkcHhSsuAdQ1FpWwNWtaQWb83YFBtFmuq7Xr7R/t1YH4+Rj9W+tz1cElNmEXnhxmp8Ko9KgVy5pjU=
X-Received: by 2002:a05:6512:2101:: with SMTP id
 q1mr8877529lfr.647.1623687170605; 
 Mon, 14 Jun 2021 09:12:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210504092340.00006c61@intel.com>
 <87pmxpdr32.ffs@nanos.tec.linutronix.de>
 <CAFki+Lkjn2VCBcLSAfQZ2PEkx-TR0Ts_jPnK9b-5ne3PUX37TQ@mail.gmail.com>
 <87im3gewlu.ffs@nanos.tec.linutronix.de>
 <CAFki+L=gp10W1ygv7zdsee=BUGpx9yPAckKr7pyo=tkFJPciEg@mail.gmail.com>
 <CAFki+L=eQoMq+mWhw_jVT-biyuDXpxbXY5nO+F6HvCtpbG9V2w@mail.gmail.com>
 <CAFki+LkB1sk3mOv4dd1D-SoPWHOs28ZwN-PqL_6xBk=Qkm40Lw@mail.gmail.com>
 <87zgwo9u79.ffs@nanos.tec.linutronix.de>
 <87wnrs9tvp.ffs@nanos.tec.linutronix.de>
 <CAFki+L=QTOu_O=1uNobVMi2s9mbcxXgSdTLADCpeBWBoPAikgQ@mail.gmail.com>
In-Reply-To: <CAFki+L=QTOu_O=1uNobVMi2s9mbcxXgSdTLADCpeBWBoPAikgQ@mail.gmail.com>
From: Nitesh Lal <nilal@redhat.com>
Date: Mon, 14 Jun 2021 12:12:38 -0400
Message-ID: <CAFki+LkJ9kj0TMz8dhGXLXdfwgYLibkMCRvKBwVVX5+F-DP37w@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nilal@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH] genirq: Provide new interfaces for
 affinity hints
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
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Ingo Molnar <mingo@kernel.org>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 Marc Zyngier <maz@kernel.org>, "jinyuqi@huawei.com" <jinyuqi@huawei.com>,
 intel-wired-lan@lists.osuosl.org, Alex Belits <abelits@marvell.com>,
 "frederic@kernel.org" <frederic@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 "rppt@linux.vnet.ibm.com" <rppt@linux.vnet.ibm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, pjwaskiewicz@gmail.com,
 Neil Horman <nhorman@tuxdriver.com>,
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

On Mon, Jun 7, 2021 at 1:00 PM Nitesh Lal <nilal@redhat.com> wrote:
>
> On Fri, May 21, 2021 at 8:03 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> >
> > The discussion about removing the side effect of irq_set_affinity_hint() of
> > actually applying the cpumask (if not NULL) as affinity to the interrupt,
> > unearthed a few unpleasantries:
> >
> >   1) The modular perf drivers rely on the current behaviour for the very
> >      wrong reasons.
> >
> >   2) While none of the other drivers prevents user space from changing
> >      the affinity, a cursorily inspection shows that there are at least
> >      expectations in some drivers.
> >
> > #1 needs to be cleaned up anyway, so that's not a problem
> >
> > #2 might result in subtle regressions especially when irqbalanced (which
> >    nowadays ignores the affinity hint) is disabled.
> >
> > Provide new interfaces:
> >
> >   irq_update_affinity_hint() - Only sets the affinity hint pointer
> >   irq_apply_affinity_hint()  - Set the pointer and apply the affinity to
> >                                the interrupt
> >
> > Make irq_set_affinity_hint() a wrapper around irq_apply_affinity_hint() and
> > document it to be phased out.
> >
> > Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> > Link: https://lore.kernel.org/r/20210501021832.743094-1-jesse.brandeburg@intel.com
> > ---
> > Applies on:
> >    git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git irq/core
> > ---
> >  include/linux/interrupt.h |   41 ++++++++++++++++++++++++++++++++++++++++-
> >  kernel/irq/manage.c       |    8 ++++----
> >  2 files changed, 44 insertions(+), 5 deletions(-)
> >
> > --- a/include/linux/interrupt.h
> > +++ b/include/linux/interrupt.h
> > @@ -328,7 +328,46 @@ extern int irq_force_affinity(unsigned i
> >  extern int irq_can_set_affinity(unsigned int irq);
> >  extern int irq_select_affinity(unsigned int irq);
> >
> > -extern int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m);
> > +extern int __irq_apply_affinity_hint(unsigned int irq, const struct cpumask *m,
> > +                                    bool setaffinity);
> > +
> > +/**
> > + * irq_update_affinity_hint - Update the affinity hint
> > + * @irq:       Interrupt to update
> > + * @cpumask:   cpumask pointer (NULL to clear the hint)
> > + *
> > + * Updates the affinity hint, but does not change the affinity of the interrupt.
> > + */
> > +static inline int
> > +irq_update_affinity_hint(unsigned int irq, const struct cpumask *m)
> > +{
> > +       return __irq_apply_affinity_hint(irq, m, true);
> > +}
> > +
> > +/**
> > + * irq_apply_affinity_hint - Update the affinity hint and apply the provided
> > + *                          cpumask to the interrupt
> > + * @irq:       Interrupt to update
> > + * @cpumask:   cpumask pointer (NULL to clear the hint)
> > + *
> > + * Updates the affinity hint and if @cpumask is not NULL it applies it as
> > + * the affinity of that interrupt.
> > + */
> > +static inline int
> > +irq_apply_affinity_hint(unsigned int irq, const struct cpumask *m)
> > +{
> > +       return __irq_apply_affinity_hint(irq, m, true);
> > +}
> > +
> > +/*
> > + * Deprecated. Use irq_update_affinity_hint() or irq_apply_affinity_hint()
> > + * instead.
> > + */
> > +static inline int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m)
> > +{
> > +       return irq_apply_affinity_hint(irq, cpumask);
>
> Another change required here, the above should be 'm' instead of 'cpumask'.

I am going to and make the suggested changes to this patch and will post it
with driver patches.
Please let me know if there are any objections to that.

>
> > +}
> > +
> >  extern int irq_update_affinity_desc(unsigned int irq,
> >                                     struct irq_affinity_desc *affinity);
> >
> > --- a/kernel/irq/manage.c
> > +++ b/kernel/irq/manage.c
> > @@ -487,7 +487,8 @@ int irq_force_affinity(unsigned int irq,
> >  }
> >  EXPORT_SYMBOL_GPL(irq_force_affinity);
> >
> > -int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m)
> > +int __irq_apply_affinity_hint(unsigned int irq, const struct cpumask *m,
> > +                             bool setaffinity)
> >  {
> >         unsigned long flags;
> >         struct irq_desc *desc = irq_get_desc_lock(irq, &flags, IRQ_GET_DESC_CHECK_GLOBAL);
> > @@ -496,12 +497,11 @@ int irq_set_affinity_hint(unsigned int i
> >                 return -EINVAL;
> >         desc->affinity_hint = m;
> >         irq_put_desc_unlock(desc, flags);
> > -       /* set the initial affinity to prevent every interrupt being on CPU0 */
> > -       if (m)
> > +       if (m && setaffinity)
> >                 __irq_set_affinity(irq, m, false);
> >         return 0;
> >  }
> > -EXPORT_SYMBOL_GPL(irq_set_affinity_hint);
> > +EXPORT_SYMBOL_GPL(__irq_apply_affinity_hint);
> >
> >  static void irq_affinity_notify(struct work_struct *work)
> >  {
> >
>
>
> --
> Thanks
> Nitesh



-- 
Thanks
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

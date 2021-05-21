Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93ADE38BAA4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 May 2021 02:04:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E92EA414FD;
	Fri, 21 May 2021 00:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sq1anDIhX_OZ; Fri, 21 May 2021 00:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3DAC40F35;
	Fri, 21 May 2021 00:04:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD46D1C1189
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 00:03:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB43784427
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 00:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 70Kw1f79wzyk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 May 2021 00:03:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4DE784547
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 00:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621555435;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yY5C4rKyGeidFpZPaRAHZm77aYdXwBLOJbXSDp6aeQo=;
 b=DkbJvDbzSqCToOBJ2+HosFnopek3MIRvzUOjqhS3T+SPzPDZd+3Fy7PZJkScjObscSRl5Z
 oWp2xPQ2B3ryl8B02LQTUaprh6vZ1/6VQWCSafrubGD1Y/LQkDYmiAjS/zMo1fHO50tEl7
 eWy4RI4m4t4fi4IYwkexr696IVOMPzQ=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-528-5dWO-ehMOqGhVRc4yPAlCw-1; Thu, 20 May 2021 20:03:52 -0400
X-MC-Unique: 5dWO-ehMOqGhVRc4yPAlCw-1
Received: by mail-lf1-f72.google.com with SMTP id
 e28-20020a19501c0000b029020ca0c731b4so4546811lfb.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 17:03:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yY5C4rKyGeidFpZPaRAHZm77aYdXwBLOJbXSDp6aeQo=;
 b=jc7U5Ptu1euY48oED4n0TrQBJMS05SQz9bgGt1diI145h4eqcIVVMHMQwA+aIXPXBJ
 JfkD18VstkC7rDsSC72qMyB6KG/50uk7yLoB+rRvtGWgVvzYOxuyFVH0RnYtVZURjWka
 HXwgo6FJb81COGxranh9qlt7Hl1cEMnmu0xACaZD6jWZwL0ru+9DDR/ER4fa4/LwMLk7
 i+57R2sjAHSzzObuFIhvDpQzhtPjGf746HdTyeUnJY4R5MM7IjeeZimKZj+zCJarAbuQ
 2sZ/4Vkm4xlvuJ1sBcD0eBdQM6dUeTyYO+dMKhXkTS+Sb3GoOOExU5RcnYBVb8/RSojj
 nE4g==
X-Gm-Message-State: AOAM530SMWLbn5pw5hSLK5bxf/Gcfz2Np5iU3G1QwnPTYFLn8oEnY59v
 dAyIz6GvdFOnkZzpM1KpEjKsJfwk696XP1JxrFVuPRGlqxH+kZelxX/n6vkQB2MduWB1HTvbLrY
 rbQ0rHgkqle0or/gYBH1HlklWHnGosMtLxyhm646wQobJPA==
X-Received: by 2002:a2e:1405:: with SMTP id u5mr4619209ljd.137.1621555430616; 
 Thu, 20 May 2021 17:03:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzPZc4H2Y4hAkVPTqEKOh1WdHXnKldKsyeMgCwEjITdNxHORoiwVToMhx6cyuK2hIWrTSLfeJEl7lCMqoeGy/c=
X-Received: by 2002:a2e:1405:: with SMTP id u5mr4619179ljd.137.1621555430294; 
 Thu, 20 May 2021 17:03:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210504092340.00006c61@intel.com>
 <87pmxpdr32.ffs@nanos.tec.linutronix.de>
 <CAFki+Lkjn2VCBcLSAfQZ2PEkx-TR0Ts_jPnK9b-5ne3PUX37TQ@mail.gmail.com>
 <87im3gewlu.ffs@nanos.tec.linutronix.de>
 <CAFki+L=gp10W1ygv7zdsee=BUGpx9yPAckKr7pyo=tkFJPciEg@mail.gmail.com>
 <CAFki+L=eQoMq+mWhw_jVT-biyuDXpxbXY5nO+F6HvCtpbG9V2w@mail.gmail.com>
In-Reply-To: <CAFki+L=eQoMq+mWhw_jVT-biyuDXpxbXY5nO+F6HvCtpbG9V2w@mail.gmail.com>
From: Nitesh Lal <nilal@redhat.com>
Date: Thu, 20 May 2021 20:03:38 -0400
Message-ID: <CAFki+LkB1sk3mOv4dd1D-SoPWHOs28ZwN-PqL_6xBk=Qkm40Lw@mail.gmail.com>
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

On Thu, May 20, 2021 at 5:57 PM Nitesh Lal <nilal@redhat.com> wrote:
>
> On Mon, May 17, 2021 at 8:23 PM Nitesh Lal <nilal@redhat.com> wrote:
> >
> > On Mon, May 17, 2021 at 8:04 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> > >
> > > On Mon, May 17 2021 at 18:44, Nitesh Lal wrote:
> > > > On Mon, May 17, 2021 at 4:48 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> > > >> The hint was added so that userspace has a better understanding where it
> > > >> should place the interrupt. So if irqbalanced ignores it anyway, then
> > > >> what's the point of the hint? IOW, why is it still used drivers?
> > > >>
> > > > Took a quick look at the irqbalance repo and saw the following commit:
> > > >
> > > > dcc411e7bf    remove affinity_hint infrastructure
> > > >
> > > > The commit message mentions that "PJ is redesiging how affinity hinting
> > > > works in the kernel, the future model will just tell us to ignore an IRQ,
> > > > and the kernel will handle placement for us.  As such we can remove the
> > > > affinity_hint recognition entirely".
> > >
> > > No idea who PJ is. I really love useful commit messages. Maybe Neil can
> > > shed some light on that.
> > >
> > > > This does indicate that apparently, irqbalance moved away from the usage of
> > > > affinity_hint. However, the next question is what was this future
> > > > model?
> > >
> > > I might have missed something in the last 5 years, but that's the first
> > > time I hear about someone trying to cleanup that thing.
> > >
> > > > I don't know but I can surely look into it if that helps or maybe someone
> > > > here already knows about it?
> > >
> > > I CC'ed Neil :)
> >
> > Thanks, I have added PJ Waskiewicz as well who I think was referred in
> > that commit message as PJ.
> >
> > >
> > > >> Now there is another aspect to that. What happens if irqbalanced does
> > > >> not run at all and a driver relies on the side effect of the hint
> > > >> setting the initial affinity. Bah...
> > > >>
> > > >
> > > > Right, but if they only rely on this API so that the IRQs are spread across
> > > > all the CPUs then that issue is already resolved and these other drivers
> > > > should not regress because of changing this behavior. Isn't it?
> > >
> > > Is that true for all architectures?
> >
> > Unfortunately, I don't know and that's probably why we have to be careful.
>
> I think here to ensure that we are not breaking any of the drivers we have
> to first analyze all the existing drivers and understand how they are using
> this API.
> AFAIK there are three possible scenarios:
>
> - A driver use this API to spread the IRQs
>   + For this case we should be safe considering the spreading is naturally
>     done from the IRQ subsystem itself.

Forgot to mention another thing in the above case is to determine whether
it is true for all architectures or not as Thomas mentioned.

>
> - A driver use this API to actually set the hint
>   + These drivers should have no functional impact because of this revert
>
> - Driver use this API to force a certain affinity mask
>   + In this case we have to replace the API with the irq_force_affinity()
>
> I can start looking into the individual drivers, however, testing them will
> be a challenge.
>
> Any thoughts?
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

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B0F386E47
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 May 2021 02:23:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9578E83E61;
	Tue, 18 May 2021 00:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NbV43rPQrdLG; Tue, 18 May 2021 00:23:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 968F183D72;
	Tue, 18 May 2021 00:23:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A98931BF315
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 May 2021 00:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9731A60724
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 May 2021 00:23:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzTMV5DnXLWS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 May 2021 00:23:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DF7860720
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 May 2021 00:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621297400;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1CFhwAdeADWfjY+TeEUXI0dttR2qRWxmhTMkaKMBCuk=;
 b=UYZaEetOebS9zOWu1FUz6LGrN+u/Tw0wjudDwjeHlvrZRWwTYwZG/+maG0ai0yZfc0dB5l
 DBkmUdaC2lHxEdaPMSiMfXC+/QTb6KpVyPwsU88j8m2v4Qp1u5yqL1JEhXYRsBaQzmKWrS
 zYPduMi7BE4J9WnNFqHsdM2efYd3Wms=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-283-QXTJHpmoNuiog5Ak3uLm6w-1; Mon, 17 May 2021 20:23:18 -0400
X-MC-Unique: QXTJHpmoNuiog5Ak3uLm6w-1
Received: by mail-lj1-f199.google.com with SMTP id
 t1-20020a2e9d010000b02900f5b2b52da7so1334743lji.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 17:23:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1CFhwAdeADWfjY+TeEUXI0dttR2qRWxmhTMkaKMBCuk=;
 b=LWIZtgb3pd8F4gYtFz/Bge3xVLZAFJbtkDPmlJ2Ag2uGteU627ncJjwc88XAovUUtG
 CblMxv7OjR/Cvue6AtCTzTwtNIIAYQ7ZuAY6Y+9fdYBSswM5IGDDTkrFIEE/2CMRNtyg
 Ix0VuOkAlDzaNa16G7cvUHVHuxm9FO1vJXwFMDB7yZHnIMGMXZPpHoPLh0M3V56srJ9L
 f8TwtRmW/etU88KBP99xxt8VCTxPUd+KKqy/QIkSkJ5LiglUyMrzIKb4lDaW5xoUlMno
 2wRvpMC+cx0bB3/pW/2uYwX7BVM+B6lzQLC5QuQfR/XiMzZ41jwXdK+ph8Bt8yVrR52j
 ANHw==
X-Gm-Message-State: AOAM533t7lcHID4UXJO13n4gIttGRDy08Tng4QJvaqM38WLLisXUWBBB
 IGCkiAmygHFt/srvSnpoOH2Y4g/UNk65SHK6TqiKBSO26PGlYrMcgg3fBUbIrLSdmUbiazZXWFW
 TBocDLf0xvjyoCyVQdgTgxYO9m8a1YtvGGotKDzzcOiVmSw==
X-Received: by 2002:a05:6512:3da1:: with SMTP id
 k33mr1954943lfv.114.1621297396945; 
 Mon, 17 May 2021 17:23:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyhOM/aeHK0aO1U0IXX7Bz97GQL+BiXI9gjCeNpT1VQx45C+gwAHC4wQS/KVuaPU2Um6MqyAaMyIDDi2YeTCBA=
X-Received: by 2002:a05:6512:3da1:: with SMTP id
 k33mr1954902lfv.114.1621297396624; 
 Mon, 17 May 2021 17:23:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210504092340.00006c61@intel.com>
 <87pmxpdr32.ffs@nanos.tec.linutronix.de>
 <CAFki+Lkjn2VCBcLSAfQZ2PEkx-TR0Ts_jPnK9b-5ne3PUX37TQ@mail.gmail.com>
 <87im3gewlu.ffs@nanos.tec.linutronix.de>
In-Reply-To: <87im3gewlu.ffs@nanos.tec.linutronix.de>
From: Nitesh Lal <nilal@redhat.com>
Date: Mon, 17 May 2021 20:23:05 -0400
Message-ID: <CAFki+L=gp10W1ygv7zdsee=BUGpx9yPAckKr7pyo=tkFJPciEg@mail.gmail.com>
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
 "bhelgaas@google.com" <bhelgaas@google.com>, pjwaskiewicz@gmail.com,
 Neil Horman <nhorman@tuxdriver.com>,
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

On Mon, May 17, 2021 at 8:04 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Mon, May 17 2021 at 18:44, Nitesh Lal wrote:
> > On Mon, May 17, 2021 at 4:48 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> >> The hint was added so that userspace has a better understanding where it
> >> should place the interrupt. So if irqbalanced ignores it anyway, then
> >> what's the point of the hint? IOW, why is it still used drivers?
> >>
> > Took a quick look at the irqbalance repo and saw the following commit:
> >
> > dcc411e7bf    remove affinity_hint infrastructure
> >
> > The commit message mentions that "PJ is redesiging how affinity hinting
> > works in the kernel, the future model will just tell us to ignore an IRQ,
> > and the kernel will handle placement for us.  As such we can remove the
> > affinity_hint recognition entirely".
>
> No idea who PJ is. I really love useful commit messages. Maybe Neil can
> shed some light on that.
>
> > This does indicate that apparently, irqbalance moved away from the usage of
> > affinity_hint. However, the next question is what was this future
> > model?
>
> I might have missed something in the last 5 years, but that's the first
> time I hear about someone trying to cleanup that thing.
>
> > I don't know but I can surely look into it if that helps or maybe someone
> > here already knows about it?
>
> I CC'ed Neil :)

Thanks, I have added PJ Waskiewicz as well who I think was referred in
that commit message as PJ.

>
> >> Now there is another aspect to that. What happens if irqbalanced does
> >> not run at all and a driver relies on the side effect of the hint
> >> setting the initial affinity. Bah...
> >>
> >
> > Right, but if they only rely on this API so that the IRQs are spread across
> > all the CPUs then that issue is already resolved and these other drivers
> > should not regress because of changing this behavior. Isn't it?
>
> Is that true for all architectures?

Unfortunately, I don't know and that's probably why we have to be careful.

--
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAF5392F15
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 15:06:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B24B83D64;
	Thu, 27 May 2021 13:06:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bCHe0cYvh_pp; Thu, 27 May 2021 13:06:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D492D83D76;
	Thu, 27 May 2021 13:06:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEDAE1BF381
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 13:06:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA9D44067C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 13:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Zr2VhyCz9kr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 13:06:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8353B40649
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 13:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1622120785;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ULXKpUDeK1p76UZ59lVMj02cPEcED36GdHXBm75qmHc=;
 b=T+c/d6oPAmaVPFhbLIVj8DyGoR7t7qs2jtKlj7Z/wk1fZW4vvUg2zvfH5p09jVTmv8VKSl
 5F1xEPlBtq3TgrrN6/X8G6y0hyhubXcLUM4pKunJGUUrQ0R2ct2MabrZpBGt/6tHmYsB1G
 XP/mqGS7bJh1xx+bYbXQsMWlSYmZ6ag=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-601-5vNCn0K5PBKWVX-Gos-Jig-1; Thu, 27 May 2021 09:06:19 -0400
X-MC-Unique: 5vNCn0K5PBKWVX-Gos-Jig-1
Received: by mail-lj1-f199.google.com with SMTP id
 h21-20020a2ea4950000b0290113ab72f778so223361lji.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 06:06:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ULXKpUDeK1p76UZ59lVMj02cPEcED36GdHXBm75qmHc=;
 b=p5/RTYKFqmQaMXqpBkyDvLd2ty//UqrbV26Ugu6Zt5bHOl5qMAL0vxMBD/+73UCCvN
 c5Bj2YLzlutZwgOUfT1MFDUx0nNrKSZHbQyj+Wqc+tRVkw9GAPs9p0tLU0LRT7EIKwgt
 w1DHey4pq8N4/Av1R4zvoZXuXHwR7onTQLRW1qElakCIMG+PXmnBQ46pEO602jweYcYg
 eGU5rHQkTy4fUZ9uHdmRWl+pt8a8S6QIoPZie+cmMt/lN3Q4lBhmST0orkbe0ZGt/M4F
 8Pap98B10Eokp96vSzK1om+z7skT09pUEHb40oNcXE/ooNH/sngWl3zzHf5XJrDOxqCT
 QnnA==
X-Gm-Message-State: AOAM532G6uPj9rPeU29RiR0i8UlwjDnWY7WZhZ52HplFiWzmp5EWRgiO
 /iEFgwpsBFOsttEd/cgtD/FSoDv49RbwFFfa7/hEVBSqnbE6/DdYbeMHtpvY/GR3s5ACbgtHXKA
 Y4lz5KFAVVZk045T0jcaMROlaSIC+vtFuI4ZRxy9X9cdLhw==
X-Received: by 2002:a05:651c:511:: with SMTP id
 o17mr2571077ljp.14.1622120777522; 
 Thu, 27 May 2021 06:06:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZlraGIBVHBafxiPicFv+vN1bDWs7vAmvm5tSF3zLlOVmiHaJA9AlrZjZFdI/T3bbEWL91czd9UgOjRUHHQgQ=
X-Received: by 2002:a05:651c:511:: with SMTP id
 o17mr2571013ljp.14.1622120777212; 
 Thu, 27 May 2021 06:06:17 -0700 (PDT)
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
 <YK9ucRrjq+eck/G7@syu-laptop>
In-Reply-To: <YK9ucRrjq+eck/G7@syu-laptop>
From: Nitesh Lal <nilal@redhat.com>
Date: Thu, 27 May 2021 09:06:04 -0400
Message-ID: <CAFki+LnuharcwJy=x4Z27ixCMK1u2s2cvHh9=Bcf90rO06osEw@mail.gmail.com>
To: Shung-Hsi Yu <shung-hsi.yu@suse.com>
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
 "bhelgaas@google.com" <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, pjwaskiewicz@gmail.com,
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

On Thu, May 27, 2021 at 6:03 AM Shung-Hsi Yu <shung-hsi.yu@suse.com> wrote:
>
> Hi,
>
> On Fri, May 21, 2021 at 02:03:06PM +0200, Thomas Gleixner wrote:
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
> >                              the interrupt
> >
> > Make irq_set_affinity_hint() a wrapper around irq_apply_affinity_hint() and
> > document it to be phased out.
>
> Is there recommended way to retrieve the CPU number that the interrupt has
> affinity?
>
> Previously a driver (I'm looking at drivers/net/ethernet/amazon/ena) that
> uses irq_set_affinity_hint() to spread out IRQ knows the corresponding CPU
> number since they're using their own spreading scheme. Now, phasing out
> irq_set_affinity_hint(), and thus relying on request_irq() to spread the
> load instead, there don't seem to be a easy way to get the CPU number.
>

For drivers that don't want to rely on request_irq for spreading and want
to force their own affinity mask can use irq_set_affinity() which is an
exported interface now [1] and clearly indicates the purpose of the usage.

As Thomas suggested we are still keeping irq_set_affinity_hint() as a
wrapper until we make appropriate changes in individual drivers that use
this API for different reasons. Please feel free to send out a patch
for this driver once the changes are merged.

[1] https://lkml.org/lkml/2021/5/18/271

-- 
Thanks
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9117F383A9A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 18:57:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0FBC4057B;
	Mon, 17 May 2021 16:57:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9tCGKxf1uIId; Mon, 17 May 2021 16:57:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5B3340394;
	Mon, 17 May 2021 16:57:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7CC81BF329
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 16:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5963608D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 16:57:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zzhxRL3NYEai for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 16:57:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93FCB6001E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 16:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621270665;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PWn0ER8ktL8CjGxRv5Ynu626ORHTDXR+dt3CTUoFfXU=;
 b=IaZK3Yz7WJhiHXjwrDrOJ5wpSjrtZGO96A/jkzhFcRoRzJihf/WLOISI+VnCjdUOkUZuHv
 H5aLWkFyjFn4RE3ojrOE1BXe12LMlDfzo9Y35xFuVWEy+89uOdE6Imh9VRl97Buv0QcLFG
 C6Ivf4o7E77pQLLoh1UtUemkZBy0NHY=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-153-IqDFG0OPMUqCGNc7htnDtg-1; Mon, 17 May 2021 12:57:40 -0400
X-MC-Unique: IqDFG0OPMUqCGNc7htnDtg-1
Received: by mail-lf1-f69.google.com with SMTP id
 j5-20020a196e050000b02901cdb8a45c2eso1179302lfc.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 09:57:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PWn0ER8ktL8CjGxRv5Ynu626ORHTDXR+dt3CTUoFfXU=;
 b=NJ0NpogKDRWOcTLCFNLW9vddRk5BzvQ64seruIP4JqalCsm6zmt0ghJorYpNDl/ZRn
 TtxKefQ+tpxmnWGkXT8BDoABmvQ16+sOeegKidQaav8aG3KkJsr7euPszpiTVonCeQrm
 nZpPQpLVKpuxfrVF+307Ph7btNhWXAOYu4MKSobl1xKqssyWjmYVYOAwXiiMnBJZVWst
 RKJ8yRB/6otD0xfOLNbqDwOk+XDZ677vrDp9DQJQUff+W1axbDxpEhe0S/gKe8CZ5bN6
 cu7F1s0wcfcwfRXYR6ATkY5dd1ZeY6Via/uJJjLSzY1n1CpBjI0F82ppEF8qZhIrLOyW
 XIKQ==
X-Gm-Message-State: AOAM533w0HyePqurxY712cWXVqMDt6UPMalu82NgPubRGMB/a/nKpGwH
 0plC5tasDKUjKT45hlBQcFyl4Vr+dgyX22nOUvu0iiBY8+yYZC/wvzLrQyXUv/PWQszOVw7L8HY
 43l/Qov2zMdH4qKIIRiQpLA5Yqwjq2dHbvvhzH/amD9ydpg==
X-Received: by 2002:ac2:51ce:: with SMTP id u14mr93687lfm.252.1621270659010;
 Mon, 17 May 2021 09:57:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzyffO4JpeGGpWTWQd6pBCcoqe0gRG4gxJB9gvjMRQo0SkkR936sREfwD/ThH7qQxY0d+BxlHTLIVDrxnuu2xs=
X-Received: by 2002:ac2:51ce:: with SMTP id u14mr93653lfm.252.1621270658676;
 Mon, 17 May 2021 09:57:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210501021832.743094-1-jesse.brandeburg@intel.com>
 <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
 <20210504092340.00006c61@intel.com>
In-Reply-To: <20210504092340.00006c61@intel.com>
From: Nitesh Lal <nilal@redhat.com>
Date: Mon, 17 May 2021 12:57:26 -0400
Message-ID: <CAFki+LmR-o+Fng21ggy48FUX7RhjjpjO87dn3Ld+L4BK2pSRZg@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>,
 "frederic@kernel.org" <frederic@kernel.org>, 
 "juri.lelli@redhat.com" <juri.lelli@redhat.com>,
 Marcelo Tosatti <mtosatti@redhat.com>
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
Cc: "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 Marc Zyngier <maz@kernel.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 netdev@vger.kernel.org, "peterz@infradead.org" <peterz@infradead.org>,
 Alex Belits <abelits@marvell.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 linux-kernel@vger.kernel.org, "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "jinyuqi@huawei.com" <jinyuqi@huawei.com>,
 "rppt@linux.vnet.ibm.com" <rppt@linux.vnet.ibm.com>,
 intel-wired-lan@lists.osuosl.org,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, jbrandeb@kernel.org,
 Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 4, 2021 at 12:25 PM Jesse Brandeburg
<jesse.brandeburg@intel.com> wrote:
>
> Robin Murphy wrote:
>
> > On 2021-05-01 03:18, Jesse Brandeburg wrote:
> > > It was pointed out by Nitesh that the original work I did in 2014
> > > to automatically set the interrupt affinity when requesting a
> > > mask is no longer necessary. The kernel has moved on and no
> > > longer has the original problem, BUT the original patch
> > > introduced a subtle bug when booting a system with reserved or
> > > excluded CPUs. Drivers calling this function with a mask value
> > > that included a CPU that was currently or in the future
> > > unavailable would generally not update the hint.
> > >
> > > I'm sure there are a million ways to solve this, but the simplest
> > > one is to just remove a little code that tries to force the
> > > affinity, as Nitesh has shown it fixes the bug and doesn't seem
> > > to introduce immediate side effects.
> >
> > Unfortunately, I think there are quite a few other drivers now relying
> > on this behaviour, since they are really using irq_set_affinity_hint()
> > as a proxy for irq_set_affinity(). Partly since the latter isn't
> > exported to modules, but also I have a vague memory of it being said
> > that it's nice to update the user-visible hint to match when the
> > affinity does have to be forced to something specific.
> >
> > Robin.
>
> Thanks for your feedback Robin, but there is definitely a bug here that
> is being exposed by this code. The fact that people are using this
> function means they're all exposed to this bug.
>
> Not sure if you saw, but this analysis from Nitesh explains what
> happened chronologically to the kernel w.r.t this code, it's a useful
> analysis! [1]
>
> I'd add in addition that irqbalance daemon *stopped* paying attention
> to hints quite a while ago, so I'm not quite sure what purpose they
> serve.
>
> [1]
> https://lore.kernel.org/lkml/CAFki+Lm0W_brLu31epqD3gAV+WNKOJfVDfX2M8ZM__aj3nv9uA@mail.gmail.com/
>

Wanted to follow up to see if there are any more objections or even
suggestions to take this forward?

-- 
Thanks
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

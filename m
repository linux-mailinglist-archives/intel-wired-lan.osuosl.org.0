Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14492386E0B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 May 2021 02:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AE6840343;
	Tue, 18 May 2021 00:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y2yclHJhX5VF; Tue, 18 May 2021 00:04:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C86584030B;
	Tue, 18 May 2021 00:04:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F6251C1127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 May 2021 00:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E639A402CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 May 2021 00:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F1AOjRkl-Qhx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 May 2021 00:04:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BD4F4030B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 May 2021 00:04:01 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1621296237;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GHW7rXkDeIGk/f09UxCJTS97zy7h+pIJUZoYLG1bdJY=;
 b=azzdYFzdrDBd1cHZb+nfIEb6gPXpuJVbIecZfpj1yx84NpBZx8TdlCkKaP40YGn77M9c9A
 tl7fXGZS8t9aOWPi3BrzQ+stk8LUxYpV4RMvOEU/B7Z1KpeBRaHwi5xAbJQ4ZAzD+0Yr3i
 fVh9qavYuNAAna0Ds5WMaCuChBhsW6qpQ4FOLsUW8+JrvdWjeB07XMATzIf2gAnB7cUt3G
 ZaTNGxYBY91bdtLlaGiQldTD3YGcS7ll5EDzakY1Vi2y4XGcKhfBjL1QmWOVmyl15GKDG6
 fPcFCJkCABqpd7Tf3nM9P8mltnChwshTp/sMYJxCUpHPAD5iNP4JLWbAhalZWg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1621296237;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GHW7rXkDeIGk/f09UxCJTS97zy7h+pIJUZoYLG1bdJY=;
 b=aKXRsDXe8OZvqv/EJLQWaYBETlUl0og14+GClrJNmh8MKDKm1XxVvecVbCeN1DyMaI0GdQ
 oI+7KyfNIXqLTACg==
To: Nitesh Lal <nilal@redhat.com>
In-Reply-To: <CAFki+Lkjn2VCBcLSAfQZ2PEkx-TR0Ts_jPnK9b-5ne3PUX37TQ@mail.gmail.com>
References: <20210504092340.00006c61@intel.com>
 <87pmxpdr32.ffs@nanos.tec.linutronix.de>
 <CAFki+Lkjn2VCBcLSAfQZ2PEkx-TR0Ts_jPnK9b-5ne3PUX37TQ@mail.gmail.com>
Date: Tue, 18 May 2021 02:03:57 +0200
Message-ID: <87im3gewlu.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
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

On Mon, May 17 2021 at 18:44, Nitesh Lal wrote:
> On Mon, May 17, 2021 at 4:48 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>> The hint was added so that userspace has a better understanding where it
>> should place the interrupt. So if irqbalanced ignores it anyway, then
>> what's the point of the hint? IOW, why is it still used drivers?
>>
> Took a quick look at the irqbalance repo and saw the following commit:
>
> dcc411e7bf    remove affinity_hint infrastructure
>
> The commit message mentions that "PJ is redesiging how affinity hinting
> works in the kernel, the future model will just tell us to ignore an IRQ,
> and the kernel will handle placement for us.  As such we can remove the
> affinity_hint recognition entirely".

No idea who PJ is. I really love useful commit messages. Maybe Neil can
shed some light on that.

> This does indicate that apparently, irqbalance moved away from the usage of
> affinity_hint. However, the next question is what was this future
> model?

I might have missed something in the last 5 years, but that's the first
time I hear about someone trying to cleanup that thing.

> I don't know but I can surely look into it if that helps or maybe someone
> here already knows about it?

I CC'ed Neil :)

>> Now there is another aspect to that. What happens if irqbalanced does
>> not run at all and a driver relies on the side effect of the hint
>> setting the initial affinity. Bah...
>>
>
> Right, but if they only rely on this API so that the IRQs are spread across
> all the CPUs then that issue is already resolved and these other drivers
> should not regress because of changing this behavior. Isn't it?

Is that true for all architectures?

>> While none of the drivers (except the perf muck) actually prevents
>> userspace from fiddling with the affinity (via IRQF_NOBALANCING) a
>> deeper inspection shows that they actually might rely on the current
>> behaviour if irqbalanced is disabled. Of course every driver has its own
>> convoluted way to do that and all of those functions are well
>> documented. What a mess.
>>
>> If the hint still serves a purpose then we can provide a variant which
>> solely applies the hint and does not fiddle with the actual affinity,
>> but if the hint is useless anyway then we have a way better option to
>> clean that up.
>>
>
> +1

= 1

Thanks,

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC032383B3E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 19:26:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D5764038F;
	Mon, 17 May 2021 17:26:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ODqfPcTm3VTd; Mon, 17 May 2021 17:26:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77F544037B;
	Mon, 17 May 2021 17:26:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 068FB1BF344
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 17:26:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E89084036A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 17:26:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qH4BWwPx9TVl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 17:26:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by smtp2.osuosl.org (Postfix) with ESMTP id B9D4F40101
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 17:26:28 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B66891FB;
 Mon, 17 May 2021 10:26:27 -0700 (PDT)
Received: from [10.57.66.179] (unknown [10.57.66.179])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C8DCA3F73D;
 Mon, 17 May 2021 10:26:23 -0700 (PDT)
To: Nitesh Lal <nilal@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "juri.lelli@redhat.com" <juri.lelli@redhat.com>,
 Marcelo Tosatti <mtosatti@redhat.com>
References: <20210501021832.743094-1-jesse.brandeburg@intel.com>
 <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
 <20210504092340.00006c61@intel.com>
 <CAFki+LmR-o+Fng21ggy48FUX7RhjjpjO87dn3Ld+L4BK2pSRZg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <bf1d4892-0639-0bbf-443e-ba284a8ed457@arm.com>
Date: Mon, 17 May 2021 18:26:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAFki+LmR-o+Fng21ggy48FUX7RhjjpjO87dn3Ld+L4BK2pSRZg@mail.gmail.com>
Content-Language: en-GB
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2021-05-17 17:57, Nitesh Lal wrote:
> On Tue, May 4, 2021 at 12:25 PM Jesse Brandeburg
> <jesse.brandeburg@intel.com> wrote:
>>
>> Robin Murphy wrote:
>>
>>> On 2021-05-01 03:18, Jesse Brandeburg wrote:
>>>> It was pointed out by Nitesh that the original work I did in 2014
>>>> to automatically set the interrupt affinity when requesting a
>>>> mask is no longer necessary. The kernel has moved on and no
>>>> longer has the original problem, BUT the original patch
>>>> introduced a subtle bug when booting a system with reserved or
>>>> excluded CPUs. Drivers calling this function with a mask value
>>>> that included a CPU that was currently or in the future
>>>> unavailable would generally not update the hint.
>>>>
>>>> I'm sure there are a million ways to solve this, but the simplest
>>>> one is to just remove a little code that tries to force the
>>>> affinity, as Nitesh has shown it fixes the bug and doesn't seem
>>>> to introduce immediate side effects.
>>>
>>> Unfortunately, I think there are quite a few other drivers now relying
>>> on this behaviour, since they are really using irq_set_affinity_hint()
>>> as a proxy for irq_set_affinity(). Partly since the latter isn't
>>> exported to modules, but also I have a vague memory of it being said
>>> that it's nice to update the user-visible hint to match when the
>>> affinity does have to be forced to something specific.
>>>
>>> Robin.
>>
>> Thanks for your feedback Robin, but there is definitely a bug here that
>> is being exposed by this code. The fact that people are using this
>> function means they're all exposed to this bug.
>>
>> Not sure if you saw, but this analysis from Nitesh explains what
>> happened chronologically to the kernel w.r.t this code, it's a useful
>> analysis! [1]
>>
>> I'd add in addition that irqbalance daemon *stopped* paying attention
>> to hints quite a while ago, so I'm not quite sure what purpose they
>> serve.
>>
>> [1]
>> https://lore.kernel.org/lkml/CAFki+Lm0W_brLu31epqD3gAV+WNKOJfVDfX2M8ZM__aj3nv9uA@mail.gmail.com/
>>
> 
> Wanted to follow up to see if there are any more objections or even
> suggestions to take this forward?

Oops, sorry, seems I got distracted before getting round to actually 
typing up my response :)

I'm not implying that there isn't a bug, or that this code ever made 
sense in the first place, just that fixing it will unfortunately be a 
bit more involved than a simple revert. This patch as-is *will* subtly 
break at least the system PMU drivers currently using 
irq_set_affinity_hint() - those I know require the IRQ affinity to 
follow whichever CPU the PMU context is bound to, in order to meet perf 
core's assumptions about mutual exclusion.

As far as the consistency argument goes, maybe that's just backwards and 
it should be irq_set_affinity() that also sets the hint, to indicate to 
userspace that the affinity has been forced by the kernel? Either way 
we'll need to do a little more diligence to figure out which callers 
actually care about more than just the hint, and sort them out first.

Robin.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

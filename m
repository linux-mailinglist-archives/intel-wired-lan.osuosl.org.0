Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C454E386B2B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 22:18:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCF8D4037A;
	Mon, 17 May 2021 20:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yt1MIQIEb_SX; Mon, 17 May 2021 20:18:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B752940351;
	Mon, 17 May 2021 20:18:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6FD71BF348
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 20:18:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3C7940351
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 20:18:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zc_GKLg4QDeo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 20:18:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EEC874028C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 20:18:29 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1621282707;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4CblS4NWUSycccK6+ysE1vs1G6nKpvCAliA4XuNuKT4=;
 b=sZEsINB9gW9rWKIThv/nJUQdVS0LVVxt3mk9SLmr2mnPlVG6wz5VMOrR7yTWtsO+G2D6xU
 BsKI+EgFjlUDMXiDx5ZOIVJHVJDh9digvYou8HnEtX73UoubWvL37hI5Q5gUp7X55T9mjj
 DOvrg+Fa5Cpa5GgGRmPsvz97s/IuHhEDUM7F7dXXjqJwipMa2zywAtAX872nuQ6XOq/nZK
 qFUa/G8sO96R7rbVv6P6biiiDfkCYzjDpIc1iYfmyscNYYql/ptdLI5v31jgwegubZ9sNX
 NJe6nlaunx1HUNB9R5DV7FYvBa2vEyqI/HssiVTqhgtGPdCPjCergsWkw3eF8w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1621282707;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4CblS4NWUSycccK6+ysE1vs1G6nKpvCAliA4XuNuKT4=;
 b=nwXJo4JSXCjScrrvNBVQbD7dDyHa0ScZKzi1rD3hgFRAW9j4kIZ6zia4oYhFw9afxGfUeN
 THODgb+5xRdI+9CA==
To: Robin Murphy <robin.murphy@arm.com>, Nitesh Lal <nilal@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "frederic\@kernel.org" <frederic@kernel.org>,
 "juri.lelli\@redhat.com" <juri.lelli@redhat.com>,
 Marcelo Tosatti <mtosatti@redhat.com>
In-Reply-To: <874kf1faac.ffs@nanos.tec.linutronix.de>
References: <20210501021832.743094-1-jesse.brandeburg@intel.com>
 <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
 <20210504092340.00006c61@intel.com>
 <CAFki+LmR-o+Fng21ggy48FUX7RhjjpjO87dn3Ld+L4BK2pSRZg@mail.gmail.com>
 <bf1d4892-0639-0bbf-443e-ba284a8ed457@arm.com>
 <87sg2lz0zz.ffs@nanos.tec.linutronix.de>
 <d1d5e797-49ee-4968-88c6-c07119343492@arm.com>
 <874kf1faac.ffs@nanos.tec.linutronix.de>
Date: Mon, 17 May 2021 22:18:27 +0200
Message-ID: <87sg2ldsh8.ffs@nanos.tec.linutronix.de>
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

On Mon, May 17 2021 at 21:08, Thomas Gleixner wrote:
> On Mon, May 17 2021 at 19:50, Robin Murphy wrote:
>> On 2021-05-17 19:08, Thomas Gleixner wrote:
>>> On Mon, May 17 2021 at 18:26, Robin Murphy wrote:
>>>> On 2021-05-17 17:57, Nitesh Lal wrote:
>>>> I'm not implying that there isn't a bug, or that this code ever made
>>>> sense in the first place, just that fixing it will unfortunately be a
>>>> bit more involved than a simple revert. This patch as-is *will* subtly
>>>> break at least the system PMU drivers currently using
>>> 
>>> s/using/abusing/
>>> 
>>>> irq_set_affinity_hint() - those I know require the IRQ affinity to
>>>> follow whichever CPU the PMU context is bound to, in order to meet perf
>>>> core's assumptions about mutual exclusion.
>>> 
>>> Which driver is that?
>>
>> Right now, any driver which wants to control an IRQ's affinity and also 
>> build as a module, for one thing. I'm familiar with drivers/perf/ where 
>> a basic pattern has been widely copied;
>
> Bah. Why the heck can't people talk and just go and rumage until they
> find something which hopefully does what they want...
>
> The name of that function should have rang all alarm bells...

Aside of that all the warnings around the return value are useless cargo
cult. Why?

The only reason why this function returns an error code is when there is
no irq descriptor assigned to the interrupt number, which is well close
to impossible in that context.

But it does _NOT_ return an error when the actual affinity setting
fails...

Thanks,

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

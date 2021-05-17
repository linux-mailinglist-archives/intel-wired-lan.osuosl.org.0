Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE52383CB5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 20:50:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 295E583D81;
	Mon, 17 May 2021 18:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xJE4P4OdOTDL; Mon, 17 May 2021 18:50:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D717E83D89;
	Mon, 17 May 2021 18:50:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A2D61BF308
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 18:50:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3752383C3C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 18:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HtScyQNFQb-V for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 18:50:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by smtp1.osuosl.org (Postfix) with ESMTP id 50FDD83CB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 18:50:46 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28FB331B;
 Mon, 17 May 2021 11:50:45 -0700 (PDT)
Received: from [10.57.66.179] (unknown [10.57.66.179])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60CBF3F73D;
 Mon, 17 May 2021 11:50:41 -0700 (PDT)
To: Thomas Gleixner <tglx@linutronix.de>, Nitesh Lal <nilal@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "juri.lelli@redhat.com" <juri.lelli@redhat.com>,
 Marcelo Tosatti <mtosatti@redhat.com>
References: <20210501021832.743094-1-jesse.brandeburg@intel.com>
 <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
 <20210504092340.00006c61@intel.com>
 <CAFki+LmR-o+Fng21ggy48FUX7RhjjpjO87dn3Ld+L4BK2pSRZg@mail.gmail.com>
 <bf1d4892-0639-0bbf-443e-ba284a8ed457@arm.com>
 <87sg2lz0zz.ffs@nanos.tec.linutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d1d5e797-49ee-4968-88c6-c07119343492@arm.com>
Date: Mon, 17 May 2021 19:50:35 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <87sg2lz0zz.ffs@nanos.tec.linutronix.de>
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

On 2021-05-17 19:08, Thomas Gleixner wrote:
> On Mon, May 17 2021 at 18:26, Robin Murphy wrote:
>> On 2021-05-17 17:57, Nitesh Lal wrote:
>> I'm not implying that there isn't a bug, or that this code ever made
>> sense in the first place, just that fixing it will unfortunately be a
>> bit more involved than a simple revert. This patch as-is *will* subtly
>> break at least the system PMU drivers currently using
> 
> s/using/abusing/
> 
>> irq_set_affinity_hint() - those I know require the IRQ affinity to
>> follow whichever CPU the PMU context is bound to, in order to meet perf
>> core's assumptions about mutual exclusion.
> 
> Which driver is that?

Right now, any driver which wants to control an IRQ's affinity and also 
build as a module, for one thing. I'm familiar with drivers/perf/ where 
a basic pattern has been widely copied; some of the callers in other 
subsystems appear to *expect* it to set the underlying affinity as well, 
but whether any of those added within the last 6 years represent a 
functional dependency rather than just a performance concern I don't know.

Robin.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

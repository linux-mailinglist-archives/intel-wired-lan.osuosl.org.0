Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CF72955D7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Oct 2020 02:55:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51A0E86935;
	Thu, 22 Oct 2020 00:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rLD4JuE9yd2Q; Thu, 22 Oct 2020 00:55:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35DB186938;
	Thu, 22 Oct 2020 00:55:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F0D6F1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 00:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC850868CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 00:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yNEX7_k7E_jQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Oct 2020 00:27:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E8D53868BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 00:27:34 +0000 (UTC)
IronPort-SDR: 5UyOXBUoLprqgEekQhuQM2Dg3EijGzmKZ8ptWAfAXtL/ZXOMYGVlXbYBMPXYy2555MuY9MiAqK
 /4SDQ0N9nFsQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="167547037"
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="167547037"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 17:27:32 -0700
IronPort-SDR: 1Ma8nA7sjOvVStgOnzIylMyaFuV52Ohtj7fxjd8IkeVlQmA9SrnuaTHQBSN746g9c1VlsDbLrp
 zHd9Be+NoaXQ==
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="359067328"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.209.13.114])
 ([10.209.13.114])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 17:27:24 -0700
To: Jakub Kicinski <kuba@kernel.org>, Thomas Gleixner <tglx@linutronix.de>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-5-nitesh@redhat.com>
 <87v9f57zjf.fsf@nanos.tec.linutronix.de>
 <3bca9eb1-a318-1fc6-9eee-aacc0293a193@redhat.com>
 <87lfg093fo.fsf@nanos.tec.linutronix.de>
 <877drj72cz.fsf@nanos.tec.linutronix.de>
 <20201021170224.55aea948@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <a1c6cdcd-7f89-5ed3-c869-ffec05929786@intel.com>
Date: Wed, 21 Oct 2020 17:27:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201021170224.55aea948@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: en-US
X-Mailman-Approved-At: Thu, 22 Oct 2020 00:55:04 +0000
Subject: Re: [Intel-wired-lan] [PATCH v4 4/4] PCI: Limit
 pci_alloc_irq_vectors() to housekeeping CPUs
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
Cc: juri.lelli@redhat.com, peterz@infradead.org, linux-pci@vger.kernel.org,
 sassmann@redhat.com, vincent.guittot@linaro.org, hch@infradead.org,
 mingo@redhat.com, intel-wired-lan@lists.osuosl.org, helgaas@kernel.org,
 thomas.lendacky@amd.com, lgoncalv@redhat.com, frederic@kernel.org,
 jlelli@redhat.com, jiri@nvidia.com, bhelgaas@google.com,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Nitesh Narayan Lal <nitesh@redhat.com>, mike.marciniszyn@intel.com,
 netdev@vger.kernel.org, dennis.dalessandro@intel.com, mtosatti@redhat.com,
 linux-kernel@vger.kernel.org, Saeed Mahameed <saeedm@nvidia.com>,
 Dave Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/21/2020 5:02 PM, Jakub Kicinski wrote:
> On Wed, 21 Oct 2020 22:25:48 +0200 Thomas Gleixner wrote:
>> On Tue, Oct 20 2020 at 20:07, Thomas Gleixner wrote:
>>> On Tue, Oct 20 2020 at 12:18, Nitesh Narayan Lal wrote:  
>>>> However, IMHO we would still need a logic to prevent the devices from
>>>> creating excess vectors.  
>>>
>>> Managed interrupts are preventing exactly that by pinning the interrupts
>>> and queues to one or a set of CPUs, which prevents vector exhaustion on
>>> CPU hotplug.
>>>
>>> Non-managed, yes that is and always was a problem. One of the reasons
>>> why managed interrupts exist.  
>>
>> But why is this only a problem for isolation? The very same problem
>> exists vs. CPU hotplug and therefore hibernation.
>>
>> On x86 we have at max. 204 vectors available for device interrupts per
>> CPU. So assumed the only device interrupt in use is networking then any
>> machine which has more than 204 network interrupts (queues, aux ...)
>> active will prevent the machine from hibernation.
>>
>> Aside of that it's silly to have multiple queues targeted at a single
>> CPU in case of hotplug. And that's not a theoretical problem.  Some
>> power management schemes shut down sockets when the utilization of a
>> system is low enough, e.g. outside of working hours.
>>
>> The whole point of multi-queue is to have locality so that traffic from
>> a CPU goes through the CPU local queue. What's the point of having two
>> or more queues on a CPU in case of hotplug?
>>
>> The right answer to this is to utilize managed interrupts and have
>> according logic in your network driver to handle CPU hotplug. When a CPU
>> goes down, then the queue which is associated to that CPU is quiesced
>> and the interrupt core shuts down the relevant interrupt instead of
>> moving it to an online CPU (which causes the whole vector exhaustion
>> problem on x86). When the CPU comes online again, then the interrupt is
>> reenabled in the core and the driver reactivates the queue.
> 
> I think Mellanox folks made some forays into managed irqs, but I don't
> remember/can't find the details now.
> 

I remember looking into this a few years ago, and not getting very far
either.

> For networking the locality / queue per core does not always work,
> since the incoming traffic is usually spread based on a hash. Many
> applications perform better when network processing is done on a small
> subset of CPUs, and application doesn't get interrupted every 100us. 
> So we do need extra user control here.
> 
> We have a bit of a uAPI problem since people had grown to depend on
> IRQ == queue == NAPI to configure their systems. "The right way" out
> would be a proper API which allows associating queues with CPUs rather
> than IRQs, then we can use managed IRQs and solve many other problems.
> 

I think we (Intel) hit some of the same issues you mention.

I know I personally would like to see something that lets a lot of the
current driver-specific policy be moved out. I think it should be
possible to significantly simplify the abstraction used by the drivers.

> Such new API has been in the works / discussions for a while now.
> 
> (Magnus keep me honest here, if you disagree the queue API solves this.)
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

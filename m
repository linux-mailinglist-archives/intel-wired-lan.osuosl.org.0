Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E73E298EAA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Oct 2020 14:58:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F20DA86791;
	Mon, 26 Oct 2020 13:57:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jvZfS1MoQoBX; Mon, 26 Oct 2020 13:57:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2944D867A9;
	Mon, 26 Oct 2020 13:57:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A17CF1BF334
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 13:57:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9775685F72
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 13:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VNwr8l-AnepL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Oct 2020 13:57:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 60AA885DB8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 13:57:54 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1603720670;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=h/OHUc3ZTxOnSdMTpC8YgapP1SujhOMZOgiAI8wwc4U=;
 b=sXwkSST6XFQnFqHxHusBURIJifh54p6cswdp4kZT9Au+dIQKZwf+Cl6lOu99Ku1z4waAbv
 S7Yba9KIEFyjoX1tdM2UUKI0YDPkMmXDWoJ0UzB/LlxfvMfoqtbvpHRM346XPxG4M4Q0h4
 CMxYrvM/JwMDEV7BAzVgqefIjEclU/HcY4SsBT+26NUXk/txXB+Agqw6C5N7ekHZ4wVm6P
 ozkzEVZ3FUkJ+iTf9A1TAFqiDPxYvcbOe14glk14VzbgFwTShw9/nL/UadaoxV+SRhvfDH
 zYz4ZeM4HBkWUP5LO/4y3uq1bVf/wl1eqXDSoD1a2T197SIOCUzjA6toKVn1Hg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1603720670;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=h/OHUc3ZTxOnSdMTpC8YgapP1SujhOMZOgiAI8wwc4U=;
 b=YTD8pQVsZ/dvyFc0Ulx/a2JJ55MggdrwnYcIhkaJljDxKZJg9ScYPatGMDvfkoFxN1XCdn
 MU+dolBlFXph34DA==
To: Nitesh Narayan Lal <nitesh@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
In-Reply-To: <9529ddd0-28f7-fa74-e56f-39de84321a22@redhat.com>
References: <20200928183529.471328-5-nitesh@redhat.com>
 <20201016122046.GP2611@hirez.programming.kicks-ass.net>
 <79f382a7-883d-ff42-394d-ec4ce81fed6a@redhat.com>
 <20201019111137.GL2628@hirez.programming.kicks-ass.net>
 <20201019140005.GB17287@fuller.cnet>
 <20201020073055.GY2611@hirez.programming.kicks-ass.net>
 <078e659e-d151-5bc2-a7dd-fe0070267cb3@redhat.com>
 <20201020134128.GT2628@hirez.programming.kicks-ass.net>
 <6736e643-d4ae-9919-9ae1-a73d5f31463e@redhat.com>
 <260f4191-5b9f-6dc1-9f11-085533ac4f55@redhat.com>
 <20201023085826.GP2611@hirez.programming.kicks-ass.net>
 <9ee77056-ef02-8696-5b96-46007e35ab00@redhat.com>
 <87ft6464jf.fsf@nanos.tec.linutronix.de>
 <9529ddd0-28f7-fa74-e56f-39de84321a22@redhat.com>
Date: Mon, 26 Oct 2020 14:57:50 +0100
Message-ID: <878sbt3x9d.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
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
Cc: juri.lelli@redhat.com, linux-pci@vger.kernel.org, sassmann@redhat.com,
 vincent.guittot@linaro.org, hch@infradead.org, mingo@redhat.com,
 intel-wired-lan@lists.osuosl.org, helgaas@kernel.org, thomas.lendacky@amd.com,
 lgoncalv@redhat.com, frederic@kernel.org, jlelli@redhat.com, jiri@nvidia.com,
 bhelgaas@google.com, mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, Marcelo Tosatti <mtosatti@redhat.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 26 2020 at 09:35, Nitesh Narayan Lal wrote:
> On 10/23/20 5:00 PM, Thomas Gleixner wrote:
>> An isolated setup, which I'm familiar with, has two housekeeping
>> CPUs. So far I restricted the number of network queues with a module
>> argument to two, which allocates two management interrupts for the
>> device and two interrupts (RX/TX) per queue, i.e. a total of six.
>
> Does it somehow take num_online_cpus() into consideration while deciding
> the number of interrupts to create?

No, I just tell it to create two queues :)

>> So without information from the driver which tells what the best number
>> of interrupts is with a reduced number of CPUs, this cutoff will cause
>> more problems than it solves. Regressions guaranteed.
>
> Indeed.
> I think one commonality among the drivers at the moment is the usage of
> num_online_cpus() to determine the vectors to create.
>
> So, maybe instead of doing this kind of restrictions in a generic level
> API, it will make more sense to do this on a per-device basis by replacing
> the number of online CPUs with the housekeeping CPUs?
>
> This is what I have done in the i40e patch.
> But that still sounds hackish and will impact the performance.

You want an interface which allows the driver to say:

  I need N interrupts for general management and ideally M interrupts
  per queue.

This is similar to the way drivers tell the core code about their
requirements for managed interrupts for the spreading calculation.

>> Managed interrupts base their interrupt allocation and spreading on
>> information which is handed in by the individual driver and not on crude
>> assumptions. They are not imposing restrictions on the use case.
>
> Right, FWIU it is irq_do_set_affinity that prevents the spreading of
> managed interrupts to isolated CPUs if HK_FLAG_MANAGED_IRQ is enabled,
> isn't?

No. Spreading takes possible CPUs into account. HK_FLAG_MANAGED_IRQ does
not influence spreading at all.

It only handles the case that an interrupt is affine to more than one
CPUs and the resulting affinity mask spawns both housekeeping and
isolated CPUs. It then steers the interrupt to the housekeeping CPUs (as
long as there is one online).

Thanks,

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

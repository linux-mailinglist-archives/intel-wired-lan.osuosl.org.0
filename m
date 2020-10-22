Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 262572955D8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Oct 2020 02:55:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC56C86DF5;
	Thu, 22 Oct 2020 00:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1XhpjyXNV4X0; Thu, 22 Oct 2020 00:55:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF1D586DE0;
	Thu, 22 Oct 2020 00:55:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A3FC1BF990
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 00:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 040AA87401
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 00:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r5-uZ52+e3ms for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Oct 2020 00:02:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C13488738F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 00:02:27 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA8C42068E;
 Thu, 22 Oct 2020 00:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603324947;
 bh=3UPSINPAND/lqccE62eGQN/0o8y3xZbQAeiWy+GF/To=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Xi7ym5utmWSTIoAwg6r9dGp4x6QleovpXhk6RRUPw8uIK2epUTOTLeZqLsOBoTZ19
 ELd7dNL9gY8j3J05Mxzer4ue+0NTsCSAEGuGanmBsKvABq5hoi8LfnAGOujo9faeNV
 noUD3Q1gU/QxClDHx7T+3JvxvIM24UHqI5n5p3vc=
Date: Wed, 21 Oct 2020 17:02:24 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20201021170224.55aea948@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <877drj72cz.fsf@nanos.tec.linutronix.de>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-5-nitesh@redhat.com>
 <87v9f57zjf.fsf@nanos.tec.linutronix.de>
 <3bca9eb1-a318-1fc6-9eee-aacc0293a193@redhat.com>
 <87lfg093fo.fsf@nanos.tec.linutronix.de>
 <877drj72cz.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
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

On Wed, 21 Oct 2020 22:25:48 +0200 Thomas Gleixner wrote:
> On Tue, Oct 20 2020 at 20:07, Thomas Gleixner wrote:
> > On Tue, Oct 20 2020 at 12:18, Nitesh Narayan Lal wrote:  
> >> However, IMHO we would still need a logic to prevent the devices from
> >> creating excess vectors.  
> >
> > Managed interrupts are preventing exactly that by pinning the interrupts
> > and queues to one or a set of CPUs, which prevents vector exhaustion on
> > CPU hotplug.
> >
> > Non-managed, yes that is and always was a problem. One of the reasons
> > why managed interrupts exist.  
> 
> But why is this only a problem for isolation? The very same problem
> exists vs. CPU hotplug and therefore hibernation.
> 
> On x86 we have at max. 204 vectors available for device interrupts per
> CPU. So assumed the only device interrupt in use is networking then any
> machine which has more than 204 network interrupts (queues, aux ...)
> active will prevent the machine from hibernation.
> 
> Aside of that it's silly to have multiple queues targeted at a single
> CPU in case of hotplug. And that's not a theoretical problem.  Some
> power management schemes shut down sockets when the utilization of a
> system is low enough, e.g. outside of working hours.
> 
> The whole point of multi-queue is to have locality so that traffic from
> a CPU goes through the CPU local queue. What's the point of having two
> or more queues on a CPU in case of hotplug?
> 
> The right answer to this is to utilize managed interrupts and have
> according logic in your network driver to handle CPU hotplug. When a CPU
> goes down, then the queue which is associated to that CPU is quiesced
> and the interrupt core shuts down the relevant interrupt instead of
> moving it to an online CPU (which causes the whole vector exhaustion
> problem on x86). When the CPU comes online again, then the interrupt is
> reenabled in the core and the driver reactivates the queue.

I think Mellanox folks made some forays into managed irqs, but I don't
remember/can't find the details now.

For networking the locality / queue per core does not always work,
since the incoming traffic is usually spread based on a hash. Many
applications perform better when network processing is done on a small
subset of CPUs, and application doesn't get interrupted every 100us. 
So we do need extra user control here.

We have a bit of a uAPI problem since people had grown to depend on
IRQ == queue == NAPI to configure their systems. "The right way" out
would be a proper API which allows associating queues with CPUs rather
than IRQs, then we can use managed IRQs and solve many other problems.

Such new API has been in the works / discussions for a while now.

(Magnus keep me honest here, if you disagree the queue API solves this.)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

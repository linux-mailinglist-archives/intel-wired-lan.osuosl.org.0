Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6666529606E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Oct 2020 15:53:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 11809204E0;
	Thu, 22 Oct 2020 13:53:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eo5Z8c8pj28p; Thu, 22 Oct 2020 13:53:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9F6FD2E0EE;
	Thu, 22 Oct 2020 13:53:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23A7B1BF37B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 08:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1E58B20401
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 08:28:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VomTU9LlxqjS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Oct 2020 08:28:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by silver.osuosl.org (Postfix) with ESMTPS id 17634203CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 08:28:06 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1603355282;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GDhoWshQhIJouOHjZSfLuoOEJxu0EfOG35UztahVv2w=;
 b=xO76q4yJbm65fuck7iz3vwSLDh5wOZfcG351wfUx99gofOUvgSSC6IgTYprLS4gBLnRyJq
 VSjjIjZzrxdbDYcfv+h9PF1thMOBsoqAlwyz7r+lDyYa55Oo28Veei4LYZhRTmwN7vGhoE
 U+JXgOEEC2pTJ6dW5sXTWIQ7RIbRrt+sTIEfVZI83ff4jjnMM1ZAG1sFDppIyLBO4FGM/b
 j2N6SIj4Q2yQfTQ1B+LiKvfArtu0eOrSe7ZetBALhboJnxbE9LvBCb26SpMILSxBUVVNAL
 34a2qwD6nsafD8YWroyYBBt5fGeUAbfpoVs93x1D+dTgYHg1DmOAtKm0jOrZNQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1603355282;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GDhoWshQhIJouOHjZSfLuoOEJxu0EfOG35UztahVv2w=;
 b=XH5DF74AogSgwXx150G9wVhi90K5iIu3AqOkToxAoXmKjngRwt+o/wTS+4gj88tkTv5K0C
 Aec6QzsbbzCWQhCw==
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20201021170224.55aea948@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-5-nitesh@redhat.com>
 <87v9f57zjf.fsf@nanos.tec.linutronix.de>
 <3bca9eb1-a318-1fc6-9eee-aacc0293a193@redhat.com>
 <87lfg093fo.fsf@nanos.tec.linutronix.de>
 <877drj72cz.fsf@nanos.tec.linutronix.de>
 <20201021170224.55aea948@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Thu, 22 Oct 2020 10:28:02 +0200
Message-ID: <874kmm7jhp.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 22 Oct 2020 13:53:13 +0000
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

On Wed, Oct 21 2020 at 17:02, Jakub Kicinski wrote:
> On Wed, 21 Oct 2020 22:25:48 +0200 Thomas Gleixner wrote:
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
> For networking the locality / queue per core does not always work,
> since the incoming traffic is usually spread based on a hash. Many

That makes it problematic and is fundamentally different from block I/O.

> applications perform better when network processing is done on a small
> subset of CPUs, and application doesn't get interrupted every 100us. 
> So we do need extra user control here.

Ok.

> We have a bit of a uAPI problem since people had grown to depend on
> IRQ == queue == NAPI to configure their systems. "The right way" out
> would be a proper API which allows associating queues with CPUs rather
> than IRQs, then we can use managed IRQs and solve many other problems.
>
> Such new API has been in the works / discussions for a while now.

If there is anything which needs to be done/extended on the irq side
please let me know.

Thanks

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

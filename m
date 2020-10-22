Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D86296775
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Oct 2020 00:53:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D1BAA203B5;
	Thu, 22 Oct 2020 22:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kiCLV0J+0kJQ; Thu, 22 Oct 2020 22:53:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D914520513;
	Thu, 22 Oct 2020 22:53:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 77E8E1BF29E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 22:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 72FCE86B77
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 22:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5-qaZFS27HOa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Oct 2020 22:39:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5604F86B01
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 22:39:30 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1603406366;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SrnDQ4pBHMGHEMhYZ0N79a51WfK6iJHdrjE3kDgVDiI=;
 b=iy4bIK/ZpYUnzYJlhG1X4xFIb08cTGDBQ+HlR6v5IxdhK7umkvHwCM+mPE40K9vypjbHfE
 io4BMQy2A5SBBcVjsI76MvcSWRoHDgIWZpVprt99G0b31BAZFCe/eZc03927hcTrVhy2zj
 ka0HpBxBsB3+1Ctwmx4ULj3/xBVV3wVakTbKJdu8z7y12AMtI30/PTVK71CE6RIrfI9zgM
 yoK17mBSmBj6XQHXYYO9QBqtuHVlXg5CRwNXh/MbYPuEbZn2oMPyK5ihBSBLpGARixsoBQ
 04jNkCIjrFrEr9bGMYI6+7ZmQ7G9zSkUr3ghrmkeXOxZ0L34xwJz3qETxpIQhw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1603406366;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SrnDQ4pBHMGHEMhYZ0N79a51WfK6iJHdrjE3kDgVDiI=;
 b=4oNDdQ0Jz1ulYn3D+b0WK6DPec8o3QKBDso61BYhMIyNImFm1hDcbSdyP0ulQOGdcTp7p7
 1WzNdwrla364OSDw==
To: Marcelo Tosatti <mtosatti@redhat.com>
In-Reply-To: <20201022122849.GA148426@fuller.cnet>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-5-nitesh@redhat.com>
 <87v9f57zjf.fsf@nanos.tec.linutronix.de>
 <3bca9eb1-a318-1fc6-9eee-aacc0293a193@redhat.com>
 <87lfg093fo.fsf@nanos.tec.linutronix.de>
 <877drj72cz.fsf@nanos.tec.linutronix.de>
 <20201022122849.GA148426@fuller.cnet>
Date: Fri, 23 Oct 2020 00:39:25 +0200
Message-ID: <87pn596g2q.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 22 Oct 2020 22:53:05 +0000
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
 jlelli@redhat.com, Jakub Kicinski <kuba@kernel.org>, jiri@nvidia.com,
 bhelgaas@google.com, Nitesh Narayan Lal <nitesh@redhat.com>,
 mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, linux-kernel@vger.kernel.org,
 Dave Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 22 2020 at 09:28, Marcelo Tosatti wrote:
> On Wed, Oct 21, 2020 at 10:25:48PM +0200, Thomas Gleixner wrote:
>> The right answer to this is to utilize managed interrupts and have
>> according logic in your network driver to handle CPU hotplug. When a CPU
>> goes down, then the queue which is associated to that CPU is quiesced
>> and the interrupt core shuts down the relevant interrupt instead of
>> moving it to an online CPU (which causes the whole vector exhaustion
>> problem on x86). When the CPU comes online again, then the interrupt is
>> reenabled in the core and the driver reactivates the queue.
>
> Aha... But it would be necessary to do that from userspace (for runtime
> isolate/unisolate).

For anything which uses managed interrupts this is a non-problem and
userspace has absolutely no business with it.

Isolation does not shut down queues, at least not the block multi-queue
ones which are only active when I/O is issued from that isolated CPU.

So transitioning out of isolation requires no action at all.

Transitioning in or changing the housekeeping mask needs some trivial
tweak to handle the case where there is an overlap in the cpuset of a
queue (housekeeping and isolated). This is handled already for setup and
affinity changes, but of course not for runtime isolation mask changes,
but that's a trivial thing to do.

What's more interesting is how to deal with the network problem where
there is no guarantee that the "response" ends up on the same queue as
the "request" which is what the block people rely on. And that problem
is not really an interrupt affinity problem in the first place.

Thanks,

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

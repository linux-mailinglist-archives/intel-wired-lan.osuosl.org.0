Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDF52955D6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Oct 2020 02:55:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7710F869F3;
	Thu, 22 Oct 2020 00:55:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hUr9DgMKDC0e; Thu, 22 Oct 2020 00:55:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 928E786A50;
	Thu, 22 Oct 2020 00:55:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA4C81BF387
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 22:16:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D39DB2E236
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 22:16:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z5Y9sO2M-hHd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Oct 2020 22:16:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by silver.osuosl.org (Postfix) with ESMTPS id BD4642E9AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 20:25:52 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1603311949;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0ErBlktAm/VDZfe11k5xiz2G5eeFjMBryMubxpLgI90=;
 b=lAs4GHqKsxFj2ehxfTNtvW6HA/OFk73TgWU9NNny0xClUy9lV3pa0W2oLtGILx/5+6IOaj
 kiP+OrcbeSZswKH0PNvs6kl+cZ0yljZA20keIiuAoOoLHbuecNCk8Rk7WG952LfmSVCq5Z
 Kkgn0blrKnDKJ0DGDhdgUUZT6JSwy1B/BeEfXU+3zCGjCO3nkdjSO4BZcPPh3twnJ3kdLz
 vih60WESW5odQfOVoD1IRz2ZqSOjovNza8g9gJZQEB8ZfYnFLyHc3WZ0IgVDfqSAPygZyd
 8jx0pYbfQ9rwtnwciHVhkCutMekhR4bTANCWeuz3KyofRgJNMLsMNNPZ2JOoDA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1603311949;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0ErBlktAm/VDZfe11k5xiz2G5eeFjMBryMubxpLgI90=;
 b=CKysLuROojLRHKTKNJPL+SuMqZe5T2j0BnTXahqjamQZMuEe9GG6lsjkfBNsx0nVCUNULw
 mVjXQAOmVi6sOoCg==
To: Nitesh Narayan Lal <nitesh@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, frederic@kernel.org, mtosatti@redhat.com,
 sassmann@redhat.com, jesse.brandeburg@intel.com, lihong.yang@intel.com,
 helgaas@kernel.org, jeffrey.t.kirsher@intel.com, jacob.e.keller@intel.com,
 jlelli@redhat.com, hch@infradead.org, bhelgaas@google.com,
 mike.marciniszyn@intel.com, dennis.dalessandro@intel.com,
 thomas.lendacky@amd.com, jiri@nvidia.com, mingo@redhat.com,
 peterz@infradead.org, juri.lelli@redhat.com, vincent.guittot@linaro.org,
 lgoncalv@redhat.com, Jakub Kicinski <kuba@kernel.org>,
 Dave Miller <davem@davemloft.net>
In-Reply-To: <87lfg093fo.fsf@nanos.tec.linutronix.de>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-5-nitesh@redhat.com>
 <87v9f57zjf.fsf@nanos.tec.linutronix.de>
 <3bca9eb1-a318-1fc6-9eee-aacc0293a193@redhat.com>
 <87lfg093fo.fsf@nanos.tec.linutronix.de>
Date: Wed, 21 Oct 2020 22:25:48 +0200
Message-ID: <877drj72cz.fsf@nanos.tec.linutronix.de>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 20 2020 at 20:07, Thomas Gleixner wrote:
> On Tue, Oct 20 2020 at 12:18, Nitesh Narayan Lal wrote:
>> However, IMHO we would still need a logic to prevent the devices from
>> creating excess vectors.
>
> Managed interrupts are preventing exactly that by pinning the interrupts
> and queues to one or a set of CPUs, which prevents vector exhaustion on
> CPU hotplug.
>
> Non-managed, yes that is and always was a problem. One of the reasons
> why managed interrupts exist.

But why is this only a problem for isolation? The very same problem
exists vs. CPU hotplug and therefore hibernation.

On x86 we have at max. 204 vectors available for device interrupts per
CPU. So assumed the only device interrupt in use is networking then any
machine which has more than 204 network interrupts (queues, aux ...)
active will prevent the machine from hibernation.

Aside of that it's silly to have multiple queues targeted at a single
CPU in case of hotplug. And that's not a theoretical problem.  Some
power management schemes shut down sockets when the utilization of a
system is low enough, e.g. outside of working hours.

The whole point of multi-queue is to have locality so that traffic from
a CPU goes through the CPU local queue. What's the point of having two
or more queues on a CPU in case of hotplug?

The right answer to this is to utilize managed interrupts and have
according logic in your network driver to handle CPU hotplug. When a CPU
goes down, then the queue which is associated to that CPU is quiesced
and the interrupt core shuts down the relevant interrupt instead of
moving it to an online CPU (which causes the whole vector exhaustion
problem on x86). When the CPU comes online again, then the interrupt is
reenabled in the core and the driver reactivates the queue.

Thanks,

        tglx



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

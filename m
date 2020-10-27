Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 382E629B2A7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Oct 2020 15:44:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1E8A855BE;
	Tue, 27 Oct 2020 14:44:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eLj4_fCpCH2o; Tue, 27 Oct 2020 14:44:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C377B85624;
	Tue, 27 Oct 2020 14:44:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D10501BF976
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Oct 2020 14:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CCB8C855EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Oct 2020 14:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CQfDFgD8Roet for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Oct 2020 14:43:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 24CBD855BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Oct 2020 14:43:59 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1603809836;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qctgPvENEAJLfDO1q5YNRd3BUpfW+QQFStcbBTc4zpc=;
 b=XPCl5Yg1xGZbdGIwKfXbv3FBALQDzgvROfSBGRFmV7UCacEjG0QaeufIIEvbgJW7nqbzD2
 vnBz6XrBKK3JZGx1wLfAlV9w35EhTuPCKGbRmnpfnJzrocvTJqaEdhf1SZeQmFk3FFK/hB
 AtuUdpjvzy4urwwyaQKvogkRxe5tYfBnwhcZgilyPEFp9HGn9sOj5BUQ/UnB0BBRBjjuaT
 7F8urq5UdIsT2//AZ/5dOjGolnV3HEmGoHyJBaK3y2JrAuJrGEsmBwHpC7MRtrSaCQuPzB
 1Ls88sIVW7Fx1SGAdLygMeYISlhu92rAKCavx09rd5r5BR7n2cBsRf5dsbmGmg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1603809836;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qctgPvENEAJLfDO1q5YNRd3BUpfW+QQFStcbBTc4zpc=;
 b=SOWpoTtIdBo28YQ59UZQrIseztUo6FaAyC/yLmH/40n1JEHji3jhyfGLvO9YnTjEyLslEg
 mcVTsLvHTdJ1/gDg==
To: Marcelo Tosatti <mtosatti@redhat.com>,
 Nitesh Narayan Lal <nitesh@redhat.com>
In-Reply-To: <20201027114739.GA11336@fuller.cnet>
References: <20201023085826.GP2611@hirez.programming.kicks-ass.net>
 <9ee77056-ef02-8696-5b96-46007e35ab00@redhat.com>
 <87ft6464jf.fsf@nanos.tec.linutronix.de>
 <20201026173012.GA377978@fuller.cnet>
 <875z6w4xt4.fsf@nanos.tec.linutronix.de>
 <86f8f667-bda6-59c4-91b7-6ba2ef55e3db@intel.com>
 <87v9ew3fzd.fsf@nanos.tec.linutronix.de>
 <85b5f53e-5be2-beea-269a-f70029bea298@intel.com>
 <87lffs3bd6.fsf@nanos.tec.linutronix.de>
 <959997ee-f393-bab0-45c0-4144c37b9185@redhat.com>
 <20201027114739.GA11336@fuller.cnet>
Date: Tue, 27 Oct 2020 15:43:56 +0100
Message-ID: <87k0vb20gj.fsf@nanos.tec.linutronix.de>
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
Cc: juri.lelli@redhat.com, Peter Zijlstra <peterz@infradead.org>,
 linux-pci@vger.kernel.org, sassmann@redhat.com, vincent.guittot@linaro.org,
 hch@infradead.org, mingo@redhat.com, helgaas@kernel.org,
 intel-wired-lan@lists.osuosl.org, thomas.lendacky@amd.com, lgoncalv@redhat.com,
 frederic@kernel.org, jlelli@redhat.com, Jakub Kicinski <kuba@kernel.org>,
 jiri@nvidia.com, bhelgaas@google.com, mike.marciniszyn@intel.com,
 netdev@vger.kernel.org, dennis.dalessandro@intel.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 27 2020 at 08:47, Marcelo Tosatti wrote:
> On Mon, Oct 26, 2020 at 06:22:29PM -0400, Nitesh Narayan Lal wrote:
> However, if per-CPU interrupts are not disabled, then the (for example)
> network device is free to include the CPU in its list of destinations.
> Which would require one to say, configure RPS (or whatever mechanism
> is distributing interrupts).

And why is that a problem? If that's possible then you can prevent
getting RX interrupts already today.

> Hum, it would feel safer (rather than trust the #1 rule to be valid
> in all cases) to ask the driver to disable the interrupt (after shutting
> down queue) for that particular CPU.
>
> BTW, Thomas, software is free to configure a particular MSI-X interrupt
> to point to any CPU:
>
> 10.11 MESSAGE SIGNALLED INTERRUPTS

I know how MSI works :)

> So taking the example where computation happens while isolated and later
> stored via block interface, aren't we restricting the usage scenarios
> by enforcing the "per-CPU queue has interrupt pointing to owner CPU"
> rule?

No. For block this is the ideal configuration (think locality) and it
prevents vector exhaustion. If you make these interrupts freely routable
then you bring back the vector exhaustion problem right away.

Now we already established that networking has different requirements,
so you have to come up with a different solution for it which allows to
work for all use cases.

Thanks,

        tglx

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

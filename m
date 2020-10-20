Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D262941E7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Oct 2020 20:08:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 11D0B86B87;
	Tue, 20 Oct 2020 18:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KxPrvI-R-ODx; Tue, 20 Oct 2020 18:08:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27B4B86B92;
	Tue, 20 Oct 2020 18:08:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D5891BF33A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 18:07:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 217C52E157
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 18:07:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ggCM6gz6vZHA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Oct 2020 18:07:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by silver.osuosl.org (Postfix) with ESMTPS id 40FDB20487
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 18:07:27 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1603217243;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LeMXYg7iCMItsZtXLmmRK9fkfNd0wXBuje5zWxjuqWQ=;
 b=qDHag5jUtcYY1ospfAJ+zlutOQbY3+C0bC9EPi1EZMpn+II8KgaYDpV1LAVI8GtoyzAz6J
 0Ds6sLaCTexJ078RLsCQxHKLok/8wlwLzz4KqDEVDWN37BqpL8cHOin3Vc2lrbvKhnk9fU
 gTtCZ9OIDpyIrU0KF0Ri4iTj3PX6nCApRbwgEoELwTGCqc2e7AGW9/iyDB1qKEi+56dCCz
 pCGsFGG8IS/h6Jc+Kh+h9BZUwe79z9lfowsxuyYixjtt4jcsb8SAUm1cXvAIUnIXt6g0CW
 GokjEdpt/RccHcAqCUC59MCkh0mKevqzmZTL7RGJRdmm6fEF5rqg9H7QDIC5Gw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1603217243;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LeMXYg7iCMItsZtXLmmRK9fkfNd0wXBuje5zWxjuqWQ=;
 b=1iCD6Fdka9UkLf2kiE9clDl7+fPycl4tRaJS8aQELf+C9KC9wIeAZui9dMdNqM+0kS1mxw
 uyB16tsCz17uoMBQ==
To: Nitesh Narayan Lal <nitesh@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, frederic@kernel.org, mtosatti@redhat.com,
 sassmann@redhat.com, jesse.brandeburg@intel.com, lihong.yang@intel.com,
 helgaas@kernel.org, jeffrey.t.kirsher@intel.com, jacob.e.keller@intel.com,
 jlelli@redhat.com, hch@infradead.org, bhelgaas@google.com,
 mike.marciniszyn@intel.com, dennis.dalessandro@intel.com,
 thomas.lendacky@amd.com, jiri@nvidia.com, mingo@redhat.com,
 peterz@infradead.org, juri.lelli@redhat.com, vincent.guittot@linaro.org,
 lgoncalv@redhat.com
In-Reply-To: <3bca9eb1-a318-1fc6-9eee-aacc0293a193@redhat.com>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-5-nitesh@redhat.com>
 <87v9f57zjf.fsf@nanos.tec.linutronix.de>
 <3bca9eb1-a318-1fc6-9eee-aacc0293a193@redhat.com>
Date: Tue, 20 Oct 2020 20:07:23 +0200
Message-ID: <87lfg093fo.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 20 Oct 2020 18:08:12 +0000
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

On Tue, Oct 20 2020 at 12:18, Nitesh Narayan Lal wrote:
> On 10/20/20 10:16 AM, Thomas Gleixner wrote:
>> With the above change this will result
>>
>>    1  general interrupt which is free movable by user space
>>    1  managed interrupts (possible affinity to all 16 CPUs, but routed
>>       to housekeeping CPU as long as there is one online)
>>
>> So the device is now limited to a single queue which also affects the
>> housekeeping CPUs because now they have to share a single queue.
>>
>> With larger machines this gets even worse.
>
> Yes, the change can impact the performance, however, if we don't do that we
> may have a latency impact instead. Specifically, on larger systems where
> most of the CPUs are isolated as we will definitely fail in moving all of the
> IRQs away from the isolated CPUs to the housekeeping.

For non managed interrupts I agree.

>> So no. This needs way more thought for managed interrupts and you cannot
>> do that at the PCI layer.
>
> Maybe we should not be doing anything in the case of managed IRQs as they
> are anyways pinned to the housekeeping CPUs as long as we have the
> 'managed_irq' option included in the kernel cmdline.

Exactly. For the PCI side this vector limiting has to be restricted to
the non managed case.

>>  Only the affinity spreading mechanism can do
>> the right thing here.
>
> I can definitely explore this further.
>
> However, IMHO we would still need a logic to prevent the devices from
> creating excess vectors.

Managed interrupts are preventing exactly that by pinning the interrupts
and queues to one or a set of CPUs, which prevents vector exhaustion on
CPU hotplug.

Non-managed, yes that is and always was a problem. One of the reasons
why managed interrupts exist.

Thanks,

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

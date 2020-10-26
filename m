Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2ED29965B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Oct 2020 20:00:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1DB1785B5B;
	Mon, 26 Oct 2020 19:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L25ZgIxqZrG8; Mon, 26 Oct 2020 19:00:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36B7985ACD;
	Mon, 26 Oct 2020 19:00:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E4E801BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 19:00:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D309A2E128
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 19:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YEhj66ku1al3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Oct 2020 19:00:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by silver.osuosl.org (Postfix) with ESMTPS id BAE4C1FE49
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 19:00:43 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1603738839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9QvUMf5PqeNQlMPTahrZW6OrL4d+7Sf7dM1LOD6g9Y8=;
 b=sABnPwPQKFh6X9EOykr/dujf0/BDYdGvouZaj0zKCcdjFh8cxYhWlV7ouzHx/9AuiAOkeG
 W+nnFVlZuj9S6fziXQWunzPixauZqnZQ9nLrh0JuKn4b6GiiYM8MGZ/Hp12D/qpqd9gEzP
 slpm4V3s9owptbHMS5+4tv4aJ9WAaMh2weKt7qrAKu8qPdMl5trskBHj5yfxBb40QBrKGe
 /ySnUN5ZPONi+9PPcb8jktC0ZuQCfW5Crt2M7PWUjDfFZ7bcbb7tkpCg1/yeBTjfJrVvDM
 1P2ToGRRopEgY3n7+DLY+WNFdQpiTNbQ74qPaf9Rj6gCNlFiOI7v2XszgBH7ww==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1603738839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9QvUMf5PqeNQlMPTahrZW6OrL4d+7Sf7dM1LOD6g9Y8=;
 b=gNKSesjquFk4p1+yIEyYQTEdbXn5nw5BA42TTDi3QdQl6il8MyloLrDdzKgZxPyLpDN/6W
 iJvGWftarXbD6IBw==
To: Marcelo Tosatti <mtosatti@redhat.com>
In-Reply-To: <20201026173012.GA377978@fuller.cnet>
References: <20201019111137.GL2628@hirez.programming.kicks-ass.net>
 <20201019140005.GB17287@fuller.cnet>
 <20201020073055.GY2611@hirez.programming.kicks-ass.net>
 <078e659e-d151-5bc2-a7dd-fe0070267cb3@redhat.com>
 <20201020134128.GT2628@hirez.programming.kicks-ass.net>
 <6736e643-d4ae-9919-9ae1-a73d5f31463e@redhat.com>
 <260f4191-5b9f-6dc1-9f11-085533ac4f55@redhat.com>
 <20201023085826.GP2611@hirez.programming.kicks-ass.net>
 <9ee77056-ef02-8696-5b96-46007e35ab00@redhat.com>
 <87ft6464jf.fsf@nanos.tec.linutronix.de>
 <20201026173012.GA377978@fuller.cnet>
Date: Mon, 26 Oct 2020 20:00:39 +0100
Message-ID: <875z6w4xt4.fsf@nanos.tec.linutronix.de>
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
 frederic@kernel.org, jlelli@redhat.com, jiri@nvidia.com, bhelgaas@google.com,
 Nitesh Narayan Lal <nitesh@redhat.com>, mike.marciniszyn@intel.com,
 netdev@vger.kernel.org, dennis.dalessandro@intel.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 26 2020 at 14:30, Marcelo Tosatti wrote:
> On Fri, Oct 23, 2020 at 11:00:52PM +0200, Thomas Gleixner wrote:
>> So without information from the driver which tells what the best number
>> of interrupts is with a reduced number of CPUs, this cutoff will cause
>> more problems than it solves. Regressions guaranteed.
>
> One might want to move from one interrupt per isolated app core
> to zero, or vice versa. It seems that "best number of interrupts 
> is with reduced number of CPUs" information, is therefore in userspace, 
> not in driver...

How does userspace know about the driver internals? Number of management
interrupts, optimal number of interrupts per queue?

>> Managed interrupts base their interrupt allocation and spreading on
>> information which is handed in by the individual driver and not on crude
>> assumptions. They are not imposing restrictions on the use case.
>> 
>> It's perfectly fine for isolated work to save a data set to disk after
>> computation has finished and that just works with the per-cpu I/O queue
>> which is otherwise completely silent. 
>
> Userspace could only change the mask of interrupts which are not 
> triggered by requests from the local CPU (admin, error, mgmt, etc),
> to avoid the vector exhaustion problem.
>
> However, there is no explicit way for userspace to know that, as far as
> i know.
>
>  130:      34845          0          0          0          0          0          0          0  IR-PCI-MSI 33554433-edge      nvme0q1
>  131:          0      27062          0          0          0          0          0          0  IR-PCI-MSI 33554434-edge      nvme0q2
>  132:          0          0      24393          0          0          0          0          0  IR-PCI-MSI 33554435-edge      nvme0q3
>  133:          0          0          0      24313          0          0          0          0  IR-PCI-MSI 33554436-edge      nvme0q4
>  134:          0          0          0          0      20608          0          0          0  IR-PCI-MSI 33554437-edge      nvme0q5
>  135:          0          0          0          0          0      22163          0          0  IR-PCI-MSI 33554438-edge      nvme0q6
>  136:          0          0          0          0          0          0      23020          0  IR-PCI-MSI 33554439-edge      nvme0q7
>  137:          0          0          0          0          0          0          0      24285  IR-PCI-MSI 33554440-edge      nvme0q8
>
> Can that be retrieved from PCI-MSI information, or drivers
> have to inform this?

The driver should use a different name for the admin queues.

Thanks,

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

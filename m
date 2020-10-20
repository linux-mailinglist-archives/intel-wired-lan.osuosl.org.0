Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D6D293E74
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Oct 2020 16:18:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4F6B872F6;
	Tue, 20 Oct 2020 14:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f7eCxLp8iVJg; Tue, 20 Oct 2020 14:18:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F18D1872F4;
	Tue, 20 Oct 2020 14:18:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B6C81BF844
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 14:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 844AC86B1D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 14:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fvFflArWRKkS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Oct 2020 14:16:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5997186ACB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 14:16:57 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1603203413;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Y4j/jlD3xH1hIPmnRimMNEHfyReLuBug0kSJdYGLDZI=;
 b=t0yRH0YFC/n/d0l325g1g0JhblRbNkPW3BVDIyb+F8lusCrsxVjj4xzkXPw/Nvwx7UxE1K
 Vufxd0mOwUR3cEOF/abhAHTCyhgONpu/F2rFc4vz9WnR8qCTb9zjNoVHp3CbK6miOmQK0S
 gtlGwzghB2PA3pkPRUNl+2yyboAmGJQ3UNMLbU1p4blxlri4dogPyBWNZtOEh/2gRbnLU1
 T9+Z0A+l+7NBNxE9DjN9JMrNZsAYFjhaH/UvwP0qXuH680clZ21H4YttTc0IqLOgfALoDf
 v/Cxy/s6qvIhBJAqVcPmGE2WZ9ynjvs9P4KYVcaq7n8qiaypdzKSzedAFM1/bg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1603203413;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Y4j/jlD3xH1hIPmnRimMNEHfyReLuBug0kSJdYGLDZI=;
 b=i62r4hnTA8GOzp3DZqiFe48GBrMmgNmkT35gUCsmZuKo662RRxjarZreuX1S3duTNrW69/
 9ng1HHw/l4f6xJCg==
To: Nitesh Narayan Lal <nitesh@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, frederic@kernel.org, mtosatti@redhat.com,
 sassmann@redhat.com, jesse.brandeburg@intel.com, lihong.yang@intel.com,
 helgaas@kernel.org, nitesh@redhat.com, jeffrey.t.kirsher@intel.com,
 jacob.e.keller@intel.com, jlelli@redhat.com, hch@infradead.org,
 bhelgaas@google.com, mike.marciniszyn@intel.com, dennis.dalessandro@intel.com,
 thomas.lendacky@amd.com, jiri@nvidia.com, mingo@redhat.com,
 peterz@infradead.org, juri.lelli@redhat.com, vincent.guittot@linaro.org,
 lgoncalv@redhat.com
In-Reply-To: <20200928183529.471328-5-nitesh@redhat.com>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-5-nitesh@redhat.com>
Date: Tue, 20 Oct 2020 16:16:52 +0200
Message-ID: <87v9f57zjf.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 20 Oct 2020 14:17:52 +0000
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

On Mon, Sep 28 2020 at 14:35, Nitesh Narayan Lal wrote:
>  
> +	hk_cpus = housekeeping_num_online_cpus(HK_FLAG_MANAGED_IRQ);
> +
> +	/*
> +	 * If we have isolated CPUs for use by real-time tasks, to keep the
> +	 * latency overhead to a minimum, device-specific IRQ vectors are moved
> +	 * to the housekeeping CPUs from the userspace by changing their
> +	 * affinity mask. Limit the vector usage to keep housekeeping CPUs from
> +	 * running out of IRQ vectors.
> +	 */

This is not true for managed interrupts. The interrupts affinity of
those cannot be changed by user space.

> +	if (hk_cpus < num_online_cpus()) {
> +		if (hk_cpus < min_vecs)
> +			max_vecs = min_vecs;
> +		else if (hk_cpus < max_vecs)
> +			max_vecs = hk_cpus;
> +	}

So now with that assume a 16 core machine (HT off for simplicity)

17 Requested interrupts (1 general, 16 queues)

Managed interrupts will allocate

   1  general interrupt which is free movable by user space
   16 managed interrupts for queues (one per CPU)

This allows the driver to have 16 queues, i.e. one queue per CPU. These
interrupts are only used when an application on a CPU issues I/O.

With the above change this will result

   1  general interrupt which is free movable by user space
   1  managed interrupts (possible affinity to all 16 CPUs, but routed
      to housekeeping CPU as long as there is one online)

So the device is now limited to a single queue which also affects the
housekeeping CPUs because now they have to share a single queue.

With larger machines this gets even worse.

So no. This needs way more thought for managed interrupts and you cannot
do that at the PCI layer. Only the affinity spreading mechanism can do
the right thing here.

Thanks,

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

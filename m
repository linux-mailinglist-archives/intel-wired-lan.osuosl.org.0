Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8D427B758
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 00:01:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C748F20785;
	Mon, 28 Sep 2020 22:01:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KN+n0XInOrAg; Mon, 28 Sep 2020 22:01:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3AA8A204A8;
	Mon, 28 Sep 2020 22:01:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E0EDC1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 21:59:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC4CD85ABB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 21:59:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sEDMuD3Dz0qk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 21:59:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 73FFE858F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 21:59:33 +0000 (UTC)
Received: from localhost (52.sub-72-107-123.myvzw.com [72.107.123.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFCA52083B;
 Mon, 28 Sep 2020 21:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601330373;
 bh=0n1xJcdLngQdEbL6h/atc0mGb4YVbGMJlbNqrb3rWc0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=TPpxBphvz+2D9Uwv5VqfQh0wF+3Q/7TSzzgny4d7237sTORHdrdkk58bs1BWlGT6v
 zx70R2QzsjjCdGSPdGWmHX1ifdjxKDGigQo4yWcs4p9sTTOTpGuvhuao0t38NmeFAX
 O1xWNs/AwwHQU1IqkaFmk4+tPRE2S87hvWuuckTY=
Date: Mon, 28 Sep 2020 16:59:31 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Nitesh Narayan Lal <nitesh@redhat.com>, hch@infradead.org
Message-ID: <20200928215931.GA2499944@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928183529.471328-5-nitesh@redhat.com>
X-Mailman-Approved-At: Mon, 28 Sep 2020 22:00:58 +0000
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
 sassmann@redhat.com, vincent.guittot@linaro.org, mingo@redhat.com,
 intel-wired-lan@lists.osuosl.org, thomas.lendacky@amd.com, lgoncalv@redhat.com,
 frederic@kernel.org, jlelli@redhat.com, jiri@nvidia.com, bhelgaas@google.com,
 mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, mtosatti@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[to: Christoph in case he has comments, since I think he wrote this code]

On Mon, Sep 28, 2020 at 02:35:29PM -0400, Nitesh Narayan Lal wrote:
> If we have isolated CPUs dedicated for use by real-time tasks, we try to
> move IRQs to housekeeping CPUs from the userspace to reduce latency
> overhead on the isolated CPUs.
> 
> If we allocate too many IRQ vectors, moving them all to housekeeping CPUs
> may exceed per-CPU vector limits.
> 
> When we have isolated CPUs, limit the number of vectors allocated by
> pci_alloc_irq_vectors() to the minimum number required by the driver, or
> to one per housekeeping CPU if that is larger.
> 
> Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/msi.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
> index 30ae4ffda5c1..8c156867803c 100644
> --- a/drivers/pci/msi.c
> +++ b/drivers/pci/msi.c
> @@ -23,6 +23,7 @@
>  #include <linux/slab.h>
>  #include <linux/irqdomain.h>
>  #include <linux/of_irq.h>
> +#include <linux/sched/isolation.h>
>  
>  #include "pci.h"
>  
> @@ -1191,8 +1192,25 @@ int pci_alloc_irq_vectors_affinity(struct pci_dev *dev, unsigned int min_vecs,
>  				   struct irq_affinity *affd)
>  {
>  	struct irq_affinity msi_default_affd = {0};
> +	unsigned int hk_cpus;
>  	int nvecs = -ENOSPC;
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
> +	if (hk_cpus < num_online_cpus()) {
> +		if (hk_cpus < min_vecs)
> +			max_vecs = min_vecs;
> +		else if (hk_cpus < max_vecs)
> +			max_vecs = hk_cpus;
> +	}
> +
>  	if (flags & PCI_IRQ_AFFINITY) {
>  		if (!affd)
>  			affd = &msi_default_affd;
> -- 
> 2.18.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

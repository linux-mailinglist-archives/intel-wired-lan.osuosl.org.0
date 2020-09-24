Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F0E277AB4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Sep 2020 22:49:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99FC286BC6;
	Thu, 24 Sep 2020 20:49:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zeOlngM90fL5; Thu, 24 Sep 2020 20:49:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E10E86BCB;
	Thu, 24 Sep 2020 20:49:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D24541BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 20:48:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CD8EE873CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 20:48:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Djb-nZ7GTfv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Sep 2020 20:48:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EC708873CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 20:48:00 +0000 (UTC)
Received: from localhost (52.sub-72-107-123.myvzw.com [72.107.123.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4DF20221EB;
 Thu, 24 Sep 2020 20:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600980480;
 bh=TDET0KJhptmVV4U8HQItYgWqOFf8omZjfxwMJ+5agMU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=dWf495VGJ3RD0bVS+U8XzYa7chztO2nbrjbuq6mP8pxvrgwyBakjREbEpiAH8iA/j
 q8RdZOWrBC9/rf8FUkAq2qFpo/Cj9bw0BIOgxEnOBR/3sb7m/9vewM6AHeKrcS4kr2
 G6VvZMaqsuCzkjvm+htdbZuD0cV6fRN7kpswGxSQ=
Date: Thu, 24 Sep 2020 15:47:59 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Message-ID: <20200924204759.GA2342589@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200923181126.223766-2-nitesh@redhat.com>
X-Mailman-Approved-At: Thu, 24 Sep 2020 20:49:19 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 1/4] sched/isolation: API to get
 housekeeping online CPUs
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
 jerinj@marvell.com, sassmann@redhat.com, vincent.guittot@linaro.org,
 hch@infradead.org, mingo@redhat.com, intel-wired-lan@lists.osuosl.org,
 thomas.lendacky@amd.com, mathias.nyman@intel.com, frederic@kernel.org,
 jlelli@redhat.com, jiri@nvidia.com, bhelgaas@google.com,
 mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, mtosatti@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 23, 2020 at 02:11:23PM -0400, Nitesh Narayan Lal wrote:
> Introduce a new API hk_num_online_cpus(), that can be used to
> retrieve the number of online housekeeping CPUs that are meant to handle
> managed IRQ jobs.
> 
> This API is introduced for the drivers that were previously relying only
> on num_online_cpus() to determine the number of MSIX vectors to create.
> In an RT environment with large isolated but fewer housekeeping CPUs this
> was leading to a situation where an attempt to move all of the vectors
> corresponding to isolated CPUs to housekeeping CPUs were failing due to
> per CPU vector limit.
> 
> Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> ---
>  include/linux/sched/isolation.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/include/linux/sched/isolation.h b/include/linux/sched/isolation.h
> index cc9f393e2a70..2e96b626e02e 100644
> --- a/include/linux/sched/isolation.h
> +++ b/include/linux/sched/isolation.h
> @@ -57,4 +57,17 @@ static inline bool housekeeping_cpu(int cpu, enum hk_flags flags)
>  	return true;
>  }
>  
> +static inline unsigned int hk_num_online_cpus(void)
> +{
> +#ifdef CONFIG_CPU_ISOLATION
> +	const struct cpumask *hk_mask;
> +
> +	if (static_branch_unlikely(&housekeeping_overridden)) {
> +		hk_mask = housekeeping_cpumask(HK_FLAG_MANAGED_IRQ);
> +		return cpumask_weight(hk_mask);
> +	}
> +#endif
> +	return cpumask_weight(cpu_online_mask);

Just curious: why is this not

  #ifdef CONFIG_CPU_ISOLATION
  ...
  #endif
    return num_online_cpus();

> +}
> +
>  #endif /* _LINUX_SCHED_ISOLATION_H */
> -- 
> 2.18.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

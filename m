Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D82E2773A2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Sep 2020 16:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E6A587508;
	Thu, 24 Sep 2020 14:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xJMR7pJ5Yp7p; Thu, 24 Sep 2020 14:09:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 42AEF874FE;
	Thu, 24 Sep 2020 14:09:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D85301BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 12:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D09BA86BF2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 12:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dWSOtEDHK5Wy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Sep 2020 12:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BA26986BEA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 12:11:53 +0000 (UTC)
Received: from localhost (lfbn-ncy-1-588-162.w81-51.abo.wanadoo.fr
 [81.51.203.162])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C888B23772;
 Thu, 24 Sep 2020 12:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600949513;
 bh=xpP76EGTPBoFhFGrhvjx2yjYsuKIwz7GT+PRl4W6bI0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bnoolmqGU1D6HUcz6CmVfIQonOUm/JC/JDMcYA5MjD9e2zPLiH1+lMORSBqF0hJAG
 +C+mP7uqxj6boJyiUK+y0KzketDQaPR11Or/naJH1ES7x8XTfxAb19qin2FzPHNjGs
 Y7i2fd+QzaSLusPsXdis7NQWjTHi8Aj3N8SwY7aU=
Date: Thu, 24 Sep 2020 14:11:51 +0200
From: Frederic Weisbecker <frederic@kernel.org>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Message-ID: <20200924121150.GB19346@lenoir>
References: <20200923181126.223766-1-nitesh@redhat.com>
 <20200923181126.223766-2-nitesh@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200923181126.223766-2-nitesh@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Thu, 24 Sep 2020 14:09:53 +0000
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
 helgaas@kernel.org, thomas.lendacky@amd.com, mathias.nyman@intel.com,
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

HK_FLAG_MANAGED_IRQ should be pass as an argument to the function:

housekeeping_num_online_cpus(HK_FLAG_MANAGED_IRQ) because it's
completely arbitrary otherwise.

> +		return cpumask_weight(hk_mask);
> +	}
> +#endif
> +	return cpumask_weight(cpu_online_mask);
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

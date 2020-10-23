Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 270DC2970E6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Oct 2020 15:51:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 79D712079C;
	Fri, 23 Oct 2020 13:51:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CtpIn5ZQcKs6; Fri, 23 Oct 2020 13:51:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 327E2207A2;
	Fri, 23 Oct 2020 13:51:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A7DF1BF383
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 13:25:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2A4E820774
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 13:25:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X4JKGEKO6v1M for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Oct 2020 13:25:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by silver.osuosl.org (Postfix) with ESMTPS id 28FDA2076B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 13:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=HEsMZW6VUzWZDcaTQFGuaqHUigGcMc17DOxpKIiHD3U=; b=1Jpp6aUef3ZNl/fpS536OWGOTZ
 o4VHLn/1/CVcI3hsGyiAlldbrSaHH2Lp77z1BHDLPXCLVbzr1mpe0ipzTm/4LMjybDReOxC4EDnlH
 u6SbYBUdzmxNxCGNGnTJVdm5/Z4YYYqmzwfry8pZe+iGi/kkIaUy0znCaDb4znXBwIribIVwzXimD
 wwBgnxpZPWjcY6TCzbi7mqeGtvDQA6SNvqCQ2zwj6z/ofQ78mowl1FYn/+6Rr0neaIpw4u8aoZlcU
 IPdVcpZuEx4u8wBKya8J++OLqHQUrCQqsVQILjky4/t3vj7hixqUguwYEku8yPWZwddAtOOU6/8XA
 um4xU4Qw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVx47-00026G-SL; Fri, 23 Oct 2020 13:25:08 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id BDEE8300B22;
 Fri, 23 Oct 2020 15:25:05 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id AD9C023268B98; Fri, 23 Oct 2020 15:25:05 +0200 (CEST)
Date: Fri, 23 Oct 2020 15:25:05 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Message-ID: <20201023132505.GZ2628@hirez.programming.kicks-ass.net>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-3-nitesh@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928183529.471328-3-nitesh@redhat.com>
X-Mailman-Approved-At: Fri, 23 Oct 2020 13:51:10 +0000
Subject: Re: [Intel-wired-lan] [PATCH v4 2/4] sched/isolation: Extend
 nohz_full to isolate managed IRQs
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
Cc: juri.lelli@redhat.com, linux-pci@vger.kernel.org, sassmann@redhat.com,
 vincent.guittot@linaro.org, hch@infradead.org, mingo@redhat.com,
 intel-wired-lan@lists.osuosl.org, helgaas@kernel.org, thomas.lendacky@amd.com,
 lgoncalv@redhat.com, frederic@kernel.org, jlelli@redhat.com, jiri@nvidia.com,
 bhelgaas@google.com, Thomas Gleixner <tglx@linutronix.de>,
 mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, mtosatti@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 28, 2020 at 02:35:27PM -0400, Nitesh Narayan Lal wrote:
> Extend nohz_full feature set to include isolation from managed IRQS. This

So you say it's for managed-irqs, the feature is actually called
MANAGED_IRQ, but, AFAICT, it does *NOT* in fact affect managed IRQs.

Also, as per Thomas' earlier points, managed-irqs are in fact perfectly
fine and don't need help at at...

> is required specifically for setups that only uses nohz_full and still
> requires isolation for maintaining lower latency for the listed CPUs.
> 
> Suggested-by: Frederic Weisbecker <frederic@kernel.org>
> Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> ---
>  kernel/sched/isolation.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/kernel/sched/isolation.c b/kernel/sched/isolation.c
> index 5a6ea03f9882..9df9598a9e39 100644
> --- a/kernel/sched/isolation.c
> +++ b/kernel/sched/isolation.c
> @@ -141,7 +141,7 @@ static int __init housekeeping_nohz_full_setup(char *str)
>  	unsigned int flags;
>  
>  	flags = HK_FLAG_TICK | HK_FLAG_WQ | HK_FLAG_TIMER | HK_FLAG_RCU |
> -		HK_FLAG_MISC | HK_FLAG_KTHREAD;
> +		HK_FLAG_MISC | HK_FLAG_KTHREAD | HK_FLAG_MANAGED_IRQ;
>  
>  	return housekeeping_setup(str, flags);
>  }
> -- 
> 2.18.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

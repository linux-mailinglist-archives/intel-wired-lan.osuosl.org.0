Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0992773A7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Sep 2020 16:10:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9C0952E134;
	Thu, 24 Sep 2020 14:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mXTpJBVrksRH; Thu, 24 Sep 2020 14:10:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DC08F2E113;
	Thu, 24 Sep 2020 14:09:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A5041BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 12:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5B67B2DE2A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 12:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M2fre-oe-hXH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Sep 2020 12:10:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5FA3E27E4C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 12:10:00 +0000 (UTC)
Received: from localhost (lfbn-ncy-1-588-162.w81-51.abo.wanadoo.fr
 [81.51.203.162])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5105223787;
 Thu, 24 Sep 2020 12:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600949399;
 bh=Q2Pyd20nkzH5RcR2DXUGrcfyCzRdQdQbglCmLc8qUHQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gKRsq62RWwZyvuQF9n7kPBbr0UmaFfJr73oCx2/4Kz08aFhC+e3DMZHcGVDVE6vH2
 a9a3lQkRM+MEX43LoXWqicdZDOssTQ0BcaAuESV55tke8rRH5sJw87/hS6VlVB2gOL
 v4MSRtMxJ5FkvmDWAQEK7nQS/9uWn5xc030slumQ=
Date: Thu, 24 Sep 2020 14:09:57 +0200
From: Frederic Weisbecker <frederic@kernel.org>
To: peterz@infradead.org
Message-ID: <20200924120956.GA19346@lenoir>
References: <20200923181126.223766-1-nitesh@redhat.com>
 <20200923181126.223766-2-nitesh@redhat.com>
 <20200924084029.GC1362448@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924084029.GC1362448@hirez.programming.kicks-ass.net>
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
Cc: juri.lelli@redhat.com, linux-pci@vger.kernel.org, jerinj@marvell.com,
 sassmann@redhat.com, vincent.guittot@linaro.org, hch@infradead.org,
 mingo@redhat.com, intel-wired-lan@lists.osuosl.org, helgaas@kernel.org,
 thomas.lendacky@amd.com, mathias.nyman@intel.com, jlelli@redhat.com,
 jiri@nvidia.com, bhelgaas@google.com, Nitesh Narayan Lal <nitesh@redhat.com>,
 mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, mtosatti@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 24, 2020 at 10:40:29AM +0200, peterz@infradead.org wrote:
> On Wed, Sep 23, 2020 at 02:11:23PM -0400, Nitesh Narayan Lal wrote:
> > Introduce a new API hk_num_online_cpus(), that can be used to
> > retrieve the number of online housekeeping CPUs that are meant to handle
> > managed IRQ jobs.
> > 
> > This API is introduced for the drivers that were previously relying only
> > on num_online_cpus() to determine the number of MSIX vectors to create.
> > In an RT environment with large isolated but fewer housekeeping CPUs this
> > was leading to a situation where an attempt to move all of the vectors
> > corresponding to isolated CPUs to housekeeping CPUs were failing due to
> > per CPU vector limit.
> > 
> > Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> > ---
> >  include/linux/sched/isolation.h | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/include/linux/sched/isolation.h b/include/linux/sched/isolation.h
> > index cc9f393e2a70..2e96b626e02e 100644
> > --- a/include/linux/sched/isolation.h
> > +++ b/include/linux/sched/isolation.h
> > @@ -57,4 +57,17 @@ static inline bool housekeeping_cpu(int cpu, enum hk_flags flags)
> >  	return true;
> >  }
> >  
> > +static inline unsigned int hk_num_online_cpus(void)
> 
> This breaks with the established naming of that header.

I guess we can make it housekeeping_num_online_cpus() ?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

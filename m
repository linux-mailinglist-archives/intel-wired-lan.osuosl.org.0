Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E852970E4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Oct 2020 15:51:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DB6D871D8;
	Fri, 23 Oct 2020 13:51:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5oDMRmcsnuSN; Fri, 23 Oct 2020 13:51:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF9F08721C;
	Fri, 23 Oct 2020 13:51:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 94E011BF383
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 13:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9040587282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 13:29:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rB59kSDulMEu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Oct 2020 13:29:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E3D3587255
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 13:29:53 +0000 (UTC)
Received: from localhost (unknown [176.167.163.208])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2474208E4;
 Fri, 23 Oct 2020 13:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603459793;
 bh=PIj6gL/WL9dtdsJ1vZSsuwhKFFiZ2/p2I3g1d0riLbg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rw60FdcUJe+qyTPBmrOTcj5E3NoXurL8oWAxHIHPprbeTYuMCT+7Gs3n5RBd2Jy5W
 WRf+9+yliV+0OQ5yC5iaBH4gFNMCFFUYp3ljQpakpeC0v3npDWlVhd5N6nD37RbpdM
 ZmYSewtFRn5JthS5ZvXUueon8401r4+/gaYy2aI0=
Date: Fri, 23 Oct 2020 15:29:50 +0200
From: Frederic Weisbecker <frederic@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <20201023132950.GA47962@lothringen>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-3-nitesh@redhat.com>
 <20201023132505.GZ2628@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023132505.GZ2628@hirez.programming.kicks-ass.net>
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
 lgoncalv@redhat.com, jlelli@redhat.com, jiri@nvidia.com, bhelgaas@google.com,
 Thomas Gleixner <tglx@linutronix.de>, Nitesh Narayan Lal <nitesh@redhat.com>,
 mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, mtosatti@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 23, 2020 at 03:25:05PM +0200, Peter Zijlstra wrote:
> On Mon, Sep 28, 2020 at 02:35:27PM -0400, Nitesh Narayan Lal wrote:
> > Extend nohz_full feature set to include isolation from managed IRQS. This
> 
> So you say it's for managed-irqs, the feature is actually called
> MANAGED_IRQ, but, AFAICT, it does *NOT* in fact affect managed IRQs.
> 
> Also, as per Thomas' earlier points, managed-irqs are in fact perfectly
> fine and don't need help at at...
> 
> > is required specifically for setups that only uses nohz_full and still
> > requires isolation for maintaining lower latency for the listed CPUs.
> > 
> > Suggested-by: Frederic Weisbecker <frederic@kernel.org>

Ah and yes there is this tag :-p

So that's my bad, I really thought this thing was about managed IRQ.
The problem is that I can't find a single documentation about them so I'm
too clueless on that matter.

Thanks.

> > Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> > ---
> >  kernel/sched/isolation.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/kernel/sched/isolation.c b/kernel/sched/isolation.c
> > index 5a6ea03f9882..9df9598a9e39 100644
> > --- a/kernel/sched/isolation.c
> > +++ b/kernel/sched/isolation.c
> > @@ -141,7 +141,7 @@ static int __init housekeeping_nohz_full_setup(char *str)
> >  	unsigned int flags;
> >  
> >  	flags = HK_FLAG_TICK | HK_FLAG_WQ | HK_FLAG_TIMER | HK_FLAG_RCU |
> > -		HK_FLAG_MISC | HK_FLAG_KTHREAD;
> > +		HK_FLAG_MISC | HK_FLAG_KTHREAD | HK_FLAG_MANAGED_IRQ;
> >  
> >  	return housekeeping_setup(str, flags);
> >  }
> > -- 
> > 2.18.2
> > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

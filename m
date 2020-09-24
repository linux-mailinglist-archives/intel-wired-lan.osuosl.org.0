Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BCA2773A8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Sep 2020 16:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 95C592E104;
	Thu, 24 Sep 2020 14:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3LmEZnueYBlj; Thu, 24 Sep 2020 14:10:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3E3682E12A;
	Thu, 24 Sep 2020 14:09:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E419A1BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 12:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E033486AA4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 12:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vc_TkmSkohfq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Sep 2020 12:24:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 189D5854C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 12:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=h6ZjDVpARQmoVPgdF+zXfNDaRDvpx+lMRIGHPuMBPtY=; b=aOAz9t9fqjembb+394L2A1bdbS
 z/vtPluZC+nVb3yOaU1S+Fq6jcMR7ammr4tS1JqhyGzj63uuYsLw9Gm+g3Il2eWJKtdH7irakPNSV
 AyCpkbHXvIcIPg2R9o0JL4rTkaXPhdHfxJCipWE0wvTnVVZ6y1sJvk3ruEzy04oB8eCckhOsh1VKw
 nsasweiQEUZIp/j66KN/XMrmJfHSh6WLy9ImN8LAkH/5DDBSR1dk9OW3TwRrqTxBJXUt6PtV/sJmS
 XMIrli2fh1iV3Io+Ljl61Z3BG2nRYu6zzswKCqzCFLDu5OCv257xpqTZwomAknTyuD6uZVTn8MPEm
 YeBG2WwQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLQIA-0005qN-Om; Thu, 24 Sep 2020 12:24:06 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 508843059DE;
 Thu, 24 Sep 2020 14:24:03 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id ECE7E20315103; Thu, 24 Sep 2020 14:24:02 +0200 (CEST)
Date: Thu, 24 Sep 2020 14:24:02 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Frederic Weisbecker <frederic@kernel.org>
Message-ID: <20200924122402.GH2628@hirez.programming.kicks-ass.net>
References: <20200923181126.223766-1-nitesh@redhat.com>
 <20200923181126.223766-2-nitesh@redhat.com>
 <20200924084029.GC1362448@hirez.programming.kicks-ass.net>
 <20200924120956.GA19346@lenoir>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924120956.GA19346@lenoir>
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

On Thu, Sep 24, 2020 at 02:09:57PM +0200, Frederic Weisbecker wrote:

> > > +static inline unsigned int hk_num_online_cpus(void)
> > 
> > This breaks with the established naming of that header.
> 
> I guess we can make it housekeeping_num_online_cpus() ?

That would be consistent :-)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

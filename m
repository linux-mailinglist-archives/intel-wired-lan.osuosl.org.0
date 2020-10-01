Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA80280358
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Oct 2020 17:58:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B3268487A;
	Thu,  1 Oct 2020 15:58:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cfTAee7JIdas; Thu,  1 Oct 2020 15:58:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 04A3784647;
	Thu,  1 Oct 2020 15:58:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 82ED41BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 15:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7EB1887355
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 15:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N5-BT3kesopD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Oct 2020 15:49:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0D92187353
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 15:49:53 +0000 (UTC)
Received: from localhost (fla63-h02-176-172-189-251.dsl.sta.abo.bbox.fr
 [176.172.189.251])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01DD6206A1;
 Thu,  1 Oct 2020 15:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601567392;
 bh=I9y5FouUKvTPoyTvm4LqdvOV87V49w2rnF7/C7hQ7T8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=amCKXMR/jm4a7P6Md8X9oYQ65K+m8txVg4DBdv5WIX2Q5foNCTHzgYmcwCOvPHjGV
 iZlvMT436Re1gSb3IfJNe6ycIak49x41hVZUO1Ro77nJgw+U9uK3FSFOZdw72I3gmE
 3Uz9zjtF9zSy0TKod2n1jMZ01BkhWiWE3P62uAhU=
Date: Thu, 1 Oct 2020 17:49:49 +0200
From: Frederic Weisbecker <frederic@kernel.org>
To: Nitesh Narayan Lal <nitesh@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
Message-ID: <20201001154949.GA7303@lothringen>
References: <20200928183529.471328-1-nitesh@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928183529.471328-1-nitesh@redhat.com>
X-Mailman-Approved-At: Thu, 01 Oct 2020 15:58:24 +0000
Subject: Re: [Intel-wired-lan] [PATCH v4 0/4] isolation: limit msix vectors
 to housekeeping CPUs
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
 mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, mtosatti@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 28, 2020 at 02:35:25PM -0400, Nitesh Narayan Lal wrote:
> Nitesh Narayan Lal (4):
>   sched/isolation: API to get number of housekeeping CPUs
>   sched/isolation: Extend nohz_full to isolate managed IRQs
>   i40e: Limit msix vectors to housekeeping CPUs
>   PCI: Limit pci_alloc_irq_vectors() to housekeeping CPUs
> 
>  drivers/net/ethernet/intel/i40e/i40e_main.c |  3 ++-
>  drivers/pci/msi.c                           | 18 ++++++++++++++++++
>  include/linux/sched/isolation.h             |  9 +++++++++
>  kernel/sched/isolation.c                    |  2 +-
>  4 files changed, 30 insertions(+), 2 deletions(-)

Acked-by: Frederic Weisbecker <frederic@kernel.org>

Peter, if you're ok with the set, I guess this should go through
the scheduler tree?

Thanks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC70293DBD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Oct 2020 15:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5004A872E0;
	Tue, 20 Oct 2020 13:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zv6oyZFVBvUK; Tue, 20 Oct 2020 13:50:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A91687304;
	Tue, 20 Oct 2020 13:50:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 016F71BF852
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 13:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F0A1987280
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 13:41:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lQJpzLfoSEyf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Oct 2020 13:41:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 46EE78726C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 13:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=4vW5VXilK7EsyfO4dPaDcP262lkk9u9nP43QqAXpv9o=; b=xkc15xWP2oUKBp63sflEvxBDBa
 Cpz/U6a/YNxBc/GNqwflCrTWWfEnyhrLvKzVxy+FNRknLqEYUNB6RhdwWPKMlvpQ4xg7JJ/XkBilo
 q7QUjhv/WsWPwJYdXhdtx4Lc9qd+kJFDDpNK43AiN9vO3W9DwLBNGGD8Utslryom4kWhPhxq9EPIL
 BnLhrFaS/HluTGI3ucPrvi3dw9glxbYSgWze+TZEVpJFl0jRmBuSUzCD+61w4HQG0vtlthLswWD2P
 DQGya+IzO4qKZq3IEzmvSILgNefksN9ddf4HKEg8Um06/WO2s6mSuXXZ5C9rOnnBV1n6U4WzsDQxO
 41v7xSXw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUrtL-00034B-NM; Tue, 20 Oct 2020 13:41:31 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 964AC304D28;
 Tue, 20 Oct 2020 15:41:28 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 6C545203280A1; Tue, 20 Oct 2020 15:41:28 +0200 (CEST)
Date: Tue, 20 Oct 2020 15:41:28 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Message-ID: <20201020134128.GT2628@hirez.programming.kicks-ass.net>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-5-nitesh@redhat.com>
 <20201016122046.GP2611@hirez.programming.kicks-ass.net>
 <79f382a7-883d-ff42-394d-ec4ce81fed6a@redhat.com>
 <20201019111137.GL2628@hirez.programming.kicks-ass.net>
 <20201019140005.GB17287@fuller.cnet>
 <20201020073055.GY2611@hirez.programming.kicks-ass.net>
 <078e659e-d151-5bc2-a7dd-fe0070267cb3@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <078e659e-d151-5bc2-a7dd-fe0070267cb3@redhat.com>
X-Mailman-Approved-At: Tue, 20 Oct 2020 13:50:11 +0000
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
Cc: juri.lelli@redhat.com, linux-pci@vger.kernel.org, sassmann@redhat.com,
 vincent.guittot@linaro.org, hch@infradead.org, mingo@redhat.com,
 intel-wired-lan@lists.osuosl.org, helgaas@kernel.org, thomas.lendacky@amd.com,
 lgoncalv@redhat.com, frederic@kernel.org, jlelli@redhat.com, jiri@nvidia.com,
 bhelgaas@google.com, mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, Marcelo Tosatti <mtosatti@redhat.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 20, 2020 at 09:00:01AM -0400, Nitesh Narayan Lal wrote:
> 
> On 10/20/20 3:30 AM, Peter Zijlstra wrote:
> > On Mon, Oct 19, 2020 at 11:00:05AM -0300, Marcelo Tosatti wrote:
> >>> So I think it is important to figure out what that driver really wants
> >>> in the nohz_full case. If it wants to retain N interrupts per CPU, and
> >>> only reduce the number of CPUs, the proposed interface is wrong.
> >> It wants N interrupts per non-isolated (AKA housekeeping) CPU.
> > Then the patch is wrong and the interface needs changing from @min_vecs,
> > @max_vecs to something that expresses the N*nr_cpus relation.
> 
> Reading Marcelo's comment again I think what is really expected is 1
> interrupt per non-isolated (housekeeping) CPU (not N interrupts).

Then what is the point of them asking for N*nr_cpus when there is no
isolation?

Either everybody wants 1 interrupts per CPU and we can do the clamp
unconditionally, in which case we should go fix this user, or they want
multiple per cpu and we should go fix the interface.

It cannot be both.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

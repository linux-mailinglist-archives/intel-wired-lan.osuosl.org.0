Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 376C7293DBA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Oct 2020 15:50:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBBF086CEA;
	Tue, 20 Oct 2020 13:50:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-1OKmC+XCcS; Tue, 20 Oct 2020 13:50:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2677586C6E;
	Tue, 20 Oct 2020 13:50:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E2EE1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 07:31:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 594D18701E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 07:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DSGMyM-p6xgY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Oct 2020 07:31:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 01AF686EA4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 07:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0jpAo9lbXaLZETK0hjbBwDIDeTjw7Zq4maw1xDTUWIc=; b=tQbpYEWMgnzikItrfiwfOOp1g+
 Hd3DMlLkRHGio/v1DuIL4w/ZAhR1TJaN9LYf5L9MLZ37bm77a22hC17TpTZQLpR8akbcFs+xqgZ5N
 9P7q1PoT3Yt9VbmxA6H9h4ifUl+hXWPZd2n1Rw4RIe/iX9qAGgrNo+n7k90EQWCbdOwmll3sd5oSh
 TGTLXFWSqvLTMB0Ta413MhP6c/DZP5f8UfC2VqJ4C86Rj85LEzIuyBrGUxES/j9yVcek8fmgiaQXj
 8kES1fOrNourzGZJ9CJhi4cPcQr0LgPKv6zmLw1n0E4SmQkhKRMS76Fyz2qeteH2DEblFpN8J3rfE
 2VGekPFA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUm6j-0000je-1t; Tue, 20 Oct 2020 07:30:57 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 4DF333011FE;
 Tue, 20 Oct 2020 09:30:55 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 3617E2B785033; Tue, 20 Oct 2020 09:30:55 +0200 (CEST)
Date: Tue, 20 Oct 2020 09:30:55 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marcelo Tosatti <mtosatti@redhat.com>
Message-ID: <20201020073055.GY2611@hirez.programming.kicks-ass.net>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-5-nitesh@redhat.com>
 <20201016122046.GP2611@hirez.programming.kicks-ass.net>
 <79f382a7-883d-ff42-394d-ec4ce81fed6a@redhat.com>
 <20201019111137.GL2628@hirez.programming.kicks-ass.net>
 <20201019140005.GB17287@fuller.cnet>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019140005.GB17287@fuller.cnet>
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
 bhelgaas@google.com, Nitesh Narayan Lal <nitesh@redhat.com>,
 mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 19, 2020 at 11:00:05AM -0300, Marcelo Tosatti wrote:
> > So I think it is important to figure out what that driver really wants
> > in the nohz_full case. If it wants to retain N interrupts per CPU, and
> > only reduce the number of CPUs, the proposed interface is wrong.
> 
> It wants N interrupts per non-isolated (AKA housekeeping) CPU.

Then the patch is wrong and the interface needs changing from @min_vecs,
@max_vecs to something that expresses the N*nr_cpus relation.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

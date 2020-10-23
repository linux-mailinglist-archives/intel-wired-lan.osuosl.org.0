Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB852970E2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Oct 2020 15:51:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68BDD87390;
	Fri, 23 Oct 2020 13:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KLUJQz9Hrnl2; Fri, 23 Oct 2020 13:51:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 913D187394;
	Fri, 23 Oct 2020 13:51:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F3FAF1BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 08:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E88CD8777C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 08:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KTIuzeLq3R82 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Oct 2020 08:58:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F074687241
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 08:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=r01fJA7OgsGuj6qzJJYCZlHCDBRSDDX9mtEwK883Jsg=; b=T18SePZ/KnrnsQ8hzb0a3g6Xkt
 Vehej4wSMVXf5y+ldujA4vXtiHCOz5rZuc/CjU9b2bmIXiexcYDMKBNZMR6WJxaKZ3jKiiTmFc5Pv
 GfD458ysnnAAoGqLRFI/8Rc1AiqDFaI86AHsIfFlJTEsULAXd7Ur/l2yOj+0Fkmw6rL68Cle5JPN+
 p5S6vkP0g/42N0lf/mYzCog+x3TsXfEZwaiRI0j5Fj97tjjOqmw3SGXPQt8obGn5OtKowuGQc1NL3
 XW5dqOp8xrDXnJpjF+/RkxRK88spY0bT3XkG9J4WGC51fT9Siocgbz+Y0HCyWIdMW0rmqdoEv9GNF
 uWGzdZjQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVsu5-0005Ug-Lr; Fri, 23 Oct 2020 08:58:29 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id AD926304D28;
 Fri, 23 Oct 2020 10:58:26 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 9D2D72BB222F7; Fri, 23 Oct 2020 10:58:26 +0200 (CEST)
Date: Fri, 23 Oct 2020 10:58:26 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Message-ID: <20201023085826.GP2611@hirez.programming.kicks-ass.net>
References: <20200928183529.471328-5-nitesh@redhat.com>
 <20201016122046.GP2611@hirez.programming.kicks-ass.net>
 <79f382a7-883d-ff42-394d-ec4ce81fed6a@redhat.com>
 <20201019111137.GL2628@hirez.programming.kicks-ass.net>
 <20201019140005.GB17287@fuller.cnet>
 <20201020073055.GY2611@hirez.programming.kicks-ass.net>
 <078e659e-d151-5bc2-a7dd-fe0070267cb3@redhat.com>
 <20201020134128.GT2628@hirez.programming.kicks-ass.net>
 <6736e643-d4ae-9919-9ae1-a73d5f31463e@redhat.com>
 <260f4191-5b9f-6dc1-9f11-085533ac4f55@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <260f4191-5b9f-6dc1-9f11-085533ac4f55@redhat.com>
X-Mailman-Approved-At: Fri, 23 Oct 2020 13:51:10 +0000
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
 helgaas@kernel.org, intel-wired-lan@lists.osuosl.org, thomas.lendacky@amd.com,
 lgoncalv@redhat.com, frederic@kernel.org, jlelli@redhat.com, jiri@nvidia.com,
 bhelgaas@google.com, Thomas Gleixner <tglx@linutronix.de>,
 mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, Marcelo Tosatti <mtosatti@redhat.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 22, 2020 at 01:47:14PM -0400, Nitesh Narayan Lal wrote:

> Hi Peter,
> =

> So based on the suggestions from you and Thomas, I think something like t=
he
> following should do the job within pci_alloc_irq_vectors_affinity():
> =

> + =A0 =A0 =A0 if (!pci_is_managed(dev) && (hk_cpus < num_online_cpus()))
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 max_vecs =3D clamp(hk_cpus, min_vecs, max_v=
ecs);
> =

> I do know that you didn't like the usage of "hk_cpus < num_online_cpus()"
> and to an extent I agree that it does degrade the code clarity.

It's not just code clarity; I simply don't understand it. It feels like
a band-aid that breaks thing.

At the very least it needs a ginormous (and coherent) comment that
explains:

 - the interface
 - the usage
 - this hack

> However, since there is a certain inconsistency in the number of vectors
> that drivers request through this API IMHO we will need this, otherwise
> we could cause an impact on the drivers even in setups that doesn't
> have any isolated CPUs.

So shouldn't we then fix the drivers / interface first, to get rid of
this inconsistency?

> If you agree, I can send the next version of the patch-set.

Well, it's not just me you have to convince.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

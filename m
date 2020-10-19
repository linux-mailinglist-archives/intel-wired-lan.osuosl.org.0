Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21830292844
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Oct 2020 15:36:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB16C8716A;
	Mon, 19 Oct 2020 13:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mgRbpdlwUs21; Mon, 19 Oct 2020 13:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B3C687437;
	Mon, 19 Oct 2020 13:36:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8D181BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 11:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E3E3C8755B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 11:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DFXnT05jLwww for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Oct 2020 11:11:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 089618755A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 11:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=bDcR7UZAo6x2NnmYgmfbzx+iKi+io+kT/yc3B05Vq8w=; b=dG1bd3uiGTmLS2XdOdubnm/OuZ
 P6KPYF4d6TlO9l9Mb+ClxI4oDFFQ5B3Mo+4QAgnDkmkjXwq6mWp0jrROT9EsszcmuTVtMbtDz2Lj1
 Jx8bT3ltK/RIwsr2+zpgb0FbRMhnXDkbKvTI5uqMtTFpR5HqJBzjT06hOsBY1I2avywzAOMx3VoMQ
 T7MLozeyRJQW8bRXfQVDsGB83DngFBbJM4Gqc29tTjiEcYALeqKs8SGwpr+CeeUyKtNFHEC/v4kj6
 s8L3OjnxD95DBO+JIrIqg9o96iWAiQ/fua+8+9/FdXLDzEQ1iQKxaGH3zwQX07soYf/JPPOU0UCBC
 GDQRBFGQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUT4m-0001kH-Q4; Mon, 19 Oct 2020 11:11:41 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id A54873011E6;
 Mon, 19 Oct 2020 13:11:37 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 8859420419078; Mon, 19 Oct 2020 13:11:37 +0200 (CEST)
Date: Mon, 19 Oct 2020 13:11:37 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Message-ID: <20201019111137.GL2628@hirez.programming.kicks-ass.net>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-5-nitesh@redhat.com>
 <20201016122046.GP2611@hirez.programming.kicks-ass.net>
 <79f382a7-883d-ff42-394d-ec4ce81fed6a@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79f382a7-883d-ff42-394d-ec4ce81fed6a@redhat.com>
X-Mailman-Approved-At: Mon, 19 Oct 2020 13:36:35 +0000
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
 dennis.dalessandro@intel.com, mtosatti@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Oct 18, 2020 at 02:14:46PM -0400, Nitesh Narayan Lal wrote:
> >> +	hk_cpus =3D housekeeping_num_online_cpus(HK_FLAG_MANAGED_IRQ);
> >> +
> >> +	/*
> >> +	 * If we have isolated CPUs for use by real-time tasks, to keep the
> >> +	 * latency overhead to a minimum, device-specific IRQ vectors are mo=
ved
> >> +	 * to the housekeeping CPUs from the userspace by changing their
> >> +	 * affinity mask. Limit the vector usage to keep housekeeping CPUs f=
rom
> >> +	 * running out of IRQ vectors.
> >> +	 */
> >> +	if (hk_cpus < num_online_cpus()) {
> >> +		if (hk_cpus < min_vecs)
> >> +			max_vecs =3D min_vecs;
> >> +		else if (hk_cpus < max_vecs)
> >> +			max_vecs =3D hk_cpus;
> > is that:
> >
> > 		max_vecs =3D clamp(hk_cpus, min_vecs, max_vecs);
> =

> Yes, I think this will do.
> =

> >
> > Also, do we really need to have that conditional on hk_cpus <
> > num_online_cpus()? That is, why can't we do this unconditionally?
> =

> FWIU most of the drivers using this API already restricts the number of
> vectors based on the num_online_cpus, if we do it unconditionally we can
> unnecessary duplicate the restriction for cases where we don't have any
> isolated CPUs.

unnecessary isn't really a concern here, this is a slow path. What's
important is code clarity.

> Also, different driver seems to take different factors into consideration
> along with num_online_cpus while finding the max_vecs to request, for
> example in the case of mlx5:
> MLX5_CAP_GEN(dev, num_ports) * num_online_cpus() +
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 MLX5_EQ_VEC_COMP_BASE
> =

> Having hk_cpus < num_online_cpus() helps us ensure that we are only
> changing the behavior when we have isolated CPUs.
> =

> Does that make sense?

That seems to want to allocate N interrupts per cpu (plus some random
static amount, which seems weird, but whatever). This patch breaks that.

So I think it is important to figure out what that driver really wants
in the nohz_full case. If it wants to retain N interrupts per CPU, and
only reduce the number of CPUs, the proposed interface is wrong.

> > And what are the (desired) semantics vs hotplug? Using a cpumask without
> > excluding hotplug is racy.
> =

> The housekeeping_mask should still remain constant, isn't?
> In any case, I can double check this.

The goal is very much to have that dynamically configurable.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

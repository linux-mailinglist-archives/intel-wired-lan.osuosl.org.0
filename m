Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9151292928
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Oct 2020 16:20:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 686C887385;
	Mon, 19 Oct 2020 14:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EF3AwjMi0nQ2; Mon, 19 Oct 2020 14:20:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 204B787267;
	Mon, 19 Oct 2020 14:20:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F6221BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 14:00:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 375508746C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 14:00:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rYsTN9rlHv2d for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Oct 2020 14:00:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 16DC6867F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 14:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603116034;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bwyahxi85URE6wJwi5L9sObd1frPfqSbtg8aT1VkGus=;
 b=VujqTsCb7eFiOZJ4sMf1BYyRhLl3V3oBkjTvn2JNKT1z6UPjC5OLqatlLfafuIF9oWRLwH
 NPS0k3HtAn1rwEZ2TLBZUcTappEusG5q1FiQfltXgvNiKnvF/hoiGeOIaCkJIdSpk0mPhC
 NxNIsqxeg0mI9yvS+eAxP/KXx+IoVdw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-206-ueyBBMGRNu-6PNBOYI-31A-1; Mon, 19 Oct 2020 10:00:32 -0400
X-MC-Unique: ueyBBMGRNu-6PNBOYI-31A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8653710E218F;
 Mon, 19 Oct 2020 14:00:29 +0000 (UTC)
Received: from fuller.cnet (ovpn-112-3.gru2.redhat.com [10.97.112.3])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C9C825B4B0;
 Mon, 19 Oct 2020 14:00:28 +0000 (UTC)
Received: by fuller.cnet (Postfix, from userid 1000)
 id B10F0417F242; Mon, 19 Oct 2020 11:00:05 -0300 (-03)
Date: Mon, 19 Oct 2020 11:00:05 -0300
From: Marcelo Tosatti <mtosatti@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <20201019140005.GB17287@fuller.cnet>
References: <20200928183529.471328-1-nitesh@redhat.com>
 <20200928183529.471328-5-nitesh@redhat.com>
 <20201016122046.GP2611@hirez.programming.kicks-ass.net>
 <79f382a7-883d-ff42-394d-ec4ce81fed6a@redhat.com>
 <20201019111137.GL2628@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019111137.GL2628@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mailman-Approved-At: Mon, 19 Oct 2020 14:20:05 +0000
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 19, 2020 at 01:11:37PM +0200, Peter Zijlstra wrote:
> On Sun, Oct 18, 2020 at 02:14:46PM -0400, Nitesh Narayan Lal wrote:
> > >> +	hk_cpus =3D housekeeping_num_online_cpus(HK_FLAG_MANAGED_IRQ);
> > >> +
> > >> +	/*
> > >> +	 * If we have isolated CPUs for use by real-time tasks, to keep the
> > >> +	 * latency overhead to a minimum, device-specific IRQ vectors are =
moved
> > >> +	 * to the housekeeping CPUs from the userspace by changing their
> > >> +	 * affinity mask. Limit the vector usage to keep housekeeping CPUs=
 from
> > >> +	 * running out of IRQ vectors.
> > >> +	 */
> > >> +	if (hk_cpus < num_online_cpus()) {
> > >> +		if (hk_cpus < min_vecs)
> > >> +			max_vecs =3D min_vecs;
> > >> +		else if (hk_cpus < max_vecs)
> > >> +			max_vecs =3D hk_cpus;
> > > is that:
> > >
> > > 		max_vecs =3D clamp(hk_cpus, min_vecs, max_vecs);
> > =

> > Yes, I think this will do.
> > =

> > >
> > > Also, do we really need to have that conditional on hk_cpus <
> > > num_online_cpus()? That is, why can't we do this unconditionally?
> > =

> > FWIU most of the drivers using this API already restricts the number of
> > vectors based on the num_online_cpus, if we do it unconditionally we can
> > unnecessary duplicate the restriction for cases where we don't have any
> > isolated CPUs.
> =

> unnecessary isn't really a concern here, this is a slow path. What's
> important is code clarity.
> =

> > Also, different driver seems to take different factors into considerati=
on
> > along with num_online_cpus while finding the max_vecs to request, for
> > example in the case of mlx5:
> > MLX5_CAP_GEN(dev, num_ports) * num_online_cpus() +
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 MLX5_EQ_VEC_COMP_BASE
> > =

> > Having hk_cpus < num_online_cpus() helps us ensure that we are only
> > changing the behavior when we have isolated CPUs.
> > =

> > Does that make sense?
> =

> That seems to want to allocate N interrupts per cpu (plus some random
> static amount, which seems weird, but whatever). This patch breaks that.

On purpose. For the isolated CPUs we don't want network device =

interrupts (in this context).

> So I think it is important to figure out what that driver really wants
> in the nohz_full case. If it wants to retain N interrupts per CPU, and
> only reduce the number of CPUs, the proposed interface is wrong.

It wants N interrupts per non-isolated (AKA housekeeping) CPU.
Zero interrupts for isolated interrupts.

> > > And what are the (desired) semantics vs hotplug? Using a cpumask with=
out
> > > excluding hotplug is racy.
> > =

> > The housekeeping_mask should still remain constant, isn't?
> > In any case, I can double check this.
> =

> The goal is very much to have that dynamically configurable.

Yes, but this patch is a fix for customer bug in the old, static on-boot =

isolation CPU configuration.

---

Discussing the dynamic configuration (not this patch!) case:

Would need to enable/disable interrupts for a particular device =

on a per-CPU basis. Such interface does not exist yet.

Perhaps that is what you are looking for when writing "proposed interface
is wrong" Peter? =




_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

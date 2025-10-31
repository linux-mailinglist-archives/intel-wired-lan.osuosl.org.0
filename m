Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02057C2539D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Oct 2025 14:19:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B058A83CD5;
	Fri, 31 Oct 2025 13:19:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6TIguIPyUF6f; Fri, 31 Oct 2025 13:19:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 055E283CB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761916763;
	bh=gWR4Sgd26TCDtl1/nDhgivtwhURlv4dp+N+a9qv98AI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8LiDs3WISaiuGPFg6wqWUb6L6lQYpERfBxkA75MhUQD5AEW6h2GY1oL93BAvo0Wnc
	 im9v/h5Sa8oMYen4ETJW54PXTq+gDfVg4QJ4OU0kqtYOdSr2JI9nS9RAJn8fIShosm
	 3PLP7Ff9dF9xMDsbANuS+8CsK+Au1BWu7sN7NUSb59EVyMaIQtcNMARutb9+0sH9BA
	 HGBjL1kle2T63Wi0g+a/V0tSrB5eoJ8/ScddqlH8JYdp65cit+ZiCTrHhlKisQGC/O
	 JrlTJyJs4AFR9qmR+i1iwxqjFQLH/jYk1DOT9f0oaQhZPq9v9MIxrZpev0Pa8V6phP
	 nnv4aZL2k1o7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 055E283CB5;
	Fri, 31 Oct 2025 13:19:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 51F892A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 13:19:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 42A4760FD8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 13:19:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8DMZ9Y_e59hX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Oct 2025 13:19:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3760260F97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3760260F97
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3760260F97
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 13:19:19 +0000 (UTC)
X-CSE-ConnectionGUID: dgEGUjzDRNig3cWehTTjFw==
X-CSE-MsgGUID: Zo9+OiIeTeCMW2tEH9c82Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="74676920"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="74676920"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 06:19:20 -0700
X-CSE-ConnectionGUID: Bl+i9EzFTE+wfRK/Lq6/pQ==
X-CSE-MsgGUID: akk5Bya7R9yaDhKS6P+3BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="209801248"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 06:19:18 -0700
Date: Fri, 31 Oct 2025 14:17:11 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com, jacob.e.keller@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aQS216HKiUmF0tky@mev-dev.igk.intel.com>
References: <20251030083053.2166525-1-michal.swiatkowski@linux.intel.com>
 <370cf4f0-c0a8-480a-939d-33c75961e587@molgen.mpg.de>
 <aQMxvzYqJkwNBYf0@mev-dev.igk.intel.com>
 <621665db-e881-4adc-8caa-9275a4ed7a50@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <621665db-e881-4adc-8caa-9275a4ed7a50@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761916760; x=1793452760;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OkpMyqH9LMB5gbHNeVe9QsvLOlwbhxR1aW4ZuqBdvtM=;
 b=GLj9bMbwO6dhXWGNr5Fvvc/LcI0MYSZUKsLnZVwQ1DTAVhvYjAWciAbV
 iWni6hjtmEtPzc4r4bf6JX2MS2bMgd+Q1yM3tXEVcE2tkm8AwLiFQOZ5L
 MJoICE/aDmZzzD3qc1QfmBiILgkZ9/vdl6TtPQ+MLBqOuQ1bLZ81Pkr61
 8NneaI13jXlnenefkPhAi2UehUUpdP0OwsYc7y5yLQVRqFAWL8q1+grxy
 5HIFuB7Bm+n63a4hhGmr/g875BWjclGRnDZsSU6oWXsuYFJ1p/VHyqj+u
 WrhHzYfWqSPuw4cx1E1otcr0zfC89/OZy8q5Ls8jf+uOde/gocLm4Cmde
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GLj9bMbw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: use
 netif_get_num_default_rss_queues()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 30, 2025 at 11:39:30AM +0100, Przemek Kitszel wrote:
> On 10/30/25 10:37, Michal Swiatkowski wrote:
> > On Thu, Oct 30, 2025 at 10:10:32AM +0100, Paul Menzel wrote:
> > > Dear Michal,
> > > 
> > > 
> > > Thank you for your patch. For the summary, I’d add:
> > > 
> > > ice: Use netif_get_num_default_rss_queues() to decrease queue number
> 
> I would instead just say:
> ice: cap the default number of queues to 64
> 
> as this is exactly what happens. Then next paragraph could be:
> Use netif_get_num_default_rss_queues() as a better base (instead of
> the number of CPU cores), but still cap it to 64 to avoid excess IRQs
> assigned to PF (what would leave, in some cases, nothing for VFs).
> 
> sorry for such late nitpicks
> and, see below too

I moved away from capping to 64, now it is just call to
netif_get_num_default_rss_queues(). Following Olek's comment, dividing
by 2 is just fine now and looks like there is no good reasone to cap it
more in the driver, but let's discuss it here if you have different
opinion.

> 
> > > 
> > > Am 30.10.25 um 09:30 schrieb Michal Swiatkowski:
> > > > On some high-core systems (like AMD EPYC Bergamo, Intel Clearwater
> > > > Forest) loading ice driver with default values can lead to queue/irq
> > > > exhaustion. It will result in no additional resources for SR-IOV.
> > > 
> > > Could you please elaborate how to make the queue/irq exhaustion visible?
> > > 
> > 
> > What do you mean? On high core system, lets say num_online_cpus()
> > returns 288, on 8 ports card we have online 256 irqs per eqch PF (2k in
> > total). Driver will load with the 256 queues (and irqs) on each PF.
> > Any VFs creation command will fail due to no free irqs available.
> 
> this clearly means this is a -net material,
> even if this commit will be rather unpleasant for backports to stable
>

In my opinion it isn't. It is just about default values. Still in the
described case user can call ethtool -L and lower the queues to create
VFs without a problem.

> > (echo X > /sys/class/net/ethX/device/sriov_numvfs)
> > 
> > > > In most cases there is no performance reason for more than half
> > > > num_cpus(). Limit the default value to it using generic
> > > > netif_get_num_default_rss_queues().
> > > > 
> > > > Still, using ethtool the number of queues can be changed up to
> > > > num_online_cpus(). It can be done by calling:
> > > > $ethtool -L ethX combined $(nproc)
> > > > 
> > > > This change affects only the default queue amount.
> > > 
> > > How would you judge the regression potential, that means for people where
> > > the defaults work good enough, and the queue number is reduced now?
> > > 
> > 
> > You can take a look into commit that introduce /2 change in
> > netif_get_num_default_rss_queues() [1]. There is a good justification
> > for such situation. In short, heaving physical core number is just a
> > wasting of CPU resources.
> > 
> > [1] https://lore.kernel.org/netdev/20220315091832.13873-1-ihuguet@redhat.com/
> > 
> [...]

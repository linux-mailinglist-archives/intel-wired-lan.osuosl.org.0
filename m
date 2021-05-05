Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7B2374A36
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 May 2021 23:33:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCCF640254;
	Wed,  5 May 2021 21:33:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PVwZxPSREIio; Wed,  5 May 2021 21:33:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9CBB940253;
	Wed,  5 May 2021 21:33:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84E991BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 21:33:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E5BB60D5F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 21:33:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HuyA8Dgzz1f3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 May 2021 21:33:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39BE46066B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 21:33:49 +0000 (UTC)
IronPort-SDR: xjvtenO5QLQtC+UKZ4N5uON63Y5UxdDwh0Pn3zpHPIWnIUqUMeJiczVeKlFz+1bUHwrNRYb38a
 vPgD0upKDQUQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="196284516"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="196284516"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 14:33:49 -0700
IronPort-SDR: qA17B1L0sEau6hvQ1/IqM+zOXFmHULLRyt5tpIJNaTO7uuSYKU/bvfXUDqOg+GrAnpFd3LQY7G
 vzhRE7UDoEpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="389332534"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga003.jf.intel.com with ESMTP; 05 May 2021 14:33:46 -0700
Date: Wed, 5 May 2021 23:21:57 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20210505212157.GA63266@ranger.igk.intel.com>
References: <CAC1LvL1NHj6n+RNYRmja2YDhkcCwREuhjaBz_k255rU1jdO8Sw@mail.gmail.com>
 <CADS2XXpjasmJKP__oHsrvv3EG8n-FjB6sqHwgQfh7QgeJ8GrrQ@mail.gmail.com>
 <CAC1LvL2Q=s8pmwKAh2615fsTFEETKp96jpoLJS+75=0ztwuLFQ@mail.gmail.com>
 <CADS2XXptoyPTBObKgp3gcRZnWzoVyZrC26tDpLWhC9YrGMSefw@mail.gmail.com>
 <CAC1LvL2zmO1ntKeAoUMkJSarJBgxNhnTva3Di4047MTKqo8rPA@mail.gmail.com>
 <CAC1LvL1Kd-TCuPk0BEQyGvEiLzgUqkZHOKQNOUnxXSY6NjFMmw@mail.gmail.com>
 <20210505130128.00006720@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210505130128.00006720@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] Dropped packets mapping IRQs for adjusted
 queue counts on i40e
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
Cc: Xdp <xdp-newbies@vger.kernel.org>, T K Sourabh <sourabhtk37@gmail.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 05, 2021 at 01:01:28PM -0700, Jesse Brandeburg wrote:
> Zvi Effron wrote:
> 
> > On Tue, May 4, 2021 at 4:07 PM Zvi Effron <zeffron@riotgames.com> wrote:
> > > I'm suspecting it's something with how XDP_REDIRECT is implemented in
> > > the i40e driver, but I don't know if this is a) cross driver behavior,
> > > b) expected behavior, or c) a bug.
> > I think I've found the issue, and it appears to be specific to i40e
> > (and maybe other drivers, too, but not XDP itself).
> > 
> > When performing the XDP xmit, i40e uses the smp_processor_id() to
> > select the tx queue (see
> > https://elixir.bootlin.com/linux/v5.12.1/source/drivers/net/ethernet/intel/i40e/i40e_txrx.c#L3846).
> > I'm not 100% clear on how the CPU is selected (since we don't use
> > cores 0 and 1), we end up on a core whose id is higher than any
> > available queue.
> > 
> > I'm going to try to modify our IRQ mappings to test this.
> > 
> > If I'm correct, this feels like a bug to me, since it requires a user
> > to understand low level driver details to do IRQ remapping, which is a
> > bit higher level. But if it's intended, we'll just have to figure out
> > how to work around this. (Unfortunately, using split tx and rx queues
> > is not possible with i40e, so that easy solution is unavailable.)
> > 
> > --Zvi

Hey Zvi, sorry for the lack of assistance, there has been statutory free
time in Poland and today i'm in the birthday mode, but we managed to
discuss the issue with Magnus and we feel like we could have a solution
for that, more below.

> 
> 
> It seems like for Intel drivers, igc, ixgbe, i40e, ice all have
> this problem.
> 
> Notably, igb, fixes it like I would expect.

igb is correct but I think that we would like to avoid the introduction of
locking for higher speed NICs in XDP data path.

We talked with Magnus that for i40e and ice that have lots of HW
resources, we could always create the xdp_rings array of num_online_cpus()
size and use smp_processor_id() for accesses, regardless of the user's
changes to queue count.

This way the smp_processor_id() provides the serialization by itself as
we're under napi on a given cpu, so there's no need for locking
introduction - there is a per-cpu XDP ring provided. If we would stick to
the approach where you adjust the size of xdp_rings down to the shrinked
Rx queue count and use a smp_processor_id() % vsi->num_queue_pairs formula
then we could have a resource contention. Say that you did on a 16 core
system:
$ ethtool -L eth0 combined 2

and then mapped the q0 to cpu1 and q1 to cpu 11. Both queues will grab the
xdp_rings[1], so we would have to introduce the locking.

Proposed approach would just result with more Tx queues packed onto Tx
ring container of queue vector.

Thoughts? Any concerns? Should we have a 'fallback' mode if we would be
out of queues?

Currently I have a patch for ice (which is trivial) that does the thing
described above and I'm in the middle of testing it. I feel like this is
also addressing Jakub's input on the old patch that tried to resolve the
issue around that manner:

https://lore.kernel.org/netdev/20210123195219.55f6d4e1@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com/

> 
> Let's talk about it over on intel-wired-lan and cc netdev.

Let's do this now.

> 
> Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

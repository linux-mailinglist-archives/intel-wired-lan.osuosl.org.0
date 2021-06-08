Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AC139F689
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jun 2021 14:26:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABC4840462;
	Tue,  8 Jun 2021 12:26:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QtrK6SA44Dkq; Tue,  8 Jun 2021 12:26:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AE6A4045C;
	Tue,  8 Jun 2021 12:26:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5223F1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 12:26:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4DA5E402B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 12:26:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JlY23dXDcP0a for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jun 2021 12:26:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 58BC7402B5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 12:26:05 +0000 (UTC)
IronPort-SDR: w4WepXYNzvnrOGUtoxhWZIg3VlmWE11EcKWxWYYQ/4G5cEuFPKZEKFvmxrGHC6dODYqGAeLLhY
 bPK3/WDBwKZg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204647469"
X-IronPort-AV: E=Sophos;i="5.83,258,1616482800"; d="scan'208";a="204647469"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 05:26:02 -0700
IronPort-SDR: 1bb5WJ3mCHSSL5VrOzifX8sfMZtnoQj+fFtXefgePoJi8+w1TsW8E0q/h9K/bDl1kSIZgf8e+P
 0GTjLGdSUeOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,258,1616482800"; d="scan'208";a="476586564"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Jun 2021 05:26:00 -0700
Date: Tue, 8 Jun 2021 14:13:40 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <20210608121340.GB1971@ranger.igk.intel.com>
References: <20210601113236.42651-1-maciej.fijalkowski@intel.com>
 <20210601113236.42651-3-maciej.fijalkowski@intel.com>
 <39b84a66bae09568cd1f95802395af3e2df8fdb1.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39b84a66bae09568cd1f95802395af3e2df8fdb1.camel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH intel-next 2/2] ice: introduce XDP Tx
 fallback path
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bjorn@kernel.org" <bjorn@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 03, 2021 at 01:52:38AM +0100, Nguyen, Anthony L wrote:
> On Tue, 2021-06-01 at 13:32 +0200, Maciej Fijalkowski wrote:
> > Under rare circumstances there might be a situation where a
> > requirement
> > of having a XDP Tx queue per core could not be fulfilled and some of
> > the
> > Tx resources would have to be shared between cores. This yields a
> > need
> > for placing accesses to xdp_rings array onto critical section
> > protected
> > by spinlock.
> >
> > Design of handling such scenario is to at first find out how many
> > queues
> > are there that XDP could use. Any number that is not less than the
> > half
> > of a count of cores of platform is allowed. XDP queue count < cpu
> > count
> > is signalled via new VSI state ICE_VSI_XDP_FALLBACK which carries the
> > information further down to Rx rings where new ICE_TX_XDP_LOCKED is
> > set
> > based on the mentioned VSI state. This ring flag indicates that
> > locking
> > variants for getting/putting xdp_ring need to be used in fast path.
> >
> > For XDP_REDIRECT the impact on standard case (one XDP ring per CPU)
> > can
> > be reduced a bit by providing a separate ndo_xdp_xmit and swap it at
> > configuration time. However, due to the fact that net_device_ops
> > struct
> > is a const, it is not possible to replace a single ndo, so for the
> > locking variant of ndo_xdp_xmit, whole net_device_ops needs to be
> > replayed.
> >
> > It has an impact on performance (1-2 %) of a non-fallback path as
> > branches are introduced.
> >
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice.h          | 37 +++++++++
> >  drivers/net/ethernet/intel/ice/ice_base.c     |  5 ++
> >  drivers/net/ethernet/intel/ice/ice_lib.c      |  4 +-
> >  drivers/net/ethernet/intel/ice/ice_main.c     | 76
> > ++++++++++++++++++-
> >  drivers/net/ethernet/intel/ice/ice_txrx.c     | 62 ++++++++++++++-
> >  drivers/net/ethernet/intel/ice/ice_txrx.h     |  2 +
> >  drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 13 +++-
> >  7 files changed, 191 insertions(+), 8 deletions(-)
> 
> This isn't applying to next-queue/dev-queue. I believe it's becuase the
> branch has the soon to be sent tracing patch from Magnus [1].

Thanks for a heads up Tony, I'll send rebased revision.

> 
> Thanks,
> Tony
> 
> [1] https://patchwork.ozlabs.org/project/intel-wired-
> lan/patch/20210510093854.31652-3-magnus.karlsson@gmail.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

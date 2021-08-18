Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 850803F065F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Aug 2021 16:18:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 126554076B;
	Wed, 18 Aug 2021 14:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h89ATXpRU-RS; Wed, 18 Aug 2021 14:18:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79E6340761;
	Wed, 18 Aug 2021 14:18:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45DFC1BF267
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 14:18:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3493A60BA0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 14:18:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FphOE-KGnfkb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Aug 2021 14:18:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1645F60B9B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 14:18:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216059160"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="216059160"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 07:18:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="511215988"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga004.fm.intel.com with ESMTP; 18 Aug 2021 07:18:24 -0700
Date: Wed, 18 Aug 2021 16:03:30 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <20210818140330.GA25189@ranger.igk.intel.com>
References: <20210814140812.46632-1-maciej.fijalkowski@intel.com>
 <86e7bcc04d8211fe5796bd7ecbea9458a725ad03.camel@intel.com>
 <20210818075256.GA16780@ranger.igk.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210818075256.GA16780@ranger.igk.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v5 intel-next 0/9] XDP_TX improvements
 for ice
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
Cc: "joamaki@gmail.com" <joamaki@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "toke@redhat.com" <toke@redhat.com>, "bjorn@kernel.org" <bjorn@kernel.org>,
 "Lobakin, Alexandr" <alexandr.lobakin@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 18, 2021 at 09:52:56AM +0200, Maciej Fijalkowski wrote:
> On Tue, Aug 17, 2021 at 09:59:01PM +0100, Nguyen, Anthony L wrote:
> > On Sat, 2021-08-14 at 16:08 +0200, Maciej Fijalkowski wrote:
> > > With the v5, I think it's time for a proper change log.
> > 
> > This isn't applying to the Intel-wired-LAN tree. If you want it to go
> > through there, could you base the patches on that tree?
> 
> Interestingly this is the first time that happens to me and I always based
> my XDP related driver work on bpf-next.
> 
> iwl tree is some standalone tree or is it just the net-next ?

Turns out that you have the switchdev set in your branch and it's not on
net-next yet. I have adjusted my set on top of that code and sent a v6.

> 
> > 
> > Also, looking at NIPA, it looks like patches 2 and 3 have kdoc issues.
> 
> Yeah I saw kdoc issue on patch 3 and wanted to ask you to fix this if you
> would be applying that set but given that you're asking for a re-submit
> i'll fix those by myself.
> 
> > 
> > Thanks,
> > Tony
> > 
> > > v4->v5:
> > > * fix issues pointed by lkp; variables used for updating ring stats
> > >   could be un-inited
> > > * s/ice_ring/ice_rx_ring; it looks now symmetric given that we have
> > >   ice_tx_ring struct dedicated for Tx ring
> > > * go through the code and use ice_for_each_* macros; it was spotted
> > > by
> > >   Brett that there was a place around that code that this set is
> > >   touching that was not using the ice_for_each_txq. Turned out that
> > > there
> > >   were more such places
> > > * take care of coalesce related code; carry the info about type of
> > > ring
> > >   container in ice_ring_container
> > > * pull out getting rid of @ring_active onto separate patch, as
> > > suggested
> > >   by Brett
> > >
> > > v3->v4:
> > > * fix lkp issues;
> > >
> > > v2->v3:
> > > * improve XDP_TX in a proper way
> > > * split ice_ring
> > > * propagate XDP ring pointer to Rx ring
> > >
> > > v1->v2:
> > > * try to improve XDP_TX processing
> > >
> > > v4 :
> > > https://lore.kernel.org/bpf/20210806095539.34423-1-maciej.fijalkowski@intel.com/
> > > v3 :
> > > https://lore.kernel.org/bpf/20210805230046.28715-1-maciej.fijalkowski@intel.com/
> > > v2 :
> > > https://lore.kernel.org/bpf/20210705164338.58313-1-maciej.fijalkowski@intel.com/
> > > v1 :
> > > https://lore.kernel.org/bpf/20210601113236.42651-1-maciej.fijalkowski@intel.com/
> > >
> > > Thanks!
> > > Maciej
> > >
> > > Maciej Fijalkowski (9):
> > >   ice: remove ring_active from ice_ring
> > >   ice: move ice_container_type onto ice_ring_container
> > >   ice: split ice_ring onto Tx/Rx separate structs
> > >   ice: unify xdp_rings accesses
> > >   ice: do not create xdp_frame on XDP_TX
> > >   ice: propagate xdp_ring onto rx_ring
> > >   ice: optimize XDP_TX workloads
> > >   ice: introduce XDP_TX fallback path
> > >   ice: make use of ice_for_each_* macros
> > >
> > >  drivers/net/ethernet/intel/ice/ice.h          |  41 +++-
> > >  drivers/net/ethernet/intel/ice/ice_arfs.c     |   2 +-
> > >  drivers/net/ethernet/intel/ice/ice_base.c     |  51 ++---
> > >  drivers/net/ethernet/intel/ice/ice_base.h     |   8 +-
> > >  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   9 +-
> > >  drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |  10 +-
> > >  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  93 +++++----
> > >  drivers/net/ethernet/intel/ice/ice_lib.c      |  88 +++++----
> > >  drivers/net/ethernet/intel/ice/ice_lib.h      |   6 +-
> > >  drivers/net/ethernet/intel/ice/ice_main.c     | 142 +++++++++-----
> > >  drivers/net/ethernet/intel/ice/ice_ptp.c      |   2 +-
> > >  drivers/net/ethernet/intel/ice/ice_ptp.h      |   4 +-
> > >  drivers/net/ethernet/intel/ice/ice_trace.h    |  28 +--
> > >  drivers/net/ethernet/intel/ice/ice_txrx.c     | 183 +++++++++++-----
> > > --
> > >  drivers/net/ethernet/intel/ice/ice_txrx.h     | 126 +++++++-----
> > >  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  98 ++++++++--
> > >  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  14 +-
> > >  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   2 +-
> > >  drivers/net/ethernet/intel/ice/ice_xsk.c      |  70 ++++---
> > >  drivers/net/ethernet/intel/ice/ice_xsk.h      |  20 +-
> > >  20 files changed, 607 insertions(+), 390 deletions(-)
> > >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

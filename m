Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC122E03B0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 02:13:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DE99231CB;
	Tue, 22 Dec 2020 01:13:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bzZe+Bm89hL8; Tue, 22 Dec 2020 01:13:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 67A6523120;
	Tue, 22 Dec 2020 01:13:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC4A71BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 01:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B42E8230FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 01:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ywnx5Wgm36hb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 01:13:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E263230F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 01:13:40 +0000 (UTC)
IronPort-SDR: lkafdQbPH8Siz9h0SlC3Gsf5nLjBK3zccDnycW6hzH4/G0MhreE4vC9kFDqE7y83YvAt4gHdwo
 Frt61qt2Of5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="162859292"
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="162859292"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 17:13:37 -0800
IronPort-SDR: 8ptVcyoThtLTYYq7g9SWS08eSCMDzfpuBHyIzcZpDDKhJArA+Ex+1MptKMEWSmpHTRyKoPkAyz
 8R5FTp6Rv+Zg==
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="457034801"
Received: from bgdudka-mobl.amr.corp.intel.com (HELO localhost)
 ([10.212.1.108])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 17:13:36 -0800
MIME-Version: 1.0
In-Reply-To: <20201221225345.GB2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-5-andre.guedes@intel.com>
 <20201221225345.GB2943@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Mon, 21 Dec 2020 17:13:30 -0800
Message-ID: <160859961079.45139.12880409788363593695@bgdudka-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH 04/10] igc: Refactor XDP rxq info
 registration
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Quoting Maciej Fijalkowski (2020-12-21 14:53:45)
> > @@ -460,9 +460,12 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
> >       struct device *dev = rx_ring->dev;
> >       int size, desc_len, res;
> >  
> > -     res = igc_xdp_register_rxq_info(rx_ring);
> > -     if (res < 0)
> > +     res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, rx_ring->queue_index,
> > +                            0);
> > +     if (res < 0) {
> > +             netdev_err(ndev, "Failed to register xdp rxq info\n");
> 
> Maybe print out q idx?

I'll add that.

> > @@ -536,6 +539,9 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
> >       u32 srrctl = 0, rxdctl = 0;
> >       u64 rdba = ring->dma;
> >  
> > +     WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> > +                                        MEM_TYPE_PAGE_SHARED, NULL));
> 
> You should do the unroll in case it fails just like it was done in
> igc_xdp_register_rxq_info.

This was inspired in ixgbe driver.

The only reason xdp_rxq_info_reg_mem_model() could fail here is if xdp_rxq
wasn't registered. However, this is very unlikely to happen since it is
registered in igc_setup_rx_resources() which is always called before
igc_configure_rx_ring(). The WARN_ON() macro is used just in case.

If we really want to unroll, we should propagate the error back in the call
chain, changing the returning type of igc_configure_rx_ring() as well as the
other functions in the call chain, so the unrolling is done in the proper
place.

IMO, such change isn't worth it. It seems like a lot of change to cover a case
that is never expected. WARN_ON() sound more suitable in those cases. Also,
ixgbe is around for quite some time and this doesn't seem to be an issue.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

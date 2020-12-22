Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A652E0A1A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 13:42:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B3CFB2047D;
	Tue, 22 Dec 2020 12:42:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9dQo5T2r1Q09; Tue, 22 Dec 2020 12:42:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B9612273E1;
	Tue, 22 Dec 2020 12:42:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50E701BF34D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 12:42:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4CB9F87286
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 12:42:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ut8Qx2LCH8cs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 12:42:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 833D387142
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 12:42:40 +0000 (UTC)
IronPort-SDR: /haES9fOFTpfolzeP1Av7wfYmeXQjlk9QrSImQpP8c/fAtRkB7W/LAmICpqUXoYBFym8tPYStz
 ZZG0XNSMfRdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="237423382"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="237423382"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 04:42:34 -0800
IronPort-SDR: VGjJ6L/df1s5mmMK7hSQTzB/vsR6Z+Jp/8QbjT/niUOc1WOWZl1PIB5G1ZaWuAfmErKB2YFeHQ
 UEonRXnMpsqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="457436971"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga001.fm.intel.com with ESMTP; 22 Dec 2020 04:42:32 -0800
Date: Tue, 22 Dec 2020 13:32:05 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201222123205.GE2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-5-andre.guedes@intel.com>
 <20201221225345.GB2943@ranger.igk.intel.com>
 <160859961079.45139.12880409788363593695@bgdudka-mobl.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160859961079.45139.12880409788363593695@bgdudka-mobl.amr.corp.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Mon, Dec 21, 2020 at 05:13:30PM -0800, Andre Guedes wrote:
> Quoting Maciej Fijalkowski (2020-12-21 14:53:45)
> > > @@ -460,9 +460,12 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
> > >       struct device *dev = rx_ring->dev;
> > >       int size, desc_len, res;
> > >  
> > > -     res = igc_xdp_register_rxq_info(rx_ring);
> > > -     if (res < 0)
> > > +     res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, rx_ring->queue_index,
> > > +                            0);
> > > +     if (res < 0) {
> > > +             netdev_err(ndev, "Failed to register xdp rxq info\n");
> > 
> > Maybe print out q idx?
> 
> I'll add that.
> 
> > > @@ -536,6 +539,9 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
> > >       u32 srrctl = 0, rxdctl = 0;
> > >       u64 rdba = ring->dma;
> > >  
> > > +     WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> > > +                                        MEM_TYPE_PAGE_SHARED, NULL));
> > 
> > You should do the unroll in case it fails just like it was done in
> > igc_xdp_register_rxq_info.
> 
> This was inspired in ixgbe driver.
> 
> The only reason xdp_rxq_info_reg_mem_model() could fail here is if xdp_rxq
> wasn't registered. However, this is very unlikely to happen since it is
> registered in igc_setup_rx_resources() which is always called before
> igc_configure_rx_ring(). The WARN_ON() macro is used just in case.

Agreed on that but let's not disregard the other failure cases that can
happen by saying that it can only fail when xdp_rxq wasn't registered.

I believe that functions returning statuses have been written in such way
for some reason, so I feel that ignoring error statuses is a wrong
attitude.

For example, igc_setup_all_rx_resources return value is ignored in
igc_request_irq, but in __igc_open it is checked. Why?

One last thing is that all other drivers besides igb/ixgbe do the error
handling.

> 
> If we really want to unroll, we should propagate the error back in the call
> chain, changing the returning type of igc_configure_rx_ring() as well as the
> other functions in the call chain, so the unrolling is done in the proper
> place.
> 
> IMO, such change isn't worth it. It seems like a lot of change to cover a case
> that is never expected. WARN_ON() sound more suitable in those cases. Also,
> ixgbe is around for quite some time and this doesn't seem to be an issue.

Well, although I don't like it, I agree :P

The uncomfortable question would be what will happen if we fail to
register that mem model but due to the fact that driver is written in a
way that it is not profitable to do unrolling?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

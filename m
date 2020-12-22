Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B06A52E0FA5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 22:10:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3946B274D1;
	Tue, 22 Dec 2020 21:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yEYxViwsqzFx; Tue, 22 Dec 2020 21:10:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 24DA027428;
	Tue, 22 Dec 2020 21:10:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 10CEC1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 21:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0C48286984
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 21:10:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ek1qos2TMzBL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 21:10:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4A31B868B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 21:10:32 +0000 (UTC)
IronPort-SDR: fsWSh0PIRCt+1kMnoIvYW1Q7jMRTHgeWk1SI84NoRzT6IHol8MnOjWW+jV4P5//pnt2GOgBmVB
 nyksorCF06Qw==
X-IronPort-AV: E=McAfee;i="6000,8403,9843"; a="176071626"
X-IronPort-AV: E=Sophos;i="5.78,440,1599548400"; d="scan'208";a="176071626"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 13:10:26 -0800
IronPort-SDR: 072MTfSl58IBfKY1y21qQghyI/Kt1muzJpB6v8jl0DnWkjakHp+Jzy2CZaFGfmwGYkHxWVe2z7
 c7XMDuKFarew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,440,1599548400"; d="scan'208";a="392548498"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga002.fm.intel.com with ESMTP; 22 Dec 2020 13:10:24 -0800
Date: Tue, 22 Dec 2020 21:59:53 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201222205953.GB10157@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-5-andre.guedes@intel.com>
 <20201221225345.GB2943@ranger.igk.intel.com>
 <160859961079.45139.12880409788363593695@bgdudka-mobl.amr.corp.intel.com>
 <20201222123205.GE2943@ranger.igk.intel.com>
 <160865901531.65485.14120712105251086033@ticela-az-003.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160865901531.65485.14120712105251086033@ticela-az-003.amr.corp.intel.com>
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

On Tue, Dec 22, 2020 at 09:43:35AM -0800, Andre Guedes wrote:
> Quoting Maciej Fijalkowski (2020-12-22 04:32:05)
> > > > > @@ -536,6 +539,9 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
> > > > >       u32 srrctl = 0, rxdctl = 0;
> > > > >       u64 rdba = ring->dma;
> > > > >  
> > > > > +     WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> > > > > +                                        MEM_TYPE_PAGE_SHARED, NULL));
> > > > 
> > > > You should do the unroll in case it fails just like it was done in
> > > > igc_xdp_register_rxq_info.
> > > 
> > > This was inspired in ixgbe driver.
> > > 
> > > The only reason xdp_rxq_info_reg_mem_model() could fail here is if xdp_rxq
> > > wasn't registered. However, this is very unlikely to happen since it is
> > > registered in igc_setup_rx_resources() which is always called before
> > > igc_configure_rx_ring(). The WARN_ON() macro is used just in case.
> > 
> > Agreed on that but let's not disregard the other failure cases that can
> > happen by saying that it can only fail when xdp_rxq wasn't registered.
> > 
> > I believe that functions returning statuses have been written in such way
> > for some reason, so I feel that ignoring error statuses is a wrong
> > attitude.
> > 
> > For example, igc_setup_all_rx_resources return value is ignored in
> > igc_request_irq, but in __igc_open it is checked. Why?
> > 
> > One last thing is that all other drivers besides igb/ixgbe do the error
> > handling.
> 
> Agreed. I have another series with some fixes to the driver that I'm working
> on. I can fix the issue with igc_request_irq() on that series.
> 
> > > If we really want to unroll, we should propagate the error back in the call
> > > chain, changing the returning type of igc_configure_rx_ring() as well as the
> > > other functions in the call chain, so the unrolling is done in the proper
> > > place.
> > > 
> > > IMO, such change isn't worth it. It seems like a lot of change to cover a case
> > > that is never expected. WARN_ON() sound more suitable in those cases. Also,
> > > ixgbe is around for quite some time and this doesn't seem to be an issue.
> > 
> > Well, although I don't like it, I agree :P
> > 
> > The uncomfortable question would be what will happen if we fail to
> > register that mem model but due to the fact that driver is written in a
> > way that it is not profitable to do unrolling?
> 
> I see your point. In that case, I think we can tackle that in a separate series
> changing all three drivers (igc, ixgbe, and igb). Sounds good?

Sure :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

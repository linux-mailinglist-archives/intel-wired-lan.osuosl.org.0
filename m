Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BF12E0DE8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 18:43:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 99838872C4;
	Tue, 22 Dec 2020 17:43:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nYulGAtyyZA3; Tue, 22 Dec 2020 17:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ECC4D872C8;
	Tue, 22 Dec 2020 17:43:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 364391BF873
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 17:43:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 321AF866CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 17:43:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZWtHwKaW6IcI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 17:43:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C9C5D86845
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 17:43:36 +0000 (UTC)
IronPort-SDR: FdT2Jo1ybThS+DaIIQ7274aYv5a93m1SfNfrPYZXidijY7nfi0XoEney1FDuiiEe4K6lNchuB0
 3nguSok3NCXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9843"; a="172390811"
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="172390811"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 09:43:36 -0800
IronPort-SDR: vEvPcKD+SNyW/ZIBxKzWaql6o+FVyzzy6FAzFrjoT5sjcUAnidaAAoOg1T9ldhmillJ8SuNijU
 Dg3KqhawIFRw==
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="492337426"
Received: from ticela-az-003.amr.corp.intel.com (HELO localhost)
 ([10.254.73.166])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 09:43:35 -0800
MIME-Version: 1.0
In-Reply-To: <20201222123205.GE2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-5-andre.guedes@intel.com>
 <20201221225345.GB2943@ranger.igk.intel.com>
 <160859961079.45139.12880409788363593695@bgdudka-mobl.amr.corp.intel.com>
 <20201222123205.GE2943@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue, 22 Dec 2020 09:43:35 -0800
Message-ID: <160865901531.65485.14120712105251086033@ticela-az-003.amr.corp.intel.com>
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

Quoting Maciej Fijalkowski (2020-12-22 04:32:05)
> > > > @@ -536,6 +539,9 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
> > > >       u32 srrctl = 0, rxdctl = 0;
> > > >       u64 rdba = ring->dma;
> > > >  
> > > > +     WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> > > > +                                        MEM_TYPE_PAGE_SHARED, NULL));
> > > 
> > > You should do the unroll in case it fails just like it was done in
> > > igc_xdp_register_rxq_info.
> > 
> > This was inspired in ixgbe driver.
> > 
> > The only reason xdp_rxq_info_reg_mem_model() could fail here is if xdp_rxq
> > wasn't registered. However, this is very unlikely to happen since it is
> > registered in igc_setup_rx_resources() which is always called before
> > igc_configure_rx_ring(). The WARN_ON() macro is used just in case.
> 
> Agreed on that but let's not disregard the other failure cases that can
> happen by saying that it can only fail when xdp_rxq wasn't registered.
> 
> I believe that functions returning statuses have been written in such way
> for some reason, so I feel that ignoring error statuses is a wrong
> attitude.
> 
> For example, igc_setup_all_rx_resources return value is ignored in
> igc_request_irq, but in __igc_open it is checked. Why?
> 
> One last thing is that all other drivers besides igb/ixgbe do the error
> handling.

Agreed. I have another series with some fixes to the driver that I'm working
on. I can fix the issue with igc_request_irq() on that series.

> > If we really want to unroll, we should propagate the error back in the call
> > chain, changing the returning type of igc_configure_rx_ring() as well as the
> > other functions in the call chain, so the unrolling is done in the proper
> > place.
> > 
> > IMO, such change isn't worth it. It seems like a lot of change to cover a case
> > that is never expected. WARN_ON() sound more suitable in those cases. Also,
> > ixgbe is around for quite some time and this doesn't seem to be an issue.
> 
> Well, although I don't like it, I agree :P
> 
> The uncomfortable question would be what will happen if we fail to
> register that mem model but due to the fact that driver is written in a
> way that it is not profitable to do unrolling?

I see your point. In that case, I think we can tackle that in a separate series
changing all three drivers (igc, ixgbe, and igb). Sounds good?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

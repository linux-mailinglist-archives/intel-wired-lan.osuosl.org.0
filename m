Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D5748D538
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jan 2022 11:04:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E2D140937;
	Thu, 13 Jan 2022 10:04:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3R0Vevhs9guC; Thu, 13 Jan 2022 10:03:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BCBB4093B;
	Thu, 13 Jan 2022 10:03:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 593DD1BF425
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 10:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40E8F4093B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 10:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d-SC2s_x3v6s for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jan 2022 10:03:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10B5940937
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 10:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642068229; x=1673604229;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+fW1aRSr4xLuXwi+KBHwdYxovl7mOUAxOL9U625qtJY=;
 b=NRbrJFYWhvk6RcuUwScAydzsKk0X950P9U+Pti/CsniIJ5OCw8o+JYnQ
 HErAYp2Bz9sTfoyvo/tRMsRDL7LktvpFT6rKFEoJRBZmHGW269TifwuNw
 LE61qnX3es9lvVMREIwvcC0h70lFYvdaoAjNkBzQOPscxDo8z9X15Nyd/
 Aap1Ips02roLeyUFMonswX/sz5MTHmVSxSElOtXG88c7H7WNcN8TADLLO
 cPDncw1uKCQBlEFAZXQwbRHjSCYiHTU2eVj2IuCap4WhC5yob0SS3inAR
 iSneM03MZBxq7yS0L6NlxtLmKh4rXPQzMzgENRTks47qNnjGI6sqFQv92 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="304711443"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="304711443"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 02:03:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="475253754"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga006.jf.intel.com with ESMTP; 13 Jan 2022 02:03:46 -0800
Date: Thu, 13 Jan 2022 11:03:46 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Lennert Buytenhek <buytenh@wantstofly.org>
Message-ID: <Yd/5AiavcQGioQER@boxer>
References: <YdxZr0wMxvsDCpbV@wantstofly.org>
 <20220113004015.449460-1-vinicius.gomes@intel.com>
 <Yd94jSgomz2XhE/s@wantstofly.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yd94jSgomz2XhE/s@wantstofly.org>
Subject: Re: [Intel-wired-lan] [PATCH net-queue v1] igc: Fix trying to
 register an already registered xdp_rxq
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

On Thu, Jan 13, 2022 at 02:55:41AM +0200, Lennert Buytenhek wrote:
> On Wed, Jan 12, 2022 at 04:40:15PM -0800, Vinicius Costa Gomes wrote:
> 
> > When changing the number of RX descriptors, for example, by doing
> > 
> >  $ ethtool -G enp3s0 rx 1024
> > 
> > the XDP RX queue information (xdp_rxq) may be already registered, if
> > it's registered there's no need to do any thing in relation to
> > xdp_rxq, none of it's parameters will change if we change the number
> > of descriptors, for example.
> > 
> > Fixes: 4609ffb9f615 ("igc: Refactor XDP rxq info registration")
> > Reported-by: Lennert Buytenhek <buytenh@wantstofly.org>
> > Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> > ---
> > Lennert, I added your name and email to the Reported-by tag, please
> > see if you are ok with it.
> 
> This patch seems to work -- thank you!
> 
> Tested-by: Lennert Buytenhek <buytenh@arista.com>
> 
> Could you use the same email address for Reported-by: ?

I'm missing the context in here, fix itself is fine but it would be good
to include in commit message what Lennert actually reported TBH.

> 
> 
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> > index e29aadbc6744..d163139161fc 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -1,6 +1,7 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >  /* Copyright (c)  2018 Intel Corporation */
> >  
> > +#include "net/xdp.h"
> >  #include <linux/module.h>
> >  #include <linux/types.h>
> >  #include <linux/if_vlan.h>
> > @@ -499,12 +500,14 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
> >  	u8 index = rx_ring->queue_index;
> >  	int size, desc_len, res;
> >  
> > -	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index,
> > -			       rx_ring->q_vector->napi.napi_id);
> > -	if (res < 0) {
> > -		netdev_err(ndev, "Failed to register xdp_rxq index %u\n",
> > -			   index);
> > -		return res;
> > +	if (!xdp_rxq_info_is_reg(&rx_ring->xdp_rxq)) {
> > +		res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index,
> > +				       rx_ring->q_vector->napi.napi_id);
> > +		if (res < 0) {
> > +			netdev_err(ndev, "Failed to register xdp_rxq index %u\n",
> > +				   index);
> > +			return res;
> > +		}
> >  	}
> >  
> >  	size = sizeof(struct igc_rx_buffer) * rx_ring->count;
> > -- 
> > 2.34.1
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

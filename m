Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E74472B77
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 12:33:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84B1D85AAD;
	Mon, 13 Dec 2021 11:33:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gs7OHm10H3Yz; Mon, 13 Dec 2021 11:33:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41F7585AAC;
	Mon, 13 Dec 2021 11:33:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0BE41BF403
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 11:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB14A42373
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 11:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DUEkzbjrzlYP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 11:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56DA942385
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 11:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639395185; x=1670931185;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Xre9Ad5AmAEPEb5GofKXx1GfbsLtMTa0wI0QOBjjj1U=;
 b=ly4Rt5fabLxIrt8Pwndm3RSCT0tZ9MbiuZO5al1VenKWkOzIU4z5V2U4
 dhMbHQZKkA2YYnHjT62VyIfkU50JoTpOO+ez9hFxkNN4MzwQLN+JmrtFb
 Kc1zzGSJWCf78WnJEeUVTLs0ISC2ZAgz4xZsRey6RXwFTVT4orbY4sHlg
 ddlmP2ONKQRhhKgnMM7GXScu0aE5buRvdU1uOZ9F4/nmCROMt96NH7LL2
 R1wSQ9VAwwrXEuSKZbpl6kRF/o118fx2rBEj8zyGQpULvAIxyuUrI9kh9
 rFKFHYWlOAFQWo9ZsfU1LA0EZ4/M6mgnARGCgzLrg5pmSGhfYmdwDT36m A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="225574361"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="225574361"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 03:33:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="464595028"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga006.jf.intel.com with ESMTP; 13 Dec 2021 03:33:03 -0800
Date: Mon, 13 Dec 2021 12:33:02 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Message-ID: <YbcvbjeMFLTMhYaO@boxer>
References: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
 <20211210145941.5865-4-maciej.fijalkowski@intel.com>
 <20211210223746.2711444-1-alexandr.lobakin@intel.com>
 <YbcqjdVw8RfkX62Y@boxer>
 <20211213112634.37312-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211213112634.37312-1-alexandr.lobakin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH intel-net 3/5] ice: xsk: do not clear
 status_error0 for ntu + nb_buffs descriptor
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

On Mon, Dec 13, 2021 at 12:26:34PM +0100, Alexander Lobakin wrote:
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Date: Mon, 13 Dec 2021 12:12:13 +0100
> 
> > On Fri, Dec 10, 2021 at 11:37:46PM +0100, Alexander Lobakin wrote:
> > > From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > Date: Fri, 10 Dec 2021 15:59:39 +0100
> > > 
> > > > The descriptor that ntu is pointing at when we exit
> > > > ice_alloc_rx_bufs_zc() should not have its corresponding DD bit cleared
> > > > as descriptor is not allocated in there and it is not valid for HW
> > > > usage.
> > > > 
> > > > The allocation routine at the entry will fill the descriptor that ntu
> > > > points to after it was set to ntu + nb_buffs on previous call.
> > > > 
> > > > Even the spec says:
> > > > "The tail pointer should be set to one descriptor beyond the last empty
> > > > descriptor in host descriptor ring."
> > > > 
> > > > Therefore, step away from clearing the status_error0 on ntu + nb_buffs
> > > > descriptor.
> > > > 
> > > > Fixes: db804cfc21e9 ("ice: Use the xsk batched rx allocation interface")
> > > > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > > ---
> > > >  drivers/net/ethernet/intel/ice/ice_xsk.c | 7 +------
> > > >  1 file changed, 1 insertion(+), 6 deletions(-)
> > > > 
> > > > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > > index 5cb61955c1f3..874fce9fa1c3 100644
> > > > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > > @@ -394,14 +394,9 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> > > >  	}
> > > >  
> > > >  	ntu += nb_buffs;
> > > > -	if (ntu == rx_ring->count) {
> > > > -		rx_desc = ICE_RX_DESC(rx_ring, 0);
> > > > -		xdp = rx_ring->xdp_buf;
> > > > +	if (ntu == rx_ring->count)
> > > 
> > > Maybe use unlikely() here while at it? 1/512 (depending on ring
> > > size) chance is low enough.
> > 
> > This would make sense to me if we would have this check inside some loop
> > going over the buffers that we received from xsk pool.
> > 
> > I tried such approach probably on Tx side and Magnus said that unlikely
> > will move this code to the cold section at the end of the text section.
> > 
> > > 
> > > >  		ntu = 0;
> > > > -	}
> > > >  
> > > > -	/* clear the status bits for the next_to_use descriptor */
> > > > -	rx_desc->wb.status_error0 = 0;
> > > >  	ice_release_rx_desc(rx_ring, ntu);
> > > 
> > > This interferes with my patch in next-queue ([0]) (well, supersedes
> > > it to be precise).
> > > Tony, what would be better to do with it, just drop mine or correct
> > > this one (it would become an oneliner removing status_error0
> > > assignment then)?
> > 
> > Oops, sorry. This set should go to net though, not net-next, but I can
> > base it on top of your patch.
> 
> Ah, it's for -net, my bad. Let's leave it as it is then, my series
> for -next has patches for both i40e and ice, so the latter will be
> just merged when netdev mains pull net to net-next.

But we remove the same line in these patches. Your patch has a fixes tag,
so what was the reason for directing it to -next? Maybe I can include your
patch onto my set?

> 
> > 
> > > 
> > > >  
> > > >  	return count == nb_buffs;
> > > > -- 
> > > > 2.33.1
> > > 
> > > [0] https://lore.kernel.org/netdev/20211130183649.1166842-2-alexandr.lobakin@intel.com
> > > 
> > > Al
> 
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

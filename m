Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CC0472BB6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 12:44:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80F2E42A81;
	Mon, 13 Dec 2021 11:44:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yuoCmsDJ8NcS; Mon, 13 Dec 2021 11:44:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 531594232B;
	Mon, 13 Dec 2021 11:44:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2F9B41BF403
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 11:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D0D260F49
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 11:44:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Nt2amfg7NKP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 11:44:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 155EB60AA1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 11:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639395848; x=1670931848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IBZOGOIyDo8WxYarfAQkf88cz6DuclxbDODFcGYA5JQ=;
 b=DBarxZs/kiY4flF5Cw7xFywcvY46xQ4M1GqpY5taNf6yeZ0fZyXQCbdj
 1YoO/DlLjiCGMQ2lkNGbE3llaPMbg9gKHVBRoQASBpIYrh9qtIYrQNNFR
 KCgo2LahczOUuJgeh31DxgSEr5C/kSL20Mc+/SSRWn6Hu3y+R3y4PcrzV
 lwbZFizQfGPQZqqfCsKo13+cBfqYXDWiNeJWuEMFD0KA+dHY/ZmpaK3SO
 SvO69Pr+EKdsuuFSi0BSIvGN6k3Xztd16eqX4zwqH0gXNgbR3PPDJB21q
 xHgll6PO68WkP3OdhqgIpRBF08wG98tnjOz3lc+sk/Twqr1chXaFb+syV g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="262840668"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="262840668"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 03:44:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="754312868"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga005.fm.intel.com with ESMTP; 13 Dec 2021 03:44:06 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1BDBi5X1017069; Mon, 13 Dec 2021 11:44:05 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Mon, 13 Dec 2021 12:43:37 +0100
Message-Id: <20211213114337.37999-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <YbcvbjeMFLTMhYaO@boxer>
References: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
 <20211210145941.5865-4-maciej.fijalkowski@intel.com>
 <20211210223746.2711444-1-alexandr.lobakin@intel.com>
 <YbcqjdVw8RfkX62Y@boxer> <20211213112634.37312-1-alexandr.lobakin@intel.com>
 <YbcvbjeMFLTMhYaO@boxer>
MIME-Version: 1.0
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

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Mon, 13 Dec 2021 12:33:02 +0100

> On Mon, Dec 13, 2021 at 12:26:34PM +0100, Alexander Lobakin wrote:
> > From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Date: Mon, 13 Dec 2021 12:12:13 +0100
> > 
> > > On Fri, Dec 10, 2021 at 11:37:46PM +0100, Alexander Lobakin wrote:
> > > > From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > > Date: Fri, 10 Dec 2021 15:59:39 +0100
> > > > 
> > > > > The descriptor that ntu is pointing at when we exit
> > > > > ice_alloc_rx_bufs_zc() should not have its corresponding DD bit cleared
> > > > > as descriptor is not allocated in there and it is not valid for HW
> > > > > usage.
> > > > > 
> > > > > The allocation routine at the entry will fill the descriptor that ntu
> > > > > points to after it was set to ntu + nb_buffs on previous call.
> > > > > 
> > > > > Even the spec says:
> > > > > "The tail pointer should be set to one descriptor beyond the last empty
> > > > > descriptor in host descriptor ring."
> > > > > 
> > > > > Therefore, step away from clearing the status_error0 on ntu + nb_buffs
> > > > > descriptor.
> > > > > 
> > > > > Fixes: db804cfc21e9 ("ice: Use the xsk batched rx allocation interface")
> > > > > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > > > ---
> > > > >  drivers/net/ethernet/intel/ice/ice_xsk.c | 7 +------
> > > > >  1 file changed, 1 insertion(+), 6 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > > > index 5cb61955c1f3..874fce9fa1c3 100644
> > > > > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > > > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > > > @@ -394,14 +394,9 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> > > > >  	}
> > > > >  
> > > > >  	ntu += nb_buffs;
> > > > > -	if (ntu == rx_ring->count) {
> > > > > -		rx_desc = ICE_RX_DESC(rx_ring, 0);
> > > > > -		xdp = rx_ring->xdp_buf;
> > > > > +	if (ntu == rx_ring->count)
> > > > 
> > > > Maybe use unlikely() here while at it? 1/512 (depending on ring
> > > > size) chance is low enough.
> > > 
> > > This would make sense to me if we would have this check inside some loop
> > > going over the buffers that we received from xsk pool.
> > > 
> > > I tried such approach probably on Tx side and Magnus said that unlikely
> > > will move this code to the cold section at the end of the text section.
> > > 
> > > > 
> > > > >  		ntu = 0;
> > > > > -	}
> > > > >  
> > > > > -	/* clear the status bits for the next_to_use descriptor */
> > > > > -	rx_desc->wb.status_error0 = 0;
> > > > >  	ice_release_rx_desc(rx_ring, ntu);
> > > > 
> > > > This interferes with my patch in next-queue ([0]) (well, supersedes
> > > > it to be precise).
> > > > Tony, what would be better to do with it, just drop mine or correct
> > > > this one (it would become an oneliner removing status_error0
> > > > assignment then)?
> > > 
> > > Oops, sorry. This set should go to net though, not net-next, but I can
> > > base it on top of your patch.
> > 
> > Ah, it's for -net, my bad. Let's leave it as it is then, my series
> > for -next has patches for both i40e and ice, so the latter will be
> > just merged when netdev mains pull net to net-next.
> 
> But we remove the same line in these patches. Your patch has a fixes tag,
> so what was the reason for directing it to -next? Maybe I can include your
> patch onto my set?

My reasoning was that those dead stores don't hurt, so they're
fixes, but mostly cosmetic -> such usually goes to next.
But I think it should be fine to include mines into your series,
thanks!

> 
> > 
> > > 
> > > > 
> > > > >  
> > > > >  	return count == nb_buffs;
> > > > > -- 
> > > > > 2.33.1
> > > > 
> > > > [0] https://lore.kernel.org/netdev/20211130183649.1166842-2-alexandr.lobakin@intel.com
> > > > 
> > > > Al
> > 
> > Al

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

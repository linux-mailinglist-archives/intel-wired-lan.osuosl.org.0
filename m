Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E81470E0E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 23:38:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D3FD61B73;
	Fri, 10 Dec 2021 22:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i3REhpkInRDc; Fri, 10 Dec 2021 22:38:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8471E613D7;
	Fri, 10 Dec 2021 22:38:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DB331BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 22:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 04833418F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 22:38:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wALfA4PSQ7KD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 22:38:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E6B0F418F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 22:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639175916; x=1670711916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EChw1uRWq0lNEF6TDJdr1skqSRvDwgAWETiiubNQ/0M=;
 b=gZjyIxxOA3DmeBgvxal9wYkTvDfnRoQr6Yw5JlVeRCRl8DvFUBiVPDTl
 c95X2bq/ip4zhxLECLbR9sLtN7xyTg7TWSmyl1qGIxD7nvExS4MHTdTT/
 07aMVogmeAw7hKlhcUyg4Yz51ISJZpp4mkmcqjaVfQgnOa20nN9NGFXvi
 0G0McOs+XqUVtszHniKNCpoywoqDiL5lTqLviXmE4yOHIDrWiGRVhgOG2
 +fBc2PMro4eERAw1KXy32kCE3h6xxRiKmwqc1b+eWm9/otjQelWAwlANg
 ThoXhUE6qWDQQJszIH1mq2zF4Y90yUn9VUzmTnJBlHBXoSOaohVfuFMBS g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="301844814"
X-IronPort-AV: E=Sophos;i="5.88,196,1635231600"; d="scan'208";a="301844814"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 14:38:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,196,1635231600"; d="scan'208";a="750969689"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 10 Dec 2021 14:38:23 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1BAMcMRC018566; Fri, 10 Dec 2021 22:38:22 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 10 Dec 2021 23:37:46 +0100
Message-Id: <20211210223746.2711444-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211210145941.5865-4-maciej.fijalkowski@intel.com>
References: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
 <20211210145941.5865-4-maciej.fijalkowski@intel.com>
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
Date: Fri, 10 Dec 2021 15:59:39 +0100

> The descriptor that ntu is pointing at when we exit
> ice_alloc_rx_bufs_zc() should not have its corresponding DD bit cleared
> as descriptor is not allocated in there and it is not valid for HW
> usage.
> 
> The allocation routine at the entry will fill the descriptor that ntu
> points to after it was set to ntu + nb_buffs on previous call.
> 
> Even the spec says:
> "The tail pointer should be set to one descriptor beyond the last empty
> descriptor in host descriptor ring."
> 
> Therefore, step away from clearing the status_error0 on ntu + nb_buffs
> descriptor.
> 
> Fixes: db804cfc21e9 ("ice: Use the xsk batched rx allocation interface")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_xsk.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index 5cb61955c1f3..874fce9fa1c3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -394,14 +394,9 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
>  	}
>  
>  	ntu += nb_buffs;
> -	if (ntu == rx_ring->count) {
> -		rx_desc = ICE_RX_DESC(rx_ring, 0);
> -		xdp = rx_ring->xdp_buf;
> +	if (ntu == rx_ring->count)

Maybe use unlikely() here while at it? 1/512 (depending on ring
size) chance is low enough.

>  		ntu = 0;
> -	}
>  
> -	/* clear the status bits for the next_to_use descriptor */
> -	rx_desc->wb.status_error0 = 0;
>  	ice_release_rx_desc(rx_ring, ntu);

This interferes with my patch in next-queue ([0]) (well, supersedes
it to be precise).
Tony, what would be better to do with it, just drop mine or correct
this one (it would become an oneliner removing status_error0
assignment then)?

>  
>  	return count == nb_buffs;
> -- 
> 2.33.1

[0] https://lore.kernel.org/netdev/20211130183649.1166842-2-alexandr.lobakin@intel.com

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

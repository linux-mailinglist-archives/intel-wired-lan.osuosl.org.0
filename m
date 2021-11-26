Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6609345F0A0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Nov 2021 16:25:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A1C182A8F;
	Fri, 26 Nov 2021 15:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZmrNjGJ021wl; Fri, 26 Nov 2021 15:25:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4599482907;
	Fri, 26 Nov 2021 15:25:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7717B1BF34A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 15:25:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64DA54043D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 15:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8zcmLGarVIGk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Nov 2021 15:25:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 41FAD40438
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 15:25:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10180"; a="235617151"
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="235617151"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 07:25:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="498435813"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga007.jf.intel.com with ESMTP; 26 Nov 2021 07:25:05 -0800
Date: Fri, 26 Nov 2021 16:25:04 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <YaD8UHOxHasBkqEW@boxer>
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
 <163700858579.565980.15265721798644582439.stgit@firesoul>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <163700858579.565980.15265721798644582439.stgit@firesoul>
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] igc: AF_XDP zero-copy
 metadata adjust breaks SKBs on XDP_PASS
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <borkmann@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 15, 2021 at 09:36:25PM +0100, Jesper Dangaard Brouer wrote:
> Driver already implicitly supports XDP metadata access in AF_XDP
> zero-copy mode, as xsk_buff_pool's xp_alloc() naturally set xdp_buff
> data_meta equal data.
> 
> This works fine for XDP and AF_XDP, but if a BPF-prog adjust via
> bpf_xdp_adjust_meta() and choose to call XDP_PASS, then igc function
> igc_construct_skb_zc() will construct an invalid SKB packet. The
> function correctly include the xdp->data_meta area in the memcpy, but
> forgot to pull header to take metasize into account.
> 
> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Great catch. Will take a look at other ZC enabled Intel drivers if they
are affected as well.

Thanks!

> ---
>  drivers/net/ethernet/intel/igc/igc_main.c |    4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 8e448288ee26..76b0a7311369 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2448,8 +2448,10 @@ static struct sk_buff *igc_construct_skb_zc(struct igc_ring *ring,
>  
>  	skb_reserve(skb, xdp->data_meta - xdp->data_hard_start);
>  	memcpy(__skb_put(skb, totalsize), xdp->data_meta, totalsize);
> -	if (metasize)
> +	if (metasize) {
>  		skb_metadata_set(skb, metasize);
> +		__skb_pull(skb, metasize);
> +	}
>  
>  	return skb;
>  }
> 
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

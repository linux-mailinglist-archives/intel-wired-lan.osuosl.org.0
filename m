Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C14D63A44EC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jun 2021 17:25:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61464415C6;
	Fri, 11 Jun 2021 15:25:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ff7jscL3-136; Fri, 11 Jun 2021 15:25:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29150415BD;
	Fri, 11 Jun 2021 15:25:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A46C1BF82D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 15:25:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16876415C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 15:25:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id egjE95yv3Qmg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jun 2021 15:25:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 98D9D415BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 15:25:33 +0000 (UTC)
IronPort-SDR: VDGPJEzWPuKASeeJy1ZdosGWJBW5PVfSkZeaNNS8byMuDR1jX3u+J/xDwaaNScA77kkqAXXI5i
 whQLv6+MBkeA==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="205571630"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="205571630"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 08:25:32 -0700
IronPort-SDR: ZqiQIQQUh0QmOX+Mf8/WNsTGQMXPGbeew8tTM/Y4GTULg5Q7y0eJUahjzJ+U3+MeiEINwhbV92
 YKcgMROJS5zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="553436010"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2021 08:25:29 -0700
Date: Fri, 11 Jun 2021 17:12:45 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Xuan Zhuo <xuanzhuo@linux.alibaba.com>
Message-ID: <20210611151245.GA31289@ranger.igk.intel.com>
References: <20210609122244.52647-1-xuanzhuo@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210609122244.52647-1-xuanzhuo@linux.alibaba.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: xsk: fix for metasize when
 construct skb by xdp_buff
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 09, 2021 at 08:22:44PM +0800, Xuan Zhuo wrote:
> We should copy data_meta to the skb space.  Then use __skb_pull to
> correct skb->data

This looks like a bug that has been sitting over here for sometime. Have
you encountered this during your virtio-net's AF_XDP ZC work? I'm all ears
how you spotted this.

Anyway, other drivers needs such fixing too. Are you willing to do that or
should we take it on our side?

Magnus is OOO today, I'd like to get his final ack on that.

From me:
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Thanks!

> 
> Fixes: d0bcacd0a1309 ("ixgbe: add AF_XDP zero-copy Rx support")
> Signed-off-by: Xuan Zhuo <xuanzhuo@linux.alibaba.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> index f72d2978263b..ee88107fa57a 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> @@ -204,7 +204,7 @@ static struct sk_buff *ixgbe_construct_skb_zc(struct ixgbe_ring *rx_ring,
>  					      struct ixgbe_rx_buffer *bi)
>  {
>  	unsigned int metasize = bi->xdp->data - bi->xdp->data_meta;
> -	unsigned int datasize = bi->xdp->data_end - bi->xdp->data;
> +	unsigned int datasize = bi->xdp->data_end - bi->xdp->data_meta;
>  	struct sk_buff *skb;
>  
>  	/* allocate a skb to store the frags */
> @@ -214,10 +214,12 @@ static struct sk_buff *ixgbe_construct_skb_zc(struct ixgbe_ring *rx_ring,
>  	if (unlikely(!skb))
>  		return NULL;
>  
> -	skb_reserve(skb, bi->xdp->data - bi->xdp->data_hard_start);
> -	memcpy(__skb_put(skb, datasize), bi->xdp->data, datasize);
> -	if (metasize)
> +	skb_reserve(skb, bi->xdp->data_meta - bi->xdp->data_hard_start);
> +	memcpy(__skb_put(skb, datasize), bi->xdp->data_meta, datasize);
> +	if (metasize) {
> +		__skb_pull(skb, metasize);
>  		skb_metadata_set(skb, metasize);
> +	}
>  
>  	xsk_buff_free(bi->xdp);
>  	bi->xdp = NULL;
> -- 
> 2.31.0
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

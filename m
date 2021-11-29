Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA54E461A5C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 15:53:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 462A0401CF;
	Mon, 29 Nov 2021 14:53:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TDrDp69Kt4TS; Mon, 29 Nov 2021 14:53:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 019F240199;
	Mon, 29 Nov 2021 14:53:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2045A1BF36F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1AAF360754
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:53:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FeFk-LAFvdYu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Nov 2021 14:53:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED1E960664
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:53:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10182"; a="222864678"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="222864678"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 06:53:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="558829786"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 29 Nov 2021 06:53:07 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1ATEr5m0005092; Mon, 29 Nov 2021 14:53:05 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
Date: Mon, 29 Nov 2021 15:53:03 +0100
Message-Id: <20211129145303.10507-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <6de05aea-9cf4-c938-eff2-9e3b138512a4@redhat.com>
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
 <163700859087.565980.3578855072170209153.stgit@firesoul>
 <20211126161649.151100-1-alexandr.lobakin@intel.com>
 <6de05aea-9cf4-c938-eff2-9e3b138512a4@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] igc: enable XDP metadata
 in driver
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
Cc: intel-wired-lan@lists.osuosl.org, bjorn@kernel.org, netdev@vger.kernel.org,
 brouer@redhat.com, Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <borkmann@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesper Dangaard Brouer <jbrouer@redhat.com>
Date: Mon, 29 Nov 2021 15:39:04 +0100

> On 26/11/2021 17.16, Alexander Lobakin wrote:
> > From: Jesper Dangaard Brouer <brouer@redhat.com>
> > Date: Mon, 15 Nov 2021 21:36:30 +0100
> > 
> >> Enabling the XDP bpf_prog access to data_meta area is a very small
> >> change. Hint passing 'true' to xdp_prepare_buff().
> >>
> >> The SKB layers can also access data_meta area, which required more
> >> driver changes to support. Reviewers, notice the igc driver have two
> >> different functions that can create SKBs, depending on driver config.
> >>
> >> Hint for testers, ethtool priv-flags legacy-rx enables
> >> the function igc_construct_skb()
> >>
> >>   ethtool --set-priv-flags DEV legacy-rx on
> >>
> >> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> >> ---
> >>   drivers/net/ethernet/intel/igc/igc_main.c |   29 +++++++++++++++++++----------
> >>   1 file changed, 19 insertions(+), 10 deletions(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> >> index 76b0a7311369..b516f1b301b4 100644
> >> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> >> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> >> @@ -1718,24 +1718,26 @@ static void igc_add_rx_frag(struct igc_ring *rx_ring,
> >>   
> >>   static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
> >>   				     struct igc_rx_buffer *rx_buffer,
> >> -				     union igc_adv_rx_desc *rx_desc,
> >> -				     unsigned int size)
> >> +				     struct xdp_buff *xdp)
> >>   {
> >> -	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
> >> +	unsigned int size = xdp->data_end - xdp->data;
> >>   	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
> >> +	unsigned int metasize = xdp->data - xdp->data_meta;
> >>   	struct sk_buff *skb;
> >>   
> >>   	/* prefetch first cache line of first page */
> >> -	net_prefetch(va);
> >> +	net_prefetch(xdp->data);
> > 
> > I'd prefer prefetching xdp->data_meta here. GRO layer accesses it.
> > Maximum meta size for now is 32, so at least 96 bytes of the frame
> > will stil be prefetched.
> 
> Prefetch works for "full" cachelines. Intel CPUs often prefect two 
> cache-lines, when doing this, thus I guess we still get xdp->data.

Sure. I mean, net_prefetch() prefetches 128 bytes in a row.
xdp->data is usually aligned to XDP_PACKET_HEADROOM (or two bytes
to the right). If our CL is 64 and the meta is present, then... ah
right, 64 to the left and 64 starting from data to the right.

> I don't mind prefetching xdp->data_meta, but (1) I tried to keep the 
> change minimal as current behavior was data area I kept that. (2) 
> xdp->data starts on a cacheline and we know NIC hardware have touched 
> that, it is not a full-cache-miss due to DDIO/DCA it is known to be in 
> L3 cache (gain is around 2-3 ns in my machine for data prefetch).
> Given this is only a 2.5 Gbit/s driver/HW I doubt this make any difference.

Code constistency at least. On 10+ Gbps we prefetch meta, and I plan
to continue doing this in my series.

> Tony is it worth resending a V2 of this patch?

Tony, you can take it as it is if you want, I'll correct it later in
mine. Up to you.

Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>

> >>   
> >>   	/* build an skb around the page buffer */
> >> -	skb = build_skb(va - IGC_SKB_PAD, truesize);
> >> +	skb = build_skb(xdp->data_hard_start, truesize);
> >>   	if (unlikely(!skb))
> >>   		return NULL;
> >>   
> >>   	/* update pointers within the skb to store the data */
> >> -	skb_reserve(skb, IGC_SKB_PAD);
> >> +	skb_reserve(skb, xdp->data - xdp->data_hard_start);
> >>   	__skb_put(skb, size);
> >> +	if (metasize)
> >> +		skb_metadata_set(skb, metasize);
> >>   
> >>   	igc_rx_buffer_flip(rx_buffer, truesize);
> >>   	return skb;
> >> @@ -1746,6 +1748,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
> >>   					 struct xdp_buff *xdp,
> >>   					 ktime_t timestamp)
> >>   {
> >> +	unsigned int metasize = xdp->data - xdp->data_meta;
> >>   	unsigned int size = xdp->data_end - xdp->data;
> >>   	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
> >>   	void *va = xdp->data;
> >> @@ -1756,7 +1759,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
> >>   	net_prefetch(va);
> > 
> > ...here as well.
> >

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

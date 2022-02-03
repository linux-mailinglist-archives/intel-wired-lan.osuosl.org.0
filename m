Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFCF4A8C37
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 20:08:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E838E84090;
	Thu,  3 Feb 2022 19:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxJYFYx2E7T5; Thu,  3 Feb 2022 19:08:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD3C381DB2;
	Thu,  3 Feb 2022 19:07:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2DBC81BF32C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 19:07:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14AC840A77
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 19:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BHNWTipF1NOJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 19:07:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D0F0140490
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 19:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643915273; x=1675451273;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KZqD11vb1MdWcXzkfG3XaYdPMplovD1y+zKjN8+DrYY=;
 b=CGDSdbsQgaWLhgK63bluT4IBaRlOVgkID4oz+C897iYHFN/eyt9vH52b
 mTw/vJIW+jQHhxCYaEowkpQnWHS11Krk/X4CetcuFvgSb6+4oeNwxNKny
 R7Lbyb5Juo+jBACZ8UIG85nOCG/IID2rt946hylMOf7393cRZZcm/dJxS
 RPEtRCBC3QQcQEM6bNbvqmhaZpMQ65N8clKKDlNVbVydfvkgMZiRpUctT
 k0j3SH43ueAqKDsQ8LiMv7+V63dDDLwf5gKS0LRjMZC8F2gTM8mlc23+9
 0Sv2B0r6r9CUVoQIfeXlOoNoloWLLg60HfVx5FbAruxph8HPvYVdJk+on g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="308957722"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="308957722"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 11:07:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="627542009"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 03 Feb 2022 11:07:51 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 213J7o2i024602; Thu, 3 Feb 2022 19:07:50 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Thu,  3 Feb 2022 20:05:55 +0100
Message-Id: <20220203190555.18385-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CO1PR11MB5186D038E0F5CCB0DE9D73CC8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-15-alan.brady@intel.com>
 <20220128175755.28750-1-alexandr.lobakin@intel.com>
 <CO1PR11MB5186D038E0F5CCB0DE9D73CC8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 14/19] iecm: implement
 singleq napi_poll
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Phani Burra <phani.r.burra@intel.com>, Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 3 Feb 2022 02:45:14 +0100

> > -----Original Message-----
> > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > Sent: Friday, January 28, 2022 9:58 AM
> > To: Brady, Alan <alan.brady@intel.com>
> > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> > lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim,
> > Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> > <pavan.kumar.linga@intel.com>
> > Subject: [Intel-wired-lan] [PATCH net-next 14/19] iecm: implement singleq
> > napi_poll
> > 
> > > From: Alan Brady <alan.brady@intel.com>
> > > Date: Thu, 27 Jan 2022 16:10:04 -0800
> > >
> > > This adds everything we do the more traditional singleq model data path.
> > >
> > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/iecm/iecm_lib.c    |    2 +-
> > >  .../ethernet/intel/iecm/iecm_singleq_txrx.c   | 1208
> > ++++++++++++++++-
> > >  drivers/net/ethernet/intel/include/iecm.h     |    1 +
> > >  .../net/ethernet/intel/include/iecm_txrx.h    |   31 +
> > >  4 files changed, 1237 insertions(+), 5 deletions(-)
> > >

--- 8< ---

> > > +		/* align size to end of page */
> > > +		max_data += -dma & (IECM_TX_MAX_READ_REQ_SIZE - 1);
> > 
> > Here applies the same I said for splitq before, this code is counter-intuitive.
> > 
> 
> I'm failing to find a matching comment for iecm_tx_splitq_map but I'm sure we're open to suggestion how to make it better.

As I said in my reply to 11/19, I don't get the logics here at all,
so I kindly asked to explain it to me.
Since I don't get it, I'm not able to provide any suggestions.

> 
> > > +		tx_desc->buf_addr = cpu_to_le64(dma);

--- 8< ---

> > > +	do {
> > > +		struct iecm_base_tx_desc *eop_desc =
> > > +			(struct iecm_base_tx_desc *)tx_buf-
> > >next_to_watch;
> > 
> > 		struct iecm_base_tx_desc *eop_desc;
> > 
> > 		eop_desc = (typeof(*eop_desc))tx_buf->next_to_watch;
> > 
> 
> Again not sure I see the benefit to prefer assigning it's own line over letting it wrap.  Suggestion as written is wrong also.

Declaration, then assignment is a normal practice.
Assignment with a line-wrap is an exception only for the lines which
can't be composed any other way. Here you have at least two:

		struct iecm_base_tx_desc *eop_desc;

		/* This is fixed variant from my initial reply, I apologize
		 * for the excessive '*'.
		 */
		eop_desc = (typeof(eop_desc))tx_buf->next_to_watch;

		/* More classic variant, fits into 79 as well */
		eop_desc = (struct iecm_base_tx_desc *)tx_buf->next_to_watch;

Breaking declaration and assignment into two separate lines is the
first choice when a line exceeds the char limit.

> 
> > > +
> > > +		/* if next_to_watch is not set then no work pending */

--- 8< ---

> > > +	status0 = rx_desc->flex_nic_wb.status_error0;
> > > +	if (status0 &
> > > +
> > 	cpu_to_le16(BIT(VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_
> > S))) {
> > > +		u32 hash = le32_to_cpu(rx_desc->flex_nic_wb.rss_hash);
> > > +
> > > +		skb_set_hash(skb, hash, iecm_ptype_to_htype(decoded));
> > > +	}
> > 
> > 	if (!status)
> > 		return;
> > 
> > -1 indent level.
> > 
> 
> if (!(status0 & cpu_to_le16(BIT(VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_S))))
>     return;
> 
> skb_set_hash(...);

hash = 
skb_set_hash()

There are two lines there.

> 
> vs.
> 
> if (status0 & cpu_to_le16(BIT(VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_S)))
>     skb_set_hash(....);
> 
> Doesn't seem any better to me, in fact it seems worse.

Perhaps due to that train starting from cpu_to_le16 should be hidden
into a compact definition, like

#define IECM_RX_DESC_HASH_BIT						  \
	BIT(VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_S)));

#define __iecm_rx_desc_hash_present(status0)				  \
	!!((status0) & cpu_to_le16(IECM_RX_DESC_HASH_BIT))

#define iecm_rx_desc_hash_present(rx_desc)				  \
	__iecm_rx_desc_hash_present((rx_desc)->flex_nic_wb.status_error0)

...

then either way (`if (hash)` or `if (!hash)`) starts working.

	if (!(rx_q->vport->netdev->features & NETIF_F_RXHASH))
		return;

	if (iecm_rx_desc_hash_present(rx_desc)) {
		u32 hash = le32_to_cpu(rx_desc->flex_nic_wb.rss_hash);

		skb_set_hash(skb, hash, iecm_ptype_to_htype(decoded));
	}

||

	if (!(rx_q->vport->netdev->features & NETIF_F_RXHASH) ||
	    !iecm_rx_desc_hash_present(rx_desc))
		return;

	hash = le32_to_cpu(rx_desc->flex_nic_wb.rss_hash);
	skb_set_hash(skb, hash, iecm_ptype_to_htype(decoded));

> 
> > > +}
> > > +
> > > +/**
> > > + * iecm_rx_singleq_process_skb_fields - Populate skb header fields

--- 8< ---

> > > +void
> > > +iecm_rx_singleq_process_skb_fields(struct iecm_queue *rx_q, struct
> > sk_buff *skb,
> > > +				   union virtchnl2_rx_desc *rx_desc,
> > > +				   u16 ptype)
> > > +{
> > > +	struct iecm_rx_ptype_decoded decoded =
> > > +					rx_q->vport->rx_ptype_lkup[ptype];
> > 
> > Declare, then assign to avoid wraps.
> > 
> 
> I'm just not seeing the benefit in doing that.  If 'net' tree is concerned with wrapping I would assume they would move to 100 cols with the rest of the kernel.

Everyone is concerned with wrapping.
But one thing is to have a function call wrapped by arguments:

	ret = some_long_function_name(argument1,
				      ARG2);

and completely different -- line breaks, when no alignment is
possible:

	some_really_long_variable =
		some_long_function_name();

At least I can tell for sure that declaration + assignment is way
more preferred over such line breaks for not altering readability
in any way.

> 
> > > +
> > > +	/* modifies the skb - consumes the enet header */

--- 8< ---

> > > +static bool iecm_rx_singleq_recycle_buf(struct iecm_queue *rxq,
> > > +					struct iecm_rx_buf *rx_buf)
> > > +{
> > > +	struct iecm_page_info *page_info =
> > > +			&rx_buf->page_info[rx_buf->page_indx];
> > 
> > Declare, then assign to avoid wraps.
> >
> 
> Will not fix.

The very same questions may come from the upstream maintainers.
The less such trivial places there will be, the better for everyone
I believe? Especially for the maintainers since they review tons of
code daily and aren't happy to see simple style issues again and
again.

>  
> > > +

--- 8< ---

> > > --
> > > 2.33.0
> > 
> > Thanks,
> > Al

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

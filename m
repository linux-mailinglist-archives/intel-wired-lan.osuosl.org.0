Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBB34A877C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 16:17:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6649B4170B;
	Thu,  3 Feb 2022 15:17:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MzQtHnyIrGlV; Thu,  3 Feb 2022 15:17:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4525B416FF;
	Thu,  3 Feb 2022 15:17:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D9591BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 15:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38F4440486
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 15:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5WTx-uMa62OZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 15:16:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30FFC40443
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 15:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643901416; x=1675437416;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0TsEAsJXqpdildIVJYgkMnqIiNwsvYZQ1t7Ay57bzHo=;
 b=HBxpfWbxrZUYXdW2bctwEnhWKHSfMjPFyI2de+fvrIhfvlkTOdL5YDmo
 5euZLom1UyG8hZ+qVfy3r9nLDjCHFXAvd+xGLHjKMV3kZ5qR4Tk2zatom
 ftdiNwqmpKaA0/MxXr/BIH1Ht5Cg18IGN/mcACTfXszQ5mr3bwDYtxql/
 gJUSJ+wIRUOS7aVsTV7oVcPBc7tKS2e4tLqw68aQhTnHadmVcepWzJhxv
 yZVrinZlivaoRU/ZmuOpHy4+oIMiJlCVplOGB32+FwXxA9PS/0o4pkHFs
 OsoV4l7netjrt5vMisKUYQQdDt3fyNaB78oDFkbLBQ5VNO1DLBDDnUbMC A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="231732392"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="231732392"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 07:16:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="483266488"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga006.jf.intel.com with ESMTP; 03 Feb 2022 07:16:53 -0800
Date: Thu, 3 Feb 2022 16:16:52 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Message-ID: <Yfvx5DKKkMIhLYEg@boxer>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-8-alan.brady@intel.com>
 <20220128131955.21949-1-alexandr.lobakin@intel.com>
 <CO1PR11MB5186266B542830B45A6CC9D18F279@CO1PR11MB5186.namprd11.prod.outlook.com>
 <20220203150503.11879-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220203150503.11879-1-alexandr.lobakin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/19] iecm: finish virtchnl
 messages
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
Cc: Phani Burra <phani.r.burra@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 03, 2022 at 04:05:03PM +0100, Alexander Lobakin wrote:
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 3 Feb 2022 00:06:00 +0100
> 
> > > -----Original Message-----
> > > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > > Sent: Friday, January 28, 2022 5:20 AM
> > > To: Brady, Alan <alan.brady@intel.com>
> > > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> > > lan@lists.osuosl.org; Linga, Pavan Kumar <pavan.kumar.linga@intel.com>;
> > > Chittim, Madhu <madhu.chittim@intel.com>; Burra, Phani R
> > > <phani.r.burra@intel.com>
> > > Subject: Re: [Intel-wired-lan] [PATCH net-next 07/19] iecm: finish virtchnl
> > > messages
> > > 
> > > From: Alan Brady <alan.brady@intel.com>
> > > Date: Thu, 27 Jan 2022 16:09:57 -0800
> > > 
> > > > This adds the rest of the needed virtchnl messages mostly related to
> > > > negotiating ptypes and initializing queue registers.
> > > >
> > > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > > Signed-off-by: Alice Michael <alice.michael@intel.com>
> > > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > > ---
> > > >  drivers/net/ethernet/intel/iecm/iecm_lib.c    |   21 +-
> > > >  drivers/net/ethernet/intel/iecm/iecm_txrx.c   |  226 +++-
> > > >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 1187 ++++++++++++++++-
> > > >  drivers/net/ethernet/intel/include/iecm.h     |   36 +
> > > >  .../net/ethernet/intel/include/iecm_txrx.h    |  198 ++-
> > > >  5 files changed, 1635 insertions(+), 33 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > > b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > > > index 4e9cc7f2d138..aab8ee40424e 100644
> > > > --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > > > +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > > > @@ -10,6 +10,25 @@ const char * const iecm_vport_vc_state_str[] = {
> > > >  };
> > > >  EXPORT_SYMBOL(iecm_vport_vc_state_str);
> > > >
> > > > +/**
> > > > + * iecm_is_feature_ena - Determine if a particular feature is enabled
> > > > + * @vport: vport to check
> > > > + * @feature: netdev flag to check
> > > > + *
> > > > + * Returns true or false if a particular feature is enabled.
> > > > + */
> > > > +bool iecm_is_feature_ena(struct iecm_vport *vport, netdev_features_t
> > > feature)
> > > > +{
> > > > +	bool ena;
> > > > +
> > > > +	switch (feature) {
> > > > +	default:
> > > > +		ena = vport->netdev->features & feature;
> > > > +		break;
> > > > +	}
> > > > +	return ena;
> > > > +}
> > > 
> > > This makes absolutely no sense, please rewrite to
> > > 
> > > 	return vport->netdev->features & feature;
> > > 
> > > If it will be expanded later, convert it to a switch-case only then.
> > > 
> > 
> > A case is added later in this series of patches but I can thrash this in the middle of the series if you feel strongly about it.
> 
> Doesn't matter. The code of each patch should be reasonable.
> Even those function stubs don't look nice, but I don't know for sure
> if this is acceptable, so I didn't speak about them.
> Sometimes we do such stuff if hardly needed, but at least we leave
> some good comment then. But I'd go for converting this into a
> switch-case ad hoc later.
> 
> > 
> > > > +
> > > >  /**
> > > >   * iecm_cfg_hw - Initialize HW struct
> > > >   * @adapter: adapter to setup hw struct for
> 
> --- 8< ---
> 
> > > > +	u16 num_chunks = le16_to_cpu(chunks->num_chunks);
> > > > +	int reg_filled = 0, i;
> > > > +	u32 reg_val;
> > > > +	u16 num_q;
> > > > +
> > > > +	while (num_chunks) {
> > > > +		struct virtchnl2_queue_reg_chunk *chunk = &chunks-
> > > >chunks[num_chunks - 1];
> > > > +
> > > > +		if (le32_to_cpu(chunk->type) == q_type) {
> > > > +			num_q = le32_to_cpu(chunk->num_queues);
> > > > +			reg_val = le64_to_cpu(chunk->qtail_reg_start);
> > > > +			for (i = 0; i < num_q; i++) {
> > > > +				if (reg_filled == num_regs)
> > > > +					break;
> > > > +				reg_vals[reg_filled++] = reg_val;
> > > > +				reg_val +=
> > > > +					le32_to_cpu(chunk-
> > > >qtail_reg_spacing);
> > > > +			}
> > > > +		}
> > > > +		num_chunks--;
> > > > +	}
> > > 
> > > 	while (num_chunks--) {
> > > 		struct ... = ... [num_chunks];
> > > 
> > > 		if (le32_to_cpu(chunk->type) != q_type)
> > > 			continue;
> > > 
> > > 		...
> > > 	}
> > > 
> > > -1 indent level, -complexity.
> > > 
> > > > +
> > > > +	return reg_filled;
> > > > +}
> > > > +
> > > > +/**
> > > > + * __iecm_queue_reg_init - initialize queue registers
> 
> --- 8< ---
> 
> > > > +struct iecm_page_info {
> > > > +	dma_addr_t dma;
> > > > +	struct page *page;
> > > > +	unsigned int page_offset;
> > > > +	u16 pagecnt_bias;
> > > > +};
> > > > +
> > > > +struct iecm_rx_buf {
> > > > +#define IECM_RX_BUF_MAX_PAGES 2
> > > > +	struct iecm_page_info page_info[IECM_RX_BUF_MAX_PAGES];
> > > 
> > > As I said previously, it will most likely be rejected upstream. They
> > > will either suggest using compounds or page_pool (it uses compounds
> > > for non-zero-order pages) or maybe introduce folio support to the
> > > networking stack or so, but not such stuff.
> > > 
> > 
> > Perhaps I missed it but I didn't see previous comment about this. We have done our own buffer management in the past and it hasn't been issue. I believe there was an attempt to implement this with compound pages but it didn't work in the ways we needed it to for one reason or another (I don't recall exactly why it was problematic but I can check if you're interested).
> > 
> > A page pool might be a different solution here that may be worth trying, but for many caveats of the data path we've relied on the methods otherwise done in other Intel drivers that have otherwise seemed to do well.
> 
> All Intel upstream drivers starting from at least ixgbe and up to
> (including) ice use compound pages with no issues. There are no
> 2-page arrays neither in any Intel driver nor in any driver in
> drivers/net/ at all. Compounds, Page Pool, local page ring,
> order-0 + multi-frags, kmalloc(HW_JUMBO_LIMIT) and that's it.
> "We use this [wrong] approach because any other would require more
> work to be done" is not an argument at all in upstream.

Maybe not purely rejected but might be controversial to throw in driver
quirk onto a patch that by title suppose to add virtchnl messages?

Could you at least describe this change in the commit message? And provide
some justification why this approach was picked?

> 
> > 
> > > > +	u8 page_indx;
> > > > +	u16 buf_id;
> > > > +	u16 buf_size;
> > > > +	struct sk_buff *skb;
> > > > +};
> 
> --- 8< ---
> 
> > > > --
> > > > 2.33.0
> > > 
> > > Thanks,
> > > Al
> 
> Thanks,
> Al
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

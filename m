Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A91CC4A989A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 12:53:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B61082AC8;
	Fri,  4 Feb 2022 11:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CY7REJf6vzwf; Fri,  4 Feb 2022 11:53:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5999682733;
	Fri,  4 Feb 2022 11:53:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BED991BF339
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 11:53:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ABCD960B6C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 11:53:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UjNmyeemcxI3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 11:53:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90EAF60B62
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 11:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643975580; x=1675511580;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W4S9to9ciYB28lqIs+F3nbJcvKl6x1pbQJUMM5WFvUk=;
 b=cv1BiXHBCvHn3fILoEZL8ggIIIvScfX67jgiH7yVuCwygQTlSuPhi74l
 MBTTjb7bnAY/BCdtcn5iDPOl0UQCpO4GIAjvvAg6heh+15PHwSSGJ/3f2
 sEol/SWYKGqnc4tgfFuunlM6u9Y0df9J/HiSEFKtnd7nsft8ITM0lzhEL
 9Qul9rWaTsp/phrsGQ5XKbdPixW2PqLYaGopssdzQ8PUIZjeoVzhd69SL
 Ie7X1KpPCnXaMYm5cFakbfk9L59akKucGJebBavstYPP337pQyQ2h6LLX
 P9hU1+yA4Q4rr1m6t7d+3bgbC+ghQz8sF34apDvw7wMjjvIAfJiaOzk/h w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="247187400"
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="247187400"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 03:52:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="535512043"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 04 Feb 2022 03:52:57 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 214Bqu57014920; Fri, 4 Feb 2022 11:52:57 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri,  4 Feb 2022 12:50:50 +0100
Message-Id: <20220204115050.80763-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CO1PR11MB5186937D2198CEAA43DD4E578F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128173850.27818-1-alexandr.lobakin@intel.com>
 <CO1PR11MB5186937D2198CEAA43DD4E578F289@CO1PR11MB5186.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 13/19] iecm: implement splitq
 napi_poll
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
Date: Thu, 3 Feb 2022 02:07:08 +0100

> > -----Original Message-----
> > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > Sent: Friday, January 28, 2022 9:39 AM
> > To: Brady, Alan <alan.brady@intel.com>
> > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> > lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim, Madhu
> > <madhu.chittim@intel.com>; Linga, Pavan Kumar
> > <pavan.kumar.linga@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net-next 13/19] iecm: implement splitq
> > napi_poll
> > 
> > From: Alan Brady <alan.brady@intel.com>
> > Date: Thu, 27 Jan 2022 16:10:03 -0800
> > 
> > > This adds everything we need to actually receive packets and process spent
> > > buffers using the splitq model. This contrasts to more traditional queueing
> > > models by essentially splitting a normal queue of descriptors and mapped
> > > buffers into separate queues. This allows us to deal with both more
> > > efficiently and also allows us to implement asymmetric queuing setups where
> > > you have multiple completion queues associated with a single buffer queue.
> > >
> > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/iecm/iecm_txrx.c   | 1468 ++++++++++++++++-
> > >  drivers/net/ethernet/intel/include/iecm.h     |    4 +
> > >  .../net/ethernet/intel/include/iecm_txrx.h    |   20 +
> > >  3 files changed, 1490 insertions(+), 2 deletions(-)
> > >

--- 8< ---

> > > +	bi = IECM_SPLITQ_RX_BI_DESC(refillq, nta);
> > > +	/* store the buffer ID and the SW maintained GEN bit to the refillq */
> > > +	*bi = ((buf_id << IECM_RX_BI_BUFID_S) & IECM_RX_BI_BUFID_M) |
> > > +	      (!!(test_bit(__IECM_Q_GEN_CHK, refillq->flags)) <<
> > > +	       IECM_RX_BI_GEN_S);
> > 
> > Please use FIELD_GET() and FIELD_PREP() for masks. This won't pass
> > the maintainers.
> > 
> 
> We've never had a problem before, I'm assuming these are new? Will check.

Ok, maybe "won't pass" is not quite correct, but at least "can
provoke questions". It depends on a reviewer, e.g. I generally
discourage those when it coule be just

	*bi = FIELD_PREP(IECM_RX_BI_BUFID_M, buf_id) |
	      FIELD_PREP(IECM_RX_BI_GEN_M,
			 test_bit(__IECM_Q_GEN_CHK, refillq->flags));

or even

(somewhere near the _M/_S definitions)

#define iecm_rx_bi_prep(gen, id)	\
	(FIELD_PREP(IECM_RX_BI_BUFID_M, id) | FIELD_PREP(IECM_RX_BI_GEN_M, gen))

(inside the function itself)

	*bi = iecm_rx_bi_prep(test_bit(__IECM_Q_GEN_CHK, refillq->flags),
			      buf_id);

Note that there's no `!!` before test_bit() since it's boolean
already.
There's nothing bad in introducing macros and/or static inlines to
make the functions themselves more compact and readable. Those
`(value << SOME_KIND_OF_A_FIELD_S) & SOME_KIND_OF_A_FIELD_M` each
time we need to load or store from/to registers or descriptors don't
make any sense to me.

> 
> > > +
> > > +	nta++;
> > > +	if (unlikely(nta == refillq->desc_count)) {
> > 
> > Could be compressed into one line.
> > 
> 
> Could be, but we'd prefer not to.

Just a personal preference to consider, no pressure at all.

> 
> > > +		nta = 0;
> > > +		change_bit(__IECM_Q_GEN_CHK, refillq->flags);

--- 8< ---

> > 	for (i = ...)
> > 		if (vport->txqs[i].q_id == q_id)
> > 			return tx_q;
> > 
> > No need to create a variable.
> >
> 
> It would actually look like
> 
>  	for (i = ...)
>  		if (vport->txqs[i]->q_id == q_id)
>  			return vport->txqs[i];
> 
> 
> You had another comment about adding a vc_ops variable where it was being used twice.  I'm not seeing a huge difference here and seems like splitting hairs. I think we would prefer to keep this.

I'm usually ok with using something not stored locally up to three
times, so please quote me if I really did that somewhere.
Creating a variable is really pointless here, it involves, apart
from growing the stack, braces and a newline which can be easily
avoided for no cost.

> 
> > > +
> > > +	return NULL;
> > > +}
> > > +
> > > +/**
> > > + * iecm_tx_handle_sw_marker - Handle queue marker packet

--- 8< ---

> > > +
> > > +	/* modifies the skb - consumes the enet header */
> > > +	skb->protocol = eth_type_trans(skb, rxq->vport->netdev);
> > 
> > eth_type_trans() should generally be called *right* before
> > napi_gro_receive() to still have caches warm.
> > 
> 
> I'm pretty sure this happening here because we need to consume header before messing with checksum stuff but I'll have to dig deeper.  Will check.

You can always do skb_pull_inline() or skb_pull() or __skb_pull() to
shift skb->data to the right by ETH_HLEN, and then skb_push() (or
its inline variant) right before eth_type_trans(). They're all +/-
one operation (ptr increment/decrement) and are much cheaper than
the cache misses (esp. on DMA buffers).
Or even just use `skb->data + ETH_HLEN, skb->len - ETH_HLEN` if
there are not much places using them.

> 
> > > +	iecm_rx_splitq_extract_csum_bits(rx_desc, &csum_bits);
> > > +	iecm_rx_csum(rxq, skb, &csum_bits, &decoded);
> > > +	/* process RSS/hash */

--- 8< ---

> > > +static bool iecm_rx_page_is_reserved(struct page *page)
> > > +{
> > > +	return (page_to_nid(page) != numa_mem_id()) ||
> > page_is_pfmemalloc(page);
> > > +}
> > 
> > Please check generic dev_page_is_reusable(), it's almost the same
> > (a bit more optimized).
> > 
> 
> Will check and see if it does what we need.

I introduced it upstream exactly for that purpose and switched all
Intel drivers (and in general all the drivers which use such a
construct) to it, so it *does*.

> 
> > > +
> > > +/**
> > > + * iecm_rx_buf_adjust_pg - Prepare rx buffer for reuse

--- 8< ---

> > > +/**
> > > + * iecm_rx_can_reuse_page - Determine if page can be reused for another rx
> > > + * @rx_buf: buffer containing the page
> > > + *
> > > + * If page is reusable, we have a green light for calling iecm_reuse_rx_page,
> > > + * which will assign the current buffer to the buffer that next_to_alloc is
> > > + * pointing to; otherwise, the dma mapping needs to be destroyed and
> > > + * page freed
> > > + */
> > > +bool iecm_rx_can_reuse_page(struct iecm_rx_buf *rx_buf)

BTW, this is a relatively small, but very hotpath function, please
consider making it static inline. Compilers can uninline it then
if they find it big enough.

> > > +{
> > > +	struct iecm_page_info *page_info = &rx_buf->page_info[rx_buf-
> > >page_indx];
> > > +
> > > +#if (PAGE_SIZE >= 8192)
> > > +	unsigned int last_offset = PAGE_SIZE - rx_buf->buf_size;
> > > +#endif /* PAGE_SIZE < 8192) */
> > > +	unsigned int pagecnt_bias = page_info->pagecnt_bias;
> > > +	struct page *page = page_info->page;
> > > +
> > > +	/* avoid re-using remote pages */
> > > +	if (unlikely(iecm_rx_page_is_reserved(page)))
> > > +		return false;
> > > +
> > > +#if (PAGE_SIZE < 8192)
> > > +	/* if we are only owner of page we can reuse it */
> > > +	if (unlikely((page_count(page) - pagecnt_bias) > 1))
> > > +		return false;
> > > +#else
> > > +	if (rx_buf->page_offset > last_offset)
> > > +		return false;
> > > +#endif /* PAGE_SIZE < 8192) */
> > 
> > Same here 2 times.
> > 
> > > +
> > > +	/* If we have drained the page fragment pool we need to update
> > > +	 * the pagecnt_bias and page count so that we fully restock the
> > > +	 * number of references the driver holds.
> > > +	 */
> > > +	if (unlikely(pagecnt_bias == 1)) {
> > 
> > With 1532 byte frames, this condition will be hit 50% of times. It's
> > definitely not a good place for unlkely().
> > 
> 
> I'm afraid I'm not following here, mind elaborating? Keep in mind the buffer is 4k not 2k on MEV.

4k doesn't make any difference, but I confused reaching the bottom
of the @pagecnt_bias with reaching the end of the page, nevermind.

> 
> > > +		page_ref_add(page, USHRT_MAX - 1);
> > > +		page_info->pagecnt_bias = USHRT_MAX;
> > > +	}
> > > +
> > > +	return true;
> > > +}
> > > +
> > > +/**
> > > + * iecm_rx_add_frag - Add contents of Rx buffer to sk_buff as a frag

--- 8< ---

> > > +
> > > +		/* protocol */
> > > +		if (unlikely(iecm_rx_process_skb_fields(rxq, skb,
> > > +							splitq_flex_rx_desc))) {
> > 
> > You can define variables with shorter names to avoid this.
> > 
> 
> The only variable I see here with a questionably long name is splitq_flex_rx_desc but I don't see a way to shorten it without losing information. Note 'rx_desc' is also a variable that exists in this context and `splitq_base_rx_desc` could conceivably also exist so splitq_rx_desc doesn't work.

You don't actually need all that information. SplitQ model has its
own separate file, and it's reflected in the name of this function.
Rx processing is reflected as well. "flexd" ("flex_desc" after all)
is enough to get it all.
@rxq is named "rxq", not "splitq_rx_queue", right?

> 
> > > +			dev_kfree_skb_any(skb);
> > > +			skb = NULL;
> > > +			continue;
> > > +		}

--- 8< ---

> > >  static int iecm_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
> > >  {
> > > -	/* stub */
> > > -	return 0;
> > > +	struct iecm_q_vector *q_vector =
> > > +				container_of(napi, struct iecm_q_vector, napi);
> > 
> > You can assign it later (before clean_complete assignment) to avoid
> > this.
> > 
> 
> To avoid the word wrap? I'm not sure I see the difference between letting it wrap and assigning it on it's own line.

Yes. As I mentioned in one of my previous replies, declaration and
assignment which have their own lines is a regular occasion, and
a line wrap of an assignment is an exception *only* for the cases
when there's no other way.

I can't get why people are fighting so hardly for not splitting the
declarations + assignments. Like, you do

	clean_complete = iecm_tx_splitq_clean_all(q_vector, budget);

right after the declaration block, why don't you try to merge it
with the declaration itself? Because it's a non-read-only operation?
What is the actual problem with

	struct iecm_q_vector *q_vector;
	bool clean_complete;
	int work_done = 0;

	q_vector = container_of(napi, typeof(*q_vector), napi);
	clean_complete = iecm_tx_splitq_clean_all(q_vector, budget);

then? Is it less readable? To me it is actually more. Is it less
logical? Probably a newline between them will help if needed.

And also, if you have a really good reason for keeping it that way,
you should've wrapped it by arguments actually, not by operation.

	struct iecm_q_vector *q_vector = container_of(napi, typeof(*q_vector,
						      napi);

Wrapping by operation takes place *only* when there's no other way,
and here are at least two now.

> 
> > > +	bool clean_complete;
> > > +	int work_done = 0;
> > > +
> > > +	clean_complete = iecm_tx_splitq_clean_all(q_vector, budget);
> > > +
> > > +	/* Handle case where we are called by netpoll with a budget of 0 */

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

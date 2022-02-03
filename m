Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAFD4A8BAF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 19:31:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E025540A6E;
	Thu,  3 Feb 2022 18:31:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sr2hy9vRjZrG; Thu,  3 Feb 2022 18:31:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4013140176;
	Thu,  3 Feb 2022 18:31:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C34C1BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 18:31:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0746C4027E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 18:31:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QhLVOUAbmCmq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 18:31:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B33F4024B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 18:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643913100; x=1675449100;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5ZCpJJH8r1qvjj6ZZLBExlIQsB/HXc/koWxflSqkQoc=;
 b=bA8a+//nQovZOLsXN/Q3RUVfyHmUTUAQn+QDX8iB2utzIMnLI0MxXcwD
 6I3tAPGOLN4koHrDKItO2TTXCXQQalD+jHRzrjstLcJvJaoXz4Cm/ZjeU
 zcHaT76uLWEv+ZE1QfxMlEiU0BvEY7hOe5cAVn1EvIsplEq4Ui7AD6mtO
 pHe9kZV0+3ZCbf10EBS3aXjDxGBhDIRRfEe4AEMZ/Jvbjmy/3rplJBK8Y
 36aiepESDVSc4E/jxFb5Pmj5iTStfpyFQlJ2u5cmN0oPHu+OHcPLXyKbr
 zRZ1zYFtAzzLIu1AmPPntBMiyFWKaq8YXL/TMl6RFm10+KJqoX9k8SsTm A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="248436056"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="248436056"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:31:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="583882598"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 03 Feb 2022 10:31:32 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 213IVUDm018004; Thu, 3 Feb 2022 18:31:30 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Thu,  3 Feb 2022 19:29:40 +0100
Message-Id: <20220203182940.17916-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CO1PR11MB51863E27CA1EDD4B45CB9EED8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-11-alan.brady@intel.com>
 <20220128141604.22955-1-alexandr.lobakin@intel.com>
 <CO1PR11MB51863E27CA1EDD4B45CB9EED8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 10/19] iecm: alloc vport RX
 resources
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
Date: Thu, 3 Feb 2022 01:13:23 +0100

> > -----Original Message-----
> > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > Sent: Friday, January 28, 2022 6:16 AM
> > To: Brady, Alan <alan.brady@intel.com>
> > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> > lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim, Madhu
> > <madhu.chittim@intel.com>; Linga, Pavan Kumar
> > <pavan.kumar.linga@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net-next 10/19] iecm: alloc vport RX
> > resources
> > 
> > From: Alan Brady <alan.brady@intel.com>
> > Date: Thu, 27 Jan 2022 16:10:00 -0800
> > 
> > > This finishes what we need to do for open by adding RX resource
> > > allocations.
> > >
> > > As noted in the TX alloc patch, the splitq model is unique in
> > > introducing the concept of queue groups, which also applies to RX,
> > > albeit in a slightly different way. For RX we also split the queue
> > > between descriptor handling and buffer handling. We have some number
> > > of RX completion queues associated with up to two buffer queues in a
> > > given queue group. Once buffers are cleaned and recycled, they're
> > > given the buffer queues which then posts the buffers back to hardware.
> > > To enable this in a lockless way, there's also the concept of 'refill
> > > queues' introduced. Recycled buffers are put onto refill queues which is what
> > the buffer queues clean to get buffers back.
> > >
> > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/iecm/iecm_txrx.c   | 769 ++++++++++++++++++
> > >  .../net/ethernet/intel/include/iecm_txrx.h    |   7 +
> > >  2 files changed, 776 insertions(+)
> > >

--- 8< ---

> > > +	rxq->hbuf_pages.nr_pages = nr_pages;
> > > +	for (i = 0; i < nr_pages; i++) {
> > > +		if (iecm_alloc_page(rxq, &rxq->hbuf_pages.pages[i]))
> > 
> > And here you allocate pages with GFP_ATOMIC in process context.
> > Atomic allocations must not be used if the function may sleep.
> > Please add gfp_t gfp argument to iecm_alloc_page() and use GFP_KERNEL here
> > (and GFP_ATOMIC on buffer refill hotpath).
> > 
> 
> Perhaps I am confused here but it's my understanding we need GFP_ATOMIC when potentially used in a case where we can't sleep as it signals to the memory allocator to not sleep.  Not the other way around; we can't sleep if we have memory taken with GFP_ATOMIC.  We use it in hotpath as you said, where we can't sleep. What it really means to us is that it has a higher chance of failure to not get alloc'd if the kernel isn't allowed to sleep to free up some memory.

GFP_ATOMIC must be used only in atomic contexts i.e. hardirq and
softirq processing (using them inside spinlocks is debatable). With
this flag set, we have less resources available to allocate from,
and you can consider those resources as the reserves for critical
situations (and e.g. hardirqs are of those kind). This mostly comes
from GFP_NOWAIT embedded into GFP_ATOMIC.
This function allocates all the resources on ifup, the context is
non-critical and it's okay to sleep there, so using GFP_ATOMIC is
an excessive waste of critical memory in case of e.g. memory
pressure.
So we use GFP_ATOMIC for buffer refilling only inside NAPI context
itself.

> > > +			goto unroll_buf_alloc;
> > > +	}
> > > +
> > > +	page_info = &rxq->hbuf_pages.pages[0];

--- 8< ---

> > > +
> > > +		buf++;
> > > +		nta++;
> > > +		if (unlikely(nta == rxbufq->desc_count)) {
> > 
> > 		if (unlikely(++nta == ...)) { /* Just in one line */
> > 
> 
> Yes but pre-increments are gross and hard for humans to grok.

Could you please elaborate on "pre-increments are gross"? I don't
get it at all.

Also, "hard for humans to grok" to me doesn't seem really correct
here (and in all other places you used it) since you're reflecting
your personal opinion, not a mathematical fact I believe?

> 
> > > +			buf = rxbufq->rx_buf.buf;
> > > +			nta = 0;
> > > +		}
> > > +
> > > +		alloc_count--;
> > > +	} while (alloc_count);
> > 
> > 	} while (alloc_count--); /* Just in one line */
> > 
> 
> I believe
> 
> } while (--alloc_count);
> 
> would be accurate but pre increment/decrement are hard for humans to grok (as evidenced here).

Right, sorry, there should be a pre-increment.
Evidenced what and where?
If you're about my off-by-one, it doesn't mean anything, I use
pre-increments much more often than post-check-loops (usually it's
either for-loop or `while {}`).

> 
> > > +
> > > +	return !!alloc_count;
> > > +}
> > > +
> > > +/**
> > > + * iecm_rx_post_buf_desc - Post buffer to bufq descriptor ring

--- 8< ---

> > > +	iecm_rx_buf_hw_update(bufq, bufq->next_to_alloc &
> > > +~(bufq->rx_buf_stride - 1));
> > 
> > 87-cols line.
> > Please test all your patches with `checkpatch --strict --codespell`.
> > 
> 
> Just an FYI, all of these patches do mostly pass checkpatch since otherwise (except for net apparently) in the kernel 100 cols are now acceptable. You must also add `--max-line-length=80` to get a warning about 80 cols now.

Netdev maintainers still prefer 79/80 (and so do I), thus pointing
out all those long lines here.
Wasn't sure about checkpatch detecting whether it's a networking
patch and applying the corresponding settings since I can't recall
my last time going past 79.

> 
> > > +}
> > > +
> > > +/**
> > > + * iecm_rx_buf_alloc_all - Allocate memory for all buffer resources

--- 8< ---

> > > +	if (bufq) {
> > > +		rxq->size = rxq->desc_count *
> > > +			sizeof(struct virtchnl2_splitq_rx_buf_desc);
> > > +	} else {
> > > +		rxq->size = rxq->desc_count *
> > > +			sizeof(union virtchnl2_rx_desc);
> > > +	}
> > 
> > Oneliners, braces are unneeded.
> > 
> 
> Keeping because multi-line with line wrap.

Please see my previous messages.

> 
> > For counting the array sizes it's required to use array_size():

--- 8< ---

> > > +
> > > +	rxq->next_to_alloc = 0;
> > > +	rxq->next_to_clean = 0;
> > > +	rxq->next_to_use = 0;
> > 
> > You allocate rxq with kzalloc() (or derivative) IIRC, 'z'-versions zero the memory
> > before returning. These initializers are redundant.
> > 
> 
> This is allocating descriptors which can change.  If we change the descriptor ring it's probably a good idea to reset the queue indexes.

Again, this function takes a freshly zero-allocated ring structure.
Those are zeroes in 100% cases. Please correct if I'm wrong.

Also, while searching for iecm_rx_desc_alloc() usages, I spotted
that both it and iecm_rx_desc_alloc_all() are used only inside the
same file which they're declared in. So they should be static.
Please correct if not.

> 
> > > +	set_bit(__IECM_Q_GEN_CHK, rxq->flags);
> > > +
> > > +	/* Allocate buffers for a rx queue if the q_model is single OR if it

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

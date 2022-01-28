Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB08549FB73
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 15:17:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4125960BEA;
	Fri, 28 Jan 2022 14:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UsrwPeEmQOzO; Fri, 28 Jan 2022 14:17:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81AD6610D9;
	Fri, 28 Jan 2022 14:17:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F01E1BF860
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 14:17:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 78A2C60AB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 14:17:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JcOPyktyOIHr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 14:17:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D449960B8D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 14:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643379467; x=1674915467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sQuxQ+1W9qgy+sDzxR7VaEi5FfJ2h3lg3KC1k4JCeHY=;
 b=jT2lUpukgFiyuSsVRw62NXI5LMKwLYjp5RlmR4wj4qXpbOfpmzCZYTA5
 XvHwM9mMFeuS8RKhW/fLIrblFAJfyJG9RznnNqjM1O1vTZLqqOKqHglG5
 D7TgulLe7IGs5z2BYrnZx3QacFzP+XXFazQDlKxmt7GBCORWaoVIGZN9a
 XDiPbYZuZT533kvZIbPWGPWblyo4jWT0FF1SrOkNJM31ZOgqtTePjxC+I
 LwjbvdtEa1ZXDY5BV5G85xz8HhRVoAKLJBdHUtGM0a2PkDeWJHT2uOUbz
 uB8BHu3fTwjTpFOsgUYuR3LVZ28GOQp6jq0eGREiga1nvyIz1oKGvotK+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="247347459"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="247347459"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 06:17:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="533515765"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 28 Jan 2022 06:17:45 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20SEHi2G018507; Fri, 28 Jan 2022 14:17:44 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri, 28 Jan 2022 15:16:04 +0100
Message-Id: <20220128141604.22955-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128001009.721392-11-alan.brady@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-11-alan.brady@intel.com>
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
Cc: intel-wired-lan@lists.osuosl.org, Phani Burra <phani.r.burra@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 27 Jan 2022 16:10:00 -0800

> This finishes what we need to do for open by adding RX resource
> allocations.
> 
> As noted in the TX alloc patch, the splitq model is unique in introducing
> the concept of queue groups, which also applies to RX, albeit in a slightly
> different way. For RX we also split the queue between descriptor handling
> and buffer handling. We have some number of RX completion queues associated
> with up to two buffer queues in a given queue group. Once buffers are
> cleaned and recycled, they're given the buffer queues which then posts the
> buffers back to hardware. To enable this in a lockless way, there's also
> the concept of 'refill queues' introduced. Recycled buffers are put onto
> refill queues which is what the buffer queues clean to get buffers back.
> 
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/iecm/iecm_txrx.c   | 769 ++++++++++++++++++
>  .../net/ethernet/intel/include/iecm_txrx.h    |   7 +
>  2 files changed, 776 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_txrx.c b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> index 85e88a30370d..fb6a61277b00 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> @@ -452,6 +452,545 @@ static int iecm_tx_desc_alloc_all(struct iecm_vport *vport)
>  	return err;
>  }
>  
> +/**
> + * iecm_rx_page_rel - Release an rx buffer page
> + * @rxq: the queue that owns the buffer
> + * @page_info: pointer to page metadata of page to be freed
> + */
> +static void iecm_rx_page_rel(struct iecm_queue *rxq,
> +			     struct iecm_page_info *page_info)
> +{
> +	if (!page_info->page)
> +		return;
> +
> +	/* free resources associated with mapping */
> +	dma_unmap_page_attrs(rxq->dev, page_info->dma, PAGE_SIZE,
> +			     DMA_FROM_DEVICE, IECM_RX_DMA_ATTR);
> +
> +	__page_frag_cache_drain(page_info->page, page_info->pagecnt_bias);
> +
> +	page_info->page = NULL;
> +	page_info->page_offset = 0;
> +}
> +
> +/**
> + * iecm_rx_buf_rel - Release a rx buffer
> + * @rxq: the queue that owns the buffer
> + * @rx_buf: the buffer to free
> + */
> +static void iecm_rx_buf_rel(struct iecm_queue *rxq,
> +			    struct iecm_rx_buf *rx_buf)
> +{
> +	iecm_rx_page_rel(rxq, &rx_buf->page_info[0]);
> +#if (PAGE_SIZE < 8192)
> +	if (rx_buf->buf_size > IECM_RX_BUF_2048)
> +		iecm_rx_page_rel(rxq, &rx_buf->page_info[1]);
> +
> +#endif

PAGE_SIZE is always defined, thus can be embedded in an if
statement.

	if (PAGE_SIZE < 8192 && rx_buf ...)

will produce the same code, but without ifdeffery.

> +	if (rx_buf->skb) {
> +		dev_kfree_skb_any(rx_buf->skb);
> +		rx_buf->skb = NULL;
> +	}
> +}
> +
> +/**
> + * iecm_rx_hdr_buf_rel_all - Release header buffer memory
> + * @rxq: queue to use
> + */
> +static void iecm_rx_hdr_buf_rel_all(struct iecm_queue *rxq)
> +{
> +	struct iecm_hw *hw = &rxq->vport->adapter->hw;
> +	int i;
> +
> +	if (!rxq)
> +		return;
> +
> +	if (rxq->rx_buf.hdr_buf) {
> +		for (i = 0; i < rxq->desc_count; i++) {
> +			struct iecm_dma_mem *hbuf = rxq->rx_buf.hdr_buf[i];
> +
> +			if (hbuf) {
> +				iecm_free_dma_mem(hw, hbuf);
> +				kfree(hbuf);
> +			}
> +			rxq->rx_buf.hdr_buf[i] = NULL;
> +		}
> +		kfree(rxq->rx_buf.hdr_buf);
> +		rxq->rx_buf.hdr_buf = NULL;
> +	}

	if (!hdr_buf)
		goto release_pages;

-1 indent level.

> +
> +	for (i = 0; i < rxq->hbuf_pages.nr_pages; i++)
> +		iecm_rx_page_rel(rxq, &rxq->hbuf_pages.pages[i]);
> +
> +	kfree(rxq->hbuf_pages.pages);
> +}
> +
> +/**
> + * iecm_rx_buf_rel_all - Free all Rx buffer resources for a queue
> + * @rxq: queue to be cleaned
> + */
> +static void iecm_rx_buf_rel_all(struct iecm_queue *rxq)
> +{
> +	u16 i;
> +
> +	/* queue already cleared, nothing to do */
> +	if (!rxq->rx_buf.buf)
> +		return;
> +
> +	/* Free all the bufs allocated and given to hw on Rx queue */
> +	for (i = 0; i < rxq->desc_count; i++)
> +		iecm_rx_buf_rel(rxq, &rxq->rx_buf.buf[i]);
> +	if (rxq->rx_hsplit_en)
> +		iecm_rx_hdr_buf_rel_all(rxq);
> +
> +	kfree(rxq->rx_buf.buf);
> +	rxq->rx_buf.buf = NULL;
> +	kfree(rxq->rx_buf.hdr_buf);
> +	rxq->rx_buf.hdr_buf = NULL;
> +}
> +
> +/**
> + * iecm_rx_desc_rel - Free a specific Rx q resources
> + * @rxq: queue to clean the resources from
> + * @bufq: buffer q or completion q
> + * @q_model: single or split q model
> + *
> + * Free a specific rx queue resources
> + */
> +static void iecm_rx_desc_rel(struct iecm_queue *rxq, bool bufq, s32 q_model)
> +{
> +	if (!rxq)
> +		return;
> +
> +	if (!bufq && iecm_is_queue_model_split(q_model) && rxq->skb) {
> +		dev_kfree_skb_any(rxq->skb);
> +		rxq->skb = NULL;
> +	}
> +
> +	if (bufq || !iecm_is_queue_model_split(q_model))
> +		iecm_rx_buf_rel_all(rxq);
> +
> +	if (rxq->desc_ring) {
> +		dmam_free_coherent(rxq->dev, rxq->size,
> +				   rxq->desc_ring, rxq->dma);
> +		rxq->desc_ring = NULL;
> +		rxq->next_to_alloc = 0;
> +		rxq->next_to_clean = 0;
> +		rxq->next_to_use = 0;
> +	}

	if (!desc_ring)
		return;

Same.

> +}
> +
> +/**
> + * iecm_rx_desc_rel_all - Free Rx Resources for All Queues
> + * @vport: virtual port structure
> + *
> + * Free all rx queues resources
> + */
> +static void iecm_rx_desc_rel_all(struct iecm_vport *vport)
> +{
> +	struct iecm_rxq_group *rx_qgrp;
> +	struct iecm_queue *q;
> +	int i, j, num_rxq;
> +
> +	if (!vport->rxq_grps)
> +		return;
> +
> +	for (i = 0; i < vport->num_rxq_grp; i++) {
> +		rx_qgrp = &vport->rxq_grps[i];
> +
> +		if (iecm_is_queue_model_split(vport->rxq_model)) {
> +			num_rxq = rx_qgrp->splitq.num_rxq_sets;
> +			for (j = 0; j < num_rxq; j++) {
> +				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
> +				iecm_rx_desc_rel(q, false,
> +						 vport->rxq_model);
> +			}
> +
> +			if (!rx_qgrp->splitq.bufq_sets)
> +				continue;
> +			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
> +				struct iecm_bufq_set *bufq_set =
> +					&rx_qgrp->splitq.bufq_sets[j];
> +
> +				q = &bufq_set->bufq;
> +				iecm_rx_desc_rel(q, true, vport->rxq_model);
> +			}
> +		} else {
> +			for (j = 0; j < rx_qgrp->singleq.num_rxq; j++) {
> +				q = rx_qgrp->singleq.rxqs[j];
> +				iecm_rx_desc_rel(q, false,
> +						 vport->rxq_model);
> +			}
> +		}
> +	}
> +}
> +
> +/**
> + * iecm_rx_buf_hw_update - Store the new tail and head values
> + * @rxq: queue to bump
> + * @val: new head index
> + */
> +void iecm_rx_buf_hw_update(struct iecm_queue *rxq, u32 val)
> +{
> +	rxq->next_to_use = val;
> +
> +	if (unlikely(!rxq->tail))
> +		return;
> +	/* writel has an implicit memory barrier */
> +	writel(val, rxq->tail);
> +}
> +
> +/**
> + * iecm_alloc_page - allocate page to back RX buffer
> + * @rxbufq: pointer to queue struct
> + * @page_info: pointer to page metadata struct
> + */
> +static int
> +iecm_alloc_page(struct iecm_queue *rxbufq, struct iecm_page_info *page_info)
> +{
> +	/* alloc new page for storage */
> +	page_info->page = alloc_page(GFP_ATOMIC | __GFP_NOWARN);
> +	if (unlikely(!page_info->page))
> +		return -ENOMEM;
> +
> +	/* map page for use */
> +	page_info->dma = dma_map_page_attrs(rxbufq->dev, page_info->page,
> +					    0, PAGE_SIZE, DMA_FROM_DEVICE,
> +					    IECM_RX_DMA_ATTR);
> +
> +	/* if mapping failed free memory back to system since
> +	 * there isn't much point in holding memory we can't use
> +	 */
> +	if (dma_mapping_error(rxbufq->dev, page_info->dma)) {
> +		__free_pages(page_info->page, 0);
> +		return -ENOMEM;
> +	}
> +
> +	page_info->page_offset = 0;
> +
> +	/* initialize pagecnt_bias to claim we fully own page */
> +	page_ref_add(page_info->page, USHRT_MAX - 1);

Too many references to page_info->page, could be optimized by
placing *page onstack and then assigning page_info->page later.

> +	page_info->pagecnt_bias = USHRT_MAX;
> +
> +	return 0;
> +}
> +
> +/**
> + * iecm_init_rx_buf_hw_alloc - allocate initial RX buffer pages
> + * @rxbufq: ring to use; equivalent to rxq when operating in singleq mode
> + * @buf: rx_buffer struct to modify
> + *
> + * Returns true if the page was successfully allocated or
> + * reused.
> + */
> +bool iecm_init_rx_buf_hw_alloc(struct iecm_queue *rxbufq, struct iecm_rx_buf *buf)
> +{
> +	if (iecm_alloc_page(rxbufq, &buf->page_info[0]))
> +		return false;
> +
> +#if (PAGE_SIZE < 8192)
> +	if (rxbufq->rx_buf_size > IECM_RX_BUF_2048)
> +		if (iecm_alloc_page(rxbufq, &buf->page_info[1]))
> +			return false;
> +#endif

Same here with embedding the check.

> +
> +	buf->page_indx = 0;
> +	buf->buf_size = rxbufq->rx_buf_size;
> +
> +	return true;
> +}
> +
> +/**
> + * iecm_rx_hdr_buf_alloc_all - Allocate memory for header buffers
> + * @rxq: ring to use
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +static int iecm_rx_hdr_buf_alloc_all(struct iecm_queue *rxq)
> +{
> +	struct iecm_page_info *page_info;
> +	int nr_pages, offset;
> +	int i, j = 0;
> +
> +	rxq->rx_buf.hdr_buf = kcalloc(rxq->desc_count,
> +				      sizeof(struct iecm_dma_mem *),
> +				      GFP_KERNEL);
> +	if (!rxq->rx_buf.hdr_buf)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < rxq->desc_count; i++) {
> +		rxq->rx_buf.hdr_buf[i] = kcalloc(1,
> +						 sizeof(struct iecm_dma_mem),
> +						 GFP_KERNEL);
> +		if (!rxq->rx_buf.hdr_buf[i])
> +			goto unroll_buf_alloc;
> +	}
> +
> +	/* Determine the number of pages necessary to back the total number of header buffers */
> +	nr_pages = (rxq->desc_count * rxq->rx_hbuf_size) / PAGE_SIZE;
> +	rxq->hbuf_pages.pages = kcalloc(nr_pages,
> +					sizeof(struct iecm_page_info),
> +					GFP_KERNEL);
> +	if (!rxq->hbuf_pages.pages)
> +		goto unroll_buf_alloc;
> +
> +	rxq->hbuf_pages.nr_pages = nr_pages;
> +	for (i = 0; i < nr_pages; i++) {
> +		if (iecm_alloc_page(rxq, &rxq->hbuf_pages.pages[i]))

And here you allocate pages with GFP_ATOMIC in process context.
Atomic allocations must not be used if the function may sleep.
Please add gfp_t gfp argument to iecm_alloc_page() and use
GFP_KERNEL here (and GFP_ATOMIC on buffer refill hotpath).

> +			goto unroll_buf_alloc;
> +	}
> +
> +	page_info = &rxq->hbuf_pages.pages[0];
> +	for (i = 0, offset = 0; i < rxq->desc_count; i++, offset += rxq->rx_hbuf_size) {
> +		struct iecm_dma_mem *hbuf = rxq->rx_buf.hdr_buf[i];
> +
> +		/* Move to next page */
> +		if (offset >= PAGE_SIZE) {
> +			offset = 0;
> +			page_info = &rxq->hbuf_pages.pages[++j];
> +		}
> +
> +		hbuf->va = page_address(page_info->page) + offset;
> +		hbuf->pa = page_info->dma + offset;
> +		hbuf->size = rxq->rx_hbuf_size;
> +	}
> +
> +	return 0;
> +unroll_buf_alloc:
> +	iecm_rx_hdr_buf_rel_all(rxq);
> +	return -ENOMEM;
> +}
> +
> +/**
> + * iecm_rx_buf_hw_alloc_all - Allocate receive buffers
> + * @rxbufq: queue for which the hw buffers are allocated; equivalent to rxq
> + * when operating in singleq mode
> + * @alloc_count: number of buffers to allocate
> + *
> + * Returns false if all allocations were successful, true if any fail
> + */
> +static bool
> +iecm_rx_buf_hw_alloc_all(struct iecm_queue *rxbufq, u16 alloc_count)
> +{
> +	u16 nta = rxbufq->next_to_alloc;
> +	struct iecm_rx_buf *buf;
> +
> +	if (!alloc_count)
> +		return false;
> +
> +	buf = &rxbufq->rx_buf.buf[nta];
> +
> +	do {
> +		if (!iecm_init_rx_buf_hw_alloc(rxbufq, buf))
> +			break;
> +
> +		buf++;
> +		nta++;
> +		if (unlikely(nta == rxbufq->desc_count)) {

		if (unlikely(++nta == ...)) { /* Just in one line */

> +			buf = rxbufq->rx_buf.buf;
> +			nta = 0;
> +		}
> +
> +		alloc_count--;
> +	} while (alloc_count);

	} while (alloc_count--); /* Just in one line */

> +
> +	return !!alloc_count;
> +}
> +
> +/**
> + * iecm_rx_post_buf_desc - Post buffer to bufq descriptor ring
> + * @bufq: buffer queue to post to
> + * @buf_id: buffer id to post
> + */
> +static void iecm_rx_post_buf_desc(struct iecm_queue *bufq, u16 buf_id)
> +{
> +	struct virtchnl2_splitq_rx_buf_desc *splitq_rx_desc = NULL;
> +	struct iecm_page_info *page_info;
> +	u16 nta = bufq->next_to_alloc;
> +	struct iecm_rx_buf *buf;
> +
> +	splitq_rx_desc = IECM_SPLITQ_RX_BUF_DESC(bufq, nta);
> +	buf = &bufq->rx_buf.buf[buf_id];
> +	page_info = &buf->page_info[buf->page_indx];
> +	if (bufq->rx_hsplit_en)
> +		splitq_rx_desc->hdr_addr = cpu_to_le64(bufq->rx_buf.hdr_buf[buf_id]->pa);

90-cols line.

> +
> +	splitq_rx_desc->pkt_addr = cpu_to_le64(page_info->dma +
> +					       page_info->page_offset);
> +	splitq_rx_desc->qword0.buf_id = cpu_to_le16(buf_id);
> +
> +	nta++;
> +	if (unlikely(nta == bufq->desc_count))
> +		nta = 0;

Post-increment can be embedded into a condition check (with
converting into a pre-increment obviously).

> +	bufq->next_to_alloc = nta;
> +}
> +
> +/**
> + * iecm_rx_post_init_bufs - Post initial buffers to bufq
> + * @bufq: buffer queue to post working set to
> + * @working_set: number of buffers to put in working set
> + */
> +static void iecm_rx_post_init_bufs(struct iecm_queue *bufq,
> +				   u16 working_set)
> +{
> +	int i;
> +
> +	for (i = 0; i < working_set; i++)
> +		iecm_rx_post_buf_desc(bufq, i);
> +
> +	iecm_rx_buf_hw_update(bufq, bufq->next_to_alloc & ~(bufq->rx_buf_stride - 1));

87-cols line.
Please test all your patches with `checkpatch --strict --codespell`.

> +}
> +
> +/**
> + * iecm_rx_buf_alloc_all - Allocate memory for all buffer resources
> + * @rxbufq: queue for which the buffers are allocated; equivalent to
> + * rxq when operating in singleq mode
> + *
> + * Returns 0 on success, negative on failure
> + */
> +static int iecm_rx_buf_alloc_all(struct iecm_queue *rxbufq)
> +{
> +	int err = 0;
> +
> +	/* Allocate book keeping buffers */
> +	rxbufq->rx_buf.buf = kcalloc(rxbufq->desc_count,
> +				     sizeof(struct iecm_rx_buf), GFP_KERNEL);
> +	if (!rxbufq->rx_buf.buf) {
> +		err = -ENOMEM;
> +		goto rx_buf_alloc_all_out;
> +	}
> +
> +	if (rxbufq->rx_hsplit_en) {
> +		err = iecm_rx_hdr_buf_alloc_all(rxbufq);
> +		if (err)
> +			goto rx_buf_alloc_all_out;
> +	}
> +
> +	/* Allocate buffers to be given to HW.	 */
> +	if (iecm_is_queue_model_split(rxbufq->vport->rxq_model)) {
> +		if (iecm_rx_buf_hw_alloc_all(rxbufq, rxbufq->desc_count - 1))
> +			err = -ENOMEM;
> +	} else {
> +		if (iecm_rx_singleq_buf_hw_alloc_all(rxbufq, rxbufq->desc_count - 1))
> +			err = -ENOMEM;
> +	}
> +
> +rx_buf_alloc_all_out:
> +	if (err)
> +		iecm_rx_buf_rel_all(rxbufq);
> +	return err;
> +}
> +
> +/**
> + * iecm_rx_desc_alloc - Allocate queue Rx resources
> + * @rxq: Rx queue for which the resources are setup
> + * @bufq: buffer or completion queue
> + * @q_model: single or split queue model
> + *
> + * Returns 0 on success, negative on failure
> + */
> +static int iecm_rx_desc_alloc(struct iecm_queue *rxq, bool bufq, s32 q_model)
> +{
> +	struct device *dev = rxq->dev;
> +
> +	/* As both single and split descriptors are 32 byte, memory size
> +	 * will be same for all three singleq_base rx, buf., splitq_base
> +	 * rx. So pick anyone of them for size
> +	 */
> +	if (bufq) {
> +		rxq->size = rxq->desc_count *
> +			sizeof(struct virtchnl2_splitq_rx_buf_desc);
> +	} else {
> +		rxq->size = rxq->desc_count *
> +			sizeof(union virtchnl2_rx_desc);
> +	}

Oneliners, braces are unneeded.

For counting the array sizes it's required to use array_size():

	rxq->size = array_size(rxq->desc_count, sizeof(...));
	if (unlikely(rxq->size == -EOVERFLOW))
		/* Error path */

There are more such places in the code, I couldn't catch them all.

> +
> +	/* Allocate descriptors and also round up to nearest 4K */
> +	rxq->size = ALIGN(rxq->size, 4096);

4096 = SZ_4K, no need to open-code.

> +	rxq->desc_ring = dmam_alloc_coherent(dev, rxq->size,
> +					     &rxq->dma, GFP_KERNEL);
> +	if (!rxq->desc_ring) {
> +		dev_info(dev, "Unable to allocate memory for the Rx descriptor ring, size=%d\n",
> +			 rxq->size);
> +		return -ENOMEM;
> +	}
> +
> +	rxq->next_to_alloc = 0;
> +	rxq->next_to_clean = 0;
> +	rxq->next_to_use = 0;

You allocate rxq with kzalloc() (or derivative) IIRC, 'z'-versions
zero the memory before returning. These initializers are redundant.

> +	set_bit(__IECM_Q_GEN_CHK, rxq->flags);
> +
> +	/* Allocate buffers for a rx queue if the q_model is single OR if it
> +	 * is a buffer queue in split queue model
> +	 */
> +	if (bufq || !iecm_is_queue_model_split(q_model)) {
> +		int err = 0;
> +
> +		err = iecm_rx_buf_alloc_all(rxq);
> +		if (err) {
> +			iecm_rx_desc_rel(rxq, bufq, q_model);
> +			return err;
> +		}
> +	}

	if (inverse_the_condition_above)
		return 0;

	err = ...

-1 indent level.

> +	return 0;
> +}
> +
> +/**
> + * iecm_rx_desc_alloc_all - allocate all RX queues resources
> + * @vport: virtual port structure
> + *
> + * Returns 0 on success, negative on failure
> + */
> +static int iecm_rx_desc_alloc_all(struct iecm_vport *vport)
> +{
> +	struct device *dev = &vport->adapter->pdev->dev;
> +	struct iecm_rxq_group *rx_qgrp;
> +	int i, j, num_rxq, working_set;
> +	struct iecm_queue *q;
> +	int err = 0;
> +
> +	for (i = 0; i < vport->num_rxq_grp; i++) {
> +		rx_qgrp = &vport->rxq_grps[i];
> +		if (iecm_is_queue_model_split(vport->rxq_model))
> +			num_rxq = rx_qgrp->splitq.num_rxq_sets;
> +		else
> +			num_rxq = rx_qgrp->singleq.num_rxq;
> +
> +		for (j = 0; j < num_rxq; j++) {
> +			if (iecm_is_queue_model_split(vport->rxq_model))
> +				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
> +			else
> +				q = rx_qgrp->singleq.rxqs[j];
> +			err = iecm_rx_desc_alloc(q, false, vport->rxq_model);
> +			if (err) {
> +				dev_err(dev, "Memory allocation for Rx Queue %u failed\n",
> +					i);
> +				goto err_out;
> +			}
> +		}
> +
> +		if (iecm_is_queue_model_split(vport->rxq_model)) {
> +			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
> +				q = &rx_qgrp->splitq.bufq_sets[j].bufq;
> +				err = iecm_rx_desc_alloc(q, true,
> +							 vport->rxq_model);
> +				if (err) {
> +					dev_err(dev, "Memory allocation for Rx Buffer Queue %u failed\n",
> +						i);
> +					goto err_out;
> +				}
> +
> +				working_set = IECM_RX_BUFQ_WORKING_SET(q);
> +				iecm_rx_post_init_bufs(q, working_set);
> +			}
> +		}
> +	}
> +err_out:
> +	if (err)
> +		iecm_rx_desc_rel_all(vport);
> +	return err;
> +}
> +
>  /**
>   * iecm_txq_group_rel - Release all resources for txq groups
>   * @vport: vport to release txq groups on
> @@ -478,6 +1017,61 @@ static void iecm_txq_group_rel(struct iecm_vport *vport)
>  	}
>  }
>  
> +/**
> + * iecm_rxq_sw_queue_rel - Release software queue resources
> + * @rx_qgrp: rx queue group with software queues
> + */
> +static void iecm_rxq_sw_queue_rel(struct iecm_rxq_group *rx_qgrp)
> +{
> +	int i, j;
> +
> +	for (i = 0; i < rx_qgrp->vport->num_bufqs_per_qgrp; i++) {
> +		struct iecm_bufq_set *bufq_set = &rx_qgrp->splitq.bufq_sets[i];
> +
> +		for (j = 0; j < bufq_set->num_refillqs; j++) {
> +			kfree(bufq_set->refillqs[j].ring);
> +			bufq_set->refillqs[j].ring = NULL;
> +		}
> +		kfree(bufq_set->refillqs);
> +		bufq_set->refillqs = NULL;
> +	}
> +}
> +
> +/**
> + * iecm_rxq_group_rel - Release all resources for rxq groups
> + * @vport: vport to release rxq groups on
> + */
> +static void iecm_rxq_group_rel(struct iecm_vport *vport)
> +{
> +	if (vport->rxq_grps) {
> +		int i;
> +
> +		for (i = 0; i < vport->num_rxq_grp; i++) {
> +			struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> +			int j, num_rxq;
> +
> +			if (iecm_is_queue_model_split(vport->rxq_model)) {
> +				num_rxq = rx_qgrp->splitq.num_rxq_sets;
> +				for (j = 0; j < num_rxq; j++) {
> +					kfree(rx_qgrp->splitq.rxq_sets[j]);
> +					rx_qgrp->splitq.rxq_sets[j] = NULL;
> +				}
> +				iecm_rxq_sw_queue_rel(rx_qgrp);
> +				kfree(rx_qgrp->splitq.bufq_sets);
> +				rx_qgrp->splitq.bufq_sets = NULL;
> +			} else {
> +				num_rxq = rx_qgrp->singleq.num_rxq;
> +				for (j = 0; j < num_rxq; j++) {
> +					kfree(rx_qgrp->singleq.rxqs[j]);
> +					rx_qgrp->singleq.rxqs[j] = NULL;
> +				}
> +			}
> +		}
> +		kfree(vport->rxq_grps);
> +		vport->rxq_grps = NULL;
> +	}

	if (!rxq_grps)
		return;

-1 lvl.

> +}
> +
>  /**
>   * iecm_vport_queue_grp_rel_all - Release all queue groups
>   * @vport: vport to release queue groups for
> @@ -485,6 +1079,7 @@ static void iecm_txq_group_rel(struct iecm_vport *vport)
>  static void iecm_vport_queue_grp_rel_all(struct iecm_vport *vport)
>  {
>  	iecm_txq_group_rel(vport);
> +	iecm_rxq_group_rel(vport);
>  }
>  
>  /**
> @@ -496,6 +1091,7 @@ static void iecm_vport_queue_grp_rel_all(struct iecm_vport *vport)
>  void iecm_vport_queues_rel(struct iecm_vport *vport)
>  {
>  	iecm_tx_desc_rel_all(vport);
> +	iecm_rx_desc_rel_all(vport);
>  	iecm_vport_queue_grp_rel_all(vport);
>  
>  	kfree(vport->txqs);
> @@ -715,6 +1311,24 @@ void iecm_vport_calc_num_q_vec(struct iecm_vport *vport)
>  }
>  EXPORT_SYMBOL(iecm_vport_calc_num_q_vec);
>  
> +/**
> + * iecm_rxq_set_descids - set the descids supported by this queue
> + * @vport: virtual port data structure
> + * @q: rx queue for which descids are set
> + *
> + */
> +static void iecm_rxq_set_descids(struct iecm_vport *vport, struct iecm_queue *q)
> +{
> +	if (vport->rxq_model == VIRTCHNL2_QUEUE_MODEL_SPLIT) {
> +		q->rxdids = VIRTCHNL2_RXDID_1_FLEX_SPLITQ_M;
> +	} else {
> +		if (vport->base_rxd)
> +			q->rxdids = VIRTCHNL2_RXDID_1_32B_BASE_M;
> +		else
> +			q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M;
> +	}
> +}
> +
>  /**
>   * iecm_set_vlan_tag_loc - set the tag location for a tx/rx queue
>   * @adapter: adapter structure
> @@ -827,6 +1441,152 @@ static int iecm_txq_group_alloc(struct iecm_vport *vport, int num_txq)
>  	return err;
>  }
>  
> +/**
> + * iecm_rxq_group_alloc - Allocate all rxq group resources
> + * @vport: vport to allocate rxq groups for
> + * @num_rxq: number of rxqs to allocate for each group
> + *
> + * Returns 0 on success, negative on failure
> + */
> +static int iecm_rxq_group_alloc(struct iecm_vport *vport, int num_rxq)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_queue *q;
> +	int i, k, err = 0;
> +
> +	vport->rxq_grps = kcalloc(vport->num_rxq_grp,
> +				  sizeof(struct iecm_rxq_group), GFP_KERNEL);
> +	if (!vport->rxq_grps)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < vport->num_rxq_grp; i++) {
> +		struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> +		int j;
> +
> +		rx_qgrp->vport = vport;
> +		if (iecm_is_queue_model_split(vport->rxq_model)) {
> +			rx_qgrp->splitq.num_rxq_sets = num_rxq;
> +
> +			for (j = 0; j < num_rxq; j++) {
> +				rx_qgrp->splitq.rxq_sets[j] =
> +					kzalloc(sizeof(struct iecm_rxq_set),
> +						GFP_KERNEL);
> +				if (!rx_qgrp->splitq.rxq_sets[j]) {
> +					err = -ENOMEM;
> +					goto err_alloc;
> +				}
> +			}
> +
> +			rx_qgrp->splitq.bufq_sets = kcalloc(vport->num_bufqs_per_qgrp,
> +							    sizeof(struct iecm_bufq_set),
> +							    GFP_KERNEL);
> +			if (!rx_qgrp->splitq.bufq_sets) {
> +				err = -ENOMEM;
> +				goto err_alloc;
> +			}
> +
> +			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
> +				struct iecm_bufq_set *bufq_set =
> +					&rx_qgrp->splitq.bufq_sets[j];
> +				int swq_size = sizeof(struct iecm_sw_queue);
> +
> +				q = &rx_qgrp->splitq.bufq_sets[j].bufq;
> +				q->dev = &adapter->pdev->dev;
> +				q->desc_count = vport->bufq_desc_count[j];
> +				q->vport = vport;
> +				q->rxq_grp = rx_qgrp;
> +				q->idx = j;
> +				q->rx_buf_size = vport->bufq_size[j];
> +				q->rx_buffer_low_watermark = IECM_LOW_WATERMARK;
> +				q->rx_buf_stride = IECM_RX_BUF_STRIDE;
> +
> +				if (test_bit(__IECM_PRIV_FLAGS_HDR_SPLIT,
> +					     adapter->config_data.user_flags)) {
> +					q->rx_hsplit_en = true;
> +					q->rx_hbuf_size = IECM_HDR_BUF_SIZE;
> +				}
> +
> +				bufq_set->num_refillqs = num_rxq;
> +				bufq_set->refillqs = kcalloc(num_rxq,
> +							     swq_size,
> +							     GFP_KERNEL);
> +				if (!bufq_set->refillqs) {
> +					err = -ENOMEM;
> +					goto err_alloc;
> +				}
> +				for (k = 0; k < bufq_set->num_refillqs; k++) {
> +					struct iecm_sw_queue *refillq =
> +						&bufq_set->refillqs[k];
> +
> +					refillq->dev =
> +						&vport->adapter->pdev->dev;
> +					refillq->buf_size = q->rx_buf_size;
> +					refillq->desc_count =
> +						vport->bufq_desc_count[j];
> +					set_bit(__IECM_Q_GEN_CHK,
> +						refillq->flags);
> +					set_bit(__IECM_RFLQ_GEN_CHK,
> +						refillq->flags);
> +					refillq->ring = kcalloc(refillq->desc_count,
> +								sizeof(u16),
> +								GFP_KERNEL);
> +					if (!refillq->ring) {
> +						err = -ENOMEM;
> +						goto err_alloc;
> +					}
> +				}
> +			}
> +		} else {
> +			rx_qgrp->singleq.num_rxq = num_rxq;
> +			for (j = 0; j < num_rxq; j++) {
> +				rx_qgrp->singleq.rxqs[j] =
> +					kzalloc(sizeof(*rx_qgrp->singleq.rxqs[j]), GFP_KERNEL);
> +				if (!rx_qgrp->singleq.rxqs[j]) {
> +					err = -ENOMEM;
> +					goto err_alloc;
> +				}
> +			}
> +		}
> +
> +		for (j = 0; j < num_rxq; j++) {
> +			if (iecm_is_queue_model_split(vport->rxq_model)) {
> +				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
> +				rx_qgrp->splitq.rxq_sets[j]->refillq0 =
> +				      &rx_qgrp->splitq.bufq_sets[0].refillqs[j];
> +				rx_qgrp->splitq.rxq_sets[j]->refillq1 =
> +				      &rx_qgrp->splitq.bufq_sets[1].refillqs[j];
> +
> +				if (test_bit(__IECM_PRIV_FLAGS_HDR_SPLIT,
> +					     adapter->config_data.user_flags)) {
> +					q->rx_hsplit_en = true;
> +					q->rx_hbuf_size = IECM_HDR_BUF_SIZE;
> +				}
> +			} else {
> +				q = rx_qgrp->singleq.rxqs[j];
> +			}
> +			q->dev = &adapter->pdev->dev;
> +			q->desc_count = vport->rxq_desc_count;
> +			q->vport = vport;
> +			q->rxq_grp = rx_qgrp;
> +			q->idx = (i * num_rxq) + j;
> +			/* In splitq mode, RXQ buffer size should be
> +			 * set to that of the first buffer queue
> +			 * associated with this RXQ
> +			 */
> +			q->rx_buf_size = vport->bufq_size[0];
> +			q->rx_buffer_low_watermark = IECM_LOW_WATERMARK;
> +			q->rx_max_pkt_size = vport->netdev->mtu +
> +							IECM_PACKET_HDR_PAD;
> +			iecm_rxq_set_descids(vport, q);
> +			iecm_set_vlan_tag_loc(adapter, q);
> +		}
> +	}
> +err_alloc:
> +	if (err)
> +		iecm_rxq_group_rel(vport);
> +	return err;
> +}
> +
>  /**
>   * iecm_vport_queue_grp_alloc_all - Allocate all queue groups/resources
>   * @vport: vport with qgrps to allocate
> @@ -841,6 +1601,11 @@ static int iecm_vport_queue_grp_alloc_all(struct iecm_vport *vport)
>  	iecm_vport_calc_numq_per_grp(vport, &num_txq, &num_rxq);
>  
>  	err = iecm_txq_group_alloc(vport, num_txq);
> +	if (err)
> +		goto err_out;
> +
> +	err = iecm_rxq_group_alloc(vport, num_rxq);
> +err_out:
>  	if (err)
>  		iecm_vport_queue_grp_rel_all(vport);
>  	return err;
> @@ -866,6 +1631,10 @@ int iecm_vport_queues_alloc(struct iecm_vport *vport)
>  	if (err)
>  		goto err_out;
>  
> +	err = iecm_rx_desc_alloc_all(vport);
> +	if (err)
> +		goto err_out;
> +
>  	err = iecm_vport_init_fast_path_txqs(vport);
>  	if (err)
>  		goto err_out;
> diff --git a/drivers/net/ethernet/intel/include/iecm_txrx.h b/drivers/net/ethernet/intel/include/iecm_txrx.h
> index 44c20f8a2039..5e29148938fb 100644
> --- a/drivers/net/ethernet/intel/include/iecm_txrx.h
> +++ b/drivers/net/ethernet/intel/include/iecm_txrx.h
> @@ -198,6 +198,11 @@ struct iecm_page_info {
>  	u16 pagecnt_bias;
>  };
>  
> +struct iecm_rx_hdr_buf_pages {
> +	u32 nr_pages;
> +	struct iecm_page_info *pages;

Place the pointer at the beginning to avoid gaps and alignment
issues.

> +};
> +
>  struct iecm_rx_buf {
>  #define IECM_RX_BUF_MAX_PAGES 2
>  	struct iecm_page_info page_info[IECM_RX_BUF_MAX_PAGES];
> @@ -498,6 +503,8 @@ struct iecm_queue {
>  					 * with scatter-gather
>  					 */
>  	DECLARE_HASHTABLE(sched_buf_hash, 12);
> +
> +	struct iecm_rx_hdr_buf_pages hbuf_pages;
>  } ____cacheline_internodealigned_in_smp;
>  
>  /* Software queues are used in splitq mode to manage buffers between rxq
> -- 
> 2.33.0

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

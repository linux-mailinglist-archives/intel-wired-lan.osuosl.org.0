Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D644B4A8211
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 11:08:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7474481434;
	Thu,  3 Feb 2022 10:08:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EDUr8Akfmpnx; Thu,  3 Feb 2022 10:08:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B698F81439;
	Thu,  3 Feb 2022 10:08:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD4A81BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 10:08:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D71AF40116
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 10:08:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OCH9SR481-_5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 10:08:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C7DCC4040D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 10:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643882926; x=1675418926;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Abgu6pzhB5gRexGVbq21N4ivTU03wCexMVOmi3Pisls=;
 b=GSmhKTWLzUhWxJshC4CXbgxcGk/pPlps11e5qhTlyjlKWS/kQMAHUim3
 pUo1M8ZM1LT5NZrTQmuq+l3Dbxm3zwm7PBuFXA6GirFW9Bh1pkMSCKoKg
 cOl249k5T+aCXQ0p/LErQ0Gx/JCBKsSX2ZQw0I1JNGRTrH6lTKaFtnL7Q
 jTDQKPD+518olH2kmTaIBIz9Sdg/2esY8S0c3wPsGkoYmBK63R8Z06V3m
 HGa2iiFfnG0ARlNKGh30jAjqVPafGrmfaXHR9VA+0lKndj+B6G97xcN8R
 5PdbQFLblaCedg3vv69BGGxlPb2myzIv10F+9drbaVLErRBYGzrkKIOqy A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="272606284"
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="272606284"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 02:08:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="498086579"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga002.jf.intel.com with ESMTP; 03 Feb 2022 02:08:43 -0800
Date: Thu, 3 Feb 2022 11:08:42 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Brady, Alan" <alan.brady@intel.com>
Message-ID: <Yfupqv3/adFjuI3G@boxer>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-7-alan.brady@intel.com>
 <20220128130306.21674-1-alexandr.lobakin@intel.com>
 <CO1PR11MB518643B8F1CBFA248A9E45768F279@CO1PR11MB5186.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CO1PR11MB518643B8F1CBFA248A9E45768F279@CO1PR11MB5186.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 06/19] iecm: add virtchnl
 messages for queues
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
 "Burra, Phani R" <phani.r.burra@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 02, 2022 at 10:48:48PM +0000, Brady, Alan wrote:
> > -----Original Message-----
> > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > Sent: Friday, January 28, 2022 5:03 AM
> > To: Brady, Alan <alan.brady@intel.com>
> > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> > lan@lists.osuosl.org; Linga, Pavan Kumar <pavan.kumar.linga@intel.com>;
> > Chittim, Madhu <madhu.chittim@intel.com>; Burra, Phani R
> > <phani.r.burra@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net-next 06/19] iecm: add virtchnl
> > messages for queues
> > 
> > From: Alan Brady <alan.brady@intel.com>
> > Date: Thu, 27 Jan 2022 16:09:56 -0800
> > 
> > > This continues adding virtchnl messages. This largely relates to adding
> > > messages needed to negotiate and setup traffic queues.
> > >
> > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Signed-off-by: Alice Michael <alice.michael@intel.com>
> > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/iecm/iecm_lib.c    |   14 +
> > >  drivers/net/ethernet/intel/iecm/iecm_txrx.c   |  161 +++
> > >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 1127 ++++++++++++++++-
> > >  drivers/net/ethernet/intel/include/iecm.h     |   22 +
> > >  .../net/ethernet/intel/include/iecm_txrx.h    |  196 +++
> > >  5 files changed, 1505 insertions(+), 15 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > > index e2e523f0700e..4e9cc7f2d138 100644
> > > --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > > +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > 
> > --- 8< ---

I think we could trim a bit more in these responses, so they would be
easier to follow for people :)

> > 
> > > +void iecm_vport_calc_num_q_desc(struct iecm_vport *vport)
> > > +{
> > > +	int num_req_txq_desc = vport->adapter-
> > >config_data.num_req_txq_desc;
> > > +	int num_req_rxq_desc = vport->adapter-
> > >config_data.num_req_rxq_desc;
> > > +	int num_bufqs = vport->num_bufqs_per_qgrp;
> > > +	int i = 0;
> > > +
> > > +	vport->complq_desc_count = 0;
> > > +	if (num_req_txq_desc) {
> > > +		vport->txq_desc_count = num_req_txq_desc;
> > > +		if (iecm_is_queue_model_split(vport->txq_model)) {
> > > +			vport->complq_desc_count = num_req_txq_desc;
> > > +			if (vport->complq_desc_count <
> > IECM_MIN_TXQ_COMPLQ_DESC)
> > > +				vport->complq_desc_count =
> > > +					IECM_MIN_TXQ_COMPLQ_DESC;
> > > +		}
> > > +	} else {
> > > +		vport->txq_desc_count =
> > > +			IECM_DFLT_TX_Q_DESC_COUNT;
> > > +		if (iecm_is_queue_model_split(vport->txq_model)) {
> > > +			vport->complq_desc_count =
> > > +				IECM_DFLT_TX_COMPLQ_DESC_COUNT;
> > > +		}
> > 
> > Braces are redundant here since the path is a one-liner.
> > 
> 
> Correct me if I'm wrong but believe the guidance here is if it goes
> beyond one line with line wrapping, it is optional whether or not to use
> braces, even if the statement is 'one line'. We have generally preferred
> to keep braces in multiline statements. However you do have a point that
> it is not consistent in this function. Will fix.

That's the first time I hear about something like that. Interesting that
checkpatch won't scream at you for this, but I'm with Alex in here.

> 
> > > +	}
> > > +
> > > +	if (num_req_rxq_desc)
> > > +		vport->rxq_desc_count = num_req_rxq_desc;
> > > +	else
> > > +		vport->rxq_desc_count = IECM_DFLT_RX_Q_DESC_COUNT;
> > > +
> > > +	for (i = 0; i < num_bufqs; i++) {
> > > +		if (!vport->bufq_desc_count[i])
> > > +			vport->bufq_desc_count[i] =
> > > +				IECM_RX_BUFQ_DESC_COUNT(vport-
> > >rxq_desc_count,
> > > +							num_bufqs);
> > 
> > 		if (vport->bufq_desc_count[i])
> > 			continue;
> > 
> > 		vport-> ...
> > 
> > -1 indent level with that.
> > 
> > > +	}
> > > +}
> > > +

(...)

> > > +/**
> > > + * iecm_send_config_rx_queues_msg - Send virtchnl config rx queues
> > message
> > > + * @vport: virtual port data structure
> > > + *
> > > + * Send config rx queues virtchnl message.  Returns 0 on success, negative on
> > > + * failure.
> > > + */
> > > +int iecm_send_config_rx_queues_msg(struct iecm_vport *vport)
> > > +{
> > > +	struct virtchnl2_config_rx_queues *crq = NULL;
> > > +	int config_data_size, chunk_size, buf_size = 0;
> > > +	int totqs, num_msgs, num_chunks;
> > > +	struct virtchnl2_rxq_info *qi;
> > > +	int err = 0, i, k = 0;
> > > +	bool alloc = false;
> > > +
> > > +	totqs = vport->num_rxq + vport->num_bufq;
> > > +	qi = kcalloc(totqs, sizeof(struct virtchnl2_rxq_info), GFP_KERNEL);
> > > +	if (!qi)
> > > +		return -ENOMEM;
> > > +
> > > +	/* Populate the queue info buffer with all queue context info */
> > > +	for (i = 0; i < vport->num_rxq_grp; i++) {
> > > +		struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> > > +		int num_rxq;
> > > +		int j;
> > > +
> > > +		if (iecm_is_queue_model_split(vport->rxq_model)) {
> > > +			for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
> > > +				struct iecm_queue *bufq =
> > > +					&rx_qgrp->splitq.bufq_sets[j].bufq;
> > > +
> > > +				qi[k].queue_id =
> > > +					cpu_to_le32(bufq->q_id);
> > > +				qi[k].model =
> > > +					cpu_to_le16(vport->rxq_model);
> > > +				qi[k].type =
> > > +					cpu_to_le32(bufq->q_type);
> > > +				qi[k].desc_ids =
> > > +
> > 	cpu_to_le64(VIRTCHNL2_RXDID_1_FLEX_SPLITQ_M);
> > > +				qi[k].ring_len =
> > > +					cpu_to_le16(bufq->desc_count);
> > > +				qi[k].dma_ring_addr =
> > > +					cpu_to_le64(bufq->dma);
> > > +				qi[k].data_buffer_size =
> > > +					cpu_to_le32(bufq->rx_buf_size);
> > > +				qi[k].buffer_notif_stride =
> > > +					bufq->rx_buf_stride;
> > > +				qi[k].rx_buffer_low_watermark =
> > > +					cpu_to_le16(bufq-
> > >rx_buffer_low_watermark);
> > > +			}
> > > +		}
> > 
> > 		if (iecm_is_queue_model_split(vport->rxq_model))
> > 			goto here;
> > 
> > -1 indent level for the for-loop.
> 
> I'm afraid I'm not following, please elaborate. Where are we goto'ing?
> The for loop below needs to be executed for both and if we just tack the
> above for loop at the bottom of the function and goto in and out of it
> to save an indent does not sound great and makes the code harder to
> follow IMO.

Below or above? I think Alex meant to skip the for loop execution for
nonsplitq model. And by reducing indent you probably could have all of the
assignments stored on the single line.

> 
> > Braces for 'if' are not needed since the for-loop has their own.
> > 
> 
> They're not required but we have generally preferred to keep braces on
> statements extending across more than one line.

Here I'm actually okay with keeping the braces as in future maybe you
might want to introduce something for the splitq case outside of the
current loop so it might get tricky when you forgot to supply the outer
'if' with braces. Just my 0.02$.

> 
> > > +
> > > +		if (iecm_is_queue_model_split(vport->rxq_model))
> > > +			num_rxq = rx_qgrp->splitq.num_rxq_sets;
> > > +		else
> > > +			num_rxq = rx_qgrp->singleq.num_rxq;
> > > +
> > > +		for (j = 0; j < num_rxq; j++, k++) {
> > > +			struct iecm_queue *rxq;
> > > +
> > > +			if (iecm_is_queue_model_split(vport->rxq_model)) {
> > > +				rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
> > > +				qi[k].rx_bufq1_id =
> > > +				  cpu_to_le16(rxq->rxq_grp-
> > >splitq.bufq_sets[0].bufq.q_id);
> > > +				qi[k].rx_bufq2_id =
> > > +				  cpu_to_le16(rxq->rxq_grp-
> > >splitq.bufq_sets[1].bufq.q_id);
> > > +				qi[k].hdr_buffer_size =
> > > +					cpu_to_le16(rxq->rx_hbuf_size);
> > > +				qi[k].rx_buffer_low_watermark =
> > > +					cpu_to_le16(rxq-
> > >rx_buffer_low_watermark);
> > > +
> > > +				if (rxq->rx_hsplit_en) {
> > > +					qi[k].qflags =
> > > +
> > 	cpu_to_le16(VIRTCHNL2_RXQ_HDR_SPLIT);
> > > +					qi[k].hdr_buffer_size =
> > > +						cpu_to_le16(rxq-
> > >rx_hbuf_size);
> > > +				}
> > > +			} else {
> > > +				rxq = rx_qgrp->singleq.rxqs[j];
> > > +			}
> > 
> > Same here, but with rxq = ... + goto.
> > 
> 
> Please elaborate.

		if (!iecm_is_queue_model_split(vport->rxq_model)) {
			rxq = rx_qgrp->singleq.rxqs[j];
			goto skip_splitq_init;
		}
		rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
		qi[k].rx_bufq1_id = cpu_to_le16(rxq->rxq_grp->splitq.bufq_sets[0].bufq.q_id);
		qi[k].rx_bufq2_id = cpu_to_le16(rxq->rxq_grp->splitq.bufq_sets[1].bufq.q_id);
		qi[k].hdr_buffer_size = cpu_to_le16(rxq->rx_hbuf_size);
		qi[k].rx_buffer_low_watermark = cpu_to_le16(rxq->rx_buffer_low_watermark);

		if (rxq->rx_hsplit_en) {
			qi[k].qflags = cpu_to_le16(VIRTCHNL2_RXQ_HDR_SPLIT);
			qi[k].hdr_buffer_size = cpu_to_le16(rxq->rx_hbuf_size);
		}
skip_splitq_init:
		(...)

More readable to me.
What's 'k' though? Maybe let's think of better variable naming in here?

> 
> > > +
> > > +			qi[k].queue_id =
> > > +				cpu_to_le32(rxq->q_id);
> > > +			qi[k].model =
> > > +				cpu_to_le16(vport->rxq_model);
> > > +			qi[k].type =
> > > +				cpu_to_le32(rxq->q_type);
> > > +			qi[k].ring_len =
> > > +				cpu_to_le16(rxq->desc_count);
> > > +			qi[k].dma_ring_addr =
> > > +				cpu_to_le64(rxq->dma);
> > > +			qi[k].max_pkt_size =
> > > +				cpu_to_le32(rxq->rx_max_pkt_size);
> > > +			qi[k].data_buffer_size =
> > > +				cpu_to_le32(rxq->rx_buf_size);
> > > +			qi[k].qflags |=
> > > +
> > 	cpu_to_le16(VIRTCHNL2_RX_DESC_SIZE_32BYTE);
> > > +			qi[k].desc_ids =
> > > +				cpu_to_le64(rxq->rxdids);
> > > +		}
> > > +	}
> > > +
> > > +	/* Make sure accounting agrees */
> > > +	if (k != totqs) {
> > > +		err = -EINVAL;
> > > +		goto error;
> > > +	}
> > > +
> > > +	/* Chunk up the queue contexts into multiple messages to avoid
> > > +	 * sending a control queue message buffer that is too large
> > > +	 */
> > > +	config_data_size = sizeof(struct virtchnl2_config_rx_queues);
> > > +	chunk_size = sizeof(struct virtchnl2_rxq_info);
> > > +
> > > +	num_chunks = IECM_NUM_CHUNKS_PER_MSG(config_data_size,
> > chunk_size) + 1;
> > > +	if (totqs < num_chunks)
> > > +		num_chunks = totqs;
> > > +
> > > +	num_msgs = totqs / num_chunks;
> > > +	if (totqs % num_chunks)
> > > +		num_msgs++;
> > > +
> > > +	for (i = 0, k = 0; i < num_msgs; i++) {
> > > +		if (!crq || alloc) {
> > > +			buf_size = (chunk_size * (num_chunks - 1)) +
> > > +					config_data_size;
> > > +			kfree(crq);
> > > +			crq = kzalloc(buf_size, GFP_KERNEL);
> > > +			if (!crq) {
> > > +				err = -ENOMEM;
> > > +				goto error;
> > > +			}
> > > +		} else {
> > > +			memset(crq, 0, buf_size);
> > > +		}
> > > +
> > > +		crq->vport_id = cpu_to_le32(vport->vport_id);
> > > +		crq->num_qinfo = cpu_to_le16(num_chunks);
> > > +		memcpy(crq->qinfo, &qi[k], chunk_size * num_chunks);
> > > +
> > > +		err = iecm_send_mb_msg(vport->adapter,
> > > +				       VIRTCHNL2_OP_CONFIG_RX_QUEUES,
> > > +				       buf_size, (u8 *)crq);
> > > +		if (err)
> > > +			goto mbx_error;
> > > +
> > > +		err = iecm_wait_for_event(vport->adapter,
> > IECM_VC_CONFIG_RXQ,
> > > +					  IECM_VC_CONFIG_RXQ_ERR);
> > > +		if (err)
> > > +			goto mbx_error;
> > > +
> > > +		k += num_chunks;
> > > +		totqs -= num_chunks;
> > > +		if (totqs < num_chunks) {
> > > +			num_chunks = totqs;
> > > +			alloc = true;
> > > +		}
> > > +	}
> > > +
> > > +mbx_error:
> > > +	kfree(crq);
> > > +error:
> > > +	kfree(qi);
> > > +	return err;
> > > +}
> > > +

(...)

> > > +/* queue associated with a vport */
> > > +struct iecm_queue {
> > > +	struct device *dev;		/* Used for DMA mapping */
> > > +	struct iecm_vport *vport;	/* Backreference to associated vport
> > */
> > > +	union {
> > > +		struct iecm_txq_group *txq_grp;
> > > +		struct iecm_rxq_group *rxq_grp;
> > > +	};
> > > +	/* bufq: Used as group id, either 0 or 1, on clean Buf Q uses this
> > > +	 *       index to determine which group of refill queues to clean.
> > > +	 *       Bufqs are use in splitq only.
> > > +	 * txq: Index to map between Tx Q group and hot path Tx ptrs stored in
> > > +	 *      vport.  Used in both single Q/split Q
> > > +	 * rxq: Index to total rxq across groups, used for skb reporting
> > > +	 */
> > > +	u16 idx;
> > > +	/* Used for both Q models single and split. In split Q model relevant
> > > +	 * only to Tx Q and Rx Q
> > > +	 */
> > > +	u8 __iomem *tail;
> > > +	/* Used in both single and split Q.  In single Q, Tx Q uses tx_buf and
> > > +	 * Rx Q uses rx_buf.  In split Q, Tx Q uses tx_buf, Rx Q uses skb, and
> > > +	 * Buf Q uses rx_buf.
> > > +	 */
> > > +	union {
> > > +		struct iecm_tx_buf *tx_buf;
> > > +		struct {
> > > +			struct iecm_rx_buf *buf;
> > > +			struct iecm_dma_mem **hdr_buf;
> > > +		} rx_buf;
> > > +		struct sk_buff *skb;
> > > +	};
> > > +	u16 q_type;
> > > +	/* Queue id(Tx/Tx compl/Rx/Bufq) */
> > > +	u32 q_id;
> > > +	u16 desc_count;		/* Number of descriptors */
> > > +
> > > +	/* Relevant in both split & single Tx Q & Buf Q*/
> > > +	u16 next_to_use;
> > > +	/* In split q model only relevant for Tx Compl Q and Rx Q */
> > > +	u16 next_to_clean;	/* used in interrupt processing */
> > > +	/* Used only for Rx. In split Q model only relevant to Rx Q */
> > > +	u16 next_to_alloc;
> > > +	/* Generation bit check stored, as HW flips the bit at Queue end */
> > > +	DECLARE_BITMAP(flags, __IECM_Q_FLAGS_NBITS);
> > > +
> > > +	union iecm_queue_stats q_stats;
> > > +	struct u64_stats_sync stats_sync;
> > > +
> > > +	bool rx_hsplit_en;
> > > +
> > > +	u16 rx_hbuf_size;	/* Header buffer size */
> > > +	u16 rx_buf_size;
> > > +	u16 rx_max_pkt_size;
> > > +	u16 rx_buf_stride;
> > > +	u8 rx_buffer_low_watermark;
> > > +	u64 rxdids;
> > > +	/* Used for both Q models single and split. In split Q model relavant
> > > +	 * only to Tx compl Q and Rx compl Q
> > > +	 */
> > > +	struct iecm_q_vector *q_vector;	/* Backreference to associated vector
> > */
> > > +	unsigned int size;		/* length of descriptor ring in bytes */
> > > +	dma_addr_t dma;			/* physical address of ring */
> > > +	void *desc_ring;		/* Descriptor ring memory */
> > > +
> > > +	u16 tx_buf_key;			/* 16 bit unique "identifier" (index)
> > > +					 * to be used as the completion tag
> > when
> > > +					 * queue is using flow based scheduling
> > > +					 */
> > > +	u16 tx_max_bufs;		/* Max buffers that can be transmitted
> > > +					 * with scatter-gather
> > > +					 */
> > > +	DECLARE_HASHTABLE(sched_buf_hash, 12);
> > > +} ____cacheline_internodealigned_in_smp;
> > > +
> > > +/* Software queues are used in splitq mode to manage buffers between rxq
> > > + * producer and the bufq consumer.  These are required in order to maintain a
> > > + * lockless buffer management system and are strictly software only
> > constructs.
> > > + */
> > > +struct iecm_sw_queue {
> > > +	u16 next_to_clean ____cacheline_aligned_in_smp;
> > > +	u16 next_to_alloc ____cacheline_aligned_in_smp;
> > > +	u16 next_to_use ____cacheline_aligned_in_smp;
> > > +	DECLARE_BITMAP(flags, __IECM_Q_FLAGS_NBITS)
> > > +		____cacheline_aligned_in_smp;
> > > +	u16 *ring ____cacheline_aligned_in_smp;
> > 
> > This will result in this part being FIVE cachelines long for
> > 3 * 2 + 8 + 8 = 22 bytes, i.e. 320 bytes for 22!
> > Just making the entire structure cacheline-aligned after its
> > declaration is enough, these ones are not even an overkill,
> > it's an overslaughter.

Good catch!

> > 
> > > +	u16 desc_count;
> > > +	u16 buf_size;
> > > +	struct device *dev;
> > > +} ____cacheline_internodealigned_in_smp;
> > > +
> > > +/* Splitq only.  iecm_rxq_set associates an rxq with at an array of refillqs.
> > > + * Each rxq needs a refillq to return used buffers back to the respective bufq.
> > > + * Bufqs then clean these refillqs for buffers to give to hardware.
> > > + */
> > > +struct iecm_rxq_set {
> > > +	struct iecm_queue rxq;
> > > +	/* refillqs assoc with bufqX mapped to this rxq */
> > > +	struct iecm_sw_queue *refillq0;
> > > +	struct iecm_sw_queue *refillq1;
> > > +};
> > > +
> > > +/* Splitq only.  iecm_bufq_set associates a bufq to an array of refillqs.
> > > + * In this bufq_set, there will be one refillq for each rxq in this rxq_group.
> > > + * Used buffers received by rxqs will be put on refillqs which bufqs will
> > > + * clean to return new buffers back to hardware.
> > > + *
> > > + * Buffers needed by some number of rxqs associated in this rxq_group are
> > > + * managed by at most two bufqs (depending on performance configuration).
> > > + */
> > > +struct iecm_bufq_set {
> > > +	struct iecm_queue bufq;
> > > +	/* This is always equal to num_rxq_sets in iecm_rxq_group */
> > > +	int num_refillqs;
> > > +	struct iecm_sw_queue *refillqs;
> > > +};
> > > +
> > > +/* In singleq mode, an rxq_group is simply an array of rxqs.  In splitq, a
> > > + * rxq_group contains all the rxqs, bufqs and refillqs needed to
> > > + * manage buffers in splitq mode.
> > > + */
> > > +struct iecm_rxq_group {
> > > +	struct iecm_vport *vport; /* back pointer */
> > > +
> > > +	union {
> > > +		struct {
> > > +			int num_rxq;
> > > +			/* store queue pointers */
> > > +			struct iecm_queue *rxqs[IECM_LARGE_MAX_Q];
> > > +		} singleq;
> > > +		struct {
> > > +			int num_rxq_sets;
> > > +			/* store queue pointers */
> > > +			struct iecm_rxq_set *rxq_sets[IECM_LARGE_MAX_Q];
> > > +			struct iecm_bufq_set *bufq_sets;
> > > +		} splitq;
> > > +	};
> > > +};
> > > +
> > > +/* Between singleq and splitq, a txq_group is largely the same except for the
> > > + * complq.  In splitq a single complq is responsible for handling completions
> > > + * for some number of txqs associated in this txq_group.
> > > + */
> > > +struct iecm_txq_group {
> > > +	struct iecm_vport *vport; /* back pointer */
> > > +
> > > +	int num_txq;
> > > +	/* store queue pointers */
> > > +	struct iecm_queue *txqs[IECM_LARGE_MAX_Q];
> > > +
> > > +	/* splitq only */
> > > +	struct iecm_queue *complq;
> > > +};
> > > +
> > > +struct iecm_adapter;
> > > +
> > > +void iecm_vport_init_num_qs(struct iecm_vport *vport,
> > > +			    struct virtchnl2_create_vport *vport_msg);
> > > +void iecm_vport_calc_num_q_desc(struct iecm_vport *vport);
> > > +void iecm_vport_calc_total_qs(struct iecm_adapter *adapter,
> > > +			      struct virtchnl2_create_vport *vport_msg);
> > > +void iecm_vport_calc_num_q_groups(struct iecm_vport *vport);
> > > +void iecm_vport_calc_num_q_vec(struct iecm_vport *vport);
> > >  irqreturn_t
> > >  iecm_vport_intr_clean_queues(int __always_unused irq, void *data);
> > >  #endif /* !_IECM_TXRX_H_ */
> > > --
> > > 2.33.0
> > 
> > Thanks,
> > Al
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

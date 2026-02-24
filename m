Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANm7AdnznWk2SwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 19:54:17 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6039218B971
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 19:54:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 281EB84531;
	Tue, 24 Feb 2026 18:54:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id co_wbuhyK2nn; Tue, 24 Feb 2026 18:54:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C8DE84528
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771959252;
	bh=/IpDrjKdmFQzCFor9xmYGnCy7MwQGt7XyaANjQT798U=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SRD6AX8vxGRTGZ/JtdUztHR+FVKXdeO9vjKKzlXvSc61cBlfgwUBLxy+4G1sxbDgG
	 3rgvjTsm9FigVqhI0n2ROW71QghPat9ibnTV5b/MsQ5VOASN0HmvJlF0X/KhG2zUEC
	 otKVTVYNPMXvLpULCYCBTO+JveiuIwrjZXQG4M/JlTE02CRvcawWHM4U4fsywPELkL
	 ZqMwagIgvCPjJdGPxbEp+hHqod1aJKzV7syWqv+/EFOSx6yKV7Vc74CaRNDLDAFss8
	 yth3B6wlxDLxkSTC7MxMCVFyIZdqniFf6RRTa5rNLbMSpxw4cdQm1rUO1mCdkNVfll
	 /Wn/kVWL0Uqaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C8DE84528;
	Tue, 24 Feb 2026 18:54:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 28EFE249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 18:54:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1AF2861145
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 18:54:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R4l8J8NZi-e4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 18:54:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D1D01610B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1D01610B6
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1D01610B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 18:54:08 +0000 (UTC)
Received: from [10.0.44.143] (unknown [62.214.191.67])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 187524C442FFED;
 Tue, 24 Feb 2026 19:53:14 +0100 (CET)
Message-ID: <4dbf4f75-0474-4583-a2ca-77e4886c2dec@molgen.mpg.de>
Date: Tue, 24 Feb 2026 19:53:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Kohei Enju <kohei@enjuk.jp>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260224174618.2780516-1-aleksander.lobakin@intel.com>
 <20260224174618.2780516-2-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260224174618.2780516-2-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/5] libeth: pass Rx queue
 index to PP when creating a fill queue
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:kohei@enjuk.jp,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,molgen.mpg.de:mid];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 6039218B971
X-Rspamd-Action: no action

Dear Alexander,


Thank you for your patch.

Am 24.02.26 um 18:46 schrieb Alexander Lobakin:
> Since recently, page_pool_create() accepts optional stack index of
> the Rx queue which the pool will be created for. It can then be
> used on control path for stuff like memory providers.
> Add the same field to libeth_fq and pass the index from all the
> drivers using libeth for managing Rx to simplify implementing MP
> support later.
> idpf has one libeth_fq per buffer/fill queue and each Rx queue has
> two fill queues, but since fill queues can never be shared, we can
> store the corresponding Rx queue index there during the
> initialization to pass it to libeth.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h |  2 ++
>   include/net/libeth/rx.h                     |  2 ++
>   drivers/net/ethernet/intel/iavf/iavf_txrx.c |  1 +
>   drivers/net/ethernet/intel/ice/ice_base.c   |  2 ++
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c | 13 +++++++++++++
>   drivers/net/ethernet/intel/libeth/rx.c      |  1 +
>   6 files changed, 21 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index 4be5b3b6d3ed..a0d92adf11c4 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -748,6 +748,7 @@ libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
>    * @size: Length of descriptor ring in bytes
>    * @dma: Physical address of ring
>    * @q_vector: Backreference to associated vector
> + * @rxq_idx: stack index of the corresponding Rx queue
>    * @rx_buffer_low_watermark: RX buffer low watermark
>    * @rx_hbuf_size: Header buffer size
>    * @rx_buf_size: Buffer size
> @@ -791,6 +792,7 @@ struct idpf_buf_queue {
>   	dma_addr_t dma;
>   
>   	struct idpf_q_vector *q_vector;
> +	u16 rxq_idx;
>   
>   	u16 rx_buffer_low_watermark;
>   	u16 rx_hbuf_size;
> diff --git a/include/net/libeth/rx.h b/include/net/libeth/rx.h
> index 5d991404845e..3b3d7acd13c9 100644
> --- a/include/net/libeth/rx.h
> +++ b/include/net/libeth/rx.h
> @@ -71,6 +71,7 @@ enum libeth_fqe_type {
>    * @xdp: flag indicating whether XDP is enabled
>    * @buf_len: HW-writeable length per each buffer
>    * @nid: ID of the closest NUMA node with memory
> + * @idx: stack index of the corresponding Rx queue
>    */
>   struct libeth_fq {
>   	struct_group_tagged(libeth_fq_fp, fp,
> @@ -88,6 +89,7 @@ struct libeth_fq {
>   
>   	u32			buf_len;
>   	int			nid;
> +	u32			idx;

The type above and here is different (u16 vs u32), despite the 
description being the same. Could you enlighten me why, and maybe add it 
to the commit message?


Kind regards,

Paul


>   };
>   
>   int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct *napi);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 363c42bf3dcf..d3c68659162b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -771,6 +771,7 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
>   		.count		= rx_ring->count,
>   		.buf_len	= LIBIE_MAX_RX_BUF_LEN,
>   		.nid		= NUMA_NO_NODE,
> +		.idx		= rx_ring->queue_index,
>   	};
>   	int ret;
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index afbff8aa9ceb..1b7d10fad4f2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -607,6 +607,7 @@ static int ice_rxq_pp_create(struct ice_rx_ring *rq)
>   	struct libeth_fq fq = {
>   		.count		= rq->count,
>   		.nid		= NUMA_NO_NODE,
> +		.idx		= rq->q_index,
>   		.hsplit		= rq->vsi->hsplit,
>   		.xdp		= ice_is_xdp_ena_vsi(rq->vsi),
>   		.buf_len	= LIBIE_MAX_RX_BUF_LEN,
> @@ -629,6 +630,7 @@ static int ice_rxq_pp_create(struct ice_rx_ring *rq)
>   		.count		= rq->count,
>   		.type		= LIBETH_FQE_HDR,
>   		.nid		= NUMA_NO_NODE,
> +		.idx		= rq->q_index,
>   		.xdp		= ice_is_xdp_ena_vsi(rq->vsi),
>   	};
>   
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 376050308b06..36e2050dbb04 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -558,6 +558,7 @@ static int idpf_rx_hdr_buf_alloc_all(struct idpf_buf_queue *bufq)
>   		.type	= LIBETH_FQE_HDR,
>   		.xdp	= idpf_xdp_enabled(bufq->q_vector->vport),
>   		.nid	= idpf_q_vector_to_mem(bufq->q_vector),
> +		.idx	= bufq->rxq_idx,
>   	};
>   	int ret;
>   
> @@ -700,6 +701,7 @@ static int idpf_rx_bufs_init_singleq(struct idpf_rx_queue *rxq)
>   		.type		= LIBETH_FQE_MTU,
>   		.buf_len	= IDPF_RX_MAX_BUF_SZ,
>   		.nid		= idpf_q_vector_to_mem(rxq->q_vector),
> +		.idx		= rxq->idx,
>   	};
>   	int ret;
>   
> @@ -760,6 +762,7 @@ static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq,
>   		.hsplit		= idpf_queue_has(HSPLIT_EN, bufq),
>   		.xdp		= idpf_xdp_enabled(bufq->q_vector->vport),
>   		.nid		= idpf_q_vector_to_mem(bufq->q_vector),
> +		.idx		= bufq->rxq_idx,
>   	};
>   	int ret;
>   
> @@ -1919,6 +1922,16 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
>   							LIBETH_RX_LL_LEN;
>   			idpf_rxq_set_descids(rsrc, q);
>   		}
> +
> +		if (!idpf_is_queue_model_split(rsrc->rxq_model))
> +			continue;
> +
> +		for (u32 j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
> +			struct idpf_buf_queue *bufq;
> +
> +			bufq = &rx_qgrp->splitq.bufq_sets[j].bufq;
> +			bufq->rxq_idx = rx_qgrp->splitq.rxq_sets[0]->rxq.idx;
> +		}
>   	}
>   
>   err_alloc:
> diff --git a/drivers/net/ethernet/intel/libeth/rx.c b/drivers/net/ethernet/intel/libeth/rx.c
> index 62521a1f4ec9..8874b714cdcc 100644
> --- a/drivers/net/ethernet/intel/libeth/rx.c
> +++ b/drivers/net/ethernet/intel/libeth/rx.c
> @@ -156,6 +156,7 @@ int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct *napi)
>   		.order		= LIBETH_RX_PAGE_ORDER,
>   		.pool_size	= fq->count,
>   		.nid		= fq->nid,
> +		.queue_idx	= fq->idx,
>   		.dev		= napi->dev->dev.parent,
>   		.netdev		= napi->dev,
>   		.napi		= napi,

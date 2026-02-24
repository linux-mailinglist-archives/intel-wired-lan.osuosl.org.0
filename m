Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGFzGdrjnWnpSQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:46:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D669918AB21
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:46:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 019464091B;
	Tue, 24 Feb 2026 17:46:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WbI93zEK60uM; Tue, 24 Feb 2026 17:45:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 705BB40AA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771955159;
	bh=dUv9O9np9kOMO29aaqyHQxJmi3HQI5bDnO+hPFX64H0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=spKRnHVh3ybnemqYgJgOmuJjX2edUW18MDRXgsEOdJsWIqAiZ/xbotjvouK6Z91Mb
	 aCCnJYAnhaICZ7vNmsOUyiR8ZkQ0ULDpW5KzY3PfdkDagfttsHdNLilreAiaVDtYP9
	 DzgHwc/I0Nrj1VaDJP+YfITxCh18MAFkvOPMIdDXdebKZazs2xGzNh/6iNbyQCMc7L
	 f2T9ledDssia+JIIkpcakmigy3yNBV7/01QknnFseTJKUppBhMKZ+ikYyceGyGMnor
	 BUAUy2Q2NuCoyTcxGw3XMemw3L+rvwX76Wb3mEFu8ogLOw20k3sbVUggQdLXAwzrEF
	 KVQ5C1awv0how==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 705BB40AA2;
	Tue, 24 Feb 2026 17:45:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9114E237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:45:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 829F460893
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:45:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j6swmPkbV793 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 17:45:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C19CD60876
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C19CD60876
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C19CD60876
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:45:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A7A7E60053;
 Tue, 24 Feb 2026 17:45:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF172C116D0;
 Tue, 24 Feb 2026 17:45:52 +0000 (UTC)
Date: Tue, 24 Feb 2026 17:45:50 +0000
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Natalia Wochtman <natalia.wochtman@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Message-ID: <aZ3jzpKs7VcVi-mL@horms.kernel.org>
References: <20260223095222.3205363-1-larysa.zaremba@intel.com>
 <20260223095222.3205363-4-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223095222.3205363-4-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771955156;
 bh=fsV5OtmQB3MCcvqHSs0f1XcawGCHuZ+36al1QPuGjBs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RtH4k/hE7nEZnU15GOAtp9wp/KmTvWE7qaI5tjRV7a8nRnVZ+X1IjTYIkXdLTybEM
 XV4BW+Dm44O4QMuZfJ5jpAygzMC0QkEJrHcunM/qTlct0GoYCpaxi+08OaQ7g569/i
 h1ywD//a+WKtwOCIwdcd7rM61MKB4DJB+vyFBzf7CdFwCfEYn8vuMcwJd2Hni2VduB
 UxOPjJI0rhih49yRI2cpTA8QIwWSSeqkuw76rlRBlZgwNAqotw8qJWPlyrbnvg4Ei1
 VvCTeVlEe6cN1QXn6QjwSEre9OhQY5lWmbRfBnCaWikfWlND+4qAU5K0ie6cDA/jkT
 p8dp1FlYQYL3A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RtH4k/hE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 03/10] ixgbevf: use libeth in
 Rx processing
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[intel.com:server fail,horms.kernel.org:server fail,osuosl.org:server fail,smtp4.osuosl.org:server fail];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lists.osuosl.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,horms.kernel.org:mid,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D669918AB21
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 10:52:10AM +0100, Larysa Zaremba wrote:
> Use page_pool buffers by the means of libeth in the Rx queues, this
> significantly reduces code complexity of the driver itself.
> 
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

...

> @@ -3257,12 +3133,26 @@ static int ixgbevf_setup_all_tx_resources(struct ixgbevf_adapter *adapter)
>  int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
>  			       struct ixgbevf_ring *rx_ring)
>  {
> -	int size;
> +	struct libeth_fq fq = {
> +		.count		= rx_ring->count,
> +		.nid		= NUMA_NO_NODE,
> +		.type		= LIBETH_FQE_MTU,
> +		.xdp		= !!rx_ring->xdp_prog,
> +		.idx		= rx_ring->queue_index,
> +		.buf_len	= IXGBEVF_RX_PAGE_LEN(rx_ring->xdp_prog ?
> +						      LIBETH_XDP_HEADROOM :
> +						      LIBETH_SKB_HEADROOM),
> +	};
> +	int ret;
>  
> -	size = sizeof(struct ixgbevf_rx_buffer) * rx_ring->count;
> -	rx_ring->rx_buffer_info = vmalloc(size);
> -	if (!rx_ring->rx_buffer_info)
> -		goto err;
> +	ret = libeth_rx_fq_create(&fq, &rx_ring->q_vector->napi);
> +	if (ret)
> +		return ret;
> +
> +	rx_ring->pp = fq.pp;
> +	rx_ring->rx_fqes = fq.fqes;
> +	rx_ring->truesize = fq.truesize;
> +	rx_ring->rx_buf_len = fq.buf_len;
>  
>  	u64_stats_init(&rx_ring->syncp);
>  
> @@ -3270,25 +3160,29 @@ int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
>  	rx_ring->size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
>  	rx_ring->size = ALIGN(rx_ring->size, 4096);
>  
> -	rx_ring->desc = dma_alloc_coherent(rx_ring->dev, rx_ring->size,
> +	rx_ring->desc = dma_alloc_coherent(fq.pp->p.dev, rx_ring->size,
>  					   &rx_ring->dma, GFP_KERNEL);
>  
>  	if (!rx_ring->desc)

Hi Larysa,

Prior to this patch, if this error condition was met,
then function would return -ENOMEM. But now it will return 0.
This does not seem intentional.

Flagged by Smatch.

>  		goto err;
>  
>  	/* XDP RX-queue info */
> -	if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
> -			     rx_ring->queue_index, 0) < 0)
> +	ret = __xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
> +				 rx_ring->queue_index, 0, rx_ring->truesize);
> +	if (ret)
>  		goto err;
>  
> +	xdp_rxq_info_attach_page_pool(&rx_ring->xdp_rxq, fq.pp);
> +
>  	rx_ring->xdp_prog = adapter->xdp_prog;
>  
>  	return 0;
>  err:
> -	vfree(rx_ring->rx_buffer_info);
> -	rx_ring->rx_buffer_info = NULL;
> +	libeth_rx_fq_destroy(&fq);
> +	rx_ring->rx_fqes = NULL;
> +	rx_ring->pp = NULL;
>  	dev_err(rx_ring->dev, "Unable to allocate memory for the Rx descriptor ring\n");
> -	return -ENOMEM;
> +	return ret;
>  }
>  
>  /**

...

Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMUGNIxGn2nvZgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 19:59:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0009919C808
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 19:59:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98D05617A6;
	Wed, 25 Feb 2026 18:59:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GQXKlLRm4VL7; Wed, 25 Feb 2026 18:59:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A6FA617A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772045961;
	bh=pQRVYZxBpoT8fg+M9d3K1/vHrUbZXWdIPHtIvcOYmvM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=44jwZCQcjv/LJsGdNwVg1MmxWpSL7cXk3Lco2hSvpF7nPqB5q4yEKaEEYrAZmPEbx
	 wD4WmHlZ+/+uDTvWON20KDVJ1O26a4DfPXMyAWjpfo2jUTQKW5SOt55vdPIXdCth5Q
	 iMVWot5epq7+rrN1mGu1Q139+LcOKvKfV2Sv/jqLhHBlNZZvl5Om3B2MKbbVQ1h0/o
	 E0IRLMqJk7vLWSTJlTEk+Qkwyp87OHn96wDUUFgh/za12VEkTFXOQURkOi5y/9OQPP
	 HvHrwPfn5ZCq+At2KSHWmBUAoLQV/dj8DyiQMwegLsCXqkkOFXV4nPVapJxWAqO7yM
	 Uyy6NaEz6lUbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A6FA617A2;
	Wed, 25 Feb 2026 18:59:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B1D1924E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 18:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9753384973
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 18:59:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P-EZT9OS68iM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 18:59:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EC67B84974
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC67B84974
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC67B84974
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 18:59:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 513EA40B43;
 Wed, 25 Feb 2026 18:59:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AFABC116D0;
 Wed, 25 Feb 2026 18:59:15 +0000 (UTC)
Date: Wed, 25 Feb 2026 18:59:13 +0000
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
Message-ID: <aZ9GgZxwP-S2gX5e@horms.kernel.org>
References: <20260223095222.3205363-1-larysa.zaremba@intel.com>
 <20260223095222.3205363-4-larysa.zaremba@intel.com>
 <aZ3jzpKs7VcVi-mL@horms.kernel.org>
 <aZ8vNEn7V4VVoOHr@soc-5CG4396X81.clients.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZ8vNEn7V4VVoOHr@soc-5CG4396X81.clients.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772045959;
 bh=qr/8zkXTrBexFHqdNRMIfPEVZTEVjEz09gdNgjV+FeE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h3uEev/Nnr5GfiXpGkDAdsrSy81ecxVAh6LYEdE4MKMOXsRNjQLWgyJQERJAxxPnZ
 AjPHKxedKhtw5ifCyjCsG3+7wsiH1Isw/bLHWaYJgswn+zprFqty7aY39lXLdJFm69
 bbJNNSNBMuXelyeTQiQe7DFQwNo8qTaG0mkgZXLYamWAnreryiXmEhumrdC5AcQqoq
 G3Uh3hjZQn2+Z6liMmyL/0Cox3t2X4yBZmf98j4aN2t+nCnflO0a+myQk0L1BYtCmO
 7oU3Snx2SEnJu61ddeYmWbggNnb08Edszc1mM8fFQnpE1Wmlgxb5P/Vi/PbHEZ8+hl
 me9PuGz3EkeFQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=h3uEev/N
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[intel.com,lists.osuosl.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0009919C808
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 06:19:48PM +0100, Larysa Zaremba wrote:
> On Tue, Feb 24, 2026 at 05:45:50PM +0000, Simon Horman wrote:
> > On Mon, Feb 23, 2026 at 10:52:10AM +0100, Larysa Zaremba wrote:
> > > Use page_pool buffers by the means of libeth in the Rx queues, this
> > > significantly reduces code complexity of the driver itself.
> > > 
> > > Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > > Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > 
> > ...
> > 
> > > @@ -3257,12 +3133,26 @@ static int ixgbevf_setup_all_tx_resources(struct ixgbevf_adapter *adapter)
> > >  int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
> > >  			       struct ixgbevf_ring *rx_ring)
> > >  {
> > > -	int size;
> > > +	struct libeth_fq fq = {
> > > +		.count		= rx_ring->count,
> > > +		.nid		= NUMA_NO_NODE,
> > > +		.type		= LIBETH_FQE_MTU,
> > > +		.xdp		= !!rx_ring->xdp_prog,
> > > +		.idx		= rx_ring->queue_index,
> > > +		.buf_len	= IXGBEVF_RX_PAGE_LEN(rx_ring->xdp_prog ?
> > > +						      LIBETH_XDP_HEADROOM :
> > > +						      LIBETH_SKB_HEADROOM),
> > > +	};
> > > +	int ret;
> > >  
> > > -	size = sizeof(struct ixgbevf_rx_buffer) * rx_ring->count;
> > > -	rx_ring->rx_buffer_info = vmalloc(size);
> > > -	if (!rx_ring->rx_buffer_info)
> > > -		goto err;
> > > +	ret = libeth_rx_fq_create(&fq, &rx_ring->q_vector->napi);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	rx_ring->pp = fq.pp;
> > > +	rx_ring->rx_fqes = fq.fqes;
> > > +	rx_ring->truesize = fq.truesize;
> > > +	rx_ring->rx_buf_len = fq.buf_len;
> > >  
> > >  	u64_stats_init(&rx_ring->syncp);
> > >  
> > > @@ -3270,25 +3160,29 @@ int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
> > >  	rx_ring->size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
> > >  	rx_ring->size = ALIGN(rx_ring->size, 4096);
> > >  
> > > -	rx_ring->desc = dma_alloc_coherent(rx_ring->dev, rx_ring->size,
> > > +	rx_ring->desc = dma_alloc_coherent(fq.pp->p.dev, rx_ring->size,
> > >  					   &rx_ring->dma, GFP_KERNEL);
> > >  
> > >  	if (!rx_ring->desc)
> > 
> > Hi Larysa,
> > 
> > Prior to this patch, if this error condition was met,
> > then function would return -ENOMEM. But now it will return 0.
> > This does not seem intentional.
> > 
> > Flagged by Smatch.
> 
> No, it is not intentional, though the problem is fixed in a later patch.
> Will correct this one in v2.

Thanks, and sorry for not noticing that it is fixed later in the series.

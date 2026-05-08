Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AM5gDU/8/WkdlgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:07:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EA84F8501
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:07:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35C9661665;
	Fri,  8 May 2026 15:07:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xX13rOuDx0S4; Fri,  8 May 2026 15:07:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A82ED61666
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778252875;
	bh=VsYrHkZ7OOpzvfdi9BsxFKyOgLpyw/oG9Yh9ftcFssU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1afcxOvti4Uv+i0C8FGynwF/rRr1vPBQa4zujf9Vgnwg9g+KkQ9xFYOX7JlnfNIXn
	 WjrrQhtNVVL6lx1/M1F7745T9XLPqDtcefPxMXCNl9CC+lpzn35+KyFhJU/9tTd2ih
	 JBg0gDQTFGRfWn/RC2N5cx837C+yDB6sBzk2R4zFu+lBZWkesIT0cG+ft+ZmMQ+1eS
	 1iVBiFvL7D3rOvQhWKMkrT9/TSVjdgQtLDnjWqnFvrrmIFLKTpeZY4OobXOYttpRVC
	 xgGPnbJ/0vd0PgHvESF9RLm1S4sh4af5dx4AaMAM9WNwEflMSSpQxXx7RhlUMEYE1o
	 oQX9UqWVt//WA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A82ED61666;
	Fri,  8 May 2026 15:07:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D5487358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BAED261661
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:07:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U0W6l1Af3dxv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 15:07:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CA1F061663
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA1F061663
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA1F061663
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:07:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BC6846024D;
 Fri,  8 May 2026 15:07:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8181EC2BCC7;
 Fri,  8 May 2026 15:07:48 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksander.lobakin@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, kohei@enjuk.jp,
 jacob.e.keller@intel.com, aleksandr.loktionov@intel.com,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Fri,  8 May 2026 15:25:06 +0100
Message-ID: <20260508142505.1210977-2-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260505152923.1040589-5-aleksander.lobakin@intel.com>
References: <20260505152923.1040589-5-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778252871;
 bh=Pv3FTZ9ATrmxysMyOtkuTpnXuq4GVIFE10nmL33sesA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=s3I1UqusQTbPx2G0/KhCqg7Z6bstEV0lYpshgjIf6OeKxRcnAr4zjJiT3GCzG8apZ
 HfuKbe3KnUUtxyXJ2Xyw3vpr120w0NsOXZ+0rwNp2Wal+LFGL6Z4dA8UT5Z9SHA90H
 7DKSqJVcPB6MYQA4qmW+6VR/K1EagTlaNPbohLchPhU8f+JwDU0EyCO/lNdGz4L8tn
 e+VM1PNU93ptdxVFbQlucNJcQ0+jpb1oPJoZyg7WOKdu5KK/aQtXkYxwBN8Wso/8F5
 wvkI+esKEc/2O/lLcdo46oNSttsgrvJeGytiB2ckPLG7FymOCpDDTzGAgG8+I28hwo
 3T0I9mMENSkZw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=s3I1Uqus
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 4/5] ice: implement Rx
 queue management ops
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
X-Rspamd-Queue-Id: B0EA84F8501
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei@enjuk.jp,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
    ice: implement Rx queue management ops
    
    Now ice is ready to get queue_mgmt_ops support. It already has API
    to disable/reconfig/enable one particular queue (for XSk). Reuse as
    much of its code as possible to implement Rx queue management
    callbacks and vice versa -- ice_queue_mem_{alloc,free}() can be
    reused during ifup/ifdown to elide code duplication.
    With this, ice passes the io_uring zcrx selftests, meaning the Rx
    part of netmem/MP support is done.

> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index 1add82d894bbe..4e0b8895c303a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -653,6 +653,43 @@ static int ice_rxq_pp_create(struct ice_rx_ring *rq)
>  	return err;
>  }
>  
> +static int ice_queue_mem_alloc(struct net_device *dev,
> +			       struct netdev_queue_config *qcfg,
> +			       void *per_queue_mem, int idx)
> +{
> +	const struct ice_netdev_priv *priv = netdev_priv(dev);
> +	const struct ice_rx_ring *real = priv->vsi->rx_rings[idx];
> +	struct ice_rx_ring *new = per_queue_mem;
> +	int ret;
> +
> +	new->count = real->count;
> +	new->netdev = real->netdev;
> +	new->q_index = real->q_index;
> +	new->q_vector = real->q_vector;
> +	new->vsi = real->vsi;

Is it safe to assume netdev_priv(dev) returns the correct VSI here? For a
loopback VSI (ICE_VSI_LB), it shares the PF's netdev, so priv->vsi resolves
to the PF VSI.

Could this copy the PF VSI pointers to the loopback ring and cause hardware
context corruption later?

[ ... ]
> -/**
> - * ice_qp_dis - Disables a queue pair
> - * @vsi: VSI of interest
> - * @q_idx: ring index in array
> - *
> - * Returns 0 on success, negative on failure.
> - */
> -int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
> +static int __ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
>  {

Could this cause TX data corruption? This function appears to call
synchronize_net() before netif_tx_stop_queue(), meaning the RCU barrier
completes before the queue actually stops.

Concurrent transmissions might then race with ring modifications.

[ ... ]
> +static int ice_queue_start(struct net_device *dev,
> +			   struct netdev_queue_config *qcfg,
> +			   void *per_queue_mem, int idx)
> +{
> +	const struct ice_netdev_priv *priv = netdev_priv(dev);
> +	struct ice_rx_ring *real = priv->vsi->rx_rings[idx];
> +	struct ice_rx_ring *new = per_queue_mem;
> +	struct napi_struct *napi;
> +	int ret;
[ ... ]
> +	ret = ice_alloc_rx_bufs(real, ICE_DESC_UNUSED(real));
> +
> +	return __ice_qp_ena(priv->vsi, idx, ret);
> +}

Does this cause a use-after-free via hardware DMA?

ice_alloc_rx_bufs() returns a boolean true (1) on success. This is passed to
__ice_qp_ena() as the fail argument, which returns it back. Since
ice_queue_start() returns a non-zero value, the core networking stack assumes
failure and frees the queue memory, while the hardware queue remains active and
DMAs into freed memory.

> +
> +static int ice_queue_stop(struct net_device *dev, void *per_queue_mem,
> +			  int idx)
> +{
> +	const struct ice_netdev_priv *priv = netdev_priv(dev);
> +	struct ice_rx_ring *real = priv->vsi->rx_rings[idx];
> +	int ret;
> +
> +	ret = __ice_qp_dis(priv->vsi, idx);

Does calling __ice_qp_dis() from ice_queue_stop() disrupt the global interface
carrier state and TX queues?

__ice_qp_dis() calls netif_carrier_off() and cleans TX rings, but
ice_queue_stop() is intended to be a granular, per-RX-queue operation.

> +	if (ret)
> +		return ret;
> +
> +	page_pool_disable_direct_recycling(real->pp);

Can this dereference a NULL pointer if the queue is configured with an AF_XDP
zero-copy socket?

In that case, a standard page pool is not created and real->pp might be NULL,
causing a panic in page_pool_disable_direct_recycling().

> +	if (real->hdr_pp)
> +		page_pool_disable_direct_recycling(real->hdr_pp);
> +
> +	ice_zero_rx_ring(real);
> +	memcpy(per_queue_mem, real, sizeof(*real));

Could this lead to a memory leak of RX ring buffers?

ice_zero_rx_ring() clears the next_to_clean and next_to_use indices to 0
before the memcpy(). When the stack calls ice_queue_mem_free(per_queue_mem),
it skips cleaning because next_to_clean == next_to_use, leaking all active
skbs and page pool buffers.

Also, does this memcpy() leave dangling pointers in real that can lead to a
double-free?

The dynamically allocated pointers like rx_fqes and pp are not set to NULL
in real. When the interface is brought down later, ice_clean_rx_ring(real)
may attempt to destroy the already-freed page pools again.

> +
> +	return 0;
> +}

Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAJzA+vw/WlJkwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 16:19:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED5D4F79F1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 16:19:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9E1D61627;
	Fri,  8 May 2026 14:19:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ojF_BPw686Ia; Fri,  8 May 2026 14:19:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0D2C61625
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778249959;
	bh=Sr8Q4o/bIRjQ5al37Kam1jIuO1SKkTEVm1ZzQwLpy0Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IcfIqRKzVAijlUYLeBBe6gYsLXy2Bw48NfWheouHy92ktZ2fcIYmVLuigs1rqXUwd
	 jZeqjL7URmyJopBK3GIsWRvcenFu0N2wg+CO/xtAnn9LiZQRxsgP0m0Lx78SkwR167
	 UZgyBy4NDp2CRTTdq5A/uHypGqjE7rx50QZVRMFm4spLPk+0u3oJr+6h34i4ZmdiD0
	 jYVwgiSgUEyMXaRmVfdB6oVtHbKJLGuT21IrBEIfypT4zp1adl3FIefBPhrw8Kca8R
	 JbIHBfT8lr4AoJZSdM84trFvosB2w4/qkA+x/nAtb57dfoAMYqxlQyiNM2PmKdC5Ty
	 xdBViU5hapnWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0D2C61625;
	Fri,  8 May 2026 14:19:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 008CA358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 14:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E615F4073D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 14:19:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DIm4sr-algOE for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 14:19:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E7F3E406AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7F3E406AE
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7F3E406AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 14:19:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 35385434EE;
 Fri,  8 May 2026 14:19:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DD2DC2BCB0;
 Fri,  8 May 2026 14:19:13 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksander.lobakin@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, kohei@enjuk.jp,
 jacob.e.keller@intel.com, aleksandr.loktionov@intel.com,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Fri,  8 May 2026 15:08:00 +0100
Message-ID: <20260508140758.1200568-3-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260505152923.1040589-5-aleksander.lobakin@intel.com>
References: <20260505152923.1040589-5-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778249957;
 bh=U43IRTUeEFC+y+FoudadK4oeMVSSy37ArbZ6hs+eIIg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WbMfbNRlW4bsPoDerwDHrarui7U8wGbbxQ/K0zs9bmR8aVX/jqJd8oEO1ysnxjkEy
 5hd3J2tsn4+H0lzT3g28Xh2RQiiBgjHZf5ZnZ3h5W8dlipS/D/aGdZhHnQPJxVJWyl
 mU5T/XlfoWpwzkpkykOGwiXL80H5MZtCN3TLIZ15qtZFyH2kkS4QMoAfFkrInx55wY
 LXFRNG924FoItItZDkqfvp5MH6K6KiOHks0OlZYIh/lHzq4v0wyHKGnICDAdIRzUqK
 k4an71xacgInraN530QG29cnc3Q08c0iWCdVCgBFRhM2LWZAQAQ2hgEKwO4L1E29vD
 i0EVNe5UfkRnw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WbMfbNRl
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
X-Rspamd-Queue-Id: 1ED5D4F79F1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei@enjuk.jp,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.989];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ice: implement Rx queue management ops

This commit wires the ice driver into the netdev queue management ops
framework, reusing the existing per-queue disable/reconfig/enable paths
originally added for XSk. With it, ice reportedly passes the io_uring
zcrx selftests.

> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index 1add82d894bb..4e0b8895c303 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c

[ ... ]

> @@ -1577,3 +1593,81 @@ int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
>
>  	return fail;
>  }
> +
> +/**
> + * ice_qp_ena - Enables a queue pair
> + * @vsi: VSI of interest
> + * @q_idx: ring index in array
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
> +{
> +	return __ice_qp_ena(vsi, q_idx, ice_vsi_cfg_single_rxq(vsi, q_idx));
> +}
> +
> +static int ice_queue_start(struct net_device *dev,
> +			   struct netdev_queue_config *qcfg,
> +			   void *per_queue_mem, int idx)
> +{
> +	const struct ice_netdev_priv *priv = netdev_priv(dev);
> +	struct ice_rx_ring *real = priv->vsi->rx_rings[idx];
> +	struct ice_rx_ring *new = per_queue_mem;
> +	struct napi_struct *napi;
> +	int ret;
> +
> +	real->pp = new->pp;
> +	real->rx_fqes = new->rx_fqes;
> +	real->hdr_fqes = new->hdr_fqes;
> +	real->hdr_pp = new->hdr_pp;
> +
> +	real->hdr_truesize = new->hdr_truesize;
> +	real->truesize = new->truesize;
> +	real->rx_hdr_len = new->rx_hdr_len;
> +	real->rx_buf_len = new->rx_buf_len;
> +
> +	memcpy(&real->xdp_rxq, &new->xdp_rxq, sizeof(new->xdp_rxq));
> +
> +	ret = ice_setup_rx_ctx(real);
> +	if (ret)
> +		return ret;

Simon says: I believe that the issue flagged immediately below is
            a false positive; the cleanup logic unwinds things correctly.

	    However, the two other issues flagged further down do seem to be
	    of concern.

ice_queue_start() eagerly copies new->pp, new->rx_fqes, new->hdr_pp,
new->hdr_fqes and the entire new->xdp_rxq into real before ice_setup_rx_ctx()
has succeeded.

If ice_setup_rx_ctx() returns an error here, the function bails out with
real already pointing at new_mem's page pools and fqes arrays.

The core netdev_rx_queue_reconfig() rollback then invokes
ndo_queue_start(dev, qcfg_old, old_mem, rxq_idx), which repeats the same
eager overwrite using old_mem and calls ice_setup_rx_ctx() again.  If the
second ice_setup_rx_ctx() also fails, the core proceeds to
ndo_queue_mem_free(dev, old_mem), and ice_queue_mem_free() will tear down
the page pools whose pointers real->pp / real->hdr_pp are still aliasing.

Would it be safer to stash the existing real->pp / real->rx_fqes /
real->hdr_pp / real->hdr_fqes / real->xdp_rxq on entry and restore them if
ice_setup_rx_ctx() fails, so that a failed rollback cannot leave real with
dangling pointers to a pool that ice_queue_mem_free() is about to destroy?

> +
> +	napi = &real->q_vector->napi;
> +
> +	page_pool_enable_direct_recycling(real->pp, napi);
> +	if (real->hdr_pp)
> +		page_pool_enable_direct_recycling(real->hdr_pp, napi);
> +
> +	ret = ice_alloc_rx_bufs(real, ICE_DESC_UNUSED(real));
> +
> +	return __ice_qp_ena(priv->vsi, idx, ret);

ice_alloc_rx_bufs() is declared bool and returns !!cleaned_count, so it
yields 0 on full success and 1 on partial/failed allocation:

bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
{
    ...
    return !!cleaned_count;
}

That bool is then passed straight into __ice_qp_ena()'s fail parameter,
which only overwrites fail via 'if (!fail) fail = err;', so a value of 1
propagates unchanged to ice_queue_start()'s return value.

netdev_rx_queue_reconfig() treats any non-zero return as failure and
propagates it back to userspace (netlink, ethtool, io_uring zcrx install),
where the callers expect a negative errno.

Before this patch, ice_qp_ena() obtained its fail value from
ice_vsi_cfg_single_rxq(), which returns a signed errno.

Should this be converted to a proper negative errno before being handed
to __ice_qp_ena(), for example:

	ret = ice_alloc_rx_bufs(real, ICE_DESC_UNUSED(real)) ? -ENOMEM : 0;

> +}
> +
> +static int ice_queue_stop(struct net_device *dev, void *per_queue_mem,
> +			  int idx)
> +{
> +	const struct ice_netdev_priv *priv = netdev_priv(dev);
> +	struct ice_rx_ring *real = priv->vsi->rx_rings[idx];
> +	int ret;
> +
> +	ret = __ice_qp_dis(priv->vsi, idx);
> +	if (ret)
> +		return ret;
> +
> +	page_pool_disable_direct_recycling(real->pp);
> +	if (real->hdr_pp)
> +		page_pool_disable_direct_recycling(real->hdr_pp);
> +
> +	ice_zero_rx_ring(real);
> +	memcpy(per_queue_mem, real, sizeof(*real));
> +
> +	return 0;
> +}

Can this leak inflight page pool buffers?

ice_zero_rx_ring(real) is called before the memcpy to per_queue_mem, and
ice_zero_rx_ring() resets both indices:

void ice_zero_rx_ring(struct ice_rx_ring *rx_ring)
{
    ...
    rx_ring->next_to_clean = 0;
    rx_ring->next_to_use = 0;
}

So per_queue_mem captures a ring where next_to_clean == next_to_use == 0.

The core then invokes ndo_queue_mem_free(dev, old_mem), and the recycle
loop in ice_queue_mem_free() is guarded by exactly those two indices:

void ice_queue_mem_free(struct net_device *dev, void *per_queue_mem)
{
    ...
    for (u32 i = rx_ring->next_to_clean; i != rx_ring->next_to_use; ) {
        libeth_rx_recycle_slow(rx_ring->rx_fqes[i].netmem);

        if (rx_ring->hdr_pp)
            libeth_rx_recycle_slow(rx_ring->hdr_fqes[i].netmem);

        if (unlikely(++i == rx_ring->count))
            i = 0;
    }
    ...
    ice_rxq_pp_destroy(rx_ring);
}

With 0 != 0 false on entry, the loop never runs, so any buffers that were
in rx_fqes[old_ntc..old_ntu) (and hdr_fqes[] when header split is on) are
never returned via libeth_rx_recycle_slow().  ice_rxq_pp_destroy() then
kvfree()s the fqes arrays and calls page_pool_destroy() with outstanding
inflight references that are no longer tracked anywhere.

The new ice_clean_rx_ring() wrapper keeps the original ordering:

void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
{
    ice_queue_mem_free(rx_ring->netdev, rx_ring);
    ice_zero_rx_ring(rx_ring);
}

Should ice_queue_stop() follow the same ordering and perform the memcpy
before ice_zero_rx_ring(real), so the recycle loop in ice_queue_mem_free()
sees the real ntc/ntu values?

> +
> +const struct netdev_queue_mgmt_ops ice_queue_mgmt_ops = {
> +	.ndo_queue_mem_alloc	= ice_queue_mem_alloc,
> +	.ndo_queue_mem_free	= ice_queue_mem_free,
> +	.ndo_queue_mem_size	= sizeof(struct ice_rx_ring),
> +	.ndo_queue_start	= ice_queue_start,
> +	.ndo_queue_stop		= ice_queue_stop,
> +};

[ ... ]

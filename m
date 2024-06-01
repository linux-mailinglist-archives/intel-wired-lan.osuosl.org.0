Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1428D6F17
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Jun 2024 11:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FD696085A;
	Sat,  1 Jun 2024 09:08:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V4z984uYRpt2; Sat,  1 Jun 2024 09:08:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 859C86084E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717232934;
	bh=FP5vrqphm7lrNRWTL8h0eTEP1JIZQhEYEXtXCIYQpCg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pWlehIGBuwlnNLZGlAjKeRjJn8XnLrfAWUhD/ZZuIDqEIXFfzhgZKlm+wEP2tChcI
	 d0794dypPmIx2Qdl9KsvX+ZcCZBCNa3KjEP43vtiA2jpSpPciwuT+/cA3LR5y3xFv3
	 DsJojmASYjJCYKnhMyTVDFp2umy+/DJPa3VrXDDzaGz+hQVuNomCa3/aZjp+edw3Bs
	 NdbjdjHcspdOWuYscwTckH91Z5O6cHlQHmj+v+CuA64VnqUqLfeat+iejkFg001q2Z
	 gG7icamAPP8a269nTDSV6s/PRfivv+GpQqbwc7hviGQDv7D/ZtY5qzSXNAHclFRMCI
	 1e5XezIhtpUnQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 859C86084E;
	Sat,  1 Jun 2024 09:08:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA7B61BF841
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 09:08:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D179B80E7C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 09:08:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BEbHHQUBVacx for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Jun 2024 09:08:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B811A80E5F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B811A80E5F
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B811A80E5F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 09:08:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id E3F81CE0E3F;
 Sat,  1 Jun 2024 09:08:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74123C116B1;
 Sat,  1 Jun 2024 09:08:44 +0000 (UTC)
Date: Sat, 1 Jun 2024 10:08:42 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240601090842.GZ491852@kernel.org>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-13-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528134846.148890-13-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717232927;
 bh=h6AQp5HLvjkO9wvYFVJXTPoumQQtZPBpKKF3YIzdJKg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tTQ2s5dFr/GugcK3CbwhywDOpEVAtHJNGU9YAnPAUzWTAFiRVj3ZiC9Pzr1zszFCD
 WnVldec/W9TDLZX+1ZtNVEmiOTgx1Qnjl1OLQCjcIuFprUzcJO7p8uhpfMdZ3hjFAX
 Hx6RW/VBRHdYXp1oFxcKCEakd6RuY4vYYUzg57jQc3o9EXom/bJe/UZVHtEgUC+1ZF
 2svOXpBiDvjHUKNpq2EgY+wRtaEKC3KOa4vbgEK33oy/ajbmF1UntJzhbSZ9Mw18Yi
 Nhz584MG7oMj2v7BPxOymUda20jbqFC/89SUUta4eqyb2R/dXeVbT6Egx9bWFDokO+
 qHgILGYk5S1LQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=tTQ2s5dF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 12/12] idpf: use libeth Rx
 buffer management for payload buffer
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
Cc: Mina Almasry <almasrymina@google.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+ Dan Carpenter

On Tue, May 28, 2024 at 03:48:46PM +0200, Alexander Lobakin wrote:
> idpf uses Page Pool for data buffers with hardcoded buffer lengths of
> 4k for "classic" buffers and 2k for "short" ones. This is not flexible
> and does not ensure optimal memory usage. Why would you need 4k buffers
> when the MTU is 1500?
> Use libeth for the data buffers and don't hardcode any buffer sizes. Let
> them be calculated from the MTU for "classics" and then divide the
> truesize by 2 for "short" ones. The memory usage is now greatly reduced
> and 2 buffer queues starts make sense: on frames <= 1024, you'll recycle
> (and resync) a page only after 4 HW writes rather than two.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c

...

Hi Alexander,

The code above the hunk below, starting at line 3321, is:

		if (unlikely(!hdr_len && !skb)) {
			hdr_len = idpf_rx_hsplit_wa(hdr, rx_buf, pkt_len);
			pkt_len -= hdr_len;
			u64_stats_update_begin(&rxq->stats_sync);
			u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
			u64_stats_update_end(&rxq->stats_sync);
		}
		if (libeth_rx_sync_for_cpu(hdr, hdr_len)) {
			skb = idpf_rx_build_skb(hdr, hdr_len);
			if (!skb)
				break;
			u64_stats_update_begin(&rxq->stats_sync);
			u64_stats_inc(&rxq->q_stats.hsplit_pkts);
			u64_stats_update_end(&rxq->stats_sync);
		}

> @@ -3413,24 +3340,24 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
>  		hdr->page = NULL;
>  
>  payload:
> -		if (pkt_len) {
> -			idpf_rx_sync_for_cpu(rx_buf, pkt_len);
> -			if (skb)
> -				idpf_rx_add_frag(rx_buf, skb, pkt_len);
> -			else
> -				skb = idpf_rx_construct_skb(rxq, rx_buf,
> -							    pkt_len);
> -		} else {
> -			idpf_rx_put_page(rx_buf);
> -		}
> +		if (!libeth_rx_sync_for_cpu(rx_buf, pkt_len))
> +			goto skip_data;
> +
> +		if (skb)
> +			idpf_rx_add_frag(rx_buf, skb, pkt_len);
> +		else
> +			skb = idpf_rx_build_skb(rx_buf, pkt_len);
>  
>  		/* exit if we failed to retrieve a buffer */
>  		if (!skb)
>  			break;
>  
> -		idpf_rx_post_buf_refill(refillq, buf_id);
> +skip_data:
> +		rx_buf->page = NULL;
>  
> +		idpf_rx_post_buf_refill(refillq, buf_id);
>  		IDPF_RX_BUMP_NTC(rxq, ntc);
> +
>  		/* skip if it is non EOP desc */
>  		if (!idpf_rx_splitq_is_eop(rx_desc))
>  			continue;

The code following this hunk, ending at line 3372, looks like this:

		/* pad skb if needed (to make valid ethernet frame) */
		if (eth_skb_pad(skb)) {
			skb = NULL;
			continue;
		}
		/* probably a little skewed due to removing CRC */
		total_rx_bytes += skb->len;

Smatch warns that:
.../idpf_txrx.c:3372 idpf_rx_splitq_clean() error: we previously assumed 'skb' could be null (see line 3321)

I think, but am not sure, this is because it thinks skb might
be NULL at the point where "goto skip_data;" is now called above.

Could you look into this?

...

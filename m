Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C060B105A3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 11:20:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF29B41297;
	Thu, 24 Jul 2025 09:20:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pvk8dq9pTMrd; Thu, 24 Jul 2025 09:20:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FCA941282
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753348808;
	bh=Au08yxhes32pi74h+2+Y4ObUhls304Y/LMgbhIRZAsY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AMymmtOcT49m5uS9MiSe36C6sbtBvWXQQJnyLaeOBJBvmrKNJhxjdeBZ+Dh4lYUXo
	 LNQvDjqOT/T2DYHRM6P6NzDZfdD/0bkuZg9i75aSHY2XZP5v1o1Fd4e0cKN+wiTihh
	 DIoBbWcX8R1HpweY8O26NUtRSLvn1000fKOmTrwo/GlLB7YKTn7ngnOjekcv4nHdnw
	 y7/Z+//hzXgY/ujmHKChAn8DPYyiVpMGGTiHgrDEcMBFNGfsxSEUtzrCIOxPF26rsT
	 ZFMeXIlVFNSDi/SJ3y6MM1osOZXGbqe10So7pPkL6kB4jsamW5HS+LaKgVyk5uk1/m
	 8MM5IS/dFklNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FCA941282;
	Thu, 24 Jul 2025 09:20:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BD8ED115
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 09:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BAD7641288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 09:20:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0v0q-IlVo2op for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 09:20:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2B3BA41273
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B3BA41273
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B3BA41273
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 09:20:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6ABF55C598D;
 Thu, 24 Jul 2025 09:20:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F229C4CEED;
 Thu, 24 Jul 2025 09:20:03 +0000 (UTC)
Date: Thu, 24 Jul 2025 10:20:01 +0100
From: Simon Horman <horms@kernel.org>
To: Joshua Hay <joshua.a.hay@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Luigi Rizzo <lrizzo@google.com>, Brian Vazquez <brianvv@google.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250724092001.GI1150792@horms.kernel.org>
References: <20250718002150.2724409-1-joshua.a.hay@intel.com>
 <20250718002150.2724409-5-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250718002150.2724409-5-joshua.a.hay@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753348805;
 bh=gRFHoDdViZAhEfGEzYU/dSV6M0YfSmmTUyLmjOCqTkw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=csas9LGY3gRo4CflNztwworSXqvM8gHWVOt7FYpn4krG0uzPcST4ldUOXK9WiSfU+
 Bl/gD///R2Xr1E+leO3FVoA/cmY7hrZsRWRGuf4zppDeRI2yzuSDciBKM9QeJU5YXF
 3lUoU30S9zsyrSCJdbGjvAlBVyOAIIj7XClzYuzCSu33qjjIPQHa+hQPQ9CiGfH0hq
 2RrLpttG9Y2Rr+AI6yRTXkj1QPGmmplS32ugXf96GFce1Bi01SIHjGkU0nlKqhI+od
 8ZNTjLOEoHZBU0hByVSAZ2XGWWAbxEsN7uEsj8rRIeg8Qxm2R1sT1jlamSiJ26Gchc
 V1v7jSkIUff/g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=csas9LGY
Subject: Re: [Intel-wired-lan] [PATCH net v2 4/6] idpf: replace flow
 scheduling buffer ring with buffer pool
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

On Thu, Jul 17, 2025 at 05:21:48PM -0700, Joshua Hay wrote:

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c

...

> @@ -1959,10 +1966,29 @@ static bool idpf_tx_clean_buf_ring(struct idpf_tx_queue *txq, u16 compl_tag,
>  	};
>  	u16 ntc, orig_idx = idx;
>  
> +	tx_buf = &txq->tx_buf[buf_id];
> +	if (tx_buf->type == LIBETH_SQE_SKB) {
> +		if (skb_shinfo(tx_buf->skb)->tx_flags & SKBTX_IN_PROGRESS)
> +			idpf_tx_read_tstamp(txq, tx_buf->skb);
> +
> +		libeth_tx_complete(tx_buf, &cp);
> +		idpf_post_buf_refill(txq->refillq, buf_id);
> +	}
> +
> +	while (idpf_tx_buf_next(tx_buf) != IDPF_TXBUF_NULL) {
> +		u16 buf_id = idpf_tx_buf_next(tx_buf);
> +
> +		tx_buf = &txq->tx_buf[buf_id];
> +		libeth_tx_complete(tx_buf, &cp);
> +		idpf_post_buf_refill(txq->refillq, buf_id);
> +	}
> +
> +	return true;

This is not a full review.
And I guess this is an artifact of the development of this patch-set.
But the code in this function below this line appears to be unreachable.

Flagged by Smatch.

> +
>  	tx_buf = &txq->tx_buf[idx];
>  
>  	if (unlikely(tx_buf->type <= LIBETH_SQE_CTX ||
> -		     idpf_tx_buf_compl_tag(tx_buf) != compl_tag))
> +		     idpf_tx_buf_compl_tag(tx_buf) != buf_id))
>  		return false;
>  
>  	if (tx_buf->type == LIBETH_SQE_SKB) {

...

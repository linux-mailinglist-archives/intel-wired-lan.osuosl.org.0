Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOsDKhi/z2kM0QYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:22:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA52394643
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4336281D73;
	Fri,  3 Apr 2026 13:22:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QhchmeH4MOwt; Fri,  3 Apr 2026 13:22:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8690D81D24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775222548;
	bh=neNLBEe7gvTRsCYCzn2WqFavJHrI0fEg1G89BKCBisw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PeEJXyULvMcFtO1rXNjVLl5va75VccVIWisHe+azuHmoZMlan8cisF47+qM8C6d0v
	 KyajX1H+UMSc6h5Tf4sN5IXDMo7Z9c8IEysQNC/uMd8wEfdYUvjPsZXHl05dTCc3ym
	 XcTdH7uBg6+O+QO2/syaJI5Riq6ObcyWNiZ8JGB5tNoeVRAgMr+T3wSrU0ozzui2gB
	 sq8IApn2emM5LEvoh4AK/O6LSpNsFYdKFkDLa99o1LTCRuaVWAVkKt+Aui3P6fOrix
	 qgJIR+s8vCjrTvHpMF9RE2TbCK87pmxkqQxF1xVk/crfVE6h+vEuih6qOWeTZx8tcw
	 mQvGrFIBT+ooQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8690D81D24;
	Fri,  3 Apr 2026 13:22:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8059F2CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:22:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 71B3B608FA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:22:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vaB33ymwzkOr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 13:22:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6CF68608F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CF68608F5
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CF68608F5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:22:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 7AA08432D2;
 Fri,  3 Apr 2026 13:22:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3385AC4CEF7;
 Fri,  3 Apr 2026 13:22:23 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com
Date: Fri,  3 Apr 2026 14:21:52 +0100
Message-ID: <20260403132152.121293-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260327073046.134085-7-aleksandr.loktionov@intel.com>
References: <20260327073046.134085-7-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775222544;
 bh=XJaKaKKd6LcAtQg1wJb8HMrtsWbfEKIHuq5U5a185ZU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=S8Xgcu83rmjiuAHx96HukGqJKnEkqu790+UWaNwBTNHFniryumfHQgRr8S2JwIJbH
 q84Ho/tCh0N/QnuMEVqxjWXTCxvM+FC0+SU0YqiGEm25/b0h4NoQuytecixgsTWTim
 0KqU68/JAtnJQfEutYsTtHdCxteJojQh87Ib0WrNhbJ2QtpcvbhXAl4mzEsAg8J7Ui
 f29i8FnbIz9mJ9lugCx+9HoRzdLylFOMEOQ8hpAE8+XVMuhWYy7gwkdQ8bo5tJIlQJ
 LMAbzAu+9AN+fRdXXXWzRvMQG8axNx9pjRuyglz6bljZGx84Rx2S3yggW7jDpYk7AT
 Jnj0vtjlmhLgg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=S8Xgcu83
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: replace GFP_ATOMIC
 with GFP_KERNEL in ixgbe_fcoe_ddp_setup()
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1EA52394643
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
ixgbe: replace GFP_ATOMIC with GFP_KERNEL in ixgbe_fcoe_ddp_setup()

This commit changes the memory allocation flag in ixgbe_fcoe_ddp_setup()
from GFP_ATOMIC to GFP_KERNEL based on the claim that the function is
never called from atomic context.

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> index 011fda9c6193..7fa0971073e5 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> @@ -193,7 +193,7 @@ static int ixgbe_fcoe_ddp_setup(struct net_device *netdev, u16 xid,
>  	}
>
>  	/* alloc the udl from per cpu ddp pool */
> -	ddp->udl = dma_pool_alloc(ddp_pool->pool, GFP_ATOMIC, &ddp->udp);
> +	ddp->udl = dma_pool_alloc(ddp_pool->pool, GFP_KERNEL, &ddp->udp);
                                                    ^^^^^^^^^^
Doesn't this allocation happen in atomic context? Looking at the function,
get_cpu() is called earlier:

ixgbe_fcoe_ddp_setup() {
    ...
    ddp_pool = per_cpu_ptr(fcoe->ddp_pool, get_cpu());
    ...
    ddp->udl = dma_pool_alloc(ddp_pool->pool, GFP_KERNEL, &ddp->udp);
    ...
    put_cpu();
}

get_cpu() disables preemption, which means GFP_KERNEL allocations (which
can sleep during direct reclaim) would trigger a BUG() when attempted with
preemption disabled.

The commit message claims the function is "never from an atomic context",
but while the callers may be in process context, the function itself creates
atomic context via get_cpu().

>  	if (!ddp->udl) {
>  		e_err(drv, "failed allocated ddp context\n");
>  		goto out_noddp_unmap;

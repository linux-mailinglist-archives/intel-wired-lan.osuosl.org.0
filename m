Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMuCHU1B3mlvpwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 15:29:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D063FA810
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 15:29:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A0CC42A32;
	Tue, 14 Apr 2026 13:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u2wyOcBiGSZ9; Tue, 14 Apr 2026 13:29:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AE5940642
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776173386;
	bh=IMdzPJFMXglBWd40hzmhdBu4JAXvsiYnp/Ra9sSWsA0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qx4unpy3VsbCrM16jt5pPBcS4yg64ZLllHr1I2ntviVqNZHPqIyH//JduxvPdm1Z0
	 eoLErEY1OD7vxl7PMhowQp12MRK4qWjdJKwLR/0Y8igNgIIzNBKC+Vjhyw0TRHSk+g
	 z6AiRMXHbvMfM1s10m4QeDlAh60zBcwOnhGUnijZTSdHDNeJeI6Tf7dT4uy/JOKsEh
	 a06IswDMh1URplJOmPcTHEvRcCIpRk5zh2Cz+FJyGSb1wKYihsH9jl7Vn/bUoI7VB5
	 9OcF9f3IEUMM2yN80f5WvOusyuXjgFgSu+RhU0TRlwmUFUjMYRC0ufqs0um68zS+Gj
	 W867ZWj6hgzLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AE5940642;
	Tue, 14 Apr 2026 13:29:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 76784237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 705CD403CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:29:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MR-k2-e1X4Dn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 13:29:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8A4E2403B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A4E2403B8
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A4E2403B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:29:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BAD18600AD;
 Tue, 14 Apr 2026 13:29:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F12FAC19425;
 Tue, 14 Apr 2026 13:29:40 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: Simon Horman <horms@kernel.org>, anthony.l.nguyen@intel.com,
 marcin.szycik@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 jacob.e.keller@intel.com, netdev@vger.kernel.org
Date: Tue, 14 Apr 2026 14:29:35 +0100
Message-ID: <20260414132935.757593-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260408131216.2662245-8-aleksandr.loktionov@intel.com>
References: <20260408131216.2662245-8-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776173382;
 bh=zsM9dsmbiVIJiMJTT1sM6WsEpvpqK7LiJCBq22uxOaI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NalWhCbatjG5CCe9zEOfzvQ6CwSNVjaRgaJsc9Tm711uhDIGZcyTZn4II5KkvFpS3
 2H+1X/8DetWwTUR3wC9hoyAdqqaXOdDFbEYGom73iFMgbOlHgx8OirRDvqpa0Ss0S2
 gqnteCD1SICL7mKDIBfXBJ5lZ1twHnbJ8NB1PmNsIHHtbdOL5GXCa+8I6RcInEez27
 +Er8RcY1CXmxYEIZRXWBrYR/Mtgfn8DMXQb2SRuTuoBUq7Uz1JaApKgQ3Oln6ZDO+y
 MjAapKJHTh7BFE2/6K558x7kZRDW81nOSeMn4T0bhke9oXpuI0KnHZduvV0p4e3c5Y
 XSSlReAnvMArw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=NalWhCba
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 7/8] ixgbe: use GFP_KERNEL
 in ixgbe_fcoe_ddp_setup()
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:marcin.szycik@linux.intel.com,m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,linux.dev:url,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 02D063FA810
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
ixgbe: use GFP_KERNEL in ixgbe_fcoe_ddp_setup()

This commit restructures ixgbe_fcoe_ddp_setup() to use GFP_KERNEL
instead of GFP_ATOMIC by splitting get_cpu()/put_cpu() usage into two
narrow critical sections, moving DMA mapping and pool allocation between
them where preemption is enabled.

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> index 011fda9c6193..e338ff0e6522 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c

[ ... ]

> @@ -179,29 +180,43 @@ static int ixgbe_fcoe_ddp_setup(struct net_device *netdev, u16 xid,
>  		return 0;
>  	}
>
> +	/* Pin to current CPU only to read the per-CPU pool pointer; drop
> +	 * the pin before any allocations that may sleep under direct reclaim.
> +	 */
>  	ddp_pool = per_cpu_ptr(fcoe->ddp_pool, get_cpu());
>  	if (!ddp_pool->pool) {
>  		e_warn(drv, "xid=0x%x no ddp pool for fcoe\n", xid);
> -		goto out_noddp;
> +		put_cpu();
> +		return 0;
>  	}
> +	pool = ddp_pool->pool;
> +	put_cpu();
>
>  	/* setup dma from scsi command sgl */
>  	dmacount = dma_map_sg(&adapter->pdev->dev, sgl, sgc, DMA_FROM_DEVICE);
>  	if (dmacount == 0) {
>  		e_err(drv, "xid 0x%x DMA map error\n", xid);
> -		goto out_noddp;
> +		return 0;
>  	}
>
> -	/* alloc the udl from per cpu ddp pool */
> -	ddp->udl = dma_pool_alloc(ddp_pool->pool, GFP_ATOMIC, &ddp->udp);
> +	/* Allocate from per-CPU pool; GFP_KERNEL is safe: preemption is
> +	 * re-enabled after the put_cpu() above.  Per-CPU DMA pools are only
> +	 * destroyed under RTNL during interface teardown, so the saved pool
> +	 * pointer remains valid.
> +	 */
> +	ddp->udl = dma_pool_alloc(pool, GFP_KERNEL, &ddp->udp);

Is this safe given the calling context?

Looking at the call path from the FCoE stack:

fc_exch_seq_send()
  fc_exch_alloc()
    fc_exch_em_alloc()
      spin_lock_bh(&pool->lock)
      # allocate exchange
      # set ep->ex_lock = held
      return with ep->ex_lock still held
  fc_fcp_ddp_setup()
    lport->tt.ddp_setup()
      .ndo_fcoe_ddp_setup() == ixgbe_fcoe_ddp_get()
        ixgbe_fcoe_ddp_setup()  # <-- we are here
  # ... continues with ep->ex_lock held
  spin_unlock_bh(&ep->ex_lock)

fc_exch_em_alloc() acquires ep->ex_lock (a spinlock) and returns with
it held. The lock remains held through fc_fcp_ddp_setup() and into
ixgbe_fcoe_ddp_setup(). Additionally, spin_lock_bh() disables bottom
halves.

Can GFP_KERNEL be used while holding ep->ex_lock with BH disabled, or
does this require GFP_ATOMIC?

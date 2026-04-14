Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MfzIxU63mkxpgkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 14:59:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E6D3FA3B2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 14:59:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0FC561CE1;
	Tue, 14 Apr 2026 12:58:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R5zTuzUD6VSJ; Tue, 14 Apr 2026 12:58:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBBC160812
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776171538;
	bh=AGglciVD7IYZC7XTPOg4/62iqxBhNOdQlf5abXAKI0Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gQHWV41wnbNAonV1BXuQviBDBQBmdhXilLH1HSaVixLEM3tYZeAr8CcUl/Cv3zcv/
	 OXDJ7hYunT311Q8/h8yO1Z1671zke+jTQbgvVdRJ/vtz6lB07uRmS16KHiZWhaI+hY
	 oih968J+3M4hJjWIuZb0a4K8JxQB0H2aoGRcSpioTUS8sVBvQ7esuefHtH0HSrpT3H
	 v4805YisB2+3CHKcmeVBqEjKEQiE0bXh+dXAwTCzZQSUbZzC3iGMbttt4T+8GXEmAw
	 foPwotH7mm/A17h9wPJarLpIbb2z45rsawG9pGUy02Th1OTr4GZQbb1wL5xdwP7Lr4
	 g6xz8Q+deRYcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBBC160812;
	Tue, 14 Apr 2026 12:58:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 75BF9237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 12:58:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5327042A31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 12:58:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TTfQcPuQc7jJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 12:58:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 74EAD42A30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74EAD42A30
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74EAD42A30
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 12:58:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6254A43EC8;
 Tue, 14 Apr 2026 12:58:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B74BC19425;
 Tue, 14 Apr 2026 12:58:52 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org
Date: Tue, 14 Apr 2026 13:58:37 +0100
Message-ID: <20260414125837.755493-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260408131216.2662245-2-aleksandr.loktionov@intel.com>
References: <20260408131216.2662245-2-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776171534;
 bh=8j7SG+h6op+SNbXj618VmTyqqQnfVPQ/1mylqAjMiS8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gNRVvOgnmKjyX+zoMNeZ4X94fopZ1JEzh0RVOONchgWVUmnDthLOr+Ns3z9AD1Y76
 X+k6nm1JU29g4bPfle4V/9nvhaWwuSiXPd46jIIoivUI4S5yXNx8Nr/a5v2tHxVHe7
 XfAaOHAmHSOd65ZcIOKh8m9OV19da7uEvcRoLH1PvCP2lgzgB+MwPGnzOdJ7iglM3o
 tjT6TZuMojmH5sW4VnJLo+Lc+Xb9VOaN6V8HF2VUMujpEoNJcBJewHHtdIrCbwpCcT
 4X+WThGHXOdvbl8MRCGtk68ucZJsmREpgCYN/AnuYMI3AOsiFl17EK05aGdaGtqp2M
 xR1+/2WE+59CQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gNRVvOgn
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/8] ixgbe: lower
 IXGBE_ITR_ADAPTIVE_MAX_USECS to prevent RX starvation
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_SEVEN(0.00)[9];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 78E6D3FA3B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ixgbe: lower IXGBE_ITR_ADAPTIVE_MAX_USECS to prevent RX starvation

The patch lowers IXGBE_ITR_ADAPTIVE_MAX_USECS from 126 to 84 to prevent
descriptor ring starvation under sustained full-line-rate bulk RX traffic.
It states that this provides enough headroom to drain the ring before it wraps.

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 59a1cee40b436..eedee3b2e72c8 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -475,7 +475,7 @@ static inline unsigned int ixgbe_rx_pg_order(struct ixgbe_ring *ring)
>  
>  #define IXGBE_ITR_ADAPTIVE_MIN_INC	2
>  #define IXGBE_ITR_ADAPTIVE_MIN_USECS	10
> -#define IXGBE_ITR_ADAPTIVE_MAX_USECS	126
> +#define IXGBE_ITR_ADAPTIVE_MAX_USECS	84

Will the hardware still be configured with a 126 us delay during bulk traffic?

Looking at ixgbe_update_itr(), when traffic is categorized as bulk
(packets >= 256), itr is initialized to IXGBE_ITR_ADAPTIVE_BULK (0).
For a 10Gbps link, avg_wire_size plateaus at 32256:

drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:ixgbe_update_itr() {
    ...
	} else {
		/* plateau at a limit of 8K ints/sec */
		avg_wire_size = 32256;
	}
    ...
}

The itr is then calculated and updated directly:

drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:ixgbe_update_itr() {
    ...
	switch (q_vector->adapter->link_speed) {
	case IXGBE_LINK_SPEED_10GB_FULL:
	case IXGBE_LINK_SPEED_100_FULL:
	default:
		itr += DIV_ROUND_UP(avg_wire_size,
				    IXGBE_ITR_ADAPTIVE_MIN_INC * 256) *
		       IXGBE_ITR_ADAPTIVE_MIN_INC;
		break;
    ...
}

With IXGBE_ITR_ADAPTIVE_MIN_INC being 2, the calculation is
DIV_ROUND_UP(32256, 512) * 2, which equals exactly 126.

There is no clamping against IXGBE_ITR_ADAPTIVE_MAX_USECS applied after this
bulk calculation, so ring_container->itr becomes 126.

Later, in ixgbe_set_itr(), the final ITR is determined by taking the minimum
between the rx and tx values:

drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:ixgbe_set_itr() {
    ...
	new_itr = min(q_vector->rx.itr, q_vector->tx.itr);
    ...
}

If the TX ring is idle or operating in latency mode, it will have the
IXGBE_ITR_ADAPTIVE_LATENCY flag (0x80) set.  Even though its base value is
clamped to 84, the latency flag makes it numerically 212.

Does this mean min(126, 212) will return the RX bulk value of 126, leaving
the interrupt delay at 126 us and descriptor ring starvation unresolved?

>  #define IXGBE_ITR_ADAPTIVE_LATENCY	0x80
>  #define IXGBE_ITR_ADAPTIVE_BULK		0x00

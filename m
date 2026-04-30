Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MsQARJ582mt4AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 17:45:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 256604A50E4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 17:45:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75D7D42AE5;
	Thu, 30 Apr 2026 15:44:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KXB43OY_lXxt; Thu, 30 Apr 2026 15:44:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A943642AE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777563888;
	bh=3UHk8RqrZJ30il5gO8YmeNm/2XpTS/v+s3JuZnEMkgU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zadaT+Es+Jd9fQ1N/yOlhfD9HTGtWopjj3q71TiVgo3QIbCI8HsT0AYRE4aPnYknl
	 vfbFXsr/ix3XnKoguF6mWRlnqi0Vw9jsubV18vXuJQNNx7rxw5ETJeD4QKKGsJnePX
	 gmJmR6nEHrQypoA4o1r7/799c8P82WVRbBcjU4Ds6AKatKGwstEwmw0fwsAQNZ52oj
	 UPSWYvFRTgapKpGCKu97B0TBySb8FZ/kneaGd4frAQpWQflAWqGNqTdacsxsSIG9r4
	 YZqXMQ4xUfoqASuKSuIJm0SO2UIBQpC9FLRUDvf6QZ+FQrOSZawjEdVTDrHWnfjlEW
	 7RGtMb0FPxoUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A943642AE7;
	Thu, 30 Apr 2026 15:44:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4880418F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 15:44:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E97642AE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 15:44:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ElM_a5l9SJi4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 15:44:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6361242AE4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6361242AE4
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6361242AE4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 15:44:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3136760180;
 Thu, 30 Apr 2026 15:44:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 422D0C2BCB3;
 Thu, 30 Apr 2026 15:44:43 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: michal.swiatkowski@linux.intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, jramaseu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, aleksandr.loktionov@intel.com
Date: Thu, 30 Apr 2026 16:29:49 +0100
Message-ID: <20260430152948.1683359-2-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260428070647.777141-3-michal.swiatkowski@linux.intel.com>
References: <20260428070647.777141-3-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1777563884;
 bh=6uzJjTQlJ2AoFxoeIorIzS4OpkA4n1urVMwudhZDabs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EHOZsasKa8i/VntqVUCgIe92mCa+dHO59JooLKCIFvJrsR3T4orCaqnQe1/XGRMbz
 wTLPrgmKSm8Jkg0xcowCFYZmDYGm+13xm1AWWInnMWiv2nBC+rPyiVWJx6TKfBhgMo
 OnnCGMTaXOh6DgIYj7JdHC4XtQD1r4DmhX/svEhovCuHi+FzJjEhnGqv1xEcM/fuTb
 DOrL7cFGfZ3DJ3Me2OyFXTg22G0q/VMYQvkwGZWv0jDRVtxzVDJFfUSahXt71yog+c
 ghKTi9yR+mnPULW+kRSXNsdVIFJCmpo4e1GythPH4gZ1bUQxexG8bOoJ1e27vVMTx7
 NDLkjiEZEiTuQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EHOZsasK
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/2] ice: use
 NETIF_F_HW_CSUM instead of IP/IPV6
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
X-Rspamd-Queue-Id: 256604A50E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:jramaseu@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[9]

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ice: use NETIF_F_HW_CSUM instead of IP/IPV6

This commit replaces the IP and IPV6 checksum offload flags with HW_CSUM
in the ice driver to allow hardware checksumming for IPv6 packets with
extension headers. It also removes the mutual exclusivity check between
TSO and GCS.

> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 5f92377d4dfc..33f252a6a22f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3491,9 +3491,8 @@ void ice_set_netdev_features(struct net_device *netdev)
>  			NETIF_F_RXHASH;
>  
>  	csumo_features = NETIF_F_RXCSUM	  |
> -			 NETIF_F_IP_CSUM  |
>  			 NETIF_F_SCTP_CRC |
> -			 NETIF_F_IPV6_CSUM;
> +			 NETIF_F_HW_CSUM;

By advertising NETIF_F_HW_CSUM, the network stack assumes the driver can handle
checksums for any protocol and passes non-IP packets (e.g., from AF_PACKET
injected frames) to the driver with CHECKSUM_PARTIAL.

Since ice_tx_csum() strictly parses the L3 header and expects IPv4 or IPv6,
returning -1 for other protocols, will this regression cause non-IP packets to
be silently dropped instead of falling back to software checksums in the kernel?

Additionally, skb_csum_hwoffload_help() relies on NETIF_F_IPV6_CSUM to
safely fall back to software checksums when IPv6 extension headers are
present.

Does using NETIF_F_HW_CSUM bypass this safeguard, potentially causing
legacy hardware (like E810) or E830 without GCS descriptors to compute
incorrect pseudo-headers and silently corrupt IPv6 packets with extension
headers?

Finally, for protocols other than TCP, UDP, or SCTP, the driver falls back to
calling skb_checksum_help(skb) in the default case of ice_tx_csum().

However, the driver appears to ignore the return value of skb_checksum_help().

If skb_checksum_help() fails (e.g., due to -ENOMEM during pskb_expand_head()),
could this result in the packet being transmitted with an uncomputed checksum?

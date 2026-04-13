Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHpxBeP33GlaYgkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 16:04:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AE93ECECC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 16:04:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 325EC8476F;
	Mon, 13 Apr 2026 14:04:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fqLSC76ZdkO5; Mon, 13 Apr 2026 14:04:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B9238475A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776089056;
	bh=v1C5qdQnf7YIMB+iEYlsrIwDfbPEhXXGWNFrTiSabBA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cSYubW+cXebksU+PtUQ2y606Kd+lM0f0gmDs+9mAfrKvy7frgUaUUaIyod6ZMQbTL
	 iP4g8KtSeGBe9IUN/kKplcngBGEeqO9AmYoqsNLyOm8Ovz88Oh8Nx4JMiiKBZoVZZV
	 RdTTHbjc4MbFWRnt6kIx74AIw44GsUyrMepy+A1YmGKmQ8VkqJl9Cdz8Q3w9Q1tx2L
	 QpoSE2os4evAYP7VbiGv4m0VQiFz8LgoVKKsqnQRYat5vNtBZLtAfT6xOPK000XCf6
	 WrrlmhhDdvKDYa+UWStdZfktV3/hzNM7vM9k36fZGRAA9cxKKfFiMJOelS+a4wDceY
	 Kf3YZkQlZczUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B9238475A;
	Mon, 13 Apr 2026 14:04:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7ECE7237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:04:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64F1342089
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:04:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9tEW7FT8rvgK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 14:04:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7436441292
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7436441292
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7436441292
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:04:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 201BD4041D;
 Mon, 13 Apr 2026 14:04:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9062CC2BCAF;
 Mon, 13 Apr 2026 14:04:11 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, stable@vger.kernel.org
Date: Mon, 13 Apr 2026 15:03:07 +0100
Message-ID: <20260413140307.715409-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260408131154.2661818-7-aleksandr.loktionov@intel.com>
References: <20260408131154.2661818-7-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776089052;
 bh=PZPocgNq/t+BoK9YO0g4NcHOvsEnwrcuzcTMgVzbDRc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sQ/rI1UvHOQ+roW0A6IDSgDJ1b0pLaQvXe5zqkw+FVGVpWk8EG1wK8fGIagzv6Mim
 4O8BpTNUTZPrNHweOqewPuZft/QR4+jHezJ/glnRr/F91wRA6HcCOzM7ormX8x8lds
 dR9IPCfYKcSZNwExOtF+Y78WtWLmejYpNQ92Ya7SH8y2HcZL4Tf4TVsEw+uehCRszU
 lUy0lOI5KQVDIewL3zdcwlsxR2nJw6h0XZda++ue09kUXr6LITbszedrYV4YeMqXUi
 D1ylNUlHp0S5hV4a0Xk971C+ZxKs2YgRY1oIAkHAgxmQ7oEVUsrCPzOWi7WeIfzBL4
 E/Fmsl2sCLMMQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=sQ/rI1Uv
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 6/6] ixgbe: fix integer
 overflow and wrong bit position in ixgbe_validate_rtr()
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
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.997];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,sashiko.dev:url,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 87AE93ECECC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ixgbe: fix integer overflow and wrong bit position in ixgbe_validate_rtr()

This commit fixes two bugs in ixgbe_validate_rtr() by masking the
traffic-class field properly before assigning it to a u8, and correctly
shifting the mask for clearing out-of-bounds entries.

Cc: stable@vger.kernel.org

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 5ff462a848feb..8ebf717ce4017 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -9782,11 +9782,12 @@ static void ixgbe_validate_rtr(struct ixgbe_adapter *adapter, u8 tc)
>  	rsave = reg;
>  
>  	for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
> -		u8 up2tc = reg >> (i * IXGBE_RTRUP2TC_UP_SHIFT);
> +		u8 up2tc = (reg >> (i * IXGBE_RTRUP2TC_UP_SHIFT)) &
> +			   IXGBE_RTRUP2TC_UP_MASK;
>  
>  		/* If up2tc is out of bounds default to zero */
>  		if (up2tc > tc)

This wasn't introduced by this patch, but is there a pre-existing off-by-one
error in this bounds check?

If tc represents the number of enabled traffic classes (e.g., 4), the valid TC
indices would be 0 through tc - 1. If up2tc equals tc, it would be out of
bounds, but the condition up2tc > tc will evaluate to false and the invalid
mapping won't be cleared.

Could this allow an invalid UP-to-TC mapping to persist in the hardware
register, potentially causing received packets to be mis-steered to an
uninitialized or non-existent traffic class queue?

Should the condition be corrected to ensure up2tc is strictly less than tc
when tc > 0?

> -			reg &= ~(0x7 << IXGBE_RTRUP2TC_UP_SHIFT);
> +			reg &= ~(IXGBE_RTRUP2TC_UP_MASK << (i * IXGBE_RTRUP2TC_UP_SHIFT));
>  	}

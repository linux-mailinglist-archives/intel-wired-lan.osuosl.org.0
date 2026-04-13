Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHmTAcTK3GmcWQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 12:51:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3763EAE1B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 12:51:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0442960DE0;
	Mon, 13 Apr 2026 10:51:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y1WoLTmLH6UW; Mon, 13 Apr 2026 10:51:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 548EC60DEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776077505;
	bh=c/zCcmkBDzgLfWvMhNtkNpY35IU7nx2tOwIIDknRjsc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pCksf7Kei4k8m7gEPJ/kORVYEPT9j4/kN5DUTdm139W/NMoh4m9KAMuCwwTQntm62
	 VaZ+0MMawXMTcNkS9DzVk6FUmXKgyIQ9UQPoAM/oIFyNftNFHu7fInSgr4ax8Yb4z1
	 yVhsmTeu7pEtY8yL6qkaNFNbW4itLVSQlEy36wmpRvdwKgfWXh6N+hJdJKUTRn5ii5
	 5vekaduSrDzDHaVHAMBZCURtNkbbq+RQv/ASIM1eoT6E15zko2lSQKlmkh8WKD27ny
	 ZOKV83vWZe3Wec8bVtgAZ1XyEfUVQ3cBSvHSorNir4khlzM+ZKDZPY3qCmFgicqb1l
	 9+U8ps9RPX9Iw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 548EC60DEB;
	Mon, 13 Apr 2026 10:51:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 41E2D237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 10:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F2D860DDD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 10:51:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SAvsy0GL1kQD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 10:51:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6AEC960DD0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AEC960DD0
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6AEC960DD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 10:51:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id CB44C42B62;
 Mon, 13 Apr 2026 10:51:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8598BC116C6;
 Mon, 13 Apr 2026 10:51:40 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org
Date: Mon, 13 Apr 2026 11:51:11 +0100
Message-ID: <20260413105110.695930-2-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260408131154.2661818-4-aleksandr.loktionov@intel.com>
References: <20260408131154.2661818-4-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776077501;
 bh=bQAYLLneMNI9jJ1/diAoWNp9Xyr3yX5LkVwGEeYI2S8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ckYRyYKK5bD0iIR40GZXA42qZENIZOJr1ylDSGcf3h6BYfOwxcW65R74jNxFAYBNU
 ZWqgQRz2Hq7TvA1vfxbF4OxSvEaLiKyaih/RJwUHxYWCPxD/RP+WwXrjeKO5CcnkAt
 WfE9fv6F3SvrVD7BWJ7XkchBBcvg9XlKTAnOmRAcwhiqgE6xIANo794HiqRRzPLX2z
 lNzeJ1RsHfBz/Vt1cfm482NV4wyzVHONFRewnL04Rro8al9N3YaJckxWZPmAJXNZjT
 M6vL6qY1DV8pI2i3OmQS7BsQxk6DMAy3g8Ax9gpQpNWGOAtCQjn/jUtUAdsIs9j89C
 HvXelyWsubkxg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ckYRyYKK
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/6] ixgbe: call
 ixgbe_setup_fc() before fc_enable() after NVM update
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-0.995];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5D3763EAE1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ixgbe: call ixgbe_setup_fc() before fc_enable() after NVM update

This commit adds a call to hw->mac.ops.setup_fc() before fc_enable() in the
watchdog task when the link comes up, aiming to prevent MDD events after
an NVM update by reprogramming flow-control autonegotiation.

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -8031,7 +8031,14 @@ static void ixgbe_watchdog_update_link(struct ixgbe_adapter *adapter)
>  		pfc_en |= !!(adapter->ixgbe_ieee_pfc->pfc_en);
>  
>  	if (link_up && !((adapter->flags & IXGBE_FLAG_DCB_ENABLED) && pfc_en)) {
> -		hw->mac.ops.fc_enable(hw);
> +		/* Re-program flow-control autoneg before applying the result.
> +		 * If setup_fc() fails its output is invalid; skip fc_enable()
> +		 * to avoid committing stale capability bits that trigger MDD.
> +		 */
> +		if (hw->mac.ops.setup_fc && hw->mac.ops.setup_fc(hw))

Will calling setup_fc() unconditionally from the link-up watchdog cause an
infinite link flapping loop on 82599 backplane interfaces?

For backplane interfaces like KX/KX4/KR, setup_fc() resolves to
ixgbe_setup_fc_generic(), which then calls hw->mac.ops.prot_autoc_write().

On 82599 hardware, this calls prot_autoc_write_82599(), which unconditionally
executes ixgbe_reset_pipeline_82599().

Since ixgbe_reset_pipeline_82599() toggles the IXGBE_AUTOC_AN_RESTART bit,
would this drop the link immediately to restart Auto-Negotiation?

If the link drops, it would trigger a link-down LSC interrupt. Once
Auto-Negotiation completes, the link would come back up, triggering another
link-up LSC interrupt. This would cause ixgbe_watchdog_update_link() to run
again, repeating the cycle.

> +			e_warn(drv, "setup_fc failed, skipping fc_enable\n");
> +		else
> +			hw->mac.ops.fc_enable(hw);
>  		ixgbe_set_rx_drop_en(adapter);
>  	}

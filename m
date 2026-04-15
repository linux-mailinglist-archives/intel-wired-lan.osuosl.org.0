Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNKpC7CS32n5WAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 15:29:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA47404C6D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 15:29:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1257C852AC;
	Wed, 15 Apr 2026 13:29:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tvZNYJkpn62v; Wed, 15 Apr 2026 13:29:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CCF2852AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776259757;
	bh=AySviWd7+ZQL6ko2vXpT5pO0xiiXNiiRSWpt/wC1r+c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y464hX5nmjFaTYW08ijLY6Xt+egOLWPn4wGfCFOvORI3jDZ0rSlV6tqmO/4u4dcl6
	 kJIhT6a/NuFhZ1qQ4P0PtpsbgkHC8ftakjbAbvas82GEbn22h1HKl9uE2GvjPGAP8o
	 1V9XQN3gxgAP+KWg/wV85jJuXh9TQK5Wzlg93cXFkFNa3rDTDmaaYi5HmIu5E+tCLo
	 9zq5g9fwcApP5KopNu4kCnOZAlJDxaIBWsvYYTQqM15u+ihUxwiocFcXQxrOfyWjEn
	 mweMR5pZ+6/DK2TugPBd8lvDUAVRIsB76jn1oCU22WeHugrVHEhS7AZFc/2zFIH0UT
	 i9y30oY/yP3Iw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CCF2852AE;
	Wed, 15 Apr 2026 13:29:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E5CC375
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 13:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8972361B28
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 13:29:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V_oIaTdvc6g4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 13:29:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BAD3661ACF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAD3661ACF
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAD3661ACF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 13:29:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 614F340B22;
 Wed, 15 Apr 2026 13:29:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E17A4C19424;
 Wed, 15 Apr 2026 13:29:12 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kiran.patil@intel.com
Date: Wed, 15 Apr 2026 14:28:58 +0100
Message-ID: <20260415132858.805112-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260413073035.4082204-4-aleksandr.loktionov@intel.com>
References: <20260413073035.4082204-4-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776259754;
 bh=eAWQHpbhG+wTBm+8dI2tV4sVTXIGvKAGTUtdJwkdizg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d4GXhRDY6Ln7jxPnxTRB9PU3l07/uBxnJfD/Uxj9AihJXctersFsfAcUach85VjQT
 FNRyjiRtLR/dUlFDMMvecy9n6xvc3cpD7r5SPx3CPw/T+JqElKwVjOA0YqTobera+a
 zt0kkkX57W8ykDHOqhQTrN5VE/ynycmBDz7vRX/NS/Ut68vTgTz1tv3swmbatmWXR0
 jfeo5pLA9pHppGZRdaszcygckFC3U1iuG6suozQzFKZaNGcrvrCSwqx7OD4shYtNz6
 /M4CYM/rZy1koLakm/4VI8JaAKCLD1+rbV/pj4d621v2FuGAD40TS8SDGFrvgzKqcP
 naTS9wOlzLA9Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=d4GXhRDY
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/5] iavf: prevent VSI
 corruption when ring params changed during reset
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:kiran.patil@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,sashiko.dev:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9BA47404C6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
iavf: prevent VSI corruption when ring params changed during reset

Changing ring parameters via ethtool triggers a VF reset and queue
reconfiguration. If ethtool is called again before the first reset
completes, the second reset races with uninitialised queue state and
can corrupt the VSI resource tree on the PF side. Return -EAGAIN from
iavf_set_ringparam() when the adapter is already resetting or its queues
are disabled.

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 1cd1f3f2930a0..390913170315f 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -495,6 +495,11 @@ static int iavf_set_ringparam(struct net_device *netdev,
>  	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
>  		return -EINVAL;
>  
> +	if (adapter->state == __IAVF_RESETTING ||
> +	    (adapter->state == __IAVF_RUNNING &&
> +	     adapter->flags & IAVF_FLAG_QUEUES_DISABLED))
> +		return -EAGAIN;
> +

Is there a lockless Time-Of-Check to Time-Of-Use race here?

iavf_set_ringparam() is called from ethtool under rtnl_lock(), but the
background iavf_reset_task() synchronizes using netdev_lock(). Because iavf
does not set netdev->request_ops_lock = true, the ethtool core does not
acquire netdev_lock() for iavf_set_ringparam().

This allows adapter->state to transition to __IAVF_RESETTING immediately
after this lockless check.

Furthermore, calling iavf_reset_step() later in this function without
holding netdev_lock() allows the hardware reset sequence to execute
concurrently from both the ethtool thread and the workqueue, which could
lead to VSI resource corruption.

Could this open-coded state check miss pending resets?

If a reset is scheduled (e.g., by a watchdog timeout setting
IAVF_FLAG_RESET_NEEDED) but the worker task hasn't started yet,
adapter->state will still be __IAVF_RUNNING. This check will pass, and
iavf_set_ringparam() will proceed to mutate ring parameters and execute
iavf_reset_step(), racing with the previously scheduled iavf_reset_task.

Can this be addressed by also checking for IAVF_FLAG_RESET_NEEDED and
IAVF_FLAG_RESET_PENDING?

Also, the commit message notes that triggering a VF reset before the first
one completes causes VSI resource tree corruption. Both iavf_set_channels()
and iavf_change_mtu() also dynamically reconfigure queues and
unconditionally trigger resets by calling iavf_reset_step(adapter).

Should these functions be updated to include a similar state check to
prevent the same VSI resource tree corruption on the PF side?

>  	if (ring->tx_pending > IAVF_MAX_TXD ||
>  	    ring->tx_pending < IAVF_MIN_TXD ||
>  	    ring->rx_pending > IAVF_MAX_RXD ||

Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 01loN6q8z2nH0AYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:12:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 344BC39458B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:12:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD10040E25;
	Fri,  3 Apr 2026 13:12:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9yfskBA33jGa; Fri,  3 Apr 2026 13:12:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 413FD40E81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775221927;
	bh=ZFgEYSm8ikjFqdwhv+fuI0ak2vXR3pnMQlo/P2iHuBw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4v8nsLN7GL4vUQgzSiQgK8w/u1Wv+zvz+8ZlZIiQys2dw7bPGNWOYBvV0foUibPPI
	 QmcfsMipTWdMIAvuzJFz6LApO9RvXMP0+wC2gg4aHqYnTTBVn+y8CtLh7DtAGKcHjY
	 c3ALckkm83oaczD0rhIvzpqMkZ9AuMgxUbV5TXcS9SiWwBqnIIDj8jK6uQN1AEAQvw
	 fiLef7blgUP4sYvU4jmaNZO77zsj4qcpyVkHgfYQK52IWcv77uhCy8So9b8C3ekNrR
	 gAa2Sf6r5vzTWL1jYX4zdlt8bwHVAM3b8IWVolvznKDS7cDdTurKS1PLtWr8Xxnsn6
	 ueLVHOHnW8b3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 413FD40E81;
	Fri,  3 Apr 2026 13:12:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C1B492CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6FA8608A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:12:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U7Ldv3OuI9A3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 13:12:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9F406608A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F406608A1
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F406608A1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:12:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 9813A60008;
 Fri,  3 Apr 2026 13:12:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08B15C4CEF7;
 Fri,  3 Apr 2026 13:12:01 +0000 (UTC)
Date: Fri, 3 Apr 2026 14:11:59 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20260403131159.GA114708@horms.kernel.org>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
 <20260327073046.134085-5-aleksandr.loktionov@intel.com>
 <20260403131035.GA113102@horms.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260403131035.GA113102@horms.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775221923;
 bh=T+s+iCoVRkohAWcg4ruPmHUjFaW6+4Csag8Svk489mw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ettOQZC72jVo3u/L/CyFoODG/udj45u2YKVbfWwiOZk1/Y8KlwbuMQRtr6ijz8bJs
 ozXBpcOV6UiNPMV05noWbgZ+oUSH6DYQFJ2mUbHzz5i7/jVSvm9mtqe0B+ZzDCodcO
 POMirP6GmG2KvyIuyu1lvVhHPeAB3L38sKh6JaDY6YtQxLigwQMMRuTT6VmnxUIJFB
 U3cE5WgV2x6vcbl+JUARBITVSg7emiN5qORqmbDx/Gz7Rgq2u3D7HJOQ5jT6I/0VSi
 vFO9rc0wb1k8HaW3vX2QDGEX22grwJz6CVhHJLbwBYTgL7npywONgzBRVddc/THW/T
 7V18u18tLxwBQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ettOQZC7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: use
 ktime_get_real_ns() in ixgbe_ptp_reset()
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:marcin.szycik@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 344BC39458B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 03, 2026 at 02:10:38PM +0100, Simon Horman wrote:
> On Fri, Mar 27, 2026 at 08:30:39AM +0100, Aleksandr Loktionov wrote:
> > From: Jacob Keller <jacob.e.keller@intel.com>
> > 
> > Replace ktime_to_ns(ktime_get_real()) with the direct equivalent
> > ktime_get_real_ns() in ixgbe_ptp_reset().  Using the combined helper
> > avoids the unnecessary intermediate ktime_t variable and makes the
> > intent clearer.
> > 
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> FWIIW, this pattern also seems to exist in e1000e, ixgbe and igb (twice).

Of course, with this patch applied it's not present in ixgbe anymore :^)

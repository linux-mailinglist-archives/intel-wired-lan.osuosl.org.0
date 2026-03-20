Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKjkMTClvWm4/wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:51:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5405B2E07E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:51:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2EE361118;
	Fri, 20 Mar 2026 19:51:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Af5O4OVapsos; Fri, 20 Mar 2026 19:51:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F80261BE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774036270;
	bh=9qWMDUeTY2c/DFpJSkVjXTiFaJJ4PXGld4o1xz2zMtI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s9H3DdUnqaXJ5XRIt+7c1nHYR59Sb/vxns9rNTg35ijyuhzvAlxfQXQVxTsY7xDBb
	 0FS6pE+XioBa/NqQP/9AHAiZOz2AI6ZNGF6fgRCbxQelLt62ZCFka7eosGScPJhuDr
	 o2KD9XEtFDfstzl+fDKM6/T9c9UqGG/P1cmOo1Xx3cSL72Csouhg9KwxyAASzSvwvw
	 022vBq1G/HzLbDvcqoOlE/5V4LPTVVLpGrcd3zZg3PTMHiaV1bZDd7zatdCBChYjhH
	 Na74fcBgmX61B1iMrpPPVdkLpI3Bd1zvNuNRnsZHnqcJs7KFueiUNazlr/ld5pntTX
	 KA97LxkOofU0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F80261BE5;
	Fri, 20 Mar 2026 19:51:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6318A25C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54C388490B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:51:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PPyBcaMCTYOq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 19:51:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A5EAD8490A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5EAD8490A
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A5EAD8490A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:51:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A99F460126;
 Fri, 20 Mar 2026 19:51:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A827C4CEF7;
 Fri, 20 Mar 2026 19:51:06 +0000 (UTC)
Date: Fri, 20 Mar 2026 19:51:03 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Lukasz Czapnik <lukasz.czapnik@intel.com>
Message-ID: <20260320195103.GJ74886@horms.kernel.org>
References: <20260320050544.422640-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260320050544.422640-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774036267;
 bh=2vbu4pd5MILwYlxZrkNCrjwGhby1msVHrhgbEllJ4sc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JU7FqUV8isFL3zNM7biU71xh9DCKMaRH8i6W2Y0hWvCugfYAS+6XHFThDPw6FGtsJ
 oSWBIl5sbgp6Y5bJkGyjf6c1IHJU3Ybi7Ant8s6aAcoRoXCpjTAdSZl6pWbOh02qyy
 QrXfOoJH0hqyAQB5EmCtCiTuBf3UDPQFytQqOUB0zx/BJ8x83H+3kya/Kj4byR6pdT
 xPE2q14+lyo7M9tXwtqJFCmB8vO0WOw8F7YQPRtD+gGPLNaeKHUItmqJYRPQYI1YB1
 53Ezpbae4B+DFSpKDWJiXqq2BM1ZdtxS464lprDy4Jm27iv+TEPOYnsqLVXw525Rpy
 7layT5+MzdFOw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JU7FqUV8
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: prevent integer overflow
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:lukasz.czapnik@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,horms.kernel.org:mid,intel.com:email];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5405B2E07E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 06:05:44AM +0100, Aleksandr Loktionov wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> In ice_sched_bw_to_rl_profile(), the loop over 64 bits computes the
> scheduler timestamp rate as:
> 
>   ts_rate = div64_long((s64)hw->psm_clk_freq,
>                        pow_result * ICE_RL_PROF_TS_MULTIPLIER);
> 
> where pow_result = BIT_ULL(i). For large values of i, the product
> pow_result * ICE_RL_PROF_TS_MULTIPLIER overflows u64 before being used
> as the divisor, producing incorrect ts_rate values and potentially
> undefined behaviour.
> 
> Fix this by pre-computing ts_freq = hw->psm_clk_freq /
> ICE_RL_PROF_TS_MULTIPLIER once before the loop and then dividing only
> by pow_result inside the loop. The division order avoids the overflow
> while preserving the same mathematical result. Declare ts_freq as s64
> to match the type domain of the surrounding arithmetic and avoid a
> redundant cast at the use site.
> 
> While at it, scope the loop variable i to the for statement itself.
> 
> Fixes: 1ddef455f4a8 ("ice: Add NDO callback to set the maximum per-queue bitrate")
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>


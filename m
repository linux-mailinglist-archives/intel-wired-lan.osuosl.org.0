Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFkcMyK4gmkzZAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 04:08:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C42E12CC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 04:08:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0A6840C24;
	Wed,  4 Feb 2026 03:08:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NaNDFveOm4K2; Wed,  4 Feb 2026 03:08:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E26D340C1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770174495;
	bh=WHpQZVPPtlCUGT8bcPXLH4wbxMZWmDJXkLOTkeRvpoQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=95qrVZ/5tsWYYV02w7Hc7M5rLMCtXKtSUsiWg1z64Nk8QtWAw729DNvRJdqX87OUV
	 Hz6S/CMldLoNOfzIsDawFreww2UbFXVtaCz5keTy3Op0jrOHwpyipJR1mKFSkYh3I4
	 LzMIceFouA4OElppcylGAj9F7KRvIf9pU2WLlio4Wbj6ZoQ1PVb+uxlls5UhHXMOZc
	 nAMfty7ORH4F8fgY1TXH1J/0wo3s1wXqX/rqTOE3p+qz3Ik+5VvBTa0nGJhqkoOFnN
	 kdb23X5cZ6p4SslyBfVmJOYjYq4znw0I91tMT2ejih0XSHw8jaJQyJAsoh3e8whrcf
	 K/McmKLyuU/Xw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E26D340C1C;
	Wed,  4 Feb 2026 03:08:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D7CB1F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 03:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D25EC40C08
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 03:08:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n7WODNocukRl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 03:08:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0140C40C06
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0140C40C06
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0140C40C06
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 03:08:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3ABB9403A3;
 Wed,  4 Feb 2026 03:08:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F596C19421;
 Wed,  4 Feb 2026 03:08:12 +0000 (UTC)
Date: Tue, 3 Feb 2026 19:08:11 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Pielech, Adrian" <adrian.pielech@intel.com>
Cc: <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>,
 <pabeni@redhat.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <horms@kernel.org>, <andrew+netdev@lunn.ch>, <krzysztof.galazka@intel.com>
Message-ID: <20260203190811.1f9e7530@kernel.org>
In-Reply-To: <b5446385-1f51-4359-b484-6dfccb50dad0@intel.com>
References: <b5446385-1f51-4359-b484-6dfccb50dad0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770174493;
 bh=IbOekgSiOz9fatLbIBtKt4h+sxKXahDtpevEP5BSZew=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HlqoaHdJkTYkHrY0aI/1/5OT0kJmVMPDIbDZ3uyBv4f4hu0QAX+dAdtm3ILWum2gc
 BKQr/EfP8BoCMpynGs8MfAj3t2dFwUH3RGwtDcGHhCmC/RYQuuxKD6R/BrRLLaJzQH
 FGM6PKu3V5t2Ft2hZLqxU2o3TQggaeC1BWVwd0ixVN9VC/XVENvAzuniR+McY18nkd
 /iMW3KB1GnjucoJZR7Um2sC7CVYIuIxFDRrbOMeQEUAgsw0aFYsmL+YsUiQ3wcCDgJ
 5fgjz8Pvpwrj95AaVdSem6o4XK/pXuQchUUg7jm9HMIWyx763KeEqJOjZ6VXPZ6iEy
 ZWaoEII0hEkwA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=HlqoaHdJ
Subject: Re: [Intel-wired-lan] [ANN] intel's netdev-ci for i40e
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:adrian.pielech@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:krzysztof.galazka@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:url,osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 03C42E12CC
X-Rspamd-Action: no action

On Tue, 3 Feb 2026 13:35:11 +0100 Pielech, Adrian wrote:
> Hi folks,
> 
> I'm pleased to announce that we have set up infrastructure for testing
> netdev on our e700 NIC (i40e), which extends our current engagement with
> e810 NICs(ice).
> 
> This work plugs into netdev-ci initiative by netdev maintainers to run
> kselftests against current proposed net-next-hw branch on real hardware.
> 
> Our results are here:
> https://netdev-ci-results.intel.com/i40e-results/results.json
> 
> Human friendly results browser:
> https://netdev-ci-results.intel.com/results_browser/index.html?drv=i40e

Excellent!

Looks like the GRO test result parsing is off, the test cases are
reported as for example:

	gro-test-lro-ipv6-ip-tos # XFAIL Device does not support...

Looks like this affects all your runners, I haven't noticed earlier.

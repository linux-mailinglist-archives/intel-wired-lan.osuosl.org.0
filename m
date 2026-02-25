Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHv7NxjInmkuXQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 10:59:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E308195683
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 10:59:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D24C684689;
	Wed, 25 Feb 2026 09:59:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WZSPt4EIe3tr; Wed, 25 Feb 2026 09:59:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E75784690
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772013589;
	bh=S5535crDGvST+ib8rcSTBkGop+thABgOhKT/8fM9fCU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wUGldG6GUwcrmB1Nao9d+Db5ILDqlTT8A6ghevCmvA0UDwofCGKZ8MrVSQAdi050s
	 cC5ER2lgyi99j7C9OLF0C5nh3+AaGxRnnOiHzjr8Z0oOuJfUrA0k9m/h1bzwDk3Hlu
	 bZp1Ff80cSVZK7C9ruobiqRoY4e7qdVA4/sziV4m5P7m2bpGTlunkod5lB6iJv+ZDq
	 5E2nipztMYz8z7a4fKZF6wbMWeJ+61wnDPoYlrldlsSRL/lIF53KJs8AZRZRau94YD
	 M/uF3B/CKA+36sjlF32GbXSMzzcFGNXhBbt05Q+ihHuPNh+vuKKoANPCIL8PXeWMTb
	 Lrr06mLWS2eSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E75784690;
	Wed, 25 Feb 2026 09:59:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D2BD5204
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 09:59:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B82C18468F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 09:59:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pnI0Awz0eQQn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 09:59:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1CA1B8468A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CA1B8468A
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1CA1B8468A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 09:59:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7A1F860053;
 Wed, 25 Feb 2026 09:59:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BC0EC116D0;
 Wed, 25 Feb 2026 09:59:43 +0000 (UTC)
Date: Wed, 25 Feb 2026 09:59:41 +0000
From: Simon Horman <horms@kernel.org>
To: Przemyslaw Korba <przemyslaw.korba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Message-ID: <aZ7IDXaOOnwcnuuq@horms.kernel.org>
References: <20260223143214.241797-1-przemyslaw.korba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260223143214.241797-1-przemyslaw.korba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772013585;
 bh=unrCpWR0ZUEpdxq3xVrxxq2dTQ1Gxls1sXOcFsbziJM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=neBGT/qtGwdrHvi/EBGGCJvW4Q2pyDnXSE0bhqWmDauu/4pln2gpvcU7LizVCTXcG
 CEro1Mfixxi83KUDz1kyprGdPaNMYsJKBmYm8oUc2t8WsvCO7s3OYRZXm7s2W08Ehz
 otJpgz4dZzQuHLJ1hmdnb0vryhJQDapsYc59UVTTFekhRFQqNYnqlqFGgYuN5oKrdp
 WZsiqBURIvny5zJ/wZ2t77+7sxDZa6XLYhAOkz4/pS86I5/GRhPIuagFgBGmc2sIQw
 ZsJAiQEeNTAHNzT3A/gXY30OZfYlPJtSylQB+FnKxvTMCUqxXsejq/rLCEK/dZ+nu3
 ZPthXlsflwe5Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=neBGT/qt
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: dpll: Fix compilation
 warning
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5E308195683
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 03:31:55PM +0100, Przemyslaw Korba wrote:
> ice_dpll.c: In function ‘ice_dpll_init’:
> ice_dpll.c:3588:59: error: ‘%u’ directive output may be truncated
> writing between 1 and 10 bytes into a region of size 4
> [-Werror=format-truncation=] snprintf(pin_name, sizeof(pin_name),
> "rclk%u", i);
> 
> Fixes: ad1df4f2d591 ("ice: dpll: Support E825-C SyncE and dynamic pin discovery")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>

Hi Przemyslaw,

I agree that it is good to address this problem.
But is it a bug?

It seems to me that of the 8 bytes of pin_name, three are available for %u.
So values up to 999 can be safely formatted.  And I suspect that
pf->dplls.rclk.num_parents is always significantly smaller than that.

If so, I'd suggest this is iwl-next material. And should not have
a Fixes tag. But you could cite the commit that introduced the problem
something like this (the part starting with 'commit' is the syntax for
citing commits):

Introduced by commit ad1df4f2d591 ("ice: dpll: Support E825-C SyncE and
dynamic pin discovery")

...

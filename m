Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CABhAC2/t2n5UwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 09:28:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C5E29623D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 09:28:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2804560F56;
	Mon, 16 Mar 2026 08:28:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mYSBViGfX_Lo; Mon, 16 Mar 2026 08:28:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C03560F29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773649704;
	bh=O3UO1/AyDerW8oj3wRuk+uePNsNektn5DLDUOy/r6zs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jEbzeCcZNZNpm6DOLWtMnlR80+msrOzopQpbuKqNSmJ49u+G0kcqJxR5hmiMukZrl
	 mT6RIxOYcBFf0i02pGhR6kz8AiqAlAyoiG1hMIUoopt+neLgm/kSTBDqyg/a4GBs99
	 ePyZrz7b7SFf1hAAiXak8JL3sj0z6i75WvmVYgUFVSbb71OjqK3zA6dhRQODKD5W7l
	 mvcf5zZSvvPo7pn8JXeM0hwEbvrEol4cxKH0bYGEWFYxjVRiGKcfZitZT6w9XZoRub
	 yPZprvFKTrytuxag6gk4dxvJxclBe26fgDDqgV2y6GjJurEymPl5jj3dF8ZcH9ixG1
	 s+xVGrg0sD9/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C03560F29;
	Mon, 16 Mar 2026 08:28:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9984B1B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 08:28:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7F12760C10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 08:28:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NZE1MBUAh25J for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 08:28:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AC10760B8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC10760B8F
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC10760B8F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 08:28:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E060A401CD;
 Mon, 16 Mar 2026 08:28:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E20AC19421;
 Mon, 16 Mar 2026 08:28:20 +0000 (UTC)
Date: Mon, 16 Mar 2026 08:28:17 +0000
From: Simon Horman <horms@kernel.org>
To: Przemyslaw Korba <przemyslaw.korba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Message-ID: <20260316082817.GC1369074@kernel.org>
References: <20260313135802.499837-1-przemyslaw.korba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313135802.499837-1-przemyslaw.korba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773649701;
 bh=0J3y0IVZqh1BHNCtlTy05Hxtl91NRHnn6YjIoAdL7xw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I6ER312Lpu6WqfeQN3Hp6ACP4D+61Z653Fy/SCZmCGkIcnCB8RxbGo4peX7Vk9L4E
 mtVCWLHxSrbgL9xne/KJynM+7IaQjTSVurJ/WP1dkTEF+fnxMgSPYta6lEXSwNewuW
 +WN+fr64viHup9tscgRz2MXS5qCcH8apJfzEJRXa9y6RjAcyaVt6kGEh9wo/U9cAvk
 8xowXdOp6R9tH1yn5JA6wL3W3zPGb2zdlv7eZ+7pH9uxG4Krqh8n4nIuuvCkdkv00f
 IeR3UkA1BgjBVUT3NSxaT1Sbg1uo2dXp6F49B8tWz+dANp9fQnEI4GvryOQmPwe43R
 C2QIrH5a+jcWg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=I6ER312L
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: PTP: set supported
 flags in ptp_clock_info
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
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
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 14C5E29623D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 02:54:10PM +0100, Przemyslaw Korba wrote:
> Since upstream commit d9f3e9ecc456 ("net: ptp: introduce
> .supported_perout_flags to ptp_clock_info") and commit 7c571ac57d9d ("net:
> ptp: introduce .supported_extts_flags to ptp_clock_info"), kernel core now
> requires that the driver set the .supported_perout_flags and
> .supported_extts_flags fields in PTP clock info. Otherwise, the additional
> flags will be rejected by the kernel automatically.
> 
> Set supported flags field so we can set extts pins.
> 
> Fixes: d9f3e9ecc456 ("net: ptp: introduce .supported_perout_flags to ptp_clock_info")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>

I don't think it is particularly important, but the AI generated review
points out that citing the following commit may be more appropriate,
as this patch deals with extts_flags rather than perout_flags.

7c571ac57d9d ("net: ptp: introduce .supported_extts_flags to ptp_clock_info")

Also, as this is for iwl-next I do wonder if there should be a fixes tag
at all. I do see that Paul asked for one in v1. But is this fixing a bug?
And if so, should it be targeted at iwl-net?

> ---
> v3:
> - remove unnecessary flag checks for newer kernels and update commit
> message

Thanks for the update.

> v2:
> - add fixes tag
> - remove old TODO comment
> v1: https://lore.kernel.org/intel-wired-lan/20260309141220.343224-1-przemyslaw.korba@intel.com/

FTR, the AI generated review also notes that the TODO covers both EXTTS and
PEROUT, while the patch only deals with the later. But I agree with Dawid's
review of v1. And that it is best to remove the TODO entirely.

> 
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> index 7bcea7d9720f..e7c4f871beec 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -598,7 +598,6 @@ static int i40e_ptp_feature_enable(struct ptp_clock_info *ptp,
>  	enum ptp_pin_function func;
>  	unsigned int chan;
>  
> -	/* TODO: Implement flags handling for EXTTS and PEROUT */
>  	switch (rq->type) {
>  	case PTP_CLK_REQ_EXTTS:
>  		func = PTP_PF_EXTTS;
> @@ -1340,7 +1339,9 @@ static int i40e_init_pin_config(struct i40e_pf *pf)
>  	pf->ptp_caps.n_ext_ts = 2;
>  	pf->ptp_caps.pps = 1;
>  	pf->ptp_caps.n_per_out = 2;
> -
> +	pf->ptp_caps.supported_extts_flags = PTP_RISING_EDGE |
> +					     PTP_FALLING_EDGE |
> +					     PTP_STRICT_FLAGS;
>  	pf->ptp_caps.pin_config = kzalloc_objs(*pf->ptp_caps.pin_config,
>  					       pf->ptp_caps.n_pins);
>  	if (!pf->ptp_caps.pin_config)
> 
> base-commit: d5fbc991435eac7a1ead7cd2ddb5a743528718bb
> -- 
> 2.43.0
> 

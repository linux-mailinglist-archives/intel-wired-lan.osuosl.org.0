Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gC8vAwVisGloigIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 19:25:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C414256605
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 19:25:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 305F66122A;
	Tue, 10 Mar 2026 18:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aKVfZybH4rgV; Tue, 10 Mar 2026 18:25:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E311F60D95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773167105;
	bh=87vVZGjEkF4tNCKUpzG+kXH2w/lWlXAbDMVAqfoMLFw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UQL+rfUGQmRdBYYsm4thKeNHngShNq5krGp1WwYreHlsjEOu3IpveNMgM3SozKVf7
	 MX5uafvPaCSo2W7ZzGiHp4IwGsghOu7YF+Px3Y8ZsgFH4rEDFCHMxJRUEp4oyacR2n
	 GKEWTdX04aQILb1rY2Th8YsToBk1SCWa31iF58Bl9d9lPKtmf/XhY5kGHk4f/adiWP
	 K7xU4c46biT0rUwLS6bvvgT+h+BzdYrDiAidkNwJ7gFaf57uhAjVfm6VO44ORRaPOc
	 OLl5jrYt+Cc9C8R2OMv+AuLwyNjN1KKMt9hqAsqqTW+zYB1CezYurUoEHArDn73lOs
	 QEbR9mxLAgM1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E311F60D95;
	Tue, 10 Mar 2026 18:25:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 05644B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 18:25:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB1B460D87
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 18:25:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1jQ731yLZtzp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 18:25:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3F6F860D64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F6F860D64
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F6F860D64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 18:25:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 741224407F;
 Tue, 10 Mar 2026 18:25:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 072E9C19423;
 Tue, 10 Mar 2026 18:25:00 +0000 (UTC)
Date: Tue, 10 Mar 2026 18:24:58 +0000
From: Simon Horman <horms@kernel.org>
To: Przemyslaw Korba <przemyslaw.korba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20260310182458.GQ461701@kernel.org>
References: <20260309141220.343224-1-przemyslaw.korba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309141220.343224-1-przemyslaw.korba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773167102;
 bh=FufTTTyj6nE6kLLvLgpYODGCqdonXtgXIyVvkY561zw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jM5mjNlBkhQHJj/Xl5Ib8cqlKZFktR0CkRbLZPMhRha5PtkBQhpDpgg3ESN9bJPHI
 HVellEu05213sD9RVAKAJrZL3Me5HRUcWOCfAyEyVTgXo6BhnkNVPx0PhudGhUq74T
 9J1yXFu3MsknDLe2348D9Pp2cw5pYKEbALrHppu3ejl1/bFYYTxp1I2DiQXwp3uM6U
 JngcgdVZvx+Z41NtS9ig2534VSaGHu7MXNYBnCpQgR72KhrRrUaSlTmSSYM5Ik06fN
 B0Q3W3lVkj07vfT2X6FcaSjfQbijE4aMZT6DhdUVe1HN54jS9AZ5qIR78xuPOwL9Zv
 v+PvngQNGQ5UA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jM5mjNlB
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: PTP: set supported
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
X-Rspamd-Queue-Id: 7C414256605
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

+ Jacob

On Mon, Mar 09, 2026 at 03:11:51PM +0100, Przemyslaw Korba wrote:
> Since upstream commit d9f3e9ecc456 ("net: ptp: introduce
> .supported_perout_flags to ptp_clock_info") and commit 7c571ac57d9d ("net:
> ptp: introduce .supported_extts_flags to ptp_clock_info"), kernel core now
> requires that the driver set the .supported_perout_flags and
> .supported_extts_flags fields in PTP clock info. Otherwise, the additional
> flags will be rejected by the kernel automatically.
> 
> i40e does not support perout flags, so reject any request with perout
> flags.
> 
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> index 7bcea7d9720f..8d7958692235 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -601,10 +601,18 @@ static int i40e_ptp_feature_enable(struct ptp_clock_info *ptp,
>  	/* TODO: Implement flags handling for EXTTS and PEROUT */
>  	switch (rq->type) {
>  	case PTP_CLK_REQ_EXTTS:
> +		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
> +					PTP_RISING_EDGE |
> +					PTP_FALLING_EDGE |
> +					PTP_STRICT_FLAGS))
> +			return -EOPNOTSUPP;
> +
>  		func = PTP_PF_EXTTS;
>  		chan = rq->extts.index;
>  		break;
>  	case PTP_CLK_REQ_PEROUT:
> +		if (rq->perout.flags)
> +			return -EOPNOTSUPP;
>  		func = PTP_PF_PEROUT;
>  		chan = rq->perout.index;
>  		break;

I am a little confused.

My understanding of the cited patches is that they add checking
of flags to the code. So code like the above isn't needed in drivers.

> @@ -1340,7 +1348,9 @@ static int i40e_init_pin_config(struct i40e_pf *pf)
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

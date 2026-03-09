Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJ3eH6z2rmnZKgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 17:34:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B860323CC55
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 17:34:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA27A40BEF;
	Mon,  9 Mar 2026 16:34:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dxeguDTP5RrO; Mon,  9 Mar 2026 16:34:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E14D40C75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773074089;
	bh=5Z4xj9+hVkPTtD1Cr7JDvp/eSp2xgkBcv8hvHG08O6M=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YmDlLuDPXx7REJPIG5RzvryRsjAHVD1aphyRwVI+ZgVKZv/+9S7l430ynpqVZB+u5
	 eTfJuTGNyoVVdAnbbECw/MrlQ1wjc8/bfwknWXXnMub2nJUjA43Q+DlCqLRbkFvVMv
	 Crd7yAbJ3xf42W1F7eR7rOfSaoY6Dyrdzcfz6CNpjkN36Buv6fcJdy/J3nhajHaB2t
	 7kyXsR0FF4FUilHnOGGrQVf8CXFdZpEjhk3etBixCdC4QerydUr3MjeIlGwA1jsUp+
	 7S34vf15aDJCn91jb9AkdfBL6btmvL13IYJn0XF9zvvH0R85sA7K/bVYsZ/uqz79pl
	 ba9tiemSHEpPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E14D40C75;
	Mon,  9 Mar 2026 16:34:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C787358
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 16:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 51E0660C1A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 16:34:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MHMLXyfz_8Rf for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Mar 2026 16:34:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C1FB260AAC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1FB260AAC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C1FB260AAC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 16:34:43 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A419C4C2C37D47;
 Mon, 09 Mar 2026 17:34:28 +0100 (CET)
Message-ID: <530f6250-549c-46b2-8c53-3e91f843f6c2@molgen.mpg.de>
Date: Mon, 9 Mar 2026 17:34:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemyslaw Korba <przemyslaw.korba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
References: <20260309141220.343224-1-przemyslaw.korba@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260309141220.343224-1-przemyslaw.korba@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
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
X-Rspamd-Queue-Id: B860323CC55
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mpg.de:email,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,molgen.mpg.de:mid];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

Dear Przemyslaw,


Thank you for your patch.

Am 09.03.26 um 15:11 schrieb Przemyslaw Korba:
> Since upstream commit d9f3e9ecc456 ("net: ptp: introduce
> .supported_perout_flags to ptp_clock_info") and commit 7c571ac57d9d ("net:
> ptp: introduce .supported_extts_flags to ptp_clock_info"), kernel core now
> requires that the driver set the .supported_perout_flags and
> .supported_extts_flags fields in PTP clock info. Otherwise, the additional
> flags will be rejected by the kernel automatically.
> 
> i40e does not support perout flags, so reject any request with perout
> flags.

As you reference commits, why not add Fixes: tags?

> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_ptp.c | 12 +++++++++++-
>   1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> index 7bcea7d9720f..8d7958692235 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -601,10 +601,18 @@ static int i40e_ptp_feature_enable(struct ptp_clock_info *ptp,
>   	/* TODO: Implement flags handling for EXTTS and PEROUT */
>   	switch (rq->type) {
>   	case PTP_CLK_REQ_EXTTS:
> +		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
> +					PTP_RISING_EDGE |
> +					PTP_FALLING_EDGE |
> +					PTP_STRICT_FLAGS))
> +			return -EOPNOTSUPP;
> +
>   		func = PTP_PF_EXTTS;
>   		chan = rq->extts.index;
>   		break;
>   	case PTP_CLK_REQ_PEROUT:
> +		if (rq->perout.flags)
> +			return -EOPNOTSUPP;
>   		func = PTP_PF_PEROUT;
>   		chan = rq->perout.index;
>   		break;
> @@ -1340,7 +1348,9 @@ static int i40e_init_pin_config(struct i40e_pf *pf)
>   	pf->ptp_caps.n_ext_ts = 2;
>   	pf->ptp_caps.pps = 1;
>   	pf->ptp_caps.n_per_out = 2;
> -
> +	pf->ptp_caps.supported_extts_flags = PTP_RISING_EDGE |
> +					     PTP_FALLING_EDGE |
> +					     PTP_STRICT_FLAGS;
>   	pf->ptp_caps.pin_config = kzalloc_objs(*pf->ptp_caps.pin_config,
>   					       pf->ptp_caps.n_pins);
>   	if (!pf->ptp_caps.pin_config)

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul

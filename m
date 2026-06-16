Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IJRGLoEtMWpgdQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 13:03:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7609968E99F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 13:03:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=KWq1MiNR;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5880885534;
	Tue, 16 Jun 2026 11:03:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g0dLw4xJdNNY; Tue, 16 Jun 2026 11:03:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4FA185532
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781607804;
	bh=tm5qA4bByar3MWTXjpvE4+fTboSmxNHbQF0mM/91USI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KWq1MiNRShdaDiRYJphVEDPXvotv4Qx05BZ/pxIHtFOLf8DycEv8a497U+gJoj5Bz
	 NnQAxZojbUWXxafSkhFoIJnL8A2OLdb+1ilRzhfguZmD0vTej8AVxa/6AVa/R6MJL3
	 E8zuTgSz6oWJB0vh/KyRVwg4A7oTmjNIXw8ViepsXieeSWfHjDihovLZUcdj5jrkPR
	 zVD0U9LxOxkm5QOfXi+5UfR6KSzTDduvKISum2wPFGXe8nFKCHjttQfRsn6Klfg9UC
	 omr1rIWnB4BdM0RD4lMaw9g19c+EGX5iJR2qnMNkOw5swcUt0FuzGjUYPPQKyHQG+X
	 e3g6SUoxkEjsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4FA185532;
	Tue, 16 Jun 2026 11:03:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C44712B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 11:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A167C85530
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 11:03:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y7G795yHD3Pj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 11:03:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 848FC8552F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 848FC8552F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 848FC8552F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 11:03:19 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-483-5B3vJJSIP-mygmoVXn2fNg-1; Tue, 16 Jun 2026 07:03:17 -0400
X-MC-Unique: 5B3vJJSIP-mygmoVXn2fNg-1
X-Mimecast-MFC-AGG-ID: 5B3vJJSIP-mygmoVXn2fNg_1781607796
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-45ef63d1214so2842814f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 04:03:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781607796; x=1782212596;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tm5qA4bByar3MWTXjpvE4+fTboSmxNHbQF0mM/91USI=;
 b=qts5rQokh+5RtBNXbi3r3abl+BhaEGpi2nZcvbDw1Y0B68sDCsXzD2bitrH1kJCCWg
 eXuB7ib2ZtSSc7n+DpWy9q7sLeZ5gT5t7S9yUEuquUi9C/Gc+r/ZEkBI4/ghI1IWwi4P
 NxpAwK7SmaMEWS3piLijHBZZRditGARZI/yyCZChcKlO+SkLE9Dm5EE7/VJSXGeNKsY8
 yZhv+eicC5nTfWByhfzkG0Al50ukDGXIIDe9ytLp14GkAF19AyVC1peyjIBjHZmwiAoT
 F90GL0c5sjTVPk7eilCMomnkfOyLPW396MAWVJs2iDm/ys9us0uWOpx7pYNsr5cJTuV2
 2c2Q==
X-Gm-Message-State: AOJu0YyOpwOma0k4k0SDFtAX+hdK+9e6geWtKfAyTAngP/UYh5ahR8HC
 2R1c/IQBWFpESV1PQ26aPe4c85Hd7YY0TPTXPbs3bbfhzE/+Q6e6G2Sx2RFSQtq29u/RaemRAId
 P2doLo2eAPC0VRL6Zay/MTJ//2MncyEgY9ZfeHiLV++hctrsbz333KWfZ/q6qIVu7hAee8yw36u
 MJLZujJx9XyI17Vg2CDr0R7XvFI0ieX1hMSYYi5aF/+cZVq6iBGCq3Pw==
X-Gm-Gg: Acq92OFcjqBGkdVHRYqMtB0i7GKFxvROlK6LojQDLPo8b4Mh39gXshjjNbYedT29QkK
 fxiVI1tWrDWRqhzkOeErwpdqGKirIxXZcLWK1KEAzelMz5E5BZREnTr2xzRdi5Et8s0Yq4VQ2OA
 aEshlIJZZKiTz4jlO4h32fIsDRN6348iYL9zBiuvFqlN5kxwJwsiawJ8GQx8+miVEB7o7GcmfCs
 zJ6O8PEzNUEyvKQS212YPS/zqacFJmVE9WklvqDy2XXwUIghAixdUU3KfQbGz7XviozOy9PT8CZ
 QSjg5lVXxR6N5nuft89J6ZFWkNoe2klzFAFhN/RmYndtA+LycVKENtbYEYjLd4PZSqR5ZQ89z/B
 mfO4PXJuJT+0Dfu9R37LI/FZEHyjfeHSuXVezKd4g5KEPd46/gVvXDNUMbwmAmzVjVVc=
X-Received: by 2002:a05:600c:4ec6:b0:490:3d62:f5e1 with SMTP id
 5b1f17b1804b1-4922ffb6836mr46074965e9.22.1781607795649; 
 Tue, 16 Jun 2026 04:03:15 -0700 (PDT)
X-Received: by 2002:a05:600c:4ec6:b0:490:3d62:f5e1 with SMTP id
 5b1f17b1804b1-4922ffb6836mr46073585e9.22.1781607794799; 
 Tue, 16 Jun 2026 04:03:14 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:17d1:b608:8e5:8aea:ed86:b36b?
 ([2a0d:3344:17d1:b608:8e5:8aea:ed86:b36b])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-49230a58becsm50581875e9.7.2026.06.16.04.03.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2026 04:03:13 -0700 (PDT)
Message-ID: <283859f6-8a60-49be-8439-146f8c2a6bb5@redhat.com>
Date: Tue, 16 Jun 2026 14:03:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, jiri@resnulli.us, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 corbet@lwn.net, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch
References: <20260614161131.192068-1-mheib@redhat.com>
From: mohammad heib <mheib@redhat.com>
In-Reply-To: <20260614161131.192068-1-mheib@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: DZE-mgz8R1IzoZxV2T-MdjDG6dQi9wW9b25P7pitF0g_1781607796
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1781607798;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tm5qA4bByar3MWTXjpvE4+fTboSmxNHbQF0mM/91USI=;
 b=fgYOYfbPfPRfYnYRvpexQEi327Uiub0y+kTF52I/O29s53yZtxz2b42IfP1FAZQO5nolEx
 2NjOCaayYhcBIBHL1g6RQ65w61VJBokvMYWHm/0Pw6wcZWQaEmXyxMZiHm0do9mCuqF7bI
 Jz3XV6AgxMsGL/oMIuVu231K6mmbGDA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=fgYOYfbP
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: add devlink parameter
 for Flow Director ATR sample rate
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mheib@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7609968E99F



On 6/14/26 7:11 PM, mheib@redhat.com wrote:
> From: Mohammad Heib <mheib@redhat.com>
> 
> The i40e driver uses Flow Director ATR to periodically update flow
> steering information for active TCP flows. The update frequency is
> currently controlled by I40E_DEFAULT_ATR_SAMPLE_RATE and is fixed at
> driver build time.
> 
> On systems with a large number of queues and high-rate TCP workloads,
> the default sampling interval can result in frequent Flow Director
> reprogramming for long-lived flows.
> 
> The amount of TCP packet reordering observed on some systems is
> sensitive to the ATR sampling interval. Increasing the interval reduces
> Flow Director programming activity and can significantly reduce the
> associated reordering.
> 
> Since the optimal sampling interval depends on the workload and system
> configuration, a single fixed value is not suitable for all deployments.
> 
> Add a devlink parameter to allow administrators to tune the ATR sample
> rate at runtime without rebuilding the driver or disabling ATR
> functionality entirely.
> 
> Signed-off-by: Mohammad Heib <mheib@redhat.com>
> ---
>   Documentation/networking/devlink/i40e.rst     | 19 ++++++
>   drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
>   .../net/ethernet/intel/i40e/i40e_devlink.c    | 65 +++++++++++++++++++
>   drivers/net/ethernet/intel/i40e/i40e_main.c   |  4 +-
>   drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  4 +-
>   5 files changed, 90 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
> index 51c887f0dc83..704469aa9acf 100644
> --- a/Documentation/networking/devlink/i40e.rst
> +++ b/Documentation/networking/devlink/i40e.rst
> @@ -40,6 +40,25 @@ Parameters
>   
>           The default value is ``0`` (internal calculation is used).
>   
> +.. list-table:: Driver specific parameters implemented
> +    :widths: 5 5 90
> +
> +    * - Name
> +      - Mode
> +      - Description
> +    * - ``atr_sample_rate``
> +      - runtime
> +      - Controls how frequently Flow Director ATR updates flow steering
> +        information for active TCP flows.
> +
> +        ATR programs Flow Director entries based on sampled transmitted
> +        packets. The sampling interval is specified as the number of
> +        transmitted packets between ATR updates.
> +
> +        Lower values increase Flow Director programming activity, while
> +        higher values reduce the update frequency.
> +
> +        The default value is ``20``.
>   
>   Info versions
>   =============
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index 1b6a8fbaa648..88eb40ee45f0 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -487,6 +487,7 @@ struct i40e_pf {
>   	u16 rss_size_max;          /* HW defined max RSS queues */
>   	u16 fdir_pf_filter_count;  /* num of guaranteed filters for this PF */
>   	u16 num_alloc_vsi;         /* num VSIs this driver supports */
> +	u32 atr_sample_rate;
>   	bool wol_en;
>   
>   	struct hlist_head fdir_filter_list;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> index 229179ccc131..16e51762db45 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> @@ -33,12 +33,77 @@ static int i40e_max_mac_per_vf_get(struct devlink *devlink,
>   	return 0;
>   }
>   
> +static int i40e_atr_sample_rate_set(struct devlink *devlink,
> +				    u32 id,
> +				    struct devlink_param_gset_ctx *ctx,
> +				    struct netlink_ext_ack *extack)
> +{
> +	struct i40e_pf *pf = devlink_priv(devlink);
> +	struct i40e_vsi *vsi;
> +	u32 sample_rate = ctx->val.vu32;
> +	int i;
> +
> +	pf->atr_sample_rate = sample_rate;
> +
> +	if (!test_bit(I40E_FLAG_FD_ATR_ENA, pf->flags))
> +		return 0;
> +
> +	vsi = i40e_pf_get_main_vsi(pf);
> +	if (!vsi)
> +		return 0;
> +
> +	for (i = 0; i < vsi->num_queue_pairs; i++) {
> +		if (!vsi->tx_rings[i])
> +			continue;
> +		vsi->tx_rings[i]->atr_sample_rate = sample_rate;
> +		vsi->tx_rings[i]->atr_count = 0;
> +	}
> +
> +	return 0;
> +}
> +
> +static int i40e_atr_sample_rate_get(struct devlink *devlink,
> +				    u32 id,
> +				    struct devlink_param_gset_ctx *ctx,
> +				    struct netlink_ext_ack *extack)
> +{
> +	struct i40e_pf *pf = devlink_priv(devlink);
> +
> +	ctx->val.vu32 = pf->atr_sample_rate;
> +
> +	return 0;
> +}
> +
> +static int i40e_atr_sample_rate_validate(struct devlink *devlink, u32 id,
> +					 union devlink_param_value val,
> +					 struct netlink_ext_ack *extack)
> +{
> +	if (!val.vu32) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "ATR sample rate must be greater than 0");
> +		return -EINVAL;
> +	}
> +	return 0;
> +}
> +
> +enum i40e_dl_param_id {
> +	I40E_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> +	I40E_DEVLINK_PARAM_ID_ATR_SAMPLE_RATE,
> +};
> +
>   static const struct devlink_param i40e_dl_params[] = {
>   	DEVLINK_PARAM_GENERIC(MAX_MAC_PER_VF,
>   			      BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>   			      i40e_max_mac_per_vf_get,
>   			      i40e_max_mac_per_vf_set,
>   			      NULL),
> +	DEVLINK_PARAM_DRIVER(I40E_DEVLINK_PARAM_ID_ATR_SAMPLE_RATE,
> +			     "atr_sample_rate",
> +			     DEVLINK_PARAM_TYPE_U32,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     i40e_atr_sample_rate_get,
> +			     i40e_atr_sample_rate_set,
> +			     i40e_atr_sample_rate_validate),
>   };
>   
>   static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t len)
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index d59750c490f4..9c8144970a34 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -3458,7 +3458,7 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
>   
>   	/* some ATR related tx ring init */
>   	if (test_bit(I40E_FLAG_FD_ATR_ENA, vsi->back->flags)) {
> -		ring->atr_sample_rate = I40E_DEFAULT_ATR_SAMPLE_RATE;
> +		ring->atr_sample_rate = vsi->back->atr_sample_rate;
>   		ring->atr_count = 0;
>   	} else {
>   		ring->atr_sample_rate = 0;
> @@ -12745,6 +12745,8 @@ static int i40e_sw_init(struct i40e_pf *pf)
>   		}
>   	}
>   
> +	pf->atr_sample_rate = I40E_DEFAULT_ATR_SAMPLE_RATE;
> +
>   	if ((pf->hw.func_caps.fd_filters_guaranteed > 0) ||
>   	    (pf->hw.func_caps.fd_filters_best_effort > 0)) {
>   		set_bit(I40E_FLAG_FD_ATR_ENA, pf->flags);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> index bb741ff3e5f2..7e29e9244c3a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> @@ -372,8 +372,8 @@ struct i40e_ring {
>   	u16 next_to_clean;
>   	u16 xdp_tx_active;
>   
> -	u8 atr_sample_rate;
> -	u8 atr_count;
> +	u32 atr_sample_rate;
> +	u32 atr_count;
>   
>   	bool ring_active;		/* is ring online or not */
>   	bool arm_wb;		/* do something to arm write back */

Hi Aleksandr,

Your concern is indeed valid. I'm not 100% sure whether devlink 
callbacks are still protected by rtnl_lock after the large locking 
changes that recently went into net/core.

That said, I'm wondering whether we need to store the ATR sample rate 
per ring at all. As far as I can tell, there is no option to configure 
the sample rate independently for individual rings, so maintaining a 
copy in every ring may not be necessary.

Would it make sense to remove the per-ring copy entirely and keep the 
sample rate only at the PF level? That would avoid the need to walk the 
rings from the devlink callback and would eliminate the race you pointed 
out.

Thanks Piotr for the review. I'll address your comment in v2.


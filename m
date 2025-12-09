Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF00CAF560
	for <lists+intel-wired-lan@lfdr.de>; Tue, 09 Dec 2025 09:51:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A54114035E;
	Tue,  9 Dec 2025 08:51:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k7KMohKxSExH; Tue,  9 Dec 2025 08:51:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D876440366
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765270279;
	bh=jlVDIn9k27FbBc0+cEEfhv65iHG7OfMYkPiI2oxiscA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U4uMDrvziz3JNkJ0iU5WCpVXZBpCUNQRnhzNiu5zfpoRisdVyO/pSmc2kOy3t5EMH
	 25GlbLXKTzFADMtbsEE0zKDi7Wja3dfZv7LMOBXbMqRAobknz7XSSNjvJHGBf95a7y
	 t/7kqVy7GyT8P8jvHaNf15D9GbrDfeUFHVXDcBTDh/yjAe0VvXEYIV9fpTfAaxugnB
	 yCXExw9SCqNFwYF8I3EojIzVnMxe1awh93MWRnL1yra7A+UYnYKe0ViARVil6bEaz1
	 uyOUaQy2teZ4oMdlRwH/butrVGZwS4qKlv4Mk2DsnnBPlmo3504qv2x2kagDviPk/v
	 nMOLOtnPrcFew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D876440366;
	Tue,  9 Dec 2025 08:51:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id ABBE0197
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 08:51:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 925828080E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 08:51:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vxWrw1nVx3Bz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Dec 2025 08:51:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 767B380721
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 767B380721
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 767B380721
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 08:51:17 +0000 (UTC)
X-CSE-ConnectionGUID: ijVERGm4QASI4Nwii/nKDQ==
X-CSE-MsgGUID: 43uX54lqTJWbyjSJFRG5xA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="84828715"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="84828715"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:51:16 -0800
X-CSE-ConnectionGUID: kx+naRVlSXeVsH0TZIchVg==
X-CSE-MsgGUID: 7/7BMzhTRjOgvmeG6u2ulw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="219519721"
Received: from ajbrooks-mobl1.amr.corp.intel.com (HELO [10.246.16.176])
 ([10.246.16.176])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:51:14 -0800
Message-ID: <fb53b7bf-9d4e-4492-9d99-90e7e8105205@linux.intel.com>
Date: Tue, 9 Dec 2025 09:51:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Cody Haas <chaas@riotgames.com>, intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com
References: <20251203184909.422955-1-chaas@riotgames.com>
 <20251203184909.422955-2-chaas@riotgames.com>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20251203184909.422955-2-chaas@riotgames.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765270277; x=1796806277;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=aW806LjWex1w48BFXr87atyPqRCDe4xpIiu5uFLvc3A=;
 b=nHoONBfidh1FNRyQWKoUCkXbFZonpeslAGRsS7n0zLMes991RpBcwEIk
 VGejmEBjT4uT/PhIKYyQUu34jOuY5C0vJRNf/Y8a2YRc3JcTeYUZcay20
 aRqxN+MthquS+fmZnzHZnnUd9xQB9nvORWD/Vf4XoaocYHK/GSV+euYoG
 KCfxjcwSd7MT48lJ6aajo6+0mekI3rtv9lRFX0pXtlfeOkNVwO6Q/T8zP
 UIoXzx0UC4JZ5ao2bu79EPPGg68MuZFl1jXaY1nB4MzQs8tMcgjrGL3hy
 m1M9aFhNlOZZ5yv1Y3YCPocCzq52Dumk1zVFSpUc99ZpWb0uShcGCdqzg
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nHoONBfi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/1] ice: Fix persistent
 failure in ice_get_rxfh
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

Hey Cody,

Thank you for finding the bug and proposing a fix. In addition to 
Przemek's review, below are some minor nitpicks from me, otherwise looks 
good to me!

On 2025-12-03 7:49 PM, Cody Haas wrote:
> Several ioctl functions have the ability to call ice_get_rxfh, however
> all of these iotctl functions do not provide all of the expected

typo s/iotctl/ioctl

> information in ethtool_rxfh_param. For example,ethtool_get_rxfh_indir does

punctuation: missing space after "For example,"

> not provide an rss_key. Previously, caused ethtool_get_rxfh_indir to
> always fail with an -EINVAL.
> 
> This change draws inspiration from i40e_get_rss to handle this
> situation, by only calling the appropriate rss helpers when the
> necessary information has been provided via ethtool_rxfh_param.
> 
> Signed-off-by: Cody Haas <chaas@riotgames.com>
> Closes: https://lore.kernel.org/intel-wired-lan/CAH7f-UKkJV8MLY7zCdgCrGE55whRhbGAXvgkDnwgiZ9gUZT7_w@mail.gmail.com/
> 
> ---
>   drivers/net/ethernet/intel/ice/ice.h         |  1 +
>   drivers/net/ethernet/intel/ice/ice_ethtool.c |  6 +----
>   drivers/net/ethernet/intel/ice/ice_main.c    | 28 ++++++++++++++++++++
>   3 files changed, 30 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index c9104b13e1d2..87f4098324ed 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -953,6 +953,7 @@ void ice_map_xdp_rings(struct ice_vsi *vsi);
>   int
>   ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
>   	     u32 flags);
> +int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
>   int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);
>   int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);
>   int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index b0805704834d..a5c139cc536d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3649,11 +3649,7 @@ ice_get_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh)
>   	if (!lut)
>   		return -ENOMEM;
>   
> -	err = ice_get_rss_key(vsi, rxfh->key);
> -	if (err)
> -		goto out;
> -
> -	err = ice_get_rss_lut(vsi, lut, vsi->rss_table_size);
> +	err = ice_get_rss(vsi, rxfh->key, lut, vsi->rss_table_size);
>   	if (err)
>   		goto out;
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index b084839eb811..7b409b9fca5c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -8072,6 +8072,34 @@ int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
>   	return status;
>   }
>   
> +/**
> + * ice_get_rss - Get RSS LUT and/or key
> + * @vsi: Pointer to VSI structure
> + * @seed: Buffer to store the key in
> + * @lut: Buffer to store the lookup table entries
> + * @lut_size: Size of buffer to store the lookup table entries
> + *
> + * Returns 0 on success, negative on failure
> + */
> +int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
> +{
> +	int status = 0;
> +
> +	if (lut) {

nit: in function arguments "seed" appears first, maybe consider 
switching the order of the if statements so they appear in the same 
order as in function declaration? It would also match the i40e 
implementation then

Thanks,
Dawid

> +		status = ice_get_rss_lut(vsi, lut, lut_size);
> +		if (status)
> +			return status;
> +	}
> +
> +	if (seed) {
> +		status = ice_get_rss_key(vsi, seed);
> +		if (status)
> +			return status;
> +	}
> +
> +	return status;
> +}
> +
>   /**
>    * ice_set_rss_hfunc - Set RSS HASH function
>    * @vsi: Pointer to VSI structure


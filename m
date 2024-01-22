Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E7F836357
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jan 2024 13:36:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FC0F824DD;
	Mon, 22 Jan 2024 12:36:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FC0F824DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705926998;
	bh=i3+OM7b32DsHurqc92jj3KBYwZrTfrLHuI0lmFac8Yo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mQ/chqQoOb0HdWx8RpHwzPx5jDJiiMv0Trf80BeszR6s01uYpltVcgKX7dvA1WRNj
	 9GdQVv7PHqLky4OCpjCD5xhgMxv3sTjy//WJo4asFhhosDzTnp4DCH/K9Xnw7g0bYR
	 ZIEERSfLcfeIq5TfJFzzHxi7iSxPKGZSGZu6XLJ2buqZO8+zv11ohtkbe9bq3BPBaG
	 TqDEfAmQrM7twexwSPEnT+RIIcxOX/3/vbZOhFmrifJKTjAbe6h+GOsmGP4qRWf/Sr
	 FVJvcq2dIIBid19xagf9SxcIwDVPOG8NsfJyPJKgvb+Tun0vRZM2YAprBeoKwWwKPC
	 9PP9trseNqeMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WVCqoERpJ6gp; Mon, 22 Jan 2024 12:36:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5050A818DC;
	Mon, 22 Jan 2024 12:36:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5050A818DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06E941BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 12:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D383160BA9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 12:36:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D383160BA9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nDQyLpoQIMcn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jan 2024 12:36:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E75E860BD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 12:36:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E75E860BD0
X-IronPort-AV: E=McAfee;i="6600,9927,10960"; a="8569489"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; 
   d="scan'208";a="8569489"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 04:36:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; d="scan'208";a="19973510"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.237.140.122])
 ([10.237.140.122])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 04:36:28 -0800
Message-ID: <324a30c2-c4a0-487e-bad9-9977c6e503ba@linux.intel.com>
Date: Mon, 22 Jan 2024 13:36:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20240119211517.127142-1-david.m.ertman@intel.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20240119211517.127142-1-david.m.ertman@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705926991; x=1737462991;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=FonPDTkq8bm+MzOhIHp03CNgxfktHG90NHq3K6u9+R8=;
 b=ejqsdNFIBQj6bK1+vGQ+C6LsBIwg//AFuZ1+07Yv8S1iY3cEXaMy8Fas
 RXQ8Sedo+8zYzG+WDWTkJ9GMtC0OPTuZVuqrFjB18yeT7A2D3tgFpLKuV
 QjAKj078EpmSuojXhrs8BZiF9L0vI0rCpFC4gf+e+4vZ/mjGiDwQ0jRgm
 ykUXf6oJNCp8L+0PdqiV2QbUw+ti0RX/fVGwugz1SX7CjAvigXMpi1rSS
 xv/ttc/AZjX6SDRyidnAVRJJHJUzDYkG85mdhxbP6mGWyAZKCf4kT2Bde
 K/9U5wju88BTD9rHOXTwCwwU97eIO9pprcF4o+4mBQV65uLnAj9G9qzNK
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ejqsdNFI
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add check for lport
 extraction to LAG init
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 19.01.2024 22:15, Dave Ertman wrote:
> To fully support initializing the LAG support code, a DDP package that
> extracts the logical port from the metadata is required.  If such a
> package is not present, there could be difficulties in supporting some
> bond types.
> 
> Add a check into the initialization flow that will bypass the new paths
> if any of the support pieces are missing.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>

> Fixes: df006dd4b1dc ("ice: Add initial support framework for LAG")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 25 ++++++++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_lag.h |  3 +++
>  2 files changed, 26 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
> index 2a25323105e5..467372d541d2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -151,6 +151,27 @@ ice_lag_find_hw_by_lport(struct ice_lag *lag, u8 lport)
>  	return NULL;
>  }
>  
> +/**
> + * ice_pkg_has_lport_extract - check if lport extraction supported
> + * @hw: HW struct
> + */
> +static bool ice_pkg_has_lport_extract(struct ice_hw *hw)
> +{
> +	int i;
> +
> +	for (i = 0; i < hw->blk[ICE_BLK_SW].es.count; i++) {
> +		u16 offset;
> +		u8 fv_prot;
> +
> +		ice_find_prot_off(hw, ICE_BLK_SW, ICE_SW_DEFAULT_PROFILE, i,
> +				  &fv_prot, &offset);
> +		if (fv_prot == ICE_FV_PROT_MDID &&
> +		    offset == ICE_LP_EXT_BUF_OFFSET)
> +			return true;
> +	}
> +	return false;
> +}
> +
>  /**
>   * ice_lag_find_primary - returns pointer to primary interfaces lag struct
>   * @lag: local interfaces lag struct
> @@ -1206,7 +1227,7 @@ static void ice_lag_del_prune_list(struct ice_lag *lag, struct ice_pf *event_pf)
>  }
>  
>  /**
> - * ice_lag_init_feature_support_flag - Check for NVM support for LAG
> + * ice_lag_init_feature_support_flag - Check for package and NVM support for LAG
>   * @pf: PF struct
>   */
>  static void ice_lag_init_feature_support_flag(struct ice_pf *pf)
> @@ -1219,7 +1240,7 @@ static void ice_lag_init_feature_support_flag(struct ice_pf *pf)
>  	else
>  		ice_clear_feature_support(pf, ICE_F_ROCE_LAG);
>  
> -	if (caps->sriov_lag)
> +	if (caps->sriov_lag && ice_pkg_has_lport_extract(&pf->hw))
>  		ice_set_feature_support(pf, ICE_F_SRIOV_LAG);
>  	else
>  		ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
> index ede833dfa658..183b38792ef2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.h
> @@ -17,6 +17,9 @@ enum ice_lag_role {
>  #define ICE_LAG_INVALID_PORT 0xFF
>  
>  #define ICE_LAG_RESET_RETRIES		5
> +#define ICE_SW_DEFAULT_PROFILE		0
> +#define ICE_FV_PROT_MDID		255
> +#define ICE_LP_EXT_BUF_OFFSET		32
>  
>  struct ice_pf;
>  struct ice_vf;

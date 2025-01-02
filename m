Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D7F9FF67F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 07:44:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23A5340352;
	Thu,  2 Jan 2025 06:44:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4EH3-tAan_94; Thu,  2 Jan 2025 06:44:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43DF34034A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735800281;
	bh=NKW1R1QSIDP800MhHAWqg2uTJIEDJOCAnRa2+8oDpUw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yMuKbQAnkW8h8wOogwTgi4X8kGAhrs0nzKAKbIBhZv35yqebHrbFcKxiZqxZZD1Bw
	 4K866WmlGKzkMjPg6lY9oNoyFPQ4BTUUQC/7OwgjEHmEqQgE7ky6dUBzTDRSFCxoQo
	 Ga4JNAYym7ofpeQqJHbKDpTDbrWuIaSO/zAO5iau/imbULOebe48mpacJsiAUUGJ2P
	 6HWmNmmHg46E7h8hIrDS8RwaE8EQ6VB9695JNBT+k2Wwik6zi19SQ67Pzaj6lFh5+t
	 oXD4dEGl+2q2cRWmFUnCXHp20MIN/E79CcpbODotWtOnZZlxUx37lEr2+Zz6ydk/pg
	 ph5ScwzND+mjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43DF34034A;
	Thu,  2 Jan 2025 06:44:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AC06BE0F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 06:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A980400FC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 06:44:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PIyCR7FQDhGg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 06:44:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 30470400C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30470400C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30470400C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 06:44:36 +0000 (UTC)
X-CSE-ConnectionGUID: eGpEbkUoTBOUDifUP6YmXg==
X-CSE-MsgGUID: yrWwbT/BQfC/IEASecQM7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="36185545"
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="36185545"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2025 22:44:36 -0800
X-CSE-ConnectionGUID: r8b08wThQVqDfAzLwiPYCg==
X-CSE-MsgGUID: fnwxhpjpRmq/Y4AqIahmyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106432577"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2025 22:44:35 -0800
Date: Thu, 2 Jan 2025 07:41:19 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z3Y1D1LRPUR6gT0Z@mev-dev.igk.intel.com>
References: <20241231095044.433940-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241231095044.433940-1-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735800277; x=1767336277;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=geOnRNQ3Qtavp0m1Yc8+qBkg2cu607vROJKrQgPFj54=;
 b=J17R9IhjI29haitHLaA6B5MzpGxuhqM6v14zAfBFLWZJINIHtI3eJ2OP
 Ksx/7DgLe7lG47JBpfVO/i8dKhoYG4VaJznD2aDHOloEBuLOnmU6PktaV
 vN31VOLB0vVkLSnwy6MCwhD9p9lAMXWKPIcHM1vFzCGKvZQslEgCtLOVp
 SjqxHnm2PTBhHX0kVlJbk60GnBG58V0jy7xI5Wlb2bZ1RKeBN9bOmzsXp
 Lon8jlQdmdbsqcdTbMjMciul4+dBTXsiPbQ97kwwkaZVz+US5XeP6sLTB
 q78QaI5nJ3uz0SxPhiKMT9JVLqEenMIRg1egxGv2h5hO0QkVuPvbqtw+l
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J17R9Ihj
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: remove invalid
 parameter of equalizer
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

On Tue, Dec 31, 2024 at 10:50:44AM +0100, Mateusz Polchlopek wrote:
> It occurred that in the commit 70838938e89c ("ice: Implement driver
> functionality to dump serdes equalizer values") the invalid DRATE parameter
> for reading has been added. The output of the command:
> 
>   $ ethtool -d <ethX>
> 
> returns the garbage value in the place where DRATE value should be
> stored.
> 
> Remove mentioned parameter to prevent return of corrupted data to
> userspace.
> 
> Fixes: 70838938e89c ("ice: Implement driver functionality to dump serdes equalizer values")
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 1 -
>  drivers/net/ethernet/intel/ice/ice_ethtool.c    | 1 -
>  drivers/net/ethernet/intel/ice/ice_ethtool.h    | 1 -
>  3 files changed, 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 3bf05b135b35..73756dbfc77f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1498,7 +1498,6 @@ struct ice_aqc_dnl_equa_param {
>  #define ICE_AQC_RX_EQU_POST1 (0x12 << ICE_AQC_RX_EQU_SHIFT)
>  #define ICE_AQC_RX_EQU_BFLF (0x13 << ICE_AQC_RX_EQU_SHIFT)
>  #define ICE_AQC_RX_EQU_BFHF (0x14 << ICE_AQC_RX_EQU_SHIFT)
> -#define ICE_AQC_RX_EQU_DRATE (0x15 << ICE_AQC_RX_EQU_SHIFT)
>  #define ICE_AQC_RX_EQU_CTLE_GAINHF (0x20 << ICE_AQC_RX_EQU_SHIFT)
>  #define ICE_AQC_RX_EQU_CTLE_GAINLF (0x21 << ICE_AQC_RX_EQU_SHIFT)
>  #define ICE_AQC_RX_EQU_CTLE_GAINDC (0x22 << ICE_AQC_RX_EQU_SHIFT)
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 3072634bf049..f241493a6ac8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -710,7 +710,6 @@ static int ice_get_tx_rx_equa(struct ice_hw *hw, u8 serdes_num,
>  		{ ICE_AQC_RX_EQU_POST1, rx, &ptr->rx_equ_post1 },
>  		{ ICE_AQC_RX_EQU_BFLF, rx, &ptr->rx_equ_bflf },
>  		{ ICE_AQC_RX_EQU_BFHF, rx, &ptr->rx_equ_bfhf },
> -		{ ICE_AQC_RX_EQU_DRATE, rx, &ptr->rx_equ_drate },
>  		{ ICE_AQC_RX_EQU_CTLE_GAINHF, rx, &ptr->rx_equ_ctle_gainhf },
>  		{ ICE_AQC_RX_EQU_CTLE_GAINLF, rx, &ptr->rx_equ_ctle_gainlf },
>  		{ ICE_AQC_RX_EQU_CTLE_GAINDC, rx, &ptr->rx_equ_ctle_gaindc },
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.h b/drivers/net/ethernet/intel/ice/ice_ethtool.h
> index 8f2ad1c172c0..23b2cfbc9684 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.h
> @@ -15,7 +15,6 @@ struct ice_serdes_equalization_to_ethtool {
>  	int rx_equ_post1;
>  	int rx_equ_bflf;
>  	int rx_equ_bfhf;
> -	int rx_equ_drate;
>  	int rx_equ_ctle_gainhf;
>  	int rx_equ_ctle_gainlf;
>  	int rx_equ_ctle_gaindc;
> -- 
> 2.38.1

Thanks for fixing
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

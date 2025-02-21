Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD601A3ED54
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 08:30:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7281683F8C;
	Fri, 21 Feb 2025 07:30:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u3GIzyob9RZI; Fri, 21 Feb 2025 07:30:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5185B83F7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740123019;
	bh=qEAzNd9+5qzEEWEH+wVY+NW5ztr8U1BnyEgXrExKhgE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8tFFsF4ZxhhY/8cWjAQsTs9SZoXV1VZqJ+VaLbdbeyaLLAXK+y7PmAjlcRiE9Gh0J
	 U7I2D39ldxgz3yzpaCNfoQ8FZbogx9899ylC+6gkEGFGCkf81dBt1DCA9EsciRhFV6
	 QBl/8EZkXWouifAC4QnfGjNeK/XcaVgQOfcS6uFqs1wa0fBQxqyXqPLJZrv17g72eh
	 HE0u/m6Q0rNUkAGaYe5HWKEeEeoyKTyv3Zm9YTiNugq59u9GCqP8NSG3nTlojiORPH
	 aORFEph4yspfnoN/NQz3iZNK9lhJMwLROtc/Xenv070flX2kAeLJ7WCla7B9n2MQLb
	 d1ucoAIUNkZxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5185B83F7F;
	Fri, 21 Feb 2025 07:30:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 08225194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 07:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E059640F4E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 07:30:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fQkSlnb1Spv3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 07:30:15 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 79F3240E3D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79F3240E3D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 79F3240E3D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 07:30:15 +0000 (UTC)
X-CSE-ConnectionGUID: UBRP/vsZS82zVZCKnAaivA==
X-CSE-MsgGUID: b0eB1mUzSHWwO1s26YPBeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="40788832"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="40788832"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 23:30:15 -0800
X-CSE-ConnectionGUID: no4GszDkSUSH2NH7XELefg==
X-CSE-MsgGUID: IA/h4Um2SV25LL2h3Z01XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115138465"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 23:30:13 -0800
Date: Fri, 21 Feb 2025 08:26:36 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <Z7gqrJkNSNrRg6IK@mev-dev.igk.intel.com>
References: <20250220-jk-e830-ddp-loading-fix-v2-1-7c9663a442c1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220-jk-e830-ddp-loading-fix-v2-1-7c9663a442c1@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740123015; x=1771659015;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=AhHfBgKRtGZMAum8xb/RZz7VZsGhWi8VZDiqiEf3x8s=;
 b=b/kfibFt/Helnur1PjeMI6mtkdiLFjpsGiyNT9h3gP3yxDMuAl94jVyD
 FxzRys7/Zu4zvsI3FhCpihZm2cgK2v2fkMuGot7lgJI1qpDhK+ZyJBIWo
 2slJ+tG3l01/gCGlIx/O8+6xvFMRvcGXEa33a495RHe5ga5kBDKogV+OC
 tuqfeG8bEtKIecE+UX32CLR7zADkxKF07+R4gDqtGZ5IoI0wluP3K1hU/
 BjKEHvEwbLzz1OHJZ3aVZTKJuI5IXm3/KJXoAUzRq9r8CJBzaiTJm2u9h
 PSm36GvLdpKU5KQFVG3gS13pZn7wchtVWF8VVI31M/rZ480n22jz50bUK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b/kfibFt
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Get Tx Topology
 AQ command error on E830
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

On Thu, Feb 20, 2025 at 03:15:24PM -0800, Jacob Keller wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> The Get Tx Topology AQ command (opcode 0x0418) has different read flag
> requriements depending on the hardware/firmware. For E810, E822, and E823
> firmware the read flag must be set, and for newer hardware (E825 and E830)
> it must not be set.
> 
> This results in failure to configure Tx topology and the following warning
> message during probe:
> 
>   DDP package does not support Tx scheduling layers switching feature -
>   please update to the latest DDP package and try again
> 
> The current implementation only handles E825-C but not E830. It is
> confusing as we first check ice_is_e825c() and then set the flag in the set
> case. Finally, we check ice_is_e825c() again and set the flag for all other
> hardware in both the set and get case.
> 
> Instead, notice that we always need the read flag for set, but only need
> the read flag for get on E810, E822, and E823 firmware. Fix the logic to
> check the MAC type and set the read flag in get only on the older devices
> which require it.
> 
> Fixes: ba1124f58afd ("ice: Add E830 device IDs, MAC type and registers")
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes in v2:
> - Update commit message to include the warning users see
> - Rework code to set the flag for E810 and E822 instead of to *not* set it
>   for E825-C and E830. We anticipate that future hardware and firmware
>   versions will behave like E830.
> - Link to v1: https://lore.kernel.org/r/20250218-jk-e830-ddp-loading-fix-v1-1-47dc8e8d4ab5@intel.com
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index 03988be03729b76e96188864896527060c8c4d5b..59323c019544fc1f75dcb8a5d31e0b0c82932fe1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -2345,15 +2345,15 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
>  			cmd->set_flags |= ICE_AQC_TX_TOPO_FLAGS_SRC_RAM |
>  					  ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW;
>  
> -		if (ice_is_e825c(hw))
> -			desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
>  	} else {
>  		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_tx_topo);
>  		cmd->get_flags = ICE_AQC_TX_TOPO_GET_RAM;
> -	}
>  
> -	if (!ice_is_e825c(hw))
> -		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +		if (hw->mac_type == ICE_MAC_E810 ||
> +		    hw->mac_type == ICE_MAC_GENERIC)
> +			desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +	}
>  
>  	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
>  	if (status)
> 

Thanks for fixing
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

> ---
> base-commit: 992ee3ed6e9fdd0be83a7daa5ff738e3cf86047f
> change-id: 20250218-jk-e830-ddp-loading-fix-9efdbdfc270a
> 
> Best regards,
> -- 
> Jacob Keller <jacob.e.keller@intel.com>
> 

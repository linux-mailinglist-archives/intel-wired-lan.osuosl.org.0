Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 088C492C40E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 21:47:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0F0A40EFB;
	Tue,  9 Jul 2024 19:47:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UtlPffrNp085; Tue,  9 Jul 2024 19:47:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3BEA40EF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720554458;
	bh=OoMEc6sCogQMr4CPRlP2OfY7P9XwMAPV5RTs3I/8rjQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hrjl2zIAe5T2y0jk8jBnb1wQN1KVdAo+YhItBBqanQb0LRFQDIUIZPatIdf5+lEEN
	 KT8RHEAJh57JaD5lNmaMcFjxDNREoXElYbW6aFL0tKsxgHd4bXVkZNpAOMHUE63VK/
	 13wTv9MsgpN6xyHBar4EYaJRI4gONRETe5MCC9shokQi8CGy3KqzgTKvs0iY9HrKUy
	 4nteiUDntGXhuIz7+ys/Kqe5yn0CGsbilxhKOrqqF8JzvO2Y4bhPEcCrQxmXxUZFUz
	 zLBevhWwrKRu91u5QAZrOuS54NiCJXdzcRfB4BYOECsyTeiCtxJhFMhgP8yNFVFwPq
	 iM+gAh+xT6NLA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3BEA40EF1;
	Tue,  9 Jul 2024 19:47:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A19D31BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 19:47:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A82B8184F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 19:47:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Rq4WnJMt769 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 19:47:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4DB958175E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DB958175E
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DB958175E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 19:47:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id E3C81CE12B9;
 Tue,  9 Jul 2024 19:47:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91181C3277B;
 Tue,  9 Jul 2024 19:47:29 +0000 (UTC)
Date: Tue, 9 Jul 2024 20:47:27 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240709194727.GP346094@kernel.org>
References: <20240709123629.666151-6-karol.kolacinski@intel.com>
 <20240709123629.666151-7-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240709123629.666151-7-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720554451;
 bh=usPhssK9WjfWwgT5IfGwxoiTPx1hEMjLfWUX3AgQ3c4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hQWOkfXV4tXT/2QX+I/Nk8eMRXSGZTrzcpDQ3IrP5rd6N5NOQXPuds+dF/jN5I5+D
 bLXW1uFZkl5KY3wiVcSFFJLdrh1fES/dIUszVRObv+q9C14ah/0nYXiMSvUtIYPVPF
 FTx2aa0W6zuUjHsc06qQPEaRs0aq5ZkJSDfKl+eDPdkDJm2nS5pQYEoRR//A3JXfle
 1NHQWBn70+l+uuhYXJs9toS/KZ1ptV9OWnu0W1Uo6K492YwV/0VzY6Cpm9i4DYMoRJ
 /eLubgcM3vskIVyEHjC60nqg5uoHZ1ZNgAdpZzmVdvqLUFNwk21MP9hFr6ZwXp12oW
 RrSf/PDDth8Ug==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hQWOkfXV
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/4] ice: Implement PTP
 support for E830 devices
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
Cc: Paul Greenwalt <paul.greenwalt@intel.com>,
 Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org, Milena Olech <milena.olech@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 09, 2024 at 02:34:55PM +0200, Karol Kolacinski wrote:
> From: Michal Michalik <michal.michalik@intel.com>
> 
> Add specific functions and definitions for E830 devices to enable
> PTP support.
> Introduce new PHY model ICE_PHY_E830.
> E830 devices support direct write to GLTSYN_ registers without shadow
> registers and 64 bit read of PHC time.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 009716a12a26..005054439204 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -307,6 +307,17 @@ bool ice_is_e825c(struct ice_hw *hw)
>  	}
>  }
>  
> +/**
> + * ice_is_e830
> + * @hw: pointer to the hardware structure
> + *
> + * returns true if the device is E830 based, false if not.

Hi Michal, Karol, all,

Please consider documenting return values using a "Return:" or "Returns:"
section.

Flagged by: kernel-doc -none -Wall

> + */
> +bool ice_is_e830(const struct ice_hw *hw)
> +{
> +	return hw->mac_type == ICE_MAC_E830;
> +}
> +
>  /**
>   * ice_clear_pf_cfg - Clear PF configuration
>   * @hw: pointer to the hardware structure

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 06500028c760..3a5dd65a9a80 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -327,6 +327,7 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
>  #define ICE_E810_PLL_FREQ		812500000
>  #define ICE_PTP_NOMINAL_INCVAL_E810	0x13b13b13bULL
>  #define ICE_E810_OUT_PROP_DELAY_NS	1
> +#define ICE_E810_E830_SYNC_DELAY	0
>  #define ICE_E825C_OUT_PROP_DELAY_NS	11
>  
>  /* Device agnostic functions */
> @@ -673,18 +674,21 @@ static inline bool ice_is_primary(struct ice_hw *hw)
>  /* E810 timer command register */
>  #define E810_ETH_GLTSYN_CMD		0x03000344
>  
> +/* E830 timer command register */
> +#define E830_ETH_GLTSYN_CMD		0x00088814
> +
> +/* E810 PHC time register */
> +#define E830_GLTSYN_TIME_L(_tmr_idx)	(0x0008A000 + 0x1000 * (_tmr_idx))
> +
>  /* Source timer incval macros */
>  #define INCVAL_HIGH_M			0xFF
>  
> -/* Timestamp block macros */
> +/* PHY 40b registers macros */
> +#define PHY_EXT_40B_LOW_M		GENMASK(31, 0)
> +#define PHY_EXT_40B_HIGH_M		GENMASK(39, 32)
> +#define PHY_40B_LOW_M			GENMASK(7, 0)
> +#define PHY_40B_HIGH_M			GENMASK(39, 8)

I think that GENMASK_ULL needs to be used here
to avoid breakage on systems with 32bit unsigned long.

>  #define TS_VALID			BIT(0)
> -#define TS_LOW_M			0xFFFFFFFF
> -#define TS_HIGH_M			0xFF
> -#define TS_HIGH_S			32
> -
> -#define TS_PHY_LOW_M			0xFF
> -#define TS_PHY_HIGH_M			0xFFFFFFFF
> -#define TS_PHY_HIGH_S			8
>  
>  #define BYTES_PER_IDX_ADDR_L_U		8
>  #define BYTES_PER_IDX_ADDR_L		4

...

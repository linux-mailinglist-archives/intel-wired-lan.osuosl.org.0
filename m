Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD9294DB65
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Aug 2024 10:19:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EF394042E;
	Sat, 10 Aug 2024 08:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i28AXzHp1Lol; Sat, 10 Aug 2024 08:19:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38CEF400D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723277945;
	bh=je+jYswYrU/88VQkHLsiiGL0cA6JFauYSXkLURxWrm0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M3zAu6Au5MC2HiboV9CFtPMQS7PTFpi9A/cX36Q76I1VS88fRns7iA4KSbrlTiIQN
	 HqlCipKCIfOoRYmSKxMR8pCl/ZA6LJiBzycipEotBdgp1wBCY36QCcGi9N7wBDAhZ4
	 NgfEBl3X4dEtVdkTBFfKna9Z596t6k9qm2WADD/r3lg1IZ71gWRbf5Kl+2jP+KMeJ8
	 gXNE8N9k+6B1lVbE1v+mYedn504UHIJ2rhEOaG7aj9izblWj0et+ipkMvsu6kT2jIH
	 kpv6BKta/NoxJ92DOBYHZUx9eb/Mp5YMOw9VKpeUKof7KqW/DvEGrOQWJeTler/44k
	 Lzd8aClxAkzTw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38CEF400D0;
	Sat, 10 Aug 2024 08:19:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA12F1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 08:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B28A540C0B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 08:19:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3tpWGK8mV-_0 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Aug 2024 08:19:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 590FE409CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 590FE409CF
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 590FE409CF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 08:19:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 21EB8CE1318;
 Sat, 10 Aug 2024 08:18:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2288EC32781;
 Sat, 10 Aug 2024 08:18:53 +0000 (UTC)
Date: Sat, 10 Aug 2024 09:18:51 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240810081851.GE1951@kernel.org>
References: <20240808125825.560093-8-karol.kolacinski@intel.com>
 <20240808125825.560093-10-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240808125825.560093-10-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1723277935;
 bh=ulVYvznxTRZMqqILWZs03OP5L+uvnM9aJD2LtFQDyuY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sk80tMFdm9VLZR8AO2ikkMzgGUchySmfw28rQqPj3yrmog6HZ6ETQGV57BtKa74zl
 FmkrV6D1dZcb1GAuMac/vLbm1V8vJoCEZfOjuV3IpJIHNolq4XmaOci+ig0vP8XbHB
 qHvqDmutQ/iOUC5OUk6C+NvL+XBF+pSm2nV8582r7BYsKIAv285s9S1Bdt2hBdQlFV
 wqVMUoe7VPwX5e1g5qBvmiGFHSMKk7tDuwTrVUvT+hFKo0sDuXo5PAdPC6DReh9TZF
 Tp82wK1H+YNLnUgimhLaKbg7BLQG7xjRWPrcP+4zr7XqJJMcsPv3SM1VdbSboylFpF
 r4NMkcyFfZRjw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=sk80tMFd
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 2/6] ice: Use FIELD_PREP
 for timestamp values
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 08, 2024 at 02:57:44PM +0200, Karol Kolacinski wrote:
> Instead of using shifts and casts, use FIELD_PREP after reading 40b
> timestamp values.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  6 ++++--
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 13 +++++--------
>  2 files changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 00c6483dbffc..d1b87838986d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -1520,7 +1520,8 @@ static int ice_read_ptp_tstamp_eth56g(struct ice_hw *hw, u8 port, u8 idx,
>  	 * lower 8 bits in the low register, and the upper 32 bits in the high
>  	 * register.
>  	 */
> -	*tstamp = ((u64)hi) << TS_PHY_HIGH_S | ((u64)lo & TS_PHY_LOW_M);
> +	*tstamp = FIELD_PREP(PHY_40B_HIGH_M, hi) |
> +		  FIELD_PREP(PHY_40B_LOW_M, lo);
>  
>  	return 0;
>  }
> @@ -4952,7 +4953,8 @@ ice_read_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx, u64 *tstamp)
>  	/* For E810 devices, the timestamp is reported with the lower 32 bits
>  	 * in the low register, and the upper 8 bits in the high register.
>  	 */
> -	*tstamp = ((u64)hi) << TS_HIGH_S | ((u64)lo & TS_LOW_M);
> +	*tstamp = FIELD_PREP(PHY_EXT_40B_HIGH_M, hi) |
> +		  FIELD_PREP(PHY_EXT_40B_LOW_M, lo);
>  
>  	return 0;
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 8a28155b206f..df94230d820f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -673,15 +673,12 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
>  /* Source timer incval macros */
>  #define INCVAL_HIGH_M			0xFF
>  
> -/* Timestamp block macros */
> +/* PHY 40b registers macros */
> +#define PHY_EXT_40B_LOW_M		GENMASK(31, 0)
> +#define PHY_EXT_40B_HIGH_M		GENMASK_ULL(39, 32)
> +#define PHY_40B_LOW_M			GENMASK(7, 0)
> +#define PHY_40B_HIGH_M			GENMASK_ULL(39, 8)
>  #define TS_VALID			BIT(0)
> -#define TS_LOW_M			0xFFFFFFFF
> -#define TS_HIGH_M			0xFF
> -#define TS_HIGH_S			32
> -
> -#define TS_PHY_LOW_M			0xFF
> -#define TS_PHY_HIGH_M			0xFFFFFFFF

I think it it would be best to defer removing (at least)
TS_PHY_LOW_M and TS_PHY_HIGH_M until the following patch,
as they are still in use until then.

As is, this patch results in build failures.

> -#define TS_PHY_HIGH_S			8
>  
>  #define BYTES_PER_IDX_ADDR_L_U		8
>  #define BYTES_PER_IDX_ADDR_L		4
> -- 
> 2.45.2
> 
> 

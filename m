Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A34495D75F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 22:15:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E584C612EC;
	Fri, 23 Aug 2024 20:15:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nKxvRoaMx2fR; Fri, 23 Aug 2024 20:15:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20266612F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724444118;
	bh=V5eh/K+wH6iSFgWji8//t3KZrO430CyC2PF9ErDbweA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i5rCCGnp788JpDIIkulh2YvzvY8sjJ/wdbCvyaOY31uU4WfRgVH6/722Pz7aK2iDE
	 dhqdnMf//jrXNWPBBo5cSIAHfaiJaRjGMVJfyETwNyLehGgVGpbW5n01CrMHe1YMjG
	 EOHtsDOacohZ86hwBdDz1fLny4LQHVIjWd+TzMYsISgAzAk52XVncV4BC0sA8v+706
	 oMG9X13O/u24NCvLVo+n4qmylh5Yb21EgKvG9J/JUB5rzPsnvO7fd8HAKelqh909YJ
	 pGIvsjJFS6ew2qfDF7hxu4BYGku4xJReppAdKB2gAKKySutzS9bTMPhuciw7Q+Djgx
	 MrNI6CCvzLFFQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20266612F2;
	Fri, 23 Aug 2024 20:15:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 734331BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 20:15:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D54340275
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 20:15:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7NQj4qtskEz6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 20:15:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E4D6340025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4D6340025
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E4D6340025
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 20:15:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 756D0CE125C;
 Fri, 23 Aug 2024 20:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 793EEC32786;
 Fri, 23 Aug 2024 20:15:07 +0000 (UTC)
Date: Fri, 23 Aug 2024 21:15:05 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240823201505.GE2164@kernel.org>
References: <20240820102402.576985-8-karol.kolacinski@intel.com>
 <20240820102402.576985-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240820102402.576985-9-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724444108;
 bh=iPCZmFyxZGyShQRLGlDs5tAUzSyhdDeC+x9yUkoqnBA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HSsXpCKnBh5dsnY1H4n+dqJ6K5SdnHdeorEPgez1L/13KDi362DBSHYLbZkh2r7kJ
 0j3lD+sXA0NC3T/q+nchPLdXp/5as7bY+QvR9YEMIANONX0ta5jTu0LxMPsbjO0Nta
 WBchHo7srJX2941HfsAt1W7OYmOShzoSel9sodEo5gslSyD4SX2rP92P9M2GflORsW
 5rbWKYhZ3Vk1LKlaqAot1RSyIoo1NS9zemN2MRAMiqjshb6isb3Tl7Fp3nvVQVq0bN
 zcxJq7IrmQdVQk5nofZ954gCm6X7+rI/BA588GzIKil/2SUmymM7dyYkxBOKgBFrjp
 w0V2Sl10OTGOg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=HSsXpCKn
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 1/6] ice: Remove
 unncecessary ice_is_e8xx() functions
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

On Tue, Aug 20, 2024 at 12:21:48PM +0200, Karol Kolacinski wrote:
> Remove unnecessary ice_is_e8xx() functions and PHY model. Instead, use
> MAC type where applicable.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

Hi Karol,

Sorry for waiting until v7 until raising this. But I feel that this patch
is doing a bit more than what is set out in patch description. So I'd like
to suggest some combination of splitting the patch and enhancing the patch
description.

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
> index f02e8ca55375..dd65b2db9856 100644
> --- a/drivers/net/ethernet/intel/ice/ice_gnss.c
> +++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
> @@ -386,27 +386,22 @@ void ice_gnss_exit(struct ice_pf *pf)
>   */
>  bool ice_gnss_is_gps_present(struct ice_hw *hw)
>  {
> +#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
> +	int err;
> +	u8 data;
> +
>  	if (!hw->func_caps.ts_func_info.src_tmr_owned)
>  		return false;
>  
>  	if (!ice_is_gps_in_netlist(hw))
>  		return false;
>  
> -#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
> -	if (ice_is_e810t(hw)) {
> -		int err;
> -		u8 data;
> -
> -		err = ice_read_pca9575_reg(hw, ICE_PCA9575_P0_IN, &data);
> -		if (err || !!(data & ICE_P0_GNSS_PRSNT_N))
> -			return false;
> -	} else {
> +	err = ice_read_pca9575_reg(hw, ICE_PCA9575_P0_IN, &data);
> +	if (err || !!(data & ICE_P0_GNSS_PRSNT_N))
>  		return false;
> -	}
> -#else
> -	if (!ice_is_e810t(hw))
> -		return false;
> -#endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
>  
>  	return true;
> +#else
> +	return false;
> +#endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
>  }

I understand that the above relates to the patch description in the sense
that it removes calls to ice_is_e810t(), a function that is removed
entirely by this patch. But the above is not a simple substitution of one
check for E810T for another. Indeed, it seems far more complex than that.

I think that warrants an explanation, e.g. why is it ok to always return
false if CONFIG_PTP_1588_CLOCK. Perhaps a separate patch is appropriate for
this change.

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c

...

> @@ -2759,7 +2766,7 @@ static void ice_ptp_maybe_trigger_tx_interrupt(struct ice_pf *pf)
>  	bool trigger_oicr = false;
>  	unsigned int i;
>  
> -	if (ice_is_e810(hw))
> +	if (!pf->ptp.port.tx.has_ready_bitmap)
>  		return;
>  
>  	if (!ice_pf_src_tmr_owned(pf))

Likewise, this doesn't really match the patch description.
Sure it is a simple change. And yes, after scanning the code,
I agree that has_ready_bitmap is set other than for E810.
But it is not a check against the MAC type as described in the patch
description.

A separate patch would be nice. Or, if not, an enhanced patch description.


> @@ -2898,14 +2905,12 @@ static int ice_ptp_rebuild_owner(struct ice_pf *pf)
>  	 */
>  	ice_ptp_flush_all_tx_tracker(pf);
>  
> -	if (!ice_is_e810(hw)) {
> -		/* Enable quad interrupts */
> -		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
> -		if (err)
> -			return err;
> +	/* Enable quad interrupts */
> +	err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
> +	if (err)
> +		return err;
>  
> -		ice_ptp_restart_all_phy(pf);
> -	}
> +	ice_ptp_restart_all_phy(pf);
>  
>  	/* Re-enable all periodic outputs and external timestamp events */
>  	ice_ptp_enable_all_perout(pf);

Here too. Why is it ok to unconditionally enable quad interrupts?

...

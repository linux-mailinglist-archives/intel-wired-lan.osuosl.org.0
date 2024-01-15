Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 131F482D783
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jan 2024 11:39:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BF42408B3;
	Mon, 15 Jan 2024 10:39:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BF42408B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705315194;
	bh=PiwG7JSXzj2Oj59Ahb4Kb4IriABh+oHEVD2GzXggeGo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IMJpRXCJ5oG2KctHAjeXSrUHQuRBPNEegU4zItW1nok8KR1XaLluLUjaYKwOcefOR
	 5gAr4d7v/YGjCpFdRp06OwQntH1SfQwQ7xDLtVUN/O9VxgbJnCFn2BLAv53c8YN4pQ
	 vGmRqF94X5PnjBPxu61ocfTL4izcsHHhKfs3UCyk1AxZ1Mk//S4jz74auDcbNGjMxr
	 1Q3Vuf2X+JspQhVbaq0nI6GX/q4+5XCfV7Q2ZR5RcOAlXhp6mKCURhwK/vqLyMwL0V
	 alP9MtKQ5uoZoLrojPHnf7lJyqpgDXoCfp42UDax8fA5tUqB3Rxy1c7Dg71BhxMcrw
	 PeUhwiOvUvXUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x67LbzUpKbeC; Mon, 15 Jan 2024 10:39:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DED70408A9;
	Mon, 15 Jan 2024 10:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DED70408A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5792D1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 10:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E5D960F3F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 10:39:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E5D960F3F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R64Yh5oEObmA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jan 2024 10:39:46 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DFC9E605A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 10:39:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFC9E605A3
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B13DE60D30;
 Mon, 15 Jan 2024 10:39:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDB4CC433C7;
 Mon, 15 Jan 2024 10:39:42 +0000 (UTC)
Date: Mon, 15 Jan 2024 10:39:40 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240115103940.GN392144@kernel.org>
References: <20240108124717.1845481-1-karol.kolacinski@intel.com>
 <20240108124717.1845481-6-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240108124717.1845481-6-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705315184;
 bh=STrOEhkymZJkCIxgkd4dhYeqrav6C0xWH76/KX5CIGQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YYg2DvHbjWDTSI4oKgzkCyJaRcHhTdzsL4s2kAs/YLH/02elCd70tMwan4jM+kvGw
 E7AZhhBsgcYmwF2VYE5xqJi7mk3KQGmQWqBc613vf+E+PhkDpCo9ik/7pvt33tkjgb
 gXgKjRhRMjzPvXOy16x2GVjHJ4ivCEVFlnP39tO8DNZqtEcMzl2fBlXaD3PW6RCxMF
 NaIlceJ43ZeitkJl+ZkvJv/BV8rjWWW816T6vg4STlUctys8kBqGgj9E/lI9h33CzY
 vSvLEtM4lDYiihIWjzioR1iaLVpmQsJxhjveGNpQOxHPQUYvvjcPSi8FIS++GN++Ct
 4seHVTvV028bg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YYg2DvHb
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 5/6] ice: factor out
 ice_ptp_rebuild_owner()
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 08, 2024 at 01:47:16PM +0100, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_ptp_reset() function uses a goto to skip past clock owner
> operations if performing a PF reset or if the device is not the clock
> owner. This is a bit confusing. Factor this out into
> ice_ptp_rebuild_owner() instead.
> 
> The ice_ptp_reset() function is called by ice_rebuild() to restore PTP
> functionality after a device reset. Follow the convention set by the
> ice_main.c file and rename this function to ice_ptp_rebuild(), in the
> same way that we have ice_prepare_for_reset() and
> ice_ptp_prepare_for_reset().

nit: This feels more like two changes than one,
     which I might have put into two patches.

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index fe2d8389627b..8a589f853e96 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2665,11 +2665,13 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>  }
>  
>  /**
> - * ice_ptp_reset - Initialize PTP hardware clock support after reset
> + * ice_ptp_rebuild_owner - Initialize PTP clock owner after reset
>   * @pf: Board private structure
> - * @reset_type: the reset type being performed
> + *
> + * Companion function for ice_ptp_rebuild() which handles tasks that only the
> + * PTP clock owner instance should perform.
>   */
> -void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
> +static int ice_ptp_rebuild_owner(struct ice_pf *pf)
>  {
>  	struct ice_ptp *ptp = &pf->ptp;
>  	struct ice_hw *hw = &pf->hw;
> @@ -2677,34 +2679,21 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>  	u64 time_diff;
>  	int err;
>  
> -	if (ptp->state != ICE_PTP_RESETTING) {
> -		if (ptp->state == ICE_PTP_READY) {
> -			ice_ptp_prepare_for_reset(pf, reset_type);
> -		} else {
> -			err = -EINVAL;
> -			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
> -			goto err;
> -		}
> -	}
> -
> -	if (reset_type == ICE_RESET_PFR || !ice_pf_src_tmr_owned(pf))
> -		goto pfr;
> -
>  	err = ice_ptp_init_phc(hw);
>  	if (err)
> -		goto err;
> +		return err;
>  
>  	/* Acquire the global hardware lock */
>  	if (!ice_ptp_lock(hw)) {
>  		err = -EBUSY;
> -		goto err;
> +		return err;
>  	}
>  
>  	/* Write the increment time value to PHY and LAN */
>  	err = ice_ptp_write_incval(hw, ice_base_incval(pf));
>  	if (err) {
>  		ice_ptp_unlock(hw);
> -		goto err;
> +		return err;
>  	}
>  
>  	/* Write the initial Time value to PHY and LAN using the cached PHC
> @@ -2720,7 +2709,7 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>  	err = ice_ptp_write_init(pf, &ts);
>  	if (err) {
>  		ice_ptp_unlock(hw);
> -		goto err;
> +		return err;
>  	}
>  
>  	/* Release the global hardware lock */
> @@ -2729,11 +2718,41 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>  	if (!ice_is_e810(hw)) {
>  		/* Enable quad interrupts */
>  		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
> +		if (err)
> +			return err;
> +
> +		ice_ptp_restart_all_phy(pf);

The conditions for calling ice_ptp_restart_all_phy() seem to have
changed (though perhaps in practice they are the same).
And the ordering of this operation relative to the following code has
changed:

	/* Init Tx structures */
	if (ice_is_e810(&pf->hw)) {
		err = ice_ptp_init_tx_e810(pf, &ptp->port.tx);
	} else {
		kthread_init_delayed_work(&ptp->port.ov_work,
					  ice_ptp_wait_for_offsets);
		err = ice_ptp_init_tx_e82x(pf, &ptp->port.tx,
					   ptp->port.port_num);
	}

	ptp->state = ICE_PTP_READY;

Is this intentional?

I do see that the above code is removed in the following patch,
and replaced by a call to ice_ptp_flush_all_tx_tracker()
in ice_ptp_rebuild_owner(). But perhaps this patch
should move this code block code to that location?

> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_ptp_rebuild - Initialize PTP hardware clock support after reset
> + * @pf: Board private structure
> + * @reset_type: the reset type being performed
> + */
> +void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
> +{
> +	struct ice_ptp *ptp = &pf->ptp;
> +	int err;
> +
> +	if (ptp->state != ICE_PTP_RESETTING) {
> +		if (ptp->state == ICE_PTP_READY) {
> +			ice_ptp_prepare_for_reset(pf, reset_type);
> +		} else {
> +			err = -EINVAL;
> +			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
> +			goto err;
> +		}
> +	}
> +
> +	if (ice_pf_src_tmr_owned(pf) && reset_type != ICE_RESET_PFR) {
> +		err = ice_ptp_rebuild_owner(pf);
>  		if (err)
>  			goto err;
>  	}
>  
> -pfr:
>  	/* Init Tx structures */
>  	if (ice_is_e810(&pf->hw)) {
>  		err = ice_ptp_init_tx_e810(pf, &ptp->port.tx);
> @@ -2748,11 +2767,6 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>  
>  	ptp->state = ICE_PTP_READY;
>  
> -	/* Restart the PHY timestamping block */
> -	if (!test_bit(ICE_PFR_REQ, pf->state) &&
> -	    ice_pf_src_tmr_owned(pf))
> -		ice_ptp_restart_all_phy(pf);
> -
>  	/* Start periodic work going */
>  	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
>  

...

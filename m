Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF5E9098C4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jun 2024 17:15:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 672FC810AE;
	Sat, 15 Jun 2024 15:15:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lWSutrOm4qjX; Sat, 15 Jun 2024 15:15:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BEE981FE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718464502;
	bh=3yPYS+pdzwLjnXsOJlt1S6gKA+hXO6uXRQLj3EidYs8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H1S2VVoLDkUnToaehqJ2h6aTp1sguiRdjjatjbt/it02W6GrjLwFvyYMc1HKxiYSm
	 +Bbj6mypi28vSHzFxVBlcPjMPeZ73usGZM0MnfH5V2JRZ0Lki7t9l+R7MPZmx2On6r
	 jWZbT6M9/gJ7tVFIoINPvz6e2ydXUtAdWec8cfaXHUutnwvo27dCU63jff7giTnSj1
	 aniy4VOI+nWLcV1OHUzunaHTaD2o+U+wZQaHPA3W2Ikt/wczzg4V7mrvWFfJQqPWpI
	 vlSpNTvh/iwek+da+3Mn9Ed8lHw8NO+FO/Ha4YcRQC0CjB1F0q5QvyY8tLIyC1RzrH
	 XRpaxLWYySlRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BEE981FE6;
	Sat, 15 Jun 2024 15:15:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6FDD61BF301
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2024 15:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67E3C40355
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2024 15:15:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2w7E7G8bqjl0 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Jun 2024 15:14:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5090F4034D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5090F4034D
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5090F4034D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2024 15:14:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1FA8E60BB8;
 Sat, 15 Jun 2024 15:14:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74B2CC116B1;
 Sat, 15 Jun 2024 15:14:56 +0000 (UTC)
Date: Sat, 15 Jun 2024 16:14:54 +0100
From: Simon Horman <horms@kernel.org>
To: Karen Ostrowska <karen.ostrowska@intel.com>
Message-ID: <20240615151454.GF8447@kernel.org>
References: <20240614094435.4777-1-karen.ostrowska@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240614094435.4777-1-karen.ostrowska@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718464497;
 bh=6Flv7sO4NCz0GEPAl1v5f8xlU/046ZJIoigiJajNMRI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lN/oVbqn/8PN3UpnnFhG9LSJRJU4OpfGeV+yLiuWv0LXJQCdfdOhA99icL+XRS/yC
 M3AplzqgZEugzGzhy9DEgm2FEO+ahCxQxG43Gl/Eyz1UAiBtOBHHWYaGZ8hcKFugmV
 X8FTA2OhtEYnxv1K66zpmsOp2yoNZ3NR0q8TsyQBeNM/a+B34TxlxwnLjS2clOuAuG
 4GtWf+wlMDiwaJfadNMaqWNgTJ1lelA/9OGNtfgrCYOD8SUvXgiCabHw1s4fXz6OVf
 fg64koafTnovOAEOgPkxkUuiI76fnlKSTLsDoObafRGqay4kTM23TddbG5iBlh6Zym
 e+kzo6DsQT9Tw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=lN/oVbqn
Subject: Re: [Intel-wired-lan] [iwl-next v2] ice: Check all
 ice_vsi_rebuild() errors in function
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
Cc: Eric Joyner <eric.joyner@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 14, 2024 at 11:44:35AM +0200, Karen Ostrowska wrote:
> From: Eric Joyner <eric.joyner@intel.com>
> 
> Check the return value from ice_vsi_rebuild() and prevent the usage of
> incorrectly configured VSI.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> ---
> On v1 there was no goto done line added after ice_vsi_open(vsi).
> It's needed to skip printing error message when is on success.
> 
> Original patch was introduced as implementation change not because of
> fixing something, so I will skip adding here Fixes tag.
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 7d9a4e856f61..1222e8a175d9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4155,15 +4155,23 @@ int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked)

Hi Karen,

This patch seems to be mangled.
The context above should be:

@@ -4155,15 +4155,24 @@ int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked)

i.e. 23 -> 24

>  
>  	/* set for the next time the netdev is started */
>  	if (!netif_running(vsi->netdev)) {
> -		ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
> +		err = ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
> +		if (err)
> +			goto rebuild_err;
>  		dev_dbg(ice_pf_to_dev(pf), "Link is down, queue count change happens when link is brought up\n");
>  		goto done;
>  	}
>  
>  	ice_vsi_close(vsi);
> -	ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
> +	err = ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
> +	if (err)
> +		goto rebuild_err;
> +
>  	ice_pf_dcb_recfg(pf, locked);
>  	ice_vsi_open(vsi);
> +       goto done;

The line above should be indented using a tab.

> +
> +rebuild_err:
> +	dev_err(ice_pf_to_dev(pf), "Error during VSI rebuild: %d. Unload and reload the driver.\n", err);
>  done:
>  	clear_bit(ICE_CFG_BUSY, pf->state);
>  	return err;
> -- 
> 2.39.3
> 
> 

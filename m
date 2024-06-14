Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EAB908C09
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 14:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C411C408C1;
	Fri, 14 Jun 2024 12:47:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id seNPgQuOaLgd; Fri, 14 Jun 2024 12:47:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA64E40555
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718369247;
	bh=RXajQsiyrvhOu03XN6OMecwlnBen4mztsRjFBOHugKQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MnsjCcIJRGjO49uM35+/XB609okXQF9HbqxWhkskw4grP9k+ccHD3geEGDnuy53hy
	 2d4sUvdn7xpEG5dZnxFMCKV9Je+1ougx0rscn/Y8iEnZ0YDtqaj9mkSKlZB7Df3te4
	 bVwtGtEAA9njHA/HGZWCcuqZQjPdb6xRAP8MAaiQTnPekZ6q28WP48JsJ1+hiBI1On
	 T9agPptjBH1v9N9wD+wO+ivOZ/VcyejPItktzImwjwtCXKQQbqTyeCvDRR6hV/HbaQ
	 M/VCQGHs0gfiZZ5ojfdA5lWVCYzwSzUwT1+MyCehFztcyhXSkVP/rkDz/X8K6Zl+t6
	 xGQppcauIi2+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA64E40555;
	Fri, 14 Jun 2024 12:47:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 720401BF33C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 12:47:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5CC4940467
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 12:47:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ukWqfb6B1k38 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 12:47:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F2E0140458
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2E0140458
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2E0140458
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 12:47:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id B614CCE2A60;
 Fri, 14 Jun 2024 12:47:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B037C2BD10;
 Fri, 14 Jun 2024 12:47:18 +0000 (UTC)
Date: Fri, 14 Jun 2024 13:47:16 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240614124716.GN8447@kernel.org>
References: <20240610074434.1962735-1-michal.swiatkowski@linux.intel.com>
 <20240610074434.1962735-5-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240610074434.1962735-5-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718369240;
 bh=YirVsUgdMKOdT3YPWw2piLtEiAj5wWa579Q69Tql3zU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iZx1kG1Yxkw38vPMC/WuJeZKNxl7URnyOKJYikiVBwT5ClEOZD6qh8QL8Wn4YVoz9
 ePpGRwFsIu60myr7Vo0qSmGFHfWMFNaknCCGfPf7ni+D5p5aRYhFLpEtfFULIgsS1L
 c7f/HnswwIPsIVbfJlUJp1TYlSDy5K54NBMCAfvAWwCGcHyMfrcxcYBS4IW8vJDx6m
 mZuquRuUsyrX6eHxb2vjx0sk+X5xBorzKxrVQLw0zzh6rpuPNRsFMtQNAej67RHk+J
 f1yZDtcW1Ojco7i2msXylxrx1t86Hw6O4qByI3jN7t72Bt8zmrWlUI4NSkuXVqTn4L
 SZ1qaDnnuIcNw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=iZx1kG1Y
Subject: Re: [Intel-wired-lan] [iwl-next v3 4/4] ice: update representor
 when VSI is ready
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kuba@kernel.org, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 10, 2024 at 09:44:34AM +0200, Michal Swiatkowski wrote:
> In case of reset of VF VSI can be reallocated. To handle this case it
> should be properly updated.
> 
> Reload representor as vsi->vsi_num can be different than the one stored
> when representor was created.
> 
> Instead of only changing antispoof do whole VSI configuration for
> eswitch.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Thanks Michal,

My comment below notwithstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 21 +++++++++++++-------
>  drivers/net/ethernet/intel/ice/ice_eswitch.h |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  2 +-
>  3 files changed, 17 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index 3f73f46111fc..4f539b1c7781 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> @@ -178,16 +178,16 @@ void ice_eswitch_decfg_vsi(struct ice_vsi *vsi, const u8 *mac)
>   * @repr_id: representor ID
>   * @vsi: VSI for which port representor is configured
>   */
> -void ice_eswitch_update_repr(unsigned long repr_id, struct ice_vsi *vsi)
> +void ice_eswitch_update_repr(unsigned long *repr_id, struct ice_vsi *vsi)
>  {
>  	struct ice_pf *pf = vsi->back;
>  	struct ice_repr *repr;
> -	int ret;
> +	int err;
>  
>  	if (!ice_is_switchdev_running(pf))
>  		return;
>  
> -	repr = xa_load(&pf->eswitch.reprs, repr_id);
> +	repr = xa_load(&pf->eswitch.reprs, *repr_id);
>  	if (!repr)
>  		return;
>  
> @@ -197,12 +197,19 @@ void ice_eswitch_update_repr(unsigned long repr_id, struct ice_vsi *vsi)
>  	if (repr->br_port)
>  		repr->br_port->vsi = vsi;
>  
> -	ret = ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof);
> -	if (ret) {
> -		ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
> -					       ICE_FWD_TO_VSI);
> +	err = ice_eswitch_cfg_vsi(vsi, repr->parent_mac);
> +	if (err)
>  		dev_err(ice_pf_to_dev(pf), "Failed to update VSI of port representor %d",
>  			repr->id);
> +
> +	/* The VSI number is different, reload the PR with new id */
> +	if (repr->id != vsi->vsi_num) {
> +		xa_erase(&pf->eswitch.reprs, repr->id);
> +		repr->id = vsi->vsi_num;
> +		if (xa_insert(&pf->eswitch.reprs, repr->id, repr, GFP_KERNEL))
> +			dev_err(ice_pf_to_dev(pf), "Failed to reload port representor %d",
> +				repr->id);
> +		*repr_id = repr->id;
>  	}
>  }

FWIIW, I think it would be nicer if ice_eswitch_decfg_vsi returned
the repr_id rather than passing repr_id by reference. This is because,
in general, I think it's nicer to reduce side-effects of functions.

...

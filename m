Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C554066BC1F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jan 2023 11:47:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38499402B1;
	Mon, 16 Jan 2023 10:47:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38499402B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673866050;
	bh=tbuci3rG8CPZQc5h6rt2ofMVjTpSJ8XPASLzUBDj0f4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PYvvS8f8d2xmOpGFkhpTceMzeyNLRrDOB3PGvtyS1UOoCc372pDM2+qTmJoA+omwQ
	 bmYh8PH1VjWeWXAFDbqFQylV4E6XXrywgwczFq4m9D3n8cfiIuTmcfC5emr0QSg9yi
	 V2sWh6E1TUJmV8gM6ubPHJEkBEBGE8BgymE+2IeD0M50ageY1izS89I4Cibxa+rAit
	 9TTpgyV4UAso7siLqVYtNua3DdCJTYfhDjl1f7dNbx063LXbeKBPlorUkMufhISTw9
	 o+XPZEMnCTY9er+R66u57LL6GZy16Egsn8Hu+nZQ25F8MzaY7DotWE89wyaAKR6LOW
	 bpWdQv23PIp0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LL9-1wG--7TQ; Mon, 16 Jan 2023 10:47:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E557401FC;
	Mon, 16 Jan 2023 10:47:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E557401FC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 32EB21BF404
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 10:47:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 18F2C607A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 10:47:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18F2C607A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 48Fum73aE3Yf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 10:47:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7E1360783
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E7E1360783
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 10:47:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="351685107"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="351685107"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 02:47:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="652226249"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="652226249"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 02:47:21 -0800
Date: Mon, 16 Jan 2023 11:47:18 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <Y8UrNnT/eXE59d8H@localhost.localdomain>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
 <20230113223735.2514364-4-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230113223735.2514364-4-jacob.e.keller@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673866042; x=1705402042;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gxFSxLdsFAT++4v+J3NYleKpEV4RydRS78dVkhoCTbM=;
 b=eZGt1IbLxc20jJj8tuQ5ycHNH6mzhW8rnNiNGZNtj2OgDrguDrAeeArO
 DbuseGW4cOZ9iaoycfLQI+UcyHvD62/wYVEGjQJAixknecj4uEnJjGwFR
 K1qb7Fg+w/wcgM15BdvzC0ycbaeqSeAgEU2imP/kbczULPyZd8IV5N29r
 JywPS3lq1QnoiK1jj8545bg2DLwI7Lufs+EzOkYOjFvRWoLSbLjmNiVCo
 hsMxh1o0v/c5dNCt+Pzh/maVuMqSZ//09SqHm5ZvSjCN3YFRwngvFCwuh
 TbCNofFiQxdFxQylkbL3VQH3i58xbjC7Gb9AWmFUXC3Hf8QWl+X2vq6SO
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eZGt1IbL
Subject: Re: [Intel-wired-lan] [PATCH net-next 03/13] ice: move vsi_type
 assignment from ice_vsi_alloc to ice_vsi_cfg
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 13, 2023 at 02:37:25PM -0800, Jacob Keller wrote:
> The ice_vsi_alloc and ice_vsi_cfg functions are used together to allocate
> and configure a new VSI, called as part of the ice_vsi_setup function.
> 
> In the future with the addition of the subfunction code the ice driver
> will want to be able to allocate a VSI while delaying the configuration to
> a later point of the port activation.
> 
> Currently this requires that the port code know what type of VSI should
> be allocated. This is required because ice_vsi_alloc assigns the VSI type.
> 
> Refactor the ice_vsi_alloc and ice_vsi_cfg functions so that VSI type
> assignment isn't done until the configuration stage. This will allow the
> devlink port addition logic to reserve a VSI as early as possible before
> the type of the port is known. In this way, the port add can fail in the
> event that all hardware VSI resources are exhausted.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 65 ++++++++++++-----------
>  drivers/net/ethernet/intel/ice/ice_lib.h  |  3 +-
>  drivers/net/ethernet/intel/ice/ice_main.c |  3 +-
>  3 files changed, 37 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 0bf99f0e3faa..f89279ede9a1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -640,28 +640,18 @@ ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
>  /**
>   * ice_vsi_alloc - Allocates the next available struct VSI in the PF
>   * @pf: board private structure
> - * @pi: pointer to the port_info instance
> - * @vsi_type: type of VSI
> - * @ch: ptr to channel
> - * @vf: VF for ICE_VSI_VF and ICE_VSI_CTRL
>   *
> - * The VF pointer is used for ICE_VSI_VF and ICE_VSI_CTRL. For ICE_VSI_CTRL,
> - * it may be NULL in the case there is no association with a VF. For
> - * ICE_VSI_VF the VF pointer *must not* be NULL.
> + * Reserves a VSI index from the PF and allocates an empty VSI structure
> + * without a type. The VSI structure must later be initialized by calling
> + * ice_vsi_cfg().
>   *
>   * returns a pointer to a VSI on success, NULL on failure.
>   */
> -static struct ice_vsi *
> -ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
> -	      enum ice_vsi_type vsi_type, struct ice_channel *ch,
> -	      struct ice_vf *vf)
> +static struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf)
>  {
>  	struct device *dev = ice_pf_to_dev(pf);
>  	struct ice_vsi *vsi = NULL;
>  
> -	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
> -		return NULL;
> -
>  	/* Need to protect the allocation of the VSIs at the PF level */
>  	mutex_lock(&pf->sw_mutex);
>  
> @@ -678,11 +668,7 @@ ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
>  	if (!vsi)
>  		goto unlock_pf;
>  
> -	vsi->type = vsi_type;
>  	vsi->back = pf;
> -	vsi->port_info = pi;
> -	/* For VSIs which don't have a connected VF, this will be NULL */
> -	vsi->vf = vf;
>  	set_bit(ICE_VSI_DOWN, vsi->state);
>  
>  	/* fill slot and make note of the index */
> @@ -693,15 +679,6 @@ ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
>  	pf->next_vsi = ice_get_free_slot(pf->vsi, pf->num_alloc_vsi,
>  					 pf->next_vsi);
>  
> -	if (vsi->type == ICE_VSI_CTRL) {
> -		if (vf) {
> -			vf->ctrl_vsi_idx = vsi->idx;
> -		} else {
> -			WARN_ON(pf->ctrl_vsi_idx != ICE_NO_VSI);
> -			pf->ctrl_vsi_idx = vsi->idx;
> -		}
> -	}
> -
>  unlock_pf:
>  	mutex_unlock(&pf->sw_mutex);
>  	return vsi;
> @@ -2859,18 +2836,33 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_channel *ch, int init_vsi)
>  }
>  
>  /**
> - * ice_vsi_cfg - configure VSI and tc on it
> + * ice_vsi_cfg - configure a previously allocated VSI
>   * @vsi: pointer to VSI
> + * @vsi_type: the type of VSI to configure as
> + * @pi: the port info for this VSI
>   * @vf: pointer to VF to which this VSI connects. This field is used primarily
>   *      for the ICE_VSI_VF type. Other VSI types should pass NULL.
>   * @ch: ptr to channel
>   * @init_vsi: is this an initialization or a reconfigure of the VSI
> + *
> + * Configure a VSI allocated with ice_vsi_alloc.
>   */
> -int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
> -		int init_vsi)
> +int ice_vsi_cfg(struct ice_vsi *vsi, enum ice_vsi_type vsi_type,
> +		struct ice_port_info *pi, struct ice_vf *vf,
> +		struct ice_channel *ch, int init_vsi)
>  {
> +	struct ice_pf *pf = vsi->back;
>  	int ret;
>  
> +	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
> +		return -EINVAL;
> +
> +	vsi->type = vsi_type;
> +	vsi->port_info = pi;
> +
> +	/* For VSIs which don't have a connected VF, this will be NULL */
> +	vsi->vf = vf;
> +
>  	ret = ice_vsi_cfg_def(vsi, ch, init_vsi);
>  	if (ret)
>  		return ret;
> @@ -2879,6 +2871,15 @@ int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
>  	if (ret)
>  		ice_vsi_decfg(vsi);
>  
> +	if (vsi->type == ICE_VSI_CTRL) {
> +		if (vf) {
I know that it is only copy paste, but shouldn't we also check if
vsi_idx isn't already set like in PF case?

> +			vf->ctrl_vsi_idx = vsi->idx;
> +		} else {
> +			WARN_ON(pf->ctrl_vsi_idx != ICE_NO_VSI);
> +			pf->ctrl_vsi_idx = vsi->idx;
> +		}
> +	}
> +
>  	return ret;
>  }
>  
> @@ -2962,13 +2963,13 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
>  	struct ice_vsi *vsi;
>  	int ret;
>  
> -	vsi = ice_vsi_alloc(pf, pi, vsi_type, ch, vf);
> +	vsi = ice_vsi_alloc(pf);
Looks nicer :)

>  	if (!vsi) {
>  		dev_err(dev, "could not allocate VSI\n");
>  		return NULL;
>  	}
>  
> -	ret = ice_vsi_cfg(vsi, vf, ch, ICE_VSI_FLAG_INIT);
> +	ret = ice_vsi_cfg(vsi, vsi_type, pi, vf, ch, ICE_VSI_FLAG_INIT);
Maybe it is good patchset to implement Your idea about having vsi init
params structure?

>  	if (ret)
>  		goto err_vsi_cfg;
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
> index b76f05e1f8a3..fb785d8cde9a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
> @@ -73,7 +73,8 @@ ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id);
>  #define ICE_VSI_FLAG_INIT	BIT(0)
>  #define ICE_VSI_FLAG_NO_INIT	0
>  int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi);
> -int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf,
> +int ice_vsi_cfg(struct ice_vsi *vsi, enum ice_vsi_type vsi_type,
> +		struct ice_port_info *pi, struct ice_vf *vf,
>  		struct ice_channel *ch, int init_vsi);
>  
>  bool ice_is_reset_in_progress(unsigned long *state);
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 8fd9c87f30e2..29cd77dd3812 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5010,7 +5010,8 @@ int ice_load(struct ice_pf *pf)
>  		return err;
>  
>  	vsi = ice_get_main_vsi(pf);
> -	err = ice_vsi_cfg(vsi, NULL, NULL, ICE_VSI_FLAG_INIT);
> +	err = ice_vsi_cfg(vsi, ICE_VSI_PF, pf->hw.port_info, NULL, NULL,
> +			  ICE_VSI_FLAG_INIT);
>  	if (err)
>  		goto err_vsi_cfg;
>  
> -- 
> 2.38.1.420.g319605f8f00e
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EA4911948
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 06:17:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D3A961654;
	Fri, 21 Jun 2024 04:17:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oRxisu5CHwMR; Fri, 21 Jun 2024 04:17:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9DA96164D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718943460;
	bh=PnrMg8u3JSITHVDGifbhUnUIvNxub9qYYbNQ7bfpvBA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vX0LMDLONVH/MVs57+ArHWHmoOTMeMB2OdRoXosuVF1qvuDGVkbOFuL8FOTizfB82
	 mFI799ZZwR4fnzjHL+N3n3jClQw1Em9LCsHLLbDNwV5t6zdfBf0lxaNpJq47inums8
	 tAnxVuqvzEcnMDCufUFTC911MlO770LB2hjJQafs5A3IJTzq0gKHJuYnsFVwg0jlp6
	 Ch8SkWnF46hLEHgX0cvZw/Me3S9hJFvLmHvr5C7IIg4THGog0c9xhtLPOMvksDxeC2
	 e6NgAc2KSkWweMxZxswrdOO/z483lrqRvTR8jcZ0Eogkyza61Y8OwIAGQQQ0BaruKp
	 z1Q+HYbMB5TJQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9DA96164D;
	Fri, 21 Jun 2024 04:17:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5CB41BF976
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 04:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C24F6435AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 04:17:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hfrFJ2mY5euJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2024 04:17:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7755540448
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7755540448
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7755540448
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 04:17:36 +0000 (UTC)
X-CSE-ConnectionGUID: YwYkW9wDQ32w41J+oiClMg==
X-CSE-MsgGUID: EI/HstliRwGCaIwjxbQZTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="26555527"
X-IronPort-AV: E=Sophos;i="6.08,253,1712646000"; d="scan'208";a="26555527"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 21:17:36 -0700
X-CSE-ConnectionGUID: C6rNXF/2R42rbkAJV1EmIA==
X-CSE-MsgGUID: cTn23UXoQFGbXj2bw4l08g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,253,1712646000"; d="scan'208";a="73209979"
Received: from mev-dev.igk.intel.com (HELO mev-dev) ([10.237.112.144])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 21:17:32 -0700
Date: Fri, 21 Jun 2024 06:16:27 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Simon Horman <horms@kernel.org>
Message-ID: <ZnT+m0pMeLqdrEqd@mev-dev>
References: <20240610074434.1962735-1-michal.swiatkowski@linux.intel.com>
 <20240610074434.1962735-4-michal.swiatkowski@linux.intel.com>
 <20240614124331.GL8447@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240614124331.GL8447@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718943458; x=1750479458;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=enr6nQYDAeDlqhkOC+Fw1OHLsm6fOXBqg7RHAZnRUc8=;
 b=HNvWtKr2H9NIFHudEVVfb4Sx0zmkxapaJpulpOBS3OoHdy14zR8bTvSM
 7XhUJ9vp5r2oNs6ZyFLRrn3tCHtaJiA1+auMsa/K/aAY9I6Nlfcg9nXaa
 iL86Q9qKUsLSxPSE0qqUEhwpZSumwhrmMffsBM5Fyu/vmP9PSV5cKRg42
 Simdp4GP4J+XV1ai29dFL2RApx6BXWPJv2zqxUoxxTVyKlBIcjkHfk26g
 EATTc8KkquRNI/6kuJFx9c3Q2efUNewpWcoqc+tRAVxEcuRgtovT18KuQ
 b3e6RozwmPDfTwQaOxfQXYca6HoxazZmBtD540czouiX2O0wcr/8Eybpi
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HNvWtKr2
Subject: Re: [Intel-wired-lan] [iwl-next v3 3/4] ice: move VSI configuration
 outside repr setup
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

On Fri, Jun 14, 2024 at 01:43:31PM +0100, Simon Horman wrote:
> On Mon, Jun 10, 2024 at 09:44:33AM +0200, Michal Swiatkowski wrote:
> > It is needed because subfunction port representor shouldn't configure
> > the source VSI during representor creation.
> > 
> > Move the code to separate function and call it only in case the VF port
> > representor is being created.
> > 
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Hi Michal,
> 
> The nit below notwithstanding, this looks good to me.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> > ---
> >  drivers/net/ethernet/intel/ice/ice_eswitch.c | 55 ++++++++++++++------
> >  drivers/net/ethernet/intel/ice/ice_eswitch.h | 10 ++++
> >  drivers/net/ethernet/intel/ice/ice_repr.c    |  7 +++
> >  3 files changed, 57 insertions(+), 15 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > index 7b57a6561a5a..3f73f46111fc 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > @@ -117,17 +117,10 @@ static int ice_eswitch_setup_repr(struct ice_pf *pf, struct ice_repr *repr)
> >  	struct ice_vsi *vsi = repr->src_vsi;
> >  	struct metadata_dst *dst;
> >  
> > -	ice_remove_vsi_fltr(&pf->hw, vsi->idx);
> >  	repr->dst = metadata_dst_alloc(0, METADATA_HW_PORT_MUX,
> >  				       GFP_KERNEL);
> >  	if (!repr->dst)
> > -		goto err_add_mac_fltr;
> > -
> > -	if (ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof))
> > -		goto err_dst_free;
> > -
> > -	if (ice_vsi_add_vlan_zero(vsi))
> > -		goto err_update_security;
> > +		return -ENOMEM;
> >  
> >  	netif_keep_dst(uplink_vsi->netdev);
> >  
> > @@ -136,16 +129,48 @@ static int ice_eswitch_setup_repr(struct ice_pf *pf, struct ice_repr *repr)
> >  	dst->u.port_info.lower_dev = uplink_vsi->netdev;
> >  
> >  	return 0;
> > +}
> >  
> > -err_update_security:
> > +/**
> > + * ice_eswitch_cfg_vsi - configure VSI to work in slow-path
> > + * @vsi: VSI structure of representee
> > + * @mac: representee MAC
> > + *
> > + * Return: 0 on success, non-zero on error.
> > + */
> > +int ice_eswitch_cfg_vsi(struct ice_vsi *vsi, const u8 *mac)
> > +{
> > +	int err;
> > +
> > +	ice_remove_vsi_fltr(&vsi->back->hw, vsi->idx);
> > +
> > +	err = ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof);
> > +	if (err)
> > +		goto err_update_security;
> > +
> > +	err = ice_vsi_add_vlan_zero(vsi);
> > +	if (err)
> > +		goto err_vlan_zero;
> > +
> > +	return 0;
> > +
> > +err_vlan_zero:
> >  	ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
> 
> nit: Please consider continuing the practice, that is used for the labels
>      removed by this patch, of naming labels after what they do rather
>      than what jumps to them.
> 

Ok, I was wondering which approach is better. Probably mixing both is
the worst. I will follow your advice next time, thanks.

> > -err_dst_free:
> > -	metadata_dst_free(repr->dst);
> > -	repr->dst = NULL;
> > -err_add_mac_fltr:
> > -	ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac, ICE_FWD_TO_VSI);
> > +err_update_security:
> > +	ice_fltr_add_mac_and_broadcast(vsi, mac, ICE_FWD_TO_VSI);
> >  
> > -	return -ENODEV;
> > +	return err;
> > +}
> > +
> 
> ...

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69406911979
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 06:33:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB93361654;
	Fri, 21 Jun 2024 04:33:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GIkDaiberPod; Fri, 21 Jun 2024 04:33:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A917061656
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718944402;
	bh=CkIpuO5KszS+axLBTrh+pa4InItdzyIaiH7rtMGbO/g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X2V/T6MIp1A3SE1+9YTgeqCiHVJYLaeptJ0LCIFmtILxahzHZUtHDGeOtsSaTj5OZ
	 sq7GM/NSXocSGoPXWvo17Uy/b6Jah/1EOuWFiuaTEHq3Mv+dLJdJ6D5ioYWPlP9PRO
	 djDtkhyuamblMY/xt8z7jyitC0SYLQflkjCgTpo3p+u/3Qmn67RiYevr0FVKrYetxk
	 V4ezXNteXe6tsQK0KBEECV1PiuLgZ1LWH76OcT9W2wszbM6hOAVMRKrN/P+wwFpZ8T
	 dCw2KW0GsVsh65GHFIVE6OHlNxjwVUIk0q/aJf5iOkRI5G7gGkR7yamdXAlLS6h7RC
	 k1klDFT5Jfkgw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A917061656;
	Fri, 21 Jun 2024 04:33:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D61F1BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 04:33:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE42940934
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 04:33:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XT3mQjUr71t1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2024 04:33:19 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6BCD44092F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BCD44092F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BCD44092F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 04:33:19 +0000 (UTC)
X-CSE-ConnectionGUID: H7kcV0pjR/CFkYSdfGPjyw==
X-CSE-MsgGUID: NDSoXPaDRLGlbEaID7lhLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="16079976"
X-IronPort-AV: E=Sophos;i="6.08,253,1712646000"; d="scan'208";a="16079976"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 21:33:18 -0700
X-CSE-ConnectionGUID: iNVrNyrnQeqhSfcDMYu0/w==
X-CSE-MsgGUID: 3PWE9hVRQhaF4pYOe4z1Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,253,1712646000"; d="scan'208";a="42917840"
Received: from mev-dev.igk.intel.com (HELO mev-dev) ([10.237.112.144])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 21:33:15 -0700
Date: Fri, 21 Jun 2024 06:32:10 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Simon Horman <horms@kernel.org>
Message-ID: <ZnUCSoXc8GyCOm2I@mev-dev>
References: <20240610074434.1962735-1-michal.swiatkowski@linux.intel.com>
 <20240610074434.1962735-5-michal.swiatkowski@linux.intel.com>
 <20240614124716.GN8447@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240614124716.GN8447@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718944399; x=1750480399;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kZMB1YVWSak8ImEcfDH3eBwm6zBqZaDvpEvvowcYei8=;
 b=TYP+UunByL0jPmmJvSaFUqY8zX/ojMg5+3H7akeYNHrTFNTd1s3d1iXM
 xzULeq9DhKkNUk04/8neLQYXHyOKOgFrxrtVf4IMxFxczN4XoUkHIA8O2
 yTbRo5O+SC7bVQQF0zmz6xZ1nic+S3IHTK1uSMrnsDaFHrFcGLkbm/2x6
 P/183NLcYCjRKqmOiwT2P1rSfvmDl1IeFpJmXq9kAIWB2NAygDYWWpPWR
 eGTD5pMG3IhP4vQRlbU1WmVY1yF4n+/Zbiq36YQLlYijpIaSJ9kuA9aEs
 XvJGJxuN3GTUESeR+hfV2qhz8+DC83lGjDjmPnk3wDL8E07LvMAbxjABW
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TYP+UunB
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

On Fri, Jun 14, 2024 at 01:47:16PM +0100, Simon Horman wrote:
> On Mon, Jun 10, 2024 at 09:44:34AM +0200, Michal Swiatkowski wrote:
> > In case of reset of VF VSI can be reallocated. To handle this case it
> > should be properly updated.
> > 
> > Reload representor as vsi->vsi_num can be different than the one stored
> > when representor was created.
> > 
> > Instead of only changing antispoof do whole VSI configuration for
> > eswitch.
> > 
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Thanks Michal,
> 
> My comment below notwithstanding, this looks good to me.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> > ---
> >  drivers/net/ethernet/intel/ice/ice_eswitch.c | 21 +++++++++++++-------
> >  drivers/net/ethernet/intel/ice/ice_eswitch.h |  4 ++--
> >  drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  2 +-
> >  3 files changed, 17 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > index 3f73f46111fc..4f539b1c7781 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > @@ -178,16 +178,16 @@ void ice_eswitch_decfg_vsi(struct ice_vsi *vsi, const u8 *mac)
> >   * @repr_id: representor ID
> >   * @vsi: VSI for which port representor is configured
> >   */
> > -void ice_eswitch_update_repr(unsigned long repr_id, struct ice_vsi *vsi)
> > +void ice_eswitch_update_repr(unsigned long *repr_id, struct ice_vsi *vsi)
> >  {
> >  	struct ice_pf *pf = vsi->back;
> >  	struct ice_repr *repr;
> > -	int ret;
> > +	int err;
> >  
> >  	if (!ice_is_switchdev_running(pf))
> >  		return;
> >  
> > -	repr = xa_load(&pf->eswitch.reprs, repr_id);
> > +	repr = xa_load(&pf->eswitch.reprs, *repr_id);
> >  	if (!repr)
> >  		return;
> >  
> > @@ -197,12 +197,19 @@ void ice_eswitch_update_repr(unsigned long repr_id, struct ice_vsi *vsi)
> >  	if (repr->br_port)
> >  		repr->br_port->vsi = vsi;
> >  
> > -	ret = ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof);
> > -	if (ret) {
> > -		ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
> > -					       ICE_FWD_TO_VSI);
> > +	err = ice_eswitch_cfg_vsi(vsi, repr->parent_mac);
> > +	if (err)
> >  		dev_err(ice_pf_to_dev(pf), "Failed to update VSI of port representor %d",
> >  			repr->id);
> > +
> > +	/* The VSI number is different, reload the PR with new id */
> > +	if (repr->id != vsi->vsi_num) {
> > +		xa_erase(&pf->eswitch.reprs, repr->id);
> > +		repr->id = vsi->vsi_num;
> > +		if (xa_insert(&pf->eswitch.reprs, repr->id, repr, GFP_KERNEL))
> > +			dev_err(ice_pf_to_dev(pf), "Failed to reload port representor %d",
> > +				repr->id);
> > +		*repr_id = repr->id;
> >  	}
> >  }
> 
> FWIIW, I think it would be nicer if ice_eswitch_decfg_vsi returned
> the repr_id rather than passing repr_id by reference. This is because,
> in general, I think it's nicer to reduce side-effects of functions.
> 

I wanted to change repr->id and the vf (or sf) repr id in the same
place. But in general I agree with your comment.

Thanks,
Michal

> ...

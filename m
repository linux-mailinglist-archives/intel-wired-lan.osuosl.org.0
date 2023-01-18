Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AC5671340
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 06:37:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6051E417B0;
	Wed, 18 Jan 2023 05:37:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6051E417B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674020257;
	bh=7a1PyR9P1WSgy+LdGt2KeRsAQr8WNlPCpVSf1Sx8gxk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=78MGFFFpGwOPJpa9N1MtmghB0EbeCSUD8iU/OaaOlzxLvJJLphxr5+p3xA1F4XwFn
	 0195uazi9Q7KbsrW6+Ul77Isgowi+zP9DCfkiOxDdD4JpG/OxVI/AUOwTRWnVt/urD
	 FGxsf/7zOqAG38cWnzld1wdGCgVn4z9/99UW/6PiPTiTUSH+rVuoKPnf0skBfN94Mn
	 zAwmECnVbKo+HD/6JwLjZhlYoGS6rhuPZehgRRYYS8J1jbstA/UbiP88HRDsIYPf4Z
	 6fYvUysm/n4ihw02quzQWjZPssKZJCplpJnGyzWAh4Bj3o7X4QPV7S/DRDoH6i2bJb
	 RtYH3AqZkfrgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hZxLcIngMHeF; Wed, 18 Jan 2023 05:37:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D20B44176C;
	Wed, 18 Jan 2023 05:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D20B44176C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B49E11BF42C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 05:37:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8DC3040117
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 05:37:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DC3040117
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k-AQ7g0f6mlP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 05:37:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49A47400AF
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49A47400AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 05:37:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="411140696"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="411140696"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 21:37:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="661579220"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="661579220"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 21:37:26 -0800
Date: Wed, 18 Jan 2023 06:37:22 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <Y8eFkqSXDbTOAaL4@localhost.localdomain>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
 <20230113223735.2514364-4-jacob.e.keller@intel.com>
 <Y8UrNnT/eXE59d8H@localhost.localdomain>
 <a16975c6-55d7-1945-063e-6e0ccf5a10af@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a16975c6-55d7-1945-063e-6e0ccf5a10af@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674020249; x=1705556249;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=GHM8yjKXsdM9MLD5tiLkHn3dTt/2GBgI0uE4D1QifP4=;
 b=ia0fik8Q9Hv0YjcsXsruX0WcW5w/TZeELk1KbUrAXcaIeeniAA6GE1N4
 nMS3R+X18zOh9rF6NwW7J21SAdwq7Qt6U8b9VpzeiVXVxa1a0m1kK8MEN
 8HBuoge+obLelJnoWKtm3hd7jOiZhMlNpTC/iP3uDE+yXl1XkNcQRXitY
 FL3eaQQWCxzQHCHHxYJsA8OHxSrg5ntnG9/GEMuciCNe+cphtucXFRJEC
 t4VdKe/fwdthD4vL5SXuIFODoVEvoLQFzMSIFKrtPVBdhIsT0Zs+fK7Pa
 4aKIHByKliRh/kInDyxKyhEeI43+XoUVlG5+TIV+J90TRao8Hfpsj6bL0
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ia0fik8Q
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

On Tue, Jan 17, 2023 at 11:20:43AM -0800, Jacob Keller wrote:
[...]
> >>  /**
> >> - * ice_vsi_cfg - configure VSI and tc on it
> >> + * ice_vsi_cfg - configure a previously allocated VSI
> >>   * @vsi: pointer to VSI
> >> + * @vsi_type: the type of VSI to configure as
> >> + * @pi: the port info for this VSI
> >>   * @vf: pointer to VF to which this VSI connects. This field is used primarily
> >>   *      for the ICE_VSI_VF type. Other VSI types should pass NULL.
> >>   * @ch: ptr to channel
> >>   * @init_vsi: is this an initialization or a reconfigure of the VSI
> >> + *
> >> + * Configure a VSI allocated with ice_vsi_alloc.
> >>   */
> >> -int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
> >> -		int init_vsi)
> >> +int ice_vsi_cfg(struct ice_vsi *vsi, enum ice_vsi_type vsi_type,
> >> +		struct ice_port_info *pi, struct ice_vf *vf,
> >> +		struct ice_channel *ch, int init_vsi)
> >>  {
> >> +	struct ice_pf *pf = vsi->back;
> >>  	int ret;
> >>  
> >> +	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
> >> +		return -EINVAL;
> >> +
> >> +	vsi->type = vsi_type;
> >> +	vsi->port_info = pi;
> >> +
> >> +	/* For VSIs which don't have a connected VF, this will be NULL */
> >> +	vsi->vf = vf;
> >> +
> >>  	ret = ice_vsi_cfg_def(vsi, ch, init_vsi);
> >>  	if (ret)
> >>  		return ret;
> >> @@ -2879,6 +2871,15 @@ int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
> >>  	if (ret)
> >>  		ice_vsi_decfg(vsi);
> >>  
> >> +	if (vsi->type == ICE_VSI_CTRL) {
> >> +		if (vf) {
> > I know that it is only copy paste, but shouldn't we also check if
> > vsi_idx isn't already set like in PF case?
> > 
> Not sure what you mean? make sure idx is valid? but a memset of vsi will
> initialize that to 0 which will be "valid"?
> 
> or do you want to like confirm that the vsi->idx points to the vsi in
> the array with the right pointer?
> 

Maybe I am missing something. I assume that ther can be only one VF
control VSI on VF. If we set vf->ctrl_vsi_idx to the new value we will lost
previous one without removing the vsi index from hw. In case of PF
control VSI we have WARN_ON for this case:
WARN_ON(pf->ctr_idx != ICE_NO_VSI)

Shouldn't we have
WARN_ON(vf->ctrl_idx != ICE_NO_VSI)
to be sure that there is no more VF control VSIs on this VF?

When VF control VSI is removed the vf->ctr_vsi_idx is set to ICE_NO_VSI,
so it should work as expected.

Probably this case never happen (calling ice_vsi_setup() for VF control
VSI second time on the same VF), but if we have the security check for
PF it will be nice to have the same check for VF.

> >> +			vf->ctrl_vsi_idx = vsi->idx;
> >> +		} else {
> >> +			WARN_ON(pf->ctrl_vsi_idx != ICE_NO_VSI);
> >> +			pf->ctrl_vsi_idx = vsi->idx;
> >> +		}
> >> +	}
> >> +
> >>  	return ret;
> >>  }
> >>  
> >> @@ -2962,13 +2963,13 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
> >>  	struct ice_vsi *vsi;
> >>  	int ret;
> >>  
> >> -	vsi = ice_vsi_alloc(pf, pi, vsi_type, ch, vf);
> >> +	vsi = ice_vsi_alloc(pf);
> > Looks nicer :)
> > 
> 
> :) we just moved the mess a bit.
> 
> >>  	if (!vsi) {
> >>  		dev_err(dev, "could not allocate VSI\n");
> >>  		return NULL;
> >>  	}
> >>  
> >> -	ret = ice_vsi_cfg(vsi, vf, ch, ICE_VSI_FLAG_INIT);
> >> +	ret = ice_vsi_cfg(vsi, vsi_type, pi, vf, ch, ICE_VSI_FLAG_INIT);
> > Maybe it is good patchset to implement Your idea about having vsi init
> > params structure?
> > 
> 
> 
> Probably.. I was sending what I had in our internal subfunction +
> scalable tree, so I don't have that developed yet.
> 

Sure

> >>  	if (ret)
> >>  		goto err_vsi_cfg;
> >>  
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
> >> index b76f05e1f8a3..fb785d8cde9a 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
> >> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
> >> @@ -73,7 +73,8 @@ ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id);
> >>  #define ICE_VSI_FLAG_INIT	BIT(0)
> >>  #define ICE_VSI_FLAG_NO_INIT	0
> >>  int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi);
> >> -int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf,
> >> +int ice_vsi_cfg(struct ice_vsi *vsi, enum ice_vsi_type vsi_type,
> >> +		struct ice_port_info *pi, struct ice_vf *vf,
> >>  		struct ice_channel *ch, int init_vsi);
> >>  
> >>  bool ice_is_reset_in_progress(unsigned long *state);
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> >> index 8fd9c87f30e2..29cd77dd3812 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> >> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> >> @@ -5010,7 +5010,8 @@ int ice_load(struct ice_pf *pf)
> >>  		return err;
> >>  
> >>  	vsi = ice_get_main_vsi(pf);
> >> -	err = ice_vsi_cfg(vsi, NULL, NULL, ICE_VSI_FLAG_INIT);
> >> +	err = ice_vsi_cfg(vsi, ICE_VSI_PF, pf->hw.port_info, NULL, NULL,
> >> +			  ICE_VSI_FLAG_INIT);
> >>  	if (err)
> >>  		goto err_vsi_cfg;
> >>  
> >> -- 
> >> 2.38.1.420.g319605f8f00e
> >>
> >> _______________________________________________
> >> Intel-wired-lan mailing list
> >> Intel-wired-lan@osuosl.org
> >> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D56C91A68F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 14:32:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2661403C9;
	Thu, 27 Jun 2024 12:32:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3GqiyYDav7iX; Thu, 27 Jun 2024 12:32:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 986E6403E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719491547;
	bh=4W+/hFMYNtfCXjVoo9dRWUegMIiI0Y08D2u8lfLTHiM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sOFph1jkrVBWP5ZibnyA+y11DUErhbH9+kAKnMHZgL8LkQ8x4QEDyqnQPchvEtxLj
	 vYHN1z1pm5/CzZjMUNQMZkwVUZkVOet3EHBM7wFEtbFu4f3CtuuS1mhvgqhKSZiC/8
	 FHJg7zdB+ZXbvTmVos5bAl8eqrdtp+XyeJDl/tq5WDMjatmp34T36lqolL4TBIVmAF
	 e02XverZTVeOoLHSG6ONAjMqwi52K05pJ9t4X0WNgkoP3XqWWFALYDG4e59mnjfVOL
	 CFuIOQ4rRHsi5RTMVHR+x4ABX1n0+gjAZ6J8dj0GtiEVqOpB1x52594XcO1ROzcQmT
	 xSYwctBoSmknA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 986E6403E5;
	Thu, 27 Jun 2024 12:32:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 240A11BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 12:32:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 109B4840BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 12:32:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3pFU4PRyN-_u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 12:32:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EE241840BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE241840BD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EE241840BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 12:32:24 +0000 (UTC)
X-CSE-ConnectionGUID: Zf8Gj00OQHetzelc1Zv1kA==
X-CSE-MsgGUID: yUnyyQy/QYGLZ63vHY1ZTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="28013240"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="28013240"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 05:32:24 -0700
X-CSE-ConnectionGUID: gUlL85/mR9qO1J26L1vQfw==
X-CSE-MsgGUID: TeZ8W51wQ96asTqT2fOrlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="48974069"
Received: from mev-dev.igk.intel.com (HELO mev-dev) ([10.237.112.144])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 05:32:20 -0700
Date: Thu, 27 Jun 2024 14:31:14 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <Zn1bkhZ1lF1w96AA@mev-dev>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-5-michal.swiatkowski@linux.intel.com>
 <Zn1H6hmr4Y7ZFvT6@boxer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zn1H6hmr4Y7ZFvT6@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719491545; x=1751027545;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Zb5EMl5fYkElVnsUXXDsFGM/Z2dAQphF3aYP4/Cm2Dw=;
 b=LxP1uvRMaMz9hoovb5S6q6wzcIeJ9naRy1pqlcvVI8gG/2fS7mVTZzl+
 kQZPIy0OMpcak98xodd3JrIzt8Lnwb8AjLYSJbku/w+eXv1IiUdclKh2C
 2HcdmMk0A+shLiCptCOMW8+/X93OYug4Ls+52lTpSrJ0MVYJaINHH7s8K
 knU403HVenY/hx3oY9ZtPZhITz2C9FIq+W5MNOwFCt76Qn+jrg37kbqaZ
 EVAewboFVOQAQOxi1jz1DcqNeTUMxewmp0yM/baQnClHV2bdmYLienyJx
 SD4x1pqn2awcfIHCxPITKLgDrU8jK3eNghsrOSIyFYtclb9aGZfngPy3x
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LxP1uvRM
Subject: Re: [Intel-wired-lan] [iwl-next v5 04/15] ice: treat subfunction
 VSI the same as PF VSI
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
Cc: shayd@nvidia.com, wojciech.drewek@intel.com, horms@kernel.org,
 sridhar.samudrala@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, kalesh-anakkur.purayil@broadcom.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 27, 2024 at 01:07:22PM +0200, Maciej Fijalkowski wrote:
> On Thu, Jun 06, 2024 at 01:24:52PM +0200, Michal Swiatkowski wrote:
> > When subfunction VSI is open the same code as for PF VSI should be
> > executed. Also when up is complete. Reflect that in code by adding
> > subfunction VSI to consideration.
> > 
> > In case of stopping, PF doesn't have additional tasks, so the same
> > is with subfunction VSI.
> > 
> > Reviewed-by: Simon Horman <horms@kernel.org>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> > index e76e19036593..ddc348371841 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -6726,7 +6726,8 @@ static int ice_up_complete(struct ice_vsi *vsi)
> >  
> >  	if (vsi->port_info &&
> >  	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
> > -	    vsi->netdev && vsi->type == ICE_VSI_PF) {
> > +	    ((vsi->netdev && vsi->type == ICE_VSI_PF) ||
> > +	     (vsi->netdev && vsi->type == ICE_VSI_SF))) {
> 
> patch 1 has:
> 
> 	if (vsi->netdev && (vsi->type == ICE_VSI_PF ||
> 			    vsi->type == ICE_VSI_SF)) {
> 
> so maybe stay consistent and do the same here?
> 
> nit: also seems that a really small helper would make the code easier to
> read and wrap...something like:
> 
> bool ice_is_vsi_pf_sf(struct ice_vsi* vsi)
> {
> 	return (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF);
> }

Make sense, hope you are ok, with changing it on the occasion (for
example adding multibuffer support).

Thanks,
Michal

> 
> >  		ice_print_link_msg(vsi, true);
> >  		netif_tx_start_all_queues(vsi->netdev);
> >  		netif_carrier_on(vsi->netdev);
> > @@ -7427,7 +7428,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
> >  
> >  	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
> >  
> > -	if (vsi->type == ICE_VSI_PF) {
> > +	if (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF) {
> >  		/* Notify the stack of the actual queue counts. */
> >  		err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
> >  		if (err)
> > -- 
> > 2.42.0
> > 

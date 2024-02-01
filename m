Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 448CB8451BB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 08:05:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2A4683C15;
	Thu,  1 Feb 2024 07:05:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2A4683C15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706771119;
	bh=uNWITMq7KYgzbdIiNOKGNOKQHHPle8sQyZfuSO0Ph8A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TenesdHLPcLXutpz/iAe2jQZO+z4h5Ovwafym3zuydK1z/CCtFdOJovbQlTcVb2Rq
	 teefTOPhSF1tI6nXm0LjjpaXGYgu0hKPkP/HHdD7d5AdikfuXxacgnrV94cGyteMR7
	 BGrOzTWBxGLFqs0wHiBb6AAnD3Yhk2SL+i+SNpa80i4ObxTvY906tvwVTOcT+z+Ssr
	 XQZ63uB1fDxK0ze8bI0geX8L7HSSfBLnn8wXZ05yfxDke44nraMPRGimtu6uLCITtv
	 xx/yBup5oGq0CMFRv1QgZE82CHzamqXrrnSud0AzjOILBn2f7U2if6F/xLBG686jix
	 tZtxL1+AN+Fpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id USd-e7U1Ihwa; Thu,  1 Feb 2024 07:05:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC088835F2;
	Thu,  1 Feb 2024 07:05:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC088835F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BAAEE1BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 07:05:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9094460B15
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 07:05:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9094460B15
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6bJAblc_D__D for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 07:05:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5FC060AF4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 07:05:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5FC060AF4
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10459060"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="10459060"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 23:05:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="961842778"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="961842778"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 23:05:09 -0800
Date: Thu, 1 Feb 2024 08:05:06 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Simon Horman <horms@kernel.org>
Message-ID: <ZbtCom/grznFpesc@mev-dev>
References: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
 <20240125125314.852914-5-michal.swiatkowski@linux.intel.com>
 <20240129105541.GH401354@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240129105541.GH401354@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706771113; x=1738307113;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UTM+/2cg11W3aTJGB22NuZYXxv+fuaUMV20mGa+ewX8=;
 b=NHzFORv6hw+YBjJ8OHe7CMvttz1VYQLBYGYAVLNaaxTHRRc1VqnqIQQH
 0XjcvOf/w4Sl5O9YOwrSB7csvTxJglKDnsimDGZALdzjx2fZS9rTBFdBF
 gPbyNH8TOOLHn0WHjNmCH6qHMgc/aJ3n2nxv7tsqf2aeEQm1oXHZK79Qp
 YESAgKOzppTwea9FCHM4TeJPCmc4inMy2JVx/v1on3vkzSVIIc6gb6U1K
 2kscqm2IdfkEyAOfLeb56FlqsQbVd3O+y2i0+jfNkOAtYW+4Q78yqauVM
 5/CYclT8r6zmYKzXUS8nO9tLDSdCe93+tNS7KKIBOlMvEyELtEIeAvYR3
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NHzFORv6
Subject: Re: [Intel-wired-lan] [iwl-next v1 4/8] ice: control default Tx
 rule in lag
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, netdev@vger.kernel.org,
 sridhar.samudrala@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 29, 2024 at 10:55:41AM +0000, Simon Horman wrote:
> On Thu, Jan 25, 2024 at 01:53:10PM +0100, Michal Swiatkowski wrote:
> > Tx rule in switchdev was changed to use PF instead of additional control
> > plane VSI. Because of that during lag we should control it. Control
> > means to add and remove the default Tx rule during lag active/inactive
> > switching.
> > 
> > It can be done the same way as default Rx rule.
> 
> Hi Michal,
> 
> Can I confirm that LAG TX/RX works both before and after this patch?
> 

Hi Simon,

This part of LAG code is related to the LAG + switchdev feature (it
isn't chaning LAG core code). Hope that normal LAG also works well. This
is the scenario when you have PF in switchdev, bond created of two PFs
connected to the bridge with representors. Switching between interfaces
from bond needs to add default Rx rule, and after my changes also
default Tx rule.

Do you think I should add this description to commit message?

Thanks,
Michal

> > 
> > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lag.c | 39 ++++++++++++++++++------
> >  drivers/net/ethernet/intel/ice/ice_lag.h |  3 +-
> >  2 files changed, 32 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
> 
> ...
> 
> > @@ -266,9 +274,22 @@ ice_lag_cfg_dflt_fltr(struct ice_lag *lag, bool add)
> >  {
> >  	u32 act = ICE_SINGLE_ACT_VSI_FORWARDING |
> >  		ICE_SINGLE_ACT_VALID_BIT | ICE_SINGLE_ACT_LAN_ENABLE;
> > +	int err;
> > +
> > +	err = ice_lag_cfg_fltr(lag, act, lag->pf_recipe, &lag->pf_rx_rule_id,
> > +			       ICE_FLTR_RX, add);
> > +	if (err)
> > +		return err;
> > +
> > +	err = ice_lag_cfg_fltr(lag, act, lag->pf_recipe, &lag->pf_tx_rule_id,
> > +			       ICE_FLTR_TX, add);
> > +	if (err) {
> > +		ice_lag_cfg_fltr(lag, act, lag->pf_recipe, &lag->pf_rx_rule_id,
> > +				 ICE_FLTR_RX, !add);
> > +		return err;
> > +	}
> >  
> > -	return ice_lag_cfg_fltr(lag, act, lag->pf_recipe,
> > -				&lag->pf_rule_id, add);
> > +	return 0;
> >  }
> 
> nit: perhaps this could be more idiomatically written using a
>      goto to unwind on error.
>
Thanks, I will rewrite it.

> ...

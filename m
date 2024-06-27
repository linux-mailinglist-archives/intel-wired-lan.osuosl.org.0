Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D84EF91A6A4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 14:34:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3A09403E5;
	Thu, 27 Jun 2024 12:34:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GauqUlav1bxf; Thu, 27 Jun 2024 12:34:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82B5B4040F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719491651;
	bh=ufkHklduy8MCUWMcl5ntTyF7Ybdo+6P6eYoGFg95ms0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bl+MrrA6YXbKAn72eAnw2s8JW6Bbwq1C6SpK8Op5lZlvxxZHYQcxhPNEIqSLLs7/X
	 mlOEMw0RVxUrdw6XjOu6zt9HG/vhrdQFkwl5sxWGtoMYVj3L2g4x2RVNSLnWsxhNnQ
	 CZ41/yf944q7dcp2actQe9SdasGPlVDjc3PJOtMQkpb4OsdrrkFLuakbpjg3tpqsst
	 XrRBiay7Qaz7z+4Z1mUi7iRssEhb//pCgfXeTFMr6b0dv+P1/DnePeMvFVandKrCVb
	 7xzWZ8wWw3D8IVUEtawZXhD6T1xWv0RryZkQ0Yi96WPwkgLKKNfRBd05pkV7vxl5Nf
	 B39X5gIf8zmjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82B5B4040F;
	Thu, 27 Jun 2024 12:34:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A795D1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 12:34:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93B1240C9F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 12:34:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 03NeCKfGdggo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 12:34:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 54DBA40BF3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54DBA40BF3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54DBA40BF3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 12:34:08 +0000 (UTC)
X-CSE-ConnectionGUID: qLKT9gjUShSGZJt5e33sWw==
X-CSE-MsgGUID: Rsc8UOnmTsCMhtZT3w0wMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="34067234"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="34067234"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 05:34:08 -0700
X-CSE-ConnectionGUID: bLgUQAkTQIuemEUCriarkQ==
X-CSE-MsgGUID: 8aI/ikpcSDmZSbsf7AUMvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="44187520"
Received: from mev-dev.igk.intel.com (HELO mev-dev) ([10.237.112.144])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 05:34:04 -0700
Date: Thu, 27 Jun 2024 14:32:58 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <Zn1b+huDn5tzyQ16@mev-dev>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-8-michal.swiatkowski@linux.intel.com>
 <Zn1JaxkObIWjkVAZ@boxer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zn1JaxkObIWjkVAZ@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719491649; x=1751027649;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XeClFF9nR2HbQTvgm9WthQIZl3E1UEObfYLLxcDjXTA=;
 b=cBODptP1hYm/ERUBAdkVlmFo8ZnS2NSDYyh1qsiR5lElNpQQuNpIHPtP
 jhEX9s+qXN2zWQmRrz35NqIg8z1y4Ojp9XTwXLsGmX16ilTwlRbGUi+bt
 0Igv1BUmNBysE5rFu+8a9yDhNg3s4uZezCFPeQAm5T+Rb5wE0Bpd6TnEt
 rdMIBcKcneCCzNcqn48CjSISOjwCJjigRfQ6CC7chbbIK5RMze3dwvWax
 DfEttsgZX2EdX23icVA+QojEPaCDEXJ7OhUtOEPiEEfjsM7tHNyN47llx
 8oTlT05y7D2R9L2xe6eoWwneQgfSxVND27fC58lKc+HOUnPgX1HVjXTbH
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cBODptP1
Subject: Re: [Intel-wired-lan] [iwl-next v5 07/15] ice: implement netdev for
 subfunction
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

On Thu, Jun 27, 2024 at 01:13:47PM +0200, Maciej Fijalkowski wrote:
> On Thu, Jun 06, 2024 at 01:24:55PM +0200, Michal Swiatkowski wrote:
> > From: Piotr Raczynski <piotr.raczynski@intel.com>
> > 
> > Configure netdevice for subfunction usecase. Mostly it is reusing ops
> > from the PF netdevice.
> > 
> > SF netdev is linked to devlink port registered after SF activation.
> > 
> > Reviewed-by: Simon Horman <horms@kernel.org>
> > Reviewed-by: Jiri Pirko <jiri@nvidia.com>
> > Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_sf_eth.c | 85 ++++++++++++++++++++-
> >  1 file changed, 84 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> > index abe495c2d033..3a540a2638d1 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> > @@ -2,11 +2,85 @@
> >  /* Copyright (c) 2024, Intel Corporation. */
> >  #include "ice.h"
> >  #include "ice_lib.h"
> > +#include "ice_txrx.h"
> >  #include "ice_fltr.h"
> >  #include "ice_sf_eth.h"
> >  #include "devlink/devlink_port.h"
> >  #include "devlink/devlink.h"
> >  
> > +static const struct net_device_ops ice_sf_netdev_ops = {
> > +	.ndo_open = ice_open,
> > +	.ndo_stop = ice_stop,
> > +	.ndo_start_xmit = ice_start_xmit,
> > +	.ndo_vlan_rx_add_vid = ice_vlan_rx_add_vid,
> > +	.ndo_vlan_rx_kill_vid = ice_vlan_rx_kill_vid,
> > +	.ndo_change_mtu = ice_change_mtu,
> > +	.ndo_get_stats64 = ice_get_stats64,
> > +	.ndo_tx_timeout = ice_tx_timeout,
> > +	.ndo_bpf = ice_xdp,
> > +	.ndo_xdp_xmit = ice_xdp_xmit,
> > +	.ndo_xsk_wakeup = ice_xsk_wakeup,
> > +};
> > +
> > +/**
> > + * ice_sf_cfg_netdev - Allocate, configure and register a netdev
> > + * @dyn_port: subfunction associated with configured netdev
> > + * @devlink_port: subfunction devlink port to be linked with netdev
> > + *
> > + * Return: 0 on success, negative value on failure
> > + */
> > +static int ice_sf_cfg_netdev(struct ice_dynamic_port *dyn_port,
> > +			     struct devlink_port *devlink_port)
> > +{
> > +	struct ice_vsi *vsi = dyn_port->vsi;
> > +	struct ice_netdev_priv *np;
> > +	struct net_device *netdev;
> > +	int err;
> > +
> > +	netdev = alloc_etherdev_mqs(sizeof(*np), vsi->alloc_txq,
> > +				    vsi->alloc_rxq);
> > +	if (!netdev)
> > +		return -ENOMEM;
> > +
> > +	SET_NETDEV_DEV(netdev, &vsi->back->pdev->dev);
> > +	set_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
> > +	vsi->netdev = netdev;
> > +	np = netdev_priv(netdev);
> > +	np->vsi = vsi;
> > +
> > +	ice_set_netdev_features(netdev);
> > +
> > +	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
> > +			       NETDEV_XDP_ACT_XSK_ZEROCOPY |
> > +			       NETDEV_XDP_ACT_RX_SG;
> 
> please include:
> 
> 	netdev->xdp_zc_max_segs = ICE_MAX_BUF_TXD;
> 
> so that xsk ZC multi-buffer is also supported on SF netdevs.
> 

I am going to send it as a separate patch after checking that it is
working fine with subfunction.

Thanks,
Michal

> > +
> > +	eth_hw_addr_set(netdev, dyn_port->hw_addr);
> > +	ether_addr_copy(netdev->perm_addr, dyn_port->hw_addr);
> > +	netdev->netdev_ops = &ice_sf_netdev_ops;
> > +	SET_NETDEV_DEVLINK_PORT(netdev, devlink_port);
> > +
> > +	err = register_netdev(netdev);
> > +	if (err) {
> > +		free_netdev(netdev);
> > +		vsi->netdev = NULL;
> > +		return -ENOMEM;
> > +	}
> > +	set_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
> > +	netif_carrier_off(netdev);
> > +	netif_tx_stop_all_queues(netdev);
> > +
> > +	return 0;
> > +}
> > +
> > +static void ice_sf_decfg_netdev(struct ice_vsi *vsi)
> > +{
> > +	unregister_netdev(vsi->netdev);
> > +	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
> > +	free_netdev(vsi->netdev);
> > +	vsi->netdev = NULL;
> > +	clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
> > +}
> > +
> >  /**
> >   * ice_sf_dev_probe - subfunction driver probe function
> >   * @adev: pointer to the auxiliary device
> > @@ -57,10 +131,16 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
> >  		goto err_vsi_decfg;
> >  	}
> >  
> > +	err = ice_sf_cfg_netdev(dyn_port, &sf_dev->priv->devlink_port);
> > +	if (err) {
> > +		dev_err(dev, "Subfunction netdev config failed");
> > +		goto err_devlink_destroy;
> > +	}
> > +
> >  	err = devl_port_fn_devlink_set(&dyn_port->devlink_port, devlink);
> >  	if (err) {
> >  		dev_err(dev, "Can't link devlink instance to SF devlink port");
> > -		goto err_devlink_destroy;
> > +		goto err_netdev_decfg;
> >  	}
> >  
> >  	ice_napi_add(vsi);
> > @@ -70,6 +150,8 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
> >  
> >  	return 0;
> >  
> > +err_netdev_decfg:
> > +	ice_sf_decfg_netdev(vsi);
> >  err_devlink_destroy:
> >  	ice_devlink_destroy_sf_dev_port(sf_dev);
> >  err_vsi_decfg:
> > @@ -98,6 +180,7 @@ static void ice_sf_dev_remove(struct auxiliary_device *adev)
> >  
> >  	ice_vsi_close(vsi);
> >  
> > +	ice_sf_decfg_netdev(vsi);
> >  	ice_devlink_destroy_sf_dev_port(sf_dev);
> >  	devl_unregister(devlink);
> >  	devl_unlock(devlink);
> > -- 
> > 2.42.0
> > 

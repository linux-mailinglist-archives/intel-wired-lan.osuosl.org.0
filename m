Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A8389DADA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Apr 2024 15:44:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D40B44155C;
	Tue,  9 Apr 2024 13:44:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5E-HBBxiTiW6; Tue,  9 Apr 2024 13:44:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACFE141550
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712670293;
	bh=fyQfAgNBMLWSedacyXt4Fru47wHP6YPgNO6XFwgSNtw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6CrhphrausDAIxSWvQduJ/J3wExFUWCo5r29pQn+7hR5uJH9jhQQIHJUyZM9NIRKs
	 cOyQ/L2E9aaAUSUTfpfIyk2vnwqY5uJvoVWU/Z7LuG7JGr0xLFsyeMtCPXkL87go0W
	 tGjL9FZfGRfIv8+B0SOTJ4jlsZK3mfHQkKV1p3QeYa/yiSFiXZfiglCr4z1J2KJsMh
	 TnqeSdVdF8TQd+8QMSQjlyZBQrYQDDg2gWn0PgAIM3U+ueWY10rt4txoOZ8kj5eNYr
	 ZlaPbnT7kAicUxz9wqSYgEt4yei1u98Pvjd/axHkub1WMgHxfnjJ6mRDIhznX/E4+m
	 WsUXqgSXy+Lbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACFE141550;
	Tue,  9 Apr 2024 13:44:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F12D01BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 13:44:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E995C81BCB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 13:44:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d5P2ElqcjHXb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Apr 2024 13:44:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E617181B8A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E617181B8A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E617181B8A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 13:44:50 +0000 (UTC)
X-CSE-ConnectionGUID: WUE6ZnsgSgeK8/hFkezp0A==
X-CSE-MsgGUID: iJEqzPZtSPKqxZqEZbOF5g==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="25425637"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="25425637"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 06:44:49 -0700
X-CSE-ConnectionGUID: 2yzFHN3RQFuRz+roTePX5g==
X-CSE-MsgGUID: Vnvj+d8STcKSOoVGz5mGjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="43433639"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 06:44:47 -0700
Date: Tue, 9 Apr 2024 15:44:28 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <ZhVGPAEmqYNHJywJ@mev-dev>
References: <20240408103049.19445-1-michal.swiatkowski@linux.intel.com>
 <20240408103049.19445-5-michal.swiatkowski@linux.intel.com>
 <4c99838f-3ee3-46ea-80e2-5b94336d7661@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4c99838f-3ee3-46ea-80e2-5b94336d7661@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712670291; x=1744206291;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=I7A/k+EoTx5KaTh8f2Fg5IQqp7kQKQhArVWEv/AVccU=;
 b=nh0L1G1PZphE5+8FMJU6iWBOu2VWUns+iZ+8Cqn9sCigoW9iXAe9QMYT
 CukePUSWMqpT2xy+CEpvZMd6kPsHtNdV+x5UCS43tt5VIMwZgd/K0Z26a
 K8G0qVVxBCRu42VRpT+Ahl4mx2ZsqotFx/hiDzeLi6X0MWmtlj46ixg9S
 XmaDRY1IRqFyTkK1VZP2/ux4wVPB0DoFK5l1AtgwOuxif46xDhf04+NR8
 Vs9p/WKIW75KzCSWxTpCpJhL20LdQkCkfFMMq858/zaWtoX5okaWkqKRF
 1EiF+f6eEQErYQEpqR3dhDqB6olrsbikzusZhipD5x0ReEEZ8zo7MIgTo
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nh0L1G1P
Subject: Re: [Intel-wired-lan] [iwl-next v1 4/7] ice: allocate devlink for
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
Cc: maciej.fijalkowski@intel.com, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 09, 2024 at 10:34:27AM +0200, Mateusz Polchlopek wrote:
> 
> 
> On 4/8/2024 12:30 PM, Michal Swiatkowski wrote:
> > From: Piotr Raczynski <piotr.raczynski@intel.com>
> > 
> > Make devlink allocation function generic to use it for PF and for SF.
> > 
> > Add function for SF devlink port creation. It will be used in next
> > patch.
> > 
> > Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >   .../net/ethernet/intel/ice/devlink/devlink.c  | 39 ++++++++++++--
> >   .../net/ethernet/intel/ice/devlink/devlink.h  |  1 +
> >   .../ethernet/intel/ice/devlink/devlink_port.c | 51 +++++++++++++++++++
> >   .../ethernet/intel/ice/devlink/devlink_port.h |  3 ++
> >   4 files changed, 89 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > index 661af04c8eef..05a752fec316 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > @@ -10,6 +10,7 @@
> >   #include "ice_eswitch.h"
> >   #include "ice_fw_update.h"
> >   #include "ice_dcb_lib.h"
> > +#include "ice_sf_eth.h"
> >   /* context for devlink info version reporting */
> >   struct ice_info_ctx {
> > @@ -1286,6 +1287,8 @@ static const struct devlink_ops ice_devlink_ops = {
> >   	.port_new = ice_devlink_port_new,
> >   };
> > +static const struct devlink_ops ice_sf_devlink_ops;
> > +
> >   static int
> >   ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
> >   			    struct devlink_param_gset_ctx *ctx)
> > @@ -1417,14 +1420,17 @@ static void ice_devlink_free(void *devlink_ptr)
> >   }
> >   /**
> > - * ice_allocate_pf - Allocate devlink and return PF structure pointer
> > + * ice_devlink_alloc - Allocate devlink and return devlink priv pointer
> >    * @dev: the device to allocate for
> > + * @priv_size: size of the priv memory
> > + * @ops: pointer to devlink ops for this device
> >    *
> > - * Allocate a devlink instance for this device and return the private area as
> > - * the PF structure. The devlink memory is kept track of through devres by
> > - * adding an action to remove it when unwinding.
> > + * Allocate a devlink instance for this device and return the private pointer
> > + * The devlink memory is kept track of through devres by adding an action to
> > + * remove it when unwinding.
> >    */
> > -struct ice_pf *ice_allocate_pf(struct device *dev)
> > +static void *ice_devlink_alloc(struct device *dev, size_t priv_size,
> > +			       const struct devlink_ops *ops)
> 
> Why do we need priv_size and ops if those are not used in the function?
> Shouldn't it be line:
> 
> devlink = devlink_alloc(&ice_devlink_ops, sizeof(struct ice_pf), dev);
> 
> in ice_devlink_alloc changed to take the passed param?
> 
> 

Right, it is an error. I will fix it in v2. Thanks for pointing it.

Michal

> >   {
> >   	struct devlink *devlink;
> > @@ -1439,6 +1445,29 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
> >   	return devlink_priv(devlink);
> >   }
> > +/**
> > + * ice_allocate_pf - Allocate devlink and return PF structure pointer
> > + * @dev: the device to allocate for
> > + *
> > + * Allocate a devlink instance for PF.
> > + */
> > +struct ice_pf *ice_allocate_pf(struct device *dev)
> > +{
> > +	return ice_devlink_alloc(dev, sizeof(struct ice_pf), &ice_devlink_ops);
> > +}
> > +
> > +/**
> > + * ice_allocate_sf - Allocate devlink and return SF structure pointer
> > + * @dev: the device to allocate for
> > + *
> > + * Allocate a devlink instance for SF.
> > + */
> > +struct ice_sf_priv *ice_allocate_sf(struct device *dev)
> > +{
> > +	return ice_devlink_alloc(dev, sizeof(struct ice_sf_priv),
> > +				 &ice_sf_devlink_ops);
> > +}
> > +
> >   /**
> >    * ice_devlink_register - Register devlink interface for this PF
> >    * @pf: the PF to register the devlink for.
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.h b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> > index d291c0e2e17b..1b2a5980d5e8 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink.h
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> > @@ -5,6 +5,7 @@
> >   #define _ICE_DEVLINK_H_
> >   struct ice_pf *ice_allocate_pf(struct device *dev);
> > +struct ice_sf_priv *ice_allocate_sf(struct device *dev);
> >   void ice_devlink_register(struct ice_pf *pf);
> >   void ice_devlink_unregister(struct ice_pf *pf);
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> > index f5e305a71bd0..1b933083f551 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> > @@ -432,6 +432,57 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
> >   	devlink_port_unregister(&vf->devlink_port);
> >   }
> > +/**
> > + * ice_devlink_create_sf_dev_port - Register virtual port for a subfunction
> > + * @sf_dev: the subfunction device to create a devlink port for
> > + *
> > + * Register virtual flavour devlink port for the subfunction auxiliary device
> > + * created after activating a dynamically added devlink port.
> > + *
> > + * Return: zero on success or an error code on failure.
> > + */
> > +int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev)
> > +{
> > +	struct devlink_port_attrs attrs = {};
> > +	struct devlink_port *devlink_port;
> > +	struct ice_dynamic_port *dyn_port;
> > +	struct devlink *devlink;
> > +	struct ice_vsi *vsi;
> > +	struct device *dev;
> > +	struct ice_pf *pf;
> > +	int err;
> > +
> > +	dyn_port = sf_dev->dyn_port;
> > +	vsi = dyn_port->vsi;
> > +	pf = dyn_port->pf;
> > +	dev = ice_pf_to_dev(pf);
> > +
> > +	devlink_port = &sf_dev->priv->devlink_port;
> > +
> > +	attrs.flavour = DEVLINK_PORT_FLAVOUR_VIRTUAL;
> > +
> > +	devlink_port_attrs_set(devlink_port, &attrs);
> > +	devlink = priv_to_devlink(sf_dev->priv);
> > +
> > +	err = devl_port_register(devlink, devlink_port, vsi->idx);
> > +	if (err)
> > +		dev_err(dev, "Failed to create virtual devlink port for auxiliary subfunction device %d",
> > +			vsi->idx);
> > +
> > +	return err;
> > +}
> > +
> > +/**
> > + * ice_devlink_destroy_sf_dev_port - Destroy virtual port for a subfunction
> > + * @sf_dev: the subfunction device to create a devlink port for
> > + *
> > + * Unregisters the virtual port associated with this subfunction.
> > + */
> > +void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev)
> > +{
> > +	devl_port_unregister(&sf_dev->priv->devlink_port);
> > +}
> > +
> >   /**
> >    * ice_activate_dynamic_port - Activate a dynamic port
> >    * @dyn_port: dynamic port instance to activate
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> > index 30146fef64b9..1f66705e0261 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> > @@ -5,6 +5,7 @@
> >   #define _DEVLINK_PORT_H_
> >   #include "../ice.h"
> > +#include "ice_sf_eth.h"
> >   /**
> >    * struct ice_dynamic_port - Track dynamically added devlink port instance
> > @@ -30,6 +31,8 @@ int ice_devlink_create_pf_port(struct ice_pf *pf);
> >   void ice_devlink_destroy_pf_port(struct ice_pf *pf);
> >   int ice_devlink_create_vf_port(struct ice_vf *vf);
> >   void ice_devlink_destroy_vf_port(struct ice_vf *vf);
> > +int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev);
> > +void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev);
> >   #define ice_devlink_port_to_dyn(p) \
> >   	container_of(port, struct ice_dynamic_port, devlink_port)

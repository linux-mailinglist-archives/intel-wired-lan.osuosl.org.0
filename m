Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C878C3ED0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 12:24:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CD286062F;
	Mon, 13 May 2024 10:24:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id deoLSC2yW-13; Mon, 13 May 2024 10:24:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 626BE60648
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715595859;
	bh=AqKozMCo3xOu9LmywUgLJ/Tc0/3ZNAxGyzGm0XtSoCc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DiXfcZKxOU+zgqZqjBFSubyMN0UEDmcsBHOedlXv5LnJNWGZJUYbvpCkTksSp8yDt
	 OYgjDVlO2XH5zCTgXY02gw3jIIUp5dsePBL7DXcVtUXiOVkgg4GKoKuvevCTfyfI1F
	 rZWRyHoZoGlGfqUWZCBeGwvGB3r0S49s3zix09j2QrD863w/VXke7sMEzGd6suwCFV
	 I3N+6ZzlQw6+f8f142geOl3co/JsSJJzInFMjDoG1pj00mXHoZu4F/AKXFW2+Bzc82
	 XzcAvi17A38P9plft7uk4Lv4qnIdcLUFRI6WMx8MTO8/cS3NNtL5ro5uAF00R7sMRU
	 DCMR7f82VV/9A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 626BE60648;
	Mon, 13 May 2024 10:24:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DC961BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:24:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0979D81D21
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:24:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rAYFd9LbPYCz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 10:24:16 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BF5F88176D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF5F88176D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF5F88176D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:24:15 +0000 (UTC)
X-CSE-ConnectionGUID: 8q4OHBJFS96tgOw872z/Dw==
X-CSE-MsgGUID: 0KCCPasBSmyNcBibSrQfgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="36901313"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="36901313"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:24:15 -0700
X-CSE-ConnectionGUID: 4kNn58ZHRm+lH4hA8psGXA==
X-CSE-MsgGUID: gnA2tiEvR76Yw5iLPF4grw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="35053877"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:24:12 -0700
Date: Mon, 13 May 2024 12:22:49 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>
Message-ID: <ZkHp+fIvfw2m4De0@mev-dev>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
 <20240513083735.54791-6-michal.swiatkowski@linux.intel.com>
 <CAH-L+nPnpxJKscC74YoDUr6pirHNuiBBFN8U+o9zRsW8gw2C8w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH-L+nPnpxJKscC74YoDUr6pirHNuiBBFN8U+o9zRsW8gw2C8w@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715595856; x=1747131856;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pBBU7E/gtz9WY1lWQ+akg9uuH8MCanT18u/3BHM39i4=;
 b=GMBqQNzPwCfv701MWTt7vWw0muV7B/Zh69VsvRS8Ld40nHNWJ70aGZLd
 gZTGH5gTPJ+Rt07IPUXWmfJ+9DYuyl1jYIjXQgQQ84KRHYFPoJfGDHH/+
 hCJ+TT3RoQoxcaG4IO76ADh3P14sBWTpmLR4P1X+D5VDW4dV1coPYFHFM
 g0SNcR69evwZ7NMgbgSZWoebrI3xeb4CH5EATaGjKcvxvsijpnJ6ksyX1
 btTbK96bQCwN7K9zZ2fxGXTKWQ6TUpCPEagKJl/WAwxDA7XevJjTmrJCq
 WS6KQb1+z5un3ocFUwLZgXwNIjP/AN1iWjkI2x1ujpxC7mizVYIHt2SLM
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GMBqQNzP
Subject: Re: [Intel-wired-lan] [iwl-next v2 05/15] ice: allocate devlink for
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, mateusz.polchlopek@intel.com,
 przemyslaw.kitszel@intel.com, shayd@nvidia.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com, jiri@nvidia.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com, michal.kubiak@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 13, 2024 at 02:55:48PM +0530, Kalesh Anakkur Purayil wrote:
> On Mon, May 13, 2024 at 2:03 PM Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com> wrote:
> >
> > From: Piotr Raczynski <piotr.raczynski@intel.com>
> >
> > Make devlink allocation function generic to use it for PF and for SF.
> >
> > Add function for SF devlink port creation. It will be used in next
> > patch.
> >
> > Create header file for subfunction device. Define subfunction device
> > structure there as it is needed for devlink allocation and port
> > creation.
> >
> > Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >  .../net/ethernet/intel/ice/devlink/devlink.c  | 33 ++++++++++++
> >  .../net/ethernet/intel/ice/devlink/devlink.h  |  1 +
> >  .../ethernet/intel/ice/devlink/devlink_port.c | 50 +++++++++++++++++++
> >  .../ethernet/intel/ice/devlink/devlink_port.h |  3 ++
> >  drivers/net/ethernet/intel/ice/ice_sf_eth.h   | 21 ++++++++
> >  5 files changed, 108 insertions(+)
> >  create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
> >
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > index 3fb3a7e828a4..c1fe3726f6c0 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > @@ -10,6 +10,7 @@
> >  #include "ice_eswitch.h"
> >  #include "ice_fw_update.h"
> >  #include "ice_dcb_lib.h"
> > +#include "ice_sf_eth.h"
> >
> >  /* context for devlink info version reporting */
> >  struct ice_info_ctx {
> > @@ -1282,6 +1283,8 @@ static const struct devlink_ops ice_devlink_ops = {
> >         .port_new = ice_devlink_port_new,
> >  };
> >
> > +static const struct devlink_ops ice_sf_devlink_ops;
> > +
> >  static int
> >  ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
> >                             struct devlink_param_gset_ctx *ctx)
> > @@ -1419,6 +1422,7 @@ static void ice_devlink_free(void *devlink_ptr)
> >   * Allocate a devlink instance for this device and return the private area as
> >   * the PF structure. The devlink memory is kept track of through devres by
> >   * adding an action to remove it when unwinding.
> > + *
> >   */
> >  struct ice_pf *ice_allocate_pf(struct device *dev)
> >  {
> > @@ -1435,6 +1439,35 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
> >         return devlink_priv(devlink);
> >  }
> >
> > +/**
> > + * ice_allocate_sf - Allocate devlink and return SF structure pointer
> > + * @dev: the device to allocate for
> > + * @pf: pointer to the PF structure
> > + *
> > + * Allocate a devlink instance for SF.
> > + *
> > + * Return: void pointer to allocated memory
> > + */
> > +struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf)
> > +{
> > +       struct devlink *devlink;
> > +       int err;
> > +
> > +       devlink = devlink_alloc_ns(&ice_sf_devlink_ops,
> > +                                  sizeof(struct ice_sf_priv),
> > +                                  devlink_net(priv_to_devlink(pf)), dev);
> > +       if (!devlink)
> > +               return NULL;
> > +
> > +       err = devl_nested_devlink_set(priv_to_devlink(pf), devlink);
> > +       if (err) {
> > +               devlink_free(devlink);
> > +               return ERR_PTR(err);
> > +       }
> > +
> > +       return devlink_priv(devlink);
> > +}
> > +
> >  /**
> >   * ice_devlink_register - Register devlink interface for this PF
> >   * @pf: the PF to register the devlink for.
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.h b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> > index d291c0e2e17b..1af3b0763fbb 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink.h
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> > @@ -5,6 +5,7 @@
> >  #define _ICE_DEVLINK_H_
> >
> >  struct ice_pf *ice_allocate_pf(struct device *dev);
> > +struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf);
> >
> >  void ice_devlink_register(struct ice_pf *pf);
> >  void ice_devlink_unregister(struct ice_pf *pf);
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> > index 812b306e9048..1355ea042f1d 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> > @@ -432,6 +432,56 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
> >         devl_port_unregister(&vf->devlink_port);
> >  }
> >
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
> > +       struct devlink_port_attrs attrs = {};
> > +       struct devlink_port *devlink_port;
> > +       struct ice_dynamic_port *dyn_port;
> [Kalesh] Try to maintain RCT order for variable declaration.

Maybe I don't understand RCT order correctly, but based on my
understanding it is fine. Which declaration here break RCT order?

Do you mean that ice_dynamic_port is longer than devlink_port and should
be moved up? Didn't know that RCT is also applied to inner part of
declaration. If there will be more comments I will move it in another
spin.

> > +       struct devlink *devlink;
> > +       struct ice_vsi *vsi;
> > +       struct device *dev;
> > +       struct ice_pf *pf;
> > +       int err;
> > +
> > +       dyn_port = sf_dev->dyn_port;
> > +       vsi = dyn_port->vsi;
> > +       pf = dyn_port->pf;
> > +       dev = ice_pf_to_dev(pf);
> > +
> > +       devlink_port = &sf_dev->priv->devlink_port;
> > +
> > +       attrs.flavour = DEVLINK_PORT_FLAVOUR_VIRTUAL;
> > +
> > +       devlink_port_attrs_set(devlink_port, &attrs);
> > +       devlink = priv_to_devlink(sf_dev->priv);
> > +
> > +       err = devl_port_register(devlink, devlink_port, vsi->idx);
> > +       if (err)
> > +               dev_err(dev, "Failed to create virtual devlink port for auxiliary subfunction device");
> > +
> > +       return err;
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
> > +       devl_port_unregister(&sf_dev->priv->devlink_port);
> > +}
> > +
> >  /**
> >   * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
> >   * @dyn_port: dynamic port instance to deallocate
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> > index f20d7cc522a6..e4acd855d9f9 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> > @@ -5,6 +5,7 @@
> >  #define _DEVLINK_PORT_H_
> >
> >  #include "../ice.h"
> > +#include "../ice_sf_eth.h"
> >
> >  /**
> >   * struct ice_dynamic_port - Track dynamically added devlink port instance
> > @@ -33,6 +34,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf);
> >  void ice_devlink_destroy_vf_port(struct ice_vf *vf);
> >  int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port);
> >  void ice_devlink_destroy_sf_port(struct ice_dynamic_port *dyn_port);
> > +int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev);
> > +void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev);
> >
> >  #define ice_devlink_port_to_dyn(p) \
> >         container_of(port, struct ice_dynamic_port, devlink_port)
> > diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> > new file mode 100644
> > index 000000000000..a08f8b2bceef
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> > @@ -0,0 +1,21 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/* Copyright (c) 2024, Intel Corporation. */
> > +
> > +#ifndef _ICE_SF_ETH_H_
> > +#define _ICE_SF_ETH_H_
> > +
> > +#include <linux/auxiliary_bus.h>
> > +#include "ice.h"
> > +
> > +struct ice_sf_dev {
> > +       struct auxiliary_device adev;
> > +       struct ice_dynamic_port *dyn_port;
> > +       struct ice_sf_priv *priv;
> > +};
> > +
> > +struct ice_sf_priv {
> > +       struct ice_sf_dev *dev;
> > +       struct devlink_port devlink_port;
> > +};
> > +
> > +#endif /* _ICE_SF_ETH_H_ */
> > --
> > 2.42.0
> >
> >
> 
> 
> -- 
> Regards,
> Kalesh A P



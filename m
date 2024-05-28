Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E73008D18C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 12:41:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B96C405D4;
	Tue, 28 May 2024 10:41:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MaDzQQnFSLGG; Tue, 28 May 2024 10:41:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A89C40BC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716892869;
	bh=FNzfbHJyTuepZ/o9239+U0K3yxYKcqfjvWrahGilyfo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vy1H7nVT/veKet2C2oiCdKuOFoN7+gCC6y7X3eG0rremDKd2Ku/rsozvCVyJISLJ+
	 AHiTzpOLzTgtXktfrQKcp64cL6PYb8UdL88HgTASngW0oG0JD9prVNQcmaSWR7lah+
	 swroF3wsKrm0RY87PAR2EetPQdl37CfQ8ZYCwTO8JEBBcEnc4yqVLhXcdeJorMYkI+
	 18M10MdgwKHWvTmDEoVkFSUpKOTHijcbPq63vZHLK3dRBSK5sJwZU8H9mmqWd1gf9r
	 sqjEyxHmgc9f/tqY3G2sEqrX6lq9cXFySuxV1tMJ1tK34VKXpD4ao5NcHdPMpcD53D
	 jrW9OPda8qIuQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A89C40BC7;
	Tue, 28 May 2024 10:41:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DE9B1D26AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:41:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 27D7B60681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:41:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xVh0jz3oSdB2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 10:41:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C718D6067E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C718D6067E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C718D6067E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:41:05 +0000 (UTC)
X-CSE-ConnectionGUID: CzzgXMCVSw+YLaVSyZpOrA==
X-CSE-MsgGUID: tq0GJsFpRoKB4Qrki1wdUA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13102216"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13102216"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 03:41:04 -0700
X-CSE-ConnectionGUID: mAEjigb4THeBy6MqwAD+sg==
X-CSE-MsgGUID: dIrYKWfERP2/s4X2Ty4/xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="34967932"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 03:41:01 -0700
Date: Tue, 28 May 2024 12:40:13 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ZlW0jYW/yY/qe+jN@mev-dev>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
 <20240528043813.1342483-6-michal.swiatkowski@linux.intel.com>
 <b938506f-953f-477b-9496-8ff948824a56@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b938506f-953f-477b-9496-8ff948824a56@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716892866; x=1748428866;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nxdU+VENU/erFXbdsBxA1qWDuwfs5LOt+I/fApCoaek=;
 b=mmxG5Xla1E3cDdPK2/coQzjewqT0IwnugdQEAknNL1ZSdbET9IE9ukQ1
 YKV+7/cu05zanHDFBnFe0CGSZVOIXMhnBqbpW4hYrLJGkjeefnTCP40Qn
 rISiW6Ik95sTGdd7uOwFE/KpFlwhVzDKiLfwN4gacSKyqil6qLpLnM4Ll
 cHuxm1/tJsb4mC3qyVhPqOEHrMLFLLF0fAGlS4pucvgfbonkZitiu9FY/
 mGBteO7E2Mvq2ydg58hGBCmdEn2Pay8vy6p7yGdRJsi5eMDu79avtUH2w
 X/GLtE1nfus/V62snyip46/F6TH1oW0gKtIM4UTCPCh7bDv4QpSqY8PPU
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mmxG5Xla
Subject: Re: [Intel-wired-lan] [iwl-next v3 05/15] ice: allocate devlink for
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 28, 2024 at 09:11:09AM +0200, Przemek Kitszel wrote:
> On 5/28/24 06:38, Michal Swiatkowski wrote:
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
> >   .../net/ethernet/intel/ice/devlink/devlink.c  | 33 +++++++++++++++
> >   .../net/ethernet/intel/ice/devlink/devlink.h  |  1 +
> >   .../ethernet/intel/ice/devlink/devlink_port.c | 41 +++++++++++++++++++
> >   .../ethernet/intel/ice/devlink/devlink_port.h |  3 ++
> >   drivers/net/ethernet/intel/ice/ice_sf_eth.h   | 21 ++++++++++
> >   5 files changed, 99 insertions(+)
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
> 
> just two minor nitpicks, so:
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > index bfb3d5b59a62..58196c170b1b 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > @@ -10,6 +10,7 @@
> >   #include "ice_eswitch.h"
> >   #include "ice_fw_update.h"
> >   #include "ice_dcb_lib.h"
> > +#include "ice_sf_eth.h"
> >   /* context for devlink info version reporting */
> >   struct ice_info_ctx {
> > @@ -1282,6 +1283,8 @@ static const struct devlink_ops ice_devlink_ops = {
> >   	.port_new = ice_devlink_port_new,
> >   };
> > +static const struct devlink_ops ice_sf_devlink_ops;
> > +
> >   static int
> >   ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
> >   			    struct devlink_param_gset_ctx *ctx)
> > @@ -1422,6 +1425,7 @@ static void ice_devlink_free(void *devlink_ptr)
> >    * Allocate a devlink instance for this device and return the private area as
> >    * the PF structure. The devlink memory is kept track of through devres by
> >    * adding an action to remove it when unwinding.
> > + *
> >    */
> >   struct ice_pf *ice_allocate_pf(struct device *dev)
> >   {
> > @@ -1438,6 +1442,35 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
> >   	return devlink_priv(devlink);
> >   }
> > +/**
> > + * ice_allocate_sf - Allocate devlink and return SF structure pointer
> > + * @dev: the device to allocate for
> > + * @pf: pointer to the PF structure
> > + *
> > + * Allocate a devlink instance for SF.
> > + *
> > + * Return: void pointer to allocated memory
> 
> nit: it's not void; you could add "or ERR_PTR in case of error"
> 

Right, will fix

> > + */
> > +struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf)
> > +{
> > +	struct devlink *devlink;
> > +	int err;
> > +
> > +	devlink = devlink_alloc_ns(&ice_sf_devlink_ops,
> > +				   sizeof(struct ice_sf_priv),
> > +				   devlink_net(priv_to_devlink(pf)), dev);
> > +	if (!devlink)
> > +		return NULL;
> 
> ERR_PTR(-ENOMEM) would be more consistent with the other error exit path
>

Ok

> > +
> > +	err = devl_nested_devlink_set(priv_to_devlink(pf), devlink);
> > +	if (err) {
> > +		devlink_free(devlink);
> > +		return ERR_PTR(err);
> > +	}
> > +
> > +	return devlink_priv(devlink);
> > +}
> > +
> >   /**
> >    * ice_devlink_register - Register devlink interface for this PF
> >    * @pf: the PF to register the devlink for.
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.h b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> > index d291c0e2e17b..1af3b0763fbb 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink.h
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> > @@ -5,6 +5,7 @@
> >   #define _ICE_DEVLINK_H_
> >   struct ice_pf *ice_allocate_pf(struct device *dev);
> > +struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf);
> >   void ice_devlink_register(struct ice_pf *pf);
> >   void ice_devlink_unregister(struct ice_pf *pf);
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> > index 5d1fe08e4bab..f06baabd0112 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> > @@ -489,6 +489,47 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
> >   	devl_port_unregister(&vf->devlink_port);
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
> > +	struct ice_dynamic_port *dyn_port;
> > +	struct devlink_port *devlink_port;
> > +	struct devlink *devlink;
> > +	struct ice_vsi *vsi;
> > +
> > +	dyn_port = sf_dev->dyn_port;
> > +	vsi = dyn_port->vsi;
> > +
> > +	devlink_port = &sf_dev->priv->devlink_port;
> > +
> > +	attrs.flavour = DEVLINK_PORT_FLAVOUR_VIRTUAL;
> 
> (just comment, not an issue)
> we have (among others):
> 198│ enum devlink_port_flavour {
> 199│         DEVLINK_PORT_FLAVOUR_PHYSICAL, /* Any kind of a port physically
> 200│                                         * facing the user.
> 201│                                         */
> 210│         DEVLINK_PORT_FLAVOUR_PCI_VF, /* Represents eswitch port
> 211│                                       * for the PCI VF. It is an
> internal
> 212│                                       * port that faces the PCI VF.
> 213│                                       */
> 214│         DEVLINK_PORT_FLAVOUR_VIRTUAL, /* Any virtual port facing the
> user. */
> 216│                                       * is not used in any way.
> 217│                                       */
> 218│         DEVLINK_PORT_FLAVOUR_PCI_SF, /* Represents eswitch port
> 219│                                       * for the PCI SF. It is an
> internal
> 220│                                       * port that faces the PCI SF.
> 221│                                       */
> 
> from that I conclude that _PCI_ ones are internal, and you are adding
> user-facing port, so your choice is good, even if there is one with SF
> in the name. Perhaps the enum should have this piece of documentation ;)
>

DEVLINK_PORT_FLAVOUR_PCI_SF is created during port representor creation
and linked with his netdev.

According to the documentation:
Documentation/networking/devlink/devlink-port.rst

Thanks,
Michal

[...]

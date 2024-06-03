Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A368D8480
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 15:58:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE3A040A99;
	Mon,  3 Jun 2024 13:58:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0kQolWicbgA8; Mon,  3 Jun 2024 13:58:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB82340A8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717423083;
	bh=iDs3c3sj7/aaXfdfVJWfmj5Iy4trqImka70tLisFABQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hY+ndkS5B5V+BWpLFMRWycjymG1Xs06+rMcLOHyXjIC+JvQlLoXLEpOabXYVuI4Yh
	 tajKsCDaN1PZuJbvpvbXdfPem18xd48QzIoagWq3ecsFBPshUrV9SoQEKLucIAZamg
	 WD11EuZ93JdFAXBRaDuAFu+IW7cTuC84CJ1gue2kvnUaSmUOm0dYpf3xkXF27uQHcl
	 LmX7EtOXtaSlaEe9ImrjQtl0jD8nHYf8sasFLh4FuTD6fcBz+lprxhZRBgvZ6xQPs0
	 ZorTyyLlkEDJFRJQR8+QaK/73Wxc5n2boOwc8DuWcaXk53RP5TiKeeLqGD4sQZ36Lp
	 Re1dFD386lVqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB82340A8A;
	Mon,  3 Jun 2024 13:58:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7036D1BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 13:58:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6933840A18
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 13:58:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PsTrh1t6mZcx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 13:57:59 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 03FF040A60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03FF040A60
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 03FF040A60
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 13:57:58 +0000 (UTC)
X-CSE-ConnectionGUID: cakgcfUsTWW31NMdAcd4EA==
X-CSE-MsgGUID: scPSJJTmTHa5piQ1yYJYMg==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="39318034"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="39318034"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:57:58 -0700
X-CSE-ConnectionGUID: w7KGDaM1Qua7oiZsx7yHGg==
X-CSE-MsgGUID: ilSZv5AXQE+el6BnDZDrbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="68046983"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:57:54 -0700
Date: Mon, 3 Jun 2024 15:57:04 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zl3LsLK6LZGUZkkA@mev-dev>
References: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
 <20240603095025.1395347-6-michal.swiatkowski@linux.intel.com>
 <Zl25Rioa4K2BmYe6@nanopsycho.orion>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zl25Rioa4K2BmYe6@nanopsycho.orion>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717423079; x=1748959079;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CawHBvqKyTFOvcMEG4pFUuZsEECSzKzJ+3g5yzoRS+U=;
 b=NH0cyZMVpsv/JEulxvCXjxId90QN3ZHNW2hmxxzW7/CkPUmhhHU8dwcj
 7l6QxZGy8Pnah8Ns4Rn6NqwucF4l9iZpbAmOTFYSx7eTsWMNfnBnr2beq
 DvxTuOCzc0qrzfiWFaSRLin6agnLhFDIDdNmvRVFC499vuCBavci5SJMg
 a4yqHn2BbTlUl6DzEZH7ZnHlrlDRFy9I440Qjo7GJmEc087+8xOtfG5uK
 SbqYP9hQXz26YrybjGjyMBpnDv8TI8gdZi3FHJJ9bpWntTUAd27eDuWyC
 +3WmWYbMLWVgVF4SFdyd7mVN9rmnco+DbcwdhtVpMU296T5QLLPYlcTJg
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NH0cyZMV
Subject: Re: [Intel-wired-lan] [iwl-next v4 05/15] ice: allocate devlink for
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, horms@kernel.org,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 03, 2024 at 02:38:30PM +0200, Jiri Pirko wrote:
> Mon, Jun 03, 2024 at 11:50:15AM CEST, michal.swiatkowski@linux.intel.com wrote:
> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> >
> >Make devlink allocation function generic to use it for PF and for SF.
> >
> >Add function for SF devlink port creation. It will be used in next
> >patch.
> >
> >Create header file for subfunction device. Define subfunction device
> >structure there as it is needed for devlink allocation and port
> >creation.
> >
> >Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> >Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >---
> > .../net/ethernet/intel/ice/devlink/devlink.c  | 33 +++++++++++++++
> > .../net/ethernet/intel/ice/devlink/devlink.h  |  1 +
> > .../ethernet/intel/ice/devlink/devlink_port.c | 41 +++++++++++++++++++
> > .../ethernet/intel/ice/devlink/devlink_port.h |  3 ++
> > drivers/net/ethernet/intel/ice/ice_sf_eth.h   | 21 ++++++++++
> > 5 files changed, 99 insertions(+)
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
> >
> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >index bfb3d5b59a62..00f549daca57 100644
> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >@@ -10,6 +10,7 @@
> > #include "ice_eswitch.h"
> > #include "ice_fw_update.h"
> > #include "ice_dcb_lib.h"
> >+#include "ice_sf_eth.h"
> > 
> > /* context for devlink info version reporting */
> > struct ice_info_ctx {
> >@@ -1282,6 +1283,8 @@ static const struct devlink_ops ice_devlink_ops = {
> > 	.port_new = ice_devlink_port_new,
> > };
> > 
> >+static const struct devlink_ops ice_sf_devlink_ops;
> >+
> > static int
> > ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
> > 			    struct devlink_param_gset_ctx *ctx)
> >@@ -1422,6 +1425,7 @@ static void ice_devlink_free(void *devlink_ptr)
> >  * Allocate a devlink instance for this device and return the private area as
> >  * the PF structure. The devlink memory is kept track of through devres by
> >  * adding an action to remove it when unwinding.
> >+ *
> >  */
> > struct ice_pf *ice_allocate_pf(struct device *dev)
> > {
> >@@ -1438,6 +1442,35 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
> > 	return devlink_priv(devlink);
> > }
> > 
> >+/**
> >+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
> >+ * @dev: the device to allocate for
> >+ * @pf: pointer to the PF structure
> >+ *
> >+ * Allocate a devlink instance for SF.
> >+ *
> >+ * Return: ice_sf_priv pointer to allocated memory or ERR_PTR in case of error
> >+ */
> >+struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf)
> >+{
> >+	struct devlink *devlink;
> >+	int err;
> >+
> >+	devlink = devlink_alloc_ns(&ice_sf_devlink_ops,
> >+				   sizeof(struct ice_sf_priv),
> >+				   devlink_net(priv_to_devlink(pf)), dev);
> 
> I don't think this is correct. This is devlink instance for the actual
> SF. It is probed on auxiliary bus. I don't see any reason why the
> devlink instance netns should be determined by the PF devlink netns.
> For VFs, you also don't do it. In mlx5, the only SF implementation, SF
> devlink instances are created in initial netns. Please follow that.
> 

Ok, I will change it, thanks.

> 
> 
> >+	if (!devlink)
> >+		return ERR_PTR(-ENOMEM);
> >+
> >+	err = devl_nested_devlink_set(priv_to_devlink(pf), devlink);
> >+	if (err) {
> >+		devlink_free(devlink);
> >+		return ERR_PTR(err);
> >+	}
> >+
> >+	return devlink_priv(devlink);
> >+}
> >+
> > /**
> >  * ice_devlink_register - Register devlink interface for this PF
> >  * @pf: the PF to register the devlink for.
> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.h b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> >index d291c0e2e17b..1af3b0763fbb 100644
> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink.h
> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> >@@ -5,6 +5,7 @@
> > #define _ICE_DEVLINK_H_
> > 
> > struct ice_pf *ice_allocate_pf(struct device *dev);
> >+struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf);
> > 
> > void ice_devlink_register(struct ice_pf *pf);
> > void ice_devlink_unregister(struct ice_pf *pf);
> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> >index 5d1fe08e4bab..f06baabd0112 100644
> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> >@@ -489,6 +489,47 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
> > 	devl_port_unregister(&vf->devlink_port);
> > }
> > 
> >+/**
> >+ * ice_devlink_create_sf_dev_port - Register virtual port for a subfunction
> >+ * @sf_dev: the subfunction device to create a devlink port for
> >+ *
> >+ * Register virtual flavour devlink port for the subfunction auxiliary device
> >+ * created after activating a dynamically added devlink port.
> >+ *
> >+ * Return: zero on success or an error code on failure.
> >+ */
> >+int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev)
> >+{
> >+	struct devlink_port_attrs attrs = {};
> >+	struct ice_dynamic_port *dyn_port;
> >+	struct devlink_port *devlink_port;
> >+	struct devlink *devlink;
> >+	struct ice_vsi *vsi;
> >+
> >+	dyn_port = sf_dev->dyn_port;
> >+	vsi = dyn_port->vsi;
> >+
> >+	devlink_port = &sf_dev->priv->devlink_port;
> >+
> >+	attrs.flavour = DEVLINK_PORT_FLAVOUR_VIRTUAL;
> >+
> >+	devlink_port_attrs_set(devlink_port, &attrs);
> >+	devlink = priv_to_devlink(sf_dev->priv);
> >+
> >+	return devl_port_register(devlink, devlink_port, vsi->idx);
> >+}
> >+
> >+/**
> >+ * ice_devlink_destroy_sf_dev_port - Destroy virtual port for a subfunction
> >+ * @sf_dev: the subfunction device to create a devlink port for
> >+ *
> >+ * Unregisters the virtual port associated with this subfunction.
> >+ */
> >+void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev)
> >+{
> >+	devl_port_unregister(&sf_dev->priv->devlink_port);
> >+}
> >+
> > /**
> >  * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
> >  * @dyn_port: dynamic port instance to deallocate
> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> >index 08ebf56664a5..97b21b58c300 100644
> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> >@@ -5,6 +5,7 @@
> > #define _DEVLINK_PORT_H_
> > 
> > #include "../ice.h"
> >+#include "../ice_sf_eth.h"
> > 
> > /**
> >  * struct ice_dynamic_port - Track dynamically added devlink port instance
> >@@ -34,6 +35,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf);
> > void ice_devlink_destroy_vf_port(struct ice_vf *vf);
> > int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port);
> > void ice_devlink_destroy_sf_port(struct ice_dynamic_port *dyn_port);
> >+int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev);
> >+void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev);
> > 
> > #define ice_devlink_port_to_dyn(port) \
> > 	container_of(port, struct ice_dynamic_port, devlink_port)
> >diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> >new file mode 100644
> >index 000000000000..a08f8b2bceef
> >--- /dev/null
> >+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> >@@ -0,0 +1,21 @@
> >+/* SPDX-License-Identifier: GPL-2.0 */
> >+/* Copyright (c) 2024, Intel Corporation. */
> >+
> >+#ifndef _ICE_SF_ETH_H_
> >+#define _ICE_SF_ETH_H_
> >+
> >+#include <linux/auxiliary_bus.h>
> >+#include "ice.h"
> >+
> >+struct ice_sf_dev {
> >+	struct auxiliary_device adev;
> >+	struct ice_dynamic_port *dyn_port;
> >+	struct ice_sf_priv *priv;
> >+};
> >+
> >+struct ice_sf_priv {
> >+	struct ice_sf_dev *dev;
> >+	struct devlink_port devlink_port;
> >+};
> >+
> >+#endif /* _ICE_SF_ETH_H_ */
> >-- 
> >2.42.0
> >
> >

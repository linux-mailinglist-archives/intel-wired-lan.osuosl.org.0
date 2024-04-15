Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBE58A4A8B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Apr 2024 10:40:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E81F4069A;
	Mon, 15 Apr 2024 08:40:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NhtJ_U2Ju6hY; Mon, 15 Apr 2024 08:40:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2DAB4069D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713170456;
	bh=QNo+m6V0Vbo7UpeADuMQTLl5aNfYzMyCMtXWnyN9f6c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=34FH5DSolHFpvSsJb5wPk87YctJl/H9fC60YDbXfv6XsaWkhpp98dS68w/6CHMYaE
	 A00d4MZB2ZB98ClPjjLmXwN1sPRhHaujvOAWmYdJhqlImveR1tnu2R3D066K48pDPO
	 K8EsvLMgNdIMQyPjJydCqnTQgZAShLNQnfpD6zd/JMtXc4ts5HpEfO6c0YPrbc9gk0
	 nW5VqhoL8YvMqbHK4BMXYuPJZJ0z7cMgvceCUbih0qhfr/qNBRTjs5ZG9Mf++ByIbF
	 MIj2w0kF+h+iiTWUd2Bmzty+fRl4gRO3rLCgG87WqGd/M0PaJCCDopFtyJraIZExXc
	 bVEHj3cu/eo+g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2DAB4069D;
	Mon, 15 Apr 2024 08:40:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4196F1BF589
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 08:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A9A540198
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 08:40:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KasaUr2IOvWN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Apr 2024 08:40:52 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2B1A440124
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B1A440124
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B1A440124
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 08:40:51 +0000 (UTC)
X-CSE-ConnectionGUID: g+BhICpqQC+4+rACKkuC6g==
X-CSE-MsgGUID: Hsw051BiS9y6y5xFydC3BA==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9098648"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9098648"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:40:51 -0700
X-CSE-ConnectionGUID: XqWpYzdiQe6hJ1h5WZoNEw==
X-CSE-MsgGUID: Wv77vYFvTFqJTzWj4tdM3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="59288892"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:40:48 -0700
Date: Mon, 15 Apr 2024 10:40:28 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zhzn/JZ04MlRe2rX@mev-dev>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
 <20240412063053.339795-5-michal.swiatkowski@linux.intel.com>
 <Zhjhn2hu5ziVSq1h@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zhjhn2hu5ziVSq1h@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713170452; x=1744706452;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Kr0ak1k/sKvBmJQojvP56RuLnV3RRz/nrsvEucaqngo=;
 b=V7f/A/ZbpGZc2nLl5aIhEzt8vdTSAJXHJv38UdNYZoqBuPX1/e+QBkvB
 lkLA63Lr8zqMTPzasRc2SkOodWfv8Iz61UgVmOcArXFjQ1d4f5EqfokT4
 uom2Jx6PXehZ8JmIkE5+oi2RkXvUIyYyENJtHGvZF8vuiSxHAJU0PsnJf
 G/Pvr3NXuah9dvkOGrZJrLO6ro1Uf22Xxr5dW87cRYFYR1I1VvdZqJDqh
 YUiZ9wkl9D8DRVgw5UJ9Y72J+t+v0f3Bg4upxOMqWZbWC85IcPuuFgyLi
 +CgAt/z2Y5NqHL+LHtzgPCXbA2BEIVspPoQ1ZanKBvnsWNoj8z6FMPg6A
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V7f/A/Zb
Subject: Re: [Intel-wired-lan] [iwl-next v3 4/7] ice: allocate devlink for
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 jiri@nvidia.com, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 12, 2024 at 09:24:15AM +0200, Jiri Pirko wrote:
> Fri, Apr 12, 2024 at 08:30:50AM CEST, michal.swiatkowski@linux.intel.com wrote:
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
> >Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >---
> > .../net/ethernet/intel/ice/devlink/devlink.c  | 47 ++++++++++++++---
> > .../net/ethernet/intel/ice/devlink/devlink.h  |  1 +
> > .../ethernet/intel/ice/devlink/devlink_port.c | 51 +++++++++++++++++++
> > .../ethernet/intel/ice/devlink/devlink_port.h |  3 ++
> > drivers/net/ethernet/intel/ice/ice_sf_eth.h   | 21 ++++++++
> > 5 files changed, 117 insertions(+), 6 deletions(-)
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
> >
> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >index 661af04c8eef..5a78bf08e731 100644
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
> >@@ -1286,6 +1287,8 @@ static const struct devlink_ops ice_devlink_ops = {
> > 	.port_new = ice_devlink_port_new,
> > };
> > 
> >+static const struct devlink_ops ice_sf_devlink_ops;
> >+
> > static int
> > ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
> > 			    struct devlink_param_gset_ctx *ctx)
> >@@ -1417,18 +1420,23 @@ static void ice_devlink_free(void *devlink_ptr)
> > }
> > 
> > /**
> >- * ice_allocate_pf - Allocate devlink and return PF structure pointer
> >+ * ice_devlink_alloc - Allocate devlink and return devlink priv pointer
> >  * @dev: the device to allocate for
> >+ * @priv_size: size of the priv memory
> >+ * @ops: pointer to devlink ops for this device
> >+ *
> >+ * Allocate a devlink instance for this device and return the private pointer
> >+ * The devlink memory is kept track of through devres by adding an action to
> >+ * remove it when unwinding.
> >  *
> >- * Allocate a devlink instance for this device and return the private area as
> >- * the PF structure. The devlink memory is kept track of through devres by
> >- * adding an action to remove it when unwinding.
> >+ * Return: void pointer to allocated memory
> >  */
> >-struct ice_pf *ice_allocate_pf(struct device *dev)
> >+static void *ice_devlink_alloc(struct device *dev, size_t priv_size,
> >+			       const struct devlink_ops *ops)
> > {
> > 	struct devlink *devlink;
> > 
> >-	devlink = devlink_alloc(&ice_devlink_ops, sizeof(struct ice_pf), dev);
> >+	devlink = devlink_alloc(ops, priv_size, dev);
> > 	if (!devlink)
> > 		return NULL;
> > 
> >@@ -1439,6 +1447,33 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
> > 	return devlink_priv(devlink);
> > }
> > 
> >+/**
> >+ * ice_allocate_pf - Allocate devlink and return PF structure pointer
> >+ * @dev: the device to allocate for
> >+ *
> >+ * Allocate a devlink instance for PF.
> >+ *
> >+ * Return: void pointer to allocated memory
> >+ */
> >+struct ice_pf *ice_allocate_pf(struct device *dev)
> >+{
> >+	return ice_devlink_alloc(dev, sizeof(struct ice_pf), &ice_devlink_ops);
> >+}
> >+
> >+/**
> >+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
> >+ * @dev: the device to allocate for
> >+ *
> >+ * Allocate a devlink instance for SF.
> >+ *
> >+ * Return: void pointer to allocated memory
> >+ */
> >+struct ice_sf_priv *ice_allocate_sf(struct device *dev)
> >+{
> >+	return ice_devlink_alloc(dev, sizeof(struct ice_sf_priv),
> >+				 &ice_sf_devlink_ops);
> >+}
> >+
> > /**
> >  * ice_devlink_register - Register devlink interface for this PF
> >  * @pf: the PF to register the devlink for.
> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.h b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> >index d291c0e2e17b..1b2a5980d5e8 100644
> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink.h
> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> >@@ -5,6 +5,7 @@
> > #define _ICE_DEVLINK_H_
> > 
> > struct ice_pf *ice_allocate_pf(struct device *dev);
> >+struct ice_sf_priv *ice_allocate_sf(struct device *dev);
> > 
> > void ice_devlink_register(struct ice_pf *pf);
> > void ice_devlink_unregister(struct ice_pf *pf);
> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> >index f5e305a71bd0..1b933083f551 100644
> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> >@@ -432,6 +432,57 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
> > 	devlink_port_unregister(&vf->devlink_port);
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
> >+	struct devlink_port *devlink_port;
> >+	struct ice_dynamic_port *dyn_port;
> >+	struct devlink *devlink;
> >+	struct ice_vsi *vsi;
> >+	struct device *dev;
> >+	struct ice_pf *pf;
> >+	int err;
> >+
> >+	dyn_port = sf_dev->dyn_port;
> >+	vsi = dyn_port->vsi;
> >+	pf = dyn_port->pf;
> >+	dev = ice_pf_to_dev(pf);
> >+
> >+	devlink_port = &sf_dev->priv->devlink_port;
> >+
> >+	attrs.flavour = DEVLINK_PORT_FLAVOUR_VIRTUAL;
> >+
> >+	devlink_port_attrs_set(devlink_port, &attrs);
> >+	devlink = priv_to_devlink(sf_dev->priv);
> >+
> >+	err = devl_port_register(devlink, devlink_port, vsi->idx);
> >+	if (err)
> >+		dev_err(dev, "Failed to create virtual devlink port for auxiliary subfunction device %d",
> >+			vsi->idx);
> 
> I wonder if the value of vsi->idx is any useful to the user. I guess
> he is not aware of it. Since this error happens upon user cmd active
> call, the identification is pointless. User know on which object he is
> working. Please remove.
> 
Right, will remove it.

> 
> >+
> >+	return err;
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
> >  * ice_activate_dynamic_port - Activate a dynamic port
> >  * @dyn_port: dynamic port instance to activate
> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> >index 30146fef64b9..1f66705e0261 100644
> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> >@@ -5,6 +5,7 @@
> > #define _DEVLINK_PORT_H_
> > 
> > #include "../ice.h"
> >+#include "ice_sf_eth.h"
> > 
> > /**
> >  * struct ice_dynamic_port - Track dynamically added devlink port instance
> >@@ -30,6 +31,8 @@ int ice_devlink_create_pf_port(struct ice_pf *pf);
> > void ice_devlink_destroy_pf_port(struct ice_pf *pf);
> > int ice_devlink_create_vf_port(struct ice_vf *vf);
> > void ice_devlink_destroy_vf_port(struct ice_vf *vf);
> >+int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev);
> >+void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev);
> > 
> > #define ice_devlink_port_to_dyn(p) \
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

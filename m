Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B6B8A27E6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 09:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D3BD6136B;
	Fri, 12 Apr 2024 07:24:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Dx2JghjIIL1; Fri, 12 Apr 2024 07:24:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E30E461371
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712906665;
	bh=SY+RglWT+YID+oXmo0lkPgvJUJViZHPWsquouwr1PuA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2qG2zgBDpLspwyLGpJEGPdv2y7g/MFbb8mvhEq3qsEByR8XfND/GhE3lQPqOfQ53c
	 5ulxJdpDQy6Im8F8RBumrH8Do1HMf1nDrKYZHWb4MSLBy/6Yk33oiwa+M8EIPEiXAY
	 bHN14/1Y5ClH0DukbKOR9CKXkbfZLZcaQvILxJ0e+BXkCl9n8Dcuok+vsFCec0+v3d
	 hV/QmcAwjygA/QV3uP5If1tu/YmLL7Pw0SkoS5D0pyErFZ9q3+DO9xf9kJU+HpQUI5
	 0bywZ8vwBWAKjuoKkgTlqxQ5XyaTFKwL7ZlmE48smraRKkxI3O8368S0vsH+EBcfDw
	 pbizekJL3Y4RQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E30E461371;
	Fri, 12 Apr 2024 07:24:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D0051BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 07:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64C926136A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 07:24:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CHuqChnOx27s for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 07:24:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::133; helo=mail-lf1-x133.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 138D66088F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 138D66088F
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 138D66088F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 07:24:20 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id
 2adb3069b0e04-516cbf3fe68so756177e87.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 00:24:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712906658; x=1713511458;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SY+RglWT+YID+oXmo0lkPgvJUJViZHPWsquouwr1PuA=;
 b=wS+8CCroI5/3wp/DjXK9FPRwSofcLzPvU40nURGaHdR6asS4sAAYtVp4CG8hejs+Pf
 5WSM4Te5pjYyddQlGqCygwAmZWWGr7NSPQCRsPYLsrOEKToJ3ErM6nKUM+G3hQp7wgCE
 7o1yXN0AlC1BJQdciPnT4UQTkP7/uE6wBNEOF8WGJrS6zt7seC37s7A4DeSRUwYhgWJt
 wo61VPEKXRpiHw6tvU34zerBJxny+JG2urJKlsv3R70Pf8nqBQ/IPkKWHHUu1VeXRD1D
 XWZVFpgbj74U8Ov3CvTV1Jta/jaa3P2UlecagWxLFuMuiTqfjhy7jacH8aaEmJuLlDRu
 M4WA==
X-Gm-Message-State: AOJu0YzzBBNu1BC819c68T+BJu/6VgWvkvEzILXIZeU7wrSShlCZUP+P
 xLg8tvr00sKnZ+Pj0Pgeafp710tH2X79DokxTWcz7hU1y7qnKPcqCb+TUJtWi08=
X-Google-Smtp-Source: AGHT+IHRclCn1vg83Xrf5+37yH2sMECpNPMG8FcNv1MsYlBHrcADf67xDgvx7m+4fxyWD2FGeUKzFw==
X-Received: by 2002:ac2:5f84:0:b0:516:d8e5:4e13 with SMTP id
 r4-20020ac25f84000000b00516d8e54e13mr1058548lfe.26.1712906658145; 
 Fri, 12 Apr 2024 00:24:18 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 j5-20020ac25505000000b00517374e92ecsm444602lfk.93.2024.04.12.00.24.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Apr 2024 00:24:17 -0700 (PDT)
Date: Fri, 12 Apr 2024 09:24:15 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zhjhn2hu5ziVSq1h@nanopsycho>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
 <20240412063053.339795-5-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240412063053.339795-5-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1712906658; x=1713511458;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=SY+RglWT+YID+oXmo0lkPgvJUJViZHPWsquouwr1PuA=;
 b=2r+9g7+a5lDPyCjA9SzSy27Z/hgchhd7igi4dZit5sZ+5siAYL4DCuZLReFX8OiHAa
 UffAEvPpID96fSqTjuiAXSMqlQPTIuqzzEuUeL6sib5l2BfsSRjRRc5nRQs6mSnu43Ts
 azCXtohnOhPBoHWh1nXMEzrnaP26Z4a4PmRInGqVczjuUNhGDNNUi1RxP4Rz9Rimv5qz
 OSnJ0BJQgXTfzAGkBZWHZ7Po84GdlyIHydRAj5Od8/THGYE+DOFxLQqds0ATlVIK5kdw
 3B8jGFnYiF2wY5JBSgLWqifrbsfxT8u30FPKqOq51Lm04Q+Ebf/iEI3YUveA83d2FlyM
 xfGw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=2r+9g7+a
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

Fri, Apr 12, 2024 at 08:30:50AM CEST, michal.swiatkowski@linux.intel.com wrote:
>From: Piotr Raczynski <piotr.raczynski@intel.com>
>
>Make devlink allocation function generic to use it for PF and for SF.
>
>Add function for SF devlink port creation. It will be used in next
>patch.
>
>Create header file for subfunction device. Define subfunction device
>structure there as it is needed for devlink allocation and port
>creation.
>
>Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> .../net/ethernet/intel/ice/devlink/devlink.c  | 47 ++++++++++++++---
> .../net/ethernet/intel/ice/devlink/devlink.h  |  1 +
> .../ethernet/intel/ice/devlink/devlink_port.c | 51 +++++++++++++++++++
> .../ethernet/intel/ice/devlink/devlink_port.h |  3 ++
> drivers/net/ethernet/intel/ice/ice_sf_eth.h   | 21 ++++++++
> 5 files changed, 117 insertions(+), 6 deletions(-)
> create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
>
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>index 661af04c8eef..5a78bf08e731 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>@@ -10,6 +10,7 @@
> #include "ice_eswitch.h"
> #include "ice_fw_update.h"
> #include "ice_dcb_lib.h"
>+#include "ice_sf_eth.h"
> 
> /* context for devlink info version reporting */
> struct ice_info_ctx {
>@@ -1286,6 +1287,8 @@ static const struct devlink_ops ice_devlink_ops = {
> 	.port_new = ice_devlink_port_new,
> };
> 
>+static const struct devlink_ops ice_sf_devlink_ops;
>+
> static int
> ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
> 			    struct devlink_param_gset_ctx *ctx)
>@@ -1417,18 +1420,23 @@ static void ice_devlink_free(void *devlink_ptr)
> }
> 
> /**
>- * ice_allocate_pf - Allocate devlink and return PF structure pointer
>+ * ice_devlink_alloc - Allocate devlink and return devlink priv pointer
>  * @dev: the device to allocate for
>+ * @priv_size: size of the priv memory
>+ * @ops: pointer to devlink ops for this device
>+ *
>+ * Allocate a devlink instance for this device and return the private pointer
>+ * The devlink memory is kept track of through devres by adding an action to
>+ * remove it when unwinding.
>  *
>- * Allocate a devlink instance for this device and return the private area as
>- * the PF structure. The devlink memory is kept track of through devres by
>- * adding an action to remove it when unwinding.
>+ * Return: void pointer to allocated memory
>  */
>-struct ice_pf *ice_allocate_pf(struct device *dev)
>+static void *ice_devlink_alloc(struct device *dev, size_t priv_size,
>+			       const struct devlink_ops *ops)
> {
> 	struct devlink *devlink;
> 
>-	devlink = devlink_alloc(&ice_devlink_ops, sizeof(struct ice_pf), dev);
>+	devlink = devlink_alloc(ops, priv_size, dev);
> 	if (!devlink)
> 		return NULL;
> 
>@@ -1439,6 +1447,33 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
> 	return devlink_priv(devlink);
> }
> 
>+/**
>+ * ice_allocate_pf - Allocate devlink and return PF structure pointer
>+ * @dev: the device to allocate for
>+ *
>+ * Allocate a devlink instance for PF.
>+ *
>+ * Return: void pointer to allocated memory
>+ */
>+struct ice_pf *ice_allocate_pf(struct device *dev)
>+{
>+	return ice_devlink_alloc(dev, sizeof(struct ice_pf), &ice_devlink_ops);
>+}
>+
>+/**
>+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
>+ * @dev: the device to allocate for
>+ *
>+ * Allocate a devlink instance for SF.
>+ *
>+ * Return: void pointer to allocated memory
>+ */
>+struct ice_sf_priv *ice_allocate_sf(struct device *dev)
>+{
>+	return ice_devlink_alloc(dev, sizeof(struct ice_sf_priv),
>+				 &ice_sf_devlink_ops);
>+}
>+
> /**
>  * ice_devlink_register - Register devlink interface for this PF
>  * @pf: the PF to register the devlink for.
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.h b/drivers/net/ethernet/intel/ice/devlink/devlink.h
>index d291c0e2e17b..1b2a5980d5e8 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink.h
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.h
>@@ -5,6 +5,7 @@
> #define _ICE_DEVLINK_H_
> 
> struct ice_pf *ice_allocate_pf(struct device *dev);
>+struct ice_sf_priv *ice_allocate_sf(struct device *dev);
> 
> void ice_devlink_register(struct ice_pf *pf);
> void ice_devlink_unregister(struct ice_pf *pf);
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>index f5e305a71bd0..1b933083f551 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>@@ -432,6 +432,57 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
> 	devlink_port_unregister(&vf->devlink_port);
> }
> 
>+/**
>+ * ice_devlink_create_sf_dev_port - Register virtual port for a subfunction
>+ * @sf_dev: the subfunction device to create a devlink port for
>+ *
>+ * Register virtual flavour devlink port for the subfunction auxiliary device
>+ * created after activating a dynamically added devlink port.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ */
>+int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev)
>+{
>+	struct devlink_port_attrs attrs = {};
>+	struct devlink_port *devlink_port;
>+	struct ice_dynamic_port *dyn_port;
>+	struct devlink *devlink;
>+	struct ice_vsi *vsi;
>+	struct device *dev;
>+	struct ice_pf *pf;
>+	int err;
>+
>+	dyn_port = sf_dev->dyn_port;
>+	vsi = dyn_port->vsi;
>+	pf = dyn_port->pf;
>+	dev = ice_pf_to_dev(pf);
>+
>+	devlink_port = &sf_dev->priv->devlink_port;
>+
>+	attrs.flavour = DEVLINK_PORT_FLAVOUR_VIRTUAL;
>+
>+	devlink_port_attrs_set(devlink_port, &attrs);
>+	devlink = priv_to_devlink(sf_dev->priv);
>+
>+	err = devl_port_register(devlink, devlink_port, vsi->idx);
>+	if (err)
>+		dev_err(dev, "Failed to create virtual devlink port for auxiliary subfunction device %d",
>+			vsi->idx);

I wonder if the value of vsi->idx is any useful to the user. I guess
he is not aware of it. Since this error happens upon user cmd active
call, the identification is pointless. User know on which object he is
working. Please remove.


>+
>+	return err;
>+}
>+
>+/**
>+ * ice_devlink_destroy_sf_dev_port - Destroy virtual port for a subfunction
>+ * @sf_dev: the subfunction device to create a devlink port for
>+ *
>+ * Unregisters the virtual port associated with this subfunction.
>+ */
>+void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev)
>+{
>+	devl_port_unregister(&sf_dev->priv->devlink_port);
>+}
>+
> /**
>  * ice_activate_dynamic_port - Activate a dynamic port
>  * @dyn_port: dynamic port instance to activate
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>index 30146fef64b9..1f66705e0261 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>@@ -5,6 +5,7 @@
> #define _DEVLINK_PORT_H_
> 
> #include "../ice.h"
>+#include "ice_sf_eth.h"
> 
> /**
>  * struct ice_dynamic_port - Track dynamically added devlink port instance
>@@ -30,6 +31,8 @@ int ice_devlink_create_pf_port(struct ice_pf *pf);
> void ice_devlink_destroy_pf_port(struct ice_pf *pf);
> int ice_devlink_create_vf_port(struct ice_vf *vf);
> void ice_devlink_destroy_vf_port(struct ice_vf *vf);
>+int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev);
>+void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev);
> 
> #define ice_devlink_port_to_dyn(p) \
> 	container_of(port, struct ice_dynamic_port, devlink_port)
>diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
>new file mode 100644
>index 000000000000..a08f8b2bceef
>--- /dev/null
>+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
>@@ -0,0 +1,21 @@
>+/* SPDX-License-Identifier: GPL-2.0 */
>+/* Copyright (c) 2024, Intel Corporation. */
>+
>+#ifndef _ICE_SF_ETH_H_
>+#define _ICE_SF_ETH_H_
>+
>+#include <linux/auxiliary_bus.h>
>+#include "ice.h"
>+
>+struct ice_sf_dev {
>+	struct auxiliary_device adev;
>+	struct ice_dynamic_port *dyn_port;
>+	struct ice_sf_priv *priv;
>+};
>+
>+struct ice_sf_priv {
>+	struct ice_sf_dev *dev;
>+	struct devlink_port devlink_port;
>+};
>+
>+#endif /* _ICE_SF_ETH_H_ */
>-- 
>2.42.0
>
>

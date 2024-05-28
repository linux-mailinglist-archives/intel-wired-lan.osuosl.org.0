Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B9E8D135A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 06:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40A35400E1;
	Tue, 28 May 2024 04:33:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iUYaSG4rmntj; Tue, 28 May 2024 04:33:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A06A40055
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716870808;
	bh=AEakdagdAtd6xx6n73PK+X7303JovdKxVfhHEmeYkqQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OLmxgnRYOmZWl12NM6jl61C1ExCkV7vXgIecf8p0TF76Oj1ABq8hsKe09MlwfF9SM
	 6z6w5KQdUinswRzLF4X5bbvl67+32+8I1C68ZfG+dOalaQxUGs1LyX9rfIgDhfSMnY
	 ub342fBBhI1WYzmfF3PYEcJ1wA30llomZO8hZOB/FlZGcKWM+uYQDvgKA5LwMeAiLP
	 8wWmhfZxdd5EOfgX2HUlC4wZpGWpmUcj4cLH5o5ATjUy0CX9RYkTAEejCeQOKyFGnv
	 Vn7dN/Ak/CPX3DzwOvAqmjvhtaoXw6yWNVH6s1SwAyxzPnBlgeVMLL0p5l8xV1qk8/
	 UD1Sqkr0XCaiw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A06A40055;
	Tue, 28 May 2024 04:33:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F53E1D23B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F388405C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uz8Zf9ho2mPf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 04:33:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2327E405CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2327E405CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2327E405CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:24 +0000 (UTC)
X-CSE-ConnectionGUID: fn5iWpL5Sjy3gyBwU9VTyQ==
X-CSE-MsgGUID: S2c/3YPFTtyPIT91L19qrA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13020097"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13020097"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 21:33:24 -0700
X-CSE-ConnectionGUID: LJ72CeDOQpORiBxiOnWY9Q==
X-CSE-MsgGUID: D7RexPskTwWFM4ojXCR6DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="66152413"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 27 May 2024 21:33:21 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 06:38:03 +0200
Message-ID: <20240528043813.1342483-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716870804; x=1748406804;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JsL5WmRgqBD67a1P/3JuaO2IBhMXb4Gczen/3zzuJyQ=;
 b=isXVPJNNuNUzKzPNZki7WLXencKqZA2hNHKpFm9w8oKzYQ9ulG3Y0pqv
 rwYIAS6WX5YPn37DDy+eFYUVZ5xN7lLFd8ADo9EbztW2tOk+deQbeYyz1
 lRlBaY8sa6KaxxKBazYLB2VfqXdoTfV6x3Ejspdiq3DiU/5PQdVgNNf6c
 t1oPHAD05ZcFpf66V7RECD97MawIgfZSpziTrY3HOhv7Ldi1T/B5wKbxk
 9QzSvqmIMM1afvGG/AMzngxYXmhUNZsbjr5bf9uWR1Ysds5YIRbk2lM8B
 fsVZIRphfCf8XOBQ7PN1PfoCvCJFlwcRL4OGArew45cenY7k8M1+L21UB
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=isXVPJNN
Subject: [Intel-wired-lan] [iwl-next v3 05/15] ice: allocate devlink for
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

Make devlink allocation function generic to use it for PF and for SF.

Add function for SF devlink port creation. It will be used in next
patch.

Create header file for subfunction device. Define subfunction device
structure there as it is needed for devlink allocation and port
creation.

Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ice/devlink/devlink.c  | 33 +++++++++++++++
 .../net/ethernet/intel/ice/devlink/devlink.h  |  1 +
 .../ethernet/intel/ice/devlink/devlink_port.c | 41 +++++++++++++++++++
 .../ethernet/intel/ice/devlink/devlink_port.h |  3 ++
 drivers/net/ethernet/intel/ice/ice_sf_eth.h   | 21 ++++++++++
 5 files changed, 99 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index bfb3d5b59a62..58196c170b1b 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -10,6 +10,7 @@
 #include "ice_eswitch.h"
 #include "ice_fw_update.h"
 #include "ice_dcb_lib.h"
+#include "ice_sf_eth.h"
 
 /* context for devlink info version reporting */
 struct ice_info_ctx {
@@ -1282,6 +1283,8 @@ static const struct devlink_ops ice_devlink_ops = {
 	.port_new = ice_devlink_port_new,
 };
 
+static const struct devlink_ops ice_sf_devlink_ops;
+
 static int
 ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
 			    struct devlink_param_gset_ctx *ctx)
@@ -1422,6 +1425,7 @@ static void ice_devlink_free(void *devlink_ptr)
  * Allocate a devlink instance for this device and return the private area as
  * the PF structure. The devlink memory is kept track of through devres by
  * adding an action to remove it when unwinding.
+ *
  */
 struct ice_pf *ice_allocate_pf(struct device *dev)
 {
@@ -1438,6 +1442,35 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
 	return devlink_priv(devlink);
 }
 
+/**
+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
+ * @dev: the device to allocate for
+ * @pf: pointer to the PF structure
+ *
+ * Allocate a devlink instance for SF.
+ *
+ * Return: void pointer to allocated memory
+ */
+struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf)
+{
+	struct devlink *devlink;
+	int err;
+
+	devlink = devlink_alloc_ns(&ice_sf_devlink_ops,
+				   sizeof(struct ice_sf_priv),
+				   devlink_net(priv_to_devlink(pf)), dev);
+	if (!devlink)
+		return NULL;
+
+	err = devl_nested_devlink_set(priv_to_devlink(pf), devlink);
+	if (err) {
+		devlink_free(devlink);
+		return ERR_PTR(err);
+	}
+
+	return devlink_priv(devlink);
+}
+
 /**
  * ice_devlink_register - Register devlink interface for this PF
  * @pf: the PF to register the devlink for.
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.h b/drivers/net/ethernet/intel/ice/devlink/devlink.h
index d291c0e2e17b..1af3b0763fbb 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.h
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.h
@@ -5,6 +5,7 @@
 #define _ICE_DEVLINK_H_
 
 struct ice_pf *ice_allocate_pf(struct device *dev);
+struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf);
 
 void ice_devlink_register(struct ice_pf *pf);
 void ice_devlink_unregister(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
index 5d1fe08e4bab..f06baabd0112 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -489,6 +489,47 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
 	devl_port_unregister(&vf->devlink_port);
 }
 
+/**
+ * ice_devlink_create_sf_dev_port - Register virtual port for a subfunction
+ * @sf_dev: the subfunction device to create a devlink port for
+ *
+ * Register virtual flavour devlink port for the subfunction auxiliary device
+ * created after activating a dynamically added devlink port.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev)
+{
+	struct devlink_port_attrs attrs = {};
+	struct ice_dynamic_port *dyn_port;
+	struct devlink_port *devlink_port;
+	struct devlink *devlink;
+	struct ice_vsi *vsi;
+
+	dyn_port = sf_dev->dyn_port;
+	vsi = dyn_port->vsi;
+
+	devlink_port = &sf_dev->priv->devlink_port;
+
+	attrs.flavour = DEVLINK_PORT_FLAVOUR_VIRTUAL;
+
+	devlink_port_attrs_set(devlink_port, &attrs);
+	devlink = priv_to_devlink(sf_dev->priv);
+
+	return devl_port_register(devlink, devlink_port, vsi->idx);
+}
+
+/**
+ * ice_devlink_destroy_sf_dev_port - Destroy virtual port for a subfunction
+ * @sf_dev: the subfunction device to create a devlink port for
+ *
+ * Unregisters the virtual port associated with this subfunction.
+ */
+void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev)
+{
+	devl_port_unregister(&sf_dev->priv->devlink_port);
+}
+
 /**
  * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
  * @dyn_port: dynamic port instance to deallocate
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
index 08ebf56664a5..97b21b58c300 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
@@ -5,6 +5,7 @@
 #define _DEVLINK_PORT_H_
 
 #include "../ice.h"
+#include "../ice_sf_eth.h"
 
 /**
  * struct ice_dynamic_port - Track dynamically added devlink port instance
@@ -34,6 +35,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf);
 void ice_devlink_destroy_vf_port(struct ice_vf *vf);
 int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port);
 void ice_devlink_destroy_sf_port(struct ice_dynamic_port *dyn_port);
+int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev);
+void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev);
 
 #define ice_devlink_port_to_dyn(port) \
 	container_of(port, struct ice_dynamic_port, devlink_port)
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
new file mode 100644
index 000000000000..a08f8b2bceef
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2024, Intel Corporation. */
+
+#ifndef _ICE_SF_ETH_H_
+#define _ICE_SF_ETH_H_
+
+#include <linux/auxiliary_bus.h>
+#include "ice.h"
+
+struct ice_sf_dev {
+	struct auxiliary_device adev;
+	struct ice_dynamic_port *dyn_port;
+	struct ice_sf_priv *priv;
+};
+
+struct ice_sf_priv {
+	struct ice_sf_dev *dev;
+	struct devlink_port devlink_port;
+};
+
+#endif /* _ICE_SF_ETH_H_ */
-- 
2.42.0


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E003F8D7F2B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 11:45:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9027141190;
	Mon,  3 Jun 2024 09:45:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CL89BNAnUQ4Q; Mon,  3 Jun 2024 09:45:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F1274117C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717407952;
	bh=FCuRj4vcPxaPNMLVmUqJkQDWeTIhLRaeGRKybx1FowA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3xCj01Dsp+Wb4R96lhWy4UJkYo6X9IgqubJ5HBZlE2WZIF4u7fbd/LrWI4fL/X0x7
	 yuJCm86TUiM0df/kuxfI+3RmcDDmK6g33LDIruLwRyj2Mq8AqN9NY0EjaAPqUMAusH
	 qbglfJuCJvi1BciK2wOQpwKd2BeDgcvpIs8LEUaPj6F4ZxX8951LXCnXEohbs1Kqdd
	 OMdItLk1J99VO7+IJoYwf2GIVbQg9G/TYSwc8y2LJCDEM4kpuq67X8KYOmSnazTxSc
	 fkzjIx4hjCWS8jqVF1/IvZfc67N0CPcm8VZb2c6KoStpeRNHi1X2GL5FEuOHoNWSJY
	 r1jBDo4uqrLAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F1274117C;
	Mon,  3 Jun 2024 09:45:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A21B01BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:45:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A39D8216A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:45:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BqpkTD7B3NmT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 09:45:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A553882169
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A553882169
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A553882169
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:45:49 +0000 (UTC)
X-CSE-ConnectionGUID: HeTiUNrURIy5Lw5yBWNh+A==
X-CSE-MsgGUID: PWm7uFWAT5+0lbV5DYTRtA==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="17732691"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="17732691"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 02:45:49 -0700
X-CSE-ConnectionGUID: BofQYm2dTM2476sd6UaggA==
X-CSE-MsgGUID: YMXtYv4yQ3awKO+MzkUKKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="37448210"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa007.jf.intel.com with ESMTP; 03 Jun 2024 02:45:46 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jun 2024 11:50:16 +0200
Message-ID: <20240603095025.1395347-7-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
References: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717407950; x=1748943950;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uOLgs0dOEsgtTcWoujL48BK2oq4DbtBtK/osJu55JJM=;
 b=KqoLGZZ292057xLoMsB6MdRbfTbmUJEsTN2UzhGfwSYNWwZsD/MTbdjK
 5OUW2T9re+v1rQQgVeq2yiq1FwyTjeHd69wFd+PMiYDMzpHxpPUtcC1ZQ
 JHMjkaAEfeSyx+/c0o6ap7KmmeEb5hagJ9KDaucySpKtGKEEljQnvYE0N
 ppEaRTZGJAX+qtPnLghKeH6XwZtF5TTqGB+ruEamdL7gEKMbbFTdvbkEp
 +dz/i6askcwXgGmAcpb16JyAfCVINLFoOQJIEEGu9c6q6ywunltlUYEno
 V3gHnkcC2/MEDbybMCAyGRXHMO2SoH0KjsDENzSfrBCL/wgraeJuI+7bw
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KqoLGZZ2
Subject: [Intel-wired-lan] [iwl-next v4 06/15] ice: base subfunction aux
 driver
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
 sridhar.samudrala@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, kalesh-anakkur.purayil@broadcom.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

Implement subfunction driver. It is probe when subfunction port is
activated.

VSI is already created. During the probe VSI is being configured.
MAC unicast and broadcast filter is added to allow traffic to pass.

Store subfunction pointer in VSI struct. The same is done for VF
pointer. Make union of subfunction and VF pointer as only one of them
can be set with one VSI.

Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile     |   1 +
 drivers/net/ethernet/intel/ice/ice.h        |   7 +-
 drivers/net/ethernet/intel/ice/ice_main.c   |  10 ++
 drivers/net/ethernet/intel/ice/ice_sf_eth.c | 139 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_sf_eth.h |   9 ++
 5 files changed, 165 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 03500e28ac99..4d987f5dcdc1 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -31,6 +31,7 @@ ice-y := ice_main.o	\
 	 ice_idc.o	\
 	 devlink/devlink.o	\
 	 devlink/devlink_port.o \
+	 ice_sf_eth.o	\
 	 ice_ddp.o	\
 	 ice_fw_update.o \
 	 ice_lag.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index a73e3b5b62f5..9a36baf50990 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -449,7 +449,12 @@ struct ice_vsi {
 	struct_group_tagged(ice_vsi_cfg_params, params,
 		struct ice_port_info *port_info; /* back pointer to port_info */
 		struct ice_channel *ch; /* VSI's channel structure, may be NULL */
-		struct ice_vf *vf; /* VF associated with this VSI, may be NULL */
+		union {
+			/* VF associated with this VSI, may be NULL */
+			struct ice_vf *vf;
+			/* SF associated with this VSI, may be NULL */
+			struct ice_dynamic_port *sf;
+		};
 		u32 flags; /* VSI flags used for rebuild and configuration */
 		enum ice_vsi_type type; /* the type of the VSI */
 	);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e32f4307994f..3eb14408768c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -15,6 +15,7 @@
 #include "ice_dcb_nl.h"
 #include "devlink/devlink.h"
 #include "devlink/devlink_port.h"
+#include "ice_sf_eth.h"
 #include "ice_hwmon.h"
 /* Including ice_trace.h with CREATE_TRACE_POINTS defined will generate the
  * ice tracepoint functions. This must be done exactly once across the
@@ -5884,8 +5885,16 @@ static int __init ice_module_init(void)
 		goto err_dest_lag_wq;
 	}
 
+	status = ice_sf_driver_register();
+	if (status) {
+		pr_err("Failed to register SF driver, err %d\n", status);
+		goto err_sf_driver;
+	}
+
 	return 0;
 
+err_sf_driver:
+	pci_unregister_driver(&ice_driver);
 err_dest_lag_wq:
 	destroy_workqueue(ice_lag_wq);
 	ice_debugfs_exit();
@@ -5903,6 +5912,7 @@ module_init(ice_module_init);
  */
 static void __exit ice_module_exit(void)
 {
+	ice_sf_driver_unregister();
 	pci_unregister_driver(&ice_driver);
 	ice_debugfs_exit();
 	destroy_workqueue(ice_wq);
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
new file mode 100644
index 000000000000..abe495c2d033
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -0,0 +1,139 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2024, Intel Corporation. */
+#include "ice.h"
+#include "ice_lib.h"
+#include "ice_fltr.h"
+#include "ice_sf_eth.h"
+#include "devlink/devlink_port.h"
+#include "devlink/devlink.h"
+
+/**
+ * ice_sf_dev_probe - subfunction driver probe function
+ * @adev: pointer to the auxiliary device
+ * @id: pointer to the auxiliary_device id
+ *
+ * Configure VSI and netdev resources for the subfunction device.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int ice_sf_dev_probe(struct auxiliary_device *adev,
+			    const struct auxiliary_device_id *id)
+{
+	struct ice_sf_dev *sf_dev = ice_adev_to_sf_dev(adev);
+	struct ice_dynamic_port *dyn_port = sf_dev->dyn_port;
+	struct ice_vsi *vsi = dyn_port->vsi;
+	struct ice_pf *pf = dyn_port->pf;
+	struct device *dev = &adev->dev;
+	struct ice_sf_priv *priv;
+	struct devlink *devlink;
+	int err;
+
+	vsi->type = ICE_VSI_SF;
+	vsi->port_info = pf->hw.port_info;
+	vsi->flags = ICE_VSI_FLAG_INIT;
+
+	priv = ice_allocate_sf(&adev->dev, pf);
+	if (!priv) {
+		dev_err(dev, "Subfunction devlink alloc failed");
+		return -ENOMEM;
+	}
+
+	priv->dev = sf_dev;
+	sf_dev->priv = priv;
+	devlink = priv_to_devlink(priv);
+
+	devl_lock(devlink);
+
+	err = ice_vsi_cfg(vsi);
+	if (err) {
+		dev_err(dev, "Subfunction vsi config failed");
+		goto err_free_devlink;
+	}
+	vsi->sf = dyn_port;
+
+	err = ice_devlink_create_sf_dev_port(sf_dev);
+	if (err) {
+		dev_err(dev, "Cannot add ice virtual devlink port for subfunction");
+		goto err_vsi_decfg;
+	}
+
+	err = devl_port_fn_devlink_set(&dyn_port->devlink_port, devlink);
+	if (err) {
+		dev_err(dev, "Can't link devlink instance to SF devlink port");
+		goto err_devlink_destroy;
+	}
+
+	ice_napi_add(vsi);
+	devl_unlock(devlink);
+
+	devlink_register(devlink);
+
+	return 0;
+
+err_devlink_destroy:
+	ice_devlink_destroy_sf_dev_port(sf_dev);
+err_vsi_decfg:
+	ice_vsi_decfg(vsi);
+err_free_devlink:
+	devl_unlock(devlink);
+	devlink_free(devlink);
+	return err;
+}
+
+/**
+ * ice_sf_dev_remove - subfunction driver remove function
+ * @adev: pointer to the auxiliary device
+ *
+ * Deinitalize VSI and netdev resources for the subfunction device.
+ */
+static void ice_sf_dev_remove(struct auxiliary_device *adev)
+{
+	struct ice_sf_dev *sf_dev = ice_adev_to_sf_dev(adev);
+	struct ice_dynamic_port *dyn_port = sf_dev->dyn_port;
+	struct ice_vsi *vsi = dyn_port->vsi;
+	struct devlink *devlink;
+
+	devlink = priv_to_devlink(sf_dev->priv);
+	devl_lock(devlink);
+
+	ice_vsi_close(vsi);
+
+	ice_devlink_destroy_sf_dev_port(sf_dev);
+	devl_unregister(devlink);
+	devl_unlock(devlink);
+	devlink_free(devlink);
+	ice_vsi_decfg(vsi);
+}
+
+static const struct auxiliary_device_id ice_sf_dev_id_table[] = {
+	{ .name = "ice.sf", },
+	{ },
+};
+
+MODULE_DEVICE_TABLE(auxiliary, ice_sf_dev_id_table);
+
+static struct auxiliary_driver ice_sf_driver = {
+	.name = "sf",
+	.probe = ice_sf_dev_probe,
+	.remove = ice_sf_dev_remove,
+	.id_table = ice_sf_dev_id_table
+};
+
+/**
+ * ice_sf_driver_register - Register new auxiliary subfunction driver
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int ice_sf_driver_register(void)
+{
+	return auxiliary_driver_register(&ice_sf_driver);
+}
+
+/**
+ * ice_sf_driver_unregister - Unregister new auxiliary subfunction driver
+ *
+ */
+void ice_sf_driver_unregister(void)
+{
+	auxiliary_driver_unregister(&ice_sf_driver);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
index a08f8b2bceef..e972c50f96c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.h
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
@@ -18,4 +18,13 @@ struct ice_sf_priv {
 	struct devlink_port devlink_port;
 };
 
+static inline struct
+ice_sf_dev *ice_adev_to_sf_dev(struct auxiliary_device *adev)
+{
+	return container_of(adev, struct ice_sf_dev, adev);
+}
+
+int ice_sf_driver_register(void);
+void ice_sf_driver_unregister(void);
+
 #endif /* _ICE_SF_ETH_H_ */
-- 
2.42.0


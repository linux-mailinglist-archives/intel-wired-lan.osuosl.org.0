Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CD58FE528
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 13:20:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02A1C605F8;
	Thu,  6 Jun 2024 11:20:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0W9En8hbTr8T; Thu,  6 Jun 2024 11:20:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C707361484
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717672834;
	bh=ATkN4FN4jZuCeQMg67hSdRZTU51PPJ5ghjP6/ce5mSw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ucKbXy/J72BUmx6J27H8CR6kKRJypZrstPAwuCV76KHpcaFb5LRHmFP2Dl+DlJxuN
	 D9f7Yq607u8YYFvsw/c2UiusAoKi/7bkjouuzUUOSKPeXsr8M1+PiPiNxVRPUQE648
	 YIG7iLAFtsg3lcgoa/N+l18g/BcE6BPmLplA6EyYYAJeWEWlJj1DN8HRTpTRt7w97/
	 LKzabTN5zFVJFsSiXLDCtFokVAGNRIiRNXS+sAb+X7xn5lm6DEcHG3bVSbOJTsheYd
	 2jdkHxKHcOCe/OiwIVuwx37BgMUvZapbOJj9kJt3E2EvGT/k8x4UMxQ6soqmBJHhtc
	 1EvZLK7fMqpUA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C707361484;
	Thu,  6 Jun 2024 11:20:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3FCC31BF591
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 11:20:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2CD93400E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 11:20:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VL8DzbNEMCt1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 11:20:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF73B400AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF73B400AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF73B400AF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 11:20:30 +0000 (UTC)
X-CSE-ConnectionGUID: SjrDhtmuQuaSOvog9jvsbg==
X-CSE-MsgGUID: ZCK1GwdxQJCDmBHba9ePGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="18123748"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18123748"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:20:30 -0700
X-CSE-ConnectionGUID: xJggJFXqT0qkrfwD5IdpHg==
X-CSE-MsgGUID: qFJTq2gAQVq0qTnhuqMlXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42864541"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa003.jf.intel.com with ESMTP; 06 Jun 2024 04:20:27 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Jun 2024 13:24:54 +0200
Message-ID: <20240606112503.1939759-7-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672831; x=1749208831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3XXIuwZNP0xMoh0Jthlbd0ohqiU6iYirB0RQ0mFGwfI=;
 b=HHM1IE9VUQ96qP1TtMt5xb9StVfdeT/wnupkGKMoROnbg/VHfagZEK/t
 XL5KnZDygAsEUn6M3rYEWahrJqn4SW3jiJPrmI4xgk/t2+/L4j2JeRO/g
 90AHMiXRU4hjZineENyohJEC5AtonY4Rz+ZfcwW0E4Lq9lRSYPBmyIitH
 dLQxRc3+F1rN1yUWaiIVD/M4KHz1V85BnNcfZKhEiOolnPxUkcqR93xJi
 +WEi7XduXaZV0kuoYxEvp78uoB+09bCPt3t6eFAQfHcvBDIxjBps4Da4k
 b5GcouIyXAgy2aN2aduGIwYfdh52TXLZPcN1qB0Dil4sk0MnNDKUA/d6F
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HHM1IE9V
Subject: [Intel-wired-lan] [iwl-next v5 06/15] ice: base subfunction aux
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
index b4f6fa4ba13d..81acb590eac6 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -33,6 +33,7 @@ ice-y := ice_main.o	\
 	 ice_idc.o	\
 	 devlink/devlink.o	\
 	 devlink/devlink_port.o \
+	 ice_sf_eth.o	\
 	 ice_ddp.o	\
 	 ice_fw_update.o \
 	 ice_lag.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 6b39b6be9727..848d8bac5d25 100644
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
index ddc348371841..f38a30775a2e 100644
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
@@ -5906,8 +5907,16 @@ static int __init ice_module_init(void)
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
@@ -5925,6 +5934,7 @@ module_init(ice_module_init);
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


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 373D08A2680
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 08:26:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE89A41FA9;
	Fri, 12 Apr 2024 06:26:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jktsU-6_hU8E; Fri, 12 Apr 2024 06:26:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06FEE41F4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712903189;
	bh=AAOkIHlDFc4eH2gLJg+l+imOKKhOT5hX/oUmJ/aF2n4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oHvlca3jr4Wy8n/AUAJ4K87nu9ALEVUDCGityBk5Z98Yup4uQwh5Qfc+i7fA81j8G
	 BXAfaU9do7nyWnG3YHLgUWp1pgZtZbdVtEQH/JzloLLAVpQCdMeA7R/YIJcgERoS9Y
	 dHGJN4W/PzEdbhLJMajDetMPdBQjsfZT780O9xo91NbaX/03YIaqFYtFGikReb13Vx
	 KYCMNugmqQN5iEBOUKhgLCU8rUSk4Ete1L6BRJ7x8CqvTfkhypQBg1JF9ytvAM9+lD
	 L0C7MOOvjIB6Te/xKtzk3En2Pn467dUax8iGCt9nu8xlHxPHreZKTrjuNXbxfs8pHB
	 8QoOLo8nYUzHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06FEE41F4C;
	Fri, 12 Apr 2024 06:26:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C1541BF312
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ECF2A40446
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:26:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1CYWuESBROwz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 06:26:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 01C8A40217
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01C8A40217
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01C8A40217
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:26:25 +0000 (UTC)
X-CSE-ConnectionGUID: PIzowqgoSpS7QxxEGa0wlg==
X-CSE-MsgGUID: VVZv1gjnSEm3brp9klAlXQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="18952959"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="18952959"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 23:26:25 -0700
X-CSE-ConnectionGUID: h6b3YcvXRgmEzJHVAR9t7Q==
X-CSE-MsgGUID: aon3xRQeT7mI/VHfXakIFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="21105124"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 11 Apr 2024 23:26:23 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Apr 2024 08:30:51 +0200
Message-ID: <20240412063053.339795-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712903186; x=1744439186;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ez1w0Nj7peK4ZK0fGlkLj63gDG+27o1SRcsfZRV0G7k=;
 b=lXcDIGogr5a24DBoTgV+EWTISt5W3DWe3CVL2r64jBRDQsQdx9W9Pytc
 U4F9oQ3JppRpZyfvBGbqgkF7cTNNdEfhJcmpe1BMT7p2hPSxsFOfbugrq
 FfiBK205xdAg1KTlMyV6YgpXx1fMYp17Cm/sC6GVZFHZFYuIFdYrXslns
 MVogFRYBzqx7gEkN8DjJ8iO87IXwjrhCN5F9v1EiggW073me4j8x8SIAo
 r2Vc6pvvL4gnqSJKJpIaW/K/kOVH2Oc8P+YO4kU2GLKuNh3Ynwmp9X2xu
 0kvnzNBsV5v/Jxgk9moZhxUQ0nIEwviF51sOiR1nOA3vBauIDfqcFJkIF
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lXcDIGog
Subject: [Intel-wired-lan] [iwl-next v3 5/7] ice: base subfunction aux driver
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 sridhar.samudrala@intel.com, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com,
 Piotr Raczynski <piotr.raczynski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

Implement subfunction driver. It is probe when subfunction port is
activated.

VSI is already created. During the probe VSI is being configured.
MAC unicast and broadcast filter is added to allow traffic to pass.

Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile     |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c   |  10 ++
 drivers/net/ethernet/intel/ice/ice_sf_eth.c | 130 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_sf_eth.h |   9 ++
 4 files changed, 150 insertions(+)
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
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 29552598ddb6..f55e3340b608 100644
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
@@ -5857,8 +5858,16 @@ static int __init ice_module_init(void)
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
@@ -5876,6 +5885,7 @@ module_init(ice_module_init);
  */
 static void __exit ice_module_exit(void)
 {
+	ice_sf_driver_unregister();
 	pci_unregister_driver(&ice_driver);
 	ice_debugfs_exit();
 	destroy_workqueue(ice_wq);
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
new file mode 100644
index 000000000000..70f7cbe6c609
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -0,0 +1,130 @@
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
+	struct ice_vsi_cfg_params params = {};
+	struct ice_vsi *vsi = dyn_port->vsi;
+	struct ice_pf *pf = dyn_port->pf;
+	struct device *dev = &adev->dev;
+	struct ice_sf_priv *priv;
+	int err;
+
+	params.type = ICE_VSI_SF;
+	params.pi = pf->hw.port_info;
+	params.flags = ICE_VSI_FLAG_INIT;
+
+	priv = ice_allocate_sf(&adev->dev);
+	if (!priv) {
+		dev_err(dev, "Subfunction devlink alloc failed");
+		return -ENOMEM;
+	}
+
+	priv->dev = sf_dev;
+	sf_dev->priv = priv;
+
+	devlink_register(priv_to_devlink(priv));
+
+	err = ice_vsi_cfg(vsi, &params);
+	if (err) {
+		dev_err(dev, "Subfunction vsi config failed");
+		return err;
+	}
+
+	err = ice_devlink_create_sf_dev_port(sf_dev);
+	if (err) {
+		dev_err(dev, "Cannot add ice virtual devlink port for subfunction");
+		goto err_vsi_decfg;
+	}
+
+	err = ice_fltr_add_mac_and_broadcast(vsi, vsi->netdev->dev_addr,
+					     ICE_FWD_TO_VSI);
+	if (err) {
+		dev_err(dev, "can't add MAC filters %pM for VSI %d\n",
+			vsi->netdev->dev_addr, vsi->idx);
+		goto err_devlink_destroy;
+	}
+
+	ice_napi_add(vsi);
+
+	return err;
+
+err_devlink_destroy:
+	ice_devlink_destroy_sf_dev_port(sf_dev);
+err_vsi_decfg:
+	ice_vsi_decfg(vsi);
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
+	struct devlink *devlink = priv_to_devlink(sf_dev->priv);
+	struct ice_dynamic_port *dyn_port = sf_dev->dyn_port;
+	struct ice_vsi *vsi = dyn_port->vsi;
+
+	ice_vsi_close(vsi);
+
+	ice_devlink_destroy_sf_dev_port(sf_dev);
+	devlink_unregister(devlink);
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
+ * Return: zero on success or an error code on failure.
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


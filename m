Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1EA89BD0E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 12:26:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A9D081F0D;
	Mon,  8 Apr 2024 10:26:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A3gz4RAi40Gt; Mon,  8 Apr 2024 10:26:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F20881F0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712572002;
	bh=/TqwCAaJSeKoA6SHdYeuQG3JN70uU67paIXqwRxtOzM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y8L2sa5fDxAnxAfZS4LtWoWjt3nLjHMqv+Uud90OvFp/68edD6IEd1gypU7r8JzZk
	 3NCmviFCw6oB/o3NOSziN2YRUT9gfTruL6T84xdT9mcSTNXHvX6WYMOpXgOFPdU4IZ
	 Wrt39fB0P/DKyepkgLwkYR0JFWCCg98ONxGwG5IyY6YCOKvcMWhev+Tj2jHg12TXZP
	 4omRnMd+pssLDKxxKLgb3aNKCCuLYeQwl4mK7sTNasgZKAGL7LUdcrkr2hphj+YZ5a
	 8mzy31oIn+miUsmA+DlDvIHYKUt/4qm2zm1jPAQ7A77EVfgu4wimpsKrc3Rnsu2l8i
	 PNEy6+9ETuHug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F20881F0C;
	Mon,  8 Apr 2024 10:26:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 228821BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 10:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F1F74072E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 10:26:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UUwJVWJ4ETU2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 10:26:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C4CF84068A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4CF84068A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C4CF84068A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 10:26:37 +0000 (UTC)
X-CSE-ConnectionGUID: ZCYdVjujTKmLFDkBsxAzhQ==
X-CSE-MsgGUID: dBKzD9NWTgmZXwVfM2dENg==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7944168"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7944168"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 03:26:37 -0700
X-CSE-ConnectionGUID: MN4Rv97oQtS+oK/6ZtWvBQ==
X-CSE-MsgGUID: WsuuGTw+Sd+rM+BLulK3wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19758605"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 08 Apr 2024 03:26:35 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Apr 2024 12:30:47 +0200
Message-ID: <20240408103049.19445-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240408103049.19445-1-michal.swiatkowski@linux.intel.com>
References: <20240408103049.19445-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712571997; x=1744107997;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6TtZmV7UoAolFFGK1QrDXQlHjrknEdu460CRKqaU8/M=;
 b=ICt1x5Cr2pxtnbVO9CBGFftSOSvNXHNYui76jFhyKVWfZj2T5L69Wc1F
 FLKzvYTxH9z4cvPVI8ULD1RWtlQ+JCjRnbZm+I1MC+TmRNyM6zpenW0eO
 ffgv4vPMlcM56bpdhwoHkJA2F8V8JhDIuvW1mVbr9/fXQnTuI9h4bC3Z2
 yTGXrFL74Ks0OBmMZmK9HLH/9T4IEb8iBDr0bT3Uz/SDb8mUoa7QNUsoc
 fqomg16f11mzneqc24CMDxvWgT7IbbviGKn+uphKjL4T9pIEEBiLGk3U2
 QurOSk8ljn49ByYbXfMqPlYpWElUqBexX6kcNoAB1gAQk7oCf1sX7CvJi
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ICt1x5Cr
Subject: [Intel-wired-lan] [iwl-next v1 5/7] ice: base subfunction aux driver
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
 maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 jiri@nvidia.com, michal.kubiak@intel.com, pio.raczynski@gmail.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>
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
 drivers/net/ethernet/intel/ice/ice_sf_eth.h |  30 +++++
 4 files changed, 171 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h

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
new file mode 100644
index 000000000000..e972c50f96c9
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
@@ -0,0 +1,30 @@
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
+static inline struct
+ice_sf_dev *ice_adev_to_sf_dev(struct auxiliary_device *adev)
+{
+	return container_of(adev, struct ice_sf_dev, adev);
+}
+
+int ice_sf_driver_register(void);
+void ice_sf_driver_unregister(void);
+
+#endif /* _ICE_SF_ETH_H_ */
-- 
2.42.0


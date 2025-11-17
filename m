Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E8FC64786
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 14:49:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88DA2813AA;
	Mon, 17 Nov 2025 13:49:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HqBJuNtlpdlB; Mon, 17 Nov 2025 13:49:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC73D805E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763387391;
	bh=ijvUGGwxdyV58RWesvu2j6/NMtX/z+7YfWTqsz3JL9M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6hWcQOM36HXheeyG/DmDMIoWQWNdtQSQdqxHEWIZ/DTN9kI5wzS26tUAtXA9nc1m4
	 wz6biyen7Sv6+JQSaByZjl1Ay/Khb51FZhxc5MDqmxxZ4NRcuBQMGw/CvMmTxno1nm
	 saQDQ2jyhxJ6fmOllN7RlHhe/4m/sKmk9TNlJXADnSKBmBPPpC526GH/Lj8CcWpJ05
	 oBDj3DaETDFD3O9G4jUEbiZ7DImEYLKDz1KpbxbeaUGu5eWRyWB3UuFnvJsXlkYuor
	 Hdf2pEXQtbz4KnP8HvbassftnFhHcH666OBaAAnxy3PjMBCaAwRY1zFtdmmrjPwBAN
	 PstclmWg93I4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC73D805E7;
	Mon, 17 Nov 2025 13:49:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BCD5158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3FEE60DD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:49:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jxhf8SC70Jwf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 13:49:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9C57960DC3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C57960DC3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C57960DC3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:49:47 +0000 (UTC)
X-CSE-ConnectionGUID: MAGyQfgRRciSesv1p7WSEw==
X-CSE-MsgGUID: 3bLHqSxbTnm4kSF351V4yA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="76846219"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76846219"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 05:49:47 -0800
X-CSE-ConnectionGUID: gQzIQI2KSPmBrMtKGPHfCA==
X-CSE-MsgGUID: KZNWRfgnR8emJV+0ZaeH2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190115783"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa007.fm.intel.com with ESMTP; 17 Nov 2025 05:49:41 -0800
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C7D5A37E27;
 Mon, 17 Nov 2025 13:49:39 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: aleksander.lobakin@intel.com, sridhar.samudrala@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 jayaprakash.shanmugam@intel.com, natalia.wochtman@intel.com,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 17 Nov 2025 14:48:55 +0100
Message-ID: <20251117134912.18566-16-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20251117134912.18566-1-larysa.zaremba@intel.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763387388; x=1794923388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yuD4e5XxhzbzH8sQyX9Rr7RvQO0PFoXMDabw9XvD2ZE=;
 b=Gmu1IYr0aHFprr4k1q+NFrsbv1HyEnTedq8+HqLqHlEvsMp9yF/3lQuS
 3GNd+HXU64NTPJNXbZN5GZqOU3jCsTJ67aVDv/9Uw0/jn/CWgk+M4gd0h
 LXE2JSBZRvL7ogwFLuyzDTcjI8kpKeS1bpQc7lIcjZU6klMWsW7upezG2
 ZVjqjgBwfpsIsXSDIy0E5AcYTUjJA4IlJApDn+za3UvH9ZjtVospVby/Q
 JRL/YZ8gJV7FPv8kx25hPZLFM1oN0eNv0AqiF3C0Lh4NR74KTxJ395zS1
 2bRXrJC6qXuhD/+AGyC6KEDs6a08Z5r82LTLGE/HXcHfPLECuylnoxiqo
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gmu1IYr0
Subject: [Intel-wired-lan] [PATCH iwl-next v5 15/15] ixd: add devlink support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Amritha Nambiar <amritha.nambiar@intel.com>

Enable initial support for the devlink interface with the ixd driver. The
ixd hardware is a single function PCIe device. So, the PCIe adapter gets
its own devlink instance to manage device-wide resources or configuration.

$ devlink dev show
pci/0000:83:00.6

$ devlink dev info pci/0000:83:00.6
pci/0000:83:00.6:
  driver ixd
  serial_number 00-a0-c9-ff-ff-23-45-67
  versions:
      fixed:
        device.type MEV
      running:
        cp 0.0
        virtchnl 2.0

Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 Documentation/networking/devlink/index.rst   |   1 +
 Documentation/networking/devlink/ixd.rst     |  35 +++++++
 drivers/net/ethernet/intel/ixd/Kconfig       |   1 +
 drivers/net/ethernet/intel/ixd/Makefile      |   1 +
 drivers/net/ethernet/intel/ixd/ixd_devlink.c | 105 +++++++++++++++++++
 drivers/net/ethernet/intel/ixd/ixd_devlink.h |  44 ++++++++
 drivers/net/ethernet/intel/ixd/ixd_main.c    |  16 ++-
 7 files changed, 200 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/networking/devlink/ixd.rst
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.c
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.h

diff --git a/Documentation/networking/devlink/index.rst b/Documentation/networking/devlink/index.rst
index 35b12a2bfeba..efd138d8e7d3 100644
--- a/Documentation/networking/devlink/index.rst
+++ b/Documentation/networking/devlink/index.rst
@@ -87,6 +87,7 @@ parameters, info versions, and other features it supports.
    ionic
    iosm
    ixgbe
+   ixd
    kvaser_pciefd
    kvaser_usb
    mlx4
diff --git a/Documentation/networking/devlink/ixd.rst b/Documentation/networking/devlink/ixd.rst
new file mode 100644
index 000000000000..81b28ffb00f6
--- /dev/null
+++ b/Documentation/networking/devlink/ixd.rst
@@ -0,0 +1,35 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+===================
+ixd devlink support
+===================
+
+This document describes the devlink features implemented by the ``ixd``
+device driver.
+
+Info versions
+=============
+
+The ``ixd`` driver reports the following versions
+
+.. list-table:: devlink info versions implemented
+    :widths: 5 5 5 90
+
+    * - Name
+      - Type
+      - Example
+      - Description
+    * - ``device.type``
+      - fixed
+      - MEV
+      - The hardware type for this device
+    * - ``cp``
+      - running
+      - 0.0
+      - Version number (major.minor) of the Control Plane software
+        running on the device.
+    * - ``virtchnl``
+      - running
+      - 2.0
+      - 2-digit version number (major.minor) of the communication channel
+        (virtchnl) used by the device.
diff --git a/drivers/net/ethernet/intel/ixd/Kconfig b/drivers/net/ethernet/intel/ixd/Kconfig
index 24510c50070e..34181c59dcdc 100644
--- a/drivers/net/ethernet/intel/ixd/Kconfig
+++ b/drivers/net/ethernet/intel/ixd/Kconfig
@@ -7,6 +7,7 @@ config IXD
 	select LIBETH
 	select LIBIE_CP
 	select LIBIE_PCI
+	select NET_DEVLINK
 	help
 	  This driver supports Intel(R) Control Plane PCI Function
 	  of Intel E2100 and later IPUs and FNICs.
diff --git a/drivers/net/ethernet/intel/ixd/Makefile b/drivers/net/ethernet/intel/ixd/Makefile
index 90abf231fb16..03760a2580b9 100644
--- a/drivers/net/ethernet/intel/ixd/Makefile
+++ b/drivers/net/ethernet/intel/ixd/Makefile
@@ -8,5 +8,6 @@ obj-$(CONFIG_IXD) += ixd.o
 ixd-y := ixd_main.o
 ixd-y += ixd_ctlq.o
 ixd-y += ixd_dev.o
+ixd-y += ixd_devlink.o
 ixd-y += ixd_lib.o
 ixd-y += ixd_virtchnl.o
diff --git a/drivers/net/ethernet/intel/ixd/ixd_devlink.c b/drivers/net/ethernet/intel/ixd/ixd_devlink.c
new file mode 100644
index 000000000000..6f60cfe4fab2
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/ixd_devlink.c
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2025, Intel Corporation. */
+
+#include "ixd.h"
+#include "ixd_devlink.h"
+
+#define IXD_DEVLINK_INFO_LEN	128
+
+/**
+ * ixd_fill_dsn - Get the serial number for the ixd device
+ * @adapter: adapter to query
+ * @buf: storage buffer for the info request
+ */
+static void ixd_fill_dsn(struct ixd_adapter *adapter, char *buf)
+{
+	u8 dsn[8];
+
+	/* Copy the DSN into an array in Big Endian format */
+	put_unaligned_be64(pci_get_dsn(adapter->cp_ctx.mmio_info.pdev), dsn);
+
+	snprintf(buf, IXD_DEVLINK_INFO_LEN, "%8phD", dsn);
+}
+
+/**
+ * ixd_fill_device_name - Get the name of the underlying hardware
+ * @adapter: adapter to query
+ * @buf: storage buffer for the info request
+ * @buf_size: size of the storage buffer
+ */
+static void ixd_fill_device_name(struct ixd_adapter *adapter, char *buf,
+				 size_t buf_size)
+{
+	if (adapter->caps.device_type == VIRTCHNL2_MEV_DEVICE)
+		snprintf(buf, buf_size, "%s", "MEV");
+	else
+		snprintf(buf, buf_size, "%s", "UNKNOWN");
+}
+
+/**
+ * ixd_devlink_info_get - .info_get devlink handler
+ * @devlink: devlink instance structure
+ * @req: the devlink info request
+ * @extack: extended netdev ack structure
+ *
+ * Callback for the devlink .info_get operation. Reports information about the
+ * device.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int ixd_devlink_info_get(struct devlink *devlink,
+				struct devlink_info_req *req,
+				struct netlink_ext_ack *extack)
+{
+	struct ixd_adapter *adapter = devlink_priv(devlink);
+	char buf[IXD_DEVLINK_INFO_LEN];
+	int err;
+
+	ixd_fill_dsn(adapter, buf);
+	err = devlink_info_serial_number_put(req, buf);
+	if (err)
+		return err;
+
+	ixd_fill_device_name(adapter, buf, IXD_DEVLINK_INFO_LEN);
+	err = devlink_info_version_fixed_put(req, "device.type", buf);
+	if (err)
+		return err;
+
+	snprintf(buf, sizeof(buf), "%u.%u",
+		 le16_to_cpu(adapter->caps.cp_ver_major),
+		 le16_to_cpu(adapter->caps.cp_ver_minor));
+
+	err = devlink_info_version_running_put(req, "cp", buf);
+	if (err)
+		return err;
+
+	snprintf(buf, sizeof(buf), "%u.%u",
+		 adapter->vc_ver.major, adapter->vc_ver.minor);
+
+	return devlink_info_version_running_put(req, "virtchnl", buf);
+}
+
+static const struct devlink_ops ixd_devlink_ops = {
+	.info_get = ixd_devlink_info_get,
+};
+
+/**
+ * ixd_adapter_alloc - Allocate devlink and return adapter pointer
+ * @dev: the device to allocate for
+ *
+ * Allocate a devlink instance for this device and return the private area as
+ * the adapter structure.
+ *
+ * Return: adapter structure on success, NULL on failure
+ */
+struct ixd_adapter *ixd_adapter_alloc(struct device *dev)
+{
+	struct devlink *devlink;
+
+	devlink = devlink_alloc(&ixd_devlink_ops, sizeof(struct ixd_adapter),
+				dev);
+	if (!devlink)
+		return NULL;
+
+	return devlink_priv(devlink);
+}
diff --git a/drivers/net/ethernet/intel/ixd/ixd_devlink.h b/drivers/net/ethernet/intel/ixd/ixd_devlink.h
new file mode 100644
index 000000000000..c43ce0655de2
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/ixd_devlink.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2025, Intel Corporation. */
+
+#ifndef _IXD_DEVLINK_H_
+#define _IXD_DEVLINK_H_
+#include <net/devlink.h>
+
+struct ixd_adapter *ixd_adapter_alloc(struct device *dev);
+
+/**
+ * ixd_devlink_free - teardown the devlink
+ * @adapter: the adapter structure to free
+ *
+ */
+static inline void ixd_devlink_free(struct ixd_adapter *adapter)
+{
+	struct devlink *devlink = priv_to_devlink(adapter);
+
+	devlink_free(devlink);
+}
+
+/**
+ * ixd_devlink_unregister - Unregister devlink resources for this adapter.
+ * @adapter: the adapter structure to cleanup
+ *
+ * Releases resources used by devlink and cleans up associated memory.
+ */
+static inline void ixd_devlink_unregister(struct ixd_adapter *adapter)
+{
+	devlink_unregister(priv_to_devlink(adapter));
+}
+
+/**
+ * ixd_devlink_register - Register devlink interface for this adapter
+ * @adapter: pointer to ixd adapter structure to be associated with devlink
+ *
+ * Register the devlink instance associated with this adapter
+ */
+static inline void ixd_devlink_register(struct ixd_adapter *adapter)
+{
+	devlink_register(priv_to_devlink(adapter));
+}
+
+#endif /* _IXD_DEVLINK_H_ */
diff --git a/drivers/net/ethernet/intel/ixd/ixd_main.c b/drivers/net/ethernet/intel/ixd/ixd_main.c
index 6d5e6aca77df..ea6aa793a6a7 100644
--- a/drivers/net/ethernet/intel/ixd/ixd_main.c
+++ b/drivers/net/ethernet/intel/ixd/ixd_main.c
@@ -4,6 +4,7 @@
 #include "ixd.h"
 #include "ixd_ctlq.h"
 #include "ixd_lan_regs.h"
+#include "ixd_devlink.h"
 
 MODULE_DESCRIPTION("Intel(R) Control Plane Function Device Driver");
 MODULE_IMPORT_NS("LIBIE_CP");
@@ -21,11 +22,14 @@ static void ixd_remove(struct pci_dev *pdev)
 	/* Do not mix removal with (re)initialization */
 	cancel_delayed_work_sync(&adapter->init_task.init_work);
 
+	ixd_devlink_unregister(adapter);
+
 	/* Leave the device clean on exit */
 	ixd_trigger_reset(adapter);
 	ixd_deinit_dflt_mbx(adapter);
 
 	libie_pci_unmap_all_mmio_regions(&adapter->cp_ctx.mmio_info);
+	ixd_devlink_free(adapter);
 }
 
 /**
@@ -93,7 +97,7 @@ static int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (WARN_ON(ent->device != IXD_DEV_ID_CPF))
 		return -EINVAL;
 
-	adapter = devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
+	adapter = ixd_adapter_alloc(&pdev->dev);
 	if (!adapter)
 		return -ENOMEM;
 
@@ -102,13 +106,13 @@ static int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	err = libie_pci_init_dev(pdev);
 	if (err)
-		return err;
+		goto free_adapter;
 
 	pci_set_drvdata(pdev, adapter);
 
 	err = ixd_iomap_regions(adapter);
 	if (err)
-		return err;
+		goto free_adapter;
 
 	INIT_DELAYED_WORK(&adapter->init_task.init_work,
 			  ixd_init_task);
@@ -118,7 +122,13 @@ static int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	queue_delayed_work(system_unbound_wq, &adapter->init_task.init_work,
 			   msecs_to_jiffies(500));
 
+	ixd_devlink_register(adapter);
+
 	return 0;
+
+free_adapter:
+	ixd_devlink_free(adapter);
+	return err;
 }
 
 static const struct pci_device_id ixd_pci_tbl[] = {
-- 
2.47.0


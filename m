Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4450BA808DD
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 14:49:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B044C611D4;
	Tue,  8 Apr 2025 12:49:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 328zGSPFBBBI; Tue,  8 Apr 2025 12:49:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C15F611D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744116542;
	bh=qB3sVkfT0HjAdAwbiy9NGI0RjnBndpmxxFRKaVqnQr8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v9XRNwpilRMRcbsxK4VW4q6retbACGW0DJ9OtbHkciDoHPllRS1V+/ivr+MtwZ2mN
	 uMxnL4y6wMVGfHU8xLPld29u6f/AHpcnnTwyOF3GbmfoCNCJCQQVbrcs+rYzJko6m0
	 XNWHVfE2r5YGpMjK1GntbB3JwB+9FaEA071U7Fwrg2XKGN6r49QgoF4ZfOnToiEHqm
	 yNBSwgXtilsKjlMeYVQzototQOEkzegYDdlseZpgVy+xdIdpO6CiyagIPNqFtV1fms
	 SgOHs28l0LQVo4GzQuSe6caKTAfiYyH84gD2i49jsnCYALdrUCnaaIG3TjuBdCGged
	 lcCyg99WF1wxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C15F611D9;
	Tue,  8 Apr 2025 12:49:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 310491DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 12:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AF0C40D0D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 12:49:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 04zjCkpN3rIj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 12:48:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B671A40D20
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B671A40D20
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B671A40D20
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 12:48:59 +0000 (UTC)
X-CSE-ConnectionGUID: dswGnB6dTLqiPFTkJd7r9A==
X-CSE-MsgGUID: izs9Ex59SoOXBTY6uqrMRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="63085166"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="63085166"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 05:48:59 -0700
X-CSE-ConnectionGUID: NL/NIvBlTuSw1SSGt6S39w==
X-CSE-MsgGUID: b4shnjQjTLqsDvaFTc2xgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="128124480"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa006.fm.intel.com with ESMTP; 08 Apr 2025 05:48:52 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9287634314;
 Tue,  8 Apr 2025 13:48:49 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Mustafa Ismail <mustafa.ismail@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Wenjun Wu <wenjun1.wu@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Date: Tue,  8 Apr 2025 14:48:00 +0200
Message-ID: <20250408124816.11584-15-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250408124816.11584-1-larysa.zaremba@intel.com>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744116540; x=1775652540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x2QxBbMx0+o8A7QDMhxHEXWFEaByDoAZDUz4s9721fA=;
 b=d4BXxI4g3dm1va/uD7IbZwhzw46sv9XXSyzVpqJ3QfeTCG54TevDVEc/
 qC0pXYkgVpeSATd7V0HFSGz5cLDUE5Q5mZ9qW5F++UUnriF4M90D0ww69
 nrWmpTQCAF9Dz5DT/4ah+c/HCSyduPumIX+ovBK0xmakB+Vb+P8BBdQyo
 3MOVWFqSAKSTuzoNfcEW9XAyIW8ByHWYn/HbfDxP5321l4ZPBc0tALkGx
 vcerPrQ0DoTFjgeO5VGZBXUNFs/l7d5T9bLAswj6BMSDZtx5L1dvdNdhz
 hfYVnvv0UjdfQ8w40zLSdjN4jmc2JVkM5/K9FbcSZVbfe4hzCeFSHrA60
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d4BXxI4g
Subject: [Intel-wired-lan] [PATCH iwl-next 14/14] ixd: add devlink support
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

Enable initial support for the devlink interface with the ixd
driver. The ixd hardware is a single function PCIe device. So, the
PCIe adapter gets its own devlink instance to manage device-wide
resources or configuration.

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
 Documentation/networking/devlink/ixd.rst     |  35 +++++++
 drivers/net/ethernet/intel/ixd/Kconfig       |   1 +
 drivers/net/ethernet/intel/ixd/Makefile      |   1 +
 drivers/net/ethernet/intel/ixd/ixd_devlink.c | 105 +++++++++++++++++++
 drivers/net/ethernet/intel/ixd/ixd_devlink.h |  44 ++++++++
 drivers/net/ethernet/intel/ixd/ixd_main.c    |  13 ++-
 6 files changed, 196 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/networking/devlink/ixd.rst
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.c
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.h

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
index bcaf06a874aa..d4f4fa4678bd 100644
--- a/drivers/net/ethernet/intel/ixd/Kconfig
+++ b/drivers/net/ethernet/intel/ixd/Kconfig
@@ -7,6 +7,7 @@ config IXD
 	select LIBETH
 	select LIBETH_CP
 	select LIBETH_PCI
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
index 97679cf4527f..8312c25f21f8 100644
--- a/drivers/net/ethernet/intel/ixd/ixd_main.c
+++ b/drivers/net/ethernet/intel/ixd/ixd_main.c
@@ -4,6 +4,7 @@
 #include "ixd.h"
 #include "ixd_ctlq.h"
 #include "ixd_lan_regs.h"
+#include "ixd_devlink.h"
 
 MODULE_DESCRIPTION("Intel(R) Control Plane Function Device Driver");
 MODULE_IMPORT_NS("LIBETH_CP");
@@ -21,12 +22,15 @@ static void ixd_remove(struct pci_dev *pdev)
 	/* Do not mix removal with (re)initialization */
 	cancel_delayed_work_sync(&adapter->init_task.init_work);
 
+	ixd_devlink_unregister(adapter);
+
 	/* Leave the device clean on exit */
 	ixd_trigger_reset(adapter);
 	ixd_deinit_dflt_mbx(adapter);
 
 	libeth_pci_unmap_all_mmio_regions(&adapter->cp_ctx.mmio_info);
 	libeth_pci_deinit_dev(pdev);
+	ixd_devlink_free(adapter);
 }
 
 /**
@@ -94,7 +98,7 @@ static int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (WARN_ON(ent->device != IXD_DEV_ID_CPF))
 		return -EINVAL;
 
-	adapter = devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
+	adapter = ixd_adapter_alloc(&pdev->dev);
 	if (!adapter)
 		return -ENOMEM;
 
@@ -103,7 +107,7 @@ static int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	err = libeth_pci_init_dev(pdev);
 	if (err)
-		return err;
+		goto free_adapter;
 
 	pci_set_drvdata(pdev, adapter);
 
@@ -119,11 +123,14 @@ static int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	queue_delayed_work(system_unbound_wq, &adapter->init_task.init_work,
 			   msecs_to_jiffies(500));
 
+	ixd_devlink_register(adapter);
+
 	return 0;
 
 deinit_dev:
 	libeth_pci_deinit_dev(pdev);
-
+free_adapter:
+	ixd_devlink_free(adapter);
 	return err;
 }
 
-- 
2.47.0


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6B0A25E41
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Feb 2025 16:17:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04CB460FB2;
	Mon,  3 Feb 2025 15:17:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aGLLK3Ja8Qhj; Mon,  3 Feb 2025 15:17:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CF1A60F7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738595839;
	bh=KbdHUanKBvS/um27/vpnqtfFKFhXYBWy1AXeJGVhG9M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7klDzq7KsVsJ7T0BIyPAueG5EoIKixlwVbL+uWbIF5j0Mqoq1jl4HnslUzMXlysht
	 /0yxKCotOFKlmRE1UMilTWERI9tSFR7RkU6iYPVeRMOjw0v0Wh1VJB5LYfNYkyoysj
	 yh/+22e0eGESTGdx0L5S8f6qTPQO+JcyaQDNnzK9OmTH2DsE5Y2IYRpVRr9T7dskug
	 UpsZCLrmzjn8UY8LgOUH03VhYCHUo+Gx6XxNHM3zXrYKnx3dnmF9H0gD9KyPYDXfLm
	 IBEUi1275HpqTUO27NmrXmmA6Qqo7Kh45nWMGzEbFuPYHxPQXohQlR1WzGCDb+kplz
	 kQHAV7kT1/vFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CF1A60F7B;
	Mon,  3 Feb 2025 15:17:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B48031A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 15:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9917B402E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 15:17:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ALcV1HIsAGuh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Feb 2025 15:17:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 26FE040654
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26FE040654
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26FE040654
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 15:17:15 +0000 (UTC)
X-CSE-ConnectionGUID: A/Rbh7AATseV8QRDuHkDSg==
X-CSE-MsgGUID: YBwA4PFBSvCz12x0Nj5uPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="56519788"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="56519788"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 07:17:15 -0800
X-CSE-ConnectionGUID: okg9E3/PS4WDw+tQDlIwLw==
X-CSE-MsgGUID: 1SsoyhvqSmO2hZY699scqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="110886207"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa009.fm.intel.com with ESMTP; 03 Feb 2025 07:17:13 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Mon,  3 Feb 2025 16:03:16 +0100
Message-Id: <20250203150328.4095-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250203150328.4095-1-jedrzej.jagielski@intel.com>
References: <20250203150328.4095-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738595836; x=1770131836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R3a3JxOzylE6eOW56V53y3r94wJKxUwCIvafKNV7ad4=;
 b=gDn5yj5lf05VkV3Otg5QO1tpWvKYcgZPD48uTZRdUwXG0j+/rHD0nUIU
 7hgLUAA66xN3ovvq+M5vsPlMRGZlRxtR9jCeCykkooAJMA3wH+ruyTE02
 1qjbTXzuhSWxEALk9hfwq1FMpTnT83g9IfnLNVIPyppf9ah665a53wXj3
 kzIlHYe7paxgaiswrQVE5eS2ikQQuQrGwx9uwW/LEV2c8w3em28PwjPoK
 OLAUi6uXM58+aCKRY0I9GMPSDuYSeKQUVWFHTqY4jI7yWwWEfYMYBpW/0
 bwnrjXsLPiEBX0GtRNgL8km+5lUdm1VHqGQi7BM7N9Z2qKbviN8MC45ys
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gDn5yj5l
Subject: [Intel-wired-lan] [PATCH iwl-next v1 01/13] ixgbe: add initial
 devlink support
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

Add an initial support for devlink interface to ixgbe driver.

Similarly to i40e driver the implementation doesn't enable
devlink to manage device-wide configuration. Devlink instance
is created for each physical function of PCIe device.

Create separate directory for devlink related ixgbe files
and use naming scheme similar to the one used in the ice driver.

Add a stub for Documentation, to be extended by further patches.

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 Documentation/networking/devlink/index.rst    |  1 +
 Documentation/networking/devlink/ixgbe.rst    |  8 ++
 drivers/net/ethernet/intel/Kconfig            |  1 +
 drivers/net/ethernet/intel/ixgbe/Makefile     |  3 +-
 .../ethernet/intel/ixgbe/devlink/devlink.c    | 81 +++++++++++++++++++
 .../ethernet/intel/ixgbe/devlink/devlink.h    | 10 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  8 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 24 +++++-
 8 files changed, 134 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/networking/devlink/ixgbe.rst
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.h

diff --git a/Documentation/networking/devlink/index.rst b/Documentation/networking/devlink/index.rst
index 948c8c44e233..8319f43b5933 100644
--- a/Documentation/networking/devlink/index.rst
+++ b/Documentation/networking/devlink/index.rst
@@ -84,6 +84,7 @@ parameters, info versions, and other features it supports.
    i40e
    ionic
    ice
+   ixgbe
    mlx4
    mlx5
    mlxsw
diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/networking/devlink/ixgbe.rst
new file mode 100644
index 000000000000..ca920d421d42
--- /dev/null
+++ b/Documentation/networking/devlink/ixgbe.rst
@@ -0,0 +1,8 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+====================
+ixgbe devlink support
+====================
+
+This document describes the devlink features implemented by the ``ixgbe``
+device driver.
diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 1640d2f27833..56ee58c9df21 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -147,6 +147,7 @@ config IXGBE
 	depends on PCI
 	depends on PTP_1588_CLOCK_OPTIONAL
 	select MDIO
+	select NET_DEVLINK
 	select PHYLIB
 	help
 	  This driver supports Intel(R) 10GbE PCI Express family of
diff --git a/drivers/net/ethernet/intel/ixgbe/Makefile b/drivers/net/ethernet/intel/ixgbe/Makefile
index b456d102655a..11f37140c0a3 100644
--- a/drivers/net/ethernet/intel/ixgbe/Makefile
+++ b/drivers/net/ethernet/intel/ixgbe/Makefile
@@ -4,12 +4,13 @@
 # Makefile for the Intel(R) 10GbE PCI Express ethernet driver
 #
 
+subdir-ccflags-y += -I$(src)
 obj-$(CONFIG_IXGBE) += ixgbe.o
 
 ixgbe-y := ixgbe_main.o ixgbe_common.o ixgbe_ethtool.o \
            ixgbe_82599.o ixgbe_82598.o ixgbe_phy.o ixgbe_sriov.o \
            ixgbe_mbx.o ixgbe_x540.o ixgbe_x550.o ixgbe_lib.o ixgbe_ptp.o \
-           ixgbe_xsk.o ixgbe_e610.o
+           ixgbe_xsk.o ixgbe_e610.o devlink/devlink.o
 
 ixgbe-$(CONFIG_IXGBE_DCB) +=  ixgbe_dcb.o ixgbe_dcb_82598.o \
                               ixgbe_dcb_82599.o ixgbe_dcb_nl.o
diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
new file mode 100644
index 000000000000..9e494cdbb4b1
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2025, Intel Corporation. */
+
+#include "ixgbe.h"
+#include "devlink.h"
+
+static const struct devlink_ops ixgbe_devlink_ops = {
+};
+
+/**
+ * ixgbe_allocate_devlink - Allocate devlink instance
+ * @adapter: pointer to the device adapter structure
+ *
+ * Allocate a devlink instance for this physical function.
+ *
+ * Return: 0 on success, -ENOMEM when allocation failed.
+ */
+int ixgbe_allocate_devlink(struct ixgbe_adapter *adapter)
+{
+	struct ixgbe_devlink_priv *devlink_private;
+	struct device *dev = &adapter->pdev->dev;
+	struct devlink *devlink;
+
+	devlink = devlink_alloc(&ixgbe_devlink_ops,
+				sizeof(*devlink_private), dev);
+	if (!devlink)
+		return -ENOMEM;
+
+	devlink_private = devlink_priv(devlink);
+	devlink_private->adapter = adapter;
+
+	adapter->devlink = devlink;
+
+	return 0;
+}
+
+/**
+ * ixgbe_devlink_set_switch_id - Set unique switch ID based on PCI DSN
+ * @adapter: pointer to the device adapter structure
+ * @ppid: struct with switch id information
+ */
+static void ixgbe_devlink_set_switch_id(struct ixgbe_adapter *adapter,
+					struct netdev_phys_item_id *ppid)
+{
+	u64 id = pci_get_dsn(adapter->pdev);
+
+	ppid->id_len = sizeof(id);
+	put_unaligned_be64(id, &ppid->id);
+}
+
+/**
+ * ixgbe_devlink_register_port - Register devlink port
+ * @adapter: pointer to the device adapter structure
+ *
+ * Create and register a devlink_port for this physical function.
+ *
+ * Return: 0 on success, error code on failure.
+ */
+int ixgbe_devlink_register_port(struct ixgbe_adapter *adapter)
+{
+	struct devlink_port *devlink_port = &adapter->devlink_port;
+	struct devlink *devlink = adapter->devlink;
+	struct device *dev = &adapter->pdev->dev;
+	struct devlink_port_attrs attrs = {};
+	int err;
+
+	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
+	attrs.phys.port_number = adapter->hw.bus.func;
+	ixgbe_devlink_set_switch_id(adapter, &attrs.switch_id);
+
+	devlink_port_attrs_set(devlink_port, &attrs);
+
+	err = devl_port_register(devlink, devlink_port, 0);
+	if (err) {
+		dev_err(dev,
+			"devlink port registration failed, err %d\n",
+			err);
+	}
+
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.h b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
new file mode 100644
index 000000000000..d73c57164aef
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2025, Intel Corporation. */
+
+#ifndef _IXGBE_DEVLINK_H_
+#define _IXGBE_DEVLINK_H_
+
+int ixgbe_allocate_devlink(struct ixgbe_adapter *adapter);
+int ixgbe_devlink_register_port(struct ixgbe_adapter *adapter);
+
+#endif /* _IXGBE_DEVLINK_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index e6a380d4929b..37d761f8c409 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -17,6 +17,8 @@
 #include <linux/net_tstamp.h>
 #include <linux/ptp_clock_kernel.h>
 
+#include <net/devlink.h>
+
 #include "ixgbe_type.h"
 #include "ixgbe_common.h"
 #include "ixgbe_dcb.h"
@@ -612,6 +614,8 @@ struct ixgbe_adapter {
 	struct bpf_prog *xdp_prog;
 	struct pci_dev *pdev;
 	struct mii_bus *mii_bus;
+	struct devlink *devlink;
+	struct devlink_port devlink_port;
 
 	unsigned long state;
 
@@ -830,6 +834,10 @@ struct ixgbe_adapter {
 	spinlock_t vfs_lock;
 };
 
+struct ixgbe_devlink_priv {
+	struct ixgbe_adapter *adapter;
+};
+
 static inline int ixgbe_determine_xdp_q_idx(int cpu)
 {
 	if (static_key_enabled(&ixgbe_xdp_locking_key))
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 7236f20c9a30..74f826c0aefe 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -49,6 +49,7 @@
 #include "ixgbe_sriov.h"
 #include "ixgbe_model.h"
 #include "ixgbe_txrx_common.h"
+#include "devlink/devlink.h"
 
 char ixgbe_driver_name[] = "ixgbe";
 static const char ixgbe_driver_string[] =
@@ -11283,6 +11284,10 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_ioremap;
 	}
 
+	err = ixgbe_allocate_devlink(adapter);
+	if (err)
+		goto err_ioremap;
+
 	netdev->netdev_ops = &ixgbe_netdev_ops;
 	ixgbe_set_ethtool_ops(netdev);
 	netdev->watchdog_timeo = 5 * HZ;
@@ -11300,7 +11305,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	eec = IXGBE_READ_REG(hw, IXGBE_EEC(hw));
 	if (ixgbe_removed(hw->hw_addr)) {
 		err = -EIO;
-		goto err_ioremap;
+		goto free_devlink;
 	}
 	/* If EEPROM is valid (bit 8 = 1), use default otherwise use bit bang */
 	if (!(eec & BIT(8)))
@@ -11613,6 +11618,11 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	}
 	strcpy(netdev->name, "eth%d");
 	pci_set_drvdata(pdev, adapter);
+
+	devl_lock(adapter->devlink);
+	ixgbe_devlink_register_port(adapter);
+	SET_NETDEV_DEVLINK_PORT(adapter->netdev, &adapter->devlink_port);
+
 	err = register_netdev(netdev);
 	if (err)
 		goto err_register;
@@ -11667,11 +11677,15 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto err_netdev;
 
+	devl_register(adapter->devlink);
+	devl_unlock(adapter->devlink);
 	return 0;
 
 err_netdev:
 	unregister_netdev(netdev);
 err_register:
+	devl_port_unregister(&adapter->devlink_port);
+	devl_unlock(adapter->devlink);
 	ixgbe_release_hw_control(adapter);
 	ixgbe_clear_interrupt_scheme(adapter);
 	if (hw->mac.type == ixgbe_mac_e610)
@@ -11684,6 +11698,8 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	kfree(adapter->mac_table);
 	kfree(adapter->rss_key);
 	bitmap_free(adapter->af_xdp_zc_qps);
+free_devlink:
+	devlink_free(adapter->devlink);
 err_ioremap:
 	disable_dev = !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
 	free_netdev(netdev);
@@ -11717,6 +11733,8 @@ static void ixgbe_remove(struct pci_dev *pdev)
 		return;
 
 	netdev  = adapter->netdev;
+	devl_lock(adapter->devlink);
+	devl_unregister(adapter->devlink);
 	ixgbe_dbg_adapter_exit(adapter);
 
 	set_bit(__IXGBE_REMOVING, &adapter->state);
@@ -11752,6 +11770,10 @@ static void ixgbe_remove(struct pci_dev *pdev)
 	if (netdev->reg_state == NETREG_REGISTERED)
 		unregister_netdev(netdev);
 
+	devl_port_unregister(&adapter->devlink_port);
+	devl_unlock(adapter->devlink);
+	devlink_free(adapter->devlink);
+
 	ixgbe_stop_ipsec_offload(adapter);
 	ixgbe_clear_interrupt_scheme(adapter);
 
-- 
2.31.1


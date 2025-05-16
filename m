Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 566DBAB9F1C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 16:58:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F7416129E;
	Fri, 16 May 2025 14:58:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M4bO3zcES-ul; Fri, 16 May 2025 14:58:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB6AC61299
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747407532;
	bh=XyHDi/oQ/VMsWRc6qgPoQaK3dxDv6qUaGY1Dry3bnKk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vu3eKAf45v1cJRbCA6FkBjW6BbqM+J4rfJjcmdyCymHu/KpXAh5jIDxnYmvbmyZDj
	 tPWDAVCZ+1s8akbLH4yfV9IWlG+lqlhjPBSPYFZu25GF2CJDCuXdwpdyDkBWqyZD0P
	 e4OnfhdQ7/v7yiIkG9ANDz0wkEDyMmZ88oX8uDZEpMlKBt1ODmkMIRvwNvyHjngD4Y
	 /J2J2LjviXAA1kk86gWtUwVPLdrTS4tkgLqI8JDNyOjV7coDZSO5cZ5mjp52pxEV2z
	 kRW/Kt4svPcP3vu8WoMKpTFyttXDCpC5ek5vu68nQjypYBqjQKIDJuMb+ZSSRkSALz
	 EldR6bDylJ0QQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB6AC61299;
	Fri, 16 May 2025 14:58:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 92DDC1AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 78A81612A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S0aF8l3XTdCf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 14:58:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 49318612DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49318612DC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49318612DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 14:58:49 +0000 (UTC)
X-CSE-ConnectionGUID: dZ+xCmT/RwexBe2KIbYL9Q==
X-CSE-MsgGUID: NEcR7AjZTVWFBKHHNxH5xQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="49308693"
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="49308693"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:58:48 -0700
X-CSE-ConnectionGUID: PSjv567kQ06HQwEKBksQAQ==
X-CSE-MsgGUID: FePk53yRRc2R2/vTZMMRAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="142718002"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 16 May 2025 07:58:42 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9C17134326;
 Fri, 16 May 2025 15:58:40 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
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
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Date: Fri, 16 May 2025 16:58:09 +0200
Message-ID: <20250516145814.5422-13-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250516145814.5422-1-larysa.zaremba@intel.com>
References: <20250516145814.5422-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747407529; x=1778943529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=21asOJpwnzBZMsQrjuZZJGw16XdglQvvwCOfz0cesG8=;
 b=QDnY502W7JAWHCq9L5X7duV1h+Kj26bD3cdDSCMo/DD23AXZgJFAd3A7
 KzwFhQzxS9253pWeOJPqEYpLBosKM6ggWFIPsXRKMnNa7Uqt/y/dmSOtt
 jBnIeywWtw8uG/sRe5LN9LKwIcERKxvTDQfl+G9KerY+yHeiGiu6fNe9/
 zlXRQ4RFNfQEy2J2zx5vICC6ky2e3SgdmqWIf9KnQ5FwEzPIKS1mTZ8Ct
 I/P61UGLzv3uj0GLcvdjEJv6VgmpfO6l2dyogXZ3CaZEeCGtmizMHlOrs
 JX16IXDXciBUg8wrsK13av1Q+zgzdHQenLqw2pXb77G9p/XQPPIloRmsQ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QDnY502W
Subject: [Intel-wired-lan] [PATCH iwl-next v4 12/15] ixd: add basic driver
 framework for Intel(R) Control Plane Function
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

Add module register and probe functionality. Add the required support to
register IXD PCI driver, as well as probe and remove call backs. Enable the
PCI device and request the kernel to reserve the memory resources that will
be used by the driver. Finally map the BAR0 address space.

For now, use devm_alloc() to allocate adapter, as it requires the least
amount of code. In a later commit, it will be replaced with a devlink
alternative.

Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 .../device_drivers/ethernet/index.rst         |   1 +
 .../device_drivers/ethernet/intel/ixd.rst     |  39 ++++++
 drivers/net/ethernet/intel/Kconfig            |   2 +
 drivers/net/ethernet/intel/Makefile           |   1 +
 drivers/net/ethernet/intel/ixd/Kconfig        |  13 ++
 drivers/net/ethernet/intel/ixd/Makefile       |   8 ++
 drivers/net/ethernet/intel/ixd/ixd.h          |  28 ++++
 drivers/net/ethernet/intel/ixd/ixd_lan_regs.h |  28 ++++
 drivers/net/ethernet/intel/ixd/ixd_main.c     | 122 ++++++++++++++++++
 9 files changed, 242 insertions(+)
 create mode 100644 Documentation/networking/device_drivers/ethernet/intel/ixd.rst
 create mode 100644 drivers/net/ethernet/intel/ixd/Kconfig
 create mode 100644 drivers/net/ethernet/intel/ixd/Makefile
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd.h
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_main.c

diff --git a/Documentation/networking/device_drivers/ethernet/index.rst b/Documentation/networking/device_drivers/ethernet/index.rst
index f9ed93c1da35..62c30e866a90 100644
--- a/Documentation/networking/device_drivers/ethernet/index.rst
+++ b/Documentation/networking/device_drivers/ethernet/index.rst
@@ -37,6 +37,7 @@ Contents:
    intel/igbvf
    intel/ixgbe
    intel/ixgbevf
+   intel/ixd
    intel/i40e
    intel/iavf
    intel/ice
diff --git a/Documentation/networking/device_drivers/ethernet/intel/ixd.rst b/Documentation/networking/device_drivers/ethernet/intel/ixd.rst
new file mode 100644
index 000000000000..1387626e5d20
--- /dev/null
+++ b/Documentation/networking/device_drivers/ethernet/intel/ixd.rst
@@ -0,0 +1,39 @@
+.. SPDX-License-Identifier: GPL-2.0+
+
+==========================================================================
+iXD Linux* Base Driver for the Intel(R) Control Plane Function
+==========================================================================
+
+Intel iXD Linux driver.
+Copyright(C) 2025 Intel Corporation.
+
+.. contents::
+
+For questions related to hardware requirements, refer to the documentation
+supplied with your Intel adapter. All hardware requirements listed apply to use
+with Linux.
+
+
+Identifying Your Adapter
+========================
+For information on how to identify your adapter, and for the latest Intel
+network drivers, refer to the Intel Support website:
+http://www.intel.com/support
+
+
+Support
+=======
+For general information, go to the Intel support website at:
+http://www.intel.com/support/
+
+If an issue is identified with the released source code on a supported kernel
+with a supported adapter, email the specific information related to the issue
+to intel-wired-lan@lists.osuosl.org.
+
+
+Trademarks
+==========
+Intel is a trademark or registered trademark of Intel Corporation or its
+subsidiaries in the United States and/or other countries.
+
+* Other names and brands may be claimed as the property of others.
diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index b05cc0d7a15d..4fd6d0ea1553 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -395,4 +395,6 @@ config IGC_LEDS
 
 source "drivers/net/ethernet/intel/idpf/Kconfig"
 
+source "drivers/net/ethernet/intel/ixd/Kconfig"
+
 endif # NET_VENDOR_INTEL
diff --git a/drivers/net/ethernet/intel/Makefile b/drivers/net/ethernet/intel/Makefile
index 04c844ef4964..8de2222a0333 100644
--- a/drivers/net/ethernet/intel/Makefile
+++ b/drivers/net/ethernet/intel/Makefile
@@ -19,3 +19,4 @@ obj-$(CONFIG_IAVF) += iavf/
 obj-$(CONFIG_FM10K) += fm10k/
 obj-$(CONFIG_ICE) += ice/
 obj-$(CONFIG_IDPF) += idpf/
+obj-$(CONFIG_IXD) += ixd/
diff --git a/drivers/net/ethernet/intel/ixd/Kconfig b/drivers/net/ethernet/intel/ixd/Kconfig
new file mode 100644
index 000000000000..f5594efe292c
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/Kconfig
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2025 Intel Corporation
+
+config IXD
+	tristate "Intel(R) Control Plane Function Support"
+	depends on PCI_MSI
+	select LIBETH
+	select LIBIE_PCI
+	help
+	  This driver supports Intel(R) Control Plane PCI Function
+	  of Intel E2100 and later IPUs and FNICs.
+	  It facilitates a centralized control over multiple IDPF PFs/VFs/SFs
+	  exposed by the same card.
diff --git a/drivers/net/ethernet/intel/ixd/Makefile b/drivers/net/ethernet/intel/ixd/Makefile
new file mode 100644
index 000000000000..3849bc240600
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/Makefile
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2025 Intel Corporation
+
+# Intel(R) Control Plane Function Linux Driver
+
+obj-$(CONFIG_IXD) += ixd.o
+
+ixd-y := ixd_main.o
diff --git a/drivers/net/ethernet/intel/ixd/ixd.h b/drivers/net/ethernet/intel/ixd/ixd.h
new file mode 100644
index 000000000000..d813c27941a5
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/ixd.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2025 Intel Corporation */
+
+#ifndef _IXD_H_
+#define _IXD_H_
+
+#include <linux/intel/libie/pci.h>
+
+/**
+ * struct ixd_adapter - Data structure representing a CPF
+ * @hw: Device access data
+ */
+struct ixd_adapter {
+	struct libie_mmio_info hw;
+};
+
+/**
+ * ixd_to_dev - Get the corresponding device struct from an adapter
+ * @adapter: PCI device driver-specific private data
+ *
+ * Return: struct device corresponding to the given adapter
+ */
+static inline struct device *ixd_to_dev(struct ixd_adapter *adapter)
+{
+	return &adapter->hw.pdev->dev;
+}
+
+#endif /* _IXD_H_ */
diff --git a/drivers/net/ethernet/intel/ixd/ixd_lan_regs.h b/drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
new file mode 100644
index 000000000000..a991eaa8a2aa
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2025 Intel Corporation */
+
+#ifndef _IXD_LAN_REGS_H_
+#define _IXD_LAN_REGS_H_
+
+/* Control Plane Function PCI ID */
+#define IXD_DEV_ID_CPF			0x1453
+
+/* Control Queue (Mailbox) */
+#define PF_FW_MBX_REG_LEN		4096
+#define PF_FW_MBX			0x08400000
+
+/* Reset registers */
+#define PFGEN_RTRIG_REG_LEN		2048
+#define PFGEN_RTRIG			0x08407000	/* Device resets */
+
+/**
+ * struct ixd_bar_region - BAR region description
+ * @offset: BAR region offset
+ * @size: BAR region size
+ */
+struct ixd_bar_region {
+	resource_size_t offset;
+	resource_size_t size;
+};
+
+#endif /* _IXD_LAN_REGS_H_ */
diff --git a/drivers/net/ethernet/intel/ixd/ixd_main.c b/drivers/net/ethernet/intel/ixd/ixd_main.c
new file mode 100644
index 000000000000..5b8b8258fec8
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixd/ixd_main.c
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2025 Intel Corporation */
+
+#include "ixd.h"
+#include "ixd_lan_regs.h"
+
+MODULE_DESCRIPTION("Intel(R) Control Plane Function Device Driver");
+MODULE_IMPORT_NS("LIBIE_PCI");
+MODULE_LICENSE("GPL");
+
+/**
+ * ixd_remove - remove a CPF PCI device
+ * @pdev: PCI device being removed
+ */
+static void ixd_remove(struct pci_dev *pdev)
+{
+	struct ixd_adapter *adapter = pci_get_drvdata(pdev);
+
+	libie_pci_unmap_all_mmio_regions(&adapter->hw);
+	libie_pci_deinit_dev(pdev);
+}
+
+/**
+ * ixd_shutdown - shut down a CPF PCI device
+ * @pdev: PCI device being shut down
+ */
+static void ixd_shutdown(struct pci_dev *pdev)
+{
+	ixd_remove(pdev);
+
+	if (system_state == SYSTEM_POWER_OFF)
+		pci_set_power_state(pdev, PCI_D3hot);
+}
+
+/**
+ * ixd_iomap_regions - iomap PCI BARs
+ * @adapter: adapter to map memory regions for
+ *
+ * Returns: %0 on success, negative on failure
+ */
+static int ixd_iomap_regions(struct ixd_adapter *adapter)
+{
+	const struct ixd_bar_region regions[] = {
+		{
+			.offset = PFGEN_RTRIG,
+			.size = PFGEN_RTRIG_REG_LEN,
+		},
+		{
+			.offset = PF_FW_MBX,
+			.size = PF_FW_MBX_REG_LEN,
+		},
+	};
+
+	for (int i = 0; i < ARRAY_SIZE(regions); i++) {
+		struct libie_mmio_info *mmio_info = &adapter->hw;
+		bool map_ok;
+
+		map_ok = libie_pci_map_mmio_region(mmio_info,
+						   regions[i].offset,
+						   regions[i].size);
+		if (!map_ok) {
+			dev_err(ixd_to_dev(adapter),
+				"Failed to map PCI device MMIO region\n");
+
+			libie_pci_unmap_all_mmio_regions(mmio_info);
+			return -EIO;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ixd_probe - probe a CPF PCI device
+ * @pdev: corresponding PCI device
+ * @ent: entry in ixd_pci_tbl
+ *
+ * Returns: %0 on success, negative errno code on failure
+ */
+static int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
+{
+	struct ixd_adapter *adapter;
+	int err;
+
+	adapter = devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
+	if (!adapter)
+		return -ENOMEM;
+	adapter->hw.pdev = pdev;
+	INIT_LIST_HEAD(&adapter->hw.mmio_list);
+
+	err = libie_pci_init_dev(pdev);
+	if (err)
+		return err;
+
+	pci_set_drvdata(pdev, adapter);
+
+	err = ixd_iomap_regions(adapter);
+	if (err)
+		goto deinit_dev;
+
+	return 0;
+
+deinit_dev:
+	libie_pci_deinit_dev(pdev);
+
+	return err;
+}
+
+static const struct pci_device_id ixd_pci_tbl[] = {
+	{ PCI_VDEVICE(INTEL, IXD_DEV_ID_CPF) },
+	{ }
+};
+MODULE_DEVICE_TABLE(pci, ixd_pci_tbl);
+
+static struct pci_driver ixd_driver = {
+	.name			= KBUILD_MODNAME,
+	.id_table		= ixd_pci_tbl,
+	.probe			= ixd_probe,
+	.remove			= ixd_remove,
+	.shutdown		= ixd_shutdown,
+};
+module_pci_driver(ixd_driver);
-- 
2.47.0


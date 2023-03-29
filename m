Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9486CEC81
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 17:14:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 285A384182;
	Wed, 29 Mar 2023 15:14:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 285A384182
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680102874;
	bh=FcXbK9snC/r0PQswEOm1yjnpEtfKUfRZoiXWpcNha40=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GiX4PERmSzRUMm6TtjYefoGGW0VafY8iDENzQ/MRGNH1mfK+UMBMQFHLgCGmvYOlA
	 2F7CEYwvz7h1bsCIEFizcR8dox4ocpvJ6f6eVp/VvCSaNoU6ADwXva4ouNhNHn8rvK
	 6AEVyQNgKi2JBcSO3y2DZVmMKTC/+b5eTUWz1r58Q9NBYQ+CjVOdF8y+jvhjXvM9nO
	 B7zYU2d4wGajwyRPP5d1e6+lL6VXl+5txEHBjlfSeQ9n1gH8Tnf01SRViOd8r6SAwM
	 8DTpZZL9Zxc1aASGslLWy1N04LaMK5WL3HdsLduyg03Rw4ZRQVVrPa3D4wo6XMrhQa
	 mbgfFEDbCQZnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e_UCTegbof6s; Wed, 29 Mar 2023 15:14:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6F5F8417D;
	Wed, 29 Mar 2023 15:14:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6F5F8417D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14AD11BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:07:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 901EA8418D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:07:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 901EA8418D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 68UwK7OdRAi3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 14:07:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 559DC84190
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 559DC84190
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:07:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="342480743"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="342480743"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 07:06:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="748791349"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="748791349"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by fmsmga008.fm.intel.com with ESMTP; 29 Mar 2023 07:06:24 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Mar 2023 07:03:51 -0700
Message-Id: <20230329140404.1647925-3-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 29 Mar 2023 15:14:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680098822; x=1711634822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HBW6iC74GzM3V8pLHcRPUvvLyuMDiQBz5U2lbgew/g0=;
 b=UOBnEz4HkwB4zqQYNKTz8TNsjgbOmwQYPnqd2vVlh243QOK4TZc24y51
 KlR2VMxJ+ad6Ex7z2hYtDs0DBSk0sq4uRqsMZ2sttTG3egRxMAOpXk8eV
 hooS1NHZf5dlgvlzw7HiuJuIm7vmFsNTQWNv06KJ2cUrABvHqzFdDTKRK
 CXACu/D84dzdMXmcYrvPCGHwJvWF9zQt70KT4YKIYPHClw0HhewkZ/LRh
 tAcigxiefj1Xm/qCIsTE23Qe85TH9ggwZIMkgaHUQP5ql93okgMptZzmJ
 lNmr8dOzZyXArutH3LklKztbECrTIbna7BAe3tTMI9bbyBsWejq8a8FRw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UOBnEz4H
Subject: [Intel-wired-lan] [PATCH net-next 02/15] idpf: add module register
 and probe functionality
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
Cc: willemb@google.com, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>, netdev@vger.kernel.org,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Phani Burra <phani.r.burra@intel.com>

Add the required support to register IDPF PCI driver, as well as
probe and remove call backs. Enable the PCI device and request
the kernel to reserve the memory resources that will be used by the
driver. Finally map the BAR0 address space.

PCI IDs table is intentionally left blank to prevent the kernel from
probing the device with the incomplete driver. It will be added
in the last patch of the series.

Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Co-developed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 drivers/net/ethernet/intel/Kconfig            | 11 +++
 drivers/net/ethernet/intel/Makefile           |  1 +
 drivers/net/ethernet/intel/idpf/Makefile      | 10 ++
 drivers/net/ethernet/intel/idpf/idpf.h        | 27 ++++++
 .../net/ethernet/intel/idpf/idpf_controlq.h   | 14 +++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 96 +++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_main.c   | 70 ++++++++++++++
 7 files changed, 229 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lib.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index c18c3b373846..8c250326985f 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -373,4 +373,15 @@ config IGC
 	  To compile this driver as a module, choose M here. The module
 	  will be called igc.
 
+config IDPF
+	tristate "Intel(R) Infrastructure Data Path Function Support"
+	depends on PCI_MSI
+	select DIMLIB
+	help
+	  This driver supports Intel(R) Infrastructure Processing Unit (IPU)
+	  devices.
+
+	  To compile this driver as a module, choose M here. The module
+	  will be called idpf.
+
 endif # NET_VENDOR_INTEL
diff --git a/drivers/net/ethernet/intel/Makefile b/drivers/net/ethernet/intel/Makefile
index 3075290063f6..70cc2ae1cb97 100644
--- a/drivers/net/ethernet/intel/Makefile
+++ b/drivers/net/ethernet/intel/Makefile
@@ -16,3 +16,4 @@ obj-$(CONFIG_IXGB) += ixgb/
 obj-$(CONFIG_IAVF) += iavf/
 obj-$(CONFIG_FM10K) += fm10k/
 obj-$(CONFIG_ICE) += ice/
+obj-$(CONFIG_IDPF) += idpf/
diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
new file mode 100644
index 000000000000..d26521c987e1
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2023 Intel Corporation
+
+# Makefile for Infrastructure Data Path Function Linux Driver
+
+obj-$(CONFIG_IDPF) += idpf.o
+
+idpf-y := \
+	idpf_lib.o		\
+	idpf_main.o
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
new file mode 100644
index 000000000000..7494f9d29970
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _IDPF_H_
+#define _IDPF_H_
+
+#include <linux/aer.h>
+#include <linux/etherdevice.h>
+#include <linux/pci.h>
+
+#include "idpf_controlq.h"
+
+/* available message levels */
+#define IDPF_AVAIL_NETIF_M (NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK)
+
+struct idpf_adapter {
+	struct pci_dev *pdev;
+	u32 msg_enable;
+	struct idpf_hw hw;
+};
+
+int idpf_pf_probe(struct pci_dev *pdev, struct idpf_adapter *adapter);
+int idpf_vf_probe(struct pci_dev *pdev, struct idpf_adapter *adapter);
+int idpf_probe_common(struct pci_dev *pdev, struct idpf_adapter *adapter);
+void idpf_remove_common(struct pci_dev *pdev);
+
+#endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.h b/drivers/net/ethernet/intel/idpf/idpf_controlq.h
new file mode 100644
index 000000000000..383089c91675
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _IDPF_CONTROLQ_H_
+#define _IDPF_CONTROLQ_H_
+
+struct idpf_hw {
+	void __iomem *hw_addr;
+	resource_size_t hw_addr_len;
+
+	void *back;
+};
+
+#endif /* _IDPF_CONTROLQ_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
new file mode 100644
index 000000000000..bf25574c75e4
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "idpf.h"
+
+/**
+ * idpf_cfg_hw - Initialize HW struct
+ * @adapter: adapter to setup hw struct for
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_cfg_hw(struct idpf_adapter *adapter)
+{
+	struct pci_dev *pdev = adapter->pdev;
+	struct idpf_hw *hw = &adapter->hw;
+
+	hw->hw_addr = pcim_iomap_table(pdev)[0];
+	if (!hw->hw_addr) {
+		pci_err(pdev, "failed to allocate PCI iomap table\n");
+
+		return -ENOMEM;
+	}
+
+	hw->back = adapter;
+
+	return 0;
+}
+
+/**
+ * idpf_probe_common - Device initialization routine
+ * @pdev: PCI device information struct
+ * @adapter: driver specific private structure
+ *
+ * Returns 0 on success, negative on failure
+ */
+int idpf_probe_common(struct pci_dev *pdev, struct idpf_adapter *adapter)
+{
+	struct device *dev = &pdev->dev;
+	int err;
+
+	adapter->pdev = pdev;
+
+	err = pcim_enable_device(pdev);
+	if (err)
+		return err;
+
+	err = pcim_iomap_regions(pdev, BIT(0), pci_name(pdev));
+	if (err) {
+		pci_err(pdev, "pcim_iomap_regions failed %pe\n", ERR_PTR(err));
+
+		return err;
+	}
+
+	/* set up for high or low dma */
+	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
+	if (err) {
+		pci_err(pdev, "DMA configuration failed: %pe\n", ERR_PTR(err));
+
+		return err;
+	}
+
+	pci_enable_pcie_error_reporting(pdev);
+	pci_set_master(pdev);
+	pci_set_drvdata(pdev, adapter);
+
+	/* setup msglvl */
+	adapter->msg_enable = netif_msg_init(-1, IDPF_AVAIL_NETIF_M);
+
+	err = idpf_cfg_hw(adapter);
+	if (err) {
+		dev_err(dev, "Failed to configure HW structure for adapter: %d\n",
+			err);
+		goto err_cfg_hw;
+	}
+
+	return 0;
+
+err_cfg_hw:
+	pci_disable_pcie_error_reporting(pdev);
+
+	return err;
+}
+
+/**
+ * idpf_remove_common - Device removal routine
+ * @pdev: PCI device information struct
+ */
+void idpf_remove_common(struct pci_dev *pdev)
+{
+	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
+
+	if (!adapter)
+		return;
+
+	pci_disable_pcie_error_reporting(pdev);
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
new file mode 100644
index 000000000000..617df9b924fa
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "idpf.h"
+
+#define DRV_SUMMARY	"Infrastructure Data Path Function Linux Driver"
+
+MODULE_DESCRIPTION(DRV_SUMMARY);
+MODULE_LICENSE("GPL");
+
+/**
+ * idpf_remove - Device removal routine
+ * @pdev: PCI device information struct
+ */
+static void idpf_remove(struct pci_dev *pdev)
+{
+	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
+
+	if (!adapter)
+		return;
+
+	idpf_remove_common(pdev);
+	pci_set_drvdata(pdev, NULL);
+}
+
+/**
+ * idpf_shutdown - PCI callback for shutting down device
+ * @pdev: PCI device information struct
+ */
+static void idpf_shutdown(struct pci_dev *pdev)
+{
+	idpf_remove(pdev);
+
+	if (system_state == SYSTEM_POWER_OFF)
+		pci_set_power_state(pdev, PCI_D3hot);
+}
+
+/**
+ * idpf_probe - Device initialization routine
+ * @pdev: PCI device information struct
+ * @ent: entry in idpf_pci_tbl
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
+{
+	struct idpf_adapter *adapter;
+
+	adapter = devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
+	if (!adapter)
+		return -ENOMEM;
+
+	return idpf_probe_common(pdev, adapter);
+}
+
+/* idpf_pci_tbl - PCI Dev idpf ID Table
+ */
+static const struct pci_device_id idpf_pci_tbl[] = {
+	{ /* Sentinel */ }
+};
+MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
+
+static struct pci_driver idpf_driver = {
+	.name			= KBUILD_MODNAME,
+	.id_table		= idpf_pci_tbl,
+	.probe			= idpf_probe,
+	.remove			= idpf_remove,
+	.shutdown		= idpf_shutdown,
+};
+module_pci_driver(idpf_driver);
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

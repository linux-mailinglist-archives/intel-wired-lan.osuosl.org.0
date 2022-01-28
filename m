Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDBA49EFD5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 01:35:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1E1141C56;
	Fri, 28 Jan 2022 00:35:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BrAuovNpTwWg; Fri, 28 Jan 2022 00:35:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 228AD41BF1;
	Fri, 28 Jan 2022 00:35:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECE3A1C113E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5E8A4019A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1m4UXr5nIu0r for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 00:34:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED75040597
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643330080; x=1674866080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YAgg743bLYHbio8XBHMidaP4zFESiA13w7HOQ1fUuqA=;
 b=iAotH18sdAS0BhY6gSBB0Reo5OEi7f7SodyGDNThWKPNPoSm1OdCYt0M
 CWBVz9CzVu93XDXCguIxu/Vf5dDo7pXACOA7xSJMT1/tWhUrwN5zWX6CR
 J+mc+Mns0CcoiMKLKje7QpcvCV/XdIdfBXZ5KYe5EI3mmKJ/OXcnGHmze
 94zwJoYHzNk8Gh+Dpfa19WcBbPfzNZz6fgFaqtFUFq5dhLhd1Tivj3Ck9
 hUpTkgWZt7kYZreHmfEpDP5CvxEE7gqy4wQ4ZC4r0ZXJo2yYFUWKthraW
 ZitN1NcoZDJUb1ICTrW36ni4c/mA6Sv8AHmI5Ruxv12nhQGiPvjig8+0k Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="234380439"
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="234380439"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 16:34:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="563999758"
Received: from dev1-atbrady.jf.intel.com ([10.166.244.128])
 by orsmga001.jf.intel.com with ESMTP; 27 Jan 2022 16:34:27 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jan 2022 16:10:09 -0800
Message-Id: <20220128001009.721392-20-alan.brady@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220128001009.721392-1-alan.brady@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 19/19] idpf: introduce idpf driver
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
Cc: Phani Burra <phani.r.burra@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This adds the idpf driver which uses the iecm module to provide common
functionality. Device specific behavior and registers are defined here and
handed off to iecm which takes over the rest of the flow.

Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 .../device_drivers/ethernet/intel/idpf.rst    |  47 ++++++
 drivers/net/ethernet/intel/Kconfig            |  16 ++
 drivers/net/ethernet/intel/Makefile           |   1 +
 drivers/net/ethernet/intel/idpf/Makefile      |  15 ++
 drivers/net/ethernet/intel/idpf/idpf_dev.h    |  17 +++
 drivers/net/ethernet/intel/idpf/idpf_devids.h |  10 ++
 drivers/net/ethernet/intel/idpf/idpf_main.c   | 140 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_reg.c    | 130 ++++++++++++++++
 .../ethernet/intel/include/iecm_lan_pf_regs.h | 131 ++++++++++++++++
 9 files changed, 507 insertions(+)
 create mode 100644 Documentation/networking/device_drivers/ethernet/intel/idpf.rst
 create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_dev.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_reg.c
 create mode 100644 drivers/net/ethernet/intel/include/iecm_lan_pf_regs.h

diff --git a/Documentation/networking/device_drivers/ethernet/intel/idpf.rst b/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
new file mode 100644
index 000000000000..973fa9613428
--- /dev/null
+++ b/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
@@ -0,0 +1,47 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+==================================================================
+Linux Base Driver for the Intel(R) Smart Network Adapter Family Series
+==================================================================
+
+Intel idpf Linux driver.
+Copyright(c) 2020 Intel Corporation.
+
+Contents
+========
+
+- Enabling the driver
+- Support
+
+The driver in this release supports Intel's Smart Network Adapter Family Series
+of products. For more information, visit Intel's support page at
+https://support.intel.com.
+
+Enabling the driver
+===================
+The driver is enabled via the standard kernel configuration system,
+using the make command::
+
+  make oldconfig/menuconfig/etc.
+
+The driver is located in the menu structure at:
+
+  -> Device Drivers
+    -> Network device support (NETDEVICES [=y])
+      -> Ethernet driver support
+        -> Intel devices
+          -> Intel(R) Smart Network Adapter Family Series Support
+
+Support
+=======
+For general information, go to the Intel support website at:
+
+https://www.intel.com/support/
+
+or the Intel Wired Networking project hosted by Sourceforge at:
+
+https://sourceforge.net/projects/e1000
+
+If an issue is identified with the released source code on a supported kernel
+with a supported adapter, email the specific information related to the issue
+to e1000-devel@lists.sf.net.
diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 754dc7677ad5..93c8883c22ad 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -387,4 +387,20 @@ config IECM
       To compile this as a module, choose M here. The module will be called
       iecm.
 
+config IDPF
+	tristate "Intel(R) Data Plane Function Support"
+	default n
+	depends on IECM
+	help
+	  For more information on how to identify your adapter, go
+	  to the Adapter & Driver ID Guide that can be located at:
+
+	  <http://support.intel.com>
+
+	  More specific information on configuring the driver is in
+	  <file:Documentation/networking/device_drivers/ethernet/intel/idpf.rst>.
+
+	  To compile this driver as a module, choose M here. The module
+	  will be called idpf.
+
 endif # NET_VENDOR_INTEL
diff --git a/drivers/net/ethernet/intel/Makefile b/drivers/net/ethernet/intel/Makefile
index c9eba9cc5087..3786c2269f3d 100644
--- a/drivers/net/ethernet/intel/Makefile
+++ b/drivers/net/ethernet/intel/Makefile
@@ -17,3 +17,4 @@ obj-$(CONFIG_IAVF) += iavf/
 obj-$(CONFIG_FM10K) += fm10k/
 obj-$(CONFIG_ICE) += ice/
 obj-$(CONFIG_IECM) += iecm/
+obj-$(CONFIG_IDPF) += idpf/
diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
new file mode 100644
index 000000000000..85846620bc9f
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -0,0 +1,15 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2019 Intel Corporation
+
+#
+# Makefile for the Intel(R) Data Plane Function Linux Driver
+#
+
+obj-$(CONFIG_IDPF) += idpf.o
+
+ccflags-y += -I$(srctree)/drivers/net/ethernet/intel/include \
+			 -I$(srctree)/include/linux/avf
+
+idpf-y := \
+	idpf_main.o \
+	idpf_reg.o
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.h b/drivers/net/ethernet/intel/idpf/idpf_dev.h
new file mode 100644
index 000000000000..dc146161f884
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2019 Intel Corporation */
+
+#ifndef _IDPF_DEV_H_
+#define _IDPF_DEV_H_
+
+#include "iecm.h"
+
+int idpf_intr_reg_init(struct iecm_vport *vport);
+void idpf_mb_intr_reg_init(struct iecm_adapter *adapter);
+void idpf_reset_reg_init(struct iecm_reset_reg *reset_reg);
+void idpf_trigger_reset(struct iecm_adapter *adapter,
+			enum iecm_flags trig_cause);
+void idpf_vportq_reg_init(struct iecm_vport *vport);
+void idpf_ctlq_reg_init(struct iecm_ctlq_create_info *cq);
+
+#endif /* _IDPF_DEV_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_devids.h b/drivers/net/ethernet/intel/idpf/idpf_devids.h
new file mode 100644
index 000000000000..7bf8eb64b76a
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_devids.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2019 Intel Corporation */
+
+#ifndef _IDPF_DEVIDS_H_
+#define _IDPF_DEVIDS_H_
+
+/* Device IDs */
+#define IDPF_DEV_ID_PF			0x1452
+
+#endif /* _IDPF_DEVIDS_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
new file mode 100644
index 000000000000..da5e668beabf
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -0,0 +1,140 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2019 Intel Corporation */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include "idpf_dev.h"
+#include "idpf_devids.h"
+
+#define DRV_SUMMARY	"Intel(R) Data Plane Function Linux Driver"
+static const char idpf_driver_string[] = DRV_SUMMARY;
+static const char idpf_copyright[] = "Copyright (c) 2020, Intel Corporation.";
+
+MODULE_DESCRIPTION(DRV_SUMMARY);
+MODULE_LICENSE("GPL");
+
+/**
+ * idpf_reg_ops_init - Initialize register API function pointers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_reg_ops_init(struct iecm_adapter *adapter)
+{
+	adapter->dev_ops.reg_ops.ctlq_reg_init = idpf_ctlq_reg_init;
+	adapter->dev_ops.reg_ops.intr_reg_init = idpf_intr_reg_init;
+	adapter->dev_ops.reg_ops.mb_intr_reg_init = idpf_mb_intr_reg_init;
+	adapter->dev_ops.reg_ops.reset_reg_init = idpf_reset_reg_init;
+	adapter->dev_ops.reg_ops.trigger_reset = idpf_trigger_reset;
+}
+
+/**
+ * idpf_probe - Device initialization routine
+ * @pdev: PCI device information struct
+ * @ent: entry in idpf_pci_tbl
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_probe(struct pci_dev *pdev,
+		      const struct pci_device_id __always_unused *ent)
+{
+	struct iecm_adapter *adapter = NULL;
+	int err;
+
+	adapter = kzalloc(sizeof(*adapter), GFP_KERNEL);
+	if (!adapter)
+		return -ENOMEM;
+
+	adapter->dev_ops.reg_ops_init = idpf_reg_ops_init;
+	set_bit(__IECM_REQ_TX_SPLITQ, adapter->flags);
+	set_bit(__IECM_REQ_RX_SPLITQ, adapter->flags);
+
+	err = iecm_probe(pdev, ent, adapter);
+	if (err)
+		kfree(adapter);
+
+	return err;
+}
+
+/**
+ * idpf_remove - Device removal routine
+ * @pdev: PCI device information struct
+ */
+static void idpf_remove(struct pci_dev *pdev)
+{
+	struct iecm_adapter *adapter = pci_get_drvdata(pdev);
+
+	if (!adapter)
+		return;
+
+	iecm_remove(pdev);
+	pci_set_drvdata(pdev, NULL);
+	kfree(adapter);
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
+/* idpf_pci_tbl - PCI Dev iapf ID Table
+ *
+ * Wildcard entries (PCI_ANY_ID) should come last
+ * Last entry must be all 0s
+ *
+ * { Vendor ID, Device ID, SubVendor ID, SubDevice ID,
+ *   Class, Class Mask, private data (not used) }
+ */
+static const struct pci_device_id idpf_pci_tbl[] = {
+	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_PF), 0 },
+	/* required last entry */
+	{ 0, }
+};
+MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
+
+static struct pci_driver idpf_driver = {
+	.name = KBUILD_MODNAME,
+	.id_table = idpf_pci_tbl,
+	.probe = idpf_probe,
+	.remove = idpf_remove,
+	.shutdown = idpf_shutdown,
+};
+
+/**
+ * idpf_module_init - Driver registration routine
+ *
+ * idpf_module_init is the first routine called when the driver is
+ * loaded. All it does is register with the PCI subsystem.
+ */
+static int __init idpf_module_init(void)
+{
+	int status;
+
+	pr_info("%s - version %d\n", idpf_driver_string, LINUX_VERSION_CODE);
+	pr_info("%s\n", idpf_copyright);
+
+	status = pci_register_driver(&idpf_driver);
+	if (status)
+		pr_err("failed to register pci driver, err %d\n", status);
+
+	return status;
+}
+module_init(idpf_module_init);
+
+/**
+ * idpf_module_exit - Driver exit cleanup routine
+ *
+ * idpf_module_exit is called just before the driver is removed
+ * from memory.
+ */
+static void __exit idpf_module_exit(void)
+{
+	pci_unregister_driver(&idpf_driver);
+	pr_info("module unloaded\n");
+}
+module_exit(idpf_module_exit);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_reg.c b/drivers/net/ethernet/intel/idpf/idpf_reg.c
new file mode 100644
index 000000000000..d0ea6c495c62
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_reg.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2019 Intel Corporation */
+
+#include "idpf_dev.h"
+#include "iecm_lan_pf_regs.h"
+
+/**
+ * idpf_ctlq_reg_init - initialize default mailbox registers
+ * @cq: pointer to the array of create control queues
+ */
+void idpf_ctlq_reg_init(struct iecm_ctlq_create_info *cq)
+{
+	int i;
+
+#define NUM_Q 2
+	for (i = 0; i < NUM_Q; i++) {
+		struct iecm_ctlq_create_info *ccq = cq + i;
+
+		switch (ccq->type) {
+		case IECM_CTLQ_TYPE_MAILBOX_TX:
+			/* set head and tail registers in our local struct */
+			ccq->reg.head = PF_FW_ATQH;
+			ccq->reg.tail = PF_FW_ATQT;
+			ccq->reg.len = PF_FW_ATQLEN;
+			ccq->reg.bah = PF_FW_ATQBAH;
+			ccq->reg.bal = PF_FW_ATQBAL;
+			ccq->reg.len_mask = PF_FW_ATQLEN_ATQLEN_M;
+			ccq->reg.len_ena_mask = PF_FW_ATQLEN_ATQENABLE_M;
+			ccq->reg.head_mask = PF_FW_ATQH_ATQH_M;
+			break;
+		case IECM_CTLQ_TYPE_MAILBOX_RX:
+			/* set head and tail registers in our local struct */
+			ccq->reg.head = PF_FW_ARQH;
+			ccq->reg.tail = PF_FW_ARQT;
+			ccq->reg.len = PF_FW_ARQLEN;
+			ccq->reg.bah = PF_FW_ARQBAH;
+			ccq->reg.bal = PF_FW_ARQBAL;
+			ccq->reg.len_mask = PF_FW_ARQLEN_ARQLEN_M;
+			ccq->reg.len_ena_mask = PF_FW_ARQLEN_ARQENABLE_M;
+			ccq->reg.head_mask = PF_FW_ARQH_ARQH_M;
+			break;
+		default:
+			break;
+		}
+	}
+}
+
+/**
+ * idpf_mb_intr_reg_init - Initialize mailbox interrupt register
+ * @adapter: adapter structure
+ */
+void idpf_mb_intr_reg_init(struct iecm_adapter *adapter)
+{
+	struct iecm_intr_reg *intr = &adapter->mb_vector.intr_reg;
+	struct virtchnl2_get_capabilities *caps;
+
+	caps = (struct virtchnl2_get_capabilities *)adapter->caps;
+	intr->dyn_ctl = le32_to_cpu(caps->mailbox_dyn_ctl);
+	intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
+	intr->dyn_ctl_itridx_m = PF_GLINT_DYN_CTL_ITR_INDX_M;
+	intr->icr_ena = PF_INT_DIR_OICR_ENA;
+	intr->icr_ena_ctlq_m = PF_INT_DIR_OICR_ENA_M;
+}
+
+/**
+ * idpf_intr_reg_init - Initialize interrupt registers
+ * @vport: virtual port structure
+ */
+int idpf_intr_reg_init(struct iecm_vport *vport)
+{
+	int num_vecs = vport->num_q_vectors;
+	struct iecm_vec_regs *reg_vals;
+	int num_regs, i, err = 0;
+
+	reg_vals = kmalloc(sizeof(void *) * IECM_LARGE_MAX_Q,
+			   GFP_KERNEL);
+	if (!reg_vals)
+		return -ENOMEM;
+
+	num_regs = iecm_get_reg_intr_vecs(vport, reg_vals, num_vecs);
+	if (num_regs != num_vecs) {
+		err = -EINVAL;
+		goto free_reg_vals;
+	}
+
+	for (i = 0; i < num_regs; i++) {
+		struct iecm_q_vector *q_vector = &vport->q_vectors[i];
+		struct iecm_intr_reg *intr = &q_vector->intr_reg;
+
+		intr->dyn_ctl = reg_vals[i].dyn_ctl_reg;
+		intr->dyn_ctl_clrpba_m = PF_GLINT_DYN_CTL_CLEARPBA_M;
+		intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
+		intr->dyn_ctl_itridx_s = PF_GLINT_DYN_CTL_ITR_INDX_S;
+		intr->dyn_ctl_intrvl_s = PF_GLINT_DYN_CTL_INTERVAL_S;
+
+		intr->rx_itr = PF_GLINT_ITR_V2(VIRTCHNL2_ITR_IDX_0,
+					       reg_vals[i].itrn_reg);
+		intr->tx_itr = PF_GLINT_ITR_V2(VIRTCHNL2_ITR_IDX_1,
+					       reg_vals[i].itrn_reg);
+	}
+
+free_reg_vals:
+	kfree(reg_vals);
+	return err;
+}
+
+/**
+ * idpf_reset_reg_init - Initialize reset registers
+ * @reset_reg: struct to be filled in with reset registers
+ */
+void idpf_reset_reg_init(struct iecm_reset_reg *reset_reg)
+{
+	reset_reg->rstat = PFGEN_RSTAT;
+	reset_reg->rstat_m = PFGEN_RSTAT_PFR_STATE_M;
+}
+
+/**
+ * idpf_trigger_reset - trigger reset
+ * @adapter: Driver specific private structure
+ * @trig_cause: Reason to trigger a reset
+ */
+void idpf_trigger_reset(struct iecm_adapter *adapter,
+			enum iecm_flags __always_unused trig_cause)
+{
+	u32 reset_reg;
+
+	reset_reg = rd32(&adapter->hw, PFGEN_CTRL);
+	wr32(&adapter->hw, PFGEN_CTRL, (reset_reg | PFGEN_CTRL_PFSWR));
+}
+
diff --git a/drivers/net/ethernet/intel/include/iecm_lan_pf_regs.h b/drivers/net/ethernet/intel/include/iecm_lan_pf_regs.h
new file mode 100644
index 000000000000..52ffe5c4a7ca
--- /dev/null
+++ b/drivers/net/ethernet/intel/include/iecm_lan_pf_regs.h
@@ -0,0 +1,131 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (c) 2020, Intel Corporation. */
+
+#ifndef _IECM_LAN_PF_REGS_H_
+#define _IECM_LAN_PF_REGS_H_
+
+/* Receive queues */
+#define PF_QRX_BASE			0x00000000
+#define PF_QRX_TAIL(_QRX)		(PF_QRX_BASE + (((_QRX) * 0x1000)))
+#define PF_QRX_BUFFQ_BASE		0x03000000
+#define PF_QRX_BUFFQ_TAIL(_QRX)		(PF_QRX_BUFFQ_BASE + (((_QRX) * 0x1000)))
+
+/* Transmit queues */
+#define PF_QTX_BASE			0x05000000
+#define PF_QTX_COMM_DBELL(_DBQM)	(PF_QTX_BASE + ((_DBQM) * 0x1000))
+
+/* Control(PF Mailbox) Queue */
+#define PF_FW_BASE			0x08400000
+
+#define PF_FW_ARQBAL			(PF_FW_BASE)
+#define PF_FW_ARQBAH			(PF_FW_BASE + 0x4)
+#define PF_FW_ARQLEN			(PF_FW_BASE + 0x8)
+#define PF_FW_ARQLEN_ARQLEN_S		0
+#define PF_FW_ARQLEN_ARQLEN_M		MAKEMASK(0x1FFF, PF_FW_ARQLEN_ARQLEN_S)
+#define PF_FW_ARQLEN_ARQVFE_S		28
+#define PF_FW_ARQLEN_ARQVFE_M		BIT(PF_FW_ARQLEN_ARQVFE_S)
+#define PF_FW_ARQLEN_ARQOVFL_S		29
+#define PF_FW_ARQLEN_ARQOVFL_M		BIT(PF_FW_ARQLEN_ARQOVFL_S)
+#define PF_FW_ARQLEN_ARQCRIT_S		30
+#define PF_FW_ARQLEN_ARQCRIT_M		BIT(PF_FW_ARQLEN_ARQCRIT_S)
+#define PF_FW_ARQLEN_ARQENABLE_S	31
+#define PF_FW_ARQLEN_ARQENABLE_M	BIT(PF_FW_ARQLEN_ARQENABLE_S)
+#define PF_FW_ARQH			(PF_FW_BASE + 0xC)
+#define PF_FW_ARQH_ARQH_S		0
+#define PF_FW_ARQH_ARQH_M		MAKEMASK(0x1FFF, PF_FW_ARQH_ARQH_S)
+#define PF_FW_ARQT			(PF_FW_BASE + 0x10)
+
+#define PF_FW_ATQBAL			(PF_FW_BASE + 0x14)
+#define PF_FW_ATQBAH			(PF_FW_BASE + 0x18)
+#define PF_FW_ATQLEN			(PF_FW_BASE + 0x1C)
+#define PF_FW_ATQLEN_ATQLEN_S		0
+#define PF_FW_ATQLEN_ATQLEN_M		MAKEMASK(0x3FF, PF_FW_ATQLEN_ATQLEN_S)
+#define PF_FW_ATQLEN_ATQVFE_S		28
+#define PF_FW_ATQLEN_ATQVFE_M		BIT(PF_FW_ATQLEN_ATQVFE_S)
+#define PF_FW_ATQLEN_ATQOVFL_S		29
+#define PF_FW_ATQLEN_ATQOVFL_M		BIT(PF_FW_ATQLEN_ATQOVFL_S)
+#define PF_FW_ATQLEN_ATQCRIT_S		30
+#define PF_FW_ATQLEN_ATQCRIT_M		BIT(PF_FW_ATQLEN_ATQCRIT_S)
+#define PF_FW_ATQLEN_ATQENABLE_S	31
+#define PF_FW_ATQLEN_ATQENABLE_M	BIT(PF_FW_ATQLEN_ATQENABLE_S)
+#define PF_FW_ATQH			(PF_FW_BASE + 0x20)
+#define PF_FW_ATQH_ATQH_S		0
+#define PF_FW_ATQH_ATQH_M		MAKEMASK(0x3FF, PF_FW_ATQH_ATQH_S)
+#define PF_FW_ATQT			(PF_FW_BASE + 0x24)
+
+/* Interrupts */
+#define PF_GLINT_BASE			0x08900000
+#define PF_GLINT_DYN_CTL(_INT)		(PF_GLINT_BASE + ((_INT) * 0x1000))
+#define PF_GLINT_DYN_CTL_INTENA_S	0
+#define PF_GLINT_DYN_CTL_INTENA_M	BIT(PF_GLINT_DYN_CTL_INTENA_S)
+#define PF_GLINT_DYN_CTL_CLEARPBA_S	1
+#define PF_GLINT_DYN_CTL_CLEARPBA_M	BIT(PF_GLINT_DYN_CTL_CLEARPBA_S)
+#define PF_GLINT_DYN_CTL_SWINT_TRIG_S	2
+#define PF_GLINT_DYN_CTL_SWINT_TRIG_M	BIT(PF_GLINT_DYN_CTL_SWINT_TRIG_S)
+#define PF_GLINT_DYN_CTL_ITR_INDX_S	3
+#define PF_GLINT_DYN_CTL_ITR_INDX_M	MAKEMASK(0x3, PF_GLINT_DYN_CTL_ITR_INDX_S)
+#define PF_GLINT_DYN_CTL_INTERVAL_S	5
+#define PF_GLINT_DYN_CTL_INTERVAL_M	BIT(PF_GLINT_DYN_CTL_INTERVAL_S)
+#define PF_GLINT_DYN_CTL_SW_ITR_INDX_ENA_S	24
+#define PF_GLINT_DYN_CTL_SW_ITR_INDX_ENA_M BIT(PF_GLINT_DYN_CTL_SW_ITR_INDX_ENA_S)
+#define PF_GLINT_DYN_CTL_SW_ITR_INDX_S	25
+#define PF_GLINT_DYN_CTL_SW_ITR_INDX_M	BIT(PF_GLINT_DYN_CTL_SW_ITR_INDX_S)
+#define PF_GLINT_DYN_CTL_WB_ON_ITR_S	30
+#define PF_GLINT_DYN_CTL_WB_ON_ITR_M	BIT(PF_GLINT_DYN_CTL_WB_ON_ITR_S)
+#define PF_GLINT_DYN_CTL_INTENA_MSK_S	31
+#define PF_GLINT_DYN_CTL_INTENA_MSK_M	BIT(PF_GLINT_DYN_CTL_INTENA_MSK_S)
+#define PF_GLINT_ITR_V2(_i, _reg_start) (((_i) * 4) + (_reg_start))
+#define PF_GLINT_ITR(_i, _INT) (PF_GLINT_BASE + (((_i) + 1) * 4) + ((_INT) * 0x1000))
+#define PF_GLINT_ITR_MAX_INDEX		2
+#define PF_GLINT_ITR_INTERVAL_S		0
+#define PF_GLINT_ITR_INTERVAL_M		MAKEMASK(0xFFF, PF_GLINT_ITR_INTERVAL_S)
+
+/* Timesync registers */
+#define PF_TIMESYNC_BASE		0x08404000
+#define PF_GLTSYN_CMD_SYNC		(PF_TIMESYNC_BASE)
+#define PF_GLTSYN_CMD_SYNC_EXEC_CMD_S	0
+#define PF_GLTSYN_CMD_SYNC_EXEC_CMD_M	MAKEMASK(0x3, PF_GLTSYN_CMD_SYNC_EXEC_CMD_S)
+#define PF_GLTSYN_CMD_SYNC_SHTIME_EN_S	2
+#define PF_GLTSYN_CMD_SYNC_SHTIME_EN_M	BIT(PF_GLTSYN_CMD_SYNC_SHTIME_EN_S)
+#define PF_GLTSYN_SHTIME_0		(PF_TIMESYNC_BASE + 0x4)
+#define PF_GLTSYN_SHTIME_L		(PF_TIMESYNC_BASE + 0x8)
+#define PF_GLTSYN_SHTIME_H		(PF_TIMESYNC_BASE + 0xC)
+#define PF_GLTSYN_ART_L			(PF_TIMESYNC_BASE + 0x10)
+#define PF_GLTSYN_ART_H			(PF_TIMESYNC_BASE + 0x14)
+
+/* Generic registers */
+#define PF_INT_DIR_OICR_ENA		0x08406000
+#define PF_INT_DIR_OICR_ENA_S		0
+#define PF_INT_DIR_OICR_ENA_M	MAKEMASK(0xFFFFFFFF, PF_INT_DIR_OICR_ENA_S)
+#define PF_INT_DIR_OICR			0x08406004
+#define PF_INT_DIR_OICR_TSYN_EVNT	0
+#define PF_INT_DIR_OICR_PHY_TS_0	BIT(1)
+#define PF_INT_DIR_OICR_PHY_TS_1	BIT(2)
+#define PF_INT_DIR_OICR_CAUSE		0x08406008
+#define PF_INT_DIR_OICR_CAUSE_CAUSE_S	0
+#define PF_INT_DIR_OICR_CAUSE_CAUSE_M	MAKEMASK(0xFFFFFFFF, PF_INT_DIR_OICR_CAUSE_CAUSE_S)
+#define PF_INT_PBA_CLEAR		0x0840600C
+
+#define PF_FUNC_RID			0x08406010
+#define PF_FUNC_RID_FUNCTION_NUMBER_S	0
+#define PF_FUNC_RID_FUNCTION_NUMBER_M	MAKEMASK(0x7, PF_FUNC_RID_FUNCTION_NUMBER_S)
+#define PF_FUNC_RID_DEVICE_NUMBER_S	3
+#define PF_FUNC_RID_DEVICE_NUMBER_M	MAKEMASK(0x1F, PF_FUNC_RID_DEVICE_NUMBER_S)
+#define PF_FUNC_RID_BUS_NUMBER_S	8
+#define PF_FUNC_RID_BUS_NUMBER_M	MAKEMASK(0xFF, PF_FUNC_RID_BUS_NUMBER_S)
+
+/* Reset registers */
+#define PFGEN_RTRIG			0x08407000
+#define PFGEN_RTRIG_CORER_S		0
+#define PFGEN_RTRIG_CORER_M		BIT(0)
+#define PFGEN_RTRIG_LINKR_S		1
+#define PFGEN_RTRIG_LINKR_M		BIT(1)
+#define PFGEN_RTRIG_IMCR_S		2
+#define PFGEN_RTRIG_IMCR_M		BIT(2)
+#define PFGEN_RSTAT			0x08407008 /* PFR Status */
+#define PFGEN_RSTAT_PFR_STATE_S		0
+#define PFGEN_RSTAT_PFR_STATE_M		MAKEMASK(0x3, PFGEN_RSTAT_PFR_STATE_S)
+#define PFGEN_CTRL			0x0840700C
+#define PFGEN_CTRL_PFSWR		BIT(0)
+
+#endif
-- 
2.33.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E53779DA19
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 22:33:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96F6C41B77;
	Tue, 12 Sep 2023 20:33:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96F6C41B77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694550819;
	bh=es6TpS/IQ/OlodLJoNKeAEsseZnSfGwvtnry1wyQGZE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s/MRcKcPiMP1Bcs00pFwr6xBp4/DL6giC4lFRc+e3xFrPRmaOtNYSu/qUMxrmW2i0
	 wiG1agIMUbTbXd+RU3jgfjH/1QKe7NFrXKhb8ELNekuNl9DCzbUUhKk6vlB7WnnF+6
	 ieuJ3XBSZQDA+64nqh1nhI1UCW+xlcNHlEPDlQWOlNWJMJBl1/lY28iOUGGoDElU0J
	 G9K4zX3C/7H8Q56NUdyxHWxafVbj1u58BEB9q7TqUSzgjrkcjwjmMaWXBnmRtvkDw3
	 I6ANm4hCxReX6V4wFhA1jAEdIjqfNfvJjZD40JT6qHUipLVo3xcYgyP8BQhwrAdiUV
	 NC2Bf9fFD4qKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r5gcnRtdFUic; Tue, 12 Sep 2023 20:33:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 223FA41B56;
	Tue, 12 Sep 2023 20:33:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 223FA41B56
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A7811BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C41B820FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:33:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C41B820FA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TMpg2PbOgzc7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 20:33:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D523820FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:33:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D523820FD
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="368753703"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="368753703"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 13:33:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="778942014"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="778942014"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by orsmga001.jf.intel.com with ESMTP; 12 Sep 2023 13:33:17 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Sep 2023 13:31:36 -0700
Message-Id: <20230912203149.1728261-3-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230912203149.1728261-1-pavan.kumar.linga@intel.com>
References: <20230912203149.1728261-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694550806; x=1726086806;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uy6XrwgSaXHfyukVIX3OGYA9bs3940spE7FkBgMDknA=;
 b=WTF/npX7E6yyoLylp+/WVqrR4vpXix+Bu2AOfinrbvkaIxEqqcesDvum
 jF5pxnYSAIoM36x1TQ4T4IKQbKbhEmz6ld7WTE1j3S/ydE4LFgrNoXidR
 KB/8c8r7SYNPc5zx7IORkkV+JxCT4Rdi5tiMk7ANdZ5HZMcBlfFiSXR93
 focTxra9M7ahY3qRxsENxsEQFpkCWUB6jGPjUzrsmGvXuCiBW6xOQI8e8
 OxvR2ydE3IX3PXfrvOb0zaxWqG5Wow+e0ZcNKMal15Dzojh17sVcAZihp
 blkcoLtCVP6/h1XIW5zzV0+GCbktyUsO2CUnK01HDVBQd51hTJDGWptEM
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WTF/npX7
Subject: [Intel-wired-lan] [PATCH iwl-next v11 02/15] idpf: add module
 register and probe functionality
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
 Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Phani Burra <phani.r.burra@intel.com>

Add the required support to register IDPF PCI driver, as well as
probe and remove call backs. Enable the PCI device and request
the kernel to reserve the memory resources that will be used by the
driver. Finally map the BAR0 address space.

Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Co-developed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/Makefile      |   9 ++
 drivers/net/ethernet/intel/idpf/idpf.h        |  28 ++++
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  14 ++
 drivers/net/ethernet/intel/idpf/idpf_devids.h |  10 ++
 drivers/net/ethernet/intel/idpf/idpf_main.c   | 132 ++++++++++++++++++
 5 files changed, 193 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c

diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
new file mode 100644
index 000000000000..73173bde98b1
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2023 Intel Corporation
+
+# Makefile for Intel(R) Infrastructure Data Path Function Linux Driver
+
+obj-$(CONFIG_IDPF) += idpf.o
+
+idpf-y := \
+	idpf_main.o
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
new file mode 100644
index 000000000000..0f494396d68f
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -0,0 +1,28 @@
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
+/**
+ * struct idpf_adapter - Device data struct generated on probe
+ * @pdev: PCI device struct given on probe
+ * @msg_enable: Debug message level enabled
+ * @hw: Device access data
+ */
+struct idpf_adapter {
+	struct pci_dev *pdev;
+	u32 msg_enable;
+	struct idpf_hw hw;
+};
+
+#endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.h b/drivers/net/ethernet/intel/idpf/idpf_controlq.h
new file mode 100644
index 000000000000..11388834cf64
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
+	struct idpf_adapter *back;
+};
+
+#endif /* _IDPF_CONTROLQ_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_devids.h b/drivers/net/ethernet/intel/idpf/idpf_devids.h
new file mode 100644
index 000000000000..5154a52ae61c
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_devids.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _IDPF_DEVIDS_H_
+#define _IDPF_DEVIDS_H_
+
+#define IDPF_DEV_ID_PF			0x1452
+#define IDPF_DEV_ID_VF			0x145C
+
+#endif /* _IDPF_DEVIDS_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
new file mode 100644
index 000000000000..307a08549a76
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -0,0 +1,132 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "idpf.h"
+#include "idpf_devids.h"
+
+#define DRV_SUMMARY	"Intel(R) Infrastructure Data Path Function Linux Driver"
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
+ * idpf_probe - Device initialization routine
+ * @pdev: PCI device information struct
+ * @ent: entry in idpf_pci_tbl
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
+{
+	struct device *dev = &pdev->dev;
+	struct idpf_adapter *adapter;
+	int err;
+
+	adapter = kzalloc(sizeof(*adapter), GFP_KERNEL);
+	if (!adapter)
+		return -ENOMEM;
+	adapter->pdev = pdev;
+
+	err = pcim_enable_device(pdev);
+	if (err)
+		goto err_free;
+
+	err = pcim_iomap_regions(pdev, BIT(0), pci_name(pdev));
+	if (err) {
+		pci_err(pdev, "pcim_iomap_regions failed %pe\n", ERR_PTR(err));
+
+		goto err_free;
+	}
+
+	/* set up for high or low dma */
+	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
+	if (err) {
+		pci_err(pdev, "DMA configuration failed: %pe\n", ERR_PTR(err));
+
+		goto err_free;
+	}
+
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
+		goto err_free;
+	}
+
+	return 0;
+
+err_free:
+	kfree(adapter);
+	return err;
+}
+
+/* idpf_pci_tbl - PCI Dev idpf ID Table
+ */
+static const struct pci_device_id idpf_pci_tbl[] = {
+	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_PF)},
+	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_VF)},
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
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

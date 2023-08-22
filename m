Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C387878462E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 17:50:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6115C40BDF;
	Tue, 22 Aug 2023 15:49:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6115C40BDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692719399;
	bh=9dtQ4XP1MpwKyfMcalBFAWLTSX8awjeQ01ssPB4FZSQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ryNUl/NU/Airhz0X8IjZMLGH7OsOJHaP7qTP8CBgwR4QHYoGnlnHwZuOiVSwyItsx
	 hT75HaKC+BeuuRZRTdlCaqJ8pWHOE/koYJWnr0JAtcUVaprmIk3Ty7joJ3IkkQLmIM
	 ygNfh8juwdXjP3psUU7Tg7g/o6KwX7g49vTrl+xIVgDqojKixUMuCjYjMLHjDGhE67
	 cpOvUGTRabqxjXqUNMUnmuqr8WUnPQGemFZp50hWdmQorvVULPUs1pVO8U52Dm/NuD
	 ZrBb+hJ7Ag+4Pz/woj03t5j/aDOVPKLssk2BUwqR0Z4Ou5ijweeOVvTHyo/psRZNWB
	 hEDrIyn2l2EnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J4dCGJii5Xww; Tue, 22 Aug 2023 15:49:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE25540BCC;
	Tue, 22 Aug 2023 15:49:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE25540BCC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B1E11BF344
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 03:35:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D2C560E4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 03:35:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D2C560E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DGT5xsU3VKWe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 03:35:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6275560B71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 03:35:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6275560B71
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="373738219"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="373738219"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 20:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="739149356"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="739149356"
Received: from dpdk-wuwenjun-icelake-ii.sh.intel.com ([10.67.110.152])
 by fmsmga007.fm.intel.com with ESMTP; 21 Aug 2023 20:35:33 -0700
From: Wenjun Wu <wenjun1.wu@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Tue, 22 Aug 2023 11:40:01 +0800
Message-Id: <20230822034003.31628-4-wenjun1.wu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230822034003.31628-1-wenjun1.wu@intel.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 22 Aug 2023 15:49:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692675335; x=1724211335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r2KlngXOvw/4d7xldPjwHVLfP88ZSwnG8lWgyTfMXSE=;
 b=Za22QCTNK5GlCd5sIQoSPeLXyzCF7mAZAf2D7Ie4PHBe/iKrA+jNwG8A
 Zkq+uOhsiCCgRxU55wsk4pubIcWGhO6lj5jnsy/HnOnDM3FFzL41jl9s1
 LHONFiKrg2yb3Fj/s3HbUaT46hVMa0z5jxkczH5qUUZYKfgT/Vq66de9s
 8orTzAuGkY7oGRXCoqPlA/TP9mnOW7oOxPwfDuFVi23Dn0tgbuQsu3D7D
 4DaphNjzgHcDDduQvjtEZ/R/IvoZQ2uNJtDxNKUocmr3O4KzNoejJswMy
 1bSyskB9xM/oBQT8vbBFOl5tnnpfURXAvmVdj+LPJOaUPBFEggJeVYy+g
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Za22QCTN
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/5] iavf: Add devlink and
 devlink port support
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
Cc: anthony.l.nguyen@intel.com, qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jun Zhang <xuejun.zhang@intel.com>

To allow user to configure queue bandwidth, devlink port support
is added to support devlink port rate API.

Add devlink framework registration/unregistration on iavf driver
initialization and remove, and devlink port of DEVLINK_PORT_FLAVOUR_VIRTUAL
is created to be associated iavf net device.

Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
---
 drivers/net/ethernet/intel/Kconfig            |  1 +
 drivers/net/ethernet/intel/iavf/Makefile      |  2 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |  5 +
 .../net/ethernet/intel/iavf/iavf_devlink.c    | 94 +++++++++++++++++++
 .../net/ethernet/intel/iavf/iavf_devlink.h    | 16 ++++
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 17 ++++
 6 files changed, 134 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.h

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 9bc0a9519899..f916b8ef6acb 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -256,6 +256,7 @@ config I40EVF
 	tristate "Intel(R) Ethernet Adaptive Virtual Function support"
 	select IAVF
 	depends on PCI_MSI
+	select NET_DEVLINK
 	help
 	  This driver supports virtual functions for Intel XL710,
 	  X710, X722, XXV710, and all devices advertising support for
diff --git a/drivers/net/ethernet/intel/iavf/Makefile b/drivers/net/ethernet/intel/iavf/Makefile
index 9c3e45c54d01..b5d7db97ab8b 100644
--- a/drivers/net/ethernet/intel/iavf/Makefile
+++ b/drivers/net/ethernet/intel/iavf/Makefile
@@ -12,5 +12,5 @@ subdir-ccflags-y += -I$(src)
 obj-$(CONFIG_IAVF) += iavf.o
 
 iavf-objs := iavf_main.o iavf_ethtool.o iavf_virtchnl.o iavf_fdir.o \
-	     iavf_adv_rss.o \
+	     iavf_adv_rss.o iavf_devlink.o \
 	     iavf_txrx.o iavf_common.o iavf_adminq.o iavf_client.o
diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 85fba85fbb23..72a68061e396 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -33,9 +33,11 @@
 #include <net/udp.h>
 #include <net/tc_act/tc_gact.h>
 #include <net/tc_act/tc_mirred.h>
+#include <net/devlink.h>
 
 #include "iavf_type.h"
 #include <linux/avf/virtchnl.h>
+#include "iavf_devlink.h"
 #include "iavf_txrx.h"
 #include "iavf_fdir.h"
 #include "iavf_adv_rss.h"
@@ -369,6 +371,9 @@ struct iavf_adapter {
 	struct net_device *netdev;
 	struct pci_dev *pdev;
 
+	struct devlink *devlink;
+	struct devlink_port devlink_port;
+
 	struct iavf_hw hw; /* defined in iavf_type.h */
 
 	enum iavf_state_t state;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_devlink.c b/drivers/net/ethernet/intel/iavf/iavf_devlink.c
new file mode 100644
index 000000000000..1cace56e3f56
--- /dev/null
+++ b/drivers/net/ethernet/intel/iavf/iavf_devlink.c
@@ -0,0 +1,94 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "iavf.h"
+#include "iavf_devlink.h"
+
+static const struct devlink_ops iavf_devlink_ops = {};
+
+/**
+ * iavf_devlink_register - Register devlink interface for this VF adapter
+ * @adapter: the iavf adapter to register the devlink for.
+ *
+ * Allocate a devlinkin instance for this VF, and register the devlink
+ * instance associated with this VF adapter
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int iavf_devlink_register(struct iavf_adapter *adapter)
+{
+	struct device *dev = &adapter->pdev->dev;
+	struct iavf_devlink *ref;
+	struct devlink *devlink;
+
+	devlink = devlink_alloc(&iavf_devlink_ops, sizeof(struct iavf_devlink),
+				dev);
+	adapter->devlink = devlink;
+	if (!devlink)
+		return -ENOMEM;
+
+	ref = devlink_priv(devlink);
+	ref->devlink_ref = adapter;
+
+	devlink_register(devlink);
+
+	return 0;
+}
+
+/**
+ * iavf_devlink_unregister - Unregister devlink resources for iavf adapter.
+ * @adapter: the iavf adapter structure
+ *
+ * Releases resources used by devlink and cleans up associated memory.
+ */
+void iavf_devlink_unregister(struct iavf_adapter *adapter)
+{
+	if (!adapter->devlink)
+		return;
+
+	devlink_unregister(adapter->devlink);
+	devlink_free(adapter->devlink);
+}
+
+/**
+ * iavf_devlink_port_register - Register devlink port for iavf adapter
+ * @adapter: the iavf adapter to register the devlink port for.
+ *
+ * Register the devlink port instance associated with this iavf adapter
+ * before iavf adapter registers with netdevice
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int iavf_devlink_port_register(struct iavf_adapter *adapter)
+{
+	struct device *dev = &adapter->pdev->dev;
+	struct devlink_port_attrs attrs = {};
+	int err;
+
+	SET_NETDEV_DEVLINK_PORT(adapter->netdev, &adapter->devlink_port);
+	attrs.flavour = DEVLINK_PORT_FLAVOUR_VIRTUAL;
+	memset(&adapter->devlink_port, 0, sizeof(adapter->devlink_port));
+	devlink_port_attrs_set(&adapter->devlink_port, &attrs);
+
+	/* Register with driver specific index (device id) */
+	err = devlink_port_register(adapter->devlink, &adapter->devlink_port,
+				    adapter->hw.bus.device);
+	if (err)
+		dev_err(dev, "devlink port registration failed: %d\n", err);
+
+	return err;
+}
+
+/**
+ * iavf_devlink_port_unregister - Unregister devlink port for iavf adapter.
+ * @adapter: the iavf adapter structure
+ *
+ * Releases resources used by devlink port and registration with devlink.
+ */
+void iavf_devlink_port_unregister(struct iavf_adapter *adapter)
+{
+	if (!adapter->devlink_port.registered)
+		return;
+
+	devlink_port_unregister(&adapter->devlink_port);
+}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_devlink.h b/drivers/net/ethernet/intel/iavf/iavf_devlink.h
new file mode 100644
index 000000000000..65e453bbd1a8
--- /dev/null
+++ b/drivers/net/ethernet/intel/iavf/iavf_devlink.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _IAVF_DEVLINK_H_
+#define _IAVF_DEVLINK_H_
+
+struct iavf_devlink {
+	struct iavf_adapter *devlink_ref;	/* ref to iavf adapter */
+};
+
+int iavf_devlink_register(struct iavf_adapter *adapter);
+void iavf_devlink_unregister(struct iavf_adapter *adapter);
+int iavf_devlink_port_register(struct iavf_adapter *adapter);
+void iavf_devlink_port_unregister(struct iavf_adapter *adapter);
+
+#endif /* _IAVF_DEVLINK_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index b23ca9d80189..3a93d0cac60c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2038,6 +2038,7 @@ static void iavf_finish_config(struct work_struct *work)
 				iavf_free_rss(adapter);
 				iavf_free_misc_irq(adapter);
 				iavf_reset_interrupt_capability(adapter);
+				iavf_devlink_port_unregister(adapter);
 				iavf_change_state(adapter,
 						  __IAVF_INIT_CONFIG_ADAPTER);
 				goto out;
@@ -2709,6 +2710,9 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 	if (err)
 		goto err_sw_init;
 
+	if (!adapter->netdev_registered)
+		iavf_devlink_port_register(adapter);
+
 	netif_carrier_off(netdev);
 	adapter->link_up = false;
 	netif_tx_stop_all_queues(netdev);
@@ -2750,6 +2754,7 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 err_mem:
 	iavf_free_rss(adapter);
 	iavf_free_misc_irq(adapter);
+	iavf_devlink_port_unregister(adapter);
 err_sw_init:
 	iavf_reset_interrupt_capability(adapter);
 err:
@@ -4960,6 +4965,13 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw->bus.func = PCI_FUNC(pdev->devfn);
 	hw->bus.bus_id = pdev->bus->number;
 
+	/* Register iavf adapter with devlink */
+	err = iavf_devlink_register(adapter);
+	if (err) {
+		dev_err(&pdev->dev, "devlink registration failed: %d\n", err);
+		goto err_devlink_reg;
+	}
+
 	/* set up the locks for the AQ, do this only once in probe
 	 * and destroy them only once in remove
 	 */
@@ -4998,6 +5010,8 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	return 0;
 
+err_devlink_reg:
+	iounmap(hw->hw_addr);
 err_ioremap:
 	destroy_workqueue(adapter->wq);
 err_alloc_wq:
@@ -5140,6 +5154,9 @@ static void iavf_remove(struct pci_dev *pdev)
 				 err);
 	}
 
+	iavf_devlink_port_unregister(adapter);
+	iavf_devlink_unregister(adapter);
+
 	mutex_lock(&adapter->crit_lock);
 	dev_info(&adapter->pdev->dev, "Removing device\n");
 	iavf_change_state(adapter, __IAVF_REMOVE);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

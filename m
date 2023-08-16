Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E23177E46D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 16:59:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C48C142070;
	Wed, 16 Aug 2023 14:59:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C48C142070
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692197959;
	bh=WL3cky8w3kZ3CdItRjWy74/0RmKUJHSNwLwFwxI4Bk4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hy2mM/dRH9jQCsJqR8Dg75xCL0GI1RDCx5HL4/HEiOEYINkPzm+voDAoy9ucp1Ici
	 botv4E7HBahQDcvBAgZ2HI32UoGON95GXeGvV1yoMvzdVyXXNwZHY1FYP7fYQ3z+50
	 y2kjJNXB3RDkEVHFFqOdzeCP73eg7ZoUG7FLlqPDKax6eyjgZXzJ/8mUrABWL8G3Jm
	 kYa1jTj7Fw95JQyf3GelDj58q2TqtoTGoNFJwqe8kHItswOAOHDbs5ZNc/Gb+DfELd
	 +3xVf9pOHsweJFwEg978zGtg/0B+sLxW/kKnE228qLjl9sCUEp5EGKpkjsK+GqRswd
	 nMr/IwEJkhNfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iaPErzftX1LA; Wed, 16 Aug 2023 14:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C60441888;
	Wed, 16 Aug 2023 14:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C60441888
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB3741BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 03:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A1E43611B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 03:29:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1E43611B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hhEwo22z_ovt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 03:29:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4C7A60B12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 03:29:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4C7A60B12
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372427776"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="372427776"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 20:29:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710958645"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710958645"
Received: from dpdk-wuwenjun-icelake-ii.sh.intel.com ([10.67.110.152])
 by orsmga006.jf.intel.com with ESMTP; 15 Aug 2023 20:29:37 -0700
From: Wenjun Wu <wenjun1.wu@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Wed, 16 Aug 2023 11:33:51 +0800
Message-Id: <20230816033353.94565-4-wenjun1.wu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230816033353.94565-1-wenjun1.wu@intel.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230816033353.94565-1-wenjun1.wu@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 16 Aug 2023 14:58:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692156579; x=1723692579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nrUfx1hcay1fyAatSeoZP2JhVHQ3JzJ49sL2fgGYUIw=;
 b=m1loQpkuKon1R0/s90AXJf+0LU+AMfb+53M4RSjSd7lfz34VJs5zwyj2
 WLkkK2lpMT+6L6V+RhRZ1Xugq1RX4a/GMAIJQpTbp/zWTywBb/mSfFVLd
 XCNcSRMi8Cxpofud0C4D1TTZbEeUI77XJGL5+xYDGcIy1xOXVrahUsTgq
 t2ZizKThbiEysbXlCZ04nlXJC9Nora1RFWP+o8yadwXGM4Bs6oJ3rlHzM
 8H4mRQZQjScFO2ydu19trDAX7bTtJ2tLgHhjCxtq8ZCVmWAwsWVXK0QSq
 krcqlhig/jg4xnA/EJ0VicXvhXbzKyDBs2ulhzX3RvTqrcsWqkAxsmrH2
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m1loQpku
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/5] iavf: Add devlink and
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
 drivers/net/ethernet/intel/iavf/iavf.h        |  6 ++
 .../net/ethernet/intel/iavf/iavf_devlink.c    | 93 +++++++++++++++++++
 .../net/ethernet/intel/iavf/iavf_devlink.h    | 17 ++++
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 14 +++
 6 files changed, 132 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.h

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index d57f70d6e4d4..5bda31c4c652 100644
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
index 85fba85fbb23..eec294b5a426 100644
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
@@ -369,6 +371,10 @@ struct iavf_adapter {
 	struct net_device *netdev;
 	struct pci_dev *pdev;
 
+	/* devlink & port data */
+	struct devlink *devlink;
+	struct devlink_port devlink_port;
+
 	struct iavf_hw hw; /* defined in iavf_type.h */
 
 	enum iavf_state_t state;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_devlink.c b/drivers/net/ethernet/intel/iavf/iavf_devlink.c
new file mode 100644
index 000000000000..991d041e5922
--- /dev/null
+++ b/drivers/net/ethernet/intel/iavf/iavf_devlink.c
@@ -0,0 +1,93 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "iavf.h"
+#include "iavf_devlink.h"
+
+static const struct devlink_ops iavf_devlink_ops = {};
+
+/**
+ * iavf_devlink_register - Register allocated devlink instance for iavf adapter
+ * @adapter: the iavf adapter to register the devlink for.
+ *
+ * Register the devlink instance associated with this iavf adapter
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int iavf_devlink_register(struct iavf_adapter *adapter)
+{
+	struct device *dev = &adapter->pdev->dev;
+	struct iavf_devlink *ref;
+	struct devlink *devlink;
+
+	/* Allocate devlink instance */
+	devlink = devlink_alloc(&iavf_devlink_ops, sizeof(struct iavf_devlink),
+				dev);
+	if (!devlink)
+		return -ENOMEM;
+
+	/* Init iavf adapter devlink */
+	adapter->devlink = devlink;
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
+	/* Create devlink port: attr/port flavour, port index */
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
index 000000000000..5c122278611a
--- /dev/null
+++ b/drivers/net/ethernet/intel/iavf/iavf_devlink.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _IAVF_DEVLINK_H_
+#define _IAVF_DEVLINK_H_
+
+/* iavf devlink structure pointing to iavf adapter */
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
index b23ca9d80189..1fb14f3f1ad0 100644
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
@@ -4996,6 +5001,12 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Setup the wait queue for indicating virtchannel events */
 	init_waitqueue_head(&adapter->vc_waitqueue);
 
+	/* Register iavf adapter with devlink */
+	err = iavf_devlink_register(adapter);
+	if (err)
+		dev_err(&pdev->dev, "devlink registration failed: %d\n", err);
+
+	/* Keep driver interface even on devlink registration failure */
 	return 0;
 
 err_ioremap:
@@ -5140,6 +5151,9 @@ static void iavf_remove(struct pci_dev *pdev)
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

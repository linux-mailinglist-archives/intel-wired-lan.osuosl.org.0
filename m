Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8409BE5A8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 12:38:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E808811E1;
	Wed,  6 Nov 2024 11:38:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZkWHoncncVFY; Wed,  6 Nov 2024 11:38:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA7FF811D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730893082;
	bh=GgGoOjHv6XZ7Cghi3ar5YVDJkwdyrvWMqQrVbVAO7tY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xgjy+o260UARtQC5i4taP5d1o/ODu0D+mAZExpOcSNmVGA9lyAHIfSQx4I83T4YAA
	 dOvcjIp4ne2GQQU7wvx/6P91QlOCisVzLETLGn1yjZGlHOB4hhGMrDtztRsBM65uOh
	 zvYLdCT1h1cDgAJZfqlWl6JCz76GtiJuwphbHrtCghOsG2AwgHbPU1P6v7/V1W1HJV
	 lr/9WOWUIXTx+EqfRntXUl6e4rG6pgo5mI0HGLW0l6xqP/JYTvo0kAzdh49s/bcJx+
	 UYClqcMj0m9RsD8RyMLSShgGwCwxlhPwMEwcfoiv1QYrO5pzUUX8M9P9mKUBocAt+c
	 1yBB1m6WJcBug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA7FF811D6;
	Wed,  6 Nov 2024 11:38:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C47803B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 11:37:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4F54402E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 11:37:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4KzIG217peWS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 11:37:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1C80B40278
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C80B40278
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1C80B40278
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 11:37:54 +0000 (UTC)
X-CSE-ConnectionGUID: ElZkd74cRfGhfBeo1fhpdg==
X-CSE-MsgGUID: jD+OiCTLSp2mzJY+osmX2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30455512"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30455512"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 03:37:54 -0800
X-CSE-ConnectionGUID: QyTh6c/aRSWWOPabYPfk7g==
X-CSE-MsgGUID: id3IjyqXQuaEkZVTpv1Wjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="122020134"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 06 Nov 2024 03:37:51 -0800
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1A7492FC41;
 Wed,  6 Nov 2024 11:37:50 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Sai Krishna <saikrishnag@marvell.com>, Simon Horman <horms@kernel.org>,
 Ahmed Zaki <ahmed.zaki@intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Wed,  6 Nov 2024 12:37:23 -0500
Message-Id: <20241106173731.4272-7-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241106173731.4272-1-mateusz.polchlopek@intel.com>
References: <20241106173731.4272-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730893075; x=1762429075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=229pzVXLKwkguCvxh2ughEZ5vShaq1FPdChVMEe/jy8=;
 b=c74WOAaWyATPJFawNs1Q8VTrJqV/mxtx1eQIp6x/KUeIPI8HIveZsuf9
 BVISzq16qgxFV2POaX+7ZKP/plNQyfrijFEqreCzlKX5jv0Jot4vefHqd
 8iIwpFhNIuOl5t1CHALpjhIDMjngIcK4y3YBXwbuc0JeEegYZmKzBfnvt
 bw/BD1taPF+amhsGnHLvce/6Dmt+nER7W1zVngf3jWe0L7LtpN7su9fxR
 Mu0kq0NkwnyTe/X3MBW7vSXAJh6hqfTNWlMiNSNhxOfqtogVELFMieIOj
 KmN5NVqHhtAWfLikuXq/NJNqByBTdQKfXaCuqYmtjfCaCViVV6xWFgQ/J
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c74WOAaW
Subject: [Intel-wired-lan] [PATCH iwl-next v13 06/14] iavf: add initial
 framework for registering PTP clock
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

From: Jacob Keller <jacob.e.keller@intel.com>

Add the iavf_ptp.c file and fill it in with a skeleton framework to
allow registering the PTP clock device.
Add implementation of helper functions to check if a PTP capability
is supported and handle change in PTP capabilities.
Enabling virtual clock would be possible, though it would probably
perform poorly due to the lack of direct time access.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Sai Krishna <saikrishnag@marvell.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/iavf/Makefile      |   2 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   6 +
 drivers/net/ethernet/intel/iavf/iavf_ptp.c    | 122 ++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h    |  14 ++
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   2 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   8 ++
 7 files changed, 155 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.c

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index bcd82580e994..6b2fe1623c37 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -264,6 +264,7 @@ config I40EVF
 	tristate "Intel(R) Ethernet Adaptive Virtual Function support"
 	select IAVF
 	depends on PCI_MSI
+	depends on PTP_1588_CLOCK_OPTIONAL
 	help
 	  This driver supports virtual functions for Intel XL710,
 	  X710, X722, XXV710, and all devices advertising support for
diff --git a/drivers/net/ethernet/intel/iavf/Makefile b/drivers/net/ethernet/intel/iavf/Makefile
index 356ac9faa5bf..e13720a728ff 100644
--- a/drivers/net/ethernet/intel/iavf/Makefile
+++ b/drivers/net/ethernet/intel/iavf/Makefile
@@ -13,3 +13,5 @@ obj-$(CONFIG_IAVF) += iavf.o
 
 iavf-y := iavf_main.o iavf_ethtool.o iavf_virtchnl.o iavf_fdir.o \
 	  iavf_adv_rss.o iavf_txrx.o iavf_common.o iavf_adminq.o
+
+iavf-$(CONFIG_PTP_1588_CLOCK) += iavf_ptp.o
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3b149bb7d840..be07e9f8e664 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4,6 +4,7 @@
 #include <linux/net/intel/libie/rx.h>
 
 #include "iavf.h"
+#include "iavf_ptp.h"
 #include "iavf_prototype.h"
 /* All iavf tracepoints are defined by the include below, which must
  * be included exactly once across the whole kernel with
@@ -2871,6 +2872,9 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 	if (QOS_ALLOWED(adapter))
 		adapter->aq_required |= IAVF_FLAG_AQ_GET_QOS_CAPS;
 
+	/* Setup initial PTP configuration */
+	iavf_ptp_init(adapter);
+
 	iavf_schedule_finish_config(adapter);
 	return;
 
@@ -5645,6 +5649,8 @@ static void iavf_remove(struct pci_dev *pdev)
 		msleep(50);
 	}
 
+	iavf_ptp_release(adapter);
+
 	iavf_misc_irq_disable(adapter);
 	/* Shut down all the garbage mashers on the detention level */
 	cancel_work_sync(&adapter->reset_task);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
new file mode 100644
index 000000000000..5a1b5f8b87e5
--- /dev/null
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright(c) 2024 Intel Corporation. */
+
+#include "iavf.h"
+#include "iavf_ptp.h"
+
+/**
+ * iavf_ptp_cap_supported - Check if a PTP capability is supported
+ * @adapter: private adapter structure
+ * @cap: the capability bitmask to check
+ *
+ * Return: true if every capability set in cap is also set in the enabled
+ *         capabilities reported by the PF, false otherwise.
+ */
+bool iavf_ptp_cap_supported(const struct iavf_adapter *adapter, u32 cap)
+{
+	if (!IAVF_PTP_ALLOWED(adapter))
+		return false;
+
+	/* Only return true if every bit in cap is set in hw_caps.caps */
+	return (adapter->ptp.hw_caps.caps & cap) == cap;
+}
+
+/**
+ * iavf_ptp_register_clock - Register a new PTP for userspace
+ * @adapter: private adapter structure
+ *
+ * Allocate and register a new PTP clock device if necessary.
+ *
+ * Return: 0 if success, error otherwise.
+ */
+static int iavf_ptp_register_clock(struct iavf_adapter *adapter)
+{
+	struct ptp_clock_info *ptp_info = &adapter->ptp.info;
+	struct device *dev = &adapter->pdev->dev;
+	struct ptp_clock *clock;
+
+	snprintf(ptp_info->name, sizeof(ptp_info->name), "%s-%s-clk",
+		 KBUILD_MODNAME, dev_name(dev));
+	ptp_info->owner = THIS_MODULE;
+
+	clock = ptp_clock_register(ptp_info, dev);
+	if (IS_ERR(clock))
+		return PTR_ERR(clock);
+
+	adapter->ptp.clock = clock;
+
+	dev_dbg(&adapter->pdev->dev, "PTP clock %s registered\n",
+		adapter->ptp.info.name);
+
+	return 0;
+}
+
+/**
+ * iavf_ptp_init - Initialize PTP support if capability was negotiated
+ * @adapter: private adapter structure
+ *
+ * Initialize PTP functionality, based on the capabilities that the PF has
+ * enabled for this VF.
+ */
+void iavf_ptp_init(struct iavf_adapter *adapter)
+{
+	int err;
+
+	if (!iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_READ_PHC)) {
+		pci_notice(adapter->pdev,
+			   "Device does not have PTP clock support\n");
+		return;
+	}
+
+	err = iavf_ptp_register_clock(adapter);
+	if (err) {
+		pci_err(adapter->pdev,
+			"Failed to register PTP clock device (%p)\n",
+			ERR_PTR(err));
+		return;
+	}
+
+	for (int i = 0; i < adapter->num_active_queues; i++) {
+		struct iavf_ring *rx_ring = &adapter->rx_rings[i];
+
+		rx_ring->ptp = &adapter->ptp;
+	}
+}
+
+/**
+ * iavf_ptp_release - Disable PTP support
+ * @adapter: private adapter structure
+ *
+ * Release all PTP resources that were previously initialized.
+ */
+void iavf_ptp_release(struct iavf_adapter *adapter)
+{
+	if (!adapter->ptp.clock)
+		return;
+
+	pci_dbg(adapter->pdev, "removing PTP clock %s\n",
+		adapter->ptp.info.name);
+	ptp_clock_unregister(adapter->ptp.clock);
+	adapter->ptp.clock = NULL;
+}
+
+/**
+ * iavf_ptp_process_caps - Handle change in PTP capabilities
+ * @adapter: private adapter structure
+ *
+ * Handle any state changes necessary due to change in PTP capabilities, such
+ * as after a device reset or change in configuration from the PF.
+ */
+void iavf_ptp_process_caps(struct iavf_adapter *adapter)
+{
+	bool phc = iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_READ_PHC);
+
+	/* Check if the device gained or lost necessary access to support the
+	 * PTP hardware clock. If so, driver must respond appropriately by
+	 * creating or destroying the PTP clock device.
+	 */
+	if (adapter->ptp.clock && !phc)
+		iavf_ptp_release(adapter);
+	else if (!adapter->ptp.clock && phc)
+		iavf_ptp_init(adapter);
+}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
index 65678e76c34f..b63aea323f86 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
@@ -6,4 +6,18 @@
 
 #include "iavf_types.h"
 
+#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
+void iavf_ptp_init(struct iavf_adapter *adapter);
+void iavf_ptp_release(struct iavf_adapter *adapter);
+void iavf_ptp_process_caps(struct iavf_adapter *adapter);
+bool iavf_ptp_cap_supported(const struct iavf_adapter *adapter, u32 cap);
+#else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
+static inline void iavf_ptp_init(struct iavf_adapter *adapter) { }
+static inline void iavf_ptp_release(struct iavf_adapter *adapter) { }
+static inline void iavf_ptp_process_caps(struct iavf_adapter *adapter) { }
+static inline bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap)
+{
+	return false;
+}
+#endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 #endif /* _IAVF_PTP_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 15a05e30434d..c38b4ec2eaea 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -297,6 +297,8 @@ struct iavf_ring {
 					 * for this ring.
 					 */
 
+	struct iavf_ptp *ptp;
+
 	u32 rx_buf_len;
 	struct net_shaper q_shaper;
 	bool q_shaper_update;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 65b0028bb968..d009171e5f8a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -4,6 +4,7 @@
 #include <linux/net/intel/libie/rx.h>
 
 #include "iavf.h"
+#include "iavf_ptp.h"
 #include "iavf_prototype.h"
 
 /**
@@ -359,6 +360,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 	int pairs = adapter->num_active_queues;
 	struct virtchnl_queue_pair_info *vqpi;
 	u32 i, max_frame;
+	u8 rx_flags = 0;
 	size_t len;
 
 	max_frame = LIBIE_MAX_RX_FRM_LEN(adapter->rx_rings->pp->p.offset);
@@ -376,6 +378,9 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 	if (!vqci)
 		return;
 
+	if (iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP))
+		rx_flags |= VIRTCHNL_PTP_RX_TSTAMP;
+
 	vqci->vsi_id = adapter->vsi_res->vsi_id;
 	vqci->num_queue_pairs = pairs;
 	vqpi = vqci->qpair;
@@ -398,6 +403,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 		if (CRC_OFFLOAD_ALLOWED(adapter))
 			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
 						   NETIF_F_RXFCS);
+		vqpi->rxq.flags = rx_flags;
 		vqpi++;
 	}
 
@@ -2608,6 +2614,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 		adapter->ptp.hw_caps = *(struct virtchnl_ptp_caps *)msg;
 
+		/* process any state change needed due to new capabilities */
+		iavf_ptp_process_caps(adapter);
 		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
 		/* enable transmits */
-- 
2.38.1


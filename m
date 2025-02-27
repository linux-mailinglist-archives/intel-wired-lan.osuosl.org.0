Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44954A47EB3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 14:15:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C91EB610F0;
	Thu, 27 Feb 2025 13:15:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DoSDIOu2mY_p; Thu, 27 Feb 2025 13:15:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DC4061100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740662142;
	bh=D+xCjFEtmEvnq4fnOqjha5ThCSSNpbxyXjXy+4NB0SQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iKAwHNqFB1cc1wlHwEWIjkVWvDd4EdE4M1v0hHPhq6hrMgg1OIAqEwFnztOQfIPSI
	 novXh9sIR9w8DWJI+PVlaaa2Yio8JenMSmaCLsKF9sZFqBc7FBW3uS+3LiTm/FW8x8
	 IesSHa8NvRcr8FuIlWIk9xx1UOUEXqqRWZGxQ54e+GXgt6dsF6Tbfi1L7JNpUNqIiM
	 OW4Ut9shHVL68C4giN3E4fmErn9RT2YdeDBI+8UGzoMyQd8cYCf6ag2RefJC1Tvl6C
	 9UEsuBLcqE+NuXFT+mur00bV6NxGx54V8AwXbQw5eC7inHSpmKGQQdt3KjiMk3zPiM
	 dZIOuJdwgAM0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DC4061100;
	Thu, 27 Feb 2025 13:15:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 14B9E711
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:15:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 047A361099
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:15:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I4RmKbOJ5Hla for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 13:15:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F323C60FF6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F323C60FF6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F323C60FF6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:15:38 +0000 (UTC)
X-CSE-ConnectionGUID: 0ei2B9u8QlW+r/IK7inpFw==
X-CSE-MsgGUID: /A5AqBKVT+qOkczFWG9vDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41252381"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41252381"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 05:15:39 -0800
X-CSE-ConnectionGUID: UnLPnHiwQg+Isee5OPpEmg==
X-CSE-MsgGUID: t+9L/OaxSJKS/6tcgir7xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121151213"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by fmviesa003.fm.intel.com with ESMTP; 27 Feb 2025 05:15:36 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Willem de Bruijn <willemb@google.com>
Date: Thu, 27 Feb 2025 14:13:07 +0100
Message-Id: <20250227131314.2317200-2-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250227131314.2317200-1-milena.olech@intel.com>
References: <20250227131314.2317200-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740662139; x=1772198139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bZxHhzTu8koDNz3vWRGLJLTtWRMpTVXlb5HZRagNYfU=;
 b=dCKRWu5XpzGT66jFIywJqlW5tq3yylWENZn6i7usbQupaCS7N3mnCJai
 ktAcutGytndjC+8ZdZuoKbp/tB29MYZ+BhmqAhG5swDChmWmSTBAZRpwV
 Qcz/7NorHWdUTpjyweOTV601IFEwF1mjpYU3SYlj2nxTbE7TxKi3zWafD
 S4DAGWsX4YOo4HbC27T5TsjAWlIUbhbO4liGt2YTo7GbLTsMC863Qgrjt
 jCdJioLrSMlA6oPhiMLJwsOn89tfG2ECHpdJqwvb6hkPhegWgv7bpZKpf
 JWcylcGfthiJHwlJzDUY+Z8NV0gdcehJada5H8GbqhRmMdJF+TVF4H9Hl
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dCKRWu5X
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 01/10] idpf: add initial PTP
 support
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

PTP feature is supported if the VIRTCHNL2_CAP_PTP is negotiated during the
capabilities recognition. Initial PTP support includes PTP initialization
and registration of the clock.

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Reviewed-by: Willem de Bruijn <willemb@google.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
---
 drivers/net/ethernet/intel/idpf/Kconfig       |  1 +
 drivers/net/ethernet/intel/idpf/Makefile      |  1 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  3 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  4 +
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 89 +++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    | 32 +++++++
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  9 +-
 7 files changed, 138 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.h

diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
index 1addd663acad..2c359a8551c7 100644
--- a/drivers/net/ethernet/intel/idpf/Kconfig
+++ b/drivers/net/ethernet/intel/idpf/Kconfig
@@ -4,6 +4,7 @@
 config IDPF
 	tristate "Intel(R) Infrastructure Data Path Function Support"
 	depends on PCI_MSI
+	depends on PTP_1588_CLOCK_OPTIONAL
 	select DIMLIB
 	select LIBETH
 	help
diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
index 2ce01a0b5898..1f38a9d7125c 100644
--- a/drivers/net/ethernet/intel/idpf/Makefile
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -17,3 +17,4 @@ idpf-y := \
 	idpf_vf_dev.o
 
 idpf-$(CONFIG_IDPF_SINGLEQ)	+= idpf_singleq_txrx.o
+idpf-$(CONFIG_PTP_1588_CLOCK)	+= idpf_ptp.o
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 66544faab710..2e8b14dd9d96 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -530,6 +530,7 @@ struct idpf_vc_xn_manager;
  * @vector_lock: Lock to protect vector distribution
  * @queue_lock: Lock to protect queue distribution
  * @vc_buf_lock: Lock to protect virtchnl buffer
+ * @ptp: Storage for PTP-related data
  */
 struct idpf_adapter {
 	struct pci_dev *pdev;
@@ -587,6 +588,8 @@ struct idpf_adapter {
 	struct mutex vector_lock;
 	struct mutex queue_lock;
 	struct mutex vc_buf_lock;
+
+	struct idpf_ptp *ptp;
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index b6c515d14cbf..60bae3081035 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -163,6 +163,10 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_free;
 	}
 
+	err = pci_enable_ptm(pdev, NULL);
+	if (err)
+		pci_dbg(pdev, "PCIe PTM is not supported by PCIe bus/controller\n");
+
 	/* set up for high or low dma */
 	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
 	if (err) {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
new file mode 100644
index 000000000000..1ac6367f5989
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2024 Intel Corporation */
+
+#include "idpf.h"
+#include "idpf_ptp.h"
+
+/**
+ * idpf_ptp_create_clock - Create PTP clock device for userspace
+ * @adapter: Driver specific private structure
+ *
+ * This function creates a new PTP clock device.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int idpf_ptp_create_clock(const struct idpf_adapter *adapter)
+{
+	struct ptp_clock *clock;
+
+	/* Attempt to register the clock before enabling the hardware. */
+	clock = ptp_clock_register(&adapter->ptp->info,
+				   &adapter->pdev->dev);
+	if (IS_ERR(clock)) {
+		pci_err(adapter->pdev, "PTP clock creation failed: %pe\n", clock);
+		return PTR_ERR(clock);
+	}
+
+	adapter->ptp->clock = clock;
+
+	return 0;
+}
+
+/**
+ * idpf_ptp_init - Initialize PTP hardware clock support
+ * @adapter: Driver specific private structure
+ *
+ * Set up the device for interacting with the PTP hardware clock for all
+ * functions. Function will allocate and register a ptp_clock with the
+ * PTP_1588_CLOCK infrastructure.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+int idpf_ptp_init(struct idpf_adapter *adapter)
+{
+	int err;
+
+	if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_PTP)) {
+		pci_dbg(adapter->pdev, "PTP capability is not detected\n");
+		return -EOPNOTSUPP;
+	}
+
+	adapter->ptp = kzalloc(sizeof(*adapter->ptp), GFP_KERNEL);
+	if (!adapter->ptp)
+		return -ENOMEM;
+
+	/* add a back pointer to adapter */
+	adapter->ptp->adapter = adapter;
+
+	err = idpf_ptp_create_clock(adapter);
+	if (err)
+		goto free_ptp;
+
+	pci_dbg(adapter->pdev, "PTP init successful\n");
+
+	return 0;
+
+free_ptp:
+	kfree(adapter->ptp);
+	adapter->ptp = NULL;
+
+	return err;
+}
+
+/**
+ * idpf_ptp_release - Clear PTP hardware clock support
+ * @adapter: Driver specific private structure
+ */
+void idpf_ptp_release(struct idpf_adapter *adapter)
+{
+	struct idpf_ptp *ptp = adapter->ptp;
+
+	if (!ptp)
+		return;
+
+	if (ptp->clock)
+		ptp_clock_unregister(ptp->clock);
+
+	kfree(ptp);
+	adapter->ptp = NULL;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
new file mode 100644
index 000000000000..d009417bf947
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef _IDPF_PTP_H
+#define _IDPF_PTP_H
+
+#include <linux/ptp_clock_kernel.h>
+
+/**
+ * struct idpf_ptp - PTP parameters
+ * @info: structure defining PTP hardware capabilities
+ * @clock: pointer to registered PTP clock device
+ * @adapter: back pointer to the adapter
+ */
+struct idpf_ptp {
+	struct ptp_clock_info info;
+	struct ptp_clock *clock;
+	struct idpf_adapter *adapter;
+};
+
+#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
+int idpf_ptp_init(struct idpf_adapter *adapter);
+void idpf_ptp_release(struct idpf_adapter *adapter);
+#else /* CONFIG_PTP_1588_CLOCK */
+static inline int idpf_ptp_init(struct idpf_adapter *adapter)
+{
+	return 0;
+}
+
+static inline void idpf_ptp_release(struct idpf_adapter *adapter) { }
+#endif /* CONFIG_PTP_1588_CLOCK */
+#endif /* _IDPF_PTP_H */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 3d2413b8684f..7004289b974c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -5,6 +5,7 @@
 
 #include "idpf.h"
 #include "idpf_virtchnl.h"
+#include "idpf_ptp.h"
 
 #define IDPF_VC_XN_MIN_TIMEOUT_MSEC	2000
 #define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)
@@ -900,7 +901,8 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
 			    VIRTCHNL2_CAP_MACFILTER		|
 			    VIRTCHNL2_CAP_SPLITQ_QSCHED		|
 			    VIRTCHNL2_CAP_PROMISC		|
-			    VIRTCHNL2_CAP_LOOPBACK);
+			    VIRTCHNL2_CAP_LOOPBACK		|
+			    VIRTCHNL2_CAP_PTP);
 
 	xn_params.vc_op = VIRTCHNL2_OP_GET_CAPS;
 	xn_params.send_buf.iov_base = &caps;
@@ -3029,6 +3031,10 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 		goto err_intr_req;
 	}
 
+	err = idpf_ptp_init(adapter);
+	if (err)
+		pci_err(adapter->pdev, "PTP init failed, err=%pe\n", ERR_PTR(err));
+
 	idpf_init_avail_queues(adapter);
 
 	/* Skew the delay for init tasks for each function based on fn number
@@ -3091,6 +3097,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 	if (!remove_in_prog)
 		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
 
+	idpf_ptp_release(adapter);
 	idpf_deinit_task(adapter);
 	idpf_intr_rel(adapter);
 
-- 
2.31.1


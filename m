Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 688F98D199A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 13:34:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FE7940694;
	Tue, 28 May 2024 11:34:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w2bS8Im8510y; Tue, 28 May 2024 11:34:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11E4D4065E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716896046;
	bh=dUyiZfZWa+gCYwQQXe/adr+fQNyBTOyS25VK2UlR8zM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vKvp2RDGC5N8jyCbY0p2tSuv+he+/5zgLhi5g/KqmVVl9DyM6jFjBF/hmmddFQWdz
	 wS3JGCkehGDEWnFm0IbyqjifQ/kmQnxpahJdeBWZOvS1h8nL2Yic7ncAds90y5ucN8
	 CgPE11058W15oYVKnz0gzsMYDvXP3wWv08hiGN+gHscST6scvkrgNOsrXMefo8QGMB
	 c8SilGxV1mBlyRSvM5ngyQ34xyfqYErueTAwR1mKOWwOhts4SO+ncfLMovfhw8CDRv
	 gqq2/kVCQPlm3wxlYx1+3wh4bjCK12rsXvrFHzXeiKusfgFtz82JCojgzaGTsJ+Pxh
	 xEDshE1KzfVuQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11E4D4065E;
	Tue, 28 May 2024 11:34:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B6991D2727
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 11:34:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A331E80C14
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 11:34:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bEC5foe6rkmx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 11:34:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9719680C65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9719680C65
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9719680C65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 11:34:00 +0000 (UTC)
X-CSE-ConnectionGUID: T5Afax9kRtO15HOuI6UrtQ==
X-CSE-MsgGUID: ZWZDqO8FRGaMXWYYMFXnSg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30757366"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="30757366"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:34:00 -0700
X-CSE-ConnectionGUID: yttatqu1R7WDGmgvFJvC2w==
X-CSE-MsgGUID: mnNJrM9uRlaWLYU0jt6Nbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35126684"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 28 May 2024 04:33:57 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D68A227BB5;
 Tue, 28 May 2024 12:33:53 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 07:22:55 -0400
Message-Id: <20240528112301.5374-7-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240528112301.5374-1-mateusz.polchlopek@intel.com>
References: <20240528112301.5374-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716896040; x=1748432040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LPAM7lvw4gHSEeEz0pwIvnbdKDLItLFhI63G5XyJDS0=;
 b=Vh39bwHUVYD7geON1Mt6UDxkS1oWrM9zN/Nr7ALMcfta75UBiJXI62ZU
 i+NSoFKOLVnerGvsiNBt1HVOtnaLjJkx60rzXlk6A3k+BNFd8+L5r1Fj/
 UDv8MlT2qhh/wTsA2XBgKh+p3xNnwRi8YoW0pWKJqmJ5UZcBBBu4JxrW3
 U23pXgoHzqCOfr0spGc1aQwdo2Bku1qNDCyoF+/EO3yRFWWxowm5RVTLt
 QgUgopIboxgevN2KO77VP2qhMfYWHhLMD5/dpf4mri6TqYz9KEqrOV+Sn
 nUjLEScnxRmYvrTvSdxsSNTM4znu1hqoealPyXq7oNYkO1izCOZdScIsP
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vh39bwHU
Subject: [Intel-wired-lan] [PATCH iwl-next v6 06/12] iavf: add initial
 framework for registering PTP clock
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Sai Krishna <saikrishnag@marvell.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
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
Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/Makefile      |   3 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   5 +
 drivers/net/ethernet/intel/iavf/iavf_ptp.c    | 125 ++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h    |  10 ++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +
 5 files changed, 144 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.c

diff --git a/drivers/net/ethernet/intel/iavf/Makefile b/drivers/net/ethernet/intel/iavf/Makefile
index 356ac9faa5bf..364eafe31483 100644
--- a/drivers/net/ethernet/intel/iavf/Makefile
+++ b/drivers/net/ethernet/intel/iavf/Makefile
@@ -12,4 +12,5 @@ subdir-ccflags-y += -I$(src)
 obj-$(CONFIG_IAVF) += iavf.o
 
 iavf-y := iavf_main.o iavf_ethtool.o iavf_virtchnl.o iavf_fdir.o \
-	  iavf_adv_rss.o iavf_txrx.o iavf_common.o iavf_adminq.o
+	  iavf_adv_rss.o iavf_txrx.o iavf_common.o iavf_adminq.o \
+	  iavf_ptp.o
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3464cf8c26a3..439acd792b83 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2848,6 +2848,9 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 		/* request initial VLAN offload settings */
 		iavf_set_vlan_offload_features(adapter, 0, netdev->features);
 
+	/* Setup initial PTP configuration */
+	iavf_ptp_init(adapter);
+
 	iavf_schedule_finish_config(adapter);
 	return;
 
@@ -5335,6 +5338,8 @@ static void iavf_remove(struct pci_dev *pdev)
 		msleep(50);
 	}
 
+	iavf_ptp_release(adapter);
+
 	iavf_misc_irq_disable(adapter);
 	/* Shut down all the garbage mashers on the detention level */
 	cancel_work_sync(&adapter->reset_task);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
new file mode 100644
index 000000000000..84ce98ac9c31
--- /dev/null
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -0,0 +1,125 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright(c) 2024 Intel Corporation. */
+
+#include "iavf.h"
+
+/**
+ * iavf_ptp_cap_supported - Check if a PTP capability is supported
+ * @adapter: private adapter structure
+ * @cap: the capability bitmask to check
+ *
+ * Return: true if every capability set in cap is also set in the enabled
+ *         capabilities reported by the PF, false otherwise.
+ */
+bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap)
+{
+	if (!PTP_ALLOWED(adapter))
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
+ * Return: 0 if success, error otherwise
+ */
+static int iavf_ptp_register_clock(struct iavf_adapter *adapter)
+{
+	struct ptp_clock_info *ptp_info = &adapter->ptp.info;
+	struct device *dev = &adapter->pdev->dev;
+
+	memset(ptp_info, 0, sizeof(*ptp_info));
+
+	snprintf(ptp_info->name, sizeof(ptp_info->name) - 1, "%s-%s-clk",
+		 dev_driver_string(dev),
+		 dev_name(dev));
+	ptp_info->owner = THIS_MODULE;
+
+	adapter->ptp.clock = ptp_clock_register(ptp_info, dev);
+	if (IS_ERR(adapter->ptp.clock))
+		return PTR_ERR(adapter->ptp.clock);
+
+	dev_info(&adapter->pdev->dev, "PTP clock %s registered\n",
+		 adapter->ptp.info.name);
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
+	struct device *dev = &adapter->pdev->dev;
+	int err;
+
+	if (WARN_ON(adapter->ptp.initialized)) {
+		dev_err(dev, "PTP functionality was already initialized!\n");
+		return;
+	}
+
+	if (!iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_READ_PHC)) {
+		dev_dbg(dev, "Device does not have PTP clock support\n");
+		return;
+	}
+
+	err = iavf_ptp_register_clock(adapter);
+	if (err) {
+		dev_warn(dev, "Failed to register PTP clock device (%d)\n",
+			 err);
+		return;
+	}
+
+	adapter->ptp.initialized = true;
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
+	adapter->ptp.initialized = false;
+
+	if (!IS_ERR_OR_NULL(adapter->ptp.clock)) {
+		dev_info(&adapter->pdev->dev, "removing PTP clock %s\n",
+			 adapter->ptp.info.name);
+		ptp_clock_unregister(adapter->ptp.clock);
+		adapter->ptp.clock = NULL;
+	}
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
+	struct device *dev = &adapter->pdev->dev;
+
+	dev_dbg(dev, "PTP capabilities changed at runtime\n");
+
+	/* Check if the device gained or lost necessary access to support the
+	 * PTP hardware clock. If so, driver must respond appropriately by
+	 * creating or destroying the PTP clock device.
+	 */
+	if (adapter->ptp.initialized &&
+	    !iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_READ_PHC))
+		iavf_ptp_release(adapter);
+	else if (!adapter->ptp.initialized &&
+		 iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_READ_PHC))
+		iavf_ptp_init(adapter);
+}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
index aee4e2da0b9a..4939c219bd18 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
@@ -4,9 +4,19 @@
 #ifndef _IAVF_PTP_H_
 #define _IAVF_PTP_H_
 
+#include <linux/ptp_clock_kernel.h>
+
 /* fields used for PTP support */
 struct iavf_ptp {
 	struct virtchnl_ptp_caps hw_caps;
+	bool initialized;
+	struct ptp_clock_info info;
+	struct ptp_clock *clock;
 };
 
+void iavf_ptp_init(struct iavf_adapter *adapter);
+void iavf_ptp_release(struct iavf_adapter *adapter);
+void iavf_ptp_process_caps(struct iavf_adapter *adapter);
+bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap);
+
 #endif /* _IAVF_PTP_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 95b001930a2f..9dbc6ad8babd 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2508,6 +2508,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 	case VIRTCHNL_OP_1588_PTP_GET_CAPS:
 		memcpy(&adapter->ptp.hw_caps, msg,
 		       min_t(u16, msglen, sizeof(adapter->ptp.hw_caps)));
+		/* process any state change needed due to new capabilities */
+		iavf_ptp_process_caps(adapter);
 		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
 		/* enable transmits */
-- 
2.38.1


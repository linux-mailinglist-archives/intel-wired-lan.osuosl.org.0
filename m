Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7AB8970EB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 15:28:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B495A41789;
	Wed,  3 Apr 2024 13:28:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cDJoDLlhlrcm; Wed,  3 Apr 2024 13:28:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA8FD41782
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712150910;
	bh=18jub0+nKrTkbK8S/BxBgmVKkiGA72DctNU0jyVFKNA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jTjHG9NuliYK/jTmmSYBZJvH0JXdF9pnD7MX4QOFtm7AbY5Sr6VUjNgwyWljHC8/r
	 4VPvtzATo6lBY1ZI3KCUO3UUc2yxdZ7cnMLG97OCj74EwTTPsUqWxu2wPT4MeWiKhT
	 mVJnlfE1S2ZWV5bOg1rZ4F9zWCZJ0vWjB3ibGzWQpzQFWBq+3Kr5Fw2PFLzU27sSz2
	 Zq69ZNVy9IKnrqUI/qPYgdlbVeg7KKvYD+ni35P/RGXWC1VWb6fmK0Sh6GzSCx3TzU
	 Eon1zegJFX4n/E2pwX3G7+PPWk7VqDFE73yjErgm+XzxSv9wdaQIZnFITxXsT2A3Sm
	 QnpIt9nlSborg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA8FD41782;
	Wed,  3 Apr 2024 13:28:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3CD971BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3346182142
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eG_K1IyaVRQc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 13:28:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 49AE181FDA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49AE181FDA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 49AE181FDA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:23 +0000 (UTC)
X-CSE-ConnectionGUID: WGCqJZ1CSm+SX6dNhneQFw==
X-CSE-MsgGUID: ebAl6yfWTRizWfmBNxW0DA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7568750"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7568750"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 06:28:23 -0700
X-CSE-ConnectionGUID: ck/RdkR0TtKitnofYe8swg==
X-CSE-MsgGUID: jolGhyRETbybZtRoV95Mjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="41592073"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 03 Apr 2024 06:28:20 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3B19236C19;
 Wed,  3 Apr 2024 14:28:17 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Apr 2024 09:19:21 -0400
Message-Id: <20240403131927.87021-7-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240403131927.87021-1-mateusz.polchlopek@intel.com>
References: <20240403131927.87021-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712150903; x=1743686903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QUbYL7v77LN+ImfuGQ+iGzZCHqeKPXPfr21LoDlBWI0=;
 b=jd7or6wKzN4E2VNU7VZGB1V6Xq12MKcD2D1u+r4x71Pcw9SXBo8Qv18X
 keqb1sR7wE5/0ZUo/fhz/pytmwCJgFzOfaQ4bOMeqSCp8SVCJdag3865R
 fBx6tyc6Ng0XR6ykKJpHtikMqNHQcrU3w1+3gSWo4cRwmAkawoCDaYYGf
 L3SjnRUOXfrD/IPyIwn/p7ZB7Wtos6gugjRiaoMNkuyhhUt2+ad5M+0/f
 VswTMuyX0TQ13m2yjYfv/PbYrXK4yC+VTkU0A4o6/5OsRKVvyP/JNqLNQ
 1cNMAcNq3gv8coQbprjcHDdmN5lpelFzZAIPyvOJg4kAmARSqAMf9VyjW
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jd7or6wK
Subject: [Intel-wired-lan] [PATCH iwl-next v3 06/12] iavf: add initial
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
 anthony.l.nguyen@intel.com, horms@kernel.org,
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

Reviewed-by: Sai Krishna <saikrishnag@marvell.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/Makefile      |   3 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   6 +
 drivers/net/ethernet/intel/iavf/iavf_ptp.c    | 123 ++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h    |  10 ++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +
 5 files changed, 143 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.c

diff --git a/drivers/net/ethernet/intel/iavf/Makefile b/drivers/net/ethernet/intel/iavf/Makefile
index 2d154a4e2fd7..06a5d2752246 100644
--- a/drivers/net/ethernet/intel/iavf/Makefile
+++ b/drivers/net/ethernet/intel/iavf/Makefile
@@ -13,4 +13,5 @@ obj-$(CONFIG_IAVF) += iavf.o
 
 iavf-objs := iavf_main.o iavf_ethtool.o iavf_virtchnl.o iavf_fdir.o \
 	     iavf_adv_rss.o \
-	     iavf_txrx.o iavf_common.o iavf_adminq.o
+	     iavf_txrx.o iavf_common.o iavf_adminq.o \
+	     iavf_ptp.o
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ea2034d7914a..6feabb1c62d1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2875,6 +2875,9 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 		/* request initial VLAN offload settings */
 		iavf_set_vlan_offload_features(adapter, 0, netdev->features);
 
+	/* Setup initial PTP configuration */
+	iavf_ptp_init(adapter);
+
 	iavf_schedule_finish_config(adapter);
 	return;
 
@@ -5331,6 +5334,9 @@ static void iavf_remove(struct pci_dev *pdev)
 	}
 
 	iavf_misc_irq_disable(adapter);
+
+	iavf_ptp_release(adapter);
+
 	/* Shut down all the garbage mashers on the detention level */
 	cancel_work_sync(&adapter->reset_task);
 	cancel_delayed_work_sync(&adapter->watchdog_task);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
new file mode 100644
index 000000000000..0f09d918d269
--- /dev/null
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -0,0 +1,123 @@
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
+ * Return true if every capability set in cap is also set in the enabled
+ * capabilities reported by the PF.
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
+	if (!IS_ERR_OR_NULL(adapter->ptp.clock)) {
+		dev_info(&adapter->pdev->dev, "removing PTP clock %s\n",
+			 adapter->ptp.info.name);
+		ptp_clock_unregister(adapter->ptp.clock);
+		adapter->ptp.clock = NULL;
+	}
+
+	adapter->ptp.initialized = false;
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
index f922e177146d..12ce169699cf 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2511,6 +2511,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
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


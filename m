Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDAC7F2445
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 03:50:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E78A081CD0;
	Tue, 21 Nov 2023 02:50:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E78A081CD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700535032;
	bh=65DcUYcb11qfsEQIlGO6nTPmR0QnbqPyAcB1Jbyy5lU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gs2laLI6u8b1bK1M+AK5EcOgDPkbA7VZVJ+/dZiRjzdDJmNf8RZAgfImjmgWwmlze
	 HYlJWLbmzIIBbgsuJ2DRXMLB2WYtM9qrXDZ+2Hvynky5z+Olxc6MiWTHy4PHSJA0TI
	 eWahLV4lMsf6wMlvnAAA937gMhNqyUMJ0ItfatlgiuVhYDsk2h4OPfgmlFTxhGWWwu
	 sxvV8okf63w7/uqlnoHpWmjB1s8PKkTH5UH7jgqjzNGIus+qQ3ym9SGG/5kxtpGN5o
	 O/OivZbzFjeHIeWFImW4BT8WYURQZX/TZoASHpqQdUECIWyRUXRxEre7n47UunS/nB
	 UAmsDroHtETTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZxRK5Zh9PlTO; Tue, 21 Nov 2023 02:50:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E85B80DB2;
	Tue, 21 Nov 2023 02:50:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E85B80DB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 778F71BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5BC5D8143A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:50:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BC5D8143A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJ4LaGuakbQI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 02:50:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46320813BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:50:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46320813BC
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="458245945"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="458245945"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 18:50:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="832488388"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="832488388"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.85])
 by fmsmga008.fm.intel.com with ESMTP; 20 Nov 2023 18:49:58 -0800
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 02:51:03 +0000
Message-Id: <20231121025111.257597-5-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231121025111.257597-1-yahui.cao@intel.com>
References: <20231121025111.257597-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700535021; x=1732071021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GEBquv8g8svvSh4MvuUqEVBc8Cbfc2Qs0nRwb8PM+JM=;
 b=H1Y/EjXgRxu1hoWwojREr9T3vkkT/AO/hTVANqDkQz7/VaTxD0MmGuwL
 pxj9IiuJ9Gk+G5BhmnwS2M+YNZBup+fg7uEv4bfsfB5LLRPxRE+Hydz/N
 6mUJ90anZJrS9SAzRM5p4VAgqTZcB5hAApuR1KMhJqIajQsh8kQcOGe/S
 D7kYPf5EqmnxTes6vwBiUASwUI6x9kHo2u31xgLajrjFA/X/5RJC9Zk/m
 VE20JQRcRL66D3pKWRf44Byc7mbWVWGClRQrunlkogoyVmFAWvVExE1or
 iEdaskTno+Nf1pAQ/qEvl52xTbufJgs0seVX4xgpftsGbu7iPG5hSXEiw
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H1Y/EjXg
Subject: [Intel-wired-lan] [PATCH iwl-next v4 04/12] ice: Add fundamental
 migration init and exit function
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, sridhar.samudrala@intel.com, edumazet@google.com,
 shameerali.kolothum.thodi@huawei.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, jgg@nvidia.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lingyu Liu <lingyu.liu@intel.com>

Add basic entry point for live migration functionality initialization,
uninitialization and add helper function for vfio driver to reach pf
driver data.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |  1 +
 drivers/net/ethernet/intel/ice/ice.h          |  3 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 15 ++++
 .../net/ethernet/intel/ice/ice_migration.c    | 82 +++++++++++++++++++
 .../intel/ice/ice_migration_private.h         | 21 +++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  4 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  2 +
 include/linux/net/intel/ice_migration.h       | 27 ++++++
 8 files changed, 155 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_migration.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_migration_private.h
 create mode 100644 include/linux/net/intel/ice_migration.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 0679907980f7..c536a9a896c0 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -49,3 +49,4 @@ ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
 ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o ice_eswitch_br.o
 ice-$(CONFIG_GNSS) += ice_gnss.o
+ice-$(CONFIG_ICE_VFIO_PCI) += ice_migration.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 351e0d36df44..13f6ce51985c 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -55,6 +55,7 @@
 #include <net/vxlan.h>
 #include <net/gtp.h>
 #include <linux/ppp_defs.h>
+#include <linux/net/intel/ice_migration.h>
 #include "ice_devids.h"
 #include "ice_type.h"
 #include "ice_txrx.h"
@@ -77,6 +78,7 @@
 #include "ice_gnss.h"
 #include "ice_irq.h"
 #include "ice_dpll.h"
+#include "ice_migration_private.h"
 
 #define ICE_BAR0		0
 #define ICE_REQ_DESC_MULTIPLE	32
@@ -963,6 +965,7 @@ void ice_service_task_schedule(struct ice_pf *pf);
 int ice_load(struct ice_pf *pf);
 void ice_unload(struct ice_pf *pf);
 void ice_adv_lnk_speed_maps_init(void);
+struct ice_pf *ice_get_pf_from_vf_pdev(struct pci_dev *pdev);
 
 /**
  * ice_set_rdma_cap - enable RDMA support
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6607fa6fe556..2daa4d2b1dd1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -9313,3 +9313,18 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_xdp_xmit = ice_xdp_xmit,
 	.ndo_xsk_wakeup = ice_xsk_wakeup,
 };
+
+/**
+ * ice_get_pf_from_vf_pdev - Get PF structure from PCI device
+ * @pdev: pointer to PCI device
+ *
+ * Return pointer to ice PF structure, NULL for failure
+ */
+struct ice_pf *ice_get_pf_from_vf_pdev(struct pci_dev *pdev)
+{
+	struct ice_pf *pf;
+
+	pf = pci_iov_get_pf_drvdata(pdev, &ice_driver);
+
+	return !IS_ERR(pf) ? pf : NULL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
new file mode 100644
index 000000000000..2b9b5a2ce367
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include "ice.h"
+
+/**
+ * ice_migration_get_pf - Get ice PF structure pointer by pdev
+ * @pdev: pointer to ice vfio pci VF pdev structure
+ *
+ * Return nonzero for success, NULL for failure.
+ */
+struct ice_pf *ice_migration_get_pf(struct pci_dev *pdev)
+{
+	return ice_get_pf_from_vf_pdev(pdev);
+}
+EXPORT_SYMBOL(ice_migration_get_pf);
+
+/**
+ * ice_migration_init_vf - init ice VF device state data
+ * @vf: pointer to VF
+ */
+void ice_migration_init_vf(struct ice_vf *vf)
+{
+	vf->migration_enabled = true;
+}
+
+/**
+ * ice_migration_uninit_vf - uninit VF device state data
+ * @vf: pointer to VF
+ */
+void ice_migration_uninit_vf(struct ice_vf *vf)
+{
+	if (!vf->migration_enabled)
+		return;
+
+	vf->migration_enabled = false;
+}
+
+/**
+ * ice_migration_init_dev - init ice migration device
+ * @pf: pointer to PF of migration device
+ * @vf_id: VF index of migration device
+ *
+ * Return 0 for success, negative for failure
+ */
+int ice_migration_init_dev(struct ice_pf *pf, int vf_id)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_vf *vf;
+
+	vf = ice_get_vf_by_id(pf, vf_id);
+	if (!vf) {
+		dev_err(dev, "Unable to locate VF from VF ID%d\n", vf_id);
+		return -EINVAL;
+	}
+
+	ice_migration_init_vf(vf);
+	ice_put_vf(vf);
+	return 0;
+}
+EXPORT_SYMBOL(ice_migration_init_dev);
+
+/**
+ * ice_migration_uninit_dev - uninit ice migration device
+ * @pf: pointer to PF of migration device
+ * @vf_id: VF index of migration device
+ */
+void ice_migration_uninit_dev(struct ice_pf *pf, int vf_id)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_vf *vf;
+
+	vf = ice_get_vf_by_id(pf, vf_id);
+	if (!vf) {
+		dev_err(dev, "Unable to locate VF from VF ID%d\n", vf_id);
+		return;
+	}
+
+	ice_migration_uninit_vf(vf);
+	ice_put_vf(vf);
+}
+EXPORT_SYMBOL(ice_migration_uninit_dev);
diff --git a/drivers/net/ethernet/intel/ice/ice_migration_private.h b/drivers/net/ethernet/intel/ice/ice_migration_private.h
new file mode 100644
index 000000000000..2cc2f515fc5e
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_migration_private.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_MIGRATION_PRIVATE_H_
+#define _ICE_MIGRATION_PRIVATE_H_
+
+/* This header file is for exposing functions in ice_migration.c to
+ * files which will be compiled in ice.ko.
+ * Functions which may be used by other files which will be compiled
+ * in ice-vfio-pic.ko should be exposed as part of ice_migration.h.
+ */
+
+#if IS_ENABLED(CONFIG_ICE_VFIO_PCI)
+void ice_migration_init_vf(struct ice_vf *vf);
+void ice_migration_uninit_vf(struct ice_vf *vf);
+#else
+static inline void ice_migration_init_vf(struct ice_vf *vf) { }
+static inline void ice_migration_uninit_vf(struct ice_vf *vf) { }
+#endif /* CONFIG_ICE_VFIO_PCI */
+
+#endif /* _ICE_MIGRATION_PRIVATE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index aca1f2ea5034..8e571280831e 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -243,6 +243,10 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
 	if (vf->vf_ops->irq_close)
 		vf->vf_ops->irq_close(vf);
 
+	if (vf->migration_enabled) {
+		ice_migration_uninit_vf(vf);
+		ice_migration_init_vf(vf);
+	}
 	ice_vf_clear_counters(vf);
 	vf->vf_ops->clear_reset_trigger(vf);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index c7e7df7baf38..431fd28787e8 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -139,6 +139,8 @@ struct ice_vf {
 	struct devlink_port devlink_port;
 
 	u16 num_msix;			/* num of MSI-X configured on this VF */
+
+	u8 migration_enabled:1;
 };
 
 /* Flags for controlling behavior of ice_reset_vf */
diff --git a/include/linux/net/intel/ice_migration.h b/include/linux/net/intel/ice_migration.h
new file mode 100644
index 000000000000..7ea11a8714d6
--- /dev/null
+++ b/include/linux/net/intel/ice_migration.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_MIGRATION_H_
+#define _ICE_MIGRATION_H_
+
+struct ice_pf;
+
+#if IS_ENABLED(CONFIG_ICE_VFIO_PCI)
+struct ice_pf *ice_migration_get_pf(struct pci_dev *pdev);
+int ice_migration_init_dev(struct ice_pf *pf, int vf_id);
+void ice_migration_uninit_dev(struct ice_pf *pf, int vf_id);
+#else
+static inline struct ice_pf *ice_migration_get_pf(struct pci_dev *pdev)
+{
+	return NULL;
+}
+
+static inline int ice_migration_init_dev(struct ice_pf *pf, int vf_id)
+{
+	return 0;
+}
+
+static inline void ice_migration_uninit_dev(struct ice_pf *pf, int vf_id) { }
+#endif /* CONFIG_ICE_VFIO_PCI */
+
+#endif /* _ICE_MIGRATION_H_ */
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

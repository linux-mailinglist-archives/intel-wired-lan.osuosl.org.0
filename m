Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9045D73689C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:01:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E2FD418C1;
	Tue, 20 Jun 2023 10:01:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E2FD418C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255272;
	bh=XZ/cojvKjnEMVhJGrOKw00aX96gysSxIBzhzyxEUGKI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P2ToWaLTusq1FIXmqhmRvUsHLYr2G2IETntPe4UrFg3eRrNqzeZS3qT0Ae2PUwTl2
	 VJlkIRpnMmRx16NOw16szbm60gRFge3+EZ5ESd1e6U4BpDa/6ys5CEY9LCSiy3s9A4
	 UtevExIryOkrsSaZhAhl05pdWM+FpYF5cEm7WtcDXem/+D6Cx7/vmEKu+EqoxRx7WT
	 wcWMekw4Z6jbIhwTyTbbZyu8QPYwhqa6cwc9DYJjVSfe3yQPTMRlAy6Yt+OPm/j2Y5
	 TDmAAifdjiOGz2ZUOUBgvH3cP/LtcNLMI5xBSTAfDWRSsr+3K5YURTIeZirPhcZDAe
	 GV6n7hOwG8TCQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dmUvncwaMi6I; Tue, 20 Jun 2023 10:01:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61580418E3;
	Tue, 20 Jun 2023 10:01:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61580418E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28B391BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5332A417E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5332A417E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GAoYlnQ839YN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:00:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 144424099D
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 144424099D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688330"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688330"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:00:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664227213"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664227213"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:00:44 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 09:59:50 +0000
Message-Id: <20230620100001.5331-5-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255251; x=1718791251;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vy9dxnkb21pfv262OpRKjI0PRF7SvYaK8IcyYW/Ji2c=;
 b=Q5zjYeC7EeF0r9auVzf1oB0R+vsvd8AdnsI+om2zlUByTNOilw2yYbRU
 RuQc0fgCIXlJXlw2GYJKcH/FZ0NF1EbwTdR9rdAL6gK/avyW4D0Rg1ChN
 ssjWUWrEjupSGCBt6rq7z3mM1134E4OSGAuJQJKI/wEb3ig2xcMl9C/54
 QWU8rwI4EF3iwCmxcy3r4lvV1M5SkT1ShX2eRCjTqcCKgL8NWghOfzTH1
 jxwPp+iJQ/1ZMTVPciEqL0Ql9AzDW1Cvw43SImQQWNIqGw0usA6asA+VZ
 ViNj0P3apY43Z9xlLODEGjEc+14Wz+v/zJBrxeifwshHQHbaVGOFTqybF
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q5zjYeC7
Subject: [Intel-wired-lan] [PATCH iwl-next V1 04/15] ice: add migration init
 field and helper functions
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adds a function to get ice VF device from pci device.
Adds a field in VF structure to indicate migration init state,
and functions to init and uninit migration.

This will be used by ice_vfio_pci driver introduced in coming patches
from this series.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |  1 +
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_migration.c    | 68 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  7 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 +
 include/linux/net/intel/ice_migration.h       | 26 +++++++
 6 files changed, 104 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_migration.c
 create mode 100644 include/linux/net/intel/ice_migration.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 960277d78e09..915b70588f79 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -49,3 +49,4 @@ ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
 ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o ice_eswitch_br.o
 ice-$(CONFIG_GNSS) += ice_gnss.o
+ice-$(CONFIG_ICE_VFIO_PCI) += ice_migration.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 9109006336f0..ec7f27d93924 100644
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
diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
new file mode 100644
index 000000000000..1aadb8577a41
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include "ice.h"
+
+/**
+ * ice_migration_get_vf - Get ice VF structure pointer by pdev
+ * @vf_pdev: pointer to ice vfio pci VF pdev structure
+ *
+ * Return nonzero for success, NULL for failure.
+ *
+ * ice_put_vf() should be called after finishing accessing VF
+ */
+void *ice_migration_get_vf(struct pci_dev *vf_pdev)
+{
+	struct pci_dev *pf_pdev = vf_pdev->physfn;
+	int vf_id = pci_iov_vf_id(vf_pdev);
+	struct ice_pf *pf;
+
+	if (!pf_pdev || vf_id < 0)
+		return NULL;
+
+	pf = pci_get_drvdata(pf_pdev);
+	return ice_get_vf_by_id(pf, vf_id);
+}
+EXPORT_SYMBOL(ice_migration_get_vf);
+
+/**
+ * ice_migration_put_vf - Release a VF reference
+ * @opaque: pointer to VF handler in ice vdev
+ *
+ * This must be called after ice_get_vf_by_id() after the reference
+ * to the VF is no longer used.
+ */
+void ice_migration_put_vf(void *opaque)
+{
+	struct ice_vf *vf = (struct ice_vf *)opaque;
+
+	ice_put_vf(vf);
+}
+EXPORT_SYMBOL(ice_migration_put_vf);
+
+/**
+ * ice_migration_init_vf - Init ice VF device state data
+ * @opaque: pointer to VF handler in ice vdev
+ */
+void ice_migration_init_vf(void *opaque)
+{
+	struct ice_vf *vf = (struct ice_vf *)opaque;
+
+	vf->migration_active = true;
+}
+EXPORT_SYMBOL(ice_migration_init_vf);
+
+/**
+ * ice_migration_uninit_vf - uninit VF device state data
+ * @opaque: pointer to VF handler in ice vdev
+ */
+void ice_migration_uninit_vf(void *opaque)
+{
+	struct ice_vf *vf = (struct ice_vf *)opaque;
+
+	if (!vf->migration_active)
+		return;
+
+	vf->migration_active = false;
+}
+EXPORT_SYMBOL(ice_migration_uninit_vf);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index b26ce4425f45..4b1940487b27 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -56,6 +56,9 @@ static void ice_release_vf(struct kref *ref)
 {
 	struct ice_vf *vf = container_of(ref, struct ice_vf, refcnt);
 
+	if (vf->migration_active)
+		ice_migration_uninit_vf(vf);
+
 	vf->vf_ops->free(vf);
 }
 
@@ -260,6 +263,10 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
 	if (vf->vf_ops->irq_close)
 		vf->vf_ops->irq_close(vf);
 
+	if (vf->migration_active) {
+		ice_migration_uninit_vf(vf);
+		ice_migration_init_vf(vf);
+	}
 	ice_vf_clear_counters(vf);
 	vf->vf_ops->clear_reset_trigger(vf);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 0c8dd7910129..cbff9b5aacd6 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -134,6 +134,7 @@ struct ice_vf {
 
 	/* devlink port data */
 	struct devlink_port devlink_port;
+	bool migration_active;
 };
 
 /* Flags for controlling behavior of ice_reset_vf */
diff --git a/include/linux/net/intel/ice_migration.h b/include/linux/net/intel/ice_migration.h
new file mode 100644
index 000000000000..5f1c765ed582
--- /dev/null
+++ b/include/linux/net/intel/ice_migration.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_MIGRATION_H_
+#define _ICE_MIGRATION_H_
+
+#if IS_ENABLED(CONFIG_ICE_VFIO_PCI)
+void *ice_migration_get_vf(struct pci_dev *vf_pdev);
+void ice_migration_put_vf(void *opaque);
+void ice_migration_init_vf(void *opaque);
+void ice_migration_uninit_vf(void *opaque);
+
+#else
+static inline void *ice_migration_get_vf(struct pci_dev *vf_pdev)
+{
+	return NULL;
+}
+static inline void ice_migration_put_vf(void *opaque)
+{
+	return NULL;
+}
+static inline void ice_migration_init_vf(void *opaque) { }
+static inline void ice_migration_uninit_vf(void *opaque) { }
+#endif /* CONFIG_ICE_VFIO_PCI */
+
+#endif /* _ICE_MIGRATION_H_ */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

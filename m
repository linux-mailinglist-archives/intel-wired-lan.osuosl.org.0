Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94782737E11
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:11:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33ECF4180B;
	Wed, 21 Jun 2023 09:11:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33ECF4180B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338708;
	bh=XZ/cojvKjnEMVhJGrOKw00aX96gysSxIBzhzyxEUGKI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gS1aMVQsdKYrwbKp/LQbk2adBT/uAtN584FhgzzhsEgabF97CyNHnldIRNL8+ZfJU
	 TKatoiiEuWYrsGFBQCrh98Qld0aEruupJ7WmnNOXjUMW6HE7oaF14AtW4rV+LoRYed
	 mIynWUs/MrvAzvZV6hZoSVrthlv3mmqgUID7uN/Czy/uUEzl//2Ssoh/3HDT62txol
	 k2kLGLMnTP2XAvvRU8tDrHxzClVt71CAs6X6I6E2W7cipZbjenZSO5rMGdpAts2IaU
	 HspNH4MUAekOSyWbkEwf8yTb4mnDQs1MCrf7nuLJqDFabs/gIlCzfh9tE9ojQhwqj3
	 tmR1KY7hUpobw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yum8UOqn6w6v; Wed, 21 Jun 2023 09:11:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9C8840636;
	Wed, 21 Jun 2023 09:11:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9C8840636
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C3771BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 329B783280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 329B783280
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LZ8BOztd3-A5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:11:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B38383276
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B38383276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613637"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613637"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:11:38 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570796"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570796"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:11:35 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:11:01 +0000
Message-Id: <20230621091112.44945-5-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338698; x=1718874698;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vy9dxnkb21pfv262OpRKjI0PRF7SvYaK8IcyYW/Ji2c=;
 b=VWg69/oc/pEYUxNdP2jABQdZXCcDvZGhHLrXiNKPsyf4/T4XAsXUtviK
 jiQeMo9JeD/qIja+dTrlLrIlJ+nppFAGec21kPraTjLAaKbRoLUW9YdUs
 iqFog4VixrHXk8ELva3SSvZ7x+xObpGunh7zoeG9MFH66En5MiJA+wgQ7
 aGQ8ALCuXApBifSldqqivJ3i6dShEvEuIxJtgcKWxRLVxV4pWO0kg+M3Z
 oWsny9rGq69SALJIDJwcaHiR+gndwOgzoIHt/XSTeBMtPnqDxqTrpyehZ
 Co/DkpHIe0mgfPsrnbKZDFI1SNs4PTPnjGsMcA+gFDw2IFW3FM0IXTkwa
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VWg69/oc
Subject: [Intel-wired-lan] [PATCH iwl-next V2 04/15] ice: add migration init
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

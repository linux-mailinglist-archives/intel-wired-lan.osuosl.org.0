Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9211C3B1308
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 06:55:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AC30403D2;
	Wed, 23 Jun 2021 04:55:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 90qU1zoYTNYI; Wed, 23 Jun 2021 04:55:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D93540391;
	Wed, 23 Jun 2021 04:55:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 272AB1BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7EFE260670
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1hO0xHLDf5WW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 04:55:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A0EA860694
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:38 +0000 (UTC)
IronPort-SDR: 1KXGnF3fyV2TutWm/hw9ycuirlAnIRkG/7wrm7Xgd4Ap6q1DuSMLluVlzYn/RINt64RZ0ZYHQr
 lR6COZmUTnEQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="204185972"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="204185972"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 21:55:36 -0700
IronPort-SDR: 4LED33p9SKNTzsI7sWXmKn/XcPou7mN1bRrvM9cv8Sg3i61t7/hDvk9XS5sjfQLlnerQZ0LFbN
 XB2YEHwl0Tog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="490547854"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2021 21:55:34 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Jun 2021 23:21:24 +0200
Message-Id: <20210622212134.341728-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
References: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 01/12] ice: basic support for
 eswitch mode management
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
Cc: Grzegorz Nitka <grzegorz.nitka@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Write set and get eswitch mode functions used by devlink
ops. Use new pf struct member eswitch_mode to track current
eswitch mode in driver.

Changing eswitch mode is only allowed when there are no
VFs created.

Create new file for eswitch related code.

Add config flag ICE_SWITCHDEV to allow user to choose if
switchdev support should be enabled or disabled.

Use case examples:
- show current eswitch mode ('legacy' is the default one)
[root@localhost]# devlink dev eswitch show pci/0000:03:00.1
>pci/0000:03:00.1: mode legacy

- move to 'switchdev' mode
[root@localhost]# devlink dev eswitch set pci/0000:03:00.1 mode
switchdev
[root@localhost]# devlink dev eswitch show pci/0000:03:00.1
>pci/0000:03:00.1: mode switchdev

- create 2 VFs
[root@localhost]# echo 2 > /sys/class/net/ens4f1/device/sriov_numvfs

- unsuccessful attempt to change eswitch mode while VFs are created
[root@localhost]# devlink dev eswitch set pci/0000:03:00.1 mode legacy
>devlink answers: Operation not supported

- destroy VFs
[root@localhost]# echo 0 > /sys/class/net/ens4f1/device/sriov_numvfs

- restore 'legacy' mode
[root@localhost]# devlink dev eswitch set pci/0000:03:00.1 mode legacy
[root@localhost]# devlink dev eswitch show pci/0000:03:00.1
>pci/0000:03:00.1: mode legacy

Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/Kconfig           | 10 ++++
 drivers/net/ethernet/intel/ice/Makefile      |  1 +
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_devlink.c |  3 +
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 62 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_eswitch.h | 34 +++++++++++
 6 files changed, 111 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch.h

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 3639cf79cfae..4da8b3930f6e 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -313,6 +313,16 @@ config ICE
 	  To compile this driver as a module, choose M here. The module
 	  will be called ice.
 
+config ICE_SWITCHDEV
+	bool "Switchdev Support"
+	default y
+	depends on ICE && NET_SWITCHDEV
+	help
+	  Say Y here if you want to use Switchdev in the
+	  driver.
+
+	  If unsure, say N.
+
 config FM10K
 	tristate "Intel(R) FM10000 Ethernet Switch Host Interface Support"
 	default n
diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 4f538cdf42c1..0545594c80ba 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -33,3 +33,4 @@ ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
+ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f4729caccbe9..729d375fbebc 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -430,6 +430,7 @@ struct ice_pf {
 
 	struct ice_vsi **vsi;		/* VSIs created by the driver */
 	struct ice_sw *first_sw;	/* first switch created by firmware */
+	u16 eswitch_mode;		/* current mode of eswitch */
 	/* Virtchnl/SR-IOV config info */
 	struct ice_vf *vf;
 	u16 num_alloc_vfs;		/* actual number of VFs allocated */
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index d69507d57de1..de6d0a8ba1a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -4,6 +4,7 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "ice_devlink.h"
+#include "ice_eswitch.h"
 #include "ice_fw_update.h"
 
 /* context for devlink info version reporting */
@@ -423,6 +424,8 @@ ice_devlink_flash_update(struct devlink *devlink,
 
 static const struct devlink_ops ice_devlink_ops = {
 	.supported_flash_update_params = DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK,
+	.eswitch_mode_get = ice_eswitch_mode_get,
+	.eswitch_mode_set = ice_eswitch_mode_set,
 	.info_get = ice_devlink_info_get,
 	.flash_update = ice_devlink_flash_update,
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
new file mode 100644
index 000000000000..1370c41b77ab
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -0,0 +1,62 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#include "ice.h"
+#include "ice_eswitch.h"
+#include "ice_devlink.h"
+
+/**
+ * ice_eswitch_mode_set - set new eswitch mode
+ * @devlink: pointer to devlink structure
+ * @mode: eswitch mode to switch to
+ * @extack: pointer to extack structure
+ */
+int
+ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
+		     struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	if (pf->eswitch_mode == mode)
+		return 0;
+
+	if (pf->num_alloc_vfs) {
+		dev_info(ice_pf_to_dev(pf), "Changing eswitch mode is allowed only if there is no VFs created");
+		NL_SET_ERR_MSG_MOD(extack, "Changing eswitch mode is allowed only if there is no VFs created");
+		return -EOPNOTSUPP;
+	}
+
+	switch (mode) {
+	case DEVLINK_ESWITCH_MODE_LEGACY:
+		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to legacy",
+			 pf->hw.pf_id);
+		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to legacy");
+		break;
+	case DEVLINK_ESWITCH_MODE_SWITCHDEV:
+	{
+		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to switchdev",
+			 pf->hw.pf_id);
+		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to switchdev");
+		break;
+	}
+	default:
+		NL_SET_ERR_MSG_MOD(extack, "Unknown eswitch mode");
+		return -EINVAL;
+	}
+
+	pf->eswitch_mode = mode;
+	return 0;
+}
+
+/**
+ * ice_eswitch_mode_get - get current eswitch mode
+ * @devlink: pointer to devlink structure
+ * @mode: output parameter for current eswitch mode
+ */
+int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	*mode = pf->eswitch_mode;
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
new file mode 100644
index 000000000000..0aa6fb7e0c4e
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#ifndef _ICE_ESWITCH_H_
+#define _ICE_ESWITCH_H_
+#include <net/devlink.h>
+
+#ifdef CONFIG_ICE_SWITCHDEV
+int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode);
+int
+ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
+		     struct netlink_ext_ack *extack);
+bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf);
+#else /* CONFIG_ICE_SWITCHDEV */
+static inline int
+ice_eswitch_mode_get(struct devlink *devlink, u16 *mode)
+{
+	return DEVLINK_ESWITCH_MODE_LEGACY;
+}
+
+static inline int
+ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
+		     struct netlink_ext_ack *extack)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline bool
+ice_is_eswitch_mode_switchdev(struct ice_pf *pf)
+{
+	return false;
+}
+#endif /* CONFIG_ICE_SWITCHDEV */
+#endif
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

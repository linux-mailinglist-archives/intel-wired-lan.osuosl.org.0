Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE593B4162
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jun 2021 12:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40A164052E;
	Fri, 25 Jun 2021 10:19:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gdimgJDo2F93; Fri, 25 Jun 2021 10:19:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8D1540512;
	Fri, 25 Jun 2021 10:19:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5436E1C11A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED3D983C38
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9JOjjvTpQKuj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jun 2021 10:18:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8344A83C3A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:18:48 +0000 (UTC)
IronPort-SDR: tB7l+DboOz8RYI+t3xJT6lfJEsMp4SJkeQTm4U3LriNn/oIZnH1nq2ve6fCqci8Ns632Rfeu/S
 bv5eM9TV0uNw==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="194787964"
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="194787964"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 03:18:45 -0700
IronPort-SDR: X3hx/wTHlQ00FBnaQf+ZHbdt7LFiTI9YdiCkXP8N3aeQcsx2yruWOdNmkxLYsiPARMO69F/ssp
 kFU6ruyLN3Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="474832789"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jun 2021 03:18:44 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 25 Jun 2021 04:44:50 +0200
Message-Id: <20210625024501.6126-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 01/12] ice: support basic
 E-Switch mode control
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
pci/0000:03:00.1: mode legacy

- move to 'switchdev' mode
[root@localhost]# devlink dev eswitch set pci/0000:03:00.1 mode
switchdev
[root@localhost]# devlink dev eswitch show pci/0000:03:00.1
pci/0000:03:00.1: mode switchdev

- create 2 VFs
[root@localhost]# echo 2 > /sys/class/net/ens4f1/device/sriov_numvfs

- unsuccessful attempt to change eswitch mode while VFs are created
[root@localhost]# devlink dev eswitch set pci/0000:03:00.1 mode legacy
devlink answers: Operation not supported

- destroy VFs
[root@localhost]# echo 0 > /sys/class/net/ens4f1/device/sriov_numvfs

- restore 'legacy' mode
[root@localhost]# devlink dev eswitch set pci/0000:03:00.1 mode legacy
[root@localhost]# devlink dev eswitch show pci/0000:03:00.1
pci/0000:03:00.1: mode legacy

Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/Kconfig           | 14 +++++
 drivers/net/ethernet/intel/ice/Makefile      |  1 +
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_devlink.c |  3 +
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 62 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_eswitch.h | 34 +++++++++++
 6 files changed, 115 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch.h

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 82744a7501c7..045ce9cb7b7f 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -313,6 +313,20 @@ config ICE
 	  To compile this driver as a module, choose M here. The module
 	  will be called ice.
 
+config ICE_SWITCHDEV
+	bool "Switchdev Support"
+	default y
+	depends on ICE && NET_SWITCHDEV
+	help
+	  Switchdev support provides internal SRIOV packet steering and switching.
+
+	  To enable it on running kernel use devlink tool:
+	  #devlink dev eswitch set pci/0000:XX:XX.X mode switchdev
+
+	  Say Y here if you want to use Switchdev in the driver.
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

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0441823EB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2020 22:33:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DE979228AC;
	Wed, 11 Mar 2020 21:33:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AklAMiB6QeOB; Wed, 11 Mar 2020 21:33:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 031D6228CA;
	Wed, 11 Mar 2020 21:33:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 751BE1BF48C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 21:33:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7015F2601D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 21:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jOir2CVzu9ks for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2020 21:33:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id B5FE41FEAB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 21:33:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 14:33:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,542,1574150400"; d="scan'208";a="242812507"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2020 14:33:38 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 11 Mar 2020 14:33:17 -0700
Message-Id: <20200311213319.783841-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200311213319.783841-1-jacob.e.keller@intel.com>
References: <20200311213319.783841-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 6/8] ice: enable initial devlink support
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
Cc: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Begin implementing support for the devlink interface with the ice
driver.

The pf structure is currently memory managed through devres, via
a devm_alloc. To mimic this behavior, after allocating the devlink
pointer, use devm_add_action to add a teardown action for releasing the
devlink memory on exit.

The ice hardware is a multi-function PCIe device. Thus, each physical
function will get its own devlink instance. This means that each
function will be treated independently, with its own parameters and
configuration. This is done because the ice driver loads a separate
instance for each function.

Due to this, the implementation does not enable devlink to manage
device-wide resources or configuration, as each physical function will
be treated independently. This is done for simplicity, as managing
a devlink instance across multiple driver instances would significantly
increase the complexity for minimal gain.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/Kconfig           |   1 +
 drivers/net/ethernet/intel/ice/Makefile      |   1 +
 drivers/net/ethernet/intel/ice/ice.h         |   4 +
 drivers/net/ethernet/intel/ice/ice_devlink.c | 117 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_devlink.h |  14 +++
 drivers/net/ethernet/intel/ice/ice_main.c    |  21 +++-
 6 files changed, 157 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_devlink.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_devlink.h

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index ced9d2650da4..b421c0c5fc8b 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -296,6 +296,7 @@ config ICE
 	default n
 	depends on PCI_MSI
 	select VIRTUAL_BUS
+	select NET_DEVLINK
 	---help---
 	  This driver supports Intel(R) Ethernet Connection E800 Series of
 	  devices.  For more information on how to identify your adapter, go
diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 85e2ba18cec2..41bfd5f21679 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -20,6 +20,7 @@ ice-y := ice_main.o	\
 	 ice_flex_pipe.o \
 	 ice_flow.o	\
 	 ice_idc.o	\
+	 ice_devlink.o	\
 	 ice_ethtool.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f237df923ea1..288b6d08eb3f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -35,6 +35,7 @@
 #include <linux/bpf.h>
 #include <linux/virtual_bus.h>
 #include <linux/avf/virtchnl.h>
+#include <net/devlink.h>
 #include <net/ipv6.h>
 #include <net/xdp_sock.h>
 #include <net/geneve.h>
@@ -358,6 +359,9 @@ enum ice_pf_flags {
 struct ice_pf {
 	struct pci_dev *pdev;
 
+	/* devlink port data */
+	struct devlink_port devlink_port;
+
 	/* OS reserved IRQ details */
 	struct msix_entry *msix_entries;
 	struct ice_res_tracker *irq_tracker;
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
new file mode 100644
index 000000000000..cedd9d02299e
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -0,0 +1,117 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2020, Intel Corporation. */
+
+#include "ice.h"
+#include "ice_devlink.h"
+
+static const struct devlink_ops ice_devlink_ops = {
+};
+
+static void ice_devlink_free(void *devlink_ptr)
+{
+	devlink_free((struct devlink *)devlink_ptr);
+}
+
+/**
+ * ice_allocate_pf - Allocate devlink and return PF structure pointer
+ * @dev: the device to allocate for
+ *
+ * Allocate a devlink instance for this device and return the private area as
+ * the PF structure. The devlink memory is kept track of through devres by
+ * adding an action to remove it when unwinding.
+ */
+struct ice_pf *ice_allocate_pf(struct device *dev)
+{
+	struct devlink *devlink;
+
+	devlink = devlink_alloc(&ice_devlink_ops, sizeof(struct ice_pf));
+	if (!devlink)
+		return NULL;
+
+	/* Add an action to teardown the devlink when unwinding the driver */
+	if (devm_add_action(dev, ice_devlink_free, devlink)) {
+		devlink_free(devlink);
+		return NULL;
+	}
+
+	return devlink_priv(devlink);
+}
+
+/**
+ * ice_devlink_register - Register devlink interface for this PF
+ * @pf: the PF to register the devlink for.
+ *
+ * Register the devlink instance associated with this physical function.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int ice_devlink_register(struct ice_pf *pf)
+{
+	struct devlink *devlink = priv_to_devlink(pf);
+	struct device *dev = ice_pf_to_dev(pf);
+	int err;
+
+	err = devlink_register(devlink, dev);
+	if (err) {
+		dev_err(dev, "devlink registration failed: %d\n", err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_unregister - Unregister devlink resources for this PF.
+ * @pf: the PF structure to cleanup
+ *
+ * Releases resources used by devlink and cleans up associated memory.
+ */
+void ice_devlink_unregister(struct ice_pf *pf)
+{
+	devlink_unregister(priv_to_devlink(pf));
+}
+
+/**
+ * ice_devlink_create_port - Create a devlink port for this PF
+ * @pf: the PF to create a port for
+ *
+ * Create and register a devlink_port for this PF. Note that although each
+ * physical function is connected to a separate devlink instance, the port
+ * will still be numbered according to the physical function id.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int ice_devlink_create_port(struct ice_pf *pf)
+{
+	struct devlink *devlink = priv_to_devlink(pf);
+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+	struct device *dev = ice_pf_to_dev(pf);
+	int err;
+
+	if (!vsi) {
+		dev_err(dev, "%s: unable to find main VSI\n", __func__);
+		return -EIO;
+	}
+
+	devlink_port_attrs_set(&pf->devlink_port, DEVLINK_PORT_FLAVOUR_PHYSICAL,
+			       pf->hw.pf_id, false, 0, NULL, 0);
+	err = devlink_port_register(devlink, &pf->devlink_port, pf->hw.pf_id);
+	if (err) {
+		dev_err(dev, "devlink_port_register failed: %d\n", err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_destroy_port - Destroy the devlink_port for this PF
+ * @pf: the PF to cleanup
+ *
+ * Unregisters the devlink_port structure associated with this PF.
+ */
+void ice_devlink_destroy_port(struct ice_pf *pf)
+{
+	devlink_port_type_clear(&pf->devlink_port);
+	devlink_port_unregister(&pf->devlink_port);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.h b/drivers/net/ethernet/intel/ice/ice_devlink.h
new file mode 100644
index 000000000000..f94dc93c24c5
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2019, Intel Corporation. */
+
+#ifndef _ICE_DEVLINK_H_
+#define _ICE_DEVLINK_H_
+
+struct ice_pf *ice_allocate_pf(struct device *dev);
+
+int ice_devlink_register(struct ice_pf *pf);
+void ice_devlink_unregister(struct ice_pf *pf);
+int ice_devlink_create_port(struct ice_pf *pf);
+void ice_devlink_destroy_port(struct ice_pf *pf);
+
+#endif /* _ICE_DEVLINK_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5e99b100fcb3..e4284084e7b5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -10,6 +10,7 @@
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
 #include "ice_dcb_nl.h"
+#include "ice_devlink.h"
 
 #define DRV_VERSION_MAJOR 0
 #define DRV_VERSION_MINOR 8
@@ -2426,6 +2427,8 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 	if (err)
 		return err;
 
+	devlink_port_type_eth_set(&pf->devlink_port, vsi->netdev);
+
 	netif_carrier_off(vsi->netdev);
 
 	/* make sure transmit queues start off as stopped */
@@ -3224,7 +3227,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		return err;
 	}
 
-	pf = devm_kzalloc(dev, sizeof(*pf), GFP_KERNEL);
+	pf = ice_allocate_pf(dev);
 	if (!pf)
 		return -ENOMEM;
 
@@ -3262,6 +3265,12 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	pf->msg_enable = netif_msg_init(debug, ICE_DFLT_NETIF_M);
 
+	err = ice_devlink_register(pf);
+	if (err) {
+		dev_err(dev, "ice_devlink_register failed: %d\n", err);
+		goto err_exit_unroll;
+	}
+
 #ifndef CONFIG_DYNAMIC_DEBUG
 	if (debug < -1)
 		hw->debug_mask = debug;
@@ -3353,6 +3362,11 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		goto err_alloc_sw_unroll;
 	}
 
+	err = ice_devlink_create_port(pf);
+	if (err)
+		goto err_alloc_sw_unroll;
+
+
 	clear_bit(__ICE_SERVICE_DIS, pf->state);
 
 	/* tell the firmware we are up */
@@ -3422,6 +3436,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		}
 	}
 err_alloc_sw_unroll:
+	ice_devlink_destroy_port(pf);
 	set_bit(__ICE_SERVICE_DIS, pf->state);
 	set_bit(__ICE_DOWN, pf->state);
 	devm_kfree(dev, pf->first_sw);
@@ -3434,6 +3449,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	ice_deinit_pf(pf);
 	ice_deinit_hw(hw);
 err_exit_unroll:
+	ice_devlink_unregister(pf);
 	pci_disable_pcie_error_reporting(pdev);
 	return err;
 }
@@ -3469,6 +3485,7 @@ static void ice_remove(struct pci_dev *pdev)
 	}
 	set_bit(__ICE_DOWN, pf->state);
 
+	ice_devlink_destroy_port(pf);
 	ice_vsi_release_all(pf);
 	if (ice_is_peer_ena(pf)) {
 		ice_for_each_peer(pf, NULL, ice_unreg_peer_device);
@@ -3482,6 +3499,8 @@ static void ice_remove(struct pci_dev *pdev)
 	}
 	ice_deinit_pf(pf);
 	ice_deinit_hw(&pf->hw);
+	ice_devlink_unregister(pf);
+
 	/* Issue a PFR as part of the prescribed driver unload flow.  Do not
 	 * do it via ice_schedule_reset() since there is no need to rebuild
 	 * and the service task is already stopped.
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

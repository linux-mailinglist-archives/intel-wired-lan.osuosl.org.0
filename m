Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3788A3B4164
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jun 2021 12:19:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7D174068B;
	Fri, 25 Jun 2021 10:19:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jhbziVtA9Bwe; Fri, 25 Jun 2021 10:19:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5302240297;
	Fri, 25 Jun 2021 10:19:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D6F91C11A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:18:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 273A1404A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZaLvfQv5J2x3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jun 2021 10:18:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78B7F400EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:18:50 +0000 (UTC)
IronPort-SDR: ZL1DEE1IHOqtMimsvUWDtzZqeWMu8g0nojkBFEGsD51OfHjgagu/u4RpNnaYUTaUNOfVfB3lOs
 kX+5AuQDsIbQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="207464366"
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="207464366"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 03:18:47 -0700
IronPort-SDR: HhQFsqhBSaZZUc5poP9x1up3zUyR+OLAufcjPJLZjkzxkKH8J+QJ8w5mAlochbcUUc95I03M+e
 aB4u1gwk/5Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="474832801"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jun 2021 03:18:46 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 25 Jun 2021 04:44:52 +0200
Message-Id: <20210625024501.6126-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 03/12] ice: introduce VF port
 representor
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

Port representor is used to manage VF from host side. To allow
it each created representor registers netdevice with random hw
address. Also devlink port is created for all representors.

Port representor name is created based on switch id or managed
by devlink core if devlink port was registered with success.

Open and stop ndo ops are implemented to allow managing the VF
link state. Link state is tracked in VF struct.

Struct ice_netdev_priv is extended by pointer to representor
field. This is needed to get correct representor from netdev
struct mostly used in ndo calls.

Implement helper functions to check if given netdev is netdev of
port representor (ice_is_port_repr_netdev) and to get representor
from netdev (ice_netdev_to_repr).

As driver mostly will create or destroy port representors on all
VFs instead of on single one, write functions to add and remove
representor for each VF.

Representor struct contains pointer to source VSI, which is VSI
configured on VF, backpointer to VF, backpointer to netdev,
q_vector pointer and metadata_dst which will be used in data path.

Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   3 +-
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_repr.c     | 254 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_repr.h     |  22 ++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   2 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   4 +
 6 files changed, 285 insertions(+), 2 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_repr.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_repr.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 0545594c80ba..1866be50095d 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -26,7 +26,8 @@ ice-y := ice_main.o	\
 	 ice_devlink.o	\
 	 ice_fw_update.o \
 	 ice_lag.o	\
-	 ice_ethtool.o
+	 ice_ethtool.o  \
+	 ice_repr.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_allowlist.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o ice_virtchnl_fdir.o
 ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 0baac650122a..2d04ba861125 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -63,6 +63,7 @@
 #include "ice_fdir.h"
 #include "ice_xsk.h"
 #include "ice_arfs.h"
+#include "ice_repr.h"
 #include "ice_lag.h"
 
 #define ICE_BAR0		0
@@ -508,6 +509,7 @@ struct ice_pf {
 
 struct ice_netdev_priv {
 	struct ice_vsi *vsi;
+	struct ice_repr *repr;
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
new file mode 100644
index 000000000000..bae2a3167b0d
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -0,0 +1,254 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#include "ice.h"
+#include "ice_eswitch.h"
+#include "ice_devlink.h"
+#include "ice_virtchnl_pf.h"
+
+/**
+ * ice_repr_get_sw_port_id - get port ID associated with representor
+ * @repr: pointer to port representor
+ */
+static int ice_repr_get_sw_port_id(struct ice_repr *repr)
+{
+	return repr->vf->pf->hw.port_info->lport;
+}
+
+/**
+ * ice_repr_get_phys_port_name - get phys port name
+ * @netdev: pointer to port representor netdev
+ * @buf: write here port name
+ * @len: max length of buf
+ */
+static int
+ice_repr_get_phys_port_name(struct net_device *netdev, char *buf, size_t len)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_repr *repr = np->repr;
+	int res;
+
+	/* Devlink port is registered and devlink core is taking care of name formatting. */
+	if (repr->vf->devlink_port.registered)
+		return -EOPNOTSUPP;
+
+	res = snprintf(buf, len, "pf%dvfr%d", ice_repr_get_sw_port_id(repr),
+		       repr->vf->vf_id);
+	if (res <= 0)
+		return -EOPNOTSUPP;
+	return 0;
+}
+
+/**
+ * ice_netdev_to_repr - Get port representor for given netdevice
+ * @netdev: pointer to port representor netdev
+ */
+struct ice_repr *ice_netdev_to_repr(struct net_device *netdev)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+
+	return np->repr;
+}
+
+/**
+ * ice_repr_open - Enable port representor's network interface
+ * @netdev: network interface device structure
+ *
+ * The open entry point is called when a port representor's network
+ * interface is made active by the system (IFF_UP). Corresponding
+ * VF is notified about link status change.
+ *
+ * Returns 0 on success
+ */
+static int ice_repr_open(struct net_device *netdev)
+{
+	struct ice_repr *repr = ice_netdev_to_repr(netdev);
+	struct ice_vf *vf;
+
+	vf = repr->vf;
+	vf->link_forced = true;
+	vf->link_up = true;
+	ice_vc_notify_vf_link_state(vf);
+
+	netif_carrier_on(netdev);
+	netif_tx_start_all_queues(netdev);
+
+	return 0;
+}
+
+/**
+ * ice_repr_stop - Disable port representor's network interface
+ * @netdev: network interface device structure
+ *
+ * The stop entry point is called when a port representor's network
+ * interface is de-activated by the system. Corresponding
+ * VF is notified about link status change.
+ *
+ * Returns 0 on success
+ */
+static int ice_repr_stop(struct net_device *netdev)
+{
+	struct ice_repr *repr = ice_netdev_to_repr(netdev);
+	struct ice_vf *vf;
+
+	vf = repr->vf;
+	vf->link_forced = true;
+	vf->link_up = false;
+	ice_vc_notify_vf_link_state(vf);
+
+	netif_carrier_off(netdev);
+	netif_tx_stop_all_queues(netdev);
+
+	return 0;
+}
+
+static struct devlink_port *
+ice_repr_get_devlink_port(struct net_device *netdev)
+{
+	struct ice_repr *repr = ice_netdev_to_repr(netdev);
+
+	return &repr->vf->devlink_port;
+}
+
+static const struct net_device_ops ice_repr_netdev_ops = {
+	.ndo_get_phys_port_name = ice_repr_get_phys_port_name,
+	.ndo_open = ice_repr_open,
+	.ndo_stop = ice_repr_stop,
+	.ndo_get_devlink_port = ice_repr_get_devlink_port,
+};
+
+/**
+ * ice_is_port_repr_netdev - Check if a given netdevice is a port representor netdev
+ * @netdev: pointer to netdev
+ */
+bool ice_is_port_repr_netdev(struct net_device *netdev)
+{
+	return netdev && (netdev->netdev_ops == &ice_repr_netdev_ops);
+}
+
+/**
+ * ice_repr_reg_netdev - register port representor netdev
+ * @netdev: pointer to port representor netdev
+ */
+static int
+ice_repr_reg_netdev(struct net_device *netdev)
+{
+	eth_hw_addr_random(netdev);
+	netdev->netdev_ops = &ice_repr_netdev_ops;
+
+	netif_carrier_off(netdev);
+	netif_tx_stop_all_queues(netdev);
+
+	return register_netdev(netdev);
+}
+
+/**
+ * ice_repr_add - add representor for VF
+ * @vf: pointer to VF structure
+ */
+static int ice_repr_add(struct ice_vf *vf)
+{
+	struct ice_q_vector *q_vector;
+	struct ice_netdev_priv *np;
+	struct ice_repr *repr;
+	int err;
+
+	repr = kzalloc(sizeof(*repr), GFP_KERNEL);
+	if (!repr)
+		return -ENOMEM;
+
+	repr->netdev = alloc_etherdev(sizeof(struct ice_netdev_priv));
+	if (!repr->netdev) {
+		err =  -ENOMEM;
+		goto err_alloc;
+	}
+
+	repr->src_vsi = ice_get_vf_vsi(vf);
+	repr->vf = vf;
+	vf->repr = repr;
+	np = netdev_priv(repr->netdev);
+	np->repr = repr;
+
+	q_vector = kzalloc(sizeof(*q_vector), GFP_KERNEL);
+	if (!q_vector) {
+		err = -ENOMEM;
+		goto err_alloc_q_vector;
+	}
+	repr->q_vector = q_vector;
+
+	err = ice_devlink_create_vf_port(vf);
+	if (err)
+		goto err_devlink;
+
+	err = ice_repr_reg_netdev(repr->netdev);
+	if (err)
+		goto err_netdev;
+
+	devlink_port_type_eth_set(&vf->devlink_port, repr->netdev);
+
+	return 0;
+
+err_netdev:
+	ice_devlink_destroy_vf_port(vf);
+err_devlink:
+	kfree(repr->q_vector);
+	vf->repr->q_vector = NULL;
+err_alloc_q_vector:
+	free_netdev(repr->netdev);
+	repr->netdev = NULL;
+err_alloc:
+	kfree(repr);
+	vf->repr = NULL;
+	return err;
+}
+
+/**
+ * ice_repr_rem - remove representor from VF
+ * @vf: pointer to VF structure
+ */
+static void ice_repr_rem(struct ice_vf *vf)
+{
+	ice_devlink_destroy_vf_port(vf);
+	kfree(vf->repr->q_vector);
+	vf->repr->q_vector = NULL;
+	unregister_netdev(vf->repr->netdev);
+	free_netdev(vf->repr->netdev);
+	vf->repr->netdev = NULL;
+	kfree(vf->repr);
+	vf->repr = NULL;
+}
+
+/**
+ * ice_repr_add_for_all_vfs - add port representor for all VFs
+ * @pf: pointer to PF structure
+ */
+int ice_repr_add_for_all_vfs(struct ice_pf *pf)
+{
+	int err;
+	int i;
+
+	ice_for_each_vf(pf, i) {
+		err = ice_repr_add(&pf->vf[i]);
+		if (err)
+			goto err;
+	}
+	return 0;
+
+err:
+	for (i = i - 1; i >= 0; i--)
+		ice_repr_rem(&pf->vf[i]);
+
+	return err;
+}
+
+/**
+ * ice_repr_rem_from_all_vfs - remove port representor for all VFs
+ * @pf: pointer to PF structure
+ */
+void ice_repr_rem_from_all_vfs(struct ice_pf *pf)
+{
+	int i;
+
+	ice_for_each_vf(pf, i)
+		ice_repr_rem(&pf->vf[i]);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
new file mode 100644
index 000000000000..78b0419b9254
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#ifndef _ICE_REPR_H_
+#define _ICE_REPR_H_
+#include <net/dst_metadata.h>
+#include "ice.h"
+
+struct ice_repr {
+	struct ice_vsi *src_vsi;
+	struct ice_vf *vf;
+	struct ice_q_vector *q_vector;
+	struct net_device *netdev;
+	struct metadata_dst *dst;
+};
+
+int ice_repr_add_for_all_vfs(struct ice_pf *pf);
+void ice_repr_rem_from_all_vfs(struct ice_pf *pf);
+
+struct ice_repr *ice_netdev_to_repr(struct net_device *netdev);
+bool ice_is_port_repr_netdev(struct net_device *netdev);
+#endif
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 938cba6a0470..adf51f9a40ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -381,7 +381,7 @@ static bool ice_is_vf_link_up(struct ice_vf *vf)
  *
  * send a link status message to a single VF
  */
-static void ice_vc_notify_vf_link_state(struct ice_vf *vf)
+void ice_vc_notify_vf_link_state(struct ice_vf *vf)
 {
 	struct virtchnl_pf_event pfe = { 0 };
 	struct ice_hw *hw = &vf->pf->hw;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 38b4dc82c5c1..b3fa8dd5539b 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -112,6 +112,8 @@ struct ice_vf {
 	struct ice_mdd_vf_events mdd_tx_events;
 	DECLARE_BITMAP(opcodes_allowlist, VIRTCHNL_OP_MAX);
 
+	struct ice_repr *repr;
+
 	/* devlink port data */
 	struct devlink_port devlink_port;
 };
@@ -128,6 +130,7 @@ void ice_free_vfs(struct ice_pf *pf);
 void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event);
 void ice_vc_notify_link_state(struct ice_pf *pf);
 void ice_vc_notify_reset(struct ice_pf *pf);
+void ice_vc_notify_vf_link_state(struct ice_vf *vf);
 bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr);
 bool ice_reset_vf(struct ice_vf *vf, bool is_vflr);
 void ice_restore_all_vfs_msi_state(struct pci_dev *pdev);
@@ -168,6 +171,7 @@ static inline
 void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event) { }
 static inline void ice_vc_notify_link_state(struct ice_pf *pf) { }
 static inline void ice_vc_notify_reset(struct ice_pf *pf) { }
+static inline void ice_vc_notify_vf_link_state(struct ice_vf *vf) { }
 static inline void ice_set_vf_state_qs_dis(struct ice_vf *vf) { }
 static inline
 void ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event) { }
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

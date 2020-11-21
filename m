Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD722BBB3C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:46:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D6E886E7A;
	Sat, 21 Nov 2020 00:46:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JoLhPfhvlcDW; Sat, 21 Nov 2020 00:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5DFB486E95;
	Sat, 21 Nov 2020 00:46:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2446F1BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 07FA92E147
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BYVbLNESAFxv for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:46:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 0034F2E0E7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:34 +0000 (UTC)
IronPort-SDR: vyZ1DZGui6tPdP+/SscYgWZ2NnioK0g/JL/msxr+oF3Jn6uaL/6G9jXt1J0gk+HiIOiTglA2tw
 ufKA4hGcbY9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="168053540"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="168053540"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:46:33 -0800
IronPort-SDR: fZcV18XXBBCO6dzCi+gb9LKLzJnRgJKSgQ0Xp20u89piLT/aRDTfwTdZpaR4HcATq2GhoFJWUE
 D+8fqqI0v6Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="331520157"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 20 Nov 2020 16:46:33 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:39:26 -0800
Message-Id: <20201121003938.48514-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
References: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S54 02/14] ice: Add initial support
 framework for LAG
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

From: Dave Ertman <david.m.ertman@intel.com>

Add the framework and initial implementation for receiving and processing
netdev bonding events.  This is only the software support and the
implementation of the HW offload for bonding support will be coming at a
later time.  There are some architectural gaps that need to be closed
before that happens.

Because this is a software only solution that supports in kernel bonding,
SR-IOV is not supported with this implementation.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/ice/ice.h          |  22 +
 drivers/net/ethernet/intel/ice/ice_lag.c      | 442 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lag.h      |  87 ++++
 drivers/net/ethernet/intel/ice/ice_lib.c      |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   9 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   4 +
 7 files changed, 567 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_lag.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_lag.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 36a787b5ad8d..9769f7a20b32 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -27,6 +27,7 @@ ice-y := ice_main.o	\
 	 ice_flow.o	\
 	 ice_devlink.o	\
 	 ice_fw_update.o \
+	 ice_lag.o	\
 	 ice_ethtool.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ffa1d08767b3..baee27b8184c 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -57,6 +57,7 @@
 #include "ice_fdir.h"
 #include "ice_xsk.h"
 #include "ice_arfs.h"
+#include "ice_lag.h"
 
 #define ICE_BAR0		0
 #define ICE_REQ_DESC_MULTIPLE	32
@@ -455,6 +456,7 @@ struct ice_pf {
 	__le64 nvm_phy_type_lo; /* NVM PHY type low */
 	__le64 nvm_phy_type_hi; /* NVM PHY type high */
 	struct ice_link_default_override_tlv link_dflt_override;
+	struct ice_lag *lag; /* Link Aggregation information */
 };
 
 struct ice_netdev_priv {
@@ -555,11 +557,31 @@ static inline struct ice_vsi *ice_get_ctrl_vsi(struct ice_pf *pf)
 	return pf->vsi[pf->ctrl_vsi_idx];
 }
 
+/**
+ * ice_set_sriov_cap - enable SRIOV in PF flags
+ * @pf: PF struct
+ */
+static inline void ice_set_sriov_cap(struct ice_pf *pf)
+{
+	if (pf->hw.func_caps.common_cap.sr_iov_1_1)
+		set_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags);
+}
+
+/**
+ * ice_clear_sriov_cap - disable SRIOV in PF flags
+ * @pf: PF struct
+ */
+static inline void ice_clear_sriov_cap(struct ice_pf *pf)
+{
+	clear_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags);
+}
+
 #define ICE_FD_STAT_CTR_BLOCK_COUNT	256
 #define ICE_FD_STAT_PF_IDX(base_idx) \
 			((base_idx) * ICE_FD_STAT_CTR_BLOCK_COUNT)
 #define ICE_FD_SB_STAT_IDX(base_idx) ICE_FD_STAT_PF_IDX(base_idx)
 
+bool netif_is_ice(struct net_device *dev);
 int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
 int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
 int ice_vsi_open_ctrl(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
new file mode 100644
index 000000000000..265455f74ad4
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -0,0 +1,442 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2020, Intel Corporation. */
+
+/* Link Aggregation code */
+
+#include "ice.h"
+#include "ice_lag.h"
+
+/**
+ * ice_lag_nop_handler - no-op Rx handler to disable LAG
+ * @pskb: pointer to skb pointer
+ */
+rx_handler_result_t ice_lag_nop_handler(struct sk_buff __always_unused **pskb)
+{
+	return RX_HANDLER_PASS;
+}
+
+/**
+ * ice_lag_set_primary - set PF LAG state as Primary
+ * @lag: LAG info struct
+ */
+static void ice_lag_set_primary(struct ice_lag *lag)
+{
+	struct ice_pf *pf = lag->pf;
+
+	if (!pf)
+		return;
+
+	if (lag->role != ICE_LAG_UNSET && lag->role != ICE_LAG_BACKUP) {
+		dev_warn(ice_pf_to_dev(pf), "%s: Attempt to be Primary, but incompatible state.\n",
+			 netdev_name(lag->netdev));
+		return;
+	}
+
+	lag->role = ICE_LAG_PRIMARY;
+}
+
+/**
+ * ice_lag_set_backup - set PF LAG state to Backup
+ * @lag: LAG info struct
+ */
+static void ice_lag_set_backup(struct ice_lag *lag)
+{
+	struct ice_pf *pf = lag->pf;
+
+	if (!pf)
+		return;
+
+	if (lag->role != ICE_LAG_UNSET && lag->role != ICE_LAG_PRIMARY) {
+		dev_dbg(ice_pf_to_dev(pf), "%s: Attempt to be Backup, but incompatible state\n",
+			netdev_name(lag->netdev));
+		return;
+	}
+
+	lag->role = ICE_LAG_BACKUP;
+}
+
+/**
+ * ice_display_lag_info - print LAG info
+ * @lag: LAG info struct
+ */
+static void ice_display_lag_info(struct ice_lag *lag)
+{
+	const char *name, *peer, *upper, *role, *bonded, *master;
+	struct device *dev = &lag->pf->pdev->dev;
+
+	name = lag->netdev ? netdev_name(lag->netdev) : "unset";
+	peer = lag->peer_netdev ? netdev_name(lag->peer_netdev) : "unset";
+	upper = lag->upper_netdev ? netdev_name(lag->upper_netdev) : "unset";
+	master = lag->master ? "TRUE" : "FALSE";
+	bonded = lag->bonded ? "BONDED" : "UNBONDED";
+
+	switch (lag->role) {
+	case ICE_LAG_NONE:
+		role = "NONE";
+		break;
+	case ICE_LAG_PRIMARY:
+		role = "PRIMARY";
+		break;
+	case ICE_LAG_BACKUP:
+		role = "BACKUP";
+		break;
+	case ICE_LAG_UNSET:
+		role = "UNSET";
+		break;
+	default:
+		role = "ERROR";
+	}
+
+	dev_dbg(dev, "%s %s, peer:%s, upper:%s, role:%s, master:%s\n", name,
+		bonded, peer, upper, role, master);
+}
+
+/**
+ * ice_lag_info_event - handle NETDEV_BONDING_INFO event
+ * @lag: LAG info struct
+ * @ptr: opaque data pointer
+ *
+ * ptr is to be cast to (netdev_notifier_bonding_info *)
+ */
+static void ice_lag_info_event(struct ice_lag *lag, void *ptr)
+{
+	struct net_device *event_netdev, *netdev_tmp;
+	struct netdev_notifier_bonding_info *info;
+	struct netdev_bonding_info *bonding_info;
+	const char *lag_netdev_name;
+
+	event_netdev = netdev_notifier_info_to_dev(ptr);
+	info = ptr;
+	lag_netdev_name = netdev_name(lag->netdev);
+	bonding_info = &info->bonding_info;
+
+	if (event_netdev != lag->netdev || !lag->bonded || !lag->upper_netdev)
+		return;
+
+	if (bonding_info->master.bond_mode != BOND_MODE_ACTIVEBACKUP) {
+		netdev_dbg(lag->netdev, "Bonding event recv, but mode not active/backup\n");
+		goto lag_out;
+	}
+
+	if (strcmp(bonding_info->slave.slave_name, lag_netdev_name)) {
+		netdev_dbg(lag->netdev, "Bonding event recv, but slave info not for us\n");
+		goto lag_out;
+	}
+
+	rcu_read_lock();
+	for_each_netdev_in_bond_rcu(lag->upper_netdev, netdev_tmp) {
+		if (!netif_is_ice(netdev_tmp))
+			continue;
+
+		if (netdev_tmp && netdev_tmp != lag->netdev &&
+		    lag->peer_netdev != netdev_tmp) {
+			dev_hold(netdev_tmp);
+			lag->peer_netdev = netdev_tmp;
+		}
+	}
+	rcu_read_unlock();
+
+	if (bonding_info->slave.state)
+		ice_lag_set_backup(lag);
+	else
+		ice_lag_set_primary(lag);
+
+lag_out:
+	ice_display_lag_info(lag);
+}
+
+/**
+ * ice_lag_link - handle LAG link event
+ * @lag: LAG info struct
+ * @info: info from the netdev notifier
+ */
+static void
+ice_lag_link(struct ice_lag *lag, struct netdev_notifier_changeupper_info *info)
+{
+	struct net_device *netdev_tmp, *upper = info->upper_dev;
+	struct ice_pf *pf = lag->pf;
+	int peers = 0;
+
+	if (lag->bonded)
+		dev_warn(ice_pf_to_dev(pf), "%s Already part of a bond\n",
+			 netdev_name(lag->netdev));
+
+	rcu_read_lock();
+	for_each_netdev_in_bond_rcu(upper, netdev_tmp)
+		peers++;
+	rcu_read_unlock();
+
+	if (lag->upper_netdev != upper) {
+		dev_hold(upper);
+		lag->upper_netdev = upper;
+	}
+
+	ice_clear_sriov_cap(pf);
+
+	lag->bonded = true;
+	lag->role = ICE_LAG_UNSET;
+
+	/* if this is the first element in an LAG mark as master */
+	lag->master = !!(peers == 1);
+}
+
+/**
+ * ice_lag_unlink - handle unlink event
+ * @lag: LAG info struct
+ * @info: info from netdev notification
+ */
+static void
+ice_lag_unlink(struct ice_lag *lag,
+	       struct netdev_notifier_changeupper_info *info)
+{
+	struct net_device *netdev_tmp, *upper = info->upper_dev;
+	struct ice_pf *pf = lag->pf;
+	bool found = false;
+
+	if (!lag->bonded) {
+		netdev_dbg(lag->netdev, "bonding unlink event on non-LAG netdev\n");
+		return;
+	}
+
+	/* determine if we are in the new LAG config or not */
+	rcu_read_lock();
+	for_each_netdev_in_bond_rcu(upper, netdev_tmp) {
+		if (netdev_tmp == lag->netdev) {
+			found = true;
+			break;
+		}
+	}
+	rcu_read_unlock();
+
+	if (found)
+		return;
+
+	if (lag->upper_netdev) {
+		dev_put(lag->upper_netdev);
+		lag->upper_netdev = NULL;
+	}
+
+	if (lag->peer_netdev) {
+		dev_put(lag->peer_netdev);
+		lag->peer_netdev = NULL;
+	}
+
+	ice_set_sriov_cap(pf);
+	lag->bonded = false;
+	lag->role = ICE_LAG_NONE;
+}
+
+/**
+ * ice_lag_changeupper_event - handle LAG changeupper event
+ * @lag: LAG info struct
+ * @ptr: opaque pointer data
+ *
+ * ptr is to be cast into netdev_notifier_changeupper_info
+ */
+static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
+{
+	struct netdev_notifier_changeupper_info *info;
+	struct net_device *netdev;
+
+	info = ptr;
+	netdev = netdev_notifier_info_to_dev(ptr);
+
+	/* not for this netdev */
+	if (netdev != lag->netdev)
+		return;
+
+	if (!info->upper_dev) {
+		netdev_dbg(netdev, "changeupper rcvd, but no upper defined\n");
+		return;
+	}
+
+	netdev_dbg(netdev, "bonding %s\n", info->linking ? "LINK" : "UNLINK");
+
+	if (!netif_is_lag_master(info->upper_dev)) {
+		netdev_dbg(netdev, "changeupper rcvd, but not master. bail\n");
+		return;
+	}
+
+	if (info->linking)
+		ice_lag_link(lag, info);
+	else
+		ice_lag_unlink(lag, info);
+
+	ice_display_lag_info(lag);
+}
+
+/**
+ * ice_lag_changelower_event - handle LAG changelower event
+ * @lag: LAG info struct
+ * @ptr: opaque data pointer
+ *
+ * ptr to be cast to netdev_notifier_changelowerstate_info
+ */
+static void ice_lag_changelower_event(struct ice_lag *lag, void *ptr)
+{
+	struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
+
+	if (netdev != lag->netdev)
+		return;
+
+	netdev_dbg(netdev, "bonding info\n");
+
+	if (!netif_is_lag_port(netdev))
+		netdev_dbg(netdev, "CHANGELOWER rcvd, but netdev not in LAG. Bail\n");
+}
+
+/**
+ * ice_lag_event_handler - handle LAG events from netdev
+ * @notif_blk: notifier block registered by this netdev
+ * @event: event type
+ * @ptr: opaque data containing notifier event
+ */
+static int
+ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
+		      void *ptr)
+{
+	struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
+	struct ice_lag *lag;
+
+	lag = container_of(notif_blk, struct ice_lag, notif_block);
+
+	if (!lag->netdev)
+		return NOTIFY_DONE;
+
+	/* Check that the netdev is in the working namespace */
+	if (!net_eq(dev_net(netdev), &init_net))
+		return NOTIFY_DONE;
+
+	switch (event) {
+	case NETDEV_CHANGEUPPER:
+		ice_lag_changeupper_event(lag, ptr);
+		break;
+	case NETDEV_CHANGELOWERSTATE:
+		ice_lag_changelower_event(lag, ptr);
+		break;
+	case NETDEV_BONDING_INFO:
+		ice_lag_info_event(lag, ptr);
+		break;
+	default:
+		break;
+	}
+
+	return NOTIFY_DONE;
+}
+
+/**
+ * ice_register_lag_handler - register LAG handler on netdev
+ * @lag: LAG struct
+ */
+static int ice_register_lag_handler(struct ice_lag *lag)
+{
+	struct device *dev = ice_pf_to_dev(lag->pf);
+	struct notifier_block *notif_blk;
+
+	notif_blk = &lag->notif_block;
+
+	if (!notif_blk->notifier_call) {
+		notif_blk->notifier_call = ice_lag_event_handler;
+		if (register_netdevice_notifier(notif_blk)) {
+			notif_blk->notifier_call = NULL;
+			dev_err(dev, "FAIL register LAG event handler!\n");
+			return -EINVAL;
+		}
+		dev_dbg(dev, "LAG event handler registered\n");
+	}
+	return 0;
+}
+
+/**
+ * ice_unregister_lag_handler - unregister LAG handler on netdev
+ * @lag: LAG struct
+ */
+static void ice_unregister_lag_handler(struct ice_lag *lag)
+{
+	struct device *dev = ice_pf_to_dev(lag->pf);
+	struct notifier_block *notif_blk;
+
+	notif_blk = &lag->notif_block;
+	if (notif_blk->notifier_call) {
+		unregister_netdevice_notifier(notif_blk);
+		dev_dbg(dev, "LAG event handler unregistered\n");
+	}
+}
+
+/**
+ * ice_init_lag - initialize support for LAG
+ * @pf: PF struct
+ *
+ * Alloc memory for LAG structs and initialize the elements.
+ * Memory will be freed in ice_deinit_lag
+ */
+int ice_init_lag(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_lag *lag;
+	struct ice_vsi *vsi;
+	int err;
+
+	pf->lag = kzalloc(sizeof(*lag), GFP_KERNEL);
+	if (!pf->lag)
+		return -ENOMEM;
+	lag = pf->lag;
+
+	vsi = ice_get_main_vsi(pf);
+	if (!vsi) {
+		dev_err(dev, "couldn't get main vsi, link aggregation init fail\n");
+		err = -EIO;
+		goto lag_error;
+	}
+
+	lag->pf = pf;
+	lag->netdev = vsi->netdev;
+	lag->role = ICE_LAG_NONE;
+	lag->bonded = false;
+	lag->peer_netdev = NULL;
+	lag->upper_netdev = NULL;
+	lag->notif_block.notifier_call = NULL;
+
+	err = ice_register_lag_handler(lag);
+	if (err) {
+		dev_warn(dev, "INIT LAG: Failed to register event handler\n");
+		goto lag_error;
+	}
+
+	ice_display_lag_info(lag);
+
+	dev_dbg(dev, "INIT LAG complete\n");
+	return 0;
+
+lag_error:
+	kfree(lag);
+	return err;
+}
+
+/**
+ * ice_deinit_lag - Clean up LAG
+ * @pf: PF struct
+ *
+ * Clean up kernel LAG info and free memory
+ * This function is meant to only be called on driver remove/shutdown
+ */
+void ice_deinit_lag(struct ice_pf *pf)
+{
+	struct ice_lag *lag;
+
+	lag = pf->lag;
+
+	if (!lag)
+		return;
+
+	if (lag->pf)
+		ice_unregister_lag_handler(lag);
+
+	if (lag->upper_netdev)
+		dev_put(lag->upper_netdev);
+
+	if (lag->peer_netdev)
+		dev_put(lag->peer_netdev);
+
+	kfree(lag);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
new file mode 100644
index 000000000000..6d4578ce9d17
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -0,0 +1,87 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2019, Intel Corporation. */
+
+#ifndef _ICE_LAG_H_
+#define _ICE_LAG_H_
+
+#include <linux/netdevice.h>
+
+/* LAG roles for netdev */
+enum ice_lag_role {
+	ICE_LAG_NONE,
+	ICE_LAG_PRIMARY,
+	ICE_LAG_BACKUP,
+	ICE_LAG_UNSET
+};
+
+struct ice_pf;
+
+/* LAG info struct */
+struct ice_lag {
+	struct ice_pf *pf; /* backlink to PF struct */
+	struct net_device *netdev; /* this PF's netdev */
+	struct net_device *peer_netdev;
+	struct net_device *upper_netdev; /* upper bonding netdev */
+	struct notifier_block notif_block;
+	u8 bonded:1; /* currently bonded */
+	u8 master:1; /* this is a master */
+	u8 handler:1; /* did we register a rx_netdev_handler */
+	/* each thing blocking bonding will increment this value by one.
+	 * If this value is zero, then bonding is allowed.
+	 */
+	u16 dis_lag;
+	u8 role;
+};
+
+int ice_init_lag(struct ice_pf *pf);
+void ice_deinit_lag(struct ice_pf *pf);
+rx_handler_result_t ice_lag_nop_handler(struct sk_buff **pskb);
+
+/**
+ * ice_disable_lag - increment LAG disable count
+ * @lag: LAG struct
+ */
+static inline void ice_disable_lag(struct ice_lag *lag)
+{
+	/* If LAG this PF is not already disabled, disable it */
+	rtnl_lock();
+	if (!netdev_is_rx_handler_busy(lag->netdev)) {
+		if (!netdev_rx_handler_register(lag->netdev,
+						ice_lag_nop_handler,
+						NULL))
+			lag->handler = true;
+	}
+	rtnl_unlock();
+	lag->dis_lag++;
+}
+
+/**
+ * ice_enable_lag - decrement disable count for a PF
+ * @lag: LAG struct
+ *
+ * Decrement the disable counter for a port, and if that count reaches
+ * zero, then remove the no-op Rx handler from that netdev
+ */
+static inline void ice_enable_lag(struct ice_lag *lag)
+{
+	if (lag->dis_lag)
+		lag->dis_lag--;
+	if (!lag->dis_lag && lag->handler) {
+		rtnl_lock();
+		netdev_rx_handler_unregister(lag->netdev);
+		rtnl_unlock();
+		lag->handler = false;
+	}
+}
+
+/**
+ * ice_is_lag_dis - is LAG disabled
+ * @lag: LAG struct
+ *
+ * Return true if bonding is disabled
+ */
+static inline bool ice_is_lag_dis(struct ice_lag *lag)
+{
+	return !!(lag->dis_lag);
+}
+#endif /* _ICE_LAG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f118d33e3a20..34fad02a653d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2353,6 +2353,8 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 unroll_get_qs:
 	ice_vsi_put_qs(vsi);
 unroll_vsi_alloc:
+	if (vsi_type == ICE_VSI_VF)
+		ice_enable_lag(pf->lag);
 	ice_vsi_clear(vsi);
 
 	return NULL;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5692c9db5829..0b120d9b5a83 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -44,6 +44,11 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type);
 
 static void ice_vsi_release_all(struct ice_pf *pf);
 
+bool netif_is_ice(struct net_device *dev)
+{
+	return dev && (dev->netdev_ops == &ice_netdev_ops);
+}
+
 /**
  * ice_get_tx_pending - returns number of Tx descriptors not processed
  * @ring: the ring of descriptors
@@ -4295,6 +4300,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		ice_cfg_lldp_mib_change(&pf->hw, true);
 	}
 
+	if (ice_init_lag(pf))
+		dev_warn(dev, "Failed to init link aggregation support\n");
+
 	/* print PCI link speed and width */
 	pcie_print_link_status(pf->pdev);
 
@@ -4420,6 +4428,7 @@ static void ice_remove(struct pci_dev *pdev)
 	if (test_bit(ICE_FLAG_FD_ENA, pf->flags))
 		ice_deinit_acl(pf);
 	mutex_destroy(&(&pf->hw)->fdir_fltr_lock);
+	ice_deinit_lag(pf);
 	if (!ice_is_safe_mode(pf))
 		ice_remove_arfs(pf);
 	ice_setup_mc_magic_wake(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index aa19eb6190f9..2614de4dd36f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1679,6 +1679,8 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 	if (!num_vfs) {
 		if (!pci_vfs_assigned(pdev)) {
 			ice_free_vfs(pf);
+			if (pf->lag)
+				ice_enable_lag(pf->lag);
 			return 0;
 		}
 
@@ -1690,6 +1692,8 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 	if (err)
 		return err;
 
+	if (pf->lag)
+		ice_disable_lag(pf->lag);
 	return num_vfs;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

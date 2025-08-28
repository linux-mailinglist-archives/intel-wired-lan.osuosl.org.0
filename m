Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1872EB3A6E5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 18:50:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B90BC82333;
	Thu, 28 Aug 2025 16:50:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k9ZxRHKBAOPQ; Thu, 28 Aug 2025 16:50:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13CC9825C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756399826;
	bh=Z/6jYU88+F6VBR94xaZQQOlEFVJBO0o9/6iWkdVrmDY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hUrmcj5RUczytMyaqjAg9Eix2fWgpKgb0olYlCETgeN282W3sTiU4AQ5L7L6Q18ZV
	 a2itYiLtKz8EDnaqz4xyreK8ijiBNXyXf40Qn0CZ+kjZvwkuaYQHCe37abImnxRZVF
	 k8P4LFu1boSEEax0Rr3/YhNb5LPTzqZvoRGeFXWRI2YVnlNRfskXb6OIKyK5lC6gRM
	 l/RF7zK0Lhu2L19ERloh4hY4XSQLM4sXRhQp8+SEDXe8TY5Myit5+N8YK1YzO66E+o
	 FFSitEuUe/jKkl0X97R+xog9jS7tmup3l1Gzi9PUQw/2WvHFLeUKRtfS06f70d8ptK
	 C4ReYgEnAJwGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13CC9825C6;
	Thu, 28 Aug 2025 16:50:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1ABAFB8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 16:50:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EC64A8223B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 16:50:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fzd3ibyPj4Ke for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 16:50:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A1208821A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1208821A3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A1208821A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 16:50:21 +0000 (UTC)
X-CSE-ConnectionGUID: 4l/JUT5iRGqGzLtJdNCQlw==
X-CSE-MsgGUID: cDd0mi7qTymgkgUHGVksbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="84078813"
X-IronPort-AV: E=Sophos;i="6.18,220,1751266800"; d="scan'208";a="84078813"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 09:50:21 -0700
X-CSE-ConnectionGUID: LBZfikOGS2KW4/plUglVNw==
X-CSE-MsgGUID: AYM8KnQdR5SaDJHjlSj3rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,220,1751266800"; d="scan'208";a="174501490"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa005.fm.intel.com with ESMTP; 28 Aug 2025 09:50:16 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org, sdf@fomichev.me,
 almasrymina@google.com, asml.silence@gmail.com, leitao@debian.org,
 kuniyu@google.com, jiri@resnulli.us, aleksandr.loktionov@intel.com,
 ivecera@redhat.com
Cc: linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Thu, 28 Aug 2025 18:43:45 +0200
Message-Id: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756399822; x=1787935822;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jE7lyzOXZ4dWFICx56Hf3bEu2z/u5t/dTauzf4cfoQo=;
 b=DrDgK/dpPmKzJ0e9xmn5l+pR9a4/HsJCUFyMmxVmNUfcVdnDHIK901Uh
 XFtnqrTrAfAIfJUNvaXTdHr9YPoZG8yGrqRDUWnwA9cPcyxHey/mlH/ps
 sATSpw0QPHkivZGVXcysvZqjDXkjr1LARuE+iGpWrepiLQwiAnNAFOCnW
 7+Oisa1Yhf2I5DdwNp0sWYBhBW0WlZHBH8Bs0tXw17FkKjwa5VEZ6KEvP
 WNWtv4wwrkQ+uXYk9k7zPwym0QVRFQ3jv0QCzhkZ0phNvlAZr71LN+sXs
 m/8zBi0kqtrPBqmplUfFPe+FWao0nU0Ov0ZDygMmqCUlZyVpWsAX/k6Ir
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DrDgK/dp
Subject: [Intel-wired-lan] [RFC PATCH v2] net: add net-device TX clock
 source selection framework
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for user-space control over network device transmit clock
sources through a new extended netdevice netlink interface.
A network device may support multiple TX clock sources (OCXO, SyncE
reference, external reference clocks) which are critical for
time-sensitive networking applications and synchronization protocols.

Key features:
- per-netdev TX clock source selection via netlink commands
- clock sharing between PFs on same PCI device with independent state,
  sharing detection using PCI Device Serial Numbers (DSN)
- defined clock types enums
- Notification system for clock state changes

Netlink interface
- tx-clk-get: Query available clock sources and current state
- tx-clk-set: Switch to specified clock source
- tx-clk-change-ntf: Notifications for clock state changes

Kconfig option NET_TX_CLK:
- optional feature + user documentation

Intel's ice driver integration:
- support for OCXO, EXT_REF, and SYNCE clock types
- initialization and cleanup with individual unregistration
- per-PF clock state management

Check the state:
$ <ynl> --spec Documentation/netlink/specs/netdev.yaml \
	--do tx-clk-get --json '{"ifindex":8}'
[{'active': True, 'ifindex': 8, 'type': 'ocxo'},
 {'ifindex': 8, 'type': 'ext-ref'},
 {'ifindex': 8, 'type': 'synce'}]

-> Currently using OCXO (shows `'active': True`)

Switch to External Reference:
$ <ynl> --spec Documentation/netlink/specs/netdev.yaml \
	--do tx-clk-set --json '{"ifindex":8, "type":"ext-ref"}'

Verify the change:
$ <ynl> --spec Documentation/netlink/specs/netdev.yaml \
	--do tx-clk-get --json '{"ifindex":8}'
[{'ifindex': 8, 'type': 'ocxo'},
 {'active': True, 'ifindex': 8, 'type': 'ext-ref'},
 {'ifindex': 8, 'type': 'synce'}]

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2:
- use netlink instead of sysfs
- defined clok type enums
---
 Documentation/netlink/specs/netdev.yaml     |  61 +++++
 drivers/net/ethernet/intel/ice/Makefile     |   1 +
 drivers/net/ethernet/intel/ice/ice.h        |   5 +
 drivers/net/ethernet/intel/ice/ice_lib.c    |   6 +
 drivers/net/ethernet/intel/ice/ice_main.c   |   6 +
 drivers/net/ethernet/intel/ice/ice_tx_clk.c | 100 +++++++
 drivers/net/ethernet/intel/ice/ice_tx_clk.h |  17 ++
 include/linux/netdev_tx_clk.h               |  92 +++++++
 include/linux/netdevice.h                   |   4 +
 include/uapi/linux/netdev.h                 |  18 ++
 net/Kconfig                                 |  21 ++
 net/core/Makefile                           |   1 +
 net/core/netdev-genl-gen.c                  |  37 +++
 net/core/netdev-genl-gen.h                  |   4 +
 net/core/netdev-genl.c                      | 287 ++++++++++++++++++++
 net/core/tx_clk.c                           | 218 +++++++++++++++
 net/core/tx_clk.h                           |  36 +++
 tools/include/uapi/linux/netdev.h           |  18 ++
 18 files changed, 932 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tx_clk.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tx_clk.h
 create mode 100644 include/linux/netdev_tx_clk.h
 create mode 100644 net/core/tx_clk.c
 create mode 100644 net/core/tx_clk.h

diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
index c035dc0f64fd..450ce39a4527 100644
--- a/Documentation/netlink/specs/netdev.yaml
+++ b/Documentation/netlink/specs/netdev.yaml
@@ -89,6 +89,10 @@ definitions:
     name: napi-threaded
     type: enum
     entries: [disabled, enabled]
+  -
+    name: tx-clk-type
+    type: enum
+    entries: [ocxo, ext-ref, synce]
 
 attribute-sets:
   -
@@ -561,6 +565,25 @@ attribute-sets:
         type: u32
         checks:
           min: 1
+  -
+    name: tx-clk
+    doc: netdev TX clock source configuration and status
+    attributes:
+      -
+        name: ifindex
+        doc: ifindex of the netdevice
+        type: u32
+        checks:
+          min: 1
+      -
+        name: type
+        doc: type of the TX clock source
+        type: u32
+        enum: tx-clk-type
+      -
+        name: active
+        doc: present only when this clock source is currently active
+        type: flag
 
 operations:
   list:
@@ -771,6 +794,44 @@ operations:
         reply:
           attributes:
             - id
+    -
+      name: tx-clk-get
+      doc: get information about TX clock sources for a device.
+      attribute-set: tx-clk
+      do:
+        request:
+          attributes:
+            - ifindex
+        reply: &tx-clk-get-reply
+          attributes:
+            - ifindex
+            - type
+            - active
+      dump:
+        request:
+          attributes:
+            - ifindex
+        reply: *tx-clk-get-reply
+    -
+      name: tx-clk-set
+      doc: set the active TX clock source for a device.
+      attribute-set: tx-clk
+      flags: [admin-perm]
+      do:
+        request:
+          attributes:
+            - ifindex
+            - type
+        reply:
+          attributes:
+            - ifindex
+            - type
+            - active
+    -
+      name: tx-clk-change-ntf
+      doc: notification about TX clock source being changed.
+      notify: tx-clk-get
+      mcgrp: mgmt
 
 kernel-family:
   headers: ["net/netdev_netlink.h"]
diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 5d5e89c5ccfa..d1997b370ae1 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -61,3 +61,4 @@ ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
 ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o ice_eswitch_br.o
 ice-$(CONFIG_GNSS) += ice_gnss.o
 ice-$(CONFIG_ICE_HWMON) += ice_hwmon.o
+ice-$(CONFIG_NET_TX_CLK) += ice_tx_clk.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index b413bd066fab..e8ec0528d73b 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -205,6 +205,7 @@ enum ice_feature {
 	ICE_F_SRIOV_LAG,
 	ICE_F_SRIOV_AA_LAG,
 	ICE_F_MBX_LIMIT,
+	ICE_F_TX_CLK,
 	ICE_F_MAX
 };
 
@@ -661,6 +662,10 @@ struct ice_pf {
 	struct device *hwmon_dev;
 	struct ice_health health_reporters;
 	struct iidc_rdma_core_dev_info *cdev_info;
+#ifdef CONFIG_NET_TX_CLK
+	void *tx_clk_data;
+	enum netdev_tx_clk_type tx_clk_active;
+#endif
 
 	u8 num_quanta_prof_used;
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 8fff6c87fb61..0202e7cbe87c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3942,6 +3942,12 @@ void ice_init_feature_support(struct ice_pf *pf)
 		if (ice_gnss_is_module_present(&pf->hw))
 			ice_set_feature_support(pf, ICE_F_GNSS);
 		break;
+	case ICE_DEV_ID_E825C_BACKPLANE:
+	case ICE_DEV_ID_E825C_QSFP:
+	case ICE_DEV_ID_E825C_SFP:
+	case ICE_DEV_ID_E825C_SGMII:
+		ice_set_feature_support(pf, ICE_F_TX_CLK);
+		break;
 	default:
 		break;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 848d5b512319..44eb58618e05 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -27,6 +27,7 @@
 #include "ice_tc_lib.h"
 #include "ice_vsi_vlan_ops.h"
 #include <net/xdp_sock_drv.h>
+#include "ice_tx_clk.h"
 
 #define DRV_SUMMARY	"Intel(R) Ethernet Connection E800 Series Linux Driver"
 static const char ice_driver_string[] = DRV_SUMMARY;
@@ -4824,6 +4825,9 @@ static void ice_init_features(struct ice_pf *pf)
 	if (ice_init_lag(pf))
 		dev_warn(dev, "Failed to init link aggregation support\n");
 
+	if (ice_is_feature_supported(pf, ICE_F_TX_CLK))
+		ice_tx_clk_init(pf);
+
 	ice_hwmon_init(pf);
 }
 
@@ -4844,6 +4848,8 @@ static void ice_deinit_features(struct ice_pf *pf)
 		ice_dpll_deinit(pf);
 	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_SWITCHDEV)
 		xa_destroy(&pf->eswitch.reprs);
+	if (ice_is_feature_supported(pf, ICE_F_TX_CLK))
+		ice_tx_clk_deinit(pf);
 }
 
 static void ice_init_wakeup(struct ice_pf *pf)
diff --git a/drivers/net/ethernet/intel/ice/ice_tx_clk.c b/drivers/net/ethernet/intel/ice/ice_tx_clk.c
new file mode 100644
index 000000000000..006310eefb8b
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_tx_clk.c
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Copyright (C) 2025, Intel Corporation. */
+
+#include <linux/netdev_tx_clk.h>
+#include "ice_tx_clk.h"
+
+struct ice_tx_clk_data {
+	struct ice_pf *pf;
+	enum netdev_tx_clk_type type;
+};
+
+static const struct netdev_tx_clk_ops ice_tx_clk_ops;
+
+static int ice_tx_clk_enable(void *priv_data)
+{
+	struct ice_tx_clk_data *clk_data = priv_data;
+	struct ice_pf *pf = clk_data->pf;
+	enum netdev_tx_clk_type type;
+
+	type = clk_data->type;
+	if (type < NETDEV_TX_CLK_TYPE_OCXO || type > NETDEV_TX_CLK_TYPE_SYNCE) {
+		dev_err(ice_pf_to_dev(pf), "Invalid clock type: %d\n", type);
+		return -EINVAL;
+	}
+	if (pf->tx_clk_active != type) {
+		dev_dbg(ice_pf_to_dev(pf), "PF%d switching from clock %d to clock %d\n",
+			pf->hw.pf_id, pf->tx_clk_active, type);
+		pf->tx_clk_active = type;
+		/* TODO: add TX clock switching logic */
+	}
+
+	return 0;
+}
+
+static int ice_tx_clk_is_enabled(void *priv_data)
+{
+	struct ice_tx_clk_data *clk_data = priv_data;
+	struct ice_pf *pf = clk_data->pf;
+	enum netdev_tx_clk_type type =
+		clk_data->type;
+
+	return (pf->tx_clk_active == type) ? 1 : 0;
+}
+
+static const struct netdev_tx_clk_ops ice_tx_clk_ops = {
+	.enable = ice_tx_clk_enable,
+	.is_enabled = ice_tx_clk_is_enabled,
+};
+
+void ice_tx_clk_init(struct ice_pf *pf)
+{
+	struct ice_tx_clk_data *clk_data[NETDEV_TX_CLK_TYPE_SYNCE + 1];
+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+	int i, ret;
+
+	if (!vsi || !vsi->netdev)
+		return;
+
+	for (i = NETDEV_TX_CLK_TYPE_OCXO; i <= NETDEV_TX_CLK_TYPE_SYNCE; i++) {
+		clk_data[i] = kzalloc(sizeof(*clk_data[i]), GFP_KERNEL);
+		if (!clk_data[i]) {
+			while (--i >= 0)
+				kfree(clk_data[i]);
+			return;
+		}
+
+		clk_data[i]->pf = pf;
+		clk_data[i]->type = i;
+	}
+
+	pf->tx_clk_active = NETDEV_TX_CLK_TYPE_OCXO;
+
+	for (i = NETDEV_TX_CLK_TYPE_OCXO; i <= NETDEV_TX_CLK_TYPE_SYNCE; i++) {
+		ret = netdev_tx_clk_register(vsi->netdev, i,
+					     &ice_tx_clk_ops, clk_data[i]);
+		if (ret) {
+			dev_err(ice_pf_to_dev(pf),
+				"Failed to register clock type %d: %d\n",
+				i, ret);
+		}
+	}
+
+	dev_dbg(ice_pf_to_dev(pf), "ICE TX clocks initialized for PF%d (default: OCXO)\n",
+		pf->hw.pf_id);
+}
+
+void ice_tx_clk_deinit(struct ice_pf *pf)
+{
+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+	int i;
+
+	if (!vsi || !vsi->netdev)
+		return;
+
+	for (i = NETDEV_TX_CLK_TYPE_OCXO; i <= NETDEV_TX_CLK_TYPE_SYNCE; i++)
+		netdev_tx_clk_unregister(vsi->netdev, i);
+
+	dev_dbg(ice_pf_to_dev(pf), "ICE TX clocks deinitialized for PF%d\n",
+		pf->hw.pf_id);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_tx_clk.h b/drivers/net/ethernet/intel/ice/ice_tx_clk.h
new file mode 100644
index 000000000000..02ede41dfefa
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_tx_clk.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* Copyright (C) 2025, Intel Corporation. */
+
+#ifndef _ICE_TX_CLK_H_
+#define _ICE_TX_CLK_H_
+
+#include "ice.h"
+
+#if IS_ENABLED(CONFIG_NET_TX_CLK)
+void ice_tx_clk_init(struct ice_pf *pf);
+void ice_tx_clk_deinit(struct ice_pf *pf);
+#else
+static inline void ice_tx_clk_init(struct ice_pf *pf) { }
+static inline void ice_tx_clk_deinit(struct ice_pf *pf) { }
+#endif
+
+#endif /* _ICE_TX_CLK_H_ */
diff --git a/include/linux/netdev_tx_clk.h b/include/linux/netdev_tx_clk.h
new file mode 100644
index 000000000000..7a8ed832d052
--- /dev/null
+++ b/include/linux/netdev_tx_clk.h
@@ -0,0 +1,92 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * netdev_tx_clk.h - allow net_device TX clock control
+ * Author: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
+ */
+
+#ifndef __NETDEV_TX_CLK_H
+#define __NETDEV_TX_CLK_H
+
+#include <linux/netdevice.h>
+#include <linux/pci.h>
+#include <linux/list.h>
+#include <linux/mutex.h>
+#include <linux/kref.h>
+#include <uapi/linux/netdev.h>
+
+/**
+ * struct netdev_tx_clk_ops - TX clock operations
+ * @enable: switch to this clock
+ * @is_enabled: check if this clock is currently active for this netdev
+ *
+ * Note: Multiple netdevs can share the same physical clock but control
+ * it independently. The same clock may be active for some netdevs and
+ * inactive for others.
+ */
+struct netdev_tx_clk_ops {
+	int (*enable)(void *priv_data);
+	int (*is_enabled)(void *priv_data);
+};
+
+#if IS_ENABLED(CONFIG_NET_TX_CLK)
+/**
+ * netdev_tx_clk_register - Register a TX clock for a network device
+ * @ndev: Network device
+ * @clk_type: Type of clock (OCXO, SYNCE, EXT_REF)
+ * @ops: Clock operations
+ * @priv_data: Private data passed to operations
+ *
+ * This function registers a TX clock that can be shared across multiple
+ * network functions on the same PCI device. The system generates a unique
+ * clock ID based on PCI Device Serial Number and clock type.
+ *
+ * Clock sharing behavior:
+ * - Physical clock resources are shared between PFs on the same PCI device
+ * - Each PF maintains independent logical state (enabled/disabled)
+ * - The @priv_data allows per-PF state tracking while sharing hardware
+ *
+ * Returns: 0 on success, negative error code on failure
+ */
+int netdev_tx_clk_register(struct net_device *ndev,
+			   enum netdev_tx_clk_type clk_type,
+			   const struct netdev_tx_clk_ops *ops,
+			   void *priv_data);
+
+void netdev_tx_clk_unregister(struct net_device *ndev,
+			      enum netdev_tx_clk_type clk_type);
+
+/* Helper functions for netdev-genl.c */
+struct netdev_tx_clk_data *netdev_get_tx_clk_data(struct net_device *ndev);
+struct netdev_tx_clk_ref *
+netdev_find_tx_clk_ref(struct netdev_tx_clk_data *data,
+		       enum netdev_tx_clk_type clk_type);
+
+#else
+static inline int netdev_tx_clk_register(struct net_device *ndev,
+					 enum netdev_tx_clk_type clk_type,
+					 const struct netdev_tx_clk_ops *ops,
+					 void *priv_data)
+{
+	return 0;
+}
+
+static inline void netdev_tx_clk_unregister(struct net_device *ndev,
+					    enum netdev_tx_clk_type clk_type)
+{ }
+
+static inline struct netdev_tx_clk_data *
+netdev_get_tx_clk_data(struct net_device *ndev)
+{
+	return NULL;
+}
+
+static inline struct netdev_tx_clk_ref *
+netdev_find_tx_clk_ref(struct netdev_tx_clk_data *data,
+		       enum netdev_tx_clk_type clk_type,
+		       u32 user_clk_id)
+{
+	return NULL;
+}
+
+#endif
+#endif /* __NETDEV_TX_CLK_H */
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index f3a3b761abfb..0971adfd58b5 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -84,6 +84,7 @@ struct xdp_md;
 struct ethtool_netdev_state;
 struct phy_link_topology;
 struct hwtstamp_provider;
+struct netdev_tx_clk_data;
 
 typedef u32 xdp_features_t;
 
@@ -2555,6 +2556,9 @@ struct net_device {
 
 	struct hwtstamp_provider __rcu	*hwprov;
 
+#if IS_ENABLED(CONFIG_NET_TX_CLK)
+	struct netdev_tx_clk_data *tx_clk_data;
+#endif
 	u8			priv[] ____cacheline_aligned
 				       __counted_by(priv_len);
 } ____cacheline_aligned;
diff --git a/include/uapi/linux/netdev.h b/include/uapi/linux/netdev.h
index 48eb49aa03d4..e7ff67474246 100644
--- a/include/uapi/linux/netdev.h
+++ b/include/uapi/linux/netdev.h
@@ -82,6 +82,12 @@ enum netdev_napi_threaded {
 	NETDEV_NAPI_THREADED_ENABLED,
 };
 
+enum netdev_tx_clk_type {
+	NETDEV_TX_CLK_TYPE_OCXO,
+	NETDEV_TX_CLK_TYPE_EXT_REF,
+	NETDEV_TX_CLK_TYPE_SYNCE,
+};
+
 enum {
 	NETDEV_A_DEV_IFINDEX = 1,
 	NETDEV_A_DEV_PAD,
@@ -210,6 +216,15 @@ enum {
 	NETDEV_A_DMABUF_MAX = (__NETDEV_A_DMABUF_MAX - 1)
 };
 
+enum {
+	NETDEV_A_TX_CLK_IFINDEX = 1,
+	NETDEV_A_TX_CLK_TYPE,
+	NETDEV_A_TX_CLK_ACTIVE,
+
+	__NETDEV_A_TX_CLK_MAX,
+	NETDEV_A_TX_CLK_MAX = (__NETDEV_A_TX_CLK_MAX - 1)
+};
+
 enum {
 	NETDEV_CMD_DEV_GET = 1,
 	NETDEV_CMD_DEV_ADD_NTF,
@@ -226,6 +241,9 @@ enum {
 	NETDEV_CMD_BIND_RX,
 	NETDEV_CMD_NAPI_SET,
 	NETDEV_CMD_BIND_TX,
+	NETDEV_CMD_TX_CLK_GET,
+	NETDEV_CMD_TX_CLK_SET,
+	NETDEV_CMD_TX_CLK_CHANGE_NTF,
 
 	__NETDEV_CMD_MAX,
 	NETDEV_CMD_MAX = (__NETDEV_CMD_MAX - 1)
diff --git a/net/Kconfig b/net/Kconfig
index d5865cf19799..9657bc2fb7a2 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -541,4 +541,25 @@ config NET_TEST
 
 	  If unsure, say N.
 
+config NET_TX_CLK
+	bool "Control over source of TX clock per network device"
+	depends on NET
+	default n
+	help
+	  This feature enables per-network-port control over TX clock sources
+	  in networking hardware through a netlink interface. Network devices
+	  may support multiple TX clock sources such as OCXOs (Oven
+	  Controlled Crystal Oscillators), external reference signals, or
+	  SyncE (Synchronous Ethernet) recovered clocks.
+
+	  When enabled, supported network devices can be controlled via the
+	  netdev netlink family using tx-clk-get, tx-clk-set, and tx-clk-dump
+	  commands.
+
+	  This could be useful for applications requiring precise timing
+	  control, such as time-sensitive networking (TSN), synchronization
+	  protocols, and PTP (Precision Time Protocol) implementations.
+
+	  If unsure, say N.
+
 endif   # if NET
diff --git a/net/core/Makefile b/net/core/Makefile
index b2a76ce33932..7e4031813b18 100644
--- a/net/core/Makefile
+++ b/net/core/Makefile
@@ -47,3 +47,4 @@ obj-$(CONFIG_NET_TEST) += net_test.o
 obj-$(CONFIG_NET_DEVMEM) += devmem.o
 obj-$(CONFIG_DEBUG_NET) += lock_debug.o
 obj-$(CONFIG_FAIL_SKB_REALLOC) += skb_fault_injection.o
+obj-$(CONFIG_NET_TX_CLK) += tx_clk.o
diff --git a/net/core/netdev-genl-gen.c b/net/core/netdev-genl-gen.c
index e9a2a6f26cb7..72e822b9b005 100644
--- a/net/core/netdev-genl-gen.c
+++ b/net/core/netdev-genl-gen.c
@@ -106,6 +106,22 @@ static const struct nla_policy netdev_bind_tx_nl_policy[NETDEV_A_DMABUF_FD + 1]
 	[NETDEV_A_DMABUF_FD] = { .type = NLA_U32, },
 };
 
+/* NETDEV_CMD_TX_CLK_GET - do */
+static const struct nla_policy netdev_tx_clk_get_do_nl_policy[NETDEV_A_TX_CLK_IFINDEX + 1] = {
+	[NETDEV_A_TX_CLK_IFINDEX] = NLA_POLICY_MIN(NLA_U32, 1),
+};
+
+/* NETDEV_CMD_TX_CLK_GET - dump */
+static const struct nla_policy netdev_tx_clk_get_dump_nl_policy[NETDEV_A_TX_CLK_IFINDEX + 1] = {
+	[NETDEV_A_TX_CLK_IFINDEX] = NLA_POLICY_MIN(NLA_U32, 1),
+};
+
+/* NETDEV_CMD_TX_CLK_SET - do */
+static const struct nla_policy netdev_tx_clk_set_nl_policy[NETDEV_A_TX_CLK_TYPE + 1] = {
+	[NETDEV_A_TX_CLK_IFINDEX] = NLA_POLICY_MIN(NLA_U32, 1),
+	[NETDEV_A_TX_CLK_TYPE] = NLA_POLICY_MAX(NLA_U32, 2),
+};
+
 /* Ops table for netdev */
 static const struct genl_split_ops netdev_nl_ops[] = {
 	{
@@ -204,6 +220,27 @@ static const struct genl_split_ops netdev_nl_ops[] = {
 		.maxattr	= NETDEV_A_DMABUF_FD,
 		.flags		= GENL_CMD_CAP_DO,
 	},
+	{
+		.cmd		= NETDEV_CMD_TX_CLK_GET,
+		.doit		= netdev_nl_tx_clk_get_doit,
+		.policy		= netdev_tx_clk_get_do_nl_policy,
+		.maxattr	= NETDEV_A_TX_CLK_IFINDEX,
+		.flags		= GENL_CMD_CAP_DO,
+	},
+	{
+		.cmd		= NETDEV_CMD_TX_CLK_GET,
+		.dumpit		= netdev_nl_tx_clk_get_dumpit,
+		.policy		= netdev_tx_clk_get_dump_nl_policy,
+		.maxattr	= NETDEV_A_TX_CLK_IFINDEX,
+		.flags		= GENL_CMD_CAP_DUMP,
+	},
+	{
+		.cmd		= NETDEV_CMD_TX_CLK_SET,
+		.doit		= netdev_nl_tx_clk_set_doit,
+		.policy		= netdev_tx_clk_set_nl_policy,
+		.maxattr	= NETDEV_A_TX_CLK_TYPE,
+		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
+	},
 };
 
 static const struct genl_multicast_group netdev_nl_mcgrps[] = {
diff --git a/net/core/netdev-genl-gen.h b/net/core/netdev-genl-gen.h
index cf3fad74511f..db524e7b82d7 100644
--- a/net/core/netdev-genl-gen.h
+++ b/net/core/netdev-genl-gen.h
@@ -35,6 +35,10 @@ int netdev_nl_qstats_get_dumpit(struct sk_buff *skb,
 int netdev_nl_bind_rx_doit(struct sk_buff *skb, struct genl_info *info);
 int netdev_nl_napi_set_doit(struct sk_buff *skb, struct genl_info *info);
 int netdev_nl_bind_tx_doit(struct sk_buff *skb, struct genl_info *info);
+int netdev_nl_tx_clk_get_doit(struct sk_buff *skb, struct genl_info *info);
+int netdev_nl_tx_clk_get_dumpit(struct sk_buff *skb,
+				struct netlink_callback *cb);
+int netdev_nl_tx_clk_set_doit(struct sk_buff *skb, struct genl_info *info);
 
 enum {
 	NETDEV_NLGRP_MGMT,
diff --git a/net/core/netdev-genl.c b/net/core/netdev-genl.c
index 6314eb7bdf69..d470003dd7e5 100644
--- a/net/core/netdev-genl.c
+++ b/net/core/netdev-genl.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <linux/netdevice.h>
+#include <linux/netdev_tx_clk.h>
 #include <linux/notifier.h>
 #include <linux/rtnetlink.h>
 #include <net/busy_poll.h>
@@ -15,6 +16,7 @@
 #include "dev.h"
 #include "devmem.h"
 #include "netdev-genl-gen.h"
+#include "tx_clk.h"
 
 struct netdev_nl_dump_ctx {
 	unsigned long	ifindex;
@@ -1136,4 +1138,289 @@ static int __init netdev_genl_init(void)
 	return err;
 }
 
+#ifdef CONFIG_NET_TX_CLK
+static void netdev_tx_clk_notify_change(struct net_device *ndev,
+					enum netdev_tx_clk_type clk_type,
+					bool active)
+{
+	struct sk_buff *msg;
+	void *hdr;
+
+	msg = genlmsg_new(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
+	if (!msg)
+		return;
+
+	hdr = genlmsg_put(msg, 0, 0, &netdev_nl_family, 0,
+			  NETDEV_CMD_TX_CLK_CHANGE_NTF);
+	if (!hdr)
+		goto err_free_msg;
+
+	if (nla_put_u32(msg, NETDEV_A_TX_CLK_IFINDEX, ndev->ifindex) ||
+	    nla_put_u32(msg, NETDEV_A_TX_CLK_TYPE, clk_type))
+		goto err_cancel_msg;
+
+	if (active) {
+		if (nla_put_flag(msg, NETDEV_A_TX_CLK_ACTIVE))
+			goto err_cancel_msg;
+	}
+
+	genlmsg_end(msg, hdr);
+	genlmsg_multicast(&netdev_nl_family, msg, 0, NETDEV_NLGRP_MGMT,
+			  GFP_KERNEL);
+	return;
+
+err_cancel_msg:
+	genlmsg_cancel(msg, hdr);
+err_free_msg:
+	nlmsg_free(msg);
+}
+
+static int netdev_nl_tx_clk_dump_one(struct sk_buff *rsp,
+				     struct net_device *netdev,
+				     struct netdev_tx_clk_ref *ref,
+				     const struct genl_info *info)
+{
+	struct netdev_tx_clk_global_entry *entry = ref->global_entry;
+	void *hdr;
+
+	hdr = genlmsg_iput(rsp, info);
+	if (!hdr)
+		return -EMSGSIZE;
+
+	if (nla_put_u32(rsp, NETDEV_A_TX_CLK_IFINDEX, netdev->ifindex) ||
+	    nla_put_u32(rsp, NETDEV_A_TX_CLK_TYPE, entry->key.clk_type)) {
+		genlmsg_cancel(rsp, hdr);
+		return -EMSGSIZE;
+	}
+
+	if (entry->ops && entry->ops->is_enabled) {
+		int enabled = entry->ops->is_enabled(ref->priv_data);
+
+		if (enabled > 0) {
+			if (nla_put_flag(rsp, NETDEV_A_TX_CLK_ACTIVE)) {
+				genlmsg_cancel(rsp, hdr);
+				return -EMSGSIZE;
+			}
+		} else if (enabled < 0) {
+			genlmsg_cancel(rsp, hdr);
+			return -EIO;
+		}
+	}
+
+	genlmsg_end(rsp, hdr);
+
+	return 0;
+}
+
+/**
+ * netdev_nl_tx_clk_get_doit - Handle TX clock get request for a device
+ * Returns all TX clock sources for the specified device.
+ */
+int netdev_nl_tx_clk_get_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	struct netdev_tx_clk_data *clk_data;
+	struct netdev_tx_clk_ref *ref;
+	netdevice_tracker dev_tracker;
+	struct net_device *netdev;
+	u32 ifindex;
+	int err = 0;
+
+	if (!info->attrs[NETDEV_A_TX_CLK_IFINDEX]) {
+		NL_SET_ERR_MSG(info->extack, "Missing device interface index");
+		return -EINVAL;
+	}
+
+	ifindex = nla_get_u32(info->attrs[NETDEV_A_TX_CLK_IFINDEX]);
+	netdev = netdev_get_by_index(genl_info_net(info), ifindex, &dev_tracker,
+				     GFP_KERNEL);
+	if (!netdev) {
+		NL_SET_ERR_MSG_FMT(info->extack, "Device with index %u not found", ifindex);
+		return -ENODEV;
+	}
+
+	clk_data = netdev_get_tx_clk_data(netdev);
+	if (!clk_data) {
+		NL_SET_ERR_MSG(info->extack, "Device does not support TX clock control");
+		err = -EOPNOTSUPP;
+		goto err_put_dev;
+	}
+
+	if (!mutex_trylock(&clk_data->lock)) {
+		NL_SET_ERR_MSG(info->extack, "Device TX clock data temporarily unavailable");
+		err = -EBUSY;
+		goto err_put_dev;
+	}
+
+	list_for_each_entry(ref, &clk_data->clk_refs, netdev_list) {
+		struct sk_buff *rsp;
+
+		rsp = genlmsg_new(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
+		if (!rsp) {
+			err = -ENOMEM;
+			break;
+		}
+
+		err = netdev_nl_tx_clk_dump_one(rsp, netdev, ref, info);
+		if (err) {
+			nlmsg_free(rsp);
+			if (err == -EIO)
+				NL_SET_ERR_MSG(info->extack, "Failed to query TX clock state");
+			break;
+		}
+
+		err = genlmsg_unicast(genl_info_net(info), rsp,
+				      info->snd_portid);
+		if (err)
+			break;
+	}
+
+	mutex_unlock(&clk_data->lock);
+
+err_put_dev:
+	netdev_put(netdev, &dev_tracker);
+	return err;
+}
+
+/**
+ * netdev_nl_tx_clk_get_dumpit - Handle TX clock dump request
+ */
+int netdev_nl_tx_clk_get_dumpit(struct sk_buff *skb,
+				struct netlink_callback *cb)
+{
+	struct netdev_nl_dump_ctx *ctx = netdev_dump_ctx(cb);
+	struct net *net = sock_net(skb->sk);
+	struct netdev_tx_clk_data *clk_data;
+	struct netdev_tx_clk_ref *ref;
+	int err = 0;
+
+	for_each_netdev_lock_scoped(net, netdev, ctx->ifindex) {
+		clk_data = netdev_get_tx_clk_data(netdev);
+		if (!clk_data)
+			continue;
+		if (!mutex_trylock(&clk_data->lock))
+			continue;
+		list_for_each_entry(ref, &clk_data->clk_refs, netdev_list)
+			err = netdev_nl_tx_clk_dump_one(skb, netdev,
+							ref,
+							genl_info_dump(cb));
+		mutex_unlock(&clk_data->lock);
+		if (err)
+			break;
+	}
+
+	return err;
+}
+
+/**
+ * netdev_nl_tx_clk_set_doit - Handle TX clock set request
+ */
+int netdev_nl_tx_clk_set_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	struct netdev_tx_clk_ref *ref, *old_active_ref = NULL;
+	struct netdev_tx_clk_data *clk_data;
+	enum netdev_tx_clk_type clk_type;
+	netdevice_tracker dev_tracker;
+	struct net_device *netdev;
+	u32 ifindex;
+	int err;
+
+	if (!info->attrs[NETDEV_A_TX_CLK_IFINDEX] ||
+	    !info->attrs[NETDEV_A_TX_CLK_TYPE]) {
+		NL_SET_ERR_MSG(info->extack, "Missing required TX clock parameters");
+		return -EINVAL;
+	}
+
+	ifindex = nla_get_u32(info->attrs[NETDEV_A_TX_CLK_IFINDEX]);
+	clk_type = nla_get_u32(info->attrs[NETDEV_A_TX_CLK_TYPE]);
+
+	netdev = netdev_get_by_index(genl_info_net(info), ifindex, &dev_tracker,
+				     GFP_KERNEL);
+	if (!netdev) {
+		NL_SET_ERR_MSG_FMT(info->extack, "Device with index %u not found", ifindex);
+		return -ENODEV;
+	}
+
+	clk_data = netdev_get_tx_clk_data(netdev);
+	if (!clk_data) {
+		NL_SET_ERR_MSG(info->extack, "Device does not support TX clock control");
+		err = -EOPNOTSUPP;
+		goto err_put_dev;
+	}
+
+	if (!mutex_trylock(&clk_data->lock)) {
+		NL_SET_ERR_MSG(info->extack, "Device TX clock data temporarily unavailable");
+		err = -EBUSY;
+		goto err_put_dev;
+	}
+
+	/* Find currently active clock source before making changes */
+	list_for_each_entry(ref, &clk_data->clk_refs, netdev_list) {
+		struct netdev_tx_clk_global_entry *entry = ref->global_entry;
+
+		if (!entry || !entry->ops || !entry->ops->is_enabled)
+			continue;
+		if (entry->ops->is_enabled(ref->priv_data) > 0) {
+			old_active_ref = ref;
+			break;
+		}
+	}
+
+	ref = netdev_find_tx_clk_ref(clk_data, clk_type);
+	if (!ref) {
+		NL_SET_ERR_MSG_FMT(info->extack, "TX clock source (type=%u) not found",
+				   clk_type);
+		err = -ENOENT;
+		goto err_unlock;
+	}
+
+	if (old_active_ref && old_active_ref == ref) {
+		mutex_unlock(&clk_data->lock);
+		netdev_put(netdev, &dev_tracker);
+		return 0;
+	}
+
+	err = ref->global_entry->ops->enable(ref->priv_data);
+	if (err) {
+		NL_SET_ERR_MSG_FMT(info->extack, "Failed to enable TX clock source: %d", err);
+		goto err_unlock;
+	}
+
+	mutex_unlock(&clk_data->lock);
+	if (old_active_ref) {
+		struct netdev_tx_clk_global_entry *old_entry =
+			old_active_ref->global_entry;
+
+		netdev_tx_clk_notify_change(netdev, old_entry->key.clk_type,
+					    false);
+	}
+	netdev_tx_clk_notify_change(netdev, clk_type, true);
+	netdev_put(netdev, &dev_tracker);
+
+	return 0;
+err_unlock:
+	mutex_unlock(&clk_data->lock);
+err_put_dev:
+	netdev_put(netdev, &dev_tracker);
+	return err;
+}
+
+#else /* CONFIG_NET_TX_CLK */
+int netdev_nl_tx_clk_get_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	return -EOPNOTSUPP;
+}
+
+int netdev_nl_tx_clk_get_dumpit(struct sk_buff *skb,
+				struct netlink_callback *cb)
+{
+	return -EOPNOTSUPP;
+}
+
+int netdev_nl_tx_clk_set_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	return -EOPNOTSUPP;
+}
+
+#endif /* CONFIG_NET_TX_CLK */
+
 subsys_initcall(netdev_genl_init);
diff --git a/net/core/tx_clk.c b/net/core/tx_clk.c
new file mode 100644
index 000000000000..587b876d7c2c
--- /dev/null
+++ b/net/core/tx_clk.c
@@ -0,0 +1,218 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <linux/netdevice.h>
+#include <linux/netdev_tx_clk.h>
+#include <linux/mutex.h>
+#include <linux/list.h>
+#include <linux/pci.h>
+#include <linux/kref.h>
+#include <linux/slab.h>
+#include <linux/jhash.h>
+#include <linux/jhash.h>
+#include "tx_clk.h"
+
+/* Global TX clock registry protected by mutex */
+static DEFINE_MUTEX(netdev_tx_clk_registry_lock);
+static LIST_HEAD(netdev_tx_clk_registry);
+
+struct netdev_tx_clk_data *netdev_get_tx_clk_data(struct net_device *ndev)
+{
+	return ndev->tx_clk_data;
+}
+
+static struct netdev_tx_clk_key
+netdev_tx_clk_generate_key(struct pci_dev *pci_dev,
+			   enum netdev_tx_clk_type clk_type)
+{
+	struct netdev_tx_clk_key key = {0};
+
+	key.device_serial = pci_get_dsn(pci_dev);
+	key.clk_type = clk_type;
+
+	return key;
+}
+
+static bool netdev_tx_clk_key_equal(const struct netdev_tx_clk_key *a,
+				    const struct netdev_tx_clk_key *b)
+{
+	return (a->device_serial == b->device_serial &&
+		a->clk_type == b->clk_type);
+}
+
+static struct netdev_tx_clk_global_entry *
+netdev_tx_clk_find_by_key(const struct netdev_tx_clk_key *key)
+{
+	struct netdev_tx_clk_global_entry *entry;
+
+	list_for_each_entry(entry, &netdev_tx_clk_registry, list) {
+		if (netdev_tx_clk_key_equal(&entry->key, key))
+			return entry;
+	}
+	return NULL;
+}
+
+static void netdev_tx_clk_global_entry_release(struct kref *kref)
+{
+	struct netdev_tx_clk_global_entry *entry =
+		container_of(kref, struct netdev_tx_clk_global_entry, kref);
+
+	list_del(&entry->list);
+	if (entry->pci_dev)
+		pci_dev_put(entry->pci_dev);
+	kfree(entry);
+}
+
+struct netdev_tx_clk_ref *
+netdev_find_tx_clk_ref(struct netdev_tx_clk_data *data,
+		       enum netdev_tx_clk_type clk_type)
+{
+	struct netdev_tx_clk_ref *ref;
+
+	if (!data)
+		return NULL;
+
+	list_for_each_entry(ref, &data->clk_refs, netdev_list) {
+		if (ref->global_entry->key.clk_type == clk_type)
+			return ref;
+	}
+	return NULL;
+}
+
+/**
+ * netdev_tx_clk_register - register a TX clock source
+ * @ndev: network device
+ * @clk_type: type of clock
+ * @ops: clock operations
+ * @priv_data: driver private data
+ *
+ * Registers a TX clock source, generating a system-unique ID based on the
+ * PCI device information. Multiple network functions can share the same
+ * physical clock if they belong to the same PCI device.
+ */
+int netdev_tx_clk_register(struct net_device *ndev,
+			   enum netdev_tx_clk_type clk_type,
+			   const struct netdev_tx_clk_ops *ops, void *priv_data)
+{
+	struct netdev_tx_clk_global_entry *global_entry;
+	struct netdev_tx_clk_data *clk_data;
+	struct netdev_tx_clk_key clk_key;
+	struct pci_dev *pci_dev = NULL;
+	struct netdev_tx_clk_ref *ref;
+	int err;
+
+	if (!ndev || !ops)
+		return -EINVAL;
+	if (ndev->dev.parent && ndev->dev.parent->bus == &pci_bus_type)
+		pci_dev = to_pci_dev(ndev->dev.parent);
+	if (!pci_dev)
+		return -EINVAL;
+
+	clk_key = netdev_tx_clk_generate_key(pci_dev, clk_type);
+	mutex_lock(&netdev_tx_clk_registry_lock);
+	global_entry = netdev_tx_clk_find_by_key(&clk_key);
+	if (!global_entry) {
+		global_entry = kzalloc(sizeof(*global_entry), GFP_KERNEL);
+		if (!global_entry) {
+			err = -ENOMEM;
+			goto err_unlock_registry;
+		}
+
+		global_entry->key = clk_key;
+		global_entry->pci_dev = pci_dev ? pci_dev_get(pci_dev) : NULL;
+		global_entry->ops = ops;
+		INIT_LIST_HEAD(&global_entry->netdev_refs);
+		kref_init(&global_entry->kref);
+
+		list_add_tail(&global_entry->list, &netdev_tx_clk_registry);
+	} else {
+		kref_get(&global_entry->kref);
+	}
+	mutex_unlock(&netdev_tx_clk_registry_lock);
+
+	clk_data = netdev_get_tx_clk_data(ndev);
+	if (!clk_data) {
+		clk_data = kzalloc(sizeof(*clk_data), GFP_KERNEL);
+		if (!clk_data) {
+			err = -ENOMEM;
+			goto err_put_global;
+		}
+
+		INIT_LIST_HEAD(&clk_data->clk_refs);
+		mutex_init(&clk_data->lock);
+		ndev->tx_clk_data = clk_data;
+	}
+
+	ref = kzalloc(sizeof(*ref), GFP_KERNEL);
+	if (!ref) {
+		err = -ENOMEM;
+		goto err_put_global;
+	}
+
+	ref->global_entry = global_entry;
+	ref->netdev = ndev;
+	ref->priv_data = priv_data;
+
+	mutex_lock(&clk_data->lock);
+	list_add_tail(&ref->netdev_list, &clk_data->clk_refs);
+	mutex_unlock(&clk_data->lock);
+
+	mutex_lock(&netdev_tx_clk_registry_lock);
+	list_add_tail(&ref->global_list, &global_entry->netdev_refs);
+	mutex_unlock(&netdev_tx_clk_registry_lock);
+
+	return 0;
+
+err_put_global:
+	mutex_lock(&netdev_tx_clk_registry_lock);
+	kref_put(&global_entry->kref, netdev_tx_clk_global_entry_release);
+err_unlock_registry:
+	mutex_unlock(&netdev_tx_clk_registry_lock);
+	return err;
+}
+EXPORT_SYMBOL_GPL(netdev_tx_clk_register);
+
+/**
+ * netdev_tx_clk_unregister - Unregister a specific TX clock
+ * @ndev: network device
+ * @clk_type: type of clock to unregister
+ */
+void netdev_tx_clk_unregister(struct net_device *ndev,
+			      enum netdev_tx_clk_type clk_type)
+{
+	struct netdev_tx_clk_data *clk_data;
+	struct netdev_tx_clk_ref *ref;
+
+	clk_data = netdev_get_tx_clk_data(ndev);
+	if (!clk_data)
+		return;
+
+	mutex_lock(&clk_data->lock);
+
+	ref = netdev_find_tx_clk_ref(clk_data, clk_type);
+	if (ref) {
+		struct netdev_tx_clk_global_entry *global_entry =
+			ref->global_entry;
+
+		/* Remove from netdev list */
+		list_del(&ref->netdev_list);
+
+		/* Remove from global entry list and put reference */
+		mutex_lock(&netdev_tx_clk_registry_lock);
+		list_del(&ref->global_list);
+		kref_put(&global_entry->kref,
+			 netdev_tx_clk_global_entry_release);
+		mutex_unlock(&netdev_tx_clk_registry_lock);
+
+		kfree(ref);
+	}
+
+	/* Clean up clk_data if no more refs */
+	if (list_empty(&clk_data->clk_refs)) {
+		mutex_unlock(&clk_data->lock);
+		kfree(clk_data);
+		ndev->tx_clk_data = NULL;
+	} else {
+		mutex_unlock(&clk_data->lock);
+	}
+}
+EXPORT_SYMBOL_GPL(netdev_tx_clk_unregister);
diff --git a/net/core/tx_clk.h b/net/core/tx_clk.h
new file mode 100644
index 000000000000..6374e0cb6c64
--- /dev/null
+++ b/net/core/tx_clk.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * netdev_tx_clk.h - allow net_device TX clock control
+ * Author: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
+ */
+#ifndef _NET_TX_CLK_H
+#define _NET_TX_CLK_H
+
+struct netdev_tx_clk_key {
+	u64 device_serial;
+	enum netdev_tx_clk_type clk_type;
+};
+
+struct netdev_tx_clk_global_entry {
+	struct list_head list;
+	struct list_head netdev_refs;
+	struct netdev_tx_clk_key key;
+	struct pci_dev *pci_dev;
+	const struct netdev_tx_clk_ops *ops;
+	struct kref kref;
+};
+
+struct netdev_tx_clk_ref {
+	struct list_head netdev_list;
+	struct list_head global_list;
+	struct netdev_tx_clk_global_entry *global_entry;
+	struct net_device *netdev;
+	void *priv_data;
+};
+
+struct netdev_tx_clk_data {
+	struct list_head clk_refs;
+	struct mutex lock; /* per clock access protection */
+};
+
+#endif /* _NET_TX_CLK_H */
diff --git a/tools/include/uapi/linux/netdev.h b/tools/include/uapi/linux/netdev.h
index 48eb49aa03d4..e7ff67474246 100644
--- a/tools/include/uapi/linux/netdev.h
+++ b/tools/include/uapi/linux/netdev.h
@@ -82,6 +82,12 @@ enum netdev_napi_threaded {
 	NETDEV_NAPI_THREADED_ENABLED,
 };
 
+enum netdev_tx_clk_type {
+	NETDEV_TX_CLK_TYPE_OCXO,
+	NETDEV_TX_CLK_TYPE_EXT_REF,
+	NETDEV_TX_CLK_TYPE_SYNCE,
+};
+
 enum {
 	NETDEV_A_DEV_IFINDEX = 1,
 	NETDEV_A_DEV_PAD,
@@ -210,6 +216,15 @@ enum {
 	NETDEV_A_DMABUF_MAX = (__NETDEV_A_DMABUF_MAX - 1)
 };
 
+enum {
+	NETDEV_A_TX_CLK_IFINDEX = 1,
+	NETDEV_A_TX_CLK_TYPE,
+	NETDEV_A_TX_CLK_ACTIVE,
+
+	__NETDEV_A_TX_CLK_MAX,
+	NETDEV_A_TX_CLK_MAX = (__NETDEV_A_TX_CLK_MAX - 1)
+};
+
 enum {
 	NETDEV_CMD_DEV_GET = 1,
 	NETDEV_CMD_DEV_ADD_NTF,
@@ -226,6 +241,9 @@ enum {
 	NETDEV_CMD_BIND_RX,
 	NETDEV_CMD_NAPI_SET,
 	NETDEV_CMD_BIND_TX,
+	NETDEV_CMD_TX_CLK_GET,
+	NETDEV_CMD_TX_CLK_SET,
+	NETDEV_CMD_TX_CLK_CHANGE_NTF,
 
 	__NETDEV_CMD_MAX,
 	NETDEV_CMD_MAX = (__NETDEV_CMD_MAX - 1)
-- 
2.38.1


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92815B14C8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jul 2025 12:51:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51F4541255;
	Tue, 29 Jul 2025 10:51:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E7iOnUVek5PA; Tue, 29 Jul 2025 10:51:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E425641271
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753786304;
	bh=Hjj9oQ7eS+NbT0csvFzynWe3Lj32kNMng766syp3U7k=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wvnS3kn+4MWfSVRKXZB5Z4VF/E+ozoM0NCtcZ5rqlVztnC2kHwYJgsau1/KM/yeof
	 cn1Hpe3qD3rtHm1DA3BMnAMA+JojAZFFwDHdoZAbog3N+AC8beC4nseCrsmgw6ya7Z
	 eq9w6hgytcY9VCzwh3U9ciLI4igwd49lquATG6o/fS9+/XtRDZXFDj5tvuqZ73AQje
	 cY7RIbG1hIacyUiPh4WsULl7TwkkouwnaRfIufM7ys7g1FR4AIKtV+INE9JkESa11g
	 0q5GuVw7vrdkBL74fZbozRCooecDXoVXVc7cwE5FR4Yv568cLvt62hn4d9rljZj+QY
	 F3JyLk2Dpi6fQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E425641271;
	Tue, 29 Jul 2025 10:51:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 59E1D15C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 10:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 403BC80F7A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 10:51:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l296VA_XDSQn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jul 2025 10:51:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EC07280C82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC07280C82
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC07280C82
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 10:51:41 +0000 (UTC)
X-CSE-ConnectionGUID: DkwWdB2kQPSeo5+E3eTVCw==
X-CSE-MsgGUID: DTRasEbORIqWcZ/DR5xrgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="81489688"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="81489688"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 03:51:41 -0700
X-CSE-ConnectionGUID: kYntZhajTqiABR1+/vn+ag==
X-CSE-MsgGUID: pDbrRPPuSOi1Ds4GE1AkOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="163014339"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa009.fm.intel.com with ESMTP; 29 Jul 2025 03:51:37 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org, sdf@fomichev.me,
 almasrymina@google.com, asml.silence@gmail.com, leitao@debian.org,
 kuniyu@google.com
Cc: linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Tue, 29 Jul 2025 12:45:28 +0200
Message-Id: <20250729104528.1984928-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753786302; x=1785322302;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=euClTFKCjc/gTjOTvgcnP1lCy9vOs0inJmAec9++6sg=;
 b=XOC2RLBN8CTU5G3bZbQFTCsMIvvzVE7giRUSJA2k4wTNJn87pzc6dfDP
 nMmvEPQ+He0feI5CPKE0FCVxwUOwbkd5NJ9XWjoKDrjjyjNUKndmY6vW1
 o6dytGV9FZ8zeFtFM+Glpq6ozTyoK3XMd1bB8TyYS8TE2aW0SZATIoehT
 oU0PTaTpRa/92u8yKPqTErhwrf8cwSOS59QxPs+uIcvA7ugqj+ejJborV
 ssDP4qiGrT5vFKY5+YKdutStW+QpGtnJt0V1y/+FfRK0dFmBhStX5hArh
 nHNphljO3IMoEdFNpfU/iwdWgg4kbY+hNJtC+ZcXJroWWcFGhNo2eoesj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XOC2RLBN
Subject: [Intel-wired-lan] [RFC PATCH] net: add net-device TX clock source
 selection framework
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
sources through a new sysfs interface.
A network device may support multiple TX clock sources (OCXO, SyncE
reference, external reference clocks) which are critical for
time-sensitive networking applications and synchronization protocols.

This patch introduces:

1. Core TX clock framework (net/core/tx_clk.c):
- per net-device clock source registration and management
- sysfs interface under /sys/class/net/<device>/tx_clk/
- thread-safe clock switching by using mutex locking

2. Generic netdev integration:
- new netdev_tx_clk_ops structure for driver callbacks
- TX clock list and kobject directory in struct net_device
- registration/cleanup functions for driver use

3. Intel ICE driver implementation:
- support for E825 series network cards
- three clock sources: OCXO (default), SyncE_ref, ext_ref
- per-PF clock state management

4. Kconfig option NET_TX_CLK:
- optional feature + user documentation

User interface:
- Read /sys/class/net/<device>/tx_clk/<clock_name> to get status (0/1)
- Write "1" to switch to that clock source
- Writing "0" is not supported (one clock must always be active)

Example usage:
  # Check current clock status
  $ cat /sys/class/net/eth0/tx_clk/*

  # Switch to external reference clock
  $ echo 1 > /sys/class/net/eth0/tx_clk/ext_ref

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile     |   1 +
 drivers/net/ethernet/intel/ice/ice.h        |   5 +
 drivers/net/ethernet/intel/ice/ice_lib.c    |   6 +
 drivers/net/ethernet/intel/ice/ice_main.c   |   6 +
 drivers/net/ethernet/intel/ice/ice_tx_clk.c | 113 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_tx_clk.h |  17 +++
 include/linux/netdev_tx_clk.h               |  43 ++++++
 include/linux/netdevice.h                   |   6 +
 net/Kconfig                                 |  21 +++
 net/Makefile                                |   1 +
 net/core/Makefile                           |   1 +
 net/core/tx_clk.c                           | 150 ++++++++++++++++++++
 12 files changed, 370 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tx_clk.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tx_clk.h
 create mode 100644 include/linux/netdev_tx_clk.h
 create mode 100644 net/core/tx_clk.c

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index d0f9c9492363..31f0dc580900 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -60,3 +60,4 @@ ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
 ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o ice_eswitch_br.o
 ice-$(CONFIG_GNSS) += ice_gnss.o
 ice-$(CONFIG_ICE_HWMON) += ice_hwmon.o
+ice-$(CONFIG_NET_TX_CLK) += ice_tx_clk.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2098f00b3cd3..116c8668f504 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -204,6 +204,7 @@ enum ice_feature {
 	ICE_F_ROCE_LAG,
 	ICE_F_SRIOV_LAG,
 	ICE_F_MBX_LIMIT,
+	ICE_F_TX_CLK,
 	ICE_F_MAX
 };
 
@@ -661,6 +662,10 @@ struct ice_pf {
 	struct device *hwmon_dev;
 	struct ice_health health_reporters;
 	struct iidc_rdma_core_dev_info *cdev_info;
+#ifdef CONFIG_NET_TX_CLK
+	void *tx_clk_data;  /* Private clock data */
+	u8 tx_clk_active;   /* Currently active TX clock ID */
+#endif
 
 	u8 num_quanta_prof_used;
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a439b5a61a56..34efba93a450 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3943,6 +3943,12 @@ void ice_init_feature_support(struct ice_pf *pf)
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
index 8e0b06c1e02b..80ed03d7b02e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -27,6 +27,7 @@
 #include "ice_tc_lib.h"
 #include "ice_vsi_vlan_ops.h"
 #include <net/xdp_sock_drv.h>
+#include "ice_tx_clk.h"
 
 #define DRV_SUMMARY	"Intel(R) Ethernet Connection E800 Series Linux Driver"
 static const char ice_driver_string[] = DRV_SUMMARY;
@@ -4854,6 +4855,9 @@ static void ice_init_features(struct ice_pf *pf)
 	if (ice_init_lag(pf))
 		dev_warn(dev, "Failed to init link aggregation support\n");
 
+	if (ice_is_feature_supported(pf, ICE_F_TX_CLK))
+		ice_tx_clk_init(pf);
+
 	ice_hwmon_init(pf);
 }
 
@@ -4874,6 +4878,8 @@ static void ice_deinit_features(struct ice_pf *pf)
 		ice_dpll_deinit(pf);
 	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_SWITCHDEV)
 		xa_destroy(&pf->eswitch.reprs);
+	if (ice_is_feature_supported(pf, ICE_F_TX_CLK))
+		ice_tx_clk_deinit(pf);
 }
 
 static void ice_init_wakeup(struct ice_pf *pf)
diff --git a/drivers/net/ethernet/intel/ice/ice_tx_clk.c b/drivers/net/ethernet/intel/ice/ice_tx_clk.c
new file mode 100644
index 000000000000..121e9fa0c146
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_tx_clk.c
@@ -0,0 +1,113 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Copyright (C) 2025, Intel Corporation. */
+
+#include <linux/netdev_tx_clk.h>
+#include "ice_tx_clk.h"
+
+enum ice_clk_type {
+	ICE_TX_CLK_OCXO = 0,
+	ICE_TX_CLK_SYNCE_REF,
+	ICE_TX_CLK_EXT_REF,
+
+	ICE_TX_CLK_COUNT /* always last */
+};
+
+static const char *ice_clk_names[ICE_TX_CLK_COUNT] = {
+	"ocxo",
+	"SyncE_ref",
+	"ext_ref"
+};
+
+struct ice_tx_clk_data {
+	struct ice_pf *pf;
+	u8 clk_id;
+};
+
+static const struct netdev_tx_clk_ops ice_tx_clk_ops;
+
+static int ice_tx_clk_enable(void *priv_data)
+{
+	struct ice_tx_clk_data *clk_data = priv_data;
+	struct ice_pf *pf = clk_data->pf;
+	u8 clk_id = clk_data->clk_id;
+
+	if (clk_id >= ICE_TX_CLK_COUNT) {
+		dev_err(ice_pf_to_dev(pf), "Invalid clock ID: %d\n", clk_id);
+		return -EINVAL;
+	}
+
+	if (pf->tx_clk_active != clk_id) {
+		dev_dbg(ice_pf_to_dev(pf), "PF%d switching from %s to %s clock\n",
+			pf->hw.pf_id, ice_clk_names[pf->tx_clk_active],
+			ice_clk_names[clk_id]);
+
+		pf->tx_clk_active = clk_id;
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
+	u8 clk_id = clk_data->clk_id;
+
+	return (pf->tx_clk_active == clk_id) ? 1 : 0;
+}
+
+static const struct netdev_tx_clk_ops ice_tx_clk_ops = {
+	.enable = ice_tx_clk_enable,
+	.is_enabled = ice_tx_clk_is_enabled,
+};
+
+void ice_tx_clk_init(struct ice_pf *pf)
+{
+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+	struct ice_tx_clk_data *clk_data[ICE_TX_CLK_COUNT];
+	int i, ret;
+
+	if (!vsi || !vsi->netdev)
+		return;
+
+	for (i = 0; i < ICE_TX_CLK_COUNT; i++) {
+		clk_data[i] = kzalloc(sizeof(*clk_data[i]), GFP_KERNEL);
+		if (!clk_data[i]) {
+			while (--i >= 0)
+				kfree(clk_data[i]);
+			return;
+		}
+
+		clk_data[i]->pf = pf;
+		clk_data[i]->clk_id = i;
+	}
+
+	pf->tx_clk_active = ICE_TX_CLK_OCXO;
+
+	for (i = 0; i < ICE_TX_CLK_COUNT; i++) {
+		ret = netdev_tx_clk_register(vsi->netdev, ice_clk_names[i],
+					     &ice_tx_clk_ops, clk_data[i]);
+		if (ret) {
+			dev_err(ice_pf_to_dev(pf),
+				"Failed to register %s clock: %d\n",
+				ice_clk_names[i], ret);
+		}
+	}
+
+	dev_dbg(ice_pf_to_dev(pf), "ICE TX clocks initialized for PF%d (default: %s)\n",
+		pf->hw.pf_id, ice_clk_names[ICE_TX_CLK_OCXO]);
+}
+
+void ice_tx_clk_deinit(struct ice_pf *pf)
+{
+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+
+	if (!vsi || !vsi->netdev)
+		return;
+
+	netdev_tx_clk_cleanup(vsi->netdev);
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
index 000000000000..3ba820b40fed
--- /dev/null
+++ b/include/linux/netdev_tx_clk.h
@@ -0,0 +1,43 @@
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
+
+/**
+ * struct netdev_tx_clk_ops - TX clock operations
+ * @enable: switch to this clock (called when user writes "1" to sysfs)
+ * @is_enabled: check if this clock is currently active
+ *
+ * Note: one clock must always be active, writing "0" to disable is not
+ * supported.
+ */
+struct netdev_tx_clk_ops {
+	int (*enable)(void *priv_data);
+	int (*is_enabled)(void *priv_data);
+};
+#if IS_ENABLED(CONFIG_NET_TX_CLK)
+
+int netdev_tx_clk_register(struct net_device *ndev, const char *clk_name,
+			   const struct netdev_tx_clk_ops *ops,
+			   void *priv_data);
+
+void netdev_tx_clk_cleanup(struct net_device *ndev);
+#else
+
+static inline int netdev_tx_clk_register(struct net_device *ndev, const char *clk_name,
+					 const struct netdev_tx_clk_ops *ops,
+					 void *priv_data)
+{
+	return 0;
+}
+
+static inline void netdev_tx_clk_cleanup(struct net_device *ndev) { }
+#endif
+
+#endif /* __NETDEV_TX_CLK_H */
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 5e5de4b0a433..b09a1eff4d4d 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -23,6 +23,7 @@
 
 #include <linux/timer.h>
 #include <linux/bug.h>
+#include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/atomic.h>
 #include <linux/prefetch.h>
@@ -2552,6 +2553,11 @@ struct net_device {
 
 	struct hwtstamp_provider __rcu	*hwprov;
 
+#if IS_ENABLED(CONFIG_NET_TX_CLK)
+	struct list_head	tx_clk_list;
+	struct kobject		*tx_clk_dir;
+
+#endif
 	u8			priv[] ____cacheline_aligned
 				       __counted_by(priv_len);
 } ____cacheline_aligned;
diff --git a/net/Kconfig b/net/Kconfig
index d5865cf19799..b0c7ce6ce046 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -541,4 +541,25 @@ config NET_TEST
 
 	  If unsure, say N.
 
+config NET_TX_CLK
+	bool "Control over source of TX clock per network device"
+	depends on COMMON_CLK && NET
+	default n
+	help
+	  This feature enables per-device control over TX clock sources in
+	  networking hardware. Network devices may support multiple transmit
+	  clock sources such as different oscillators, OCXOs, PLLs, or
+	  external clock signals provided via onboard pins.
+
+	  When enabled, supported network devices will create a tx_clk
+	  directory under their sysfs entry (/sys/class/net/<device>/tx_clk/).
+	  Users can select an available clock source by writing '1' to the
+	  corresponding file in this directory. The status of each clock
+	  source can be checked by reading the file (0 = disabled, 1 = enabled).
+
+	  This is useful for applications requiring precise timing control,
+	  such as time-sensitive networking (TSN) or synchronization protocols.
+
+	  If unsure, say N.
+
 endif   # if NET
diff --git a/net/Makefile b/net/Makefile
index aac960c41db6..f78f46444efa 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -79,3 +79,4 @@ obj-$(CONFIG_MPTCP)		+= mptcp/
 obj-$(CONFIG_MCTP)		+= mctp/
 obj-$(CONFIG_NET_HANDSHAKE)	+= handshake/
 obj-$(CONFIG_NET_SHAPER)	+= shaper/
+obj-$(CONFIG_PHY_CLK_USER)	+= phy_clk/
diff --git a/net/core/Makefile b/net/core/Makefile
index b2a76ce33932..7e4031813b18 100644
--- a/net/core/Makefile
+++ b/net/core/Makefile
@@ -47,3 +47,4 @@ obj-$(CONFIG_NET_TEST) += net_test.o
 obj-$(CONFIG_NET_DEVMEM) += devmem.o
 obj-$(CONFIG_DEBUG_NET) += lock_debug.o
 obj-$(CONFIG_FAIL_SKB_REALLOC) += skb_fault_injection.o
+obj-$(CONFIG_NET_TX_CLK) += tx_clk.o
diff --git a/net/core/tx_clk.c b/net/core/tx_clk.c
new file mode 100644
index 000000000000..fbbc6497e563
--- /dev/null
+++ b/net/core/tx_clk.c
@@ -0,0 +1,150 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Network device TX clock control framework
+ * Simple sysfs interface for userspace TX clock management
+ * Author: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
+ */
+
+#include <linux/netdevice.h>
+#include <linux/netdev_tx_clk.h>
+#include <linux/sysfs.h>
+#include <linux/kobject.h>
+#include <linux/mutex.h>
+#include <linux/slab.h>
+
+/* Simple clock entry structure */
+struct tx_clk_entry {
+	char name[32];
+	const struct netdev_tx_clk_ops *ops;
+	void *priv_data;
+	struct kobj_attribute attr;
+	struct list_head list;
+};
+
+static DEFINE_MUTEX(tx_clk_mutex);
+
+static ssize_t tx_clk_show(struct kobject *kobj, struct kobj_attribute *attr,
+			   char *buf)
+{
+	struct tx_clk_entry *entry = container_of(attr, struct tx_clk_entry,
+						  attr);
+	int ret = entry->ops->is_enabled(entry->priv_data);
+
+	if (ret != 0 && ret != 1)
+		return ret;
+
+	return sprintf(buf, "%d\n", ret);
+}
+
+static ssize_t tx_clk_store(struct kobject *kobj, struct kobj_attribute *attr,
+			    const char *buf, size_t count)
+{
+	struct tx_clk_entry *entry = container_of(attr, struct tx_clk_entry,
+						  attr);
+	int val, ret;
+
+	ret = kstrtoint(buf, 10, &val);
+	if (ret)
+		return ret;
+
+	/* Cannot disable - one clock must always be active */
+	if (val != 1)
+		return -EINVAL;
+
+	mutex_lock(&tx_clk_mutex);
+	ret = entry->ops->enable(entry->priv_data);
+	mutex_unlock(&tx_clk_mutex);
+
+	return ret ? ret : count;
+}
+
+/**
+ * netdev_tx_clk_register - register a TX clock for a network device
+ * @ndev: network device
+ * @clk_name: clock name (visible in sysfs)
+ * @ops: clock operations
+ * @priv_data: private data for callbacks
+ *
+ * Returns 0 on success, negative error code on failure
+ */
+int netdev_tx_clk_register(struct net_device *ndev, const char *clk_name,
+			   const struct netdev_tx_clk_ops *ops,
+			   void *priv_data)
+{
+	struct tx_clk_entry *entry;
+	int ret;
+
+	if (WARN_ON(!ndev || !clk_name || !ops))
+		return -EINVAL;
+
+	entry = kzalloc(sizeof(*entry), GFP_KERNEL);
+	if (!entry)
+		return -ENOMEM;
+
+	strscpy(entry->name, clk_name, sizeof(entry->name) - 1);
+	entry->ops = ops;
+	entry->priv_data = priv_data;
+	INIT_LIST_HEAD(&entry->list);
+
+	/* Setup sysfs attribute */
+	entry->attr.attr.name = entry->name;
+	entry->attr.attr.mode = 0644;
+	entry->attr.show = tx_clk_show;
+	entry->attr.store = tx_clk_store;
+
+	mutex_lock(&tx_clk_mutex);
+
+	if (!ndev->tx_clk_dir) {
+		INIT_LIST_HEAD(&ndev->tx_clk_list);
+		ndev->tx_clk_dir = kobject_create_and_add("tx_clk", &ndev->dev.kobj);
+		if (!ndev->tx_clk_dir) {
+			kfree(entry);
+			mutex_unlock(&tx_clk_mutex);
+			return -ENOMEM;
+		}
+	}
+
+	/* Add to device's clock list */
+	list_add_tail(&entry->list, &ndev->tx_clk_list);
+
+	/* Create sysfs file */
+	ret = sysfs_create_file(ndev->tx_clk_dir, &entry->attr.attr);
+	if (ret) {
+		list_del(&entry->list);
+		kfree(entry);
+		mutex_unlock(&tx_clk_mutex);
+		return ret;
+	}
+
+	mutex_unlock(&tx_clk_mutex);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(netdev_tx_clk_register);
+
+/**
+ * netdev_tx_clk_cleanup - cleanup all TX clocks for a network device
+ * @ndev: network device
+ */
+void netdev_tx_clk_cleanup(struct net_device *ndev)
+{
+	struct tx_clk_entry *entry, *tmp;
+
+	if (!ndev)
+		return;
+
+	mutex_lock(&tx_clk_mutex);
+
+	list_for_each_entry_safe(entry, tmp, &ndev->tx_clk_list, list) {
+		sysfs_remove_file(ndev->tx_clk_dir, &entry->attr.attr);
+		list_del(&entry->list);
+		kfree(entry);
+	}
+
+	if (ndev->tx_clk_dir) {
+		kobject_put(ndev->tx_clk_dir);
+		ndev->tx_clk_dir = NULL;
+	}
+
+	mutex_unlock(&tx_clk_mutex);
+}
+EXPORT_SYMBOL_GPL(netdev_tx_clk_cleanup);

base-commit: fa582ca7e187a15e772e6a72fe035f649b387a60
-- 
2.38.1


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8686549EFC8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 01:34:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B61084DB0;
	Fri, 28 Jan 2022 00:34:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZiPOnwpfaeEa; Fri, 28 Jan 2022 00:34:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AB9684D8A;
	Fri, 28 Jan 2022 00:34:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7824D1C113E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C22784D98
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2HpBry1XnsZ8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 00:34:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18CAE84D8A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643330078; x=1674866078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hGR8PDHGMBVOZ3GeQ20yutjXJU3fN2SzfKnoga3PK9o=;
 b=GwYenYeYy4ffSONqWGv5z3RcLCP61C7NbCvp3l1HANOujgLtID6UhzW9
 DuNNLj8g7W4/b5DAFljO9INx7sBFQRR+8H9QTjqyNnloxsUNMMAJFE78t
 YawHe63VkpnGbacAcJsgaV/CgGqZRhyHBA8B1vmI6PKPpVO0dpziFRIkO
 VH1LNPOnJv2bOwYuJW4sr+wi4duoJEdcIfKwvE4ZqpkGARQb3nTTOvSca
 fc0kTR5p4W1UETRR1VCkBlXABAThMO5FF70523pBw6oj8Zo/ZkkjI6ptI
 XBw+aZLL1R4hiH3ily3TSoNt4z/uNk8qU9DHqYnTMWP/59tjA8+jbEq+X w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="234380420"
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="234380420"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 16:34:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="563999702"
Received: from dev1-atbrady.jf.intel.com ([10.166.244.128])
 by orsmga001.jf.intel.com with ESMTP; 27 Jan 2022 16:34:25 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jan 2022 16:09:53 -0800
Message-Id: <20220128001009.721392-4-alan.brady@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220128001009.721392-1-alan.brady@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 03/19] iecm: add probe and remove
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
Cc: Phani Burra <phani.r.burra@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This adds everything we need in probe and remove as well as a few stubs
which will kick off the next step in the init process of device driver
coming up.

Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/iecm/Makefile      |   1 +
 drivers/net/ethernet/intel/iecm/iecm_lib.c    | 231 ++++++++++++++++++
 drivers/net/ethernet/intel/include/iecm.h     | 178 +++++++++++++-
 .../net/ethernet/intel/include/iecm_txrx.h    |  33 +++
 4 files changed, 442 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/iecm/iecm_lib.c
 create mode 100644 drivers/net/ethernet/intel/include/iecm_txrx.h

diff --git a/drivers/net/ethernet/intel/iecm/Makefile b/drivers/net/ethernet/intel/iecm/Makefile
index d2d087ac71e9..4f497723419d 100644
--- a/drivers/net/ethernet/intel/iecm/Makefile
+++ b/drivers/net/ethernet/intel/iecm/Makefile
@@ -10,4 +10,5 @@ obj-$(CONFIG_IECM) += iecm.o
 ccflags-y += -I$(srctree)/drivers/net/ethernet/intel/include
 
 iecm-y := \
+	iecm_lib.o \
 	iecm_main.o
diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c b/drivers/net/ethernet/intel/iecm/iecm_lib.c
new file mode 100644
index 000000000000..e6d0b418a27f
--- /dev/null
+++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
@@ -0,0 +1,231 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2019 Intel Corporation */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include "iecm.h"
+
+/**
+ * iecm_statistics_task - Delayed task to get statistics over mailbox
+ * @work: work_struct handle to our data
+ */
+static void iecm_statistics_task(struct work_struct *work)
+{
+	/* stub */
+}
+
+/**
+ * iecm_service_task - Delayed task for handling mailbox responses
+ * @work: work_struct handle to our data
+ *
+ */
+static void iecm_service_task(struct work_struct *work)
+{
+	/* stub */
+}
+
+/**
+ * iecm_init_task - Delayed initialization task
+ * @work: work_struct handle to our data
+ *
+ * Init task finishes up pending work started in probe.  Due to the asynchronous
+ * nature in which the device communicates with hardware, we may have to wait
+ * several milliseconds to get a response.  Instead of busy polling in probe,
+ * pulling it out into a delayed work task prevents us from bogging down the
+ * whole system waiting for a response from hardware.
+ */
+static void iecm_init_task(struct work_struct *work)
+{
+	/* stub */
+}
+
+/**
+ * iecm_deinit_task - Device deinit routine
+ * @adapter: Driver specific private structue
+ *
+ * Extended remove logic which will be used for
+ * hard reset as well
+ */
+static void iecm_deinit_task(struct iecm_adapter *adapter)
+{
+	/* stub */
+}
+
+/**
+ * iecm_vc_event_task - Handle virtchannel event logic
+ * @work: work queue struct
+ */
+static void iecm_vc_event_task(struct work_struct *work)
+{
+	/* stub */
+}
+
+/**
+ * iecm_probe - Device initialization routine
+ * @pdev: PCI device information struct
+ * @ent: entry in iecm_pci_tbl
+ * @adapter: driver specific private structure
+ *
+ * Returns 0 on success, negative on failure
+ */
+int iecm_probe(struct pci_dev *pdev,
+	       const struct pci_device_id __always_unused *ent,
+	       struct iecm_adapter *adapter)
+{
+	int err;
+
+	adapter->pdev = pdev;
+
+	err = pcim_enable_device(pdev);
+	if (err)
+		return err;
+
+	err = pcim_iomap_regions(pdev, BIT(IECM_BAR0), pci_name(pdev));
+	if (err) {
+		dev_err(&pdev->dev, "BAR0 I/O map error %d\n", err);
+		return err;
+	}
+
+	/* set up for high or low dma */
+	err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
+	if (err)
+		err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
+	if (err) {
+		dev_err(&pdev->dev, "DMA configuration failed: 0x%x\n", err);
+		return err;
+	}
+
+	pci_enable_pcie_error_reporting(pdev);
+	pci_set_master(pdev);
+	pci_set_drvdata(pdev, adapter);
+
+	adapter->init_wq =
+		alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
+	if (!adapter->init_wq) {
+		dev_err(&pdev->dev, "Failed to allocate workqueue\n");
+		err = -ENOMEM;
+		goto err_wq_alloc;
+	}
+
+	adapter->serv_wq =
+		alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
+	if (!adapter->serv_wq) {
+		dev_err(&pdev->dev, "Failed to allocate workqueue\n");
+		err = -ENOMEM;
+		goto err_mbx_wq_alloc;
+	}
+
+	adapter->stats_wq =
+		alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
+	if (!adapter->stats_wq) {
+		dev_err(&pdev->dev, "Failed to allocate workqueue\n");
+		err = -ENOMEM;
+		goto err_stats_wq_alloc;
+	}
+	adapter->vc_event_wq =
+		alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
+	if (!adapter->vc_event_wq) {
+		dev_err(&pdev->dev, "Failed to allocate workqueue\n");
+		err = -ENOMEM;
+		goto err_vc_event_wq_alloc;
+	}
+
+	/* setup msglvl */
+	adapter->msg_enable = netif_msg_init(-1, IECM_AVAIL_NETIF_M);
+
+	adapter->vports = kcalloc(IECM_MAX_NUM_VPORTS,
+				  sizeof(*adapter->vports), GFP_KERNEL);
+	if (!adapter->vports) {
+		err = -ENOMEM;
+		goto err_vport_alloc;
+	}
+
+	adapter->netdevs = kcalloc(IECM_MAX_NUM_VPORTS,
+				   sizeof(struct net_device *), GFP_KERNEL);
+	if (!adapter->netdevs) {
+		err = -ENOMEM;
+		goto err_netdev_alloc;
+	}
+
+	mutex_init(&adapter->sw_mutex);
+	mutex_init(&adapter->reset_lock);
+	init_waitqueue_head(&adapter->vchnl_wq);
+	init_waitqueue_head(&adapter->sw_marker_wq);
+
+	spin_lock_init(&adapter->cloud_filter_list_lock);
+	spin_lock_init(&adapter->mac_filter_list_lock);
+	spin_lock_init(&adapter->vlan_list_lock);
+	spin_lock_init(&adapter->adv_rss_list_lock);
+	spin_lock_init(&adapter->fdir_fltr_list_lock);
+	INIT_LIST_HEAD(&adapter->config_data.mac_filter_list);
+	INIT_LIST_HEAD(&adapter->config_data.vlan_filter_list);
+	INIT_LIST_HEAD(&adapter->config_data.adv_rss_list);
+
+	INIT_DELAYED_WORK(&adapter->stats_task, iecm_statistics_task);
+	INIT_DELAYED_WORK(&adapter->serv_task, iecm_service_task);
+	INIT_DELAYED_WORK(&adapter->init_task, iecm_init_task);
+	INIT_DELAYED_WORK(&adapter->vc_event_task, iecm_vc_event_task);
+
+	set_bit(__IECM_HR_DRV_LOAD, adapter->flags);
+	queue_delayed_work(adapter->vc_event_wq, &adapter->vc_event_task,
+			   msecs_to_jiffies(10 * (pdev->devfn & 0x07)));
+
+	return 0;
+err_netdev_alloc:
+	kfree(adapter->vports);
+err_vport_alloc:
+	destroy_workqueue(adapter->vc_event_wq);
+err_vc_event_wq_alloc:
+	destroy_workqueue(adapter->stats_wq);
+err_stats_wq_alloc:
+	destroy_workqueue(adapter->serv_wq);
+err_mbx_wq_alloc:
+	destroy_workqueue(adapter->init_wq);
+err_wq_alloc:
+	pci_disable_pcie_error_reporting(pdev);
+	return err;
+}
+EXPORT_SYMBOL(iecm_probe);
+
+/**
+ * iecm_del_user_cfg_data - delete all user configuration data
+ * @adapter: Driver specific private structue
+ */
+static void iecm_del_user_cfg_data(struct iecm_adapter *adapter)
+{
+	/* stub */
+}
+
+/**
+ * iecm_remove - Device removal routine
+ * @pdev: PCI device information struct
+ */
+void iecm_remove(struct pci_dev *pdev)
+{
+	struct iecm_adapter *adapter = pci_get_drvdata(pdev);
+
+	if (!adapter)
+		return;
+	/* Wait until vc_event_task is done to consider if any hard reset is
+	 * in progress else we may go ahead and release the resources but the
+	 * thread doing the hard reset might continue the init path and
+	 * end up in bad state.
+	 */
+	cancel_delayed_work_sync(&adapter->vc_event_task);
+	iecm_deinit_task(adapter);
+	iecm_del_user_cfg_data(adapter);
+	msleep(20);
+	destroy_workqueue(adapter->serv_wq);
+	destroy_workqueue(adapter->vc_event_wq);
+	destroy_workqueue(adapter->stats_wq);
+	destroy_workqueue(adapter->init_wq);
+	kfree(adapter->vports);
+	kfree(adapter->netdevs);
+	kfree(adapter->vlan_caps);
+	mutex_destroy(&adapter->sw_mutex);
+	mutex_destroy(&adapter->reset_lock);
+	pci_disable_pcie_error_reporting(pdev);
+	pcim_iounmap_regions(pdev, BIT(IECM_BAR0));
+	pci_disable_device(pdev);
+}
+EXPORT_SYMBOL(iecm_remove);
diff --git a/drivers/net/ethernet/intel/include/iecm.h b/drivers/net/ethernet/intel/include/iecm.h
index f66f0d7db8e7..e19e014e9817 100644
--- a/drivers/net/ethernet/intel/include/iecm.h
+++ b/drivers/net/ethernet/intel/include/iecm.h
@@ -4,7 +4,183 @@
 #ifndef _IECM_H_
 #define _IECM_H_
 
-#include <linux/etherdevice.h>
+#include <linux/aer.h>
+#include <linux/pci.h>
+#include <linux/netdevice.h>
+#include <linux/ethtool.h>
 #include <linux/version.h>
+#include <linux/dim.h>
 
+#include "iecm_txrx.h"
+
+#define IECM_BAR0			0
+#define IECM_NO_FREE_SLOT		0xffff
+
+#define IECM_MAX_NUM_VPORTS		1
+
+/* available message levels */
+#define IECM_AVAIL_NETIF_M (NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK)
+
+enum iecm_state {
+	__IECM_STARTUP,
+	__IECM_VER_CHECK,
+	__IECM_GET_CAPS,
+	__IECM_GET_DFLT_VPORT_PARAMS,
+	__IECM_INIT_SW,
+	__IECM_DOWN,
+	__IECM_UP,
+	__IECM_STATE_LAST /* this member MUST be last */
+};
+
+enum iecm_flags {
+	/* Soft reset causes */
+	__IECM_SR_Q_CHANGE, /* Soft reset to do queue change */
+	__IECM_SR_Q_DESC_CHANGE,
+	__IECM_SR_Q_SCH_CHANGE, /* Scheduling mode change in queue context */
+	__IECM_SR_MTU_CHANGE,
+	__IECM_SR_TC_CHANGE,
+	__IECM_SR_RSC_CHANGE,
+	__IECM_SR_HSPLIT_CHANGE,
+	/* Hard reset causes */
+	__IECM_HR_FUNC_RESET, /* Hard reset when txrx timeout */
+	__IECM_HR_CORE_RESET, /* when reset event is received on virtchannel */
+	__IECM_HR_DRV_LOAD, /* Set on driver load for a clean HW */
+	/* Reset in progress */
+	__IECM_HR_RESET_IN_PROG,
+	/* Resources release in progress*/
+	__IECM_REL_RES_IN_PROG,
+	/* Generic bits to share a message */
+	__IECM_DEL_QUEUES,
+	__IECM_UP_REQUESTED, /* Set if open to be called explicitly by driver */
+	/* Mailbox interrupt event */
+	__IECM_MB_INTR_MODE,
+	__IECM_MB_INTR_TRIGGER,
+	/* Stats message pending on mailbox */
+	__IECM_MB_STATS_PENDING,
+	/* Device specific bits */
+	/* Request split queue model when creating vport */
+	__IECM_REQ_TX_SPLITQ,
+	__IECM_REQ_RX_SPLITQ,
+	/* Asynchronous add/del ether address in flight */
+	__IECM_ADD_ETH_REQ,
+	__IECM_DEL_ETH_REQ,
+	/* Virtchnl message buffer received needs to be processed */
+	__IECM_VC_MSG_PENDING,
+	/* To process software marker packets */
+	__IECM_SW_MARKER,
+	/* must be last */
+	__IECM_FLAGS_NBITS,
+};
+
+struct iecm_reset_reg {
+	u32 rstat;
+	u32 rstat_m;
+};
+
+/* stub */
+struct iecm_vport {
+};
+
+enum iecm_user_flags {
+	__IECM_PRIV_FLAGS_HDR_SPLIT = 0,
+	__IECM_PROMISC_UC = 32,
+	__IECM_PROMISC_MC,
+	__IECM_USER_FLAGS_NBITS,
+};
+
+/* User defined configuration values */
+struct iecm_user_config_data {
+	u32 num_req_tx_qs; /* user requested TX queues through ethtool */
+	u32 num_req_rx_qs; /* user requested RX queues through ethtool */
+	u32 num_req_txq_desc;
+	u32 num_req_rxq_desc;
+	u16 vlan_ethertype;
+	void *req_qs_chunks;
+	DECLARE_BITMAP(user_flags, __IECM_USER_FLAGS_NBITS);
+	DECLARE_BITMAP(etf_qenable, IECM_LARGE_MAX_Q);
+	struct list_head mac_filter_list;
+	struct list_head vlan_filter_list;
+	struct list_head adv_rss_list;
+};
+
+struct iecm_rss_data {
+	u64 rss_hash;
+	u16 rss_key_size;
+	u8 *rss_key;
+	u16 rss_lut_size;
+	u32 *rss_lut;
+};
+
+struct iecm_adapter {
+	struct pci_dev *pdev;
+	const char *drv_name;
+	const char *drv_ver;
+	u32 virt_ver_maj;
+	u32 virt_ver_min;
+
+	u32 tx_timeout_count;
+	u32 msg_enable;
+	enum iecm_state state;
+	DECLARE_BITMAP(flags, __IECM_FLAGS_NBITS);
+	struct mutex reset_lock; /* lock to protect reset flows */
+	struct iecm_reset_reg reset_reg;
+
+	u16 num_req_msix;
+	u16 num_msix_entries;
+	struct msix_entry *msix_entries;
+	struct virtchnl2_alloc_vectors *req_vec_chunks;
+
+	/* vport structs */
+	struct iecm_vport **vports;	/* vports created by the driver */
+	struct net_device **netdevs;	/* associated vport netdevs */
+	u16 num_alloc_vport;
+	u16 next_vport;		/* Next free slot in pf->vport[] - 0-based! */
+
+	struct delayed_work init_task; /* delayed init task */
+	struct workqueue_struct *init_wq;
+	u32 mb_wait_count;
+	struct delayed_work serv_task; /* delayed service task */
+	struct workqueue_struct *serv_wq;
+	struct delayed_work stats_task; /* delayed statistics task */
+	struct workqueue_struct *stats_wq;
+	struct delayed_work vc_event_task; /* delayed virtchannel event task */
+	struct workqueue_struct *vc_event_wq;
+	/* Store the resources data received from control plane */
+	void **vport_params_reqd;
+	void **vport_params_recvd;
+	/* User set parameters */
+	struct iecm_user_config_data config_data;
+	void *caps;
+	struct virtchnl_vlan_caps *vlan_caps;
+
+	wait_queue_head_t vchnl_wq;
+	wait_queue_head_t sw_marker_wq;
+	struct iecm_rss_data rss_data;
+	s32 link_speed;
+	/* This is only populated if the VIRTCHNL_VF_CAP_ADV_LINK_SPEED is set
+	 * in vf_res->vf_cap_flags. This field should be used going forward and
+	 * the enum virtchnl_link_speed above should be considered the legacy
+	 * way of storing/communicating link speeds.
+	 */
+	u32 link_speed_mbps;
+	bool link_up;
+	int num_vfs;
+
+	struct mutex sw_mutex;		/* lock to protect vport alloc flow */
+	/* lock to protect cloud filters*/
+	spinlock_t cloud_filter_list_lock;
+	/* lock to protect mac filters */
+	spinlock_t mac_filter_list_lock;
+	/* lock to protect vlan filters */
+	spinlock_t vlan_list_lock;
+	/* lock to protect advanced RSS filters */
+	spinlock_t adv_rss_list_lock;
+	/* lock to protect the Flow Director filters */
+	spinlock_t fdir_fltr_list_lock;
+};
+
+int iecm_probe(struct pci_dev *pdev,
+	       const struct pci_device_id __always_unused *ent,
+	       struct iecm_adapter *adapter);
+void iecm_remove(struct pci_dev *pdev);
 #endif /* !_IECM_H_ */
diff --git a/drivers/net/ethernet/intel/include/iecm_txrx.h b/drivers/net/ethernet/intel/include/iecm_txrx.h
new file mode 100644
index 000000000000..602d3b3b19dd
--- /dev/null
+++ b/drivers/net/ethernet/intel/include/iecm_txrx.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2019 Intel Corporation */
+
+#ifndef _IECM_TXRX_H_
+#define _IECM_TXRX_H_
+
+#define IECM_LARGE_MAX_Q			256
+#define IECM_MAX_Q				16
+/* Mailbox Queue */
+#define IECM_MAX_NONQ				1
+#define IECM_MAX_TXQ_DESC			4096
+#define IECM_MAX_RXQ_DESC			4096
+#define IECM_MIN_TXQ_DESC			32
+#define IECM_MIN_TXQ_COMPLQ_DESC		64
+#define IECM_MIN_RXQ_DESC			32
+#define IECM_REQ_DESC_MULTIPLE			32
+#define IECM_REQ_SPLITQ_RXQ_DESC_MULTIPLE	64
+#define IECM_MIN_TX_DESC_NEEDED (MAX_SKB_FRAGS + 6)
+#define IECM_TX_WAKE_THRESH ((s16)IECM_MIN_TX_DESC_NEEDED * 2)
+
+#define IECM_DFLT_SINGLEQ_TX_Q_GROUPS		1
+#define IECM_DFLT_SINGLEQ_RX_Q_GROUPS		1
+#define IECM_DFLT_SINGLEQ_TXQ_PER_GROUP		4
+#define IECM_DFLT_SINGLEQ_RXQ_PER_GROUP		4
+
+#define IECM_COMPLQ_PER_GROUP			1
+#define IECM_MAX_BUFQS_PER_RXQ_GRP		2
+
+#define IECM_DFLT_SPLITQ_TX_Q_GROUPS		4
+#define IECM_DFLT_SPLITQ_RX_Q_GROUPS		4
+#define IECM_DFLT_SPLITQ_TXQ_PER_GROUP		1
+#define IECM_DFLT_SPLITQ_RXQ_PER_GROUP		1
+#endif /* !_IECM_TXRX_H_ */
-- 
2.33.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

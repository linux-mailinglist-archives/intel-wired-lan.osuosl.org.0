Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1B14373A8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Oct 2021 10:30:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0401D401DB;
	Fri, 22 Oct 2021 08:30:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Pesd_vyA3b1; Fri, 22 Oct 2021 08:30:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 75E2B401A2;
	Fri, 22 Oct 2021 08:30:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A28F1BF342
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Oct 2021 08:30:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1854340771
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Oct 2021 08:30:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MZ4XYNqhDUYZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Oct 2021 08:30:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF0D440419
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Oct 2021 08:30:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="228024105"
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="228024105"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 01:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="553180659"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga004.fm.intel.com with ESMTP; 22 Oct 2021 01:30:18 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 22 Oct 2021 10:30:14 +0200
Message-Id: <20211022083014.4416-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2] iavf: Fix kernel BUG in
 free_msi_irqs
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Fix driver not freeing VF's traffic irqs, prior to calling
pci_disable_msix in iavf_remove.
There were possible 2 erroneous states in which, iavf_close would
not be called.
One erroneous state is fixed by allowing netdev to register, when state
is already running. It was possible for VF adapter to enter state loop
from running to resetting, where iavf_open would subsequently fail.
If user would then unload driver/remove VF pci, iavf_close would not be
called, as the netdev was not registered, leaving traffic pcis still
allocated.
Fixed this by breaking loop, allowing netdev to open device when adapter
state is __IAVF_RUNNING and it is not explicitily downed.
Other possiblity is entering to iavf_remove from __IAVF_RESETTING state,
where iavf_close would not free irqs, but just return 0.
Fixed this by checking for last adapter state and then removing irqs.

Kernel panic:
[ 2773.628585] kernel BUG at drivers/pci/msi.c:375!
...
[ 2773.631567] RIP: 0010:free_msi_irqs+0x180/0x1b0
...
[ 2773.640939] Call Trace:
[ 2773.641572]  pci_disable_msix+0xf7/0x120
[ 2773.642224]  iavf_reset_interrupt_capability.part.41+0x15/0x30 [iavf]
[ 2773.642897]  iavf_remove+0x12e/0x500 [iavf]
[ 2773.643578]  pci_device_remove+0x3b/0xc0
[ 2773.644266]  device_release_driver_internal+0x103/0x1f0
[ 2773.644948]  pci_stop_bus_device+0x69/0x90
[ 2773.645576]  pci_stop_and_remove_bus_device+0xe/0x20
[ 2773.646215]  pci_iov_remove_virtfn+0xba/0x120
[ 2773.646862]  sriov_disable+0x2f/0xe0
[ 2773.647531]  ice_free_vfs+0x2f8/0x350 [ice]
[ 2773.648207]  ice_sriov_configure+0x94/0x960 [ice]
[ 2773.648883]  ? _kstrtoull+0x3b/0x90
[ 2773.649560]  sriov_numvfs_store+0x10a/0x190
[ 2773.650249]  kernfs_fop_write+0x116/0x190
[ 2773.650948]  vfs_write+0xa5/0x1a0
[ 2773.651651]  ksys_write+0x4f/0xb0
[ 2773.652358]  do_syscall_64+0x5b/0x1a0
[ 2773.653075]  entry_SYSCALL_64_after_hwframe+0x65/0xca

Fixes: 22ead37f8af8 ("i40evf: Add longer wait after remove module")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 This is a fix but it needs to be targeted to net-next because this feature
 is not present on net yet.
---
 v2: Targeted to correct tree
---
 drivers/net/ethernet/intel/iavf/iavf.h      | 36 +++++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_main.c | 20 ++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 537e790..f48696b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -402,6 +402,38 @@ struct iavf_device {
 extern char iavf_driver_name[];
 extern struct workqueue_struct *iavf_wq;
 
+static inline const char *iavf_state_str(enum iavf_state_t state)
+{
+	switch (state) {
+	case __IAVF_STARTUP:
+		return "__IAVF_STARTUP";
+	case __IAVF_REMOVE:
+		return "__IAVF_REMOVE";
+	case __IAVF_INIT_VERSION_CHECK:
+		return "__IAVF_INIT_VERSION_CHECK";
+	case __IAVF_INIT_GET_RESOURCES:
+		return "__IAVF_INIT_GET_RESOURCES";
+	case __IAVF_INIT_SW:
+		return "__IAVF_INIT_SW";
+	case __IAVF_INIT_FAILED:
+		return "__IAVF_INIT_FAILED";
+	case __IAVF_RESETTING:
+		return "__IAVF_RESETTING";
+	case __IAVF_COMM_FAILED:
+		return "__IAVF_COMM_FAILED";
+	case __IAVF_DOWN:
+		return "__IAVF_DOWN";
+	case __IAVF_DOWN_PENDING:
+		return "__IAVF_DOWN_PENDING";
+	case __IAVF_TESTING:
+		return "__IAVF_TESTING";
+	case __IAVF_RUNNING:
+		return "__IAVF_RUNNING";
+	default:
+		return "__IAVF_UNKNOWN_STATE";
+	}
+}
+
 static inline void iavf_change_state(struct iavf_adapter *adapter,
 				     enum iavf_state_t state)
 {
@@ -409,6 +441,10 @@ static inline void iavf_change_state(struct iavf_adapter *adapter,
 		adapter->last_state = adapter->state;
 		adapter->state = state;
 	}
+	dev_dbg(&adapter->pdev->dev,
+		"state transition from:%s to:%s\n",
+		iavf_state_str(adapter->last_state),
+		iavf_state_str(adapter->state));
 }
 
 int iavf_up(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index d384de4..ca929fe 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3329,6 +3329,13 @@ static int iavf_open(struct net_device *netdev)
 		goto err_unlock;
 	}
 
+	if (adapter->state == __IAVF_RUNNING &&
+	    !test_bit(__IAVF_VSI_DOWN, adapter->vsi.state)) {
+		dev_dbg(&adapter->pdev->dev, "VF is already open.\n");
+		err = 0;
+		goto err_unlock;
+	}
+
 	/* allocate transmit descriptors */
 	err = iavf_setup_all_tx_resources(adapter);
 	if (err)
@@ -3970,6 +3977,7 @@ static int __maybe_unused iavf_resume(struct device *dev_d)
 static void iavf_remove(struct pci_dev *pdev)
 {
 	struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
+	enum iavf_state_t prev_state = adapter->last_state;
 	struct net_device *netdev = adapter->netdev;
 	struct iavf_fdir_fltr *fdir, *fdirtmp;
 	struct iavf_vlan_filter *vlf, *vlftmp;
@@ -4009,10 +4017,22 @@ static void iavf_remove(struct pci_dev *pdev)
 	iavf_change_state(adapter, __IAVF_REMOVE);
 	adapter->aq_required = 0;
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
+
 	iavf_free_all_tx_resources(adapter);
 	iavf_free_all_rx_resources(adapter);
 	iavf_misc_irq_disable(adapter);
 	iavf_free_misc_irq(adapter);
+
+	/* In case we enter iavf_remove from erroneous state, free traffic irqs
+	 * here, so as to not cause a kernel crash, when calling
+	 * iavf_reset_interrupt_capability.
+	 */
+	if ((adapter->last_state == __IAVF_RESETTING &&
+	     prev_state != __IAVF_DOWN) ||
+	    (adapter->last_state == __IAVF_RUNNING &&
+	     !(netdev->flags & IFF_UP)))
+		iavf_free_traffic_irqs(adapter);
+
 	iavf_reset_interrupt_capability(adapter);
 	iavf_free_q_vectors(adapter);
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D45803AC6C5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jun 2021 11:05:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7307983C94;
	Fri, 18 Jun 2021 09:05:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G6oPPk7rOzbE; Fri, 18 Jun 2021 09:05:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1936183C8E;
	Fri, 18 Jun 2021 09:05:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D8F01BF293
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 09:04:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42EF440208
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 09:04:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jyqDylOdq9kD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jun 2021 09:04:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60B6F40200
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 09:04:56 +0000 (UTC)
IronPort-SDR: siuBqMFuLWAIqtgGAspcrpsUqYnJsdhFFkg5dQZEtexMBmN/6BRFo68HRM+9tfX4SNnxi0+tvd
 ofKwFeBYO0XQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="203499012"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="203499012"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 02:04:55 -0700
IronPort-SDR: sQBHFiGmD8YU1GcLdPNKezl5fKKEbmYZ5WdzGoQDSpp398DTqUBkVfXR/qPp/bPouTzRQ6iCU8
 lvQx2wmPV/Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="422162592"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga002.jf.intel.com with ESMTP; 18 Jun 2021 02:04:54 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Jun 2021 11:03:55 +0200
Message-Id: <20210618090355.12519-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v3 1/3] iavf: Refactor iavf state
 machine tracking
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
 Jakub Pawlak <jakub.pawlak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jan Sokolowski <jan.sokolowski@intel.com>

Replace state changes of iavf state machine
with a method that also tracks the previous
state the machine was on.

This change is required for further work with
refactoring init and watchdog state machines.

Tracking of previous state would help us
recover iavf after failure has occured.

Fixes: bac8486116b0 ("iavf: Refactor the watchdog state machine")
Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>

---
v3: Added new file to patch series
v2: Splitted the patch into 2 to make them smaller
---
 drivers/net/ethernet/intel/iavf/iavf.h        | 10 ++++++
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 36 ++++++++++---------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  2 +-
 3 files changed, 31 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 9ccb88e..d80266f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -316,6 +316,7 @@ struct iavf_adapter {
 	struct iavf_hw hw; /* defined in iavf_type.h */
 
 	enum iavf_state_t state;
+	enum iavf_state_t last_state;
 	unsigned long crit_section;
 
 	struct delayed_work watchdog_task;
@@ -397,6 +398,15 @@ struct iavf_device {
 extern char iavf_driver_name[];
 extern struct workqueue_struct *iavf_wq;
 
+static inline void iavf_change_state(struct iavf_adapter *adapter,
+				     enum iavf_state_t state)
+{
+	if (adapter->state != state) {
+		adapter->last_state = adapter->state;
+		adapter->state = state;
+	}
+}
+
 int iavf_up(struct iavf_adapter *adapter);
 void iavf_down(struct iavf_adapter *adapter);
 int iavf_process_config(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 4fead59..47492df 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -960,7 +960,7 @@ static void iavf_configure(struct iavf_adapter *adapter)
  **/
 static void iavf_up_complete(struct iavf_adapter *adapter)
 {
-	adapter->state = __IAVF_RUNNING;
+	iavf_change_state(adapter, __IAVF_RUNNING);
 	clear_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 
 	iavf_napi_enable_all(adapter);
@@ -1734,7 +1734,7 @@ static int iavf_startup(struct iavf_adapter *adapter)
 		iavf_shutdown_adminq(hw);
 		goto err;
 	}
-	adapter->state = __IAVF_INIT_VERSION_CHECK;
+	iavf_change_state(adapter, __IAVF_INIT_VERSION_CHECK);
 err:
 	return err;
 }
@@ -1758,7 +1758,7 @@ static int iavf_init_version_check(struct iavf_adapter *adapter)
 	if (!iavf_asq_done(hw)) {
 		dev_err(&pdev->dev, "Admin queue command never completed\n");
 		iavf_shutdown_adminq(hw);
-		adapter->state = __IAVF_STARTUP;
+		iavf_change_state(adapter, __IAVF_STARTUP);
 		goto err;
 	}
 
@@ -1781,8 +1781,7 @@ static int iavf_init_version_check(struct iavf_adapter *adapter)
 			err);
 		goto err;
 	}
-	adapter->state = __IAVF_INIT_GET_RESOURCES;
-
+	iavf_change_state(adapter, __IAVF_INIT_GET_RESOURCES);
 err:
 	return err;
 }
@@ -1898,7 +1897,7 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
 	if (netdev->features & NETIF_F_GRO)
 		dev_info(&pdev->dev, "GRO is enabled\n");
 
-	adapter->state = __IAVF_DOWN;
+	iavf_change_state(adapter, __IAVF_DOWN);
 	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 	rtnl_unlock();
 
@@ -1952,7 +1951,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 		goto restart_watchdog;
 
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
-		adapter->state = __IAVF_COMM_FAILED;
+		iavf_change_state(adapter, __IAVF_COMM_FAILED);
 
 	switch (adapter->state) {
 	case __IAVF_COMM_FAILED:
@@ -1963,7 +1962,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 			/* A chance for redemption! */
 			dev_err(&adapter->pdev->dev,
 				"Hardware came out of reset. Attempting reinit.\n");
-			adapter->state = __IAVF_STARTUP;
+			iavf_change_state(adapter, __IAVF_STARTUP);
 			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
 			queue_delayed_work(iavf_wq, &adapter->init_task, 10);
 			clear_bit(__IAVF_IN_CRITICAL_TASK,
@@ -2013,9 +2012,10 @@ static void iavf_watchdog_task(struct work_struct *work)
 		goto restart_watchdog;
 	}
 
-		/* check for hw reset */
+	/* check for hw reset */
 	reg_val = rd32(hw, IAVF_VF_ARQLEN1) & IAVF_VF_ARQLEN1_ARQENABLE_MASK;
 	if (!reg_val) {
+		iavf_change_state(adapter, __IAVF_RESETTING);
 		adapter->flags |= IAVF_FLAG_RESET_PENDING;
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
@@ -2095,6 +2095,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	adapter->netdev->flags &= ~IFF_UP;
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 	adapter->state = __IAVF_DOWN;
+	iavf_change_state(adapter, __IAVF_DOWN);
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 	wake_up(&adapter->down_waitqueue);
 	dev_info(&adapter->pdev->dev, "Reset task did not complete, VF disabled\n");
@@ -2202,7 +2203,7 @@ continue_reset:
 		iavf_napi_disable_all(adapter);
 	}
 
-	adapter->state = __IAVF_RESETTING;
+	iavf_change_state(adapter, __IAVF_RESETTING);
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 
 	/* free the Tx/Rx rings and descriptors, might be better to just
@@ -2302,11 +2303,14 @@ continue_reset:
 
 		iavf_configure(adapter);
 
+		/* iavf_up_complete() will switch device back
+		 * to __IAVF_RUNNING
+		 */
 		iavf_up_complete(adapter);
 
 		iavf_irq_enable(adapter, true);
 	} else {
-		adapter->state = __IAVF_DOWN;
+		iavf_change_state(adapter, __IAVF_DOWN);
 		wake_up(&adapter->down_waitqueue);
 	}
 	clear_bit(__IAVF_IN_CLIENT_TASK, &adapter->crit_section);
@@ -3326,7 +3330,7 @@ static int iavf_close(struct net_device *netdev)
 		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_CLOSE;
 
 	iavf_down(adapter);
-	adapter->state = __IAVF_DOWN_PENDING;
+	iavf_change_state(adapter, __IAVF_DOWN_PENDING);
 	iavf_free_traffic_irqs(adapter);
 
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
@@ -3714,7 +3718,7 @@ init_failed:
 			"Failed to communicate with PF; waiting before retry\n");
 		adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
 		iavf_shutdown_adminq(hw);
-		adapter->state = __IAVF_STARTUP;
+		iavf_change_state(adapter, __IAVF_STARTUP);
 		queue_delayed_work(iavf_wq, &adapter->init_task, HZ * 5);
 		return;
 	}
@@ -3736,7 +3740,7 @@ static void iavf_shutdown(struct pci_dev *pdev)
 		iavf_close(netdev);
 
 	/* Prevent the watchdog from running. */
-	adapter->state = __IAVF_REMOVE;
+	iavf_change_state(adapter, __IAVF_REMOVE);
 	adapter->aq_required = 0;
 
 #ifdef CONFIG_PM
@@ -3808,7 +3812,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw->back = adapter;
 
 	adapter->msg_enable = BIT(DEFAULT_DEBUG_LEVEL_SHIFT) - 1;
-	adapter->state = __IAVF_STARTUP;
+	iavf_change_state(adapter, __IAVF_STARTUP);
 
 	/* Call save state here because it relies on the adapter struct. */
 	pci_save_state(pdev);
@@ -3974,7 +3978,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	}
 
 	/* Shut down all the garbage mashers on the detention level */
-	adapter->state = __IAVF_REMOVE;
+	iavf_change_state(adapter, __IAVF_REMOVE);
 	adapter->aq_required = 0;
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 	iavf_request_reset(adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index ba27b21..8030d58 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1710,7 +1710,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		iavf_free_all_tx_resources(adapter);
 		iavf_free_all_rx_resources(adapter);
 		if (adapter->state == __IAVF_DOWN_PENDING) {
-			adapter->state = __IAVF_DOWN;
+			iavf_change_state(adapter, __IAVF_DOWN);
 			wake_up(&adapter->down_waitqueue);
 		}
 		break;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

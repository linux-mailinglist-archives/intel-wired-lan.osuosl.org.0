Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3A83B17CF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 12:08:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CFA04057D;
	Wed, 23 Jun 2021 10:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id al65crWG2nYZ; Wed, 23 Jun 2021 10:07:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3ECA140003;
	Wed, 23 Jun 2021 10:07:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1EB961BF39C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 10:07:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 127E781BD4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 10:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wO87tzcCFYes for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 10:07:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39EC181BB0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 10:07:51 +0000 (UTC)
IronPort-SDR: 77e+UdPkouS8EgaZAxjokbep7cCwIqhQ0VVxvNbBma1Z+n7mqOxwR4UhpNh0CwFhhkXAhRQRhL
 73CsivpJ5nUw==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="207170245"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="207170245"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 03:07:50 -0700
IronPort-SDR: Awouq9OUa70LasyGz2o49vtdIscPiGSIHAdcsZWeohZpbjKi4u3keNPDuwUNliL4htmAacLCBH
 8T8HhFVg9ovA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="487248998"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga001.jf.intel.com with ESMTP; 23 Jun 2021 03:07:48 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Jun 2021 10:07:46 +0000
Message-Id: <20210623100746.10800-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net-next v4 1/3] iavf: Refactor iavf state
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
MIME-Version: 1.0
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
v4: Removed unnecessary line
v3: Added new file to patch series
v2: Splitted the patch into 2 to make them smaller
---
 drivers/net/ethernet/intel/iavf/iavf.h        | 10 +++++
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 37 ++++++++++---------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  2 +-
 3 files changed, 31 insertions(+), 18 deletions(-)

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
index d64e256..f43b31d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -984,7 +984,7 @@ static void iavf_configure(struct iavf_adapter *adapter)
  **/
 static void iavf_up_complete(struct iavf_adapter *adapter)
 {
-	adapter->state = __IAVF_RUNNING;
+	iavf_change_state(adapter, __IAVF_RUNNING);
 	clear_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 
 	iavf_napi_enable_all(adapter);
@@ -1752,7 +1752,7 @@ static int iavf_startup(struct iavf_adapter *adapter)
 		iavf_shutdown_adminq(hw);
 		goto err;
 	}
-	adapter->state = __IAVF_INIT_VERSION_CHECK;
+	iavf_change_state(adapter, __IAVF_INIT_VERSION_CHECK);
 err:
 	return err;
 }
@@ -1776,7 +1776,7 @@ static int iavf_init_version_check(struct iavf_adapter *adapter)
 	if (!iavf_asq_done(hw)) {
 		dev_err(&pdev->dev, "Admin queue command never completed\n");
 		iavf_shutdown_adminq(hw);
-		adapter->state = __IAVF_STARTUP;
+		iavf_change_state(adapter, __IAVF_STARTUP);
 		goto err;
 	}
 
@@ -1799,8 +1799,7 @@ static int iavf_init_version_check(struct iavf_adapter *adapter)
 			err);
 		goto err;
 	}
-	adapter->state = __IAVF_INIT_GET_RESOURCES;
-
+	iavf_change_state(adapter, __IAVF_INIT_GET_RESOURCES);
 err:
 	return err;
 }
@@ -1916,7 +1915,7 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
 	if (netdev->features & NETIF_F_GRO)
 		dev_info(&pdev->dev, "GRO is enabled\n");
 
-	adapter->state = __IAVF_DOWN;
+	iavf_change_state(adapter, __IAVF_DOWN);
 	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 	rtnl_unlock();
 
@@ -1970,7 +1969,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 		goto restart_watchdog;
 
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
-		adapter->state = __IAVF_COMM_FAILED;
+		iavf_change_state(adapter, __IAVF_COMM_FAILED);
 
 	switch (adapter->state) {
 	case __IAVF_COMM_FAILED:
@@ -1981,7 +1980,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 			/* A chance for redemption! */
 			dev_err(&adapter->pdev->dev,
 				"Hardware came out of reset. Attempting reinit.\n");
-			adapter->state = __IAVF_STARTUP;
+			iavf_change_state(adapter, __IAVF_STARTUP);
 			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
 			queue_delayed_work(iavf_wq, &adapter->init_task, 10);
 			clear_bit(__IAVF_IN_CRITICAL_TASK,
@@ -2031,9 +2030,10 @@ static void iavf_watchdog_task(struct work_struct *work)
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
@@ -2113,7 +2113,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	adapter->netdev->flags &= ~IFF_UP;
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
-	adapter->state = __IAVF_DOWN;
+	iavf_change_state(adapter, __IAVF_DOWN);
 	wake_up(&adapter->down_waitqueue);
 	dev_info(&adapter->pdev->dev, "Reset task did not complete, VF disabled\n");
 }
@@ -2225,7 +2225,7 @@ continue_reset:
 	}
 	iavf_irq_disable(adapter);
 
-	adapter->state = __IAVF_RESETTING;
+	iavf_change_state(adapter, __IAVF_RESETTING);
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 
 	/* free the Tx/Rx rings and descriptors, might be better to just
@@ -2325,11 +2325,14 @@ continue_reset:
 
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
@@ -3345,7 +3348,7 @@ static int iavf_close(struct net_device *netdev)
 		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_CLOSE;
 
 	iavf_down(adapter);
-	adapter->state = __IAVF_DOWN_PENDING;
+	iavf_change_state(adapter, __IAVF_DOWN_PENDING);
 	iavf_free_traffic_irqs(adapter);
 
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
@@ -3737,7 +3740,7 @@ init_failed:
 			"Failed to communicate with PF; waiting before retry\n");
 		adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
 		iavf_shutdown_adminq(hw);
-		adapter->state = __IAVF_STARTUP;
+		iavf_change_state(adapter, __IAVF_STARTUP);
 		queue_delayed_work(iavf_wq, &adapter->init_task, HZ * 5);
 		goto out;
 	}
@@ -3763,7 +3766,7 @@ static void iavf_shutdown(struct pci_dev *pdev)
 	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 5000))
 		dev_warn(&adapter->pdev->dev, "failed to set __IAVF_IN_CRITICAL_TASK in %s\n", __FUNCTION__);
 	/* Prevent the watchdog from running. */
-	adapter->state = __IAVF_REMOVE;
+	iavf_change_state(adapter, __IAVF_REMOVE);
 	adapter->aq_required = 0;
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 
@@ -3836,7 +3839,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw->back = adapter;
 
 	adapter->msg_enable = BIT(DEFAULT_DEBUG_LEVEL_SHIFT) - 1;
-	adapter->state = __IAVF_STARTUP;
+	iavf_change_state(adapter, __IAVF_STARTUP);
 
 	/* Call save state here because it relies on the adapter struct. */
 	pci_save_state(pdev);
@@ -4013,7 +4016,7 @@ static void iavf_remove(struct pci_dev *pdev)
 		dev_warn(&adapter->pdev->dev, "failed to set __IAVF_IN_CRITICAL_TASK in %s\n", __FUNCTION__);
 
 	/* Shut down all the garbage mashers on the detention level */
-	adapter->state = __IAVF_REMOVE;
+	iavf_change_state(adapter, __IAVF_REMOVE);
 	adapter->aq_required = 0;
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 	iavf_free_all_tx_resources(adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index bc403b7..b12e90c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1700,7 +1700,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		iavf_free_all_tx_resources(adapter);
 		iavf_free_all_rx_resources(adapter);
 		if (adapter->state == __IAVF_DOWN_PENDING) {
-			adapter->state = __IAVF_DOWN;
+			iavf_change_state(adapter, __IAVF_DOWN);
 			wake_up(&adapter->down_waitqueue);
 		}
 		break;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

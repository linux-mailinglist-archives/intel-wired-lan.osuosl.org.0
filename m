Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 673973B17D2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 12:08:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC3A160661;
	Wed, 23 Jun 2021 10:08:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4RSFFdXOLSXs; Wed, 23 Jun 2021 10:08:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97C0460611;
	Wed, 23 Jun 2021 10:08:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D8F01BF39C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 10:08:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 48E4740140
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 10:08:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qaEvm5aZcFHc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 10:08:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3C7A740003
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 10:08:24 +0000 (UTC)
IronPort-SDR: pVg62QPXww6d7VsYYzbVPSGk5MgXdoH3N6V6MsfAAy00V5qhv2xwm7Su2mQ2F6OIckSYRfUlBp
 zHJF8RVBNv2A==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="268372287"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="268372287"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 03:08:23 -0700
IronPort-SDR: sarDQF5pbQWQb98gvNrzSW2VVfW508ILTe1+tOw2iwcw5WkLOqyD56hUfX37bMBgUI4qLISb8s
 iASyfFtzQbVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="487249097"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga001.jf.intel.com with ESMTP; 23 Jun 2021 03:08:18 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Jun 2021 10:08:02 +0000
Message-Id: <20210623100802.10997-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net-next v4 3/3] iavf: Fix init and
 watchdog state machines
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

Use single state machine for driver initialization
and for service initialized driver. The init state
machine implemented in init_task() is merged
into the watchdog_task(). The init_task() function
is removed.

Testing-Hints: Change is only for VF driver state machine,
               should be checked load/unload/reset and
               set/get driver parameters.

Fixes: bac8486116b0 ("iavf: Refactor the watchdog state machine")
Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
v4: Removed unnecessary line
v3: Added new file to patch series
v2: Splitted the patch into 2 to make them smaller
---
 drivers/net/ethernet/intel/iavf/iavf.h      |   1 -
 drivers/net/ethernet/intel/iavf/iavf_main.c | 139 +++++++++-----------
 2 files changed, 59 insertions(+), 81 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 468a2e1..6516c85 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -233,7 +233,6 @@ struct iavf_adapter {
 	struct work_struct reset_task;
 	struct work_struct adminq_task;
 	struct delayed_work client_task;
-	struct delayed_work init_task;
 	wait_queue_head_t down_waitqueue;
 	struct iavf_q_vector *q_vectors;
 	struct list_head vlan_filter_list;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 59e4c72..8564ae8 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1973,7 +1973,49 @@ static void iavf_watchdog_task(struct work_struct *work)
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
 		iavf_change_state(adapter, __IAVF_COMM_FAILED);
 
+	if (adapter->flags & IAVF_FLAG_RESET_NEEDED &&
+	    adapter->state != __IAVF_RESETTING) {
+		iavf_change_state(adapter, __IAVF_RESETTING);
+		adapter->aq_required = 0;
+		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
+	}
+
 	switch (adapter->state) {
+	case __IAVF_STARTUP:
+		iavf_startup(adapter);
+		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
+				   msecs_to_jiffies(30));
+		return;
+	case __IAVF_INIT_VERSION_CHECK:
+		iavf_init_version_check(adapter);
+		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
+				   msecs_to_jiffies(30));
+		return;
+	case __IAVF_INIT_GET_RESOURCES:
+		iavf_init_get_resources(adapter);
+		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
+				   msecs_to_jiffies(1));
+		return;
+	case __IAVF_INIT_FAILED:
+		if (++adapter->aq_wait_count > IAVF_AQ_MAX_ERR) {
+			dev_err(&adapter->pdev->dev,
+				"Failed to communicate with PF; waiting before retry\n");
+			adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
+			iavf_shutdown_adminq(hw);
+			clear_bit(__IAVF_IN_CRITICAL_TASK,
+				  &adapter->crit_section);
+			queue_delayed_work(iavf_wq,
+					   &adapter->watchdog_task, (5 * HZ));
+			return;
+		}
+		/* Try again from failed step*/
+		iavf_change_state(adapter, adapter->last_state);
+		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ);
+		return;
 	case __IAVF_COMM_FAILED:
 		reg_val = rd32(hw, IAVF_VFGEN_RSTAT) &
 			  IAVF_VFGEN_RSTAT_VFR_STATE_MASK;
@@ -1982,17 +2024,12 @@ static void iavf_watchdog_task(struct work_struct *work)
 			/* A chance for redemption! */
 			dev_err(&adapter->pdev->dev,
 				"Hardware came out of reset. Attempting reinit.\n");
-			iavf_change_state(adapter, __IAVF_STARTUP);
-			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
-			queue_delayed_work(iavf_wq, &adapter->init_task, 10);
-			clear_bit(__IAVF_IN_CRITICAL_TASK,
-				  &adapter->crit_section);
-			/* Don't reschedule the watchdog, since we've restarted
-			 * the init task. When init_task contacts the PF and
+			/* When init task contacts the PF and
 			 * gets everything set up again, it'll restart the
 			 * watchdog for us. Down, boy. Sit. Stay. Woof.
 			 */
-			return;
+			iavf_change_state(adapter, __IAVF_STARTUP);
+			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
 		}
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
@@ -2001,7 +2038,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 		queue_delayed_work(iavf_wq,
 				   &adapter->watchdog_task,
 				   msecs_to_jiffies(10));
-		goto watchdog_done;
+		return;
 	case __IAVF_RESETTING:
 		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
@@ -2024,12 +2061,14 @@ static void iavf_watchdog_task(struct work_struct *work)
 			    adapter->state == __IAVF_RUNNING)
 				iavf_request_stats(adapter);
 		}
+		if (adapter->state == __IAVF_RUNNING)
+			iavf_detect_recover_hung(&adapter->vsi);
 		break;
 	case __IAVF_REMOVE:
 		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 		return;
 	default:
-		goto restart_watchdog;
+		return;
 	}
 
 	/* check for hw reset */
@@ -2041,22 +2080,22 @@ static void iavf_watchdog_task(struct work_struct *work)
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		dev_err(&adapter->pdev->dev, "Hardware reset detected\n");
 		queue_work(iavf_wq, &adapter->reset_task);
-		goto watchdog_done;
+		clear_bit(__IAVF_IN_CRITICAL_TASK,
+			  &adapter->crit_section);
+		queue_delayed_work(iavf_wq,
+				   &adapter->watchdog_task, HZ * 2);
+		return;
 	}
 
 	schedule_delayed_work(&adapter->client_task, msecs_to_jiffies(5));
-watchdog_done:
-	if (adapter->state == __IAVF_RUNNING ||
-	    adapter->state == __IAVF_COMM_FAILED)
-		iavf_detect_recover_hung(&adapter->vsi);
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 restart_watchdog:
+	queue_work(iavf_wq, &adapter->adminq_task);
 	if (adapter->aq_required)
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(20));
 	else
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
-	queue_work(iavf_wq, &adapter->adminq_task);
 }
 
 static void iavf_disable_vf(struct iavf_adapter *adapter)
@@ -2342,6 +2381,8 @@ continue_reset:
 
 	return;
 reset_err:
+	if (running)
+		iavf_change_state(adapter, __IAVF_RUNNING);
 	clear_bit(__IAVF_IN_CLIENT_TASK, &adapter->crit_section);
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
@@ -3693,67 +3734,6 @@ int iavf_process_config(struct iavf_adapter *adapter)
 	return 0;
 }
 
-/**
- * iavf_init_task - worker thread to perform delayed initialization
- * @work: pointer to work_struct containing our data
- *
- * This task completes the work that was begun in probe. Due to the nature
- * of VF-PF communications, we may need to wait tens of milliseconds to get
- * responses back from the PF. Rather than busy-wait in probe and bog down the
- * whole system, we'll do it in a task so we can sleep.
- * This task only runs during driver init. Once we've established
- * communications with the PF driver and set up our netdev, the watchdog
- * takes over.
- **/
-static void iavf_init_task(struct work_struct *work)
-{
-	struct iavf_adapter *adapter = container_of(work,
-						    struct iavf_adapter,
-						    init_task.work);
-	struct iavf_hw *hw = &adapter->hw;
-
-	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 5000)) {
-		dev_warn(&adapter->pdev->dev, "failed to set __IAVF_IN_CRITICAL_TASK in %s\n", __FUNCTION__);
-		return;
-	}
-	switch (adapter->state) {
-	case __IAVF_STARTUP:
-		iavf_startup(adapter);
-		if (adapter->state == __IAVF_INIT_FAILED)
-			goto init_failed;
-		break;
-	case __IAVF_INIT_VERSION_CHECK:
-		iavf_init_version_check(adapter);
-		if (adapter->state == __IAVF_INIT_FAILED)
-			goto init_failed;
-		break;
-	case __IAVF_INIT_GET_RESOURCES:
-		iavf_init_get_resources(adapter);
-		if (adapter->state == __IAVF_INIT_FAILED)
-			goto init_failed;
-		goto out;
-	default:
-		goto init_failed;
-	}
-
-	queue_delayed_work(iavf_wq, &adapter->init_task,
-			   msecs_to_jiffies(30));
-	goto out;
-init_failed:
-	if (++adapter->aq_wait_count > IAVF_AQ_MAX_ERR) {
-		dev_err(&adapter->pdev->dev,
-			"Failed to communicate with PF; waiting before retry\n");
-		adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
-		iavf_shutdown_adminq(hw);
-		iavf_change_state(adapter, __IAVF_STARTUP);
-		queue_delayed_work(iavf_wq, &adapter->init_task, HZ * 5);
-		goto out;
-	}
-	queue_delayed_work(iavf_wq, &adapter->init_task, HZ);
-out:
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
-}
-
 /**
  * iavf_shutdown - Shutdown the device in preparation for a reboot
  * @pdev: pci device structure
@@ -3885,8 +3865,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
 	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
 	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
-	INIT_DELAYED_WORK(&adapter->init_task, iavf_init_task);
-	queue_delayed_work(iavf_wq, &adapter->init_task,
+	queue_delayed_work(iavf_wq, &adapter->watchdog_task,
 			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
 
 	/* Setup the wait queue for indicating transition to down status */
@@ -3995,8 +3974,8 @@ static void iavf_remove(struct pci_dev *pdev)
 	 * to run/schedule any driver tasks
 	 */
 	set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
-	cancel_delayed_work_sync(&adapter->init_task);
 	cancel_work_sync(&adapter->reset_task);
+	cancel_delayed_work_sync(&adapter->watchdog_task);
 	cancel_delayed_work_sync(&adapter->client_task);
 	iavf_misc_irq_disable(adapter);
 	if (adapter->netdev_registered) {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

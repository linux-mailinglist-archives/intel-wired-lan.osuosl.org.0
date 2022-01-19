Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6FE494083
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jan 2022 20:14:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D2BC415AB;
	Wed, 19 Jan 2022 19:14:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pwizPlFqrXnA; Wed, 19 Jan 2022 19:14:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E097041579;
	Wed, 19 Jan 2022 19:14:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C529C1BF955
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jan 2022 19:14:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE9F641579
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jan 2022 19:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 609Cb_VdGYXK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jan 2022 19:14:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B947E41578
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jan 2022 19:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642619654; x=1674155654;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iFLtLR6XTEUZxzepKTdy/w2RU3Qdrg8zG5ztZHl0rE4=;
 b=JdEBY7XOcy5vQ4ThlT+zKYavKDhIIpUowzdmt/isecxM9pYZIOXN5X/m
 TGaKEUiB4QxetTHpMQFmOkMc4MrDtK40OZZay1Qm1OxHaCTJnoB5MC0ZH
 0jEH6pElvBezqWfRlulDnKMsQ6Er9LYgIfnAUSNRqiRIVRQ75Uyja3iKW
 CyfbpQSqWofAnYh/AI1B+feBywxsMbjUE9tWwed37SfA1t5fsJKai8q3H
 7BbhF5ghz780y58Jrm6Lxy0uccWNmJQ7HoBwE0PN7wlSjXu3TyXoSCRkD
 pMxGwAHgh8ZKtoiSqakrniwhvYhemTBBlFooEZsWEKrd1N6yXpJBqfNX8 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="243983519"
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="243983519"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 10:35:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="477479947"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga006.jf.intel.com with ESMTP; 19 Jan 2022 10:35:06 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 19 Jan 2022 19:23:25 +0100
Message-Id: <20220119182325.32133-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] iavf: Add reset to watchdog task
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jakub Pawlak <jakub.pawlak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove the reset as separate task and implement
the reset procedure inside the watchdog state machine.
This allows to avoid additional overhead for processes
synchronization. The reset flags are still used to mark
reset progress for asynchonous invoked callback functions.

Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  1 -
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 12 ++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 71 ++++++-------------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  4 +-
 4 files changed, 29 insertions(+), 59 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 16cd06f..a746f44 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -237,7 +237,6 @@ struct iavf_cloud_filter {
 
 /* board specific private data structure */
 struct iavf_adapter {
-	struct work_struct reset_task;
 	struct work_struct adminq_task;
 	struct delayed_work client_task;
 	wait_queue_head_t down_waitqueue;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 3bb5671..e55c532 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -530,10 +530,8 @@ static int iavf_set_priv_flags(struct net_device *netdev, u32 flags)
 
 	/* issue a reset to force legacy-rx change to take effect */
 	if (changed_flags & IAVF_FLAG_LEGACY_RX) {
-		if (netif_running(netdev)) {
-			adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-			queue_work(iavf_wq, &adapter->reset_task);
-		}
+		if (netif_running(netdev))
+			iavf_schedule_reset(adapter);
 	}
 
 	return 0;
@@ -670,10 +668,8 @@ static int iavf_set_ringparam(struct net_device *netdev,
 		adapter->rx_desc_count = new_rx_count;
 	}
 
-	if (netif_running(netdev)) {
-		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-		queue_work(iavf_wq, &adapter->reset_task);
-	}
+	if (netif_running(netdev))
+		iavf_schedule_reset(adapter);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ec4f85a..5f658d2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -16,6 +16,7 @@ static int iavf_setup_all_rx_resources(struct iavf_adapter *adapter);
 static int iavf_close(struct net_device *netdev);
 static void iavf_init_get_resources(struct iavf_adapter *adapter);
 static int iavf_check_reset_complete(struct iavf_hw *hw);
+static void iavf_handle_hw_reset(struct iavf_adapter *adapter);
 
 char iavf_driver_name[] = "iavf";
 static const char iavf_driver_string[] =
@@ -167,11 +168,8 @@ int iavf_lock_timeout(struct mutex *lock, unsigned int msecs)
  **/
 void iavf_schedule_reset(struct iavf_adapter *adapter)
 {
-	if (!(adapter->flags &
-	      (IAVF_FLAG_RESET_PENDING | IAVF_FLAG_RESET_NEEDED))) {
-		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-		queue_work(iavf_wq, &adapter->reset_task);
-	}
+	adapter->flags |= IAVF_FLAG_RESET_NEEDED;
+	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
 }
 
 /**
@@ -2504,8 +2502,11 @@ static void iavf_watchdog_task(struct work_struct *work)
 				   msecs_to_jiffies(10));
 		return;
 	case __IAVF_RESETTING:
+		iavf_handle_hw_reset(adapter);
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
+		queue_delayed_work(iavf_wq,
+				   &adapter->watchdog_task,
+				   msecs_to_jiffies(2));
 		return;
 	case __IAVF_DOWN:
 	case __IAVF_DOWN_PENDING:
@@ -2540,14 +2541,12 @@ static void iavf_watchdog_task(struct work_struct *work)
 	/* check for hw reset */
 	reg_val = rd32(hw, IAVF_VF_ARQLEN1) & IAVF_VF_ARQLEN1_ARQENABLE_MASK;
 	if (!reg_val) {
-		adapter->flags |= IAVF_FLAG_RESET_PENDING;
+		iavf_schedule_reset(adapter);
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		dev_err(&adapter->pdev->dev, "Hardware reset detected\n");
-		queue_work(iavf_wq, &adapter->reset_task);
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq,
-				   &adapter->watchdog_task, HZ * 2);
+		queue_work(iavf_wq, &adapter->watchdog_task.work);
 		return;
 	}
 
@@ -2624,18 +2623,15 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 }
 
 /**
- * iavf_reset_task - Call-back task to handle hardware reset
- * @work: pointer to work_struct
+ * iavf_handle_hw_reset - Handle hardware reset
+ * @adapter: pointer to iavf_adapter
  *
  * During reset we need to shut down and reinitialize the admin queue
  * before we can use it to communicate with the PF again. We also clear
  * and reinit the rings because that context is lost as well.
  **/
-static void iavf_reset_task(struct work_struct *work)
+static void iavf_handle_hw_reset(struct iavf_adapter *adapter)
 {
-	struct iavf_adapter *adapter = container_of(work,
-						      struct iavf_adapter,
-						      reset_task);
 	struct virtchnl_vf_resource *vfres = adapter->vf_res;
 	struct net_device *netdev = adapter->netdev;
 	struct iavf_hw *hw = &adapter->hw;
@@ -2645,18 +2641,9 @@ static void iavf_reset_task(struct work_struct *work)
 	int i = 0, err;
 	bool running;
 
-	/* When device is being removed it doesn't make sense to run the reset
-	 * task, just return in such a case.
-	 */
-	if (mutex_is_locked(&adapter->remove_lock))
-		return;
+	adapter->flags |= IAVF_FLAG_RESET_PENDING;
+	adapter->flags &= ~IAVF_FLAG_RESET_NEEDED;
 
-	if (iavf_lock_timeout(&adapter->crit_lock, 200)) {
-		schedule_work(&adapter->reset_task);
-		return;
-	}
-	while (!mutex_trylock(&adapter->client_lock))
-		usleep_range(500, 1000);
 	if (CLIENT_ENABLED(adapter)) {
 		adapter->flags &= ~(IAVF_FLAG_CLIENT_NEEDS_OPEN |
 				    IAVF_FLAG_CLIENT_NEEDS_CLOSE |
@@ -2665,17 +2652,14 @@ static void iavf_reset_task(struct work_struct *work)
 		cancel_delayed_work_sync(&adapter->client_task);
 		iavf_notify_client_close(&adapter->vsi, true);
 	}
+
+	/* Restart the AQ here. If we have been reset but didn't
+	 * detect it, or if the PF had to reinit, our AQ will be hosed.
+	 */
 	iavf_misc_irq_disable(adapter);
-	if (adapter->flags & IAVF_FLAG_RESET_NEEDED) {
-		adapter->flags &= ~IAVF_FLAG_RESET_NEEDED;
-		/* Restart the AQ here. If we have been reset but didn't
-		 * detect it, or if the PF had to reinit, our AQ will be hosed.
-		 */
-		iavf_shutdown_adminq(hw);
-		iavf_init_adminq(hw);
-		iavf_request_reset(adapter);
-	}
-	adapter->flags |= IAVF_FLAG_RESET_PENDING;
+	iavf_shutdown_adminq(hw);
+	iavf_init_adminq(hw);
+	iavf_request_reset(adapter);
 
 	/* poll until we see the reset actually happen */
 	for (i = 0; i < IAVF_RESET_WAIT_DETECTED_COUNT; i++) {
@@ -2804,8 +2788,6 @@ static void iavf_reset_task(struct work_struct *work)
 	adapter->aq_required |= IAVF_FLAG_AQ_ADD_CLOUD_FILTER;
 	iavf_misc_irq_enable(adapter);
 
-	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 2);
-
 	/* We were running when the reset started, so we need to restore some
 	 * state here.
 	 */
@@ -2841,12 +2823,9 @@ static void iavf_reset_task(struct work_struct *work)
 		wake_up(&adapter->down_waitqueue);
 	}
 	mutex_unlock(&adapter->client_lock);
-	mutex_unlock(&adapter->crit_lock);
-
 	return;
 reset_err:
 	mutex_unlock(&adapter->client_lock);
-	mutex_unlock(&adapter->crit_lock);
 	if (running) {
 		iavf_change_state(adapter, __IAVF_RUNNING);
 		netdev->flags |= IFF_UP;
@@ -3900,8 +3879,7 @@ static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
 		iavf_notify_client_l2_params(&adapter->vsi);
 		adapter->flags |= IAVF_FLAG_SERVICE_CLIENT_REQUESTED;
 	}
-	adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-	queue_work(iavf_wq, &adapter->reset_task);
+	iavf_schedule_reset(adapter);
 
 	return 0;
 }
@@ -4490,7 +4468,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	INIT_LIST_HEAD(&adapter->fdir_list_head);
 	INIT_LIST_HEAD(&adapter->adv_rss_list_head);
 
-	INIT_WORK(&adapter->reset_task, iavf_reset_task);
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
 	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
 	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
@@ -4572,8 +4549,7 @@ static int __maybe_unused iavf_resume(struct device *dev_d)
 		return err;
 	}
 
-	queue_work(iavf_wq, &adapter->reset_task);
-
+	iavf_schedule_reset(adapter);
 	netif_device_attach(adapter->netdev);
 
 	return err;
@@ -4602,7 +4578,6 @@ static void iavf_remove(struct pci_dev *pdev)
 	int err;
 	/* Indicate we are in remove and not to run reset_task */
 	mutex_lock(&adapter->remove_lock);
-	cancel_work_sync(&adapter->reset_task);
 	cancel_delayed_work_sync(&adapter->watchdog_task);
 	cancel_delayed_work_sync(&adapter->client_task);
 	if (adapter->netdev_registered) {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 5ee1d11..115c1b1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1899,8 +1899,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			dev_info(&adapter->pdev->dev, "Reset indication received from the PF\n");
 			if (!(adapter->flags & IAVF_FLAG_RESET_PENDING)) {
 				adapter->flags |= IAVF_FLAG_RESET_PENDING;
-				dev_info(&adapter->pdev->dev, "Scheduling reset task\n");
-				queue_work(iavf_wq, &adapter->reset_task);
+				dev_info(&adapter->pdev->dev, "Scheduling reset\n");
+				iavf_schedule_reset(adapter);
 			}
 			break;
 		default:
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

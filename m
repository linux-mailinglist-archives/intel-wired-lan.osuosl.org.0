Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD62338B74
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Mar 2021 12:27:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D78DB43265;
	Fri, 12 Mar 2021 11:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CnDOi5U4jqAl; Fri, 12 Mar 2021 11:27:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A4BB42FF9;
	Fri, 12 Mar 2021 11:27:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 308E91BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 11:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1EB1484548
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 11:27:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EcRYIP8CoepK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Mar 2021 11:27:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD05C84535
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 11:27:29 +0000 (UTC)
IronPort-SDR: eAzTqb1f/mq2Gskii+puWXjPl8ZamF+8lFReX1C7sidTYwa4n0MMJuawPzuQbWBQO3+hg8KRKn
 FHT0hZd2du1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="208658425"
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="208658425"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 03:27:28 -0800
IronPort-SDR: W1nPgoAEWR/iF71fvBvKsPrgrURjMpsniCvbJFCIG6f88aRQde0q45FWX/jEexC3OvcZdVvj9Q
 DQxbHz4jzyjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="387325213"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga002.jf.intel.com with ESMTP; 12 Mar 2021 03:27:26 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Mar 2021 11:27:25 +0000
Message-Id: <20210312112725.16852-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix init and watchdog state
 machines
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

Fixes: bac8486116b0 ("iavf: Refactor the watchdog state machine")
Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  14 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 203 +++++++++---------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +-
 3 files changed, 114 insertions(+), 105 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 1b2dce8..febd050 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -175,6 +175,7 @@ enum iavf_state_t {
 	__IAVF_INIT_VERSION_CHECK,	/* aq msg sent, awaiting reply */
 	__IAVF_INIT_GET_RESOURCES,	/* aq msg sent, awaiting reply */
 	__IAVF_INIT_SW,		/* got resources, setting up structs */
+	__IAVF_INIT_FAILED,	/* init failed, restarting procedure */
 	__IAVF_RESETTING,		/* in reset */
 	__IAVF_COMM_FAILED,		/* communication with PF failed */
 	/* Below here, watchdog is running */
@@ -229,7 +230,7 @@ struct iavf_adapter {
 	struct work_struct reset_task;
 	struct work_struct adminq_task;
 	struct delayed_work client_task;
-	struct delayed_work init_task;
+	struct delayed_work watchdog_task;
 	wait_queue_head_t down_waitqueue;
 	struct iavf_q_vector *q_vectors;
 	struct list_head vlan_filter_list;
@@ -312,9 +313,9 @@ struct iavf_adapter {
 	struct iavf_hw hw; /* defined in iavf_type.h */
 
 	enum iavf_state_t state;
+	enum iavf_state_t last_state;
 	unsigned long crit_section;
 
-	struct delayed_work watchdog_task;
 	bool netdev_registered;
 	bool link_up;
 	enum virtchnl_link_speed link_speed;
@@ -388,6 +389,15 @@ struct iavf_device {
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
index 2327e8a..923f51e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -14,7 +14,7 @@
 static int iavf_setup_all_tx_resources(struct iavf_adapter *adapter);
 static int iavf_setup_all_rx_resources(struct iavf_adapter *adapter);
 static int iavf_close(struct net_device *netdev);
-static int iavf_init_get_resources(struct iavf_adapter *adapter);
+static void iavf_init_get_resources(struct iavf_adapter *adapter);
 static int iavf_check_reset_complete(struct iavf_hw *hw);
 
 char iavf_driver_name[] = "iavf";
@@ -951,7 +951,7 @@ static void iavf_configure(struct iavf_adapter *adapter)
  **/
 static void iavf_up_complete(struct iavf_adapter *adapter)
 {
-	adapter->state = __IAVF_RUNNING;
+	iavf_change_state(adapter, __IAVF_RUNNING);
 	clear_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 
 	iavf_napi_enable_all(adapter);
@@ -1673,9 +1673,9 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
  *
  * Function process __IAVF_STARTUP driver state.
  * When success the state is changed to __IAVF_INIT_VERSION_CHECK
- * when fails it returns -EAGAIN
+ * when fails the state is changed to __IAVF_INIT_FAILED
  **/
-static int iavf_startup(struct iavf_adapter *adapter)
+static void iavf_startup(struct iavf_adapter *adapter)
 {
 	struct pci_dev *pdev = adapter->pdev;
 	struct iavf_hw *hw = &adapter->hw;
@@ -1714,9 +1714,10 @@ static int iavf_startup(struct iavf_adapter *adapter)
 		iavf_shutdown_adminq(hw);
 		goto err;
 	}
-	adapter->state = __IAVF_INIT_VERSION_CHECK;
+	iavf_change_state(adapter, __IAVF_INIT_VERSION_CHECK);
+	return;
 err:
-	return err;
+	iavf_change_state(adapter, __IAVF_INIT_FAILED);
 }
 
 /**
@@ -1725,9 +1726,9 @@ err:
  *
  * Function process __IAVF_INIT_VERSION_CHECK driver state.
  * When success the state is changed to __IAVF_INIT_GET_RESOURCES
- * when fails it returns -EAGAIN
+ * when fails the state is changed to __IAVF_INIT_FAILED
  **/
-static int iavf_init_version_check(struct iavf_adapter *adapter)
+static void iavf_init_version_check(struct iavf_adapter *adapter)
 {
 	struct pci_dev *pdev = adapter->pdev;
 	struct iavf_hw *hw = &adapter->hw;
@@ -1738,7 +1739,7 @@ static int iavf_init_version_check(struct iavf_adapter *adapter)
 	if (!iavf_asq_done(hw)) {
 		dev_err(&pdev->dev, "Admin queue command never completed\n");
 		iavf_shutdown_adminq(hw);
-		adapter->state = __IAVF_STARTUP;
+		iavf_change_state(adapter, __IAVF_STARTUP);
 		goto err;
 	}
 
@@ -1761,10 +1762,11 @@ static int iavf_init_version_check(struct iavf_adapter *adapter)
 			err);
 		goto err;
 	}
-	adapter->state = __IAVF_INIT_GET_RESOURCES;
+	iavf_change_state(adapter, __IAVF_INIT_GET_RESOURCES);
+	return;
 
 err:
-	return err;
+	iavf_change_state(adapter, __IAVF_INIT_FAILED);
 }
 
 /**
@@ -1774,9 +1776,9 @@ err:
  * Function process __IAVF_INIT_GET_RESOURCES driver state and
  * finishes driver initialization procedure.
  * When success the state is changed to __IAVF_DOWN
- * when fails it returns -EAGAIN
+ * when fails it changes state to __IAVF_INIT_FAILED
  **/
-static int iavf_init_get_resources(struct iavf_adapter *adapter)
+static void iavf_init_get_resources(struct iavf_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
 	struct pci_dev *pdev = adapter->pdev;
@@ -1804,7 +1806,7 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
 		 */
 		iavf_shutdown_adminq(hw);
 		dev_err(&pdev->dev, "Unable to get VF config due to PF error condition, not retrying\n");
-		return 0;
+		return;
 	}
 	if (err) {
 		dev_err(&pdev->dev, "Unable to get VF config (%d)\n", err);
@@ -1877,7 +1879,8 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
 	if (netdev->features & NETIF_F_GRO)
 		dev_info(&pdev->dev, "GRO is enabled\n");
 
-	adapter->state = __IAVF_DOWN;
+	iavf_change_state(adapter, __IAVF_DOWN);
+
 	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 	rtnl_unlock();
 
@@ -1895,7 +1898,7 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
 	else
 		iavf_init_rss(adapter);
 
-	return err;
+	return;
 err_mem:
 	iavf_free_rss(adapter);
 err_register:
@@ -1906,7 +1909,8 @@ err_alloc:
 	kfree(adapter->vf_res);
 	adapter->vf_res = NULL;
 err:
-	return err;
+	iavf_change_state(adapter, __IAVF_INIT_FAILED);
+	return;
 }
 
 /**
@@ -1931,9 +1935,52 @@ static void iavf_watchdog_task(struct work_struct *work)
 		goto restart_watchdog;
 
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
-		adapter->state = __IAVF_COMM_FAILED;
+		iavf_change_state(adapter, __IAVF_COMM_FAILED);
+
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
@@ -1942,17 +1989,12 @@ static void iavf_watchdog_task(struct work_struct *work)
 			/* A chance for redemption! */
 			dev_err(&adapter->pdev->dev,
 				"Hardware came out of reset. Attempting reinit.\n");
-			adapter->state = __IAVF_STARTUP;
-			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
-			queue_delayed_work(iavf_wq, &adapter->init_task, 10);
-			clear_bit(__IAVF_IN_CRITICAL_TASK,
-				  &adapter->crit_section);
-			/* Don't reschedule the watchdog, since we've restarted
-			 * the init task. When init_task contacts the PF and
+			/* When init_task contacts the PF and
 			 * gets everything set up again, it'll restart the
 			 * watchdog for us. Down, boy. Sit. Stay. Woof.
 			 */
-			return;
+			iavf_change_state(adapter, __IAVF_STARTUP);
+			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
 		}
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
@@ -1961,7 +2003,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 		queue_delayed_work(iavf_wq,
 				   &adapter->watchdog_task,
 				   msecs_to_jiffies(10));
-		goto watchdog_done;
+		return;
 	case __IAVF_RESETTING:
 		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
@@ -1984,39 +2026,41 @@ static void iavf_watchdog_task(struct work_struct *work)
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
 
-		/* check for hw reset */
+	/* check for hw reset */
 	reg_val = rd32(hw, IAVF_VF_ARQLEN1) & IAVF_VF_ARQLEN1_ARQENABLE_MASK;
 	if (!reg_val) {
-		adapter->state = __IAVF_RESETTING;
 		adapter->flags |= IAVF_FLAG_RESET_PENDING;
+		iavf_change_state(adapter, __IAVF_RESETTING);
 		adapter->aq_required = 0;
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
@@ -2075,7 +2119,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	adapter->netdev->flags &= ~IFF_UP;
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
-	adapter->state = __IAVF_DOWN;
+	iavf_change_state(adapter, __IAVF_DOWN);
 	wake_up(&adapter->down_waitqueue);
 	dev_info(&adapter->pdev->dev, "Reset task did not complete, VF disabled\n");
 }
@@ -2112,6 +2156,9 @@ static void iavf_reset_task(struct work_struct *work)
 	while (test_and_set_bit(__IAVF_IN_CLIENT_TASK,
 				&adapter->crit_section))
 		usleep_range(500, 1000);
+
+	iavf_change_state(adapter, __IAVF_RESETTING);
+
 	if (CLIENT_ENABLED(adapter)) {
 		adapter->flags &= ~(IAVF_FLAG_CLIENT_NEEDS_OPEN |
 				    IAVF_FLAG_CLIENT_NEEDS_CLOSE |
@@ -2171,8 +2218,8 @@ continue_reset:
 	 * ndo_open() returning, so we can't assume it means all our open
 	 * tasks have finished, since we're not holding the rtnl_lock here.
 	 */
-	running = ((adapter->state == __IAVF_RUNNING) ||
-		   (adapter->state == __IAVF_RESETTING));
+	running = ((adapter->last_state == __IAVF_RUNNING) ||
+		   (adapter->last_state == __IAVF_RESETTING));
 
 	if (running) {
 		netif_carrier_off(netdev);
@@ -2182,7 +2229,6 @@ continue_reset:
 	}
 	iavf_irq_disable(adapter);
 
-	adapter->state = __IAVF_RESETTING;
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 
 	/* free the Tx/Rx rings and descriptors, might be better to just
@@ -2273,12 +2319,14 @@ continue_reset:
 		}
 
 		iavf_configure(adapter);
-
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
@@ -2286,6 +2334,8 @@ continue_reset:
 
 	return;
 reset_err:
+	if (running)
+		iavf_change_state(adapter, __IAVF_RUNNING);
 	clear_bit(__IAVF_IN_CLIENT_TASK, &adapter->crit_section);
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
@@ -3286,7 +3336,7 @@ static int iavf_close(struct net_device *netdev)
 		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_CLOSE;
 
 	iavf_down(adapter);
-	adapter->state = __IAVF_DOWN_PENDING;
+	iavf_change_state(adapter, __IAVF_DOWN_PENDING);
 	iavf_free_traffic_irqs(adapter);
 
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
@@ -3624,58 +3674,6 @@ int iavf_process_config(struct iavf_adapter *adapter)
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
-	switch (adapter->state) {
-	case __IAVF_STARTUP:
-		if (iavf_startup(adapter) < 0)
-			goto init_failed;
-		break;
-	case __IAVF_INIT_VERSION_CHECK:
-		if (iavf_init_version_check(adapter) < 0)
-			goto init_failed;
-		break;
-	case __IAVF_INIT_GET_RESOURCES:
-		if (iavf_init_get_resources(adapter) < 0)
-			goto init_failed;
-		return;
-	default:
-		goto init_failed;
-	}
-
-	queue_delayed_work(iavf_wq, &adapter->init_task,
-			   msecs_to_jiffies(30));
-	return;
-init_failed:
-	if (++adapter->aq_wait_count > IAVF_AQ_MAX_ERR) {
-		dev_err(&adapter->pdev->dev,
-			"Failed to communicate with PF; waiting before retry\n");
-		adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
-		iavf_shutdown_adminq(hw);
-		adapter->state = __IAVF_STARTUP;
-		queue_delayed_work(iavf_wq, &adapter->init_task, HZ * 5);
-		return;
-	}
-	queue_delayed_work(iavf_wq, &adapter->init_task, HZ);
-}
-
 /**
  * iavf_shutdown - Shutdown the device in preparation for a reboot
  * @pdev: pci device structure
@@ -3691,7 +3689,7 @@ static void iavf_shutdown(struct pci_dev *pdev)
 		iavf_close(netdev);
 
 	/* Prevent the watchdog from running. */
-	adapter->state = __IAVF_REMOVE;
+	iavf_change_state(adapter, __IAVF_REMOVE);
 	adapter->aq_required = 0;
 
 #ifdef CONFIG_PM
@@ -3763,7 +3761,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw->back = adapter;
 
 	adapter->msg_enable = BIT(DEFAULT_DEBUG_LEVEL_SHIFT) - 1;
-	adapter->state = __IAVF_STARTUP;
+	iavf_change_state(adapter, __IAVF_STARTUP);
 
 	/* Call save state here because it relies on the adapter struct. */
 	pci_save_state(pdev);
@@ -3802,10 +3800,8 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
 	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
 	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
-	INIT_DELAYED_WORK(&adapter->init_task, iavf_init_task);
-	queue_delayed_work(iavf_wq, &adapter->init_task,
+	queue_delayed_work(iavf_wq, &adapter->watchdog_task,
 			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
-
 	/* Setup the wait queue for indicating transition to down status */
 	init_waitqueue_head(&adapter->down_waitqueue);
 
@@ -3910,13 +3906,16 @@ static void iavf_remove(struct pci_dev *pdev)
 	 * to run/schedule any driver tasks
 	 */
 	set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
-	cancel_delayed_work_sync(&adapter->init_task);
 	cancel_work_sync(&adapter->reset_task);
 	cancel_delayed_work_sync(&adapter->client_task);
 	iavf_misc_irq_disable(adapter);
 	if (adapter->netdev_registered) {
 		unregister_netdev(netdev);
 		adapter->netdev_registered = false;
+		/* wait for device down */
+		wait_event_timeout(adapter->down_waitqueue,
+				   adapter->state == __IAVF_DOWN,
+				   msecs_to_jiffies(200));
 	}
 	if (CLIENT_ALLOWED(adapter)) {
 		err = iavf_lan_del_device(adapter);
@@ -3926,7 +3925,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	}
 
 	/* Shut down all the garbage mashers on the detention level */
-	adapter->state = __IAVF_REMOVE;
+	iavf_change_state(adapter, __IAVF_REMOVE);
 	adapter->aq_required = 0;
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 	iavf_request_reset(adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index b41dff4..6b257f0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1558,7 +1558,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
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

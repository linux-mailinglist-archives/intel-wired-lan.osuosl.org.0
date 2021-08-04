Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1733DFCDC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Aug 2021 10:29:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1B6E82B93;
	Wed,  4 Aug 2021 08:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IdqVWpYGw_L7; Wed,  4 Aug 2021 08:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7162382422;
	Wed,  4 Aug 2021 08:29:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 10C171BF865
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 08:29:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C05982422
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 08:29:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-rtkQ5AF65M for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Aug 2021 08:29:32 +0000 (UTC)
X-Greylist: delayed 00:05:10 by SQLgrey-1.8.0
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39CC882410
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 08:29:32 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-HgV1TvsHM1K82lE2sXYSag-1; Wed, 04 Aug 2021 04:23:02 -0400
X-MC-Unique: HgV1TvsHM1K82lE2sXYSag-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6CA9E87D542;
 Wed,  4 Aug 2021 08:23:01 +0000 (UTC)
Received: from x230.redhat.com (unknown [10.39.192.132])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7F6F460854;
 Wed,  4 Aug 2021 08:22:59 +0000 (UTC)
From: Stefan Assmann <sassmann@kpanic.de>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  4 Aug 2021 10:22:24 +0200
Message-Id: <20210804082224.15368-1-sassmann@kpanic.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sassmann@kpanic.de
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: kpanic.de
Subject: [Intel-wired-lan] [PATCH net-next] iavf: use mutexes for locking of
 critical sections
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
Cc: slawomirx.laba@intel.com, netdev@vger.kernel.org, sassmann@kpanic.de,
 kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As follow-up to the discussion with Jakub Kicinski about iavf locking
being insufficient [1] convert iavf to use mutexes instead of bitops.
The locking logic is kept as is, just a drop-in replacement of
enum iavf_critical_section_t with separate mutexes.
The only difference is that the mutexes will be destroyed before the
module is unloaded.

[1] https://lwn.net/ml/netdev/20210316150210.00007249%40intel.com/

Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |   9 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  10 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 100 +++++++++---------
 3 files changed, 56 insertions(+), 63 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index e8bd04100ecd..b351ad653d12 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -185,12 +185,6 @@ enum iavf_state_t {
 	__IAVF_RUNNING,		/* opened, working */
 };
 
-enum iavf_critical_section_t {
-	__IAVF_IN_CRITICAL_TASK,	/* cannot be interrupted */
-	__IAVF_IN_CLIENT_TASK,
-	__IAVF_IN_REMOVE_TASK,	/* device being removed */
-};
-
 #define IAVF_CLOUD_FIELD_OMAC		0x01
 #define IAVF_CLOUD_FIELD_IMAC		0x02
 #define IAVF_CLOUD_FIELD_IVLAN	0x04
@@ -235,6 +229,9 @@ struct iavf_adapter {
 	struct iavf_q_vector *q_vectors;
 	struct list_head vlan_filter_list;
 	struct list_head mac_filter_list;
+	struct mutex crit_lock;
+	struct mutex client_lock;
+	struct mutex remove_lock;
 	/* Lock to protect accesses to MAC and VLAN lists */
 	spinlock_t mac_vlan_list_lock;
 	char misc_vector_name[IFNAMSIZ + 9];
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index af43fbd8cb75..edbeb27213f8 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1352,8 +1352,7 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	if (!fltr)
 		return -ENOMEM;
 
-	while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
-				&adapter->crit_section)) {
+	while (!mutex_trylock(&adapter->crit_lock)) {
 		if (--count == 0) {
 			kfree(fltr);
 			return -EINVAL;
@@ -1378,7 +1377,7 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	if (err && fltr)
 		kfree(fltr);
 
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->crit_lock);
 	return err;
 }
 
@@ -1563,8 +1562,7 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 		return -EINVAL;
 	}
 
-	while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
-				&adapter->crit_section)) {
+	while (!mutex_trylock(&adapter->crit_lock)) {
 		if (--count == 0) {
 			kfree(rss_new);
 			return -EINVAL;
@@ -1600,7 +1598,7 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
 	if (!err)
 		mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
 
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->crit_lock);
 
 	if (!rss_new_add)
 		kfree(rss_new);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index fa6cf20da911..cd0a424bd5f4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -132,21 +132,18 @@ enum iavf_status iavf_free_virt_mem_d(struct iavf_hw *hw,
 }
 
 /**
- * iavf_lock_timeout - try to set bit but give up after timeout
- * @adapter: board private structure
- * @bit: bit to set
+ * iavf_lock_timeout - try to lock mutex but give up after timeout
+ * @lock: mutex that should be locked
  * @msecs: timeout in msecs
  *
  * Returns 0 on success, negative on failure
  **/
-static int iavf_lock_timeout(struct iavf_adapter *adapter,
-			     enum iavf_critical_section_t bit,
-			     unsigned int msecs)
+static int iavf_lock_timeout(struct mutex *lock, unsigned int msecs)
 {
 	unsigned int wait, delay = 10;
 
 	for (wait = 0; wait < msecs; wait += delay) {
-		if (!test_and_set_bit(bit, &adapter->crit_section))
+		if (mutex_trylock(lock))
 			return 0;
 
 		msleep(delay);
@@ -1944,7 +1941,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 	struct iavf_hw *hw = &adapter->hw;
 	u32 reg_val;
 
-	if (test_and_set_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section))
+	if (!mutex_trylock(&adapter->crit_lock))
 		goto restart_watchdog;
 
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
@@ -1962,8 +1959,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 			adapter->state = __IAVF_STARTUP;
 			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
 			queue_delayed_work(iavf_wq, &adapter->init_task, 10);
-			clear_bit(__IAVF_IN_CRITICAL_TASK,
-				  &adapter->crit_section);
+			mutex_unlock(&adapter->crit_lock);
 			/* Don't reschedule the watchdog, since we've restarted
 			 * the init task. When init_task contacts the PF and
 			 * gets everything set up again, it'll restart the
@@ -1973,14 +1969,13 @@ static void iavf_watchdog_task(struct work_struct *work)
 		}
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
-		clear_bit(__IAVF_IN_CRITICAL_TASK,
-			  &adapter->crit_section);
+		mutex_unlock(&adapter->crit_lock);
 		queue_delayed_work(iavf_wq,
 				   &adapter->watchdog_task,
 				   msecs_to_jiffies(10));
 		goto watchdog_done;
 	case __IAVF_RESETTING:
-		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+		mutex_unlock(&adapter->crit_lock);
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
 		return;
 	case __IAVF_DOWN:
@@ -2003,7 +1998,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 		}
 		break;
 	case __IAVF_REMOVE:
-		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+		mutex_unlock(&adapter->crit_lock);
 		return;
 	default:
 		goto restart_watchdog;
@@ -2025,7 +2020,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 	if (adapter->state == __IAVF_RUNNING ||
 	    adapter->state == __IAVF_COMM_FAILED)
 		iavf_detect_recover_hung(&adapter->vsi);
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->crit_lock);
 restart_watchdog:
 	if (adapter->aq_required)
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
@@ -2089,7 +2084,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
 	iavf_shutdown_adminq(&adapter->hw);
 	adapter->netdev->flags &= ~IFF_UP;
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->crit_lock);
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 	adapter->state = __IAVF_DOWN;
 	wake_up(&adapter->down_waitqueue);
@@ -2122,15 +2117,14 @@ static void iavf_reset_task(struct work_struct *work)
 	/* When device is being removed it doesn't make sense to run the reset
 	 * task, just return in such a case.
 	 */
-	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+	if (mutex_is_locked(&adapter->remove_lock))
 		return;
 
-	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 200)) {
+	if (iavf_lock_timeout(&adapter->crit_lock, 200)) {
 		schedule_work(&adapter->reset_task);
 		return;
 	}
-	while (test_and_set_bit(__IAVF_IN_CLIENT_TASK,
-				&adapter->crit_section))
+	while (!mutex_trylock(&adapter->client_lock))
 		usleep_range(500, 1000);
 	if (CLIENT_ENABLED(adapter)) {
 		adapter->flags &= ~(IAVF_FLAG_CLIENT_NEEDS_OPEN |
@@ -2182,7 +2176,7 @@ static void iavf_reset_task(struct work_struct *work)
 		dev_err(&adapter->pdev->dev, "Reset never finished (%x)\n",
 			reg_val);
 		iavf_disable_vf(adapter);
-		clear_bit(__IAVF_IN_CLIENT_TASK, &adapter->crit_section);
+		mutex_unlock(&adapter->client_lock);
 		return; /* Do not attempt to reinit. It's dead, Jim. */
 	}
 
@@ -2301,13 +2295,13 @@ static void iavf_reset_task(struct work_struct *work)
 		adapter->state = __IAVF_DOWN;
 		wake_up(&adapter->down_waitqueue);
 	}
-	clear_bit(__IAVF_IN_CLIENT_TASK, &adapter->crit_section);
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->client_lock);
+	mutex_unlock(&adapter->crit_lock);
 
 	return;
 reset_err:
-	clear_bit(__IAVF_IN_CLIENT_TASK, &adapter->crit_section);
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->client_lock);
+	mutex_unlock(&adapter->crit_lock);
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
 	iavf_close(netdev);
 }
@@ -2335,7 +2329,7 @@ static void iavf_adminq_task(struct work_struct *work)
 	if (!event.msg_buf)
 		goto out;
 
-	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 200))
+	if (iavf_lock_timeout(&adapter->crit_lock, 200))
 		goto freedom;
 	do {
 		ret = iavf_clean_arq_element(hw, &event, &pending);
@@ -2350,7 +2344,7 @@ static void iavf_adminq_task(struct work_struct *work)
 		if (pending != 0)
 			memset(event.msg_buf, 0, IAVF_MAX_AQ_BUF_SIZE);
 	} while (pending);
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->crit_lock);
 
 	if ((adapter->flags &
 	     (IAVF_FLAG_RESET_PENDING | IAVF_FLAG_RESET_NEEDED)) ||
@@ -2417,7 +2411,7 @@ static void iavf_client_task(struct work_struct *work)
 	 * later.
 	 */
 
-	if (test_and_set_bit(__IAVF_IN_CLIENT_TASK, &adapter->crit_section))
+	if (!mutex_trylock(&adapter->client_lock))
 		return;
 
 	if (adapter->flags & IAVF_FLAG_SERVICE_CLIENT_REQUESTED) {
@@ -2440,7 +2434,7 @@ static void iavf_client_task(struct work_struct *work)
 		adapter->flags &= ~IAVF_FLAG_CLIENT_NEEDS_OPEN;
 	}
 out:
-	clear_bit(__IAVF_IN_CLIENT_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->client_lock);
 }
 
 /**
@@ -3043,8 +3037,7 @@ static int iavf_configure_clsflower(struct iavf_adapter *adapter,
 	if (!filter)
 		return -ENOMEM;
 
-	while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
-				&adapter->crit_section)) {
+	while (!mutex_trylock(&adapter->crit_lock)) {
 		if (--count == 0)
 			goto err;
 		udelay(1);
@@ -3075,7 +3068,7 @@ static int iavf_configure_clsflower(struct iavf_adapter *adapter,
 	if (err)
 		kfree(filter);
 
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->crit_lock);
 	return err;
 }
 
@@ -3222,8 +3215,7 @@ static int iavf_open(struct net_device *netdev)
 		return -EIO;
 	}
 
-	while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
-				&adapter->crit_section))
+	while (!mutex_trylock(&adapter->crit_lock))
 		usleep_range(500, 1000);
 
 	if (adapter->state != __IAVF_DOWN) {
@@ -3258,7 +3250,7 @@ static int iavf_open(struct net_device *netdev)
 
 	iavf_irq_enable(adapter, true);
 
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->crit_lock);
 
 	return 0;
 
@@ -3270,7 +3262,7 @@ static int iavf_open(struct net_device *netdev)
 err_setup_tx:
 	iavf_free_all_tx_resources(adapter);
 err_unlock:
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->crit_lock);
 
 	return err;
 }
@@ -3294,8 +3286,7 @@ static int iavf_close(struct net_device *netdev)
 	if (adapter->state <= __IAVF_DOWN_PENDING)
 		return 0;
 
-	while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
-				&adapter->crit_section))
+	while (!mutex_trylock(&adapter->crit_lock))
 		usleep_range(500, 1000);
 
 	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
@@ -3306,7 +3297,7 @@ static int iavf_close(struct net_device *netdev)
 	adapter->state = __IAVF_DOWN_PENDING;
 	iavf_free_traffic_irqs(adapter);
 
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->crit_lock);
 
 	/* We explicitly don't free resources here because the hardware is
 	 * still active and can DMA into memory. Resources are cleared in
@@ -3655,8 +3646,8 @@ static void iavf_init_task(struct work_struct *work)
 						    init_task.work);
 	struct iavf_hw *hw = &adapter->hw;
 
-	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 5000)) {
-		dev_warn(&adapter->pdev->dev, "failed to set __IAVF_IN_CRITICAL_TASK in %s\n", __FUNCTION__);
+	if (iavf_lock_timeout(&adapter->crit_lock, 5000)) {
+		dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n", __FUNCTION__);
 		return;
 	}
 	switch (adapter->state) {
@@ -3691,7 +3682,7 @@ static void iavf_init_task(struct work_struct *work)
 	}
 	queue_delayed_work(iavf_wq, &adapter->init_task, HZ);
 out:
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->crit_lock);
 }
 
 /**
@@ -3708,12 +3699,12 @@ static void iavf_shutdown(struct pci_dev *pdev)
 	if (netif_running(netdev))
 		iavf_close(netdev);
 
-	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 5000))
-		dev_warn(&adapter->pdev->dev, "failed to set __IAVF_IN_CRITICAL_TASK in %s\n", __FUNCTION__);
+	if (iavf_lock_timeout(&adapter->crit_lock, 5000))
+		dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n", __FUNCTION__);
 	/* Prevent the watchdog from running. */
 	adapter->state = __IAVF_REMOVE;
 	adapter->aq_required = 0;
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->crit_lock);
 
 #ifdef CONFIG_PM
 	pci_save_state(pdev);
@@ -3807,6 +3798,9 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* set up the locks for the AQ, do this only once in probe
 	 * and destroy them only once in remove
 	 */
+	mutex_init(&adapter->crit_lock);
+	mutex_init(&adapter->client_lock);
+	mutex_init(&adapter->remove_lock);
 	mutex_init(&hw->aq.asq_mutex);
 	mutex_init(&hw->aq.arq_mutex);
 
@@ -3858,8 +3852,7 @@ static int __maybe_unused iavf_suspend(struct device *dev_d)
 
 	netif_device_detach(netdev);
 
-	while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
-				&adapter->crit_section))
+	while (!mutex_trylock(&adapter->crit_lock))
 		usleep_range(500, 1000);
 
 	if (netif_running(netdev)) {
@@ -3870,7 +3863,7 @@ static int __maybe_unused iavf_suspend(struct device *dev_d)
 	iavf_free_misc_irq(adapter);
 	iavf_reset_interrupt_capability(adapter);
 
-	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+	mutex_unlock(&adapter->crit_lock);
 
 	return 0;
 }
@@ -3932,7 +3925,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	struct iavf_hw *hw = &adapter->hw;
 	int err;
 	/* Indicate we are in remove and not to run reset_task */
-	set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
+	mutex_lock(&adapter->remove_lock);
 	cancel_delayed_work_sync(&adapter->init_task);
 	cancel_work_sync(&adapter->reset_task);
 	cancel_delayed_work_sync(&adapter->client_task);
@@ -3954,8 +3947,8 @@ static void iavf_remove(struct pci_dev *pdev)
 		iavf_request_reset(adapter);
 		msleep(50);
 	}
-	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 5000))
-		dev_warn(&adapter->pdev->dev, "failed to set __IAVF_IN_CRITICAL_TASK in %s\n", __FUNCTION__);
+	if (iavf_lock_timeout(&adapter->crit_lock, 5000))
+		dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n", __FUNCTION__);
 
 	/* Shut down all the garbage mashers on the detention level */
 	adapter->state = __IAVF_REMOVE;
@@ -3980,6 +3973,11 @@ static void iavf_remove(struct pci_dev *pdev)
 	/* destroy the locks only once, here */
 	mutex_destroy(&hw->aq.arq_mutex);
 	mutex_destroy(&hw->aq.asq_mutex);
+	mutex_destroy(&adapter->client_lock);
+	mutex_unlock(&adapter->crit_lock);
+	mutex_destroy(&adapter->crit_lock);
+	mutex_unlock(&adapter->remove_lock);
+	mutex_destroy(&adapter->remove_lock);
 
 	iounmap(hw->hw_addr);
 	pci_release_regions(pdev);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

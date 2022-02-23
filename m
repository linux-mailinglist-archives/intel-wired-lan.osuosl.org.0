Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B96A4C12D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 13:38:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDB134155D;
	Wed, 23 Feb 2022 12:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0_iN63XjvZcR; Wed, 23 Feb 2022 12:38:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A08740308;
	Wed, 23 Feb 2022 12:38:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B1791BF83C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 12:38:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 861F840308
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 12:38:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IbSDhRCIo-sw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 12:38:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAD904017C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 12:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645619915; x=1677155915;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vYk9WIykc01VxPnr5lek7m3NfK2hfCPRK1c2VMuSp1E=;
 b=HjfbaHKqb0FVfTXZbmIfLpqX2i1KBRPeWCjlTa7gKxk5aWPSmwW9fsdQ
 pm52KftTrLzziVzpaLIq0+Z208hrwkLSCNEdYQzZZqM4RbRNI3ipQJPhB
 RgQMcn8zVu7+a//gpQAruyobwBRKCMSeY8Idtwm1lzRyCvSq4GpBh9xtl
 8Uznc72Qfj7jEPjC+sqQZwsD+9tNLavNZScc+Wk7emc+BOj2ZlKGxxb5s
 8cDGb5sXoyWm6TArKfQ4ItjjJn28J9PfCDpE/OCjNz0K01pQuw4jOCBU0
 nDL1DTgxeWIeioDhgU3x0rs5WCenOV/dUZbcqchP81e/KoRW0HliqVXpQ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="231926402"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="231926402"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 04:38:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="781858012"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga005.fm.intel.com with ESMTP; 23 Feb 2022 04:38:33 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Feb 2022 13:35:49 +0100
Message-Id: <20220223123549.29391-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1 1/8] iavf: Rework mutexes for
 better synchronisation
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
Cc: SlawomirX Laba <slawomirx.laba@intel.com>,
 Phani Burra <phani.r.burra@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: SlawomirX Laba <slawomirx.laba@intel.com>

The driver used to crash in multiple spots when put to stress testing
of the init, reset and remove paths.

The user would experience call traces or hangs when creating,
resetting, removing VFs. Depending on the machines, the call traces
are happening in random spots, like reset restoring resources racing
with driver remove.

Make adapter->crit_lock mutex a mandatory lock for guarding the
operations performed on all workqueues and functions dealing with
resource allocation and disposal.

Make __IAVF_REMOVE a final state of the driver respected by
workqueues that shall not requeue, when they fail to obtain the
crit_lock.

Make the IRQ handler not to queue the new work for adminq_task
when the __IAVF_REMOVE state is set.

Fixes: 5ac49f3c2702 ("iavf: use mutexes for locking of critical sections")
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  1 -
 drivers/net/ethernet/intel/iavf/iavf_main.c | 66 +++++++++++----------
 2 files changed, 36 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 59806d1..44f83e0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -246,7 +246,6 @@ struct iavf_adapter {
 	struct list_head mac_filter_list;
 	struct mutex crit_lock;
 	struct mutex client_lock;
-	struct mutex remove_lock;
 	/* Lock to protect accesses to MAC and VLAN lists */
 	spinlock_t mac_vlan_list_lock;
 	char misc_vector_name[IFNAMSIZ + 9];
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 8125b91..84ae96e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -302,8 +302,9 @@ static irqreturn_t iavf_msix_aq(int irq, void *data)
 	rd32(hw, IAVF_VFINT_ICR01);
 	rd32(hw, IAVF_VFINT_ICR0_ENA1);
 
-	/* schedule work on the private workqueue */
-	queue_work(iavf_wq, &adapter->adminq_task);
+	if (adapter->state != __IAVF_REMOVE)
+		/* schedule work on the private workqueue */
+		queue_work(iavf_wq, &adapter->adminq_task);
 
 	return IRQ_HANDLED;
 }
@@ -2374,8 +2375,12 @@ static void iavf_watchdog_task(struct work_struct *work)
 	struct iavf_hw *hw = &adapter->hw;
 	u32 reg_val;
 
-	if (!mutex_trylock(&adapter->crit_lock))
+	if (!mutex_trylock(&adapter->crit_lock)) {
+		if (adapter->state == __IAVF_REMOVE)
+			return;
+
 		goto restart_watchdog;
+	}
 
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
 		iavf_change_state(adapter, __IAVF_COMM_FAILED);
@@ -2601,13 +2606,13 @@ static void iavf_reset_task(struct work_struct *work)
 	/* When device is being removed it doesn't make sense to run the reset
 	 * task, just return in such a case.
 	 */
-	if (mutex_is_locked(&adapter->remove_lock))
-		return;
+	if (!mutex_trylock(&adapter->crit_lock)) {
+		if (adapter->state != __IAVF_REMOVE)
+			queue_work(iavf_wq, &adapter->reset_task);
 
-	if (iavf_lock_timeout(&adapter->crit_lock, 200)) {
-		schedule_work(&adapter->reset_task);
 		return;
 	}
+
 	while (!mutex_trylock(&adapter->client_lock))
 		usleep_range(500, 1000);
 	if (CLIENT_ENABLED(adapter)) {
@@ -2826,13 +2831,19 @@ static void iavf_adminq_task(struct work_struct *work)
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
 		goto out;
 
+	if (!mutex_trylock(&adapter->crit_lock)) {
+		if (adapter->state == __IAVF_REMOVE)
+			return;
+
+		queue_work(iavf_wq, &adapter->adminq_task);
+		goto out;
+	}
+
 	event.buf_len = IAVF_MAX_AQ_BUF_SIZE;
 	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
 	if (!event.msg_buf)
 		goto out;
 
-	if (iavf_lock_timeout(&adapter->crit_lock, 200))
-		goto freedom;
 	do {
 		ret = iavf_clean_arq_element(hw, &event, &pending);
 		v_op = (enum virtchnl_ops)le32_to_cpu(event.desc.cookie_high);
@@ -3800,11 +3811,12 @@ static int iavf_close(struct net_device *netdev)
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	int status;
 
-	if (adapter->state <= __IAVF_DOWN_PENDING)
-		return 0;
+	mutex_lock(&adapter->crit_lock);
 
-	while (!mutex_trylock(&adapter->crit_lock))
-		usleep_range(500, 1000);
+	if (adapter->state <= __IAVF_DOWN_PENDING) {
+		mutex_unlock(&adapter->crit_lock);
+		return 0;
+	}
 
 	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 	if (CLIENT_ENABLED(adapter))
@@ -4431,7 +4443,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	 */
 	mutex_init(&adapter->crit_lock);
 	mutex_init(&adapter->client_lock);
-	mutex_init(&adapter->remove_lock);
 	mutex_init(&hw->aq.asq_mutex);
 	mutex_init(&hw->aq.arq_mutex);
 
@@ -4556,11 +4567,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	struct iavf_cloud_filter *cf, *cftmp;
 	struct iavf_hw *hw = &adapter->hw;
 	int err;
-	/* Indicate we are in remove and not to run reset_task */
-	mutex_lock(&adapter->remove_lock);
-	cancel_work_sync(&adapter->reset_task);
-	cancel_delayed_work_sync(&adapter->watchdog_task);
-	cancel_delayed_work_sync(&adapter->client_task);
+
 	if (adapter->netdev_registered) {
 		unregister_netdev(netdev);
 		adapter->netdev_registered = false;
@@ -4572,6 +4579,10 @@ static void iavf_remove(struct pci_dev *pdev)
 				 err);
 	}
 
+	mutex_lock(&adapter->crit_lock);
+	dev_info(&adapter->pdev->dev, "Remove device\n");
+	iavf_change_state(adapter, __IAVF_REMOVE);
+
 	iavf_request_reset(adapter);
 	msleep(50);
 	/* If the FW isn't responding, kick it once, but only once. */
@@ -4579,18 +4590,19 @@ static void iavf_remove(struct pci_dev *pdev)
 		iavf_request_reset(adapter);
 		msleep(50);
 	}
-	if (iavf_lock_timeout(&adapter->crit_lock, 5000))
-		dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n", __FUNCTION__);
 
-	dev_info(&adapter->pdev->dev, "Removing device\n");
+	iavf_misc_irq_disable(adapter);
 	/* Shut down all the garbage mashers on the detention level */
-	iavf_change_state(adapter, __IAVF_REMOVE);
+	cancel_work_sync(&adapter->reset_task);
+	cancel_delayed_work_sync(&adapter->watchdog_task);
+	cancel_work_sync(&adapter->adminq_task);
+	cancel_delayed_work_sync(&adapter->client_task);
+
 	adapter->aq_required = 0;
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 
 	iavf_free_all_tx_resources(adapter);
 	iavf_free_all_rx_resources(adapter);
-	iavf_misc_irq_disable(adapter);
 	iavf_free_misc_irq(adapter);
 
 	/* In case we enter iavf_remove from erroneous state, free traffic irqs
@@ -4606,10 +4618,6 @@ static void iavf_remove(struct pci_dev *pdev)
 	iavf_reset_interrupt_capability(adapter);
 	iavf_free_q_vectors(adapter);
 
-	cancel_delayed_work_sync(&adapter->watchdog_task);
-
-	cancel_work_sync(&adapter->adminq_task);
-
 	iavf_free_rss(adapter);
 
 	if (hw->aq.asq.count)
@@ -4621,8 +4629,6 @@ static void iavf_remove(struct pci_dev *pdev)
 	mutex_destroy(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
 	mutex_destroy(&adapter->crit_lock);
-	mutex_unlock(&adapter->remove_lock);
-	mutex_destroy(&adapter->remove_lock);
 
 	iounmap(hw->hw_addr);
 	pci_release_regions(pdev);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

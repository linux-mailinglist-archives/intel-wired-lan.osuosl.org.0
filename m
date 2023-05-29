Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FB8714886
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 May 2023 13:31:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECD4D612A1;
	Mon, 29 May 2023 11:31:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECD4D612A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685359894;
	bh=GybD11rfcp2OWRptQ4KQF+SSsK+REN0iOkjLSizpgoo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fH2AAIvU7zJ8ivuLcDfCcz5ZkMzr6DhJiqSc+eVhvLnJT73Ai5E/Inqq1ljFRTFn6
	 0hLUy9aIjttJURYjSgcz+Bc06nkTf1hFEVRhsBXvoSiiFXyrWwf5ZjtD7aiyUpYggN
	 GdLMjqTQGyzOSYTBGzbykv4noX/LXhCDf78HgWuFAMoyKcOvqjTyNfyQj0z8aygAzB
	 26O91PSFjMOgE5v8OKSpr+TYzejYnIjmlg9S/J9eLgSWRq2YMj+FfMr/IhJUSqGMUv
	 wpegPnyS2xdRlSxf/zCeW4WFZ4QmnsHQQ6tFITgqjL768lQm5SosZHPQLoIQrOvcZo
	 wZR+2/BOEVt+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rDJJaIu3-d7V; Mon, 29 May 2023 11:31:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9576061289;
	Mon, 29 May 2023 11:31:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9576061289
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C2D781BF593
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 11:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9BB9E6111F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 11:31:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BB9E6111F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uoe7bWnqO5N6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 May 2023 11:31:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5DDA6118D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5DDA6118D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 11:31:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="441041636"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="441041636"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:31:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="880358664"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="880358664"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga005.jf.intel.com with ESMTP; 29 May 2023 04:31:19 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 May 2023 07:25:56 -0400
Message-Id: <20230529112558.893997-3-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230529112558.893997-1-mateusz.palczewski@intel.com>
References: <20230529112558.893997-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685359881; x=1716895881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+vqn6xJHnZYvCnYzZ+abyYZYT61KqChxAHRMor5RJ00=;
 b=aRjNbZIeeSNqeVlgE343OBYLxeX+ETpvaxT8JVh8UcogBTKNApDw0DEi
 eBeQLhmOS8N+eRKVeipVqeXgGClDUcl+xn4MG68ZZA2XoS2IKwvLTQGZD
 4hzgLePrR3paB7ChlkFVuNeMCVN7Osl+xj646T7EaLH7IBx0ZAo7TGhb+
 qWBHOd/2VjYL4bayhOyrwZ8+IfMf9+mYC4LX0WC5Ri/Dt1qQHLh4abBXl
 TecV83EY4kmXradwoYplkJ1BnQA6YWYlyS3xGvMB4zfIWl3lCbj6Etg+q
 72MEdrjqZcznKK2xHq4MXMPB+3QPzE5zTRcFhNmZFEvcAvLFJZzU9bI7h
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aRjNbZIe
Subject: [Intel-wired-lan] [PATCH iwl-net v9 2/4] iavf: Don't lock rtnl_lock
 twice in reset
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Szycik <marcin.szycik@linux.intel.com>

Some ndo/ethtool callbacks are called under rtnl_lock.
If such a callback triggers a reset, the reset task might try to take
the rtnl_lock again, causing a deadlock.

When the driver is unable to obtain the rtnl_lock in the reset flow,
the reset task does not attempt to double-lock rtnl_lock and avoids
the deadlock by scheduling the netdev update.

Iavf_delayed_set_interrupt_capability is scheduled on the global wq
we don't schedule it on the iavf workqueue to avoid deadlock.
(iavf_workqueue is ordered and designed to support only one active task)

e.g:
-A iavf schedules reset
-B another iavf reset asks for RTNL_LOCK
-A iavf schedules the iavf_delayed_set_interrupt_capability.
-A reset ends
-A iavf_delayed_set_interrupt_capability asks for RTNL_LOCK
-B obtains the RTNL_LOCK waits for iavf_delayed_set_interrupt_capability
to free the working queue
-A waits for RTNL_LOCK

Before this patch, a deadlock could be caused by e.g.:

echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
while :; do
ip l s $VF1 up
ethtool --set-channels $VF1 combined 8
ip l s $VF1 down
ip l s $VF1 up
ethtool --set-channels $VF1 combined 16
ip l s $VF1 down
done

Fixes: aa626da947e9 ("iavf: Detach device during reset task")

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Co-developed-by: Dawid Wesierski <dawidx.wesierski@intel.com>
Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
v1->v3: changes were done internally
v4: added space before open parenthesis '(', fixed code indent
v5: changed the way the scheduled function updates the netdev from { trylock -> reschedule }
    design to one that just takes and wait for rtnl_lock lock. Introduced 30ms delay in scheduling
    to account for scheduling the resets in quick succession.
v6: added a guard to iavf_delayed_set_interrupt_capability function to prevent updating an unregistered netdev.
    Removed the delay from the scheduling and moved the rtnl to obtain the number of queues after acquiring the lock
v7: made it compatible with net-queue, no changes in logic
v8->v9: no changes
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c | 38 ++++++++++++++++++---
 2 files changed, 34 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index c51b9ed4dc29..f49b7ac4ab43 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -255,6 +255,7 @@ struct iavf_adapter {
 	struct workqueue_struct *wq;
 	struct work_struct reset_task;
 	struct work_struct adminq_task;
+	struct work_struct set_interrupt_capability;
 	struct delayed_work client_task;
 	wait_queue_head_t down_waitqueue;
 	wait_queue_head_t reset_waitqueue;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index c815ef87e27d..a8c5ac21e8e7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1707,11 +1707,38 @@ static int iavf_set_interrupt_capability(struct iavf_adapter *adapter)
 	err = iavf_acquire_msix_vectors(adapter, v_budget);
 
 out:
-	netif_set_real_num_rx_queues(adapter->netdev, pairs);
-	netif_set_real_num_tx_queues(adapter->netdev, pairs);
+	if (rtnl_trylock()) {
+		netif_set_real_num_rx_queues(adapter->netdev, pairs);
+		netif_set_real_num_tx_queues(adapter->netdev, pairs);
+		rtnl_unlock();
+	} else {
+		schedule_work(&adapter->set_interrupt_capability);
+	}
+
 	return err;
 }
 
+/**
+ * iavf_delayed_set_interrupt_capability - schedule the update of the netdev
+ * @work: pointer to work_struct containing our data
+ **/
+static void iavf_delayed_set_interrupt_capability(struct work_struct *work)
+{
+	struct iavf_adapter *adapter;
+	int pairs;
+
+	rtnl_lock();
+	adapter = container_of(work, struct iavf_adapter,
+			       set_interrupt_capability);
+	pairs = adapter->num_active_queues;
+
+	if (adapter->netdev_registered) {
+		netif_set_real_num_rx_queues(adapter->netdev, pairs);
+		netif_set_real_num_tx_queues(adapter->netdev, pairs);
+	}
+	rtnl_unlock();
+}
+
 /**
  * iavf_config_rss_aq - Configure RSS keys and lut by using AQ commands
  * @adapter: board private structure
@@ -1926,10 +1953,8 @@ int iavf_init_interrupt_scheme(struct iavf_adapter *adapter)
 			"Unable to allocate memory for queues\n");
 		goto err_alloc_queues;
 	}
-
-	rtnl_lock();
 	err = iavf_set_interrupt_capability(adapter);
-	rtnl_unlock();
+
 	if (err) {
 		dev_err(&adapter->pdev->dev,
 			"Unable to setup interrupt capabilities\n");
@@ -4980,6 +5005,8 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	INIT_WORK(&adapter->reset_task, iavf_reset_task);
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
+	INIT_WORK(&adapter->set_interrupt_capability,
+		  iavf_delayed_set_interrupt_capability);
 	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
 	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
 	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
@@ -5153,6 +5180,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	cancel_work_sync(&adapter->reset_task);
 	cancel_delayed_work_sync(&adapter->watchdog_task);
 	cancel_work_sync(&adapter->adminq_task);
+	cancel_work_sync(&adapter->set_interrupt_capability);
 	cancel_delayed_work_sync(&adapter->client_task);
 
 	adapter->aq_required = 0;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

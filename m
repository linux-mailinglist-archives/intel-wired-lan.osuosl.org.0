Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 541E86FEF77
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 May 2023 11:57:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B0B8700D4;
	Thu, 11 May 2023 09:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B0B8700D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683799032;
	bh=rqhrr6OGJck0thu8MRhTYYREnCqmEvgLqQLbejyj5uE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nhHgKl1ExENTJ0SAt8hnEob0wwQucaAFBEw3ZOZLlN3bJdkVMlQ6zro1iLaF+v408
	 ibNfvFjhC/6W7M/jgsIV60Dg+onK5109Nc8fU9bm36mWTpI2KUFWDjYYv94aa0HPyp
	 RiZ9DBDW/c78bo+QbwaZkCG44fW7yOHeqGD56o+Pg7Z7e9JloEygla34igrIMr03Sy
	 6zFk0Kno4v3+Bfzv5YReNjt9v7JXThRJ5/FYEnq88ZqHvUU1PcKwLPL0TN+iEeMIsu
	 ZkvEEzcxChUIoPkkJlCAGDYczSbl9oLeiaVRxcTJ1ecQrB6YoWtO1o77ehFYh7WgVt
	 lQGA+plMJrg6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AxfxX3Bhrcp8; Thu, 11 May 2023 09:57:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3058360ADD;
	Thu, 11 May 2023 09:57:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3058360ADD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 276C31BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D54F40904
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D54F40904
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I597mn-LwDgw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 09:57:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3570E42BEB
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3570E42BEB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="436785525"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="436785525"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 02:57:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="764677385"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="764677385"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by fmsmga008.fm.intel.com with ESMTP; 11 May 2023 02:57:00 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 May 2023 11:56:26 +0200
Message-Id: <20230511095628.17907-3-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230511095628.17907-1-kamil.maziarz@intel.com>
References: <20230511095628.17907-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683799022; x=1715335022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w3uyckaFT2qNyH8lA4XGeSDVJ7WY5ollYUlRy6YkFnk=;
 b=EOUTkJngWhzrtfjRHZq8FHMJPuUjzlJHU13TIjFK2upbZgoh/EA5AIye
 2wVKN4BkXnomd+hmQOPLwBkMlMf3QPa6Ca1vAhcLDeYbdloR2ULWBc7Xv
 rPdyUCMLf6U5pxyzedJpRrk+9eRqwKgPkbO7ANHuKRTU0l/X5jHgWhiJC
 kVewc8PNZFCJn/1t8J9jarBJIVwgkZNy+gk9HSlGYcj5kaOvIrRf3Ns7R
 OSfftl8qZkpnENsbRQaDVlXGAH6+rkQo8ofScb0wvusQhrZYhYSz4jP/L
 kR8cyojfnyjxFKWl1QR//RqO7wctRnpVORtJJQn6aFFc8lcXjJAzKRizz
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EOUTkJng
Subject: [Intel-wired-lan] [PATCH iwl-net v6 2/4] iavf: Don't lock rtnl_lock
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>,
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
Co-developed-by: Dawid Wesierski <dawidx.wesierski@intel.com>
Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
v1->v3: changes were done internally
v4: added space before open parenthesis '(', fixed code indent
v5: changed the way the scheduled function updates the netdev from { trylock -> reschedule }
    design to one that just takes and wait for rtnl_lock lock. Introduced 30ms delay in scheduling
    to account for scheduling the resets in quick succession.
v6: added a guard to iavf_delayed_set_interrupt_capability function to prevent updating an unregistered netdev.
    Removed the delay from the scheduling and moved the rtnl to obtain the number of queues after acquiring the lock
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
index bc17ea34bb73..ba9dc64220ce 100644
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
@@ -1930,10 +1957,8 @@ int iavf_init_interrupt_scheme(struct iavf_adapter *adapter)
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
@@ -4983,6 +5008,8 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	INIT_WORK(&adapter->reset_task, iavf_reset_task);
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
+	INIT_WORK(&adapter->set_interrupt_capability,
+		  iavf_delayed_set_interrupt_capability);
 	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
 	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
 	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
@@ -5156,6 +5183,7 @@ static void iavf_remove(struct pci_dev *pdev)
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

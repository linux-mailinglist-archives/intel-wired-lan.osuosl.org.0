Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE706E9564
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 15:08:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3484D6FF02;
	Thu, 20 Apr 2023 13:08:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3484D6FF02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681996113;
	bh=aPXsUmaV8g8K0zxOGOn6v0SobSvloLCH8d1K14LTPA0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OJQpm20r/fcwO8zhY2iRjF0bI+gDslN8OLj3SipvZLmH8Fe9c3r+TCN1F/sUbrP0F
	 GxVP+3b2p+FOFjrQJvU+ro4+rt56hiHPBCy7ZSu6QXdH4nXBO4EhO1fWfQFTSFZJmH
	 Js/C9IjD+L2gNZQSr8qmnq57Ei1KPet4h7GG0ZHK46Nvhihii46zKqs86GmLxRIdYH
	 oioFglFMMJUNx3gu5/J4SJXN942Y8LYLPd1X1GE8yiuBBi0akVGsgAKekzpX2BAyET
	 Uz4UYPZusoaJaxRC3ltMpzFFBwB3e8v0qpnL6KhpGjKqTwpD7+UvrviUDD6BdrsBCU
	 5VFzysB6hT1vg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7I4P2ktv41H7; Thu, 20 Apr 2023 13:08:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C81C605E3;
	Thu, 20 Apr 2023 13:08:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C81C605E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DFAD81BF370
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 13:08:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6457841F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 13:08:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6457841F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zSWL_XFeNvKC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 13:08:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B9F4841F7
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B9F4841F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 13:08:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="326057660"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326057660"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 06:08:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="816009328"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="816009328"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga004.jf.intel.com with ESMTP; 20 Apr 2023 06:08:18 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Apr 2023 15:08:08 +0200
Message-Id: <20230420130810.214307-3-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230420130810.214307-1-kamil.maziarz@intel.com>
References: <20230420130810.214307-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681996100; x=1713532100;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yIEpUhG8H2RX6tZjp3MYFRCgoueUAeeXrJRkETQ13DI=;
 b=EOne/KmezIs7JBDRzLHVjTzEsnqdKpRn7UMKz3ceXn3uMO933L7iZtqY
 pn/YMzBFe9KzICOR3mS5kv9XyXrSUU7E1A/PxXaSW95PqvYxo0T1qb/bH
 mOHa4w1iuGjWANYa7QEYcpohgbP7ah9pvvQCQlks3PF/QUU3WDXjeEGER
 iqHLiJb2tV4eIblGL3Qxez1B7z7U7TdSoWlzsIRa8MBZv6sD1x3BOvE2b
 voGIhLMOPjZxEXN5ZXv8qVfb79+vbPTsdW8VyjzqkbIJJYlrW3IvHHSl1
 RJ1hzKHUKQgVf/oh3ulYhkzj7aappZAxWD/90XBhv54TUDyV6SJ1GMqkC
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EOne/Kme
Subject: [Intel-wired-lan] [PATCH net v4 2/4] iavf: Don't lock rtnl_lock
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

Some ndo/ethtool callbacks are called under rtnl_lock. If such callback
then triggers a reset, the reset task might try to take the rtnl_lock
again, causing a deadlock.

Callbacks that are sensitive to rtnl_lock are scheduled when the drivers
are unable to obtain the rtnl_lock in the reset flow. This ensures that
the reset task does not attempt to double lock rtnl_lock and avoids
the deadlock.

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
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c | 36 ++++++++++++++++++---
 2 files changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 47f777674087..8f48b5354025 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -256,6 +256,7 @@ struct iavf_adapter {
 	struct workqueue_struct *wq;
 	struct work_struct reset_task;
 	struct work_struct adminq_task;
+	struct work_struct set_interrupt_capability;
 	struct delayed_work client_task;
 	wait_queue_head_t down_waitqueue;
 	wait_queue_head_t reset_waitqueue;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 29e0fd2e674a..330fcd7a6c41 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1707,11 +1707,36 @@ static int iavf_set_interrupt_capability(struct iavf_adapter *adapter)
 	err = iavf_acquire_msix_vectors(adapter, v_budget);
 
 out:
-	netif_set_real_num_rx_queues(adapter->netdev, pairs);
-	netif_set_real_num_tx_queues(adapter->netdev, pairs);
+	if (rtnl_trylock()) {
+		netif_set_real_num_rx_queues(adapter->netdev, pairs);
+		netif_set_real_num_tx_queues(adapter->netdev, pairs);
+		rtnl_unlock();
+	} else {
+		queue_work(adapter->wq, &adapter->set_interrupt_capability);
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
+	struct iavf_adapter *adapter = container_of(work, struct iavf_adapter,
+				       set_interrupt_capability);
+	int pairs = adapter->num_active_queues;
+
+	if (rtnl_trylock()) {
+		netif_set_real_num_rx_queues(adapter->netdev, pairs);
+		netif_set_real_num_tx_queues(adapter->netdev, pairs);
+		rtnl_unlock();
+	} else {
+		queue_work(adapter->wq, &adapter->set_interrupt_capability);
+	}
+}
+
 /**
  * iavf_config_rss_aq - Configure RSS keys and lut by using AQ commands
  * @adapter: board private structure
@@ -1930,10 +1955,8 @@ int iavf_init_interrupt_scheme(struct iavf_adapter *adapter)
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
@@ -4983,6 +5006,8 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	INIT_WORK(&adapter->reset_task, iavf_reset_task);
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
+	INIT_WORK(&adapter->set_interrupt_capability,
+		  iavf_delayed_set_interrupt_capability);
 	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
 	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
 	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
@@ -5156,6 +5181,7 @@ static void iavf_remove(struct pci_dev *pdev)
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

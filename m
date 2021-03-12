Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 521513388BF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Mar 2021 10:34:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E62743271;
	Fri, 12 Mar 2021 09:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LI4J0hCb37f7; Fri, 12 Mar 2021 09:33:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C80C43242;
	Fri, 12 Mar 2021 09:33:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A5011BF383
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 09:33:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 251714E3C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 09:33:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jiFkUsxESJAz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Mar 2021 09:33:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DEB9442DD6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 09:33:49 +0000 (UTC)
IronPort-SDR: LNGkY7JG8kjvfiSSCug82PX7knIuEaGFUShJ1OJkuKHIsch+wsfXBfQIctc0sWGhzQDZUPtzqX
 Rg79Qyz5S89g==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188173270"
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="188173270"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 01:33:40 -0800
IronPort-SDR: SjxKH7mYISbwJGMrHmrbgZ1ekEWrflY1rW5NVl/afLQCEnPyrNq0kGX04pPOQDP/Ubu3uAgL1H
 dp6lqD8LEN6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="589511264"
Received: from amlin-018-147.igk.intel.com ([10.102.18.147])
 by orsmga005.jf.intel.com with ESMTP; 12 Mar 2021 01:33:39 -0800
From: Eryk Rybak <eryk.roch.rybak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Mar 2021 10:33:37 +0100
Message-Id: <20210312093337.68364-1-eryk.roch.rybak@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix asynchronous tasks
 during driver remove
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
Cc: Eryk Rybak <eryk.roch.rybak@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Although rare, is possible for unexpected driver watchdog or Admin
Queue tasks to run during the execution of iavf_remove function.
Then, is not possible to obtain the standard __IAVF_IN_CRITICAL_TASK
lock and difficult to ensure that the driver state stays consistent
during the full removal process.

Fully stops all asynchronous tasks in the beginning of iavf_remove,
and uses a single-threaded flow to shut down the driver.

Fixes: fdd4044ffdc8("iavf: Remove timer for work triggering, use delaying work instead")
Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 31 +++++++++++++++++----
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index dc5b3c06d1e0..e752ecb7ad89 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1887,6 +1887,12 @@ static void iavf_watchdog_task(struct work_struct *work)
 	struct iavf_hw *hw = &adapter->hw;
 	u32 reg_val;
 
+	/* If the driver is in the process of being removed then don't run or
+	 * reschedule the watchdog task.
+	 */
+	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+		return;
+
 	if (test_and_set_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section))
 		goto restart_watchdog;
 
@@ -2267,6 +2273,12 @@ static void iavf_adminq_task(struct work_struct *work)
 	u32 val, oldval;
 	u16 pending;
 
+	/* If the driver is in the process of being removed then return
+	 * immediately and don't re-enable the Admin Queue interrupt.
+	 */
+	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+		return;
+
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
 		goto out;
 
@@ -3245,6 +3257,13 @@ static int iavf_close(struct net_device *netdev)
 
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 
+	/* If the interface is closing as part of driver removal it doesn't
+	 * wait. The VF resources will be reinitialized when the hardware is
+	 * reset.
+	 */
+	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+		return 0;
+
 	/* We explicitly don't free resources here because the hardware is
 	 * still active and can DMA into memory. Resources are cleared in
 	 * iavf_virtchnl_completion() after we get confirmation from the PF
@@ -3850,11 +3869,16 @@ static void iavf_remove(struct pci_dev *pdev)
 	struct iavf_cloud_filter *cf, *cftmp;
 	struct iavf_hw *hw = &adapter->hw;
 	int err;
-	/* Indicate we are in remove and not to run reset_task */
+	/* Indicate that program driver is remove task and not
+	 * to run/schedule any driver tasks
+	 */
 	set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
 	cancel_delayed_work_sync(&adapter->init_task);
 	cancel_work_sync(&adapter->reset_task);
 	cancel_delayed_work_sync(&adapter->client_task);
+	cancel_work_sync(&adapter->adminq_task);
+	cancel_delayed_work_sync(&adapter->watchdog_task);
+	iavf_misc_irq_disable(adapter);
 	if (adapter->netdev_registered) {
 		unregister_netdev(netdev);
 		adapter->netdev_registered = false;
@@ -3879,15 +3903,10 @@ static void iavf_remove(struct pci_dev *pdev)
 	}
 	iavf_free_all_tx_resources(adapter);
 	iavf_free_all_rx_resources(adapter);
-	iavf_misc_irq_disable(adapter);
 	iavf_free_misc_irq(adapter);
 	iavf_reset_interrupt_capability(adapter);
 	iavf_free_q_vectors(adapter);
 
-	cancel_delayed_work_sync(&adapter->watchdog_task);
-
-	cancel_work_sync(&adapter->adminq_task);
-
 	iavf_free_rss(adapter);
 
 	if (hw->aq.asq.count)

base-commit: c1acda9807e2bbe1d2026b44f37d959d6d8266c8
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

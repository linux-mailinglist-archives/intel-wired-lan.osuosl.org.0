Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 170212FECAD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jan 2021 15:11:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C472686A74;
	Thu, 21 Jan 2021 14:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Z4Qw-n3pVR7; Thu, 21 Jan 2021 14:11:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 621C886AEF;
	Thu, 21 Jan 2021 14:11:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA0001BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 14:11:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8F898214EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 14:11:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uZaZMqkKfN4j for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 14:11:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 9593B207A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 14:11:40 +0000 (UTC)
IronPort-SDR: P3nYIKqlPNJ756C7SH0k6YuOUgzPtgyteBZ4qyo8KzrNgruFLkpDUpdsGdJIp2fWiO53sewIEV
 A3nNoWzGV6WQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="166944610"
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="166944610"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 06:11:33 -0800
IronPort-SDR: 1qSiDteTsXFxxoZrLpYZP1Y7TUj69n0osvzF1oNdvUHPsDAsBkgZByYrm/XSMTNv6Uqy9GZA93
 VG8lk1Y4ej7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="427348889"
Received: from amlin-018-147.igk.intel.com ([10.102.18.147])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2021 06:11:32 -0800
From: Eryk Rybak <eryk.roch.rybak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 21 Jan 2021 16:06:05 +0000
Message-Id: <20210121160605.86278-1-eryk.roch.rybak@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] iavf: Fix asynchronous tasks
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
 drivers/net/ethernet/intel/iavf/iavf_main.c | 29 ++++++++++++++++-----
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 21a354e..84430a3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1903,6 +1903,12 @@ static void iavf_watchdog_task(struct work_struct *work)
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
 
@@ -2283,6 +2289,12 @@ static void iavf_adminq_task(struct work_struct *work)
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
 
@@ -3261,6 +3273,13 @@ static int iavf_close(struct net_device *netdev)
 
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
@@ -3869,11 +3888,14 @@ static void iavf_remove(struct pci_dev *pdev)
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
+	iavf_misc_irq_disable(adapter);
 	if (adapter->netdev_registered) {
 		unregister_netdev(netdev);
 		adapter->netdev_registered = false;
@@ -3898,15 +3920,10 @@ static void iavf_remove(struct pci_dev *pdev)
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

base-commit: 53959a962308c53a02a89dab13e42c3b69f8c51c
-- 
2.20.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

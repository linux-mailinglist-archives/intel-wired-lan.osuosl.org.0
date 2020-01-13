Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F413313923F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jan 2020 14:34:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 284D586963;
	Mon, 13 Jan 2020 13:34:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2uaEljdWFCtI; Mon, 13 Jan 2020 13:34:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFD21857DC;
	Mon, 13 Jan 2020 13:34:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A35A1BF328
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2020 13:34:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F004B85EE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2020 13:34:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIL6XnJhgP2t for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jan 2020 13:34:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E1421857DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2020 13:34:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 05:34:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,429,1571727600"; d="scan'208";a="273028552"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jan 2020 05:33:59 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jan 2020 15:33:59 +0200
Message-Id: <20200113133359.24847-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v2] igc: Complete to commit Add legacy
 power management support
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

commit 9513d2a5dc7f ("igc: Add legacy power management support")
Add power management resume and schedule suspend requests.
Add power management get and put synchronization.

v1 -> v2:
add pm_runtime_put_noidle
add pm_runtime_get_noresume

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 069287a17957..e7787c0929b2 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4029,6 +4029,9 @@ static void igc_watchdog_task(struct work_struct *work)
 		}
 	}
 	if (link) {
+		/* Cancel scheduled suspend requests. */
+		pm_runtime_resume(netdev->dev.parent);
+
 		if (!netif_carrier_ok(netdev)) {
 			u32 ctrl;
 
@@ -4114,6 +4117,8 @@ static void igc_watchdog_task(struct work_struct *work)
 					return;
 				}
 			}
+			pm_schedule_suspend(netdev->dev.parent,
+					    MSEC_PER_SEC * 5);
 
 		/* also check for alternate media here */
 		} else if (!netif_carrier_ok(netdev) &&
@@ -4337,6 +4342,7 @@ static int igc_request_irq(struct igc_adapter *adapter)
 static int __igc_open(struct net_device *netdev, bool resuming)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct pci_dev *pdev = adapter->pdev;
 	struct igc_hw *hw = &adapter->hw;
 	int err = 0;
 	int i = 0;
@@ -4348,6 +4354,9 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 		return -EBUSY;
 	}
 
+	if (!resuming)
+		pm_runtime_get_sync(&pdev->dev);
+
 	netif_carrier_off(netdev);
 
 	/* allocate transmit descriptors */
@@ -4386,6 +4395,9 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 	rd32(IGC_ICR);
 	igc_irq_enable(adapter);
 
+	if (!resuming)
+		pm_runtime_put(&pdev->dev);
+
 	netif_tx_start_all_queues(netdev);
 
 	/* start the watchdog. */
@@ -4404,6 +4416,8 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 	igc_free_all_tx_resources(adapter);
 err_setup_tx:
 	igc_reset(adapter);
+	if (!resuming)
+		pm_runtime_put(&pdev->dev);
 
 	return err;
 }
@@ -4428,9 +4442,13 @@ static int igc_open(struct net_device *netdev)
 static int __igc_close(struct net_device *netdev, bool suspending)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct pci_dev *pdev = adapter->pdev;
 
 	WARN_ON(test_bit(__IGC_RESETTING, &adapter->state));
 
+	if (!suspending)
+		pm_runtime_get_sync(&pdev->dev);
+
 	igc_down(adapter);
 
 	igc_release_hw_control(adapter);
@@ -4440,6 +4458,9 @@ static int __igc_close(struct net_device *netdev, bool suspending)
 	igc_free_all_tx_resources(adapter);
 	igc_free_all_rx_resources(adapter);
 
+	if (!suspending)
+		pm_runtime_put_sync(&pdev->dev);
+
 	return 0;
 }
 
@@ -4792,6 +4813,10 @@ static int igc_probe(struct pci_dev *pdev,
 	pcie_print_link_status(pdev);
 	netdev_info(netdev, "MAC: %pM\n", netdev->dev_addr);
 
+	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NEVER_SKIP);
+
+	pm_runtime_put_noidle(&pdev->dev);
+
 	return 0;
 
 err_register:
@@ -4826,6 +4851,8 @@ static void igc_remove(struct pci_dev *pdev)
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
+	pm_runtime_get_noresume(&pdev->dev);
+
 	igc_ptp_stop(adapter);
 
 	set_bit(__IGC_DOWN, &adapter->state);
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

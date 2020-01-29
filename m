Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5C014CC74
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jan 2020 15:30:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D4F485B4D;
	Wed, 29 Jan 2020 14:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HzwpZsrSB9hS; Wed, 29 Jan 2020 14:30:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E85E885817;
	Wed, 29 Jan 2020 14:30:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D4031BF379
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jan 2020 14:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7930786DE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jan 2020 14:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dxfw8MNzDYHN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jan 2020 14:30:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AF8F784580
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jan 2020 14:30:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 06:30:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,378,1574150400"; d="scan'208";a="217960724"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.163.21])
 by orsmga007.jf.intel.com with ESMTP; 29 Jan 2020 06:30:07 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Jan 2020 16:30:07 +0200
Message-Id: <20200129143007.19836-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v2 1/1] igc: Add pcie error handler support
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

Add pcie error detection, slot reset and resume capability

v1->v2:
Address community comments

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 103 ++++++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index fa72460e255a..2b79e22d5e5f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5076,6 +5076,108 @@ static void igc_shutdown(struct pci_dev *pdev)
 	}
 }
 
+/**
+ *  igc_io_error_detected - called when PCI error is detected
+ *  @pdev: Pointer to PCI device
+ *  @state: The current PCI connection state
+ *
+ *  This function is called after a PCI bus error affecting
+ *  this device has been detected.
+ **/
+static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
+					      pci_channel_state_t state)
+{
+	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct igc_adapter *adapter = netdev_priv(netdev);
+
+	netif_device_detach(netdev);
+
+	if (state == pci_channel_io_perm_failure)
+		return PCI_ERS_RESULT_DISCONNECT;
+
+	if (netif_running(netdev))
+		igc_down(adapter);
+	pci_disable_device(pdev);
+
+	/* Request a slot reset. */
+	return PCI_ERS_RESULT_NEED_RESET;
+}
+
+/**
+ *  igc_io_slot_reset - called after the PCI bus has been reset.
+ *  @pdev: Pointer to PCI device
+ *
+ *  Restart the card from scratch, as if from a cold-boot. Implementation
+ *  resembles the first-half of the igc_resume routine.
+ **/
+static pci_ers_result_t igc_io_slot_reset(struct pci_dev *pdev)
+{
+	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct igc_hw *hw = &adapter->hw;
+	pci_ers_result_t result;
+
+	if (pci_enable_device_mem(pdev)) {
+		dev_err(&pdev->dev,
+			"Could not re-enable PCI device after reset.\n");
+		result = PCI_ERS_RESULT_DISCONNECT;
+	} else {
+		pci_set_master(pdev);
+		pci_restore_state(pdev);
+		pci_save_state(pdev);
+
+		pci_enable_wake(pdev, PCI_D3hot, 0);
+		pci_enable_wake(pdev, PCI_D3cold, 0);
+
+		/* In case of PCI error, adapter loses its HW address
+		 * so we should re-assign it here.
+		 */
+		hw->hw_addr = adapter->io_addr;
+
+		igc_reset(adapter);
+		wr32(IGC_WUS, ~0);
+		result = PCI_ERS_RESULT_RECOVERED;
+	}
+
+	return result;
+}
+
+/**
+ *  igc_io_resume - called when traffic can start to flow again.
+ *  @pdev: Pointer to PCI device
+ *
+ *  This callback is called when the error recovery driver tells us that
+ *  its OK to resume normal operation. Implementation resembles the
+ *  second-half of the igc_resume routine.
+ */
+static void igc_io_resume(struct pci_dev *pdev)
+{
+	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct igc_adapter *adapter = netdev_priv(netdev);
+
+	rtnl_lock();
+	if (netif_running(netdev)) {
+		if (igc_open(netdev)) {
+			dev_err(&pdev->dev, "igc_open failed after reset\n");
+			return;
+		}
+	}
+
+	netif_device_attach(netdev);
+
+	/* let the f/w know that the h/w is now under the control of the
+	 * driver.
+	 */
+	igc_get_hw_control(adapter);
+	rtnl_unlock();
+}
+
+static const struct pci_error_handlers igc_err_handler = {
+	.error_detected = igc_io_error_detected,
+	.slot_reset = igc_io_slot_reset,
+	.resume = igc_io_resume,
+};
+
 #ifdef CONFIG_PM
 static const struct dev_pm_ops igc_pm_ops = {
 	SET_SYSTEM_SLEEP_PM_OPS(igc_suspend, igc_resume)
@@ -5093,6 +5195,7 @@ static struct pci_driver igc_driver = {
 	.driver.pm = &igc_pm_ops,
 #endif
 	.shutdown = igc_shutdown,
+	.err_handler = &igc_err_handler,
 };
 
 /**
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

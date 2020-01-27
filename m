Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D999014A35D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2020 12:58:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2ADED85802;
	Mon, 27 Jan 2020 11:58:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L6g7bx3zF7ZB; Mon, 27 Jan 2020 11:58:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C259685404;
	Mon, 27 Jan 2020 11:58:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78F541BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 11:58:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 74CEF835CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 11:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lu3YxQQEWgRv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2020 11:58:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 91AE6835AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 11:58:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 03:58:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="246372346"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga002.jf.intel.com with ESMTP; 27 Jan 2020 03:58:31 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 Jan 2020 13:58:31 +0200
Message-Id: <20200127115831.18047-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] igc: Add pcie error handler support
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

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 105 ++++++++++++++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index fa72460e255a..b0656ae2fcb3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5076,6 +5076,110 @@ static void igc_shutdown(struct pci_dev *pdev)
 	}
 }
 
+/**
+ *  igc_io_error_detected - called when PCI error is detected
+ *  @pdev: Pointer to PCI device
+ *  @state: The current pci connection state
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
+	/* Request a slot slot reset. */
+	return PCI_ERS_RESULT_NEED_RESET;
+}
+
+/**
+ *  igc_io_slot_reset - called after the pci bus has been reset.
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
+			"Cannot re-enable PCI device after reset.\n");
+		result = PCI_ERS_RESULT_DISCONNECT;
+	} else {
+		pci_set_master(pdev);
+		pci_restore_state(pdev);
+		pci_save_state(pdev);
+
+		pci_enable_wake(pdev, PCI_D3hot, 0);
+		pci_enable_wake(pdev, PCI_D3cold, 0);
+
+		/* In case of PCI error, adapter lose its HW address
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
+ *  igc_io_resume - called when traffic can start flowing again.
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
+	u32 err = 0;
+
+	rtnl_lock();
+	if (netif_running(netdev)) {
+		err = igc_open(netdev);
+		if (err) {
+			dev_err(&pdev->dev, "igic_open failed after reset\n");
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
@@ -5093,6 +5197,7 @@ static struct pci_driver igc_driver = {
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

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2F97F3E67
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Nov 2023 07:55:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81D3B81A3B;
	Wed, 22 Nov 2023 06:55:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81D3B81A3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700636102;
	bh=PZMp5PL0NR1gMC3QeUM1SfjIegGw6xbQxkdg3RWsS6I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=wZl6ujnl2NO5Xo5SWhx47yV1dakQNwNEReZApxWw2Ejla/08D7nuu2XzHFpavSZ2D
	 Vg2F7EFf0bLYp5xbtqzvX9fD55UGWm/cG3CqeEewIvW1JnCGwsS/Ei8kIqipryaO8G
	 MrI/N932scVqIMToaq8LnMX+nAwZQcEtBuIP9kixQ1BM6k5kSyP3ora7IK5UJ87xdL
	 Jr2Swec+2nWyEDC8ZChkx7Yz2UQ6fQgtqItUCUVL1Q+s+9jASmpl4YmuL8lf700Pig
	 /yVcRBYO3pX5qgdXaJSvlTnTonP9Wp1hiftW3FWPqsK1A4ds0GeT4eHaKVQX5UsjtO
	 K5Y3xBVyzFhhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w_M-jnVhlePE; Wed, 22 Nov 2023 06:55:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1848F81A16;
	Wed, 22 Nov 2023 06:55:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1848F81A16
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 37B761BF39A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 06:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B8D14096A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 06:54:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B8D14096A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nBMYa_b9yIwW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Nov 2023 06:54:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36409408DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 06:54:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36409408DF
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="394831369"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="394831369"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 22:54:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="795993549"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="795993549"
Received: from fedora-sys-rao.jf.intel.com (HELO f37-upstream-rao..)
 ([10.166.5.220])
 by orsmga008.jf.intel.com with ESMTP; 21 Nov 2023 22:54:54 -0800
From: Ranganatha Rao <ranganatha.rao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 22:49:21 -0500
Message-ID: <20231122034921.38196-1-ranganatha.rao@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700636095; x=1732172095;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bkhW4dyBIyRooLmuLiJV/YGiWykVLD3m+3xHKLTyjyU=;
 b=c5sUXSqwZzpj2jbK75rrBqBdOvv5UE36LEpfyK5e4MRIBjQLvA9K1jtF
 PhpkaUba3ZvG9pLQlvt/SMDsXez4/ELdyNWJ9PV+lBqAFYaSQsnA9SyuB
 7DdAtsLsuUWHJcaP1qBV0p86rZf4b3sVHFe4lEID+h9PELA6pDXm6PvoL
 3fHb60Wx1dvgAGkeSstP/c/ZXFoK0C8tOHk4TxsHKLS73pipRNBEhnHM0
 bt0p4ad9Tr5HopoiazbUDMC2Xuz02O2rNfprMEdkSLQA2iH2SxSSiEfiA
 znt7qcn6IwgD1tZseLeNqsmr9YTHaDwseHZzAzH5Z/wHcSqZFAJviUOCn
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c5sUXSqw
Subject: [Intel-wired-lan] [PATCH iwl-net v1] iavf: Fix iavf_shutdown to
 call iavf_remove instead iavf_close
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
Cc: Ranganatha Rao <ranganatha.rao@intel.com>, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 SlawomirX Laba <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make the flow for pci shutdown be the same to the pci remove.

iavf_shutdown was implementing an incomplete version
of iavf_remove. It misses several calls to the kernel like
iavf_free_misc_irq, iavf_reset_interrupt_capability, iounmap
that might break the system on reboot or hibernation.

Implement the call of iavf_remove directly in iavf_shutdown to
close this gap.

Fixes below error messages (dmesg) during shutdown stress tests -
[685814.900917] ice 0000:88:00.0: MAC 02:d0:5f:82:43:5d does not exist for
 VF 0
[685814.900928] ice 0000:88:00.0: MAC 33:33:00:00:00:01 does not exist for
VF 0

Fixes: 129cf89e5856 ("rename functions and structs to new name")
Co-authored-by: SlawomirX Laba <slawomirx.laba@intel.com>
Signed-off-by: SlawomirX Laba <slawomirx.laba@intel.com>
Co-authored-by: Ranganatha Rao <ranganatha.rao@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Ranganatha Rao <ranganatha.rao@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 72 ++++++---------------
 1 file changed, 21 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index c862ebcd2e39..3c177dcd3b38 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -276,27 +276,6 @@ void iavf_free_virt_mem(struct iavf_hw *hw, struct iavf_virt_mem *mem)
 	kfree(mem->va);
 }
 
-/**
- * iavf_lock_timeout - try to lock mutex but give up after timeout
- * @lock: mutex that should be locked
- * @msecs: timeout in msecs
- *
- * Returns 0 on success, negative on failure
- **/
-static int iavf_lock_timeout(struct mutex *lock, unsigned int msecs)
-{
-	unsigned int wait, delay = 10;
-
-	for (wait = 0; wait < msecs; wait += delay) {
-		if (mutex_trylock(lock))
-			return 0;
-
-		msleep(delay);
-	}
-
-	return -1;
-}
-
 /**
  * iavf_schedule_reset - Set the flags and schedule a reset event
  * @adapter: board private structure
@@ -4825,34 +4804,6 @@ int iavf_process_config(struct iavf_adapter *adapter)
 	return 0;
 }
 
-/**
- * iavf_shutdown - Shutdown the device in preparation for a reboot
- * @pdev: pci device structure
- **/
-static void iavf_shutdown(struct pci_dev *pdev)
-{
-	struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
-	struct net_device *netdev = adapter->netdev;
-
-	netif_device_detach(netdev);
-
-	if (netif_running(netdev))
-		iavf_close(netdev);
-
-	if (iavf_lock_timeout(&adapter->crit_lock, 5000))
-		dev_warn(&adapter->pdev->dev, "%s: failed to acquire crit_lock\n", __func__);
-	/* Prevent the watchdog from running. */
-	iavf_change_state(adapter, __IAVF_REMOVE);
-	adapter->aq_required = 0;
-	mutex_unlock(&adapter->crit_lock);
-
-#ifdef CONFIG_PM
-	pci_save_state(pdev);
-
-#endif
-	pci_disable_device(pdev);
-}
-
 /**
  * iavf_probe - Device Initialization Routine
  * @pdev: PCI device information struct
@@ -5063,16 +5014,21 @@ static int __maybe_unused iavf_resume(struct device *dev_d)
  **/
 static void iavf_remove(struct pci_dev *pdev)
 {
-	struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
 	struct iavf_fdir_fltr *fdir, *fdirtmp;
 	struct iavf_vlan_filter *vlf, *vlftmp;
 	struct iavf_cloud_filter *cf, *cftmp;
 	struct iavf_adv_rss *rss, *rsstmp;
 	struct iavf_mac_filter *f, *ftmp;
+	struct iavf_adapter *adapter;
 	struct net_device *netdev;
 	struct iavf_hw *hw;
 
-	netdev = adapter->netdev;
+	/* Don't proceed with remove if netdev is already freed */
+	netdev = pci_get_drvdata(pdev);
+	if (!netdev)
+		return;
+
+	adapter = iavf_pdev_to_adapter(pdev);
 	hw = &adapter->hw;
 
 	if (test_and_set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
@@ -5184,11 +5140,25 @@ static void iavf_remove(struct pci_dev *pdev)
 
 	destroy_workqueue(adapter->wq);
 
+	pci_set_drvdata(pdev, NULL);
+
 	free_netdev(netdev);
 
 	pci_disable_device(pdev);
 }
 
+/**
+ * iavf_shutdown - Shutdown the device in preparation for a reboot
+ * @pdev: pci device structure
+ **/
+static void iavf_shutdown(struct pci_dev *pdev)
+{
+	iavf_remove(pdev);
+
+	if (system_state == SYSTEM_POWER_OFF)
+		pci_set_power_state(pdev, PCI_D3hot);
+}
+
 static SIMPLE_DEV_PM_OPS(iavf_pm_ops, iavf_suspend, iavf_resume);
 
 static struct pci_driver iavf_driver = {
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

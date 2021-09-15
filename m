Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC1940BFB8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 08:41:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A17960B2B;
	Wed, 15 Sep 2021 06:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CqeagisSHeJb; Wed, 15 Sep 2021 06:41:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D98960679;
	Wed, 15 Sep 2021 06:41:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 542571BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 06:41:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E9CC40170
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 06:41:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id no01zL_KvrF6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Sep 2021 06:41:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 603D34015B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 06:41:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="285926312"
X-IronPort-AV: E=Sophos;i="5.85,294,1624345200"; d="scan'208";a="285926312"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 23:41:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,294,1624345200"; d="scan'208";a="544598823"
Received: from amlin-19-169.igk.intel.com ([10.102.19.169])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Sep 2021 23:41:25 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 15 Sep 2021 08:41:23 +0200
Message-Id: <20210915064123.69945-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Add helper function to
 go from pci_dev to adapter
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
Cc: Karen Sornek <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add helper function to go from pci_dev to adapter to make work simple -
to go from a pci_dev to the adapter structure and make netdev assigment
instead of having to go to the net_device then the adapter.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 24 +++++++++++++++------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 80437ef26..39620fe6c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -51,6 +51,15 @@ MODULE_LICENSE("GPL v2");
 static const struct net_device_ops iavf_netdev_ops;
 struct workqueue_struct *iavf_wq;
 
+/**
+ * iavf_pdev_to_adapter - go from pci_dev to adapter
+ * @pdev: pci_dev pointer
+ */
+static struct iavf_adapter *iavf_pdev_to_adapter(struct pci_dev *pdev)
+{
+	return netdev_priv(pci_get_drvdata(pdev));
+}
+
 /**
  * iavf_allocate_dma_mem_d - OS specific memory alloc for shared code
  * @hw:   pointer to the HW structure
@@ -3725,8 +3734,8 @@ out:
  **/
 static void iavf_shutdown(struct pci_dev *pdev)
 {
-	struct net_device *netdev = pci_get_drvdata(pdev);
-	struct iavf_adapter *adapter = netdev_priv(netdev);
+	struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
+	struct net_device *netdev = adapter->netdev;
 
 	netif_device_detach(netdev);
 
@@ -3911,10 +3920,11 @@ static int __maybe_unused iavf_suspend(struct device *dev_d)
 static int __maybe_unused iavf_resume(struct device *dev_d)
 {
 	struct pci_dev *pdev = to_pci_dev(dev_d);
-	struct net_device *netdev = pci_get_drvdata(pdev);
-	struct iavf_adapter *adapter = netdev_priv(netdev);
+	struct iavf_adapter *adapter;
 	u32 err;
 
+	adapter = iavf_pdev_to_adapter(pdev);
+
 	pci_set_master(pdev);
 
 	rtnl_lock();
@@ -3933,7 +3943,7 @@ static int __maybe_unused iavf_resume(struct device *dev_d)
 
 	queue_work(iavf_wq, &adapter->reset_task);
 
-	netif_device_attach(netdev);
+	netif_device_attach(adapter->netdev);
 
 	return err;
 }
@@ -3949,8 +3959,8 @@ static int __maybe_unused iavf_resume(struct device *dev_d)
  **/
 static void iavf_remove(struct pci_dev *pdev)
 {
-	struct net_device *netdev = pci_get_drvdata(pdev);
-	struct iavf_adapter *adapter = netdev_priv(netdev);
+	struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
+	struct net_device *netdev = adapter->netdev;
 	struct iavf_fdir_fltr *fdir, *fdirtmp;
 	struct iavf_vlan_filter *vlf, *vlftmp;
 	struct iavf_adv_rss *rss, *rsstmp;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

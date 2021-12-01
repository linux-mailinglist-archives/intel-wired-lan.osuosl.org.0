Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A08C4655F8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 19:58:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44B3541CB6;
	Wed,  1 Dec 2021 18:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uFpEmeBGhc4C; Wed,  1 Dec 2021 18:58:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2643641C58;
	Wed,  1 Dec 2021 18:58:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D847D1BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 18:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BBB206061A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 18:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aY-dawUNsct5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Dec 2021 18:58:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C1FF5607A5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 18:58:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236349326"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="236349326"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 10:58:41 -0800
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="500371301"
Received: from ammonk-mobl.amr.corp.intel.com (HELO vcostago-mobl3.intel.com)
 ([10.212.205.220])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 10:58:40 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: roots@gmx.de
Date: Wed,  1 Dec 2021 10:57:31 -0800
Message-Id: <20211201185731.236130-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <87r1awtdx3.fsf@intel.com>
References: <87r1awtdx3.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] igc: Avoid possible deadlock during
 suspend/resume
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
Cc: regressions@lists.linux.dev, netdev@vger.kernel.org, stable@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, greg@kroah.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Inspired by:
https://bugzilla.kernel.org/show_bug.cgi?id=215129

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
Just to see if it's indeed the same problem as the bug report above.

 drivers/net/ethernet/intel/igc/igc_main.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 0e19b4d02e62..c58bf557a2a1 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6619,7 +6619,7 @@ static void igc_deliver_wake_packet(struct net_device *netdev)
 	netif_rx(skb);
 }
 
-static int __maybe_unused igc_resume(struct device *dev)
+static int __maybe_unused __igc_resume(struct device *dev, bool rpm)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -6661,20 +6661,27 @@ static int __maybe_unused igc_resume(struct device *dev)
 
 	wr32(IGC_WUS, ~0);
 
-	rtnl_lock();
+	if (!rpm)
+		rtnl_lock();
 	if (!err && netif_running(netdev))
 		err = __igc_open(netdev, true);
 
 	if (!err)
 		netif_device_attach(netdev);
-	rtnl_unlock();
+	if (!rpm)
+		rtnl_unlock();
 
 	return err;
 }
 
 static int __maybe_unused igc_runtime_resume(struct device *dev)
 {
-	return igc_resume(dev);
+	return __igc_resume(dev, true);
+}
+
+static int __maybe_unused igc_resume(struct device *dev)
+{
+	return __igc_resume(dev, false);
 }
 
 static int __maybe_unused igc_suspend(struct device *dev)
@@ -6738,7 +6745,7 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
  *  @pdev: Pointer to PCI device
  *
  *  Restart the card from scratch, as if from a cold-boot. Implementation
- *  resembles the first-half of the igc_resume routine.
+ *  resembles the first-half of the __igc_resume routine.
  **/
 static pci_ers_result_t igc_io_slot_reset(struct pci_dev *pdev)
 {
@@ -6777,7 +6784,7 @@ static pci_ers_result_t igc_io_slot_reset(struct pci_dev *pdev)
  *
  *  This callback is called when the error recovery driver tells us that
  *  its OK to resume normal operation. Implementation resembles the
- *  second-half of the igc_resume routine.
+ *  second-half of the __igc_resume routine.
  */
 static void igc_io_resume(struct pci_dev *pdev)
 {
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

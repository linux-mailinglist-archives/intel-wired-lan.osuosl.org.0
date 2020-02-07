Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA377155558
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2020 11:10:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA46787DFE;
	Fri,  7 Feb 2020 10:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f6LgUXcClpZa; Fri,  7 Feb 2020 10:10:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 23F6087DB0;
	Fri,  7 Feb 2020 10:10:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC2DD1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 10:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E84D32037E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 10:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jxun98zF-Z43 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2020 10:10:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id EDA9120373
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 10:10:19 +0000 (UTC)
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37]
 helo=localhost) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>)
 id 1j00aS-0007Hs-5H; Fri, 07 Feb 2020 10:10:12 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: davem@davemloft.net,
	mkubecek@suse.cz,
	jeffrey.t.kirsher@intel.com
Date: Fri,  7 Feb 2020 18:10:03 +0800
Message-Id: <20200207101005.4454-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH v3 1/2] igb: Use device_lock() insead of
 rtnl_lock()
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 9474933caf21 ("igb: close/suspend race in netif_device_detach")
fixed race condition between close and power management ops by using
rtnl_lock().

However we can achieve the same by using device_lock() since all power
management ops are protected by device_lock().

This fix is a preparation for next patch, to prevent a dead lock under
rtnl_lock() when calling runtime resume routine.

Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
v3:
 - Fix unreleased lock reported by 0-day test bot.
v2:
 - No change.

 drivers/net/ethernet/intel/igb/igb_main.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index b46bff8fe056..661255500d66 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4026,9 +4026,15 @@ static int __igb_close(struct net_device *netdev, bool suspending)
 
 int igb_close(struct net_device *netdev)
 {
+	struct igb_adapter *adapter = netdev_priv(netdev);
+	struct device *dev = &adapter->pdev->dev;
+	int err = 0;
+
+	device_lock(dev);
 	if (netif_device_present(netdev) || netdev->dismantle)
-		return __igb_close(netdev, false);
-	return 0;
+		err = __igb_close(netdev, false);
+	device_unlock(dev);
+	return err;
 }
 
 /**
@@ -8760,7 +8766,6 @@ static int __igb_shutdown(struct pci_dev *pdev, bool *enable_wake,
 	u32 wufc = runtime ? E1000_WUFC_LNKC : adapter->wol;
 	bool wake;
 
-	rtnl_lock();
 	netif_device_detach(netdev);
 
 	if (netif_running(netdev))
@@ -8769,7 +8774,6 @@ static int __igb_shutdown(struct pci_dev *pdev, bool *enable_wake,
 	igb_ptp_suspend(adapter);
 
 	igb_clear_interrupt_scheme(adapter);
-	rtnl_unlock();
 
 	status = rd32(E1000_STATUS);
 	if (status & E1000_STATUS_LU)
@@ -8897,13 +8901,11 @@ static int __maybe_unused igb_resume(struct device *dev)
 
 	wr32(E1000_WUS, ~0);
 
-	rtnl_lock();
 	if (!err && netif_running(netdev))
 		err = __igb_open(netdev, true);
 
 	if (!err)
 		netif_device_attach(netdev);
-	rtnl_unlock();
 
 	return err;
 }
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

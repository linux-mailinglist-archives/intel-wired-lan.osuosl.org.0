Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79521E4446
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2020 15:47:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 976E488525;
	Wed, 27 May 2020 13:47:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EMINuW7mLN8O; Wed, 27 May 2020 13:47:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29E7888558;
	Wed, 27 May 2020 13:47:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 059041BF34E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2020 13:47:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EFAFE88525
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2020 13:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hzr1ijgw4z7z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 May 2020 13:47:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4DC8A88523
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2020 13:47:38 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N0nzR-1iqnfB1yGD-00wljD; Wed, 27 May 2020 15:47:20 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Wed, 27 May 2020 15:47:00 +0200
Message-Id: <20200527134716.948148-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:U0mKtKTjWJcCkHiwKPi9Mh65377Hpmc77oEjPdqAFTu1tfJI3j5
 tQ6qhoFQt3VrltJF1OQAZvSCEi5jiXDLXneeEtt2tYoGulYW/CDGQtb89g2bHJUJ/w1LAik
 vIs2GxtV6aTDuWMBLBgIGK5xEW1J7i/jAm9wYXcKSEyCbp7nrbd8Rty5jSQY+5hArziNzw3
 jy7nL7AY5luwKFm7YGBUA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:fVIXS7/sr1M=:7+CEaDh/RQcJZ9+oHHDRCA
 jGgnId2Eh18Nx4Vc2d9p2ntA3gVJoJC13L9xRw+3ALBvTKDImWYcrAvVM2skxYOUcmBIsk/15
 ykarw3foUHHsbo5uxQhoF2/FDKLf04cgrW7yVLTuKX6a1F7Qy6xEH9GL9W7wu3MPCxjo7wfqu
 4i+RxGc+in1TayP2yisk1FswPj83O49YHoWV/XjbaqaxI76R47bKs6RYUQC0spixKJV3eDRkF
 UjKJRlHKhjY48Z6xvWggE2ckNMeE33kQBjsX/DbCW0tvFzeKfq6DrwxhEQzdLFdOnxry8MFlk
 D3hmE5yukdvkligEfgciGCgyYHINbBIL1WkAjok7DZFj5SiQFRcPIkJFKDeL0tsihQxvNiHJ8
 s1hEhMHSdhA5MQanrvjhcKGL5fb5nyqCUs6HICiQtlDTLBUImIApNtoPl7Ai6uP7ESBkoFvHb
 YScFHKzepRUhzSa7E7wIijOk2OCqFHKEQBWchcP5tpdsAaLb0X/Jx4bwglGBRKsi2jYHGDd00
 0ypJAuKP+cjgSdbVBa78G7FFgYgj68X2GQojBh5yZZVjtA5d8dR6Ko8g0wbeSa7IWKT109FJ1
 mhG9xQsenBnIVzqqVV8MQutz50mCLvuH4HLCKQppguZg7un/uMCSdZB/m9gCUEwOXjqxxsPwa
 9CiQAzzIZ/397cEH5q4bNOg+KIQ1ZR+kQACyN/ggykcUqN0bnGuIHxki8G6g15FAWLOlGRPbb
 j31v+NBus5GeRoBJ39ulocxn9VMzJBqaJND9StWQVB1fRSje3AcQ/+IejDuvREnOVJBbZAwEm
 ZUJIw+8x5FMAZQV+3MLJqTbcK0D1h04UY+JPHp3K4ZP9p0htwU=
Subject: [Intel-wired-lan] [PATCH] [net-next] e1000e: fix unused-function
 warning
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>, netdev@vger.kernel.org,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The CONFIG_PM_SLEEP #ifdef checks in this file are inconsistent,
leading to a warning about sometimes unused function:

drivers/net/ethernet/intel/e1000e/netdev.c:137:13: error: unused function 'e1000e_check_me' [-Werror,-Wunused-function]

Rather than adding more #ifdefs, just remove them completely
and mark the PM functions as __maybe_unused to let the compiler
work it out on it own.

Fixes: e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 9cc8ec5421d5..66ca083b95f9 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6351,7 +6351,6 @@ static void e1000e_flush_lpic(struct pci_dev *pdev)
 	pm_runtime_put_sync(netdev->dev.parent);
 }
 
-#ifdef CONFIG_PM_SLEEP
 /* S0ix implementation */
 static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 {
@@ -6573,7 +6572,6 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 	mac_data &= ~E1000_CTRL_EXT_FORCE_SMBUS;
 	ew32(CTRL_EXT, mac_data);
 }
-#endif /* CONFIG_PM_SLEEP */
 
 static int e1000e_pm_freeze(struct device *dev)
 {
@@ -6871,7 +6869,6 @@ static int e1000e_pm_thaw(struct device *dev)
 	return rc;
 }
 
-#ifdef CONFIG_PM
 static int __e1000_resume(struct pci_dev *pdev)
 {
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -6937,8 +6934,7 @@ static int __e1000_resume(struct pci_dev *pdev)
 	return 0;
 }
 
-#ifdef CONFIG_PM_SLEEP
-static int e1000e_pm_suspend(struct device *dev)
+static __maybe_unused int e1000e_pm_suspend(struct device *dev)
 {
 	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
 	struct e1000_adapter *adapter = netdev_priv(netdev);
@@ -6962,7 +6958,7 @@ static int e1000e_pm_suspend(struct device *dev)
 	return rc;
 }
 
-static int e1000e_pm_resume(struct device *dev)
+static __maybe_unused int e1000e_pm_resume(struct device *dev)
 {
 	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
 	struct e1000_adapter *adapter = netdev_priv(netdev);
@@ -6981,9 +6977,8 @@ static int e1000e_pm_resume(struct device *dev)
 
 	return e1000e_pm_thaw(dev);
 }
-#endif /* CONFIG_PM_SLEEP */
 
-static int e1000e_pm_runtime_idle(struct device *dev)
+static __maybe_unused int e1000e_pm_runtime_idle(struct device *dev)
 {
 	struct net_device *netdev = dev_get_drvdata(dev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
@@ -6999,7 +6994,7 @@ static int e1000e_pm_runtime_idle(struct device *dev)
 	return -EBUSY;
 }
 
-static int e1000e_pm_runtime_resume(struct device *dev)
+static __maybe_unused int e1000e_pm_runtime_resume(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -7016,7 +7011,7 @@ static int e1000e_pm_runtime_resume(struct device *dev)
 	return rc;
 }
 
-static int e1000e_pm_runtime_suspend(struct device *dev)
+static __maybe_unused int e1000e_pm_runtime_suspend(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -7041,7 +7036,6 @@ static int e1000e_pm_runtime_suspend(struct device *dev)
 
 	return 0;
 }
-#endif /* CONFIG_PM */
 
 static void e1000_shutdown(struct pci_dev *pdev)
 {
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

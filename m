Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1048444DD3C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Nov 2021 22:44:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 826B44037A;
	Thu, 11 Nov 2021 21:44:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pq6TjgKIOcNk; Thu, 11 Nov 2021 21:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B6D8400C1;
	Thu, 11 Nov 2021 21:44:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C7421BF388
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 21:44:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A9F64055E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 21:44:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uIhLpAdKU9fj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Nov 2021 21:43:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9DCA540533
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 21:43:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="230480412"
X-IronPort-AV: E=Sophos;i="5.87,227,1631602800"; d="scan'208";a="230480412"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 13:43:57 -0800
X-IronPort-AV: E=Sophos;i="5.87,227,1631602800"; d="scan'208";a="590141515"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 13:43:56 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Nov 2021 13:43:56 -0800
Message-Id: <20211111214356.612453-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] e100: fix device suspend/resume
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
Cc: Alexey Kuznetsov <axet@me.com>, Vaibhav Gupta <vaibhavgupta40@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As reported in [1], e100 was no longer working for suspend/resume
cycles. The previous commit mentioned in the fixes appears to have
broken things and this attempts to practice best known methods for
device power management and keep wake-up working while allowing
suspend/resume to work. To do this, I reorder a little bit of code
and fix the resume path to make sure the device is enabled.

[1] https://bugzilla.kernel.org/show_bug.cgi?id=214933

Fixes: 69a74aef8a18 ("e100: use generic power management")
Cc: Vaibhav Gupta <vaibhavgupta40@gmail.com>
Reported-by: Alexey Kuznetsov <axet@me.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
--
v2: added Fixes and Cc

NOTE: Alexey tested it already and it unbreaks his system, which is a
great start. I would like our internal team to try to do some basic
testing but given the age of this part, it shouldn't hold up the patch
going upstream.
---
 drivers/net/ethernet/intel/e100.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 09ae1939e6db..36d52246bdc6 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -3003,9 +3003,10 @@ static void __e100_shutdown(struct pci_dev *pdev, bool *enable_wake)
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct nic *nic = netdev_priv(netdev);
 
+	netif_device_detach(netdev);
+
 	if (netif_running(netdev))
 		e100_down(nic);
-	netif_device_detach(netdev);
 
 	if ((nic->flags & wol_magic) | e100_asf(nic)) {
 		/* enable reverse auto-negotiation */
@@ -3022,7 +3023,7 @@ static void __e100_shutdown(struct pci_dev *pdev, bool *enable_wake)
 		*enable_wake = false;
 	}
 
-	pci_clear_master(pdev);
+	pci_disable_device(pdev);
 }
 
 static int __e100_power_off(struct pci_dev *pdev, bool wake)
@@ -3042,8 +3043,6 @@ static int __maybe_unused e100_suspend(struct device *dev_d)
 
 	__e100_shutdown(to_pci_dev(dev_d), &wake);
 
-	device_wakeup_disable(dev_d);
-
 	return 0;
 }
 
@@ -3051,6 +3050,14 @@ static int __maybe_unused e100_resume(struct device *dev_d)
 {
 	struct net_device *netdev = dev_get_drvdata(dev_d);
 	struct nic *nic = netdev_priv(netdev);
+	int err;
+
+	err = pci_enable_device(to_pci_dev(dev_d));
+	if (err) {
+		netdev_err(netdev, "Resume cannot enable PCI device, aborting\n");
+		return err;
+	}
+	pci_set_master(to_pci_dev(dev_d));
 
 	/* disable reverse auto-negotiation */
 	if (nic->phy == phy_82552_v) {
@@ -3062,10 +3069,11 @@ static int __maybe_unused e100_resume(struct device *dev_d)
 		           smartspeed & ~(E100_82552_REV_ANEG));
 	}
 
-	netif_device_attach(netdev);
 	if (netif_running(netdev))
 		e100_up(nic);
 
+	netif_device_attach(netdev);
+
 	return 0;
 }
 
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

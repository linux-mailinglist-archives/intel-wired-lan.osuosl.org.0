Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C29B2C9487
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Dec 2020 02:19:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1754A85F8B;
	Tue,  1 Dec 2020 01:19:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QvE9u0h2B4Yc; Tue,  1 Dec 2020 01:19:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 40A1B85F92;
	Tue,  1 Dec 2020 01:19:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 197761BF350
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 01:19:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 11DDC8598E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 01:19:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id detzDZPFQrLi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Dec 2020 01:19:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 31318858C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 01:19:11 +0000 (UTC)
IronPort-SDR: UMqJNt+1b57e7ptg4WyI+PnkGIpRKi3Hzle3TKmkU0rLXDxiJDZOzZguWXZP3klXHFD55Od9Ji
 URNj2cXYPbBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="152573370"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="152573370"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 17:19:10 -0800
IronPort-SDR: lQQNyTPQLyZFJSgVijUEWB0PLhVKXViXvzJyOE8js9MfAko/d2UMzVKQV1/A3zn3RnHIpSu4R9
 HzzjOv7TgWxg==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="314771260"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 17:19:07 -0800
From: Chen Yu <yu.c.chen@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Date: Tue,  1 Dec 2020 09:21:50 +0800
Message-Id: <b8896b7748e516e9c440ab22e582e30f1389776c.1606757180.git.yu.c.chen@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1606757180.git.yu.c.chen@intel.com>
References: <cover.1606757180.git.yu.c.chen@intel.com>
Subject: [Intel-wired-lan] [PATCH 1/2][v3] e1000e: Leverage direct_complete
 to speed up s2ram
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
Cc: Len Brown <len.brown@intel.com>, Chen Yu <yu.c.chen@intel.com>,
 netdev@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, "Brandt,
 Todd E" <todd.e.brandt@intel.com>, "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The NIC is put in runtime suspend status when there is no cable connected.
As a result, it is safe to keep non-wakeup NIC in runtime suspended during
s2ram because the system does not rely on the NIC plug event nor WoL to wake
up the system. Besides that, unlike the s2idle, s2ram does not need to
manipulate S0ix settings during suspend.

This patch introduces the .prepare() for e1000e so that if the NIC is runtime
suspended the subsequent suspend/resume hooks will be skipped so as to speed
up the s2ram. The pm core will check whether the NIC is a wake up device so
there's no need to check it again in .prepare(). DPM_FLAG_SMART_PREPARE flag
should be set during probe to ask the pci subsystem to honor the driver's
prepare() result. Besides, the NIC remains runtime suspended after resumed
from s2ram as there is no need to resume it.

Tested on i7-2600K with 82579V NIC
Before the patch:
e1000e 0000:00:19.0: pci_pm_suspend+0x0/0x160 returned 0 after 225146 usecs
e1000e 0000:00:19.0: pci_pm_resume+0x0/0x90 returned 0 after 140588 usecs

After the patch:
echo disabled > //sys/devices/pci0000\:00/0000\:00\:19.0/power/wakeup
becomes 0 usecs because the hooks will be skipped.

Suggested-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
Signed-off-by: Chen Yu <yu.c.chen@intel.com>
---
v2: Added test data and some commit log revise(Paul Menzel)
    Only skip the suspend/resume if the NIC is not a wake up device specified
    by the user(Kai-Heng Feng)
v3: Leverage direct complete mechanism to skip all hooks(Kai-Heng Feng)
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index b30f00891c03..b210bba3f20a 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -25,6 +25,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/aer.h>
 #include <linux/prefetch.h>
+#include <linux/suspend.h>
 
 #include "e1000.h"
 
@@ -6957,6 +6958,12 @@ static int __e1000_resume(struct pci_dev *pdev)
 	return 0;
 }
 
+static int e1000e_pm_prepare(struct device *dev)
+{
+	return pm_runtime_suspended(dev) &&
+		pm_suspend_via_firmware();
+}
+
 static __maybe_unused int e1000e_pm_suspend(struct device *dev)
 {
 	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
@@ -7665,7 +7672,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	e1000_print_device_info(adapter);
 
-	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NO_DIRECT_COMPLETE);
+	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_SMART_PREPARE);
 
 	if (pci_dev_run_wake(pdev) && hw->mac.type < e1000_pch_cnp)
 		pm_runtime_put_noidle(&pdev->dev);
@@ -7890,6 +7897,7 @@ MODULE_DEVICE_TABLE(pci, e1000_pci_tbl);
 
 static const struct dev_pm_ops e1000_pm_ops = {
 #ifdef CONFIG_PM_SLEEP
+	.prepare	= e1000e_pm_prepare,
 	.suspend	= e1000e_pm_suspend,
 	.resume		= e1000e_pm_resume,
 	.freeze		= e1000e_pm_freeze,
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

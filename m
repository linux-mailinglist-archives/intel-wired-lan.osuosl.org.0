Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B94E42C2B49
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Nov 2020 16:29:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 276D084F27;
	Tue, 24 Nov 2020 15:29:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IQjIM1oXu96f; Tue, 24 Nov 2020 15:29:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E5C7484B88;
	Tue, 24 Nov 2020 15:29:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 62FED1BF44C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 15:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5BCB9844A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 15:29:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jNyJRQ1xYr46 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Nov 2020 15:29:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B9D748443A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 15:29:52 +0000 (UTC)
IronPort-SDR: 5xI7jxINVWhzYmi10AmDDTCpda8t08d6cJplmAwTYqLzifeiFdpCqB7rEvOH/Vk9MKV2HwiNgQ
 L9deIWDKmgSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="169399864"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="169399864"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 07:29:52 -0800
IronPort-SDR: fQ9I22IVv+TiwPdND4euQLiZL77uLd+BkWrMNAdcHQoR8q5461FCJzLbqRbjVYgdrDFpTOj+D3
 JmkubIBnLlZA==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="546868986"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 07:29:49 -0800
From: Chen Yu <yu.c.chen@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <len.brown@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Tue, 24 Nov 2020 23:32:21 +0800
Message-Id: <20201124153221.11265-1-yu.c.chen@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] e1000e: Assign DPM_FLAG_SMART_SUSPEND and
 DPM_FLAG_MAY_SKIP_RESUME to speed up s2ram
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
Cc: Chen Yu <yu.c.chen@intel.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kai-Heng Feng <kai.heng.feng@canonical.com>,
 intel-wired-lan@lists.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The NIC is put in runtime suspend status when there is no wire connected.
As a result, it is safe to keep this NIC in runtime suspended during s2ram
because the system does not rely on the NIC plug event nor WOL to wake up
the system. Unlike the s2idle, s2ram does not need to manipulate S0ix settings
during suspend.

This patch assigns DPM_FLAG_SMART_SUSPEND and DPM_FLAG_MAY_SKIP_RESUME
to the e1000e driver so that the s2ram could skip the .suspend_late(),
.suspend_noirq() and .resume_noirq() .resume_early() when possible.
Also skip .suspend() and .resume() if dev_pm_skip_suspend() and
dev_pm_skip_resume() return true, so as to speed up the s2ram.

Signed-off-by: Chen Yu <yu.c.chen@intel.com>
---
 drivers/base/power/main.c                  |  2 ++
 drivers/net/ethernet/intel/e1000e/netdev.c | 14 +++++++++++++-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/base/power/main.c b/drivers/base/power/main.c
index c7ac49042cee..9cd8abba8612 100644
--- a/drivers/base/power/main.c
+++ b/drivers/base/power/main.c
@@ -580,6 +580,7 @@ bool dev_pm_skip_resume(struct device *dev)
 
 	return !dev->power.must_resume;
 }
+EXPORT_SYMBOL_GPL(dev_pm_skip_resume);
 
 /**
  * device_resume_noirq - Execute a "noirq resume" callback for given device.
@@ -2010,3 +2011,4 @@ bool dev_pm_skip_suspend(struct device *dev)
 	return dev_pm_test_driver_flags(dev, DPM_FLAG_SMART_SUSPEND) &&
 		pm_runtime_status_suspended(dev);
 }
+EXPORT_SYMBOL_GPL(dev_pm_skip_suspend);
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index b30f00891c03..d79fddabc553 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6965,6 +6965,14 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
 	struct e1000_hw *hw = &adapter->hw;
 	int rc;
 
+	/* Runtime suspended means that there is no wired connection
+	 * and it has nothing to do with WOL that, we don't need to
+	 * adjust the WOL settings. So it is safe to put NIC in
+	 * runtime suspend while doing system suspend.
+	 */
+	if (dev_pm_skip_suspend(dev))
+		return 0;
+
 	e1000e_flush_lpic(pdev);
 
 	e1000e_pm_freeze(dev);
@@ -6989,6 +6997,9 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
 	struct e1000_hw *hw = &adapter->hw;
 	int rc;
 
+	if (dev_pm_skip_resume(dev))
+		return 0;
+
 	/* Introduce S0ix implementation */
 	if (hw->mac.type >= e1000_pch_cnp &&
 	    !e1000e_check_me(hw->adapter->pdev->device))
@@ -7665,7 +7676,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	e1000_print_device_info(adapter);
 
-	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NO_DIRECT_COMPLETE);
+	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NO_DIRECT_COMPLETE |
+				DPM_FLAG_SMART_SUSPEND | DPM_FLAG_MAY_SKIP_RESUME);
 
 	if (pci_dev_run_wake(pdev) && hw->mac.type < e1000_pch_cnp)
 		pm_runtime_put_noidle(&pdev->dev);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

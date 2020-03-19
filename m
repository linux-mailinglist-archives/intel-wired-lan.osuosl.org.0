Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC19C18AC2F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 06:27:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E5E5887A11;
	Thu, 19 Mar 2020 05:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rcFkji3PpITI; Thu, 19 Mar 2020 05:27:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06E8A879A1;
	Thu, 19 Mar 2020 05:27:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83DCD1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2020 05:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 713A58688F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2020 05:27:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h8LmzW2AdYEe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2020 05:27:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 64B7F8687B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2020 05:27:12 +0000 (UTC)
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37]
 helo=localhost) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>)
 id 1jEnha-00032L-70; Thu, 19 Mar 2020 05:26:42 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jeffrey.t.kirsher@intel.com
Date: Thu, 19 Mar 2020 13:26:29 +0800
Message-Id: <20200319052629.7282-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH 1/1] e1000e: Disable s0ix flow for X1
 Carbon 7th
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
 "David S. Miller" <davem@davemloft.net>,
 open list <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The s0ix flow makes X1 Carbon 7th can only run S2Idle for only once.

Temporarily disable it until Intel found a solution.

Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20200316/019222.html
BugLink: https://bugs.launchpad.net/bugs/1865570
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index db4ea58bac82..3e090aa993ee 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -25,6 +25,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/aer.h>
 #include <linux/prefetch.h>
+#include <linux/dmi.h>
 
 #include "e1000.h"
 
@@ -6843,6 +6844,17 @@ static int __e1000_resume(struct pci_dev *pdev)
 }
 
 #ifdef CONFIG_PM_SLEEP
+static const struct dmi_system_id s0ix_blacklist[] = {
+	{
+		.ident = "LENOVO ThinkPad X1 Carbon 7th",
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "LENOVO"),
+			DMI_MATCH(DMI_PRODUCT_VERSION, "ThinkPad X1 Carbon 7th"),
+		},
+	},
+	{}
+};
+
 static int e1000e_pm_suspend(struct device *dev)
 {
 	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
@@ -6860,7 +6872,7 @@ static int e1000e_pm_suspend(struct device *dev)
 		e1000e_pm_thaw(dev);
 
 	/* Introduce S0ix implementation */
-	if (hw->mac.type >= e1000_pch_cnp)
+	if (hw->mac.type >= e1000_pch_cnp && !dmi_check_system(s0ix_blacklist))
 		e1000e_s0ix_entry_flow(adapter);
 
 	return rc;
@@ -6875,7 +6887,7 @@ static int e1000e_pm_resume(struct device *dev)
 	int rc;
 
 	/* Introduce S0ix implementation */
-	if (hw->mac.type >= e1000_pch_cnp)
+	if (hw->mac.type >= e1000_pch_cnp && !dmi_check_system(s0ix_blacklist))
 		e1000e_s0ix_exit_flow(adapter);
 
 	rc = __e1000_resume(pdev);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

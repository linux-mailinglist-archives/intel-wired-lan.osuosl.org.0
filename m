Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC501907E6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2020 09:41:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C91288378;
	Tue, 24 Mar 2020 08:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jKtAXh2i-RPS; Tue, 24 Mar 2020 08:41:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DA8B87A2D;
	Tue, 24 Mar 2020 08:41:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 593751BF315
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Mar 2020 00:10:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5417786228
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Mar 2020 00:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D1QB6d0Hived for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Mar 2020 00:10:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 63BD6861FF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Mar 2020 00:10:21 +0000 (UTC)
IronPort-SDR: rPFlcQwOXTfFZC7qY/Ao4R/ZB8zwfD3+pe50nhB8yMXlV+H46HkWdOsB+o+7Kwnk5d6l9Ezdqg
 kx8/RMMO8yBQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2020 17:10:20 -0700
IronPort-SDR: mii5KpTSfIGBj11O2+43GbeJRFg2WXU27ap44jA/W0ADYtZKKyrhVhS9ZdfY8htiBNZLtRAHRH
 o/FKu1TMR8JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,290,1580803200"; d="scan'208";a="249242511"
Received: from pgsmsx112.gar.corp.intel.com ([10.108.55.201])
 by orsmga006.jf.intel.com with ESMTP; 21 Mar 2020 17:10:19 -0700
Received: from pgsmsx110.gar.corp.intel.com (10.221.44.111) by
 PGSMSX112.gar.corp.intel.com (10.108.55.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 22 Mar 2020 08:10:16 +0800
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.189]) by
 PGSMSX110.gar.corp.intel.com ([169.254.13.28]) with mapi id 14.03.0439.000;
 Sun, 22 Mar 2020 08:10:16 +0800
From: "Tsai, Rex" <rex.tsai@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Thread-Topic: [Intel-wired-lan] [PATCH 1/1] e1000e: Disable s0ix flow for X1
 Carbon 7th
Thread-Index: AQG3cCI3NG3RtKSKRa6ZGiuDYJEouqiQ3AGQ
Date: Sun, 22 Mar 2020 00:10:15 +0000
Message-ID: <D83742F1B1819A43B1E71852F964BF245D763260@PGSMSX101.gar.corp.intel.com>
References: <20200319052629.7282-1-kai.heng.feng@canonical.com>
In-Reply-To: <20200319052629.7282-1-kai.heng.feng@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 24 Mar 2020 08:41:51 +0000
Subject: Re: [Intel-wired-lan] [PATCH 1/1] e1000e: Disable s0ix flow for X1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Kai-Heng,
I will take over here. When do you have a chance to talk this issue next week?

Rex Tsai | Intel Client LAN Engineer | +1 (503) 264-0517

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Kai-Heng Feng
Sent: Wednesday, March 18, 2020 10:26 PM
To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
Cc: open list:NETWORKING DRIVERS <netdev@vger.kernel.org>; Kai-Heng Feng <kai.heng.feng@canonical.com>; moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; David S. Miller <davem@davemloft.net>; open list <linux-kernel@vger.kernel.org>
Subject: [Intel-wired-lan] [PATCH 1/1] e1000e: Disable s0ix flow for X1 Carbon 7th

The s0ix flow makes X1 Carbon 7th can only run S2Idle for only once.

Temporarily disable it until Intel found a solution.

Link:
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20200316/0192
22.html
BugLink: https://bugs.launchpad.net/bugs/1865570
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
b/drivers/net/ethernet/intel/e1000e/netdev.c
index db4ea58bac82..3e090aa993ee 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -25,6 +25,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/aer.h>
 #include <linux/prefetch.h>
+#include <linux/dmi.h>
 
 #include "e1000.h"
 
@@ -6843,6 +6844,17 @@ static int __e1000_resume(struct pci_dev *pdev)  }
 
 #ifdef CONFIG_PM_SLEEP
+static const struct dmi_system_id s0ix_blacklist[] = {
+	{
+		.ident = "LENOVO ThinkPad X1 Carbon 7th",
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "LENOVO"),
+			DMI_MATCH(DMI_PRODUCT_VERSION, "ThinkPad X1 Carbon
7th"),
+		},
+	},
+	{}
+};
+
 static int e1000e_pm_suspend(struct device *dev)  {
 	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev)); @@ -6860,7 +6872,7 @@ static int e1000e_pm_suspend(struct device *dev)
 		e1000e_pm_thaw(dev);
 
 	/* Introduce S0ix implementation */
-	if (hw->mac.type >= e1000_pch_cnp)
+	if (hw->mac.type >= e1000_pch_cnp &&
!dmi_check_system(s0ix_blacklist))
 		e1000e_s0ix_entry_flow(adapter);
 
 	return rc;
@@ -6875,7 +6887,7 @@ static int e1000e_pm_resume(struct device *dev)
 	int rc;
 
 	/* Introduce S0ix implementation */
-	if (hw->mac.type >= e1000_pch_cnp)
+	if (hw->mac.type >= e1000_pch_cnp &&
!dmi_check_system(s0ix_blacklist))
 		e1000e_s0ix_exit_flow(adapter);
 
 	rc = __e1000_resume(pdev);
--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

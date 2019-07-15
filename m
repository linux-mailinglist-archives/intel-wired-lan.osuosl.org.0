Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6254D685AC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2019 10:44:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA416811BB;
	Mon, 15 Jul 2019 08:44:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UGjnCpVzFVtm; Mon, 15 Jul 2019 08:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E09298125A;
	Mon, 15 Jul 2019 08:44:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C99CB1BF407
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 08:44:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AFB782043E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 08:44:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VbHKb6zQQPSz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2019 08:44:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 232D72001A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 08:44:03 +0000 (UTC)
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37]
 helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hmwaW-0005iC-10; Mon, 15 Jul 2019 08:44:00 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jeffrey.t.kirsher@intel.com
Date: Mon, 15 Jul 2019 16:43:55 +0800
Message-Id: <20190715084355.9962-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] e1000e: Make speed detection on
 hotplugging cable more reliable
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
Cc: netdev@vger.kernel.org, Kai-Heng Feng <kai.heng.feng@canonical.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After hotplugging an 1Gbps ethernet cable with 1Gbps link partner, the
MII_BMSR may reports 10Mbps, renders the network rather slow.

The issue has much lower fail rate after commit 59653e6497d1 ("e1000e:
Make watchdog use delayed work"), which esssentially introduces some
delay before running the watchdog task.

But there's still a chance that the hotplugging event and the queued
watchdog task gets run at the same time, then the original issue can be
observed once again.

So let's use mod_delayed_work() to add a deterministic 1 second delay
before running watchdog task, after an interrupt.

Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index e4baa13b3cda..c83bf5349d53 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -1780,8 +1780,8 @@ static irqreturn_t e1000_intr_msi(int __always_unused irq, void *data)
 		}
 		/* guard against interrupt when we're going down */
 		if (!test_bit(__E1000_DOWN, &adapter->state))
-			queue_delayed_work(adapter->e1000_workqueue,
-					   &adapter->watchdog_task, 1);
+			mod_delayed_work(adapter->e1000_workqueue,
+					 &adapter->watchdog_task, HZ);
 	}
 
 	/* Reset on uncorrectable ECC error */
@@ -1861,8 +1861,8 @@ static irqreturn_t e1000_intr(int __always_unused irq, void *data)
 		}
 		/* guard against interrupt when we're going down */
 		if (!test_bit(__E1000_DOWN, &adapter->state))
-			queue_delayed_work(adapter->e1000_workqueue,
-					   &adapter->watchdog_task, 1);
+			mod_delayed_work(adapter->e1000_workqueue,
+					 &adapter->watchdog_task, HZ);
 	}
 
 	/* Reset on uncorrectable ECC error */
@@ -1907,8 +1907,8 @@ static irqreturn_t e1000_msix_other(int __always_unused irq, void *data)
 		hw->mac.get_link_status = true;
 		/* guard against interrupt when we're going down */
 		if (!test_bit(__E1000_DOWN, &adapter->state))
-			queue_delayed_work(adapter->e1000_workqueue,
-					   &adapter->watchdog_task, 1);
+			mod_delayed_work(adapter->e1000_workqueue,
+					 &adapter->watchdog_task, HZ);
 	}
 
 	if (!test_bit(__E1000_DOWN, &adapter->state))
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

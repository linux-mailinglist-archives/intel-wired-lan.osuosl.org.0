Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F67D40FA05
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Sep 2021 16:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1584840A9;
	Fri, 17 Sep 2021 14:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id knc7Feh8yddn; Fri, 17 Sep 2021 14:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A90C840A7;
	Fri, 17 Sep 2021 14:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E2561BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 06:20:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15100400E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 06:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zHUue7fdJk17 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Sep 2021 06:20:16 +0000 (UTC)
X-Greylist: delayed 00:07:11 by SQLgrey-1.8.0
Received: from qq.com (smtpbg551.qq.com [183.3.226.173])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28D0440067
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 06:20:14 +0000 (UTC)
X-QQ-mid: bizesmtp54t1631859134t8cjxnyn
Received: from localhost.localdomain (unknown [113.57.152.160])
 by esmtp6.qq.com (ESMTP) with 
 id ; Fri, 17 Sep 2021 14:12:13 +0800 (CST)
X-QQ-SSF: 01400000000000C0C000B00B0000000
X-QQ-FEAT: Wp4pj0u9TIdzLw4BxtUQcsQN2a8mY2XdR9z9/UjTdinc1yeEKTU0cgNH9QvZK
 97EvFstDwF2vfoUNZfWhN6zbt0W9s0NjkfQ6NEQUWECUTGRsscO96JU3mbkWFAkOIhm74x1
 3n5bC1uLBc92tI7H90FLM2FHvLzTwd5X1oQqzkox/Hk8llPbyDPVRYsUL31PePItwsI7lIZ
 7A463Tsw1bMW0unKT9RGD4QgC/QZEcK3mq2eMv3aEcKPUnF5svHK+8/X/6x7ixMRTlCeO9E
 jTDSl0zo0ASgT4eI0a88N65q2rRKxuxntWY9mYngdeaMnozFeVbXGa1ALsgRI31Km13uF/h
 hsiBaWkpiDRQL8IHn09Zbmi93nXYPXv5EsdCme6
X-QQ-GoodBg: 2
From: Hao Chen <chenhaoa@uniontech.com>
To: jesse.brandeburg@intel.com
Date: Fri, 17 Sep 2021 14:11:46 +0000
Message-Id: <20210917141146.5822-1-chenhaoa@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-Mailman-Approved-At: Fri, 17 Sep 2021 14:12:36 +0000
Subject: [Intel-wired-lan] [net-next,
 v1] net: e1000e: solve insmod 'Unknown symbol mutex_lock' error
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
Cc: Hao Chen <chenhaoa@uniontech.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After I turn on the CONFIG_LOCK_STAT=y, insmod e1000e.ko will report:
[    5.641579] e1000e: Unknown symbol mutex_lock (err -2)
[   90.775705] e1000e: Unknown symbol mutex_lock (err -2)
[  132.252339] e1000e: Unknown symbol mutex_lock (err -2)

This problem fixed after include <linux/mutex.h>.

Signed-off-by: Hao Chen <chenhaoa@uniontech.com>
---
 drivers/net/ethernet/intel/e1000e/e1000.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index 5b2143f4b1f8..f3424255bd2b 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -21,6 +21,7 @@
 #include <linux/ptp_classify.h>
 #include <linux/mii.h>
 #include <linux/mdio.h>
+#include <linux/mutex.h>
 #include <linux/pm_qos.h>
 #include "hw.h"
 
-- 
2.20.1



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

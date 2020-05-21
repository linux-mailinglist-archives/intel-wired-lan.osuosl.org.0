Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 698F31DDA45
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 00:32:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 094238768F;
	Thu, 21 May 2020 22:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t-yslicPQ6KW; Thu, 21 May 2020 22:32:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 675EE87688;
	Thu, 21 May 2020 22:32:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 77FE91BF20D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 17:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6F9412040A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 17:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a-eYRqhxjRtI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2020 17:59:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id C145122865
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 17:59:12 +0000 (UTC)
IronPort-SDR: 5DYBJ+YnfkwBxebU4iZxCkxY3uG7lHuXiXRTifWxyZcj/udArTpG5Vr4BJGCEZORH8aYLXRggx
 MM+hfKGcpOJQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 10:59:12 -0700
IronPort-SDR: sZn8coVk+aGRy6cR7nKyBcK9tldIrd57JjTZ0zG9Tkm1tCPvh5em5kKCCCrKUbC8dxHt+bwZhG
 4+djOVlI0+qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,418,1583222400"; d="scan'208";a="440543290"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by orsmga005.jf.intel.com with ESMTP; 21 May 2020 10:59:06 -0700
From: Chen Yu <yu.c.chen@intel.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Auke Kok <auke-jan.h.kok@intel.com>, Jeff Garzik <jeff@garzik.org>
Date: Fri, 22 May 2020 01:59:13 +0800
Message-Id: <725bad2f3ce7f7b7f1667d53b6527dc059f9e419.1590081982.git.yu.c.chen@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1590081982.git.yu.c.chen@intel.com>
References: <cover.1590081982.git.yu.c.chen@intel.com>
X-Mailman-Approved-At: Thu, 21 May 2020 22:32:40 +0000
Subject: [Intel-wired-lan] [PATCH 2/2] e1000e: Make WOL info in ethtool
 consistent with device wake up ability
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
Cc: Len Brown <len.brown@intel.com>, "Shevchenko,
 Andriy" <andriy.shevchenko@intel.com>, netdev@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Stable@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Chen Yu <yu.c.chen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently the ethtool shows that WOL(Wake On Lan) is enabled
even if the device wakeup ability has been disabled via sysfs:
  cat /sys/devices/pci0000:00/0000:00:1f.6/power/wakeup
   disabled

  ethtool eno1
  ...
  Wake-on: g

Fix this in ethtool to check if the user has explicitly disabled the
wake up ability for this device.

Fixes: 6ff68026f475 ("e1000e: Use device_set_wakeup_enable")
Reported-by: Len Brown <len.brown@intel.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: <Stable@vger.kernel.org>
Signed-off-by: Chen Yu <yu.c.chen@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 1d47e2503072..0cccd823ff24 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -1891,7 +1891,7 @@ static void e1000_get_wol(struct net_device *netdev,
 	wol->wolopts = 0;
 
 	if (!(adapter->flags & FLAG_HAS_WOL) ||
-	    !device_can_wakeup(&adapter->pdev->dev))
+	    !device_may_wakeup(&adapter->pdev->dev))
 		return;
 
 	wol->supported = WAKE_UCAST | WAKE_MCAST |
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

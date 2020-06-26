Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9993820ABC6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2020 07:21:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E555869EB;
	Fri, 26 Jun 2020 05:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pQ7qW_FC-hN6; Fri, 26 Jun 2020 05:21:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC89686C45;
	Fri, 26 Jun 2020 05:21:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44F341BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 05:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF7172039E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 05:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jnt9C2MTL3lb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2020 05:21:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id DCFE82036B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 05:21:43 +0000 (UTC)
IronPort-SDR: 6N0tyb2XRXphHOwerXlIF5+JCtzgFJk59+ePcZ68y4EOIP6Q4Din8BXXwaBKWbNuqc86yVDI9o
 urb4hui4U1/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="229954049"
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="229954049"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 22:21:43 -0700
IronPort-SDR: 7RFW7SJ8S8g43/tCL4tFdW75sQkTDoXTzN63Yr4CadIBP2PjnP/RCk0zw+Ym9GD2V6+0Rox/Go
 zFA8/pwg+JnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="294110814"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by orsmga002.jf.intel.com with ESMTP; 25 Jun 2020 22:21:43 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jun 2020 22:21:41 -0700
Message-Id: <20200626052141.1310945-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue] ixgbe: Cleanup unneeded delay in
 ethtool test
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jack Vogel <jack.vogel@oracle.com>,
 Venkat Venkatsubra <venkat.x.venkatsubra@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is a 4 seconds delay in ixgbe_diag_test() that is holding up other
ioctls such as SIOCGIFCONF that Oracle database applications use.
One of Oracle's product runs "ethtool -t ethX online" periodically for
system monitoring and that is impacting database applications that use
SIOCGIFCONF at that same time.

This 4 second delay was needed in out early 1GbE parts to give the PHY
time to recover from a reset.  This code was carried forward to the 10 GbE
driver even it was not needed for the supported PHYs in the ixgbe driver.

CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
CC: Jack Vogel <jack.vogel@oracle.com>
Reported-by: Venkat Venkatsubra <venkat.x.venkatsubra@oracle.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index c4e4aa33c91d..121a3a3a76b6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -2156,7 +2156,7 @@ static void ixgbe_diag_test(struct net_device *netdev,
 					eth_test->flags |= ETH_TEST_FL_FAILED;
 					clear_bit(__IXGBE_TESTING,
 						  &adapter->state);
-					goto skip_ol_tests;
+					return;
 				}
 			}
 		}
@@ -2228,9 +2228,6 @@ static void ixgbe_diag_test(struct net_device *netdev,
 
 		clear_bit(__IXGBE_TESTING, &adapter->state);
 	}
-
-skip_ol_tests:
-	msleep_interruptible(4 * 1000);
 }
 
 static int ixgbe_wol_exclusion(struct ixgbe_adapter *adapter,
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

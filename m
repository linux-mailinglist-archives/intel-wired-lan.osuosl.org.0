Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6856C66D6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Mar 2023 12:40:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 175BB404F4;
	Thu, 23 Mar 2023 11:40:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 175BB404F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679571620;
	bh=4K4eB4mzjqdjOfWPjDNJU3APcR9E2qrA/uaFkXzYCHQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VOUSCadbRwvlIZs20GrNFMdc8f9fJtUsTmjc2q8bDQ+BRnZlW8L+cvSkN/83+OoF2
	 eC91Z7D/MM07OmJSjKHrEboo75c5qD598Ic3mkJvxr6YlnsGDuGMQcYcF+yvaGICPj
	 EjlIM8HjaPMZDcBIxlePVmV+ZxcSeQWxaoheVlwnnXS6Dth9NGqj0DVdicTbfosACB
	 uZputNN+fDmZ6rFlEwCvbKCaHuT3FeF1smeqzLWqmAr1wKS6+zijDIdv+/OCHaa8zn
	 CP59MQx7r6m8mHCTGHfa1zbFzCskwMsYtjnHvps4IlnJ016PQPCVpU4P5WyBUD02Xr
	 VMq/A8CZwJqJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SK_MBaOeI3ca; Thu, 23 Mar 2023 11:40:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0359B41CAA;
	Thu, 23 Mar 2023 11:40:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0359B41CAA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EC9C1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 11:40:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D95D841D05
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 11:40:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D95D841D05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HBg8K9yHJkxy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Mar 2023 11:40:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EF5D405CD
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7EF5D405CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 11:40:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="425741314"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="425741314"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 04:40:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="714756643"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="714756643"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga001.jf.intel.com with ESMTP; 23 Mar 2023 04:40:00 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 23 Mar 2023 07:35:38 -0400
Message-Id: <20230323113538.146959-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679571612; x=1711107612;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T4YLbwx0X0qhphYmLRPu7Dl73NoSoffd7oep3kD22wM=;
 b=PtPmNy0rVkKmnjCKA5AjsF+YMMOx68ZaeCHhu9uF906JHmr0ri/hocmJ
 W8MkVfL+T9nlULLGf7nezSfbDLy3+mQ2GSbIxdKSKYaqgIFs4OCAYP7PM
 B7FxKHriKU5MkgmI75JLAbik30jfm8ewlWDnZ+3AQBmM3yT3Q/abmTwMk
 q1Nb4a4+u8AMLABYpAPj55xgAtsKfB1rom9vaOfe/da1mOlk73AZM4VXa
 gf1P1C4JyoJ9LushbO1biT8AfDekH5+Ve16MV6rI7iYkkjbHllMEgzftu
 /GmJK/8RykDxMADAvs8R/CVpyNJXFOdFdyLOpMuUF/FTHzULRTsleyEPj
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PtPmNy0r
Subject: [Intel-wired-lan] [PATCH net v4] e1000e: Disable TSO on i219-LM
 card to increase speed
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
Cc: pmenzel@molgen.mpg.de, kai.heng.feng@canonical.com,
 Sebastian Basierski <sebastianx.basierski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sebastian Basierski <sebastianx.basierski@intel.com>

While using i219-LM card currently it was only possible to achieve
about 60% of maximum speed due to regression introduced in Linux 5.8-rc1.
This was caused by TSO not being disabled by default despite commit
f29801030ac6 implementation. Fix that by disabling TSO during driver
probe.

Fixes: f29801030ac6 ("e1000e: Disable TSO for buffer overrun workaround")
Signed-off-by: Sebastian Basierski <sebastianx.basierski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v4: Moved whole !(adapter->flags & FLAG_TSO_FORCE) block to probe
 v3: Changed the patch to disable TSO during the probe
 v2: Fixed commit message and comment inside the code
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 53 ++++++++++++----------
 1 file changed, 28 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index e1eb1de88bf9..4edb81880cb4 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5288,31 +5288,6 @@ static void e1000_watchdog_task(struct work_struct *work)
 				ew32(TARC(0), tarc0);
 			}
 
-			/* disable TSO for pcie and 10/100 speeds, to avoid
-			 * some hardware issues
-			 */
-			if (!(adapter->flags & FLAG_TSO_FORCE)) {
-				switch (adapter->link_speed) {
-				case SPEED_10:
-				case SPEED_100:
-					e_info("10/100 speed: disabling TSO\n");
-					netdev->features &= ~NETIF_F_TSO;
-					netdev->features &= ~NETIF_F_TSO6;
-					break;
-				case SPEED_1000:
-					netdev->features |= NETIF_F_TSO;
-					netdev->features |= NETIF_F_TSO6;
-					break;
-				default:
-					/* oops */
-					break;
-				}
-				if (hw->mac.type == e1000_pch_spt) {
-					netdev->features &= ~NETIF_F_TSO;
-					netdev->features &= ~NETIF_F_TSO6;
-				}
-			}
-
 			/* enable transmits in the hardware, need to do this
 			 * after setting TARC(0)
 			 */
@@ -7526,6 +7501,34 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			    NETIF_F_RXCSUM |
 			    NETIF_F_HW_CSUM);
 
+
+	/* disable TSO for pcie and 10/100 speeds to avoid
+	 * some hardware issues and for i219 to fix trasfer
+	 * speed being capped at 60%
+	 */
+	if (!(adapter->flags & FLAG_TSO_FORCE)) {
+		switch (adapter->link_speed) {
+		case SPEED_10:
+		case SPEED_100:
+			e_info("10/100 speed: disabling TSO\n");
+			netdev->features &= ~NETIF_F_TSO;
+			netdev->features &= ~NETIF_F_TSO6;
+			break;
+		case SPEED_1000:
+			netdev->features |= NETIF_F_TSO;
+			netdev->features |= NETIF_F_TSO6;
+			break;
+		default:
+			/* oops */
+			break;
+		}
+		if (hw->mac.type == e1000_pch_spt) {
+			netdev->features &= ~NETIF_F_TSO;
+			netdev->features &= ~NETIF_F_TSO6;
+		}
+	}
+
+
 	/* Set user-changeable features (subset of all device features) */
 	netdev->hw_features = netdev->features;
 	netdev->hw_features |= NETIF_F_RXFCS;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

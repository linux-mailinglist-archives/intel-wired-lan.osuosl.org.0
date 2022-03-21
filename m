Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D81C54E206F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Mar 2022 07:05:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C954409E6;
	Mon, 21 Mar 2022 06:05:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ymfsYk3Di0f5; Mon, 21 Mar 2022 06:05:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81FA0409BE;
	Mon, 21 Mar 2022 06:05:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8AC431BF417
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 06:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7199682451
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 06:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I4mxykdF3Jme for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Mar 2022 06:05:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B756082446
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 06:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647842715; x=1679378715;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uYyHK5IE3NatGycvfZjnsE/XZSHG0IjDT7UQWWXbFeM=;
 b=QI3u1zspCQv5qtetB/L5eNdagUGnFKWPgl9BcFkZfZFDlNUXxPNLOTN4
 kaOjnc9F8cp6cGz1/lfgmd3SQCt2P5v8N7Jl4zSr8FhsFyPWEptoNxfFj
 DGjV2L8yHeJXStk+EkmdU5T2VuRmI4tI+xLfolfwXc5KfDQd4vAdAFVw9
 2Yqr608VsOjD8LlBm/kaRfb+fMoBjRurzqM6Y+QdjEfQBGsUMQ1JcQYD2
 dJrUqgCiAhdByDjwSxugASU+Tce/SgaMYAwPSSfXyEv0TOM7xc34R6eSn
 8CETt5i7+ROMBdcPysQ2n++lFpQIM4+zTFvK0E5tIqaer4Tu7JsifxHp9 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="237419290"
X-IronPort-AV: E=Sophos;i="5.90,197,1643702400"; d="scan'208";a="237419290"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2022 23:05:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,197,1643702400"; d="scan'208";a="500054794"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.56])
 by orsmga003.jf.intel.com with ESMTP; 20 Mar 2022 23:05:13 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 21 Mar 2022 08:05:10 +0200
Message-Id: <20220321060510.1862932-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove igc_set_spd_dplx method
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
Cc: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

igc_set_spd_dplx method not in use. This patch comes to tidy up
the driver code.

Reported-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  1 -
 drivers/net/ethernet/intel/igc/igc_main.c | 50 -----------------------
 2 files changed, 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 3e386c38d016..1e7e7071f64d 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -264,7 +264,6 @@ int igc_reinit_queues(struct igc_adapter *adapter);
 void igc_write_rss_indir_tbl(struct igc_adapter *adapter);
 bool igc_has_link(struct igc_adapter *adapter);
 void igc_reset(struct igc_adapter *adapter);
-int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx);
 void igc_update_stats(struct igc_adapter *adapter);
 void igc_disable_rx_ring(struct igc_ring *ring);
 void igc_enable_rx_ring(struct igc_ring *ring);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 3f193a33d1a9..d0ab915bb31b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6190,56 +6190,6 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
 	return value;
 }
 
-int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx)
-{
-	struct igc_mac_info *mac = &adapter->hw.mac;
-
-	mac->autoneg = false;
-
-	/* Make sure dplx is at most 1 bit and lsb of speed is not set
-	 * for the switch() below to work
-	 */
-	if ((spd & 1) || (dplx & ~1))
-		goto err_inval;
-
-	switch (spd + dplx) {
-	case SPEED_10 + DUPLEX_HALF:
-		mac->forced_speed_duplex = ADVERTISE_10_HALF;
-		break;
-	case SPEED_10 + DUPLEX_FULL:
-		mac->forced_speed_duplex = ADVERTISE_10_FULL;
-		break;
-	case SPEED_100 + DUPLEX_HALF:
-		mac->forced_speed_duplex = ADVERTISE_100_HALF;
-		break;
-	case SPEED_100 + DUPLEX_FULL:
-		mac->forced_speed_duplex = ADVERTISE_100_FULL;
-		break;
-	case SPEED_1000 + DUPLEX_FULL:
-		mac->autoneg = true;
-		adapter->hw.phy.autoneg_advertised = ADVERTISE_1000_FULL;
-		break;
-	case SPEED_1000 + DUPLEX_HALF: /* not supported */
-		goto err_inval;
-	case SPEED_2500 + DUPLEX_FULL:
-		mac->autoneg = true;
-		adapter->hw.phy.autoneg_advertised = ADVERTISE_2500_FULL;
-		break;
-	case SPEED_2500 + DUPLEX_HALF: /* not supported */
-	default:
-		goto err_inval;
-	}
-
-	/* clear MDI, MDI(-X) override is only allowed when autoneg enabled */
-	adapter->hw.phy.mdix = AUTO_ALL_MODES;
-
-	return 0;
-
-err_inval:
-	netdev_err(adapter->netdev, "Unsupported Speed/Duplex configuration\n");
-	return -EINVAL;
-}
-
 /**
  * igc_probe - Device Initialization Routine
  * @pdev: PCI device information struct
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

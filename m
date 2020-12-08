Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4858E2D2A0E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 12:56:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2121F86FB2;
	Tue,  8 Dec 2020 11:56:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KVzWozdZGMVl; Tue,  8 Dec 2020 11:56:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8DB386FFB;
	Tue,  8 Dec 2020 11:56:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0C951BF834
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 11:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9CA5F86FA5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 11:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2cK_hTVxdje0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 11:56:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F0B2786F14
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 11:56:04 +0000 (UTC)
IronPort-SDR: d+v1+YOgRfbHyyBvNn9rJFvvqsnjOMr+Mr5Zrj/qUijiPra/FH/2eDotRzjBhlnEMU04Zx+vCA
 vcZsj7La638w==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="170366692"
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="170366692"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 03:56:03 -0800
IronPort-SDR: NTGKuWr/EbPrGylFulu+3Vu0e6NNVpBbihsxUAIstv/tPuLo+w0aDS64RU/UQ3wit7fKYFArEp
 lceOPY+ib1pw==
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="437349324"
Received: from unknown (HELO localhost.igk.intel.com) ([10.237.94.20])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 03:56:02 -0800
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  8 Dec 2020 12:53:43 -0500
Message-Id: <20201208175343.454313-1-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ixgbe: aggregate of all receive errors
 through netdev's rx_errors
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, piotrx.skajewski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The global rx error does not take into account all the error counters
that are counted by device.

Extend rx error with the following counters:
- illegal byte error
- number of receive fragment errors
- receive jabber
- receive oversize error
- receive undersize error
- frames marked as checksum invalid by hardware

The above were added in order to align statistics with other products.

Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 45ae33e15303..413a13b2578f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7234,12 +7234,21 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
 	hwstats->ptc1023 += IXGBE_READ_REG(hw, IXGBE_PTC1023);
 	hwstats->ptc1522 += IXGBE_READ_REG(hw, IXGBE_PTC1522);
 	hwstats->bptc += IXGBE_READ_REG(hw, IXGBE_BPTC);
+	hwstats->illerrc += IXGBE_READ_REG(hw, IXGBE_ILLERRC);
 
 	/* Fill out the OS statistics structure */
 	netdev->stats.multicast = hwstats->mprc;
 
 	/* Rx Errors */
-	netdev->stats.rx_errors = hwstats->crcerrs + hwstats->rlec;
+	netdev->stats.rx_errors = hwstats->crcerrs +
+				    hwstats->illerrc +
+				    hwstats->rlec +
+				    hwstats->rfc +
+				    hwstats->rjc +
+				    hwstats->roc +
+				    hwstats->ruc +
+				    hw_csum_rx_error;
+
 	netdev->stats.rx_dropped = 0;
 	netdev->stats.rx_length_errors = hwstats->rlec;
 	netdev->stats.rx_crc_errors = hwstats->crcerrs;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

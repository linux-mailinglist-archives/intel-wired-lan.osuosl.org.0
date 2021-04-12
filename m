Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C733B35C90C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Apr 2021 16:41:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3657F60A9D;
	Mon, 12 Apr 2021 14:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bMHstMNIHCum; Mon, 12 Apr 2021 14:41:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DEA160A98;
	Mon, 12 Apr 2021 14:41:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF4171BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 14:41:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9AE340486
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 14:41:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ejlZ31VzMd9z for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Apr 2021 14:41:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6A334047F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 14:41:24 +0000 (UTC)
IronPort-SDR: OryAYRUjKhM/MJETKrJDywGikeAu9t60QZ42JMdMSY/TiKApssfy/KVVUXJ0Nv+QYowdRIdaHv
 bPbPOZnOWvIQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="193767847"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="193767847"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 07:41:23 -0700
IronPort-SDR: 5e9fEAXRlwPrGBWZdpx4+kzu7T5X3DXRCaBbAHj3jyuYn5I11mvGkbGIeQBJov2PMLvUOAgrp6
 G6IodYiPACaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="531900864"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga004.jf.intel.com with ESMTP; 12 Apr 2021 07:41:12 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	dvorax.fuxbrumer@linux.intel.com
Date: Mon, 12 Apr 2021 17:41:07 +0300
Message-Id: <20210412144107.3659411-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Update driver to use
 ethtool_sprintf
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
Cc: Alexander Duyck <alexanderduyck@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Complete to commit c8d4725e985d ("intel: Update drivers to use
ethtool_sprintf")
Update the igc driver to make use of ethtool_sprintf. The general idea
is to reduce code size and overhead by replacing the repeated pattern of
string printf statements and ETH_STRING_LEN counter increments.

Suggested-by: Alexander Duyck <alexanderduyck@fb.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 40 +++++++-------------
 1 file changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 2cb12431c371..744e979b94d2 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -765,35 +765,23 @@ static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
 		       IGC_TEST_LEN * ETH_GSTRING_LEN);
 		break;
 	case ETH_SS_STATS:
-		for (i = 0; i < IGC_GLOBAL_STATS_LEN; i++) {
-			memcpy(p, igc_gstrings_stats[i].stat_string,
-			       ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
-		for (i = 0; i < IGC_NETDEV_STATS_LEN; i++) {
-			memcpy(p, igc_gstrings_net_stats[i].stat_string,
-			       ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
+		for (i = 0; i < IGC_GLOBAL_STATS_LEN; i++)
+			ethtool_sprintf(&p,
+					igc_gstrings_stats[i].stat_string);
+		for (i = 0; i < IGC_NETDEV_STATS_LEN; i++)
+			ethtool_sprintf(&p,
+					igc_gstrings_net_stats[i].stat_string);
 		for (i = 0; i < adapter->num_tx_queues; i++) {
-			sprintf(p, "tx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "tx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "tx_queue_%u_restart", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
+			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
+			ethtool_sprintf(&p, "tx_queue_%u_restart", i);
 		}
 		for (i = 0; i < adapter->num_rx_queues; i++) {
-			sprintf(p, "rx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_drops", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_csum_err", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_alloc_failed", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
+			ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
+			ethtool_sprintf(&p, "rx_queue_%u_drops", i);
+			ethtool_sprintf(&p, "rx_queue_%u_csum_err", i);
+			ethtool_sprintf(&p, "rx_queue_%u_alloc_failed", i);
 		}
 		/* BUG_ON(p - data != IGC_STATS_LEN * ETH_GSTRING_LEN); */
 		break;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

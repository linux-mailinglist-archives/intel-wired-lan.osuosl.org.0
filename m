Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E23207983E3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Sep 2023 10:19:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09B0F40BFE;
	Fri,  8 Sep 2023 08:18:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09B0F40BFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694161139;
	bh=U7z7lvA0NCXqPr3P/93H2tU7hNDPo3owz8NDnQxEKXw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vpRixxGyr3CCCUfsYPhKGZLbKT0vIHzeIsN/3ZWz5hbtm/9Epnwg7aruhFlBNf7+a
	 AeiB9k5SB+rtJae3ZNxlZtp8I2YnMyyE7+0DUKrQi1JgW93qphkQMUzz6gOJWp9m53
	 9p7GuUq5IWOAZRNMj7MFDoLvxkCwHqZQoq3JwgJH1rP3gIHWNWG1mSyHfqBMk9jV+G
	 AemAv3IfeyNgmivJWBSLMlaDWq8bbpJmCNKGVQ0kR5AXYuSpgbiDD3frqo78qTGHpt
	 kLXROFXtE7FoLd8NBoy0+WCIqNB+xUKiPSch2igpc+YGPRmb2Ri8phCLxLxMJe5oBN
	 DTTVeUqxT07eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gxT0JO5XZWUe; Fri,  8 Sep 2023 08:18:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EEC524058F;
	Fri,  8 Sep 2023 08:18:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEC524058F
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB47E1BF328
 for <intel-wired-lan@osuosl.org>; Fri,  8 Sep 2023 08:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACA82405D8
 for <intel-wired-lan@osuosl.org>; Fri,  8 Sep 2023 08:18:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACA82405D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6sehtA3sQBTV for <intel-wired-lan@osuosl.org>;
 Fri,  8 Sep 2023 08:18:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1317A4058F
 for <intel-wired-lan@osuosl.org>; Fri,  8 Sep 2023 08:18:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1317A4058F
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362655519"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="362655519"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 01:18:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="735878681"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="735878681"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga007.jf.intel.com with ESMTP; 08 Sep 2023 01:18:46 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Fri,  8 Sep 2023 16:17:34 +0800
Message-Id: <20230908081734.28205-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694161131; x=1725697131;
 h=from:to:cc:subject:date:message-id;
 bh=AURspU3F76W2cee+nFjq4Ps1mpWQnJyFzP2jJXded+c=;
 b=O5WBsmAOHcPKwYGLwQntKrkCRIIQu4flO34zyx7JQwVl+i0DDnyT1Ebb
 YNvT+Q+0OtLgjTeei7WsfsYsVGRzwmcsrtbMNQ3EPFLw+2tK40oDp7FkM
 JBcsmJooIePwUe1T1yQd3GaFSx+XyUY/a17yny3A/DZesmyk6kxIVz705
 sqh/JjDzIsX6nN+QRuGcDBhuz0HjPFFXWowvp6pjRG+SQsnadw1n0E/RE
 MR2Caqryna7YExl5Cng7MBM+XWqxdtlzWzJAnAdyisoN0sN9N1Yef20ap
 pmE9AYK05sbOzW5J3cJu+rBEHEc+DHBbYHnY0NkZyM1NgGpYzE6mbTSQ6
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O5WBsmAO
Subject: [Intel-wired-lan] [PATCH iwl-net v5] igc: Expose tx-usecs coalesce
 setting to user
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
Cc: husainizulkifli@gmail.com, bcreeley@amd.com, netdev@vger.kernel.org,
 edumazet@google.com, pabeni@redhat.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When users attempt to obtain the coalesce setting using the
ethtool command, current code always returns 0 for tx-usecs.
This is because I225/6 always uses a queue pair setting, hence
tx_coalesce_usecs does not return a value during the
igc_ethtool_get_coalesce() callback process. The pair queue
condition checking in igc_ethtool_get_coalesce() is removed by
this patch so that the user gets information of the value of tx-usecs.

Even if i225/6 is using queue pair setting, there is no harm in
notifying the user of the tx-usecs. The implementation of the current
code may have previously been a copy of the legacy code i210.
Since I225 has the queue pair setting enabled, tx-usecs will always adhere
to the user-set rx-usecs value. An error message will appear when the user
attempts to set the tx-usecs value for the input parameters because,
by default, they should only set the rx-usecs value.

This patch also adds the helper function to get the
previous rx coalesce value similar to tx coalesce.

How to test:
User can get the coalesce value using ethtool command.

Example command:
Get: ethtool -c <interface>

Previous output:

rx-usecs: 3
rx-frames: n/a
rx-usecs-irq: n/a
rx-frames-irq: n/a

tx-usecs: 0
tx-frames: n/a
tx-usecs-irq: n/a
tx-frames-irq: n/a

New output:

rx-usecs: 3
rx-frames: n/a
rx-usecs-irq: n/a
rx-frames-irq: n/a

tx-usecs: 3
tx-frames: n/a
tx-usecs-irq: n/a
tx-frames-irq: n/a

Fixes: 8c5ad0dae93c ("igc: Add ethtool support")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
---
V4 -> V5:
- Squash patch for set/get together as recommended by Jakub.
- Fix unstabilize value when user insert both tx and rx params
together.
- Add error message for unsupported config.

V3 -> V4:
- Implement the helper function, as recommended by Brett Creely.
- Fix typo in cover letter.

V2 -> V3:
- Refactor the code, as Simon suggested, to make it more readable.

V1 -> V2:
- Split the patch file into two, like Anthony suggested.
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 31 ++++++++++++--------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 93bce729be76..7ab6dd58e400 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -868,6 +868,18 @@ static void igc_ethtool_get_stats(struct net_device *netdev,
 	spin_unlock(&adapter->stats64_lock);
 }
 
+static int igc_ethtool_get_previous_rx_coalesce(struct igc_adapter *adapter)
+{
+	return (adapter->rx_itr_setting <= 3) ?
+		adapter->rx_itr_setting : adapter->rx_itr_setting >> 2;
+}
+
+static int igc_ethtool_get_previous_tx_coalesce(struct igc_adapter *adapter)
+{
+	return (adapter->tx_itr_setting <= 3) ?
+		adapter->tx_itr_setting : adapter->tx_itr_setting >> 2;
+}
+
 static int igc_ethtool_get_coalesce(struct net_device *netdev,
 				    struct ethtool_coalesce *ec,
 				    struct kernel_ethtool_coalesce *kernel_coal,
@@ -875,17 +887,8 @@ static int igc_ethtool_get_coalesce(struct net_device *netdev,
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
-	if (adapter->rx_itr_setting <= 3)
-		ec->rx_coalesce_usecs = adapter->rx_itr_setting;
-	else
-		ec->rx_coalesce_usecs = adapter->rx_itr_setting >> 2;
-
-	if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
-		if (adapter->tx_itr_setting <= 3)
-			ec->tx_coalesce_usecs = adapter->tx_itr_setting;
-		else
-			ec->tx_coalesce_usecs = adapter->tx_itr_setting >> 2;
-	}
+	ec->rx_coalesce_usecs = igc_ethtool_get_previous_rx_coalesce(adapter);
+	ec->tx_coalesce_usecs = igc_ethtool_get_previous_tx_coalesce(adapter);
 
 	return 0;
 }
@@ -910,8 +913,12 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
 	    ec->tx_coalesce_usecs == 2)
 		return -EINVAL;
 
-	if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS) && ec->tx_coalesce_usecs)
+	if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS) &&
+	    ec->tx_coalesce_usecs != igc_ethtool_get_previous_tx_coalesce(adapter)) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Queue Pair mode enabled, both Rx and Tx coalescing controlled by rx-usecs");
 		return -EINVAL;
+	}
 
 	/* If ITR is disabled, disable DMAC */
 	if (ec->rx_coalesce_usecs == 0) {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

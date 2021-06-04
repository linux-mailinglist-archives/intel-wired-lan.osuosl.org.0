Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E3339BE0A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:05:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B58741DA8;
	Fri,  4 Jun 2021 17:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oK11qTGmei33; Fri,  4 Jun 2021 17:05:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEBBD40198;
	Fri,  4 Jun 2021 17:05:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D37111BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8807940222
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GeDpGCL-3fmW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFF0C4023E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
IronPort-SDR: CaUHLub0d92ePrAEkAozJ0MblsnUEHMl4lmoydWcuwKax6QbO5drip1aKGmKzL2mFJahYHOGqk
 bVPxaLabhqfA==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="225649928"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="225649928"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:04 -0700
IronPort-SDR: eDJd+fqdsSw8vCKbjy32Cq1SKBvPfPAzTuST4vu/LZfF6LC2JB9l9lABVP65hEIIPrTgM2roL4
 XmzsTiDgKJQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086391"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:03 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:31 -0700
Message-Id: <20210604165335.33329-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 11/15] iavf: Prevent changing
 static ITR values if adaptive moderation is on
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

From: Nitesh B Venkatesh <nitesh.b.venkatesh@intel.com>

Resolve being able to change static values on VF when adaptive interrupt
moderation is enabled.

This problem is fixed by checking the interrupt settings is not
a combination of change of static value while adaptive interrupt
moderation is turned on.

Without this fix, the user would be able to change static values
on VF with adaptive moderation enabled.

Signed-off-by: Nitesh B Venkatesh <nitesh.b.venkatesh@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 30 ++++++++++++++++---
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 0d22a5275218..73901aedafdb 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -719,12 +719,31 @@ static int iavf_get_per_queue_coalesce(struct net_device *netdev, u32 queue,
  *
  * Change the ITR settings for a specific queue.
  **/
-static void iavf_set_itr_per_queue(struct iavf_adapter *adapter,
-				   struct ethtool_coalesce *ec, int queue)
+static int iavf_set_itr_per_queue(struct iavf_adapter *adapter,
+				  struct ethtool_coalesce *ec, int queue)
 {
 	struct iavf_ring *rx_ring = &adapter->rx_rings[queue];
 	struct iavf_ring *tx_ring = &adapter->tx_rings[queue];
 	struct iavf_q_vector *q_vector;
+	u16 itr_setting;
+
+	itr_setting = rx_ring->itr_setting & ~IAVF_ITR_DYNAMIC;
+
+	if (ec->rx_coalesce_usecs != itr_setting &&
+	    ec->use_adaptive_rx_coalesce) {
+		netif_info(adapter, drv, adapter->netdev,
+			   "Rx interrupt throttling cannot be changed if adaptive-rx is enabled\n");
+		return -EINVAL;
+	}
+
+	itr_setting = tx_ring->itr_setting & ~IAVF_ITR_DYNAMIC;
+
+	if (ec->tx_coalesce_usecs != itr_setting &&
+	    ec->use_adaptive_tx_coalesce) {
+		netif_info(adapter, drv, adapter->netdev,
+			   "Tx interrupt throttling cannot be changed if adaptive-tx is enabled\n");
+		return -EINVAL;
+	}
 
 	rx_ring->itr_setting = ITR_REG_ALIGN(ec->rx_coalesce_usecs);
 	tx_ring->itr_setting = ITR_REG_ALIGN(ec->tx_coalesce_usecs);
@@ -747,6 +766,7 @@ static void iavf_set_itr_per_queue(struct iavf_adapter *adapter,
 	 * the Tx and Rx ITR values based on the values we have entered
 	 * into the q_vector, no need to write the values now.
 	 */
+	return 0;
 }
 
 /**
@@ -788,9 +808,11 @@ static int __iavf_set_coalesce(struct net_device *netdev,
 	 */
 	if (queue < 0) {
 		for (i = 0; i < adapter->num_active_queues; i++)
-			iavf_set_itr_per_queue(adapter, ec, i);
+			if (iavf_set_itr_per_queue(adapter, ec, i))
+				return -EINVAL;
 	} else if (queue < adapter->num_active_queues) {
-		iavf_set_itr_per_queue(adapter, ec, queue);
+		if (iavf_set_itr_per_queue(adapter, ec, queue))
+			return -EINVAL;
 	} else {
 		netif_info(adapter, drv, netdev, "Invalid queue value, queue range is 0 - %d\n",
 			   adapter->num_active_queues - 1);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

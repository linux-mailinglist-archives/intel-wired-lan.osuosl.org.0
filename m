Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C31DB40F471
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Sep 2021 10:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DD598329D;
	Fri, 17 Sep 2021 08:54:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WQ5O46_usTEt; Fri, 17 Sep 2021 08:54:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5395F83051;
	Fri, 17 Sep 2021 08:54:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E80A1BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 08:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 88C8E60620
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 08:54:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rAx37d_D7gXV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Sep 2021 08:54:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA0FF60618
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 08:54:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="202251653"
X-IronPort-AV: E=Sophos;i="5.85,300,1624345200"; d="scan'208";a="202251653"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 01:54:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,300,1624345200"; d="scan'208";a="434791506"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga003.jf.intel.com with ESMTP; 17 Sep 2021 01:54:05 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Sep 2021 08:52:52 +0000
Message-Id: <20210917085252.96965-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v4] iavf: Fix displaying queue
 statistics shown by ethtool
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Witold Fijalkowski <witoldx.fijalkowski@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Driver provided too many lines as an output to ethtool -S command.
Return actual length of string set of ethtool stats. Instead of predefined
maximal value use the actual value on netdev, iterate over active queues.
Without this patch, ethtool -S report would produce additional
erroneous lines.

Without this change in statistics after showing them by ethtool -S
will be displayed queues that are not configured.

Fixes: 6dba41cd02fc ("i40evf: update ethtool stats code and use helper functions")
Signed-off-by: Witold Fijalkowski <witoldx.fijalkowski@intel.com>
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
V2: Fix commit message
V3: Squash patch 5d12f51b9820 ("iavf: Fix ethtool -S output")
V4: Remove one blank line

 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 30 ++++++++++++-------
 1 file changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 7cbe59beeebb..014db92d33be 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -331,9 +331,16 @@ static int iavf_get_link_ksettings(struct net_device *netdev,
  **/
 static int iavf_get_sset_count(struct net_device *netdev, int sset)
 {
+	/* Report the maximum number queues, even if not every queue is
+	 * currently configured. Since allocation of queues is in pairs,
+	 * use netdev->real_num_tx_queues * 2. The real_num_tx_queues is set
+	 * at device creation and never changes.
+	 */
+
 	if (sset == ETH_SS_STATS)
 		return IAVF_STATS_LEN +
-			(IAVF_QUEUE_STATS_LEN * 2 * IAVF_MAX_REQ_QUEUES);
+			(IAVF_QUEUE_STATS_LEN * 2 *
+			 netdev->real_num_tx_queues);
 	else if (sset == ETH_SS_PRIV_FLAGS)
 		return IAVF_PRIV_FLAGS_STR_LEN;
 	else
@@ -357,17 +364,18 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
 	iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);
 
 	rcu_read_lock();
-	for (i = 0; i < IAVF_MAX_REQ_QUEUES; i++) {
+	/* As num_active_queues describe both tx and rx queues, we can use
+	 * it to iterate over rings' stats.
+	 */
+	for (i = 0; i < adapter->num_active_queues; i++) {
 		struct iavf_ring *ring;
 
-		/* Avoid accessing un-allocated queues */
-		ring = (i < adapter->num_active_queues ?
-			&adapter->tx_rings[i] : NULL);
+		/* Tx rings stats */
+		ring = &adapter->tx_rings[i];
 		iavf_add_queue_stats(&data, ring);
 
-		/* Avoid accessing un-allocated queues */
-		ring = (i < adapter->num_active_queues ?
-			&adapter->rx_rings[i] : NULL);
+		/* Rx rings stats */
+		ring = &adapter->rx_rings[i];
 		iavf_add_queue_stats(&data, ring);
 	}
 	rcu_read_unlock();
@@ -404,10 +412,10 @@ static void iavf_get_stat_strings(struct net_device *netdev, u8 *data)
 
 	iavf_add_stat_strings(&data, iavf_gstrings_stats);
 
-	/* Queues are always allocated in pairs, so we just use num_tx_queues
-	 * for both Tx and Rx queues.
+	/* Queues are always allocated in pairs, so we just use
+	 * real_num_tx_queues for both Tx and Rx queues.
 	 */
-	for (i = 0; i < netdev->num_tx_queues; i++) {
+	for (i = 0; i < netdev->real_num_tx_queues; i++) {
 		iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,
 				      "tx", i);
 		iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

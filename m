Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4929314E4D2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jan 2020 22:33:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED44B8697D;
	Thu, 30 Jan 2020 21:33:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 01C-hGFoeIuH; Thu, 30 Jan 2020 21:33:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E4D186987;
	Thu, 30 Jan 2020 21:33:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C13F51BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2020 21:33:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD82B86A2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2020 21:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C+dfuH1KaF9o for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jan 2020 21:33:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C6C5786A98
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2020 21:33:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 13:33:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="320201461"
Received: from vcostago-desk1.jf.intel.com ([10.54.70.26])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jan 2020 13:33:37 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 30 Jan 2020 13:34:55 -0800
Message-Id: <20200130213455.191163-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200130213455.191163-1-vinicius.gomes@intel.com>
References: <20200130213455.191163-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v1 2/2] igc: Add support for
 ETF offloading
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

This adds support for ETF offloading for the i225 controller.

For i225, the LaunchTime feature is almost a subset of the Qbv
feature. The main change from the i210 is that the launchtime of each
packet is specified as an offset applied to the BASET register. BASET
is automatically incremented each cycle.

For i225, the approach chosen is to re-use most of the setup used for
taprio offloading. With a few changes:

 - The more or less obvious one is that when ETF is enabled, we should
 set add the expected launchtime to the (advanced) transmit
 descriptor;

 - The less obvious, is that when taprio offloading is not enabled, we
 add a dummy schedule (all queues are open all the time, with a cycle
 time of 1 second).

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 70 ++++++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 19 +++++-
 2 files changed, 85 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 1bb663e826e9..af5dd43a4c6c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -868,6 +868,23 @@ static int igc_write_mc_addr_list(struct net_device *netdev)
 	return netdev_mc_count(netdev);
 }
 
+static __le32 igc_tx_launchtime(struct igc_adapter *adapter, ktime_t txtime)
+{
+	ktime_t cycle_time = adapter->cycle_time;
+	ktime_t base_time = adapter->base_time;
+	u32 launchtime;
+
+	/* FIXME: when using ETF together with taprio, we may have a
+	* case where 'delta' is larger than the cycle_time, this may
+	* cause problems if we don't read the current value of
+	* IGC_BASET, as the value writen into the launchtime
+	* descriptor field may be misinterpreted.
+	*/
+       div_s64_rem(ktime_sub_ns(txtime, base_time), cycle_time, &launchtime);
+
+       return cpu_to_le32(launchtime);
+}
+
 static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
 			    struct igc_tx_buffer *first,
 			    u32 vlan_macip_lens, u32 type_tucmd,
@@ -875,7 +892,6 @@ static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
 {
 	struct igc_adv_tx_context_desc *context_desc;
 	u16 i = tx_ring->next_to_use;
-	struct timespec64 ts;
 
 	context_desc = IGC_TX_CTXTDESC(tx_ring, i);
 
@@ -897,9 +913,12 @@ static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
 	 * should have been handled by the upper layers.
 	 */
 	if (tx_ring->launchtime_enable) {
-		ts = ktime_to_timespec64(first->skb->tstamp);
+		struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
+		ktime_t txtime = first->skb->tstamp;
+
 		first->skb->tstamp = ktime_set(0, 0);
-		context_desc->launch_time = cpu_to_le32(ts.tv_nsec / 32);
+		context_desc->launch_time = igc_tx_launchtime(adapter,
+							      txtime);
 	} else {
 		context_desc->launch_time = 0;
 	}
@@ -4495,6 +4514,32 @@ static int igc_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
 	}
 }
 
+static int igc_save_txtime_params(struct igc_adapter *adapter, int queue,
+				  bool enable)
+{
+	struct igc_ring *ring;
+	int i;
+
+	if (queue < 0 || queue > adapter->num_tx_queues)
+		return -EINVAL;
+
+	ring = adapter->tx_ring[queue];
+	ring->launchtime_enable = enable;
+
+	if (adapter->base_time)
+		return 0;
+
+	adapter->cycle_time = NSEC_PER_SEC;
+
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		ring = adapter->tx_ring[i];
+		ring->start_time = 0;
+		ring->end_time = NSEC_PER_SEC;
+	}
+
+	return 0;
+}
+
 static bool validate_schedule(const struct tc_taprio_qopt_offload *qopt)
 {
 	int queue_uses[IGC_MAX_TX_QUEUES] = { };
@@ -4527,6 +4572,22 @@ static bool validate_schedule(const struct tc_taprio_qopt_offload *qopt)
 	return true;
 }
 
+static int igc_tsn_enable_basic_scheduling(struct igc_adapter *adapter,
+					   struct tc_etf_qopt_offload *qopt)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int err;
+
+	if (hw->mac.type != igc_i225)
+		return -EOPNOTSUPP;
+
+	err = igc_save_txtime_params(adapter, qopt->queue, qopt->enable);
+	if (err)
+		return err;
+
+	return igc_tsn_offload_apply(adapter);
+}
+
 static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 				 struct tc_taprio_qopt_offload *qopt)
 {
@@ -4598,6 +4659,9 @@ static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
 	case TC_SETUP_QDISC_TAPRIO:
 		return igc_tsn_enable_qbv_scheduling(adapter, type_data);
 
+	case TC_SETUP_QDISC_ETF:
+		return igc_tsn_enable_basic_scheduling(adapter, type_data);
+
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index affffce0e870..961d73de6c92 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -3,6 +3,20 @@
 
 #include "igc.h"
 
+static bool is_any_launchtime(struct igc_adapter *adapter)
+{
+	int i;
+
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *ring = adapter->tx_ring[i];
+
+		if (ring->launchtime_enable)
+			return true;
+	}
+
+	return false;
+}
+
 /* Returns the TSN specific registers to their default values after
  * TSN offloading is disabled.
  */
@@ -85,6 +99,9 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 				IGC_TXQCTL_STRICT_END;
 		}
 
+		if (ring->launchtime_enable)
+			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
+
 		wr32(IGC_TXQCTL(i), txqctl);
 	}
 
@@ -112,7 +129,7 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 
 int igc_tsn_offload_apply(struct igc_adapter *adapter)
 {
-	bool is_any_enabled = adapter->base_time;
+	bool is_any_enabled = adapter->base_time || is_any_launchtime(adapter);
 
 	if (!(adapter->flags & IGC_FLAG_TSN_QBV_ENABLED) && !is_any_enabled)
 		return 0;
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

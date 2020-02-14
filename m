Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0102615FB0E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Feb 2020 00:50:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7405C86AB3;
	Fri, 14 Feb 2020 23:50:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FJ4PI99JqxqI; Fri, 14 Feb 2020 23:50:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2938786A97;
	Fri, 14 Feb 2020 23:50:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E28A21BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2020 23:50:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DF17122246
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2020 23:50:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTt1qLy+wExG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2020 23:50:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 893512268C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2020 23:50:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 15:50:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,442,1574150400"; d="scan'208";a="252798564"
Received: from vcostago-desk1.jf.intel.com ([10.54.70.26])
 by orsmga002.jf.intel.com with ESMTP; 14 Feb 2020 15:50:37 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Feb 2020 15:52:03 -0800
Message-Id: <20200214235203.3910513-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200214235203.3910513-1-vinicius.gomes@intel.com>
References: <20200214235203.3910513-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v3 2/2] igc: Add support for
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
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 70 +++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 19 +++++-
 3 files changed, 86 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 3077d0a69b04..0746fa42ff3f 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -440,6 +440,7 @@
 #define IGC_TQAVCTRL_TRANSMIT_MODE_TSN	0x00000001
 #define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
 
+#define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
 #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
 #define IGC_TXQCTL_STRICT_END		0x00000004
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5fb52768de18..55ab6077455d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -869,6 +869,23 @@ static int igc_write_mc_addr_list(struct net_device *netdev)
 	return netdev_mc_count(netdev);
 }
 
+static __le32 igc_tx_launchtime(struct igc_adapter *adapter, ktime_t txtime)
+{
+	ktime_t cycle_time = adapter->cycle_time;
+	ktime_t base_time = adapter->base_time;
+	u32 launchtime;
+
+	/* FIXME: when using ETF together with taprio, we may have a
+	 * case where 'delta' is larger than the cycle_time, this may
+	 * cause problems if we don't read the current value of
+	 * IGC_BASET, as the value writen into the launchtime
+	 * descriptor field may be misinterpreted.
+	 */
+	div_s64_rem(ktime_sub_ns(txtime, base_time), cycle_time, &launchtime);
+
+	return cpu_to_le32(launchtime);
+}
+
 static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
 			    struct igc_tx_buffer *first,
 			    u32 vlan_macip_lens, u32 type_tucmd,
@@ -876,7 +893,6 @@ static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
 {
 	struct igc_adv_tx_context_desc *context_desc;
 	u16 i = tx_ring->next_to_use;
-	struct timespec64 ts;
 
 	context_desc = IGC_TX_CTXTDESC(tx_ring, i);
 
@@ -898,9 +914,12 @@ static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
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
@@ -4497,6 +4516,32 @@ static int igc_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
 	}
 }
 
+static int igc_save_launchtime_params(struct igc_adapter *adapter, int queue,
+				      bool enable)
+{
+	struct igc_ring *ring;
+	int i;
+
+	if (queue < 0 || queue >= adapter->num_tx_queues)
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
@@ -4529,6 +4574,22 @@ static bool validate_schedule(const struct tc_taprio_qopt_offload *qopt)
 	return true;
 }
 
+static int igc_tsn_enable_launchtime(struct igc_adapter *adapter,
+				     struct tc_etf_qopt_offload *qopt)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int err;
+
+	if (hw->mac.type != igc_i225)
+		return -EOPNOTSUPP;
+
+	err = igc_save_launchtime_params(adapter, qopt->queue, qopt->enable);
+	if (err)
+		return err;
+
+	return igc_tsn_offload_apply(adapter);
+}
+
 static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 				 struct tc_taprio_qopt_offload *qopt)
 {
@@ -4599,6 +4660,9 @@ static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
 	case TC_SETUP_QDISC_TAPRIO:
 		return igc_tsn_enable_qbv_scheduling(adapter, type_data);
 
+	case TC_SETUP_QDISC_ETF:
+		return igc_tsn_enable_launchtime(adapter, type_data);
+
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 257fe970afe8..174103c4bea6 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -4,6 +4,20 @@
 #include "igc.h"
 #include "igc_tsn.h"
 
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
@@ -88,6 +102,9 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 				IGC_TXQCTL_STRICT_END;
 		}
 
+		if (ring->launchtime_enable)
+			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
+
 		wr32(IGC_TXQCTL(i), txqctl);
 	}
 
@@ -115,7 +132,7 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 
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

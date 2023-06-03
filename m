Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CE872101F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Jun 2023 15:01:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A6376115F;
	Sat,  3 Jun 2023 13:01:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A6376115F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685797283;
	bh=Gbll/VKl06VpewlZXlTSYJf5OqPrO0GkCJZOF0wxAwE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=V1Fxl/sKa6SdCFCEL1BrQ5/70Y4Je9JPYjdssWZRStDVYvejTFLFwgJyBtBQ14lbr
	 C8o9Q23wBOH6iJAj+JspBiAHA34M6yjyWif9PLtP5V1TcStRi/hBSe27TWE6P8nZIc
	 GAuBiRpBryf7+3m/gtAp5BL7i61YB/MoLl2rHA4iJGws9F8JDIqt4XUepSmwYgu7JW
	 2NWzXGduSLDoTuVYx5RUmn7pi8aZbNdxl3PMonjcSBtmmJXK86NSTJc3h3TULdXaR+
	 l8cv6i0OwKXq2NqTw0t92wZQPy7X6TVntjkJ2VghWSa4zosneonlJeD/P/g8YKRHfX
	 Ox+6sQSA3TcKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3tiWBS3DgZqC; Sat,  3 Jun 2023 13:01:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 866A3610D2;
	Sat,  3 Jun 2023 13:01:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 866A3610D2
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B89491BF4E4
 for <intel-wired-lan@osuosl.org>; Sat,  3 Jun 2023 13:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9DB5A402E8
 for <intel-wired-lan@osuosl.org>; Sat,  3 Jun 2023 13:01:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DB5A402E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UhaB8THS-GEE for <intel-wired-lan@osuosl.org>;
 Sat,  3 Jun 2023 13:01:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 693C2400DA
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 693C2400DA
 for <intel-wired-lan@osuosl.org>; Sat,  3 Jun 2023 13:01:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10730"; a="345652792"
X-IronPort-AV: E=Sophos;i="6.00,216,1681196400"; d="scan'208";a="345652792"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2023 06:01:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10730"; a="778011535"
X-IronPort-AV: E=Sophos;i="6.00,216,1681196400"; d="scan'208";a="778011535"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2023 06:01:09 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Sat,  3 Jun 2023 20:59:34 +0800
Message-Id: <20230603125934.28090-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685797275; x=1717333275;
 h=from:to:cc:subject:date:message-id;
 bh=Lv8c2SlnEeqGeuc+6S0GNvpVy2XFJocdK2Rjg+rZCls=;
 b=Pi/i9yvN+MOAAkVEIyRJxgkgGxGwpscNEqTFx4G+8//er40agbC5KO8y
 3Ah2jNG8FUx7mh32QfdddJzjq2wOai1pTvNHITwyzKB5+AYRvUNn6VZQ3
 Pz1tIZ2iYHeF5vzqk9n1Yfd6tugtzFQAkCn6WKQGFdfT2tjk2VKKjoTjC
 3Bxm1KGvNyWdFQD7qBoIkcn/N0+xNiNARshJQjUFc66a8Scn2NMQQs/U9
 vPnONxuc89xHizZdveGiz42PthmvQCDaXP9lIpTrt4rSFV3qsr7dclfVt
 BhqJhAFA8NDtejcdUa38EpSuQ5ozlAIwTlABUfm9wzXSDVkzSv5A1AhwT
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pi/i9yvN
Subject: [Intel-wired-lan] [PATCH iwl-net v3] igc: Fix TX Hang issue when
 QBV Gate is closed
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
Cc: chwee.lin.choong@intel.com, pmenzel@molgen.mpg.de,
 tee.min.tan@linux.intel.com, anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If a user schedules a Gate Control List (GCL) to close one of
the QBV gates while also transmitting a packet to that closed gate,
TX Hang will be happen. HW would not drop any packet when the gate
is closed and keep queuing up in HW TX FIFO until the gate is re-opened.
This patch implements the solution to drop the packet for the closed
gate.

This patch will also reset the adapter to perform SW initialization
for each 1st Gate Control List (GCL) to avoid hang.
This is due to the HW design, where changing to TSN transmit mode
requires SW initialization. Intel Discrete I225/6 transmit mode
cannot be changed when in dynamic mode according to Software User
Manual Section 7.5.2.1. Subsequent Gate Control List (GCL) operations
will proceed without a reset, as they already are in TSN Mode.

Step to reproduce:

DUT:
1) Configure GCL List with certain gate close.

BASE=$(date +%s%N)
tc qdisc replace dev $IFACE parent root handle 100 taprio \
    num_tc 4 \
    map 0 1 2 3 3 3 3 3 3 3 3 3 3 3 3 3 \
    queues 1@0 1@1 1@2 1@3 \
    base-time $BASE \
    sched-entry S 0x8 500000 \
    sched-entry S 0x4 500000 \
    flags 0x2

2) Transmit the packet to closed gate. You may use udp_tai
application to transmit UDP packet to any of the closed gate.

./udp_tai -i <interface> -P 100000 -p 90 -c 1 -t <0/1> -u 30004

Fixes: ec50a9d437f0 ("igc: Add support for taprio offloading")
Co-developed-by: Tan Tee Min <tee.min.tan@linux.intel.com>
Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
Tested-by: Chwee Lin Choong <chwee.lin.choong@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
V2 -> V3: Fix reviewers's comments.
V1 -> V2: Fix conflict and apply to net-queue tree.
---
 drivers/net/ethernet/intel/igc/igc.h      |  6 +++
 drivers/net/ethernet/intel/igc/igc_main.c | 57 +++++++++++++++++++++--
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 41 ++++++++++------
 3 files changed, 87 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 0bbd108f28939..4a81e79ca1278 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -13,6 +13,7 @@
 #include <linux/ptp_clock_kernel.h>
 #include <linux/timecounter.h>
 #include <linux/net_tstamp.h>
+#include <linux/hrtimer.h>
 
 #include "igc_hw.h"
 
@@ -100,6 +101,8 @@ struct igc_ring {
 	u32 start_time;
 	u32 end_time;
 	u32 max_sdu;
+	bool oper_gate_closed;		/* Operating gate. True if the TX Queue is closed */
+	bool admin_gate_closed;		/* Future gate. True if the TX Queue will be closed */
 
 	/* CBS parameters */
 	bool cbs_enable;                /* indicates if CBS is enabled */
@@ -159,6 +162,7 @@ struct igc_adapter {
 	struct timer_list watchdog_timer;
 	struct timer_list dma_err_timer;
 	struct timer_list phy_info_timer;
+	struct hrtimer hrtimer;
 
 	u32 wol;
 	u32 en_mng_pt;
@@ -188,6 +192,8 @@ struct igc_adapter {
 	ktime_t cycle_time;
 	bool qbv_enable;
 	u32 qbv_config_change_errors;
+	bool qbv_transition;
+	unsigned int qbv_count;
 
 	/* OS defined structs */
 	struct pci_dev *pdev;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 9095306323afd..e77a3277e1570 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1572,6 +1572,9 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	first->bytecount = skb->len;
 	first->gso_segs = 1;
 
+	if (adapter->qbv_transition || tx_ring->oper_gate_closed)
+		goto out_drop;
+
 	if (tx_ring->max_sdu > 0) {
 		u32 max_sdu = 0;
 
@@ -2967,7 +2970,8 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 		    (adapter->tx_timeout_factor * HZ)) &&
 		    !(rd32(IGC_STATUS) & IGC_STATUS_TXOFF) &&
 		    (rd32(IGC_TDH(tx_ring->reg_idx)) !=
-		     readl(tx_ring->tail))) {
+		    readl(tx_ring->tail)) &&
+		    !tx_ring->oper_gate_closed) {
 			/* detected Tx unit hang */
 			netdev_err(tx_ring->netdev,
 				   "Detected Tx Unit Hang\n"
@@ -6057,6 +6061,8 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 	adapter->base_time = 0;
 	adapter->cycle_time = NSEC_PER_SEC;
 	adapter->qbv_config_change_errors = 0;
+	adapter->qbv_transition = false;
+	adapter->qbv_count = 0;
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
@@ -6064,6 +6070,8 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 		ring->start_time = 0;
 		ring->end_time = NSEC_PER_SEC;
 		ring->max_sdu = 0;
+		ring->oper_gate_closed = false;
+		ring->admin_gate_closed = false;
 	}
 
 	return 0;
@@ -6075,6 +6083,7 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	bool queue_configured[IGC_MAX_TX_QUEUES] = { };
 	struct igc_hw *hw = &adapter->hw;
 	u32 start_time = 0, end_time = 0;
+	struct timespec64 now;
 	size_t n;
 	int i;
 
@@ -6095,6 +6104,8 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	adapter->cycle_time = qopt->cycle_time;
 	adapter->base_time = qopt->base_time;
 
+	igc_ptp_read(adapter, &now);
+
 	for (n = 0; n < qopt->num_entries; n++) {
 		struct tc_taprio_sched_entry *e = &qopt->entries[n];
 
@@ -6129,7 +6140,10 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 				ring->start_time = start_time;
 			ring->end_time = end_time;
 
-			queue_configured[i] = true;
+			if (ring->start_time >= adapter->cycle_time)
+				queue_configured[i] = false;
+			else
+				queue_configured[i] = true;
 		}
 
 		start_time += e->interval;
@@ -6139,8 +6153,20 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	 * If not, set the start and end time to be end time.
 	 */
 	for (i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *ring = adapter->tx_ring[i];
+
+		if (!is_base_time_past(qopt->base_time, &now)) {
+			ring->admin_gate_closed = false;
+		} else {
+			ring->oper_gate_closed = false;
+			ring->admin_gate_closed = false;
+		}
+
 		if (!queue_configured[i]) {
-			struct igc_ring *ring = adapter->tx_ring[i];
+			if (!is_base_time_past(qopt->base_time, &now))
+				ring->admin_gate_closed = true;
+			else
+				ring->oper_gate_closed = true;
 
 			ring->start_time = end_time;
 			ring->end_time = end_time;
@@ -6466,6 +6492,27 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
 	return value;
 }
 
+static enum hrtimer_restart igc_qbv_scheduling_timer(struct hrtimer *timer)
+{
+	struct igc_adapter *adapter = container_of(timer, struct igc_adapter,
+						   hrtimer);
+	unsigned int i;
+
+	adapter->qbv_transition = true;
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *tx_ring = adapter->tx_ring[i];
+
+		if (tx_ring->admin_gate_closed) {
+			tx_ring->admin_gate_closed = false;
+			tx_ring->oper_gate_closed = true;
+		} else {
+			tx_ring->oper_gate_closed = false;
+		}
+	}
+	adapter->qbv_transition = false;
+	return HRTIMER_NORESTART;
+}
+
 /**
  * igc_probe - Device Initialization Routine
  * @pdev: PCI device information struct
@@ -6642,6 +6689,9 @@ static int igc_probe(struct pci_dev *pdev,
 	INIT_WORK(&adapter->reset_task, igc_reset_task);
 	INIT_WORK(&adapter->watchdog_task, igc_watchdog_task);
 
+	hrtimer_init(&adapter->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
+	adapter->hrtimer.function = &igc_qbv_scheduling_timer;
+
 	/* Initialize link properties that are user-changeable */
 	adapter->fc_autoneg = true;
 	hw->mac.autoneg = true;
@@ -6745,6 +6795,7 @@ static void igc_remove(struct pci_dev *pdev)
 
 	cancel_work_sync(&adapter->reset_task);
 	cancel_work_sync(&adapter->watchdog_task);
+	hrtimer_cancel(&adapter->hrtimer);
 
 	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
 	 * would have already happened in close and is redundant.
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 6b299b83e7ef2..3cdb0c9887283 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -114,7 +114,6 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
-	bool tsn_mode_reconfig = false;
 	u32 tqavctrl, baset_l, baset_h;
 	u32 sec, nsec, cycle;
 	ktime_t base_time, systim;
@@ -228,11 +227,10 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 
 	tqavctrl = rd32(IGC_TQAVCTRL) & ~IGC_TQAVCTRL_FUTSCDDIS;
 
-	if (tqavctrl & IGC_TQAVCTRL_TRANSMIT_MODE_TSN)
-		tsn_mode_reconfig = true;
-
 	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
 
+	adapter->qbv_count++;
+
 	cycle = adapter->cycle_time;
 	base_time = adapter->base_time;
 
@@ -250,17 +248,28 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		 */
 		if ((rd32(IGC_BASET_H) || rd32(IGC_BASET_L)) &&
 		    (adapter->tc_setup_type == TC_SETUP_QDISC_TAPRIO) &&
-		    tsn_mode_reconfig)
+		    (adapter->qbv_count > 1))
 			adapter->qbv_config_change_errors++;
 	} else {
-		/* According to datasheet section 7.5.2.9.3.3, FutScdDis bit
-		 * has to be configured before the cycle time and base time.
-		 * Tx won't hang if there is a GCL is already running,
-		 * so in this case we don't need to set FutScdDis.
-		 */
-		if (igc_is_device_id_i226(hw) &&
-		    !(rd32(IGC_BASET_H) || rd32(IGC_BASET_L)))
-			tqavctrl |= IGC_TQAVCTRL_FUTSCDDIS;
+		if (igc_is_device_id_i226(hw)) {
+			ktime_t adjust_time, expires_time;
+
+		       /* According to datasheet section 7.5.2.9.3.3, FutScdDis bit
+			* has to be configured before the cycle time and base time.
+			* Tx won't hang if a GCL is already running,
+			* so in this case we don't need to set FutScdDis.
+			*/
+			if (!(rd32(IGC_BASET_H) || rd32(IGC_BASET_L)))
+				tqavctrl |= IGC_TQAVCTRL_FUTSCDDIS;
+
+			nsec = rd32(IGC_SYSTIML);
+			sec = rd32(IGC_SYSTIMH);
+			systim = ktime_set(sec, nsec);
+
+			adjust_time = adapter->base_time;
+			expires_time = ktime_sub_ns(adjust_time, systim);
+			hrtimer_start(&adapter->hrtimer, expires_time, HRTIMER_MODE_REL);
+		}
 	}
 
 	wr32(IGC_TQAVCTRL, tqavctrl);
@@ -306,7 +315,11 @@ int igc_tsn_offload_apply(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
 
-	if (netif_running(adapter->netdev) && igc_is_device_id_i225(hw)) {
+	/* Per I225/6 HW Design Section 7.5.2.1, transmit mode
+	 * cannot be changed dynamically. Require reset the adapter.
+	 */
+	if (netif_running(adapter->netdev) &&
+	    (igc_is_device_id_i225(hw) || !adapter->qbv_count)) {
 		schedule_work(&adapter->reset_task);
 		return 0;
 	}
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

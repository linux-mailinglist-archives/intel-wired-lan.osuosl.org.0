Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE7D71795A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 10:00:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE46B404DD;
	Wed, 31 May 2023 08:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE46B404DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685520056;
	bh=+JEWfLzwfyFXjsq6rso/GccK/E28h9XUef7fxk4kdV8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Zp/gwnqM53l8FIizDeoKCIIgsAlgzmSkQ1h7hoiZZu7WN4J88vx2Eu+v4Qa/d3eMD
	 lSGA+yyXSWIkNoZdYU15TU+qmxcM0yITl1HsMf+yCLSwcO9IGSxHHbwwYtZUH6yxLX
	 nxNm1V3pzWBr8gIS7sjXCmtQx3wIkjef5Xub1jRyeZfPCMnvnu8tg5WpOo1+vW14Sx
	 ohZkifT0GcuecSprgaAmmccDU0hELz4f7kS5pcoNoqwdKRVqEKJdLwFh3MuGtsn2vr
	 oKWDz0AVF3G/NP+QcIxNnAwDkSMLO+XAL6L7AA1w1Smdty1rc/RcEXBfI2jnsLPVOl
	 XPU0rOVPnq9pw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SZm5yfiflyEZ; Wed, 31 May 2023 08:00:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 514CE4016B;
	Wed, 31 May 2023 08:00:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 514CE4016B
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 104A11BF853
 for <intel-wired-lan@osuosl.org>; Wed, 31 May 2023 08:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E9B8F40482
 for <intel-wired-lan@osuosl.org>; Wed, 31 May 2023 08:00:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9B8F40482
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ocD8DU69o3BC for <intel-wired-lan@osuosl.org>;
 Wed, 31 May 2023 08:00:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A41B340158
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A41B340158
 for <intel-wired-lan@osuosl.org>; Wed, 31 May 2023 08:00:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358431094"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="358431094"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 01:00:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="831123210"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="831123210"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga004.jf.intel.com with ESMTP; 31 May 2023 01:00:44 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 31 May 2023 15:59:07 +0800
Message-Id: <20230531075907.26251-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685520047; x=1717056047;
 h=from:to:cc:subject:date:message-id;
 bh=RXKgue5rUe6qnqmmEZbZla6B1KGH1epvJY9hzCEcFSI=;
 b=DiI5vAUZRQ1668n5zcBtLZ4zg02Y5ubTx1LWgGrPVh1vSuVe8mbiCKys
 sT52347HQifutLhPn2v9rdA41d1pjT3s3I6DAlPXotT0JROKEb4yBOady
 rWtVzsdWin04U0GbnVnd8kxkFTbM+3YmL1tRtj1NyrePwKW/o2ZSMEh76
 gZK2cVmC4q9U9iUdaq93wwLijSPrGfvfXDXLQNiZnDLXLj57gRTgt104U
 6NaVC6KP15P9O7L7QapfDV34/jwSAOb94hXTE6tRq7HubrLhKH5FLCUvE
 US0FEZIvi1SXLrT95KmJw9B7I1E6WJ5n4nvjAN8jmqCduOj6vo2RKBDoN
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DiI5vAUZ
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: Fix TX Hang issue when
 QBV Gate is close
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
Cc: chwee.lin.choong@intel.com, anthony.l.nguyen@intel.com,
 tee.min.tan@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If a user schedules a Gate Control List (GCL) to close one of
the QBV gates while also transmitting a packet to that closed gate,
TX Hang will be happen. HW would not drop any packet when the gate
is close and keep queueing up in HW TX FIFO until the gate is re-open.
This patch implement the solution to drop the packet for the closed
gate.

This patch will additionally include a reset adapter to perform
SW initialization for each 1st Gate Control List (GCL) to avoid hang.
This is due to the HW design, where changing to TSN transmit mode
requires SW initialization. Intel Discrete I225/6 transmit mode
cannot be changed when in dynamic mode according to Software User
Manual Section 7.5.2.1. Subsequent Gate Control List (GCL) operations
will proceed without a reset, as they already in TSN Mode.

Step to reproduce:

DUT:
1) Configure GCL List with certain gate close.
2) Transmit the packet to close gate.

Fixes: ec50a9d437f0 ("igc: Add support for taprio offloading")
Co-developed-by: Tan Tee Min <tee.min.tan@linux.intel.com>
Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
Tested-by: Chwee Lin Choong <chwee.lin.choong@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  6 +++
 drivers/net/ethernet/intel/igc/igc_main.c | 57 +++++++++++++++++++++--
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 41 ++++++++++------
 3 files changed, 87 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index cb5751fab03c9..866b41a92cf8a 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -14,6 +14,7 @@
 #include <linux/timecounter.h>
 #include <linux/net_tstamp.h>
 #include <linux/bitfield.h>
+#include <linux/hrtimer.h>
 
 #include "igc_hw.h"
 
@@ -101,6 +102,8 @@ struct igc_ring {
 	u32 start_time;
 	u32 end_time;
 	u32 max_sdu;
+	bool oper_gate_closed;
+	bool admin_gate_closed;
 
 	/* CBS parameters */
 	bool cbs_enable;                /* indicates if CBS is enabled */
@@ -160,6 +163,7 @@ struct igc_adapter {
 	struct timer_list watchdog_timer;
 	struct timer_list dma_err_timer;
 	struct timer_list phy_info_timer;
+	struct hrtimer hrtimer;
 
 	u32 wol;
 	u32 en_mng_pt;
@@ -189,6 +193,8 @@ struct igc_adapter {
 	ktime_t cycle_time;
 	bool qbv_enable;
 	u32 qbv_config_change_errors;
+	bool qbv_transition;
+	int qbv_count;
 
 	/* OS defined structs */
 	struct pci_dev *pdev;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 774c80073579e..8ab6ffc2f1005 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1521,6 +1521,9 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	u8 hdr_len = 0;
 	int tso = 0;
 
+	if (adapter->qbv_transition || tx_ring->oper_gate_closed)
+		goto out_drop;
+
 	/* need: 1 descriptor per page * PAGE_SIZE/IGC_MAX_DATA_PER_TXD,
 	 *	+ 1 desc for skb_headlen/IGC_MAX_DATA_PER_TXD,
 	 *	+ 2 desc gap to keep tail from touching head,
@@ -3012,7 +3015,8 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 		    (adapter->tx_timeout_factor * HZ)) &&
 		    !(rd32(IGC_STATUS) & IGC_STATUS_TXOFF) &&
 		    (rd32(IGC_TDH(tx_ring->reg_idx)) !=
-		     readl(tx_ring->tail))) {
+		    readl(tx_ring->tail)) &&
+		    !tx_ring->oper_gate_closed) {
 			/* detected Tx unit hang */
 			netdev_err(tx_ring->netdev,
 				   "Detected Tx Unit Hang\n"
@@ -6102,6 +6106,8 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 	adapter->base_time = 0;
 	adapter->cycle_time = NSEC_PER_SEC;
 	adapter->qbv_config_change_errors = 0;
+	adapter->qbv_transition = false;
+	adapter->qbv_count = 0;
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
@@ -6109,6 +6115,8 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 		ring->start_time = 0;
 		ring->end_time = NSEC_PER_SEC;
 		ring->max_sdu = 0;
+		ring->oper_gate_closed = false;
+		ring->admin_gate_closed = false;
 	}
 
 	return 0;
@@ -6120,6 +6128,7 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	bool queue_configured[IGC_MAX_TX_QUEUES] = { };
 	struct igc_hw *hw = &adapter->hw;
 	u32 start_time = 0, end_time = 0;
+	struct timespec64 now;
 	size_t n;
 	int i;
 
@@ -6140,6 +6149,8 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	adapter->cycle_time = qopt->cycle_time;
 	adapter->base_time = qopt->base_time;
 
+	igc_ptp_read(adapter, &now);
+
 	for (n = 0; n < qopt->num_entries; n++) {
 		struct tc_taprio_sched_entry *e = &qopt->entries[n];
 
@@ -6174,7 +6185,10 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 				ring->start_time = start_time;
 			ring->end_time = end_time;
 
-			queue_configured[i] = true;
+			if (ring->start_time >= adapter->cycle_time)
+				queue_configured[i] = false;
+			else
+				queue_configured[i] = true;
 		}
 
 		start_time += e->interval;
@@ -6184,8 +6198,20 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
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
@@ -6566,6 +6592,27 @@ static const struct xdp_metadata_ops igc_xdp_metadata_ops = {
 	.xmo_rx_timestamp		= igc_xdp_rx_timestamp,
 };
 
+static enum hrtimer_restart igc_qbv_scheduling_timer(struct hrtimer *timer)
+{
+	struct igc_adapter *adapter = container_of(timer, struct igc_adapter,
+						   hrtimer);
+	int i;
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
@@ -6744,6 +6791,9 @@ static int igc_probe(struct pci_dev *pdev,
 	INIT_WORK(&adapter->reset_task, igc_reset_task);
 	INIT_WORK(&adapter->watchdog_task, igc_watchdog_task);
 
+	hrtimer_init(&adapter->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
+	adapter->hrtimer.function = &igc_qbv_scheduling_timer;
+
 	/* Initialize link properties that are user-changeable */
 	adapter->fc_autoneg = true;
 	hw->mac.autoneg = true;
@@ -6847,6 +6897,7 @@ static void igc_remove(struct pci_dev *pdev)
 
 	cancel_work_sync(&adapter->reset_task);
 	cancel_work_sync(&adapter->watchdog_task);
+	hrtimer_cancel(&adapter->hrtimer);
 
 	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
 	 * would have already happened in close and is redundant.
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 6b299b83e7ef2..81770955029dc 100644
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
+			* Tx won't hang if there is a GCL is already running,
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
+	 * cannot be change dynamically. Require reset the adapter.
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

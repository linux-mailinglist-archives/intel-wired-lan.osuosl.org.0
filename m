Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8741657E3D4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 17:37:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42F8B84AC9;
	Fri, 22 Jul 2022 15:37:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42F8B84AC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658504226;
	bh=lMs6RCxWR2K4jGeBi68RbaLGR8Wf9Eq/ReEeh+SSxuw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=qY1RJxyuC2HkaWJS1a8mdcPNxLroMsxKunNsfE01ZXIBZXy7EFRk9b/rZhBrFPoot
	 ABdHDg2Ao+1WkzAUffW1IQB/PHOyQygFW+uiXtOzYY/avmCXUnkjN7cyy/vypP5bPd
	 i8T6bwWGDQu4glspFM9cRm8QBcw3n39MaabgEZLjGtdGVhofsvrNUFfAS81HkzuZei
	 meuuUR5YoJZ+RYorxBU62pCqphW3O2G72bHSO1bhKmRC67iK5SGtLNfbBnackaJGsf
	 j8wMLV6zfP4cKJtmj2pciJJ2yHaN4St37kcJI+psMv6krMibIDR2PiECC/aKxubA8w
	 CP3//ICfVWkXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RBhKkXEtAGqS; Fri, 22 Jul 2022 15:37:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F12984AC1;
	Fri, 22 Jul 2022 15:37:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F12984AC1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 371C01BF831
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 15:37:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F26E60F43
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 15:37:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F26E60F43
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n8yXOwCR_BAJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jul 2022 15:36:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C56760F3A
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C56760F3A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 15:36:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10416"; a="351331536"
X-IronPort-AV: E=Sophos;i="5.93,186,1654585200"; d="scan'208";a="351331536"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 08:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,186,1654585200"; d="scan'208";a="549205548"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by orsmga003.jf.intel.com with ESMTP; 22 Jul 2022 08:36:56 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 22 Jul 2022 17:36:10 +0200
Message-Id: <20220722153610.499172-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658504218; x=1690040218;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nZbRfhthZeaKogZrBihweSvPSYJnozUvJNB2dijcjVE=;
 b=K3glduGVrEnquAh3OzvUTyt/BWq20Zn8JintV+8XzGknVEbOvb2DhwnC
 UlnCw/DXyYwBzb8Zs1MgEgQwKfegqV3aWIE7Y+8wR4FED9VB8yRHccpJX
 xsq8jcHZa+0lWyny4nItnbEcHy5LcL4sHvmRCqLyz4qRX7BRD1UfZcB0z
 89e8K4dpVDdgK3DFJzXS0oz6YAuWwMA1CWGl9MsUOFBhgcSzGCK26eJgs
 PpBBicYlSCDOO0cX6B8tLtjoTMcwJ7PvcsIUHNrxTqYGzItK/XH1SVJD7
 m2yKTkJHGJJpA02tQ4sVY31gkAR6mPrvzQjo1oDlvuxrIkvwWI2n25O4m
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K3glduGV
Subject: [Intel-wired-lan] [PATCH net-next] ice: Add low latency Tx
 timestamp read
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E810 products can support low latency Tx timestamp register read.
This requires usage of threaded IRQ instead of kthread to reduce the
kthread start latency (spikes up to 20 ms).
Add a check for the device capability and use the new method if
supported.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  4 +
 drivers/net/ethernet/intel/ice/ice_main.c   | 32 +++++--
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 47 +++++-----
 drivers/net/ethernet/intel/ice/ice_ptp.h    |  7 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 98 ++++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  7 ++
 drivers/net/ethernet/intel/ice/ice_type.h   |  2 +
 7 files changed, 152 insertions(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 27d0cbbd29da..7027d7fbff92 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2397,6 +2397,8 @@ ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 	info->tmr1_owned = ((number & ICE_TS_TMR1_OWND_M) != 0);
 	info->tmr1_ena = ((number & ICE_TS_TMR1_ENA_M) != 0);
 
+	info->ts_ll_read = ((number & ICE_TS_LL_TX_TS_READ_M) != 0);
+
 	info->ena_ports = logical_id;
 	info->tmr_own_map = phys_id;
 
@@ -2414,6 +2416,8 @@ ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 		  info->tmr1_owned);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr1_ena = %u\n",
 		  info->tmr1_ena);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: ts_ll_read = %u\n",
+		  info->ts_ll_read);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: ieee_1588 ena_ports = %u\n",
 		  info->ena_ports);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr_own_map = %u\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f3a5cb93e2fd..d77afeef1d38 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3078,7 +3078,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 	if (oicr & PFINT_OICR_TSYN_TX_M) {
 		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
-		ice_ptp_process_ts(pf);
+		if (!hw->reset_ongoing)
+			ret = IRQ_WAKE_THREAD;
 	}
 
 	if (oicr & PFINT_OICR_TSYN_EVNT_M) {
@@ -3113,7 +3114,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 			ice_service_task_schedule(pf);
 		}
 	}
-	ret = IRQ_HANDLED;
+	if (!ret)
+		ret = IRQ_HANDLED;
 
 	ice_service_task_schedule(pf);
 	ice_irq_dynamic_ena(hw, NULL, NULL);
@@ -3121,6 +3123,24 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 	return ret;
 }
 
+/**
+ * ice_misc_intr_thread_fn - misc interrupt thread function
+ * @irq: interrupt number
+ * @data: pointer to a q_vector
+ */
+static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
+{
+	struct ice_pf *pf = (struct ice_pf *)data;
+	irqreturn_t ret = IRQ_HANDLED;
+	bool irq_handled;
+
+	irq_handled = ice_ptp_process_ts(pf);
+	if (!irq_handled)
+		ret = IRQ_WAKE_THREAD;
+
+	return ret;
+}
+
 /**
  * ice_dis_ctrlq_interrupts - disable control queue interrupts
  * @hw: pointer to HW structure
@@ -3233,10 +3253,12 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 	pf->num_avail_sw_msix -= 1;
 	pf->oicr_idx = (u16)oicr_idx;
 
-	err = devm_request_irq(dev, pf->msix_entries[pf->oicr_idx].vector,
-			       ice_misc_intr, 0, pf->int_name, pf);
+	err = devm_request_threaded_irq(dev,
+					pf->msix_entries[pf->oicr_idx].vector,
+					ice_misc_intr, ice_misc_intr_thread_fn,
+					0, pf->int_name, pf);
 	if (err) {
-		dev_err(dev, "devm_request_irq for %s failed: %d\n",
+		dev_err(dev, "devm_request_threaded_irq for %s failed: %d\n",
 			pf->int_name, err);
 		ice_free_res(pf->irq_tracker, 1, ICE_RES_MISC_VEC_ID);
 		pf->num_avail_sw_msix += 1;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 29c7a0ccb3c4..96213d15eb2e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2026,8 +2026,8 @@ static long ice_ptp_create_clock(struct ice_pf *pf)
 }
 
 /**
- * ice_ptp_tx_tstamp_work - Process Tx timestamps for a port
- * @work: pointer to the kthread_work struct
+ * ice_ptp_tx_tstamp - Process Tx timestamps for a port
+ * @tx: the PTP Tx timestamp tracker
  *
  * Process timestamps captured by the PHY associated with this port. To do
  * this, loop over each index with a waiting skb.
@@ -2040,11 +2040,11 @@ static long ice_ptp_create_clock(struct ice_pf *pf)
  * 2) extend the 40b timestamp value to get a 64bit timestamp
  * 3) send that timestamp to the stack
  *
- * After looping, if we still have waiting SKBs, then re-queue the work. This
- * may cause us effectively poll even when not strictly necessary. We do this
- * because it's possible a new timestamp was requested around the same time as
- * the interrupt. In some cases hardware might not interrupt us again when the
- * timestamp is captured.
+ * After looping, if we still have waiting SKBs, return true. This may cause us
+ * effectively poll even when not strictly necessary. We do this because it's
+ * possible a new timestamp was requested around the same time as the interrupt.
+ * In some cases hardware might not interrupt us again when the timestamp is
+ * captured.
  *
  * Note that we only take the tracking lock when clearing the bit and when
  * checking if we need to re-queue this task. The only place where bits can be
@@ -2053,27 +2053,24 @@ static long ice_ptp_create_clock(struct ice_pf *pf)
  * thread. If the cleanup thread clears a bit we're processing we catch it
  * when we lock to clear the bit and then grab the SKB pointer. If a Tx thread
  * starts a new timestamp, we might not begin processing it right away but we
- * will notice it at the end when we re-queue the work item. If a Tx thread
- * starts a new timestamp just after this function exits without re-queuing,
+ * will notice it at the end when we re-queue the task. If a Tx thread starts
+ * a new timestamp just after this function exits without re-queuing,
  * the interrupt when the timestamp finishes should trigger. Avoiding holding
  * the lock for the entire function is important in order to ensure that Tx
  * threads do not get blocked while waiting for the lock.
  */
-static void ice_ptp_tx_tstamp_work(struct kthread_work *work)
+static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 {
 	struct ice_ptp_port *ptp_port;
-	struct ice_ptp_tx *tx;
+	bool ts_handled = true;
 	struct ice_pf *pf;
-	struct ice_hw *hw;
 	u8 idx;
 
-	tx = container_of(work, struct ice_ptp_tx, work);
 	if (!tx->init)
-		return;
+		return false;
 
 	ptp_port = container_of(tx, struct ice_ptp_port, tx);
 	pf = ptp_port_to_pf(ptp_port);
-	hw = &pf->hw;
 
 	for_each_set_bit(idx, tx->in_use, tx->len) {
 		struct skb_shared_hwtstamps shhwtstamps = {};
@@ -2084,7 +2081,7 @@ static void ice_ptp_tx_tstamp_work(struct kthread_work *work)
 
 		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
 
-		err = ice_read_phy_tstamp(hw, tx->quad, phy_idx,
+		err = ice_read_phy_tstamp(&pf->hw, tx->quad, phy_idx,
 					  &raw_tstamp);
 		if (err)
 			continue;
@@ -2127,8 +2124,10 @@ static void ice_ptp_tx_tstamp_work(struct kthread_work *work)
 	 */
 	spin_lock(&tx->lock);
 	if (!bitmap_empty(tx->in_use, tx->len))
-		kthread_queue_work(pf->ptp.kworker, &tx->work);
+		ts_handled = false;
 	spin_unlock(&tx->lock);
+
+	return ts_handled;
 }
 
 /**
@@ -2171,16 +2170,17 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 }
 
 /**
- * ice_ptp_process_ts - Spawn kthread work to handle timestamps
+ * ice_ptp_process_ts - Process the PTP Tx timestamps
  * @pf: Board private structure
  *
- * Queue work required to process the PTP Tx timestamps outside of interrupt
- * context.
+ * Returns true if timestamps are processed.
  */
-void ice_ptp_process_ts(struct ice_pf *pf)
+bool ice_ptp_process_ts(struct ice_pf *pf)
 {
 	if (pf->ptp.port.tx.init)
-		kthread_queue_work(pf->ptp.kworker, &pf->ptp.port.tx.work);
+		return ice_ptp_tx_tstamp(&pf->ptp.port.tx);
+	else
+		return false;
 }
 
 /**
@@ -2205,7 +2205,6 @@ ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
 	}
 
 	spin_lock_init(&tx->lock);
-	kthread_init_work(&tx->work, ice_ptp_tx_tstamp_work);
 
 	tx->init = 1;
 
@@ -2251,8 +2250,6 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 {
 	tx->init = 0;
 
-	kthread_cancel_work_sync(&tx->work);
-
 	ice_ptp_flush_tx_tracker(pf, tx);
 
 	kfree(tx->tstamps);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 10e396abf130..5e620e15a265 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -105,7 +105,6 @@ struct ice_tx_tstamp {
 
 /**
  * struct ice_ptp_tx - Tracking structure for all Tx timestamp requests on a port
- * @work: work function to handle processing of Tx timestamps
  * @lock: lock to prevent concurrent write to in_use bitmap
  * @tstamps: array of len to store outstanding requests
  * @in_use: bitmap of len to indicate which slots are in use
@@ -117,7 +116,6 @@ struct ice_tx_tstamp {
  *               window, timestamps are temporarily disabled.
  */
 struct ice_ptp_tx {
-	struct kthread_work work;
 	spinlock_t lock; /* lock protecting in_use bitmap */
 	struct ice_tx_tstamp *tstamps;
 	unsigned long *in_use;
@@ -236,7 +234,7 @@ void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena);
 int ice_get_ptp_clock_index(struct ice_pf *pf);
 
 s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb);
-void ice_ptp_process_ts(struct ice_pf *pf);
+bool ice_ptp_process_ts(struct ice_pf *pf);
 
 void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
@@ -269,7 +267,8 @@ ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 	return -1;
 }
 
-static inline void ice_ptp_process_ts(struct ice_pf *pf) { }
+static inline bool ice_ptp_process_ts(struct ice_pf *pf)
+{ return true; }
 static inline void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb) { }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 6dff97d53d81..772b1f566d6e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (C) 2021, Intel Corporation. */
 
+#include <linux/delay.h>
 #include "ice_common.h"
 #include "ice_ptp_hw.h"
 #include "ice_ptp_consts.h"
@@ -2587,38 +2588,113 @@ static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
 }
 
 /**
- * ice_read_phy_tstamp_e810 - Read a PHY timestamp out of the external PHY
+ * ice_read_phy_tstamp_ll_e810 - Read a PHY timestamp registers through the FW
+ * @hw: pointer to the HW struct
+ * @idx: the timestamp index to read
+ * @hi: 8 bit timestamp high value
+ * @lo: 32 bit timestamp low value
+ *
+ * Read a 8bit timestamp high value and 32 bit timestamp low value out of the
+ * timestamp block of the external PHY on the E810 device using the low latency
+ * timestamp read.
+ */
+static int
+ice_read_phy_tstamp_ll_e810(struct ice_hw *hw, u8 idx, u8 *hi, u32 *lo)
+{
+	u32 val;
+	u8 i;
+
+	/* Write TS index to read to the PF register so the FW can read it */
+	val = FIELD_PREP(TS_LL_READ_TS_IDX, idx) | TS_LL_READ_TS;
+	wr32(hw, PF_SB_ATQBAL, val);
+
+	/* Read the register repeatedly until the FW provides us the TS */
+	for (i = TS_LL_READ_RETRIES; i > 0; i--) {
+		val = rd32(hw, PF_SB_ATQBAL);
+
+		/* When the bit is cleared, the TS is ready in the register */
+		if (!(FIELD_GET(TS_LL_READ_TS, val))) {
+			/* High 8 bit value of the TS is on the bits 16:23 */
+			*hi = FIELD_GET(TS_LL_READ_TS_HIGH, val);
+
+			/* Read the low 32 bit value and set the TS valid bit */
+			*lo = rd32(hw, PF_SB_ATQBAH) | TS_VALID;
+			return 0;
+		}
+
+		udelay(10);
+	}
+
+	/* FW failed to provide the TS in time */
+	ice_debug(hw, ICE_DBG_PTP, "Failed to read PTP timestamp using low latency read\n");
+	return -EINVAL;
+}
+
+/**
+ * ice_read_phy_tstamp_sbq_e810 - Read a PHY timestamp registers through the sbq
  * @hw: pointer to the HW struct
  * @lport: the lport to read from
  * @idx: the timestamp index to read
- * @tstamp: on return, the 40bit timestamp value
+ * @hi: 8 bit timestamp high value
+ * @lo: 32 bit timestamp low value
  *
- * Read a 40bit timestamp value out of the timestamp block of the external PHY
- * on the E810 device.
+ * Read a 8bit timestamp high value and 32 bit timestamp low value out of the
+ * timestamp block of the external PHY on the E810 device using sideband queue.
  */
 static int
-ice_read_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx, u64 *tstamp)
+ice_read_phy_tstamp_sbq_e810(struct ice_hw *hw, u8 lport, u8 idx, u8 *hi,
+			     u32 *lo)
 {
-	u32 lo_addr, hi_addr, lo, hi;
+	u32 hi_addr = TS_EXT(HIGH_TX_MEMORY_BANK_START, lport, idx);
+	u32 lo_addr = TS_EXT(LOW_TX_MEMORY_BANK_START, lport, idx);
+	u32 lo_val, hi_val;
 	int err;
 
-	lo_addr = TS_EXT(LOW_TX_MEMORY_BANK_START, lport, idx);
-	hi_addr = TS_EXT(HIGH_TX_MEMORY_BANK_START, lport, idx);
-
-	err = ice_read_phy_reg_e810(hw, lo_addr, &lo);
+	err = ice_read_phy_reg_e810(hw, lo_addr, &lo_val);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read low PTP timestamp register, err %d\n",
 			  err);
 		return err;
 	}
 
-	err = ice_read_phy_reg_e810(hw, hi_addr, &hi);
+	err = ice_read_phy_reg_e810(hw, hi_addr, &hi_val);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read high PTP timestamp register, err %d\n",
 			  err);
 		return err;
 	}
 
+	*lo = lo_val;
+	*hi = (u8)hi_val;
+
+	return 0;
+}
+
+/**
+ * ice_read_phy_tstamp_e810 - Read a PHY timestamp out of the external PHY
+ * @hw: pointer to the HW struct
+ * @lport: the lport to read from
+ * @idx: the timestamp index to read
+ * @tstamp: on return, the 40bit timestamp value
+ *
+ * Read a 40bit timestamp value out of the timestamp block of the external PHY
+ * on the E810 device.
+ */
+static int
+ice_read_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx, u64 *tstamp)
+{
+	u32 lo = 0;
+	u8 hi = 0;
+	int err;
+
+	if (hw->dev_caps.ts_dev_info.ts_ll_read)
+		err = ice_read_phy_tstamp_ll_e810(hw, idx, &hi, &lo);
+	else
+		err = ice_read_phy_tstamp_sbq_e810(hw, lport, idx, &hi, &lo);
+
+	if (err)
+		return err;
+
 	/* For E810 devices, the timestamp is reported with the lower 32 bits
 	 * in the low register, and the upper 8 bits in the high register.
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 1246e4ee4b5d..2bda64c76abc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -402,6 +402,7 @@ bool ice_is_pca9575_present(struct ice_hw *hw);
 #define INCVAL_HIGH_M			0xFF
 
 /* Timestamp block macros */
+#define TS_VALID			BIT(0)
 #define TS_LOW_M			0xFFFFFFFF
 #define TS_HIGH_M			0xFF
 #define TS_HIGH_S			32
@@ -413,6 +414,12 @@ bool ice_is_pca9575_present(struct ice_hw *hw);
 #define BYTES_PER_IDX_ADDR_L_U		8
 #define BYTES_PER_IDX_ADDR_L		4
 
+/* Tx timestamp low latency read definitions */
+#define TS_LL_READ_RETRIES		200
+#define TS_LL_READ_TS_HIGH		GENMASK(23, 16)
+#define TS_LL_READ_TS_IDX		GENMASK(29, 24)
+#define TS_LL_READ_TS			BIT(31)
+
 /* Internal PHY timestamp address */
 #define TS_L(a, idx) ((a) + ((idx) * BYTES_PER_IDX_ADDR_L_U))
 #define TS_H(a, idx) ((a) + ((idx) * BYTES_PER_IDX_ADDR_L_U +		\
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 861b64322959..920c47ddbe8d 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -347,6 +347,7 @@ struct ice_ts_func_info {
 #define ICE_TS_DEV_ENA_M		BIT(24)
 #define ICE_TS_TMR0_ENA_M		BIT(25)
 #define ICE_TS_TMR1_ENA_M		BIT(26)
+#define ICE_TS_LL_TX_TS_READ_M		BIT(28)
 
 struct ice_ts_dev_info {
 	/* Device specific info */
@@ -359,6 +360,7 @@ struct ice_ts_dev_info {
 	u8 ena;
 	u8 tmr0_ena;
 	u8 tmr1_ena;
+	u8 ts_ll_read;
 };
 
 /* Function specific capabilities */
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

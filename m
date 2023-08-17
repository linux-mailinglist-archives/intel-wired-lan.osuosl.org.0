Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A91777F88F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 16:18:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 299DB83EC4;
	Thu, 17 Aug 2023 14:18:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 299DB83EC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692281919;
	bh=eJqcGnVRatpXxMY1hfdFoFtEsFAOS72dWKAyQttmoIU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hvVcbTWPJUw9+l90GJPDvwaWjWZGN46bhhVTqKo5rnYNV/VgdJNtzOfjKPfZwIF0L
	 ZCzBjsdxHLDBeb766Zeod5AKTl4Rq1wldckEpSw2vZ3Og0g97tFGNL7b7ts5B0+DcN
	 pJWDUbrT17onBJePmN4Qp1s0XIQBRZlQn6zxvhmyd+lL5DqPS+cHzCe332pkDEMPgt
	 ltC6x/iSrRX8n6mSdDcdsRzJlQV4Ew/C74o5p0qhzm9gGS+Ks26P6R7HkC9idcMrIa
	 gTJhwUNRt4KunkM8WUQztoaX8jTzxyAqVpzdAcf6YFTNZFVBGXvHU/aKLPMUB0T+i2
	 p/oG8WRlE/Ljw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id atmrPKXx-69E; Thu, 17 Aug 2023 14:18:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A5E683AC4;
	Thu, 17 Aug 2023 14:18:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A5E683AC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D71181BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD92883F3F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD92883F3F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YxNoV3REUgpN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 14:18:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE62F83F3E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE62F83F3E
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="403804210"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="403804210"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:18:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="981189716"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="981189716"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga006.fm.intel.com with ESMTP; 17 Aug 2023 07:18:19 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 16:17:41 +0200
Message-Id: <20230817141746.18726-5-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230817141746.18726-1-karol.kolacinski@intel.com>
References: <20230817141746.18726-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692281901; x=1723817901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cB/IDWCD8+fbJg4BPiZJ05K8PP0SoQSMvmcDmXikJoU=;
 b=W/YKLOoKRc/2Zk1E/y545O41vIaSNYVasX+PLAZXPJ06apU0aFPnLdGJ
 zPlsca9D4EKrnepluKkf79bW5e/H30Gct/HYlxQ8sUuLZJkR0ZRPz5MVS
 IOnQk6FPulIxVJ1Ww+A8pO9M/TX5+OFBnB40BMLJFYs1/sChwWaQGfHRA
 R1HjdKcxbVg/p4+qeHkFUtiSzMgY05CWMSh5yTCyLR308yEIP1cp4e3ck
 2Ybm2wrtfZtzLdZTAehq3Ww+jvJMqPhAc2LFOoFAcLDqPDhMUXkAknkTg
 mvQKI1G7INyWVa6S4vJor7jU4ryNuGxNlYUlnYz4zSa1BPB3qMyVD2WO4
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W/YKLOoK
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 4/9] ice: rename PTP functions
 and fields
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The tx->verify_cached flag is used to inform the Tx timestamp tracking
code whether it needs to verify the cached Tx timestamp value against
a previous captured value. This is necessary on E810 hardware which does
not have a Tx timestamp ready bitmap.

In addition, we currently rely on the fact that the
ice_get_phy_tx_tstamp_ready() function returns all 1s for E810 hardware.
Instead of introducing a brand new flag, rename and verify_cached to
has_ready_bitmap, inverting the relevant checks.

The ice_ptp_tx_cfg_intr() function sends a control queue message to
configure the PHY timestamp interrupt block. This is a very similar name
to a function which is used to configure the MAC Other Interrupt Cause
Enable register.

Rename this function to ice_ptp_cfg_phy_interrupt in order to make it
more obvious to the reader what action it performs, and distinguish it
from other similarly named functions.

The ice_ptp_configure_tx_tstamp function writes to PFINT_OICR_ENA to
configure it with the PFINT_OICR_TX_TSYN_M bit. The name of this
function is confusing because there are multiple other functions with
almost identical names.

Rename it to ice_ptp_cfg_tx_interrupt in order to make it more obvious
to the reader what action it performs.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 41 +++++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  6 +++-
 2 files changed, 27 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0ee971f8c2e2..486692a5bf64 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -281,11 +281,11 @@ static const char *ice_ptp_state_str(enum ice_ptp_state state)
 }
 
 /**
- * ice_ptp_configure_tx_tstamp - Enable or disable Tx timestamp interrupt
- * @pf: The PF pointer to search in
+ * ice_ptp_cfg_tx_interrupt - Configure Tx timestamp interrupt for the device
+ * @pf: Board private structure
  * @on: bool value for whether timestamp interrupt is enabled or disabled
  */
-static void ice_ptp_configure_tx_tstamp(struct ice_pf *pf, bool on)
+static void ice_ptp_cfg_tx_interrupt(struct ice_pf *pf, bool on)
 {
 	u32 val;
 
@@ -320,7 +320,7 @@ static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
 	}
 
 	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
-		ice_ptp_configure_tx_tstamp(pf, on);
+		ice_ptp_cfg_tx_interrupt(pf, on);
 
 	pf->ptp.tstamp_config.tx_type = on ? HWTSTAMP_TX_ON : HWTSTAMP_TX_OFF;
 }
@@ -591,9 +591,11 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 	hw = &pf->hw;
 
 	/* Read the Tx ready status first */
-	err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
-	if (err)
-		return;
+	if (tx->has_ready_bitmap) {
+		err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
+		if (err)
+			return;
+	}
 
 	/* Drop packets if the link went down */
 	link_up = ptp_port->link_up;
@@ -621,7 +623,8 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 		 * If we do not, the hardware logic for generating a new
 		 * interrupt can get stuck on some devices.
 		 */
-		if (!(tstamp_ready & BIT_ULL(phy_idx))) {
+		if (tx->has_ready_bitmap &&
+		    !(tstamp_ready & BIT_ULL(phy_idx))) {
 			if (drop_ts)
 				goto skip_ts_read;
 
@@ -641,7 +644,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 		 * from the last cached timestamp. If it is not, skip this for
 		 * now assuming it hasn't yet been captured by hardware.
 		 */
-		if (!drop_ts && tx->verify_cached &&
+		if (!drop_ts && !tx->has_ready_bitmap &&
 		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
 			continue;
 
@@ -651,7 +654,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 
 skip_ts_read:
 		spin_lock(&tx->lock);
-		if (tx->verify_cached && raw_tstamp)
+		if (!tx->has_ready_bitmap && raw_tstamp)
 			tx->tstamps[idx].cached_tstamp = raw_tstamp;
 		clear_bit(idx, tx->in_use);
 		skb = tx->tstamps[idx].skb;
@@ -895,7 +898,7 @@ ice_ptp_init_tx_e822(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
 	tx->block = port / ICE_PORTS_PER_QUAD;
 	tx->offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT_E822;
 	tx->len = INDEX_PER_PORT_E822;
-	tx->verify_cached = 0;
+	tx->has_ready_bitmap = 1;
 
 	return ice_ptp_alloc_tx_tracker(tx);
 }
@@ -918,7 +921,7 @@ ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	 * verify new timestamps against cached copy of the last read
 	 * timestamp.
 	 */
-	tx->verify_cached = 1;
+	tx->has_ready_bitmap = 0;
 
 	return ice_ptp_alloc_tx_tracker(tx);
 }
@@ -1338,14 +1341,14 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 }
 
 /**
- * ice_ptp_tx_ena_intr - Enable or disable the Tx timestamp interrupt
+ * ice_ptp_cfg_phy_interrupt - Configure PHY interrupt settings
  * @pf: PF private structure
  * @ena: bool value to enable or disable interrupt
  * @threshold: Minimum number of packets at which intr is triggered
  *
  * Utility function to enable or disable Tx timestamp interrupt and threshold
  */
-static int ice_ptp_tx_ena_intr(struct ice_pf *pf, bool ena, u32 threshold)
+static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 {
 	struct ice_hw *hw = &pf->hw;
 	int err = 0;
@@ -2505,8 +2508,8 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	struct ice_ptp *ptp = &pf->ptp;
 	struct ice_hw *hw = &pf->hw;
 	struct timespec64 ts;
-	int err, itr = 1;
 	u64 time_diff;
+	int err;
 
 	if (ptp->state != ICE_PTP_RESETTING) {
 		if (ptp->state == ICE_PTP_READY) {
@@ -2559,7 +2562,7 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	if (!ice_is_e810(hw)) {
 		/* Enable quad interrupts */
-		err = ice_ptp_tx_ena_intr(pf, true, itr);
+		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
 		if (err)
 			goto err;
 	}
@@ -2845,13 +2848,13 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 		/* The clock owner for this device type handles the timestamp
 		 * interrupt for all ports.
 		 */
-		ice_ptp_configure_tx_tstamp(pf, true);
+		ice_ptp_cfg_tx_interrupt(pf, true);
 
 		/* React on all quads interrupts for E82x */
 		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x1f);
 
 		/* Enable quad interrupts */
-		err = ice_ptp_tx_ena_intr(pf, true, itr);
+		err = ice_ptp_cfg_phy_interrupt(pf, true, itr);
 		if (err)
 			goto err_exit;
 	}
@@ -2923,7 +2926,7 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 		 * neither on own quad nor on others
 		 */
 		if (!ice_ptp_pf_handles_tx_interrupt(pf)) {
-			ice_ptp_configure_tx_tstamp(pf, false);
+			ice_ptp_cfg_tx_interrupt(pf, false);
 			wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x0);
 		}
 		kthread_init_delayed_work(&ptp_port->ov_work,
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 48c0d56c0568..30ad714a2a21 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -100,7 +100,7 @@ struct ice_perout_channel {
  * the last timestamp we read for a given index. If the current timestamp
  * value is the same as the cached value, we assume a new timestamp hasn't
  * been captured. This avoids reporting stale timestamps to the stack. This is
- * only done if the verify_cached flag is set in ice_ptp_tx structure.
+ * only done if the has_ready_bitmap flag is not set in ice_ptp_tx structure.
  */
 struct ice_tx_tstamp {
 	struct sk_buff *skb;
@@ -131,6 +131,9 @@ enum ice_tx_tstamp_work {
  * @calibrating: if true, the PHY is calibrating the Tx offset. During this
  *               window, timestamps are temporarily disabled.
  * @verify_cached: if true, verify new timestamp differs from last read value
+ * @has_ready_bitmap: if true, the hardware has a valid Tx timestamp ready
+ *                    bitmap register. If false, fall back to verifying new
+ *                    timestamp values against previously cached copy.
  */
 struct ice_ptp_tx {
 	spinlock_t lock; /* lock protecting in_use bitmap */
@@ -143,6 +146,7 @@ struct ice_ptp_tx {
 	u8 init : 1;
 	u8 calibrating : 1;
 	u8 verify_cached : 1;
+	u8 has_ready_bitmap : 1;
 };
 
 /* Quad and port information for initializing timestamp blocks */
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

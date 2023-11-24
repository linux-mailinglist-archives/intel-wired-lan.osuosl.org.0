Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DAE7F72F8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 12:43:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF88B82247;
	Fri, 24 Nov 2023 11:43:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF88B82247
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700826184;
	bh=SrTx708i+5fZJ5Z0e+/S9EgbSrAvye/vRqyrjcYN3P0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IUMtQEr83MFI0e5vd2OCZvTsk69fymtYFQjriZn6BT5UxnEhQWtMx7a/yCyt4hxJk
	 KaUq7/JtYU1oeFRL/WwJuzNxbXlgL4qgZSkYcAMmRnV5I4tPDrEcVTH1ENMNk49ACt
	 /M6CaadtI3vhr9/9+E47r29ZG07ZCq3dc4iThYdksB7GqbTv214ZNjgJnKNW0+/6Di
	 d9Lv6paAKZ+KZRNOBkV3JChIe2qnrwGeQSVDouGin1Xv/EYBdG7z9WYdYN9JfCijzM
	 fFoFF4UqcpcMXOYP9iV01ZUTf78E+T2C5lS4VseIygGxTN4NxFmWy+hraTT2Rv728d
	 kpFwAIbZN29Vw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FocwES1yLaJl; Fri, 24 Nov 2023 11:43:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76C1082249;
	Fri, 24 Nov 2023 11:43:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76C1082249
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2CB4E1BF383
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D826E40077
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:42:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D826E40077
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2uaqZQ498iR1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 11:42:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BFBD41744
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:42:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BFBD41744
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="458898761"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="458898761"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 03:42:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="891047107"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="891047107"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orsmga004.jf.intel.com with ESMTP; 24 Nov 2023 03:42:49 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Nov 2023 12:41:55 +0100
Message-Id: <20231124114155.251360-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231124114155.251360-1-karol.kolacinski@intel.com>
References: <20231124114155.251360-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700826172; x=1732362172;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rC8Q+TfXjQL/Sgqfz8sfV2di+ZHaE1Dnj1T/DLmzDbQ=;
 b=b4lGzUir7tOPDECA3Evdiq5WBRZxoWDWFUCTpMgjICqW1+vym9dk1oUh
 345CG5QsLJLYm8hOxA0KcSW942KNNrI1968ara0Uhjter89vrsi5kfwFX
 UBgmrZOkobDhtITfEpw+PC8g3Lza2qci3dFQC156O3Glsvh2j8Gg5tyda
 cCzt73kvJf2DsJpMHLq1/VwNb6g26JL8UsnYPwPplHdCy9wgdcPuiyS6K
 guOKZXHS+qJXI2CrEnHaMCATUD91rgauHNqpKWq1LRe7tMc86/Uy2sSyl
 HwRsoL2rm0WJ5QossnWUch1xafNkVgb1mmbgHvWNh7wX0ffJfvYMY9Hz7
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b4lGzUir
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: Enable SW interrupt
 from FW for LL TS
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
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com,
 Yochai Hagvi <yochai.hagvi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce new capability - Low Latency Timestamping with Interrupt.
On supported devices, driver can request a single timestamp from FW
without polling the register afterwards. Instead, FW can issue
a dedicated interrupt when the timestamp was read from the PHY register
and its value is available to read from the register.
This eliminates the need of bottom half scheduling, which results in
minimal delay for timestamping.

For this mode, allocate TS indices sequentially, so that timestamps are
always completed in FIFO manner.

Co-developed-by: Yochai Hagvi <yochai.hagvi@intel.com>
Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   3 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 120 +++++++++++--
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 163 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
 8 files changed, 274 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index d5a8da0c02c3..d2031e05be94 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -603,6 +603,7 @@ struct ice_pf {
 	u32 hw_csum_rx_error;
 	u32 oicr_err_reg;
 	struct msi_map oicr_irq;	/* Other interrupt cause MSIX vector */
+	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
@@ -627,6 +628,7 @@ struct ice_pf {
 	unsigned long tx_timeout_last_recovery;
 	u32 tx_timeout_recovery_level;
 	char int_name[ICE_INT_NAME_STR_LEN];
+	char int_name_ll_ts[ICE_INT_NAME_STR_LEN];
 	struct auxiliary_device *adev;
 	int aux_idx;
 	u32 sw_int_count;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8d97434e1413..0cf1406e4150 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2665,6 +2665,7 @@ ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 	info->tmr1_ena = ((number & ICE_TS_TMR1_ENA_M) != 0);
 
 	info->ts_ll_read = ((number & ICE_TS_LL_TX_TS_READ_M) != 0);
+	info->ts_ll_int_read = ((number & ICE_TS_LL_TX_TS_INT_READ_M) != 0);
 
 	info->ena_ports = logical_id;
 	info->tmr_own_map = phys_id;
@@ -2685,6 +2686,8 @@ ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 		  info->tmr1_ena);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: ts_ll_read = %u\n",
 		  info->ts_ll_read);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: ts_ll_int_read = %u\n",
+		  info->ts_ll_int_read);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: ieee_1588 ena_ports = %u\n",
 		  info->ena_ports);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr_own_map = %u\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 86936b758ade..c518626306bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -200,6 +200,8 @@
 #define GLINT_VECT2FUNC_PF_NUM_M		ICE_M(0x7, 12)
 #define GLINT_VECT2FUNC_IS_PF_S			16
 #define GLINT_VECT2FUNC_IS_PF_M			BIT(16)
+#define PFINT_ALLOC				0x001D2600
+#define PFINT_ALLOC_FIRST			ICE_M(0x7FF, 0)
 #define PFINT_FW_CTL				0x0016C800
 #define PFINT_FW_CTL_MSIX_INDX_M		ICE_M(0x7FF, 0)
 #define PFINT_FW_CTL_ITR_INDX_S			11
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6b91ec6f420d..883b478090e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3040,6 +3040,7 @@ static int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 static void ice_ena_misc_vector(struct ice_pf *pf)
 {
 	struct ice_hw *hw = &pf->hw;
+	u32 pf_intr_start_offset;
 	u32 val;
 
 	/* Disable anti-spoof detection interrupt to prevent spurious event
@@ -3068,6 +3069,47 @@ static void ice_ena_misc_vector(struct ice_pf *pf)
 	/* SW_ITR_IDX = 0, but don't change INTENA */
 	wr32(hw, GLINT_DYN_CTL(pf->oicr_irq.index),
 	     GLINT_DYN_CTL_SW_ITR_INDX_M | GLINT_DYN_CTL_INTENA_MSK_M);
+
+	if (!pf->hw.dev_caps.ts_dev_info.ts_ll_int_read)
+		return;
+	pf_intr_start_offset = rd32(hw, PFINT_ALLOC) & PFINT_ALLOC_FIRST;
+	wr32(hw, GLINT_DYN_CTL(pf->ll_ts_irq.index + pf_intr_start_offset),
+	     GLINT_DYN_CTL_SW_ITR_INDX_M | GLINT_DYN_CTL_INTENA_MSK_M);
+}
+
+/**
+ * ice_ll_ts_intr - ll_ts interrupt handler
+ * @irq: interrupt number
+ * @data: pointer to a q_vector
+ */
+static irqreturn_t ice_ll_ts_intr(int __always_unused irq, void *data)
+{
+	struct ice_pf *pf = data;
+	u32 pf_intr_start_offset;
+	struct ice_ptp_tx *tx;
+	unsigned long flags;
+	struct ice_hw *hw;
+	u32 val;
+	u8 idx;
+
+	hw = &pf->hw;
+	tx = &pf->ptp.port.tx;
+	spin_lock_irqsave(&tx->lock, flags);
+	ice_ptp_complete_tx_single_tstamp(tx);
+
+	idx = find_next_bit_wrap(tx->in_use, tx->len,
+				 tx->last_ll_ts_idx_read + 1);
+	if (idx != tx->len)
+		ice_ptp_req_tx_single_tstamp(tx, idx);
+	spin_unlock_irqrestore(&tx->lock, flags);
+
+	val = GLINT_DYN_CTL_INTENA_M | GLINT_DYN_CTL_CLEARPBA_M |
+	      (ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S);
+	pf_intr_start_offset = rd32(hw, PFINT_ALLOC) & PFINT_ALLOC_FIRST;
+	wr32(hw, GLINT_DYN_CTL(pf->ll_ts_irq.index + pf_intr_start_offset),
+	     val);
+
+	return IRQ_HANDLED;
 }
 
 /**
@@ -3160,7 +3202,19 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 	if (oicr & PFINT_OICR_TSYN_TX_M) {
 		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
-		if (ice_ptp_pf_handles_tx_interrupt(pf))
+		if (ice_pf_state_is_nominal(pf) &&
+		    pf->hw.dev_caps.ts_dev_info.ts_ll_int_read) {
+			struct ice_ptp_tx *tx = &pf->ptp.port.tx;
+			unsigned long flags;
+			u8 idx;
+
+			spin_lock_irqsave(&tx->lock, flags);
+			idx = find_next_bit_wrap(tx->in_use, tx->len,
+						 tx->last_ll_ts_idx_read + 1);
+			if (idx != tx->len)
+				ice_ptp_req_tx_single_tstamp(tx, idx);
+			spin_unlock_irqrestore(&tx->lock, flags);
+		} else if (ice_ptp_pf_handles_tx_interrupt(pf)) {
 			set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
 			ret = IRQ_WAKE_THREAD;
 		}
@@ -3264,6 +3318,20 @@ static void ice_dis_ctrlq_interrupts(struct ice_hw *hw)
 	ice_flush(hw);
 }
 
+/**
+ * ice_free_irq_msix_ll_ts- Unroll ll_ts vector setup
+ * @pf: board private structure
+ */
+static void ice_free_irq_msix_ll_ts(struct ice_pf *pf)
+{
+	int irq_num = pf->ll_ts_irq.virq;
+
+	synchronize_irq(irq_num);
+	devm_free_irq(ice_pf_to_dev(pf), irq_num, pf);
+
+	ice_free_irq(pf, pf->ll_ts_irq);
+}
+
 /**
  * ice_free_irq_msix_misc - Unroll misc vector setup
  * @pf: board private structure
@@ -3283,6 +3351,8 @@ static void ice_free_irq_msix_misc(struct ice_pf *pf)
 	devm_free_irq(ice_pf_to_dev(pf), misc_irq_num, pf);
 
 	ice_free_irq(pf, pf->oicr_irq);
+	if (pf->hw.dev_caps.ts_dev_info.ts_ll_int_read)
+		ice_free_irq_msix_ll_ts(pf);
 }
 
 /**
@@ -3308,10 +3378,12 @@ static void ice_ena_ctrlq_interrupts(struct ice_hw *hw, u16 reg_idx)
 	       PFINT_MBX_CTL_CAUSE_ENA_M);
 	wr32(hw, PFINT_MBX_CTL, val);
 
-	/* This enables Sideband queue Interrupt causes */
-	val = ((reg_idx & PFINT_SB_CTL_MSIX_INDX_M) |
-	       PFINT_SB_CTL_CAUSE_ENA_M);
-	wr32(hw, PFINT_SB_CTL, val);
+	if (!hw->dev_caps.ts_dev_info.ts_ll_int_read) {
+		/* enable Sideband queue Interrupt causes */
+		val = ((reg_idx & PFINT_SB_CTL_MSIX_INDX_M) |
+		       PFINT_SB_CTL_CAUSE_ENA_M);
+		wr32(hw, PFINT_SB_CTL, val);
+	}
 
 	ice_flush(hw);
 }
@@ -3328,13 +3400,17 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	struct msi_map oicr_irq;
+	u32 pf_intr_start_offset;
+	struct msi_map irq;
 	int err = 0;
 
 	if (!pf->int_name[0])
 		snprintf(pf->int_name, sizeof(pf->int_name) - 1, "%s-%s:misc",
 			 dev_driver_string(dev), dev_name(dev));
 
+	if (!pf->int_name_ll_ts[0])
+		snprintf(pf->int_name_ll_ts, sizeof(pf->int_name_ll_ts) - 1,
+			 "%s-%s:ll_ts", dev_driver_string(dev), dev_name(dev));
 	/* Do not request IRQ but do enable OICR interrupt since settings are
 	 * lost during reset. Note that this function is called only during
 	 * rebuild path and not while reset is in progress.
@@ -3343,11 +3419,11 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 		goto skip_req_irq;
 
 	/* reserve one vector in irq_tracker for misc interrupts */
-	oicr_irq = ice_alloc_irq(pf, false);
-	if (oicr_irq.index < 0)
-		return oicr_irq.index;
+	irq = ice_alloc_irq(pf, false);
+	if (irq.index < 0)
+		return irq.index;
 
-	pf->oicr_irq = oicr_irq;
+	pf->oicr_irq = irq;
 	err = devm_request_threaded_irq(dev, pf->oicr_irq.virq, ice_misc_intr,
 					ice_misc_intr_thread_fn, 0,
 					pf->int_name, pf);
@@ -3358,10 +3434,34 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 		return err;
 	}
 
+	/* reserve one vector in irq_tracker for ll_ts interrupt */
+	if (!pf->hw.dev_caps.ts_dev_info.ts_ll_int_read)
+		goto skip_req_irq;
+
+	irq = ice_alloc_irq(pf, false);
+	if (irq.index < 0)
+		return irq.index;
+
+	pf->ll_ts_irq = irq;
+	err = devm_request_irq(dev, pf->ll_ts_irq.virq, ice_ll_ts_intr, 0,
+			       pf->int_name_ll_ts, pf);
+	if (err) {
+		dev_err(dev, "devm_request_irq for %s failed: %d\n",
+			pf->int_name_ll_ts, err);
+		ice_free_irq(pf, pf->ll_ts_irq);
+		return err;
+	}
+
 skip_req_irq:
 	ice_ena_misc_vector(pf);
 
 	ice_ena_ctrlq_interrupts(hw, pf->oicr_irq.index);
+	/* This enables LL TS interrupt */
+	pf_intr_start_offset = rd32(hw, PFINT_ALLOC) & PFINT_ALLOC_FIRST;
+	if (pf->hw.dev_caps.ts_dev_info.ts_ll_int_read)
+		wr32(hw, PFINT_SB_CTL,
+		     ((pf->ll_ts_irq.index + pf_intr_start_offset) &
+		      PFINT_SB_CTL_MSIX_INDX_M) | PFINT_SB_CTL_CAUSE_ENA_M);
 	wr32(hw, GLINT_ITR(ICE_RX_ITR, pf->oicr_irq.index),
 	     ITR_REG_ALIGN(ICE_ITR_8K) >> ICE_ITR_GRAN_S);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 03fc9c7cd21a..1fa4d696c408 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -524,6 +524,119 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
 	return tx->init && !tx->calibrating;
 }
 
+/**
+ * ice_ptp_req_tx_single_tstamp - Request Tx timestamp for a port from FW
+ * @tx: the PTP Tx timestamp tracker
+ * @idx: index of the timestamp to request
+ */
+void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
+{
+	struct ice_ptp_port *ptp_port;
+	struct sk_buff *skb;
+	struct ice_pf *pf;
+
+	if (!tx->init)
+		return;
+
+	ptp_port = container_of(tx, struct ice_ptp_port, tx);
+	pf = ptp_port_to_pf(ptp_port);
+
+	/* Drop packets which have waited for more than 2 seconds */
+	if (time_is_before_jiffies(tx->tstamps[idx].start + 2 * HZ)) {
+		/* Count the number of Tx timestamps that timed out */
+		pf->ptp.tx_hwtstamp_timeouts++;
+
+		skb = tx->tstamps[idx].skb;
+		tx->tstamps[idx].skb = NULL;
+		clear_bit(idx, tx->in_use);
+
+		dev_kfree_skb_any(skb);
+		return;
+	}
+
+	ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
+
+	/* Write TS index to read to the PF register so the FW can read it */
+	wr32(&pf->hw, PF_SB_ATQBAL,
+	     TS_LL_READ_TS_INTR | FIELD_PREP(TS_LL_READ_TS_IDX, idx) |
+	     TS_LL_READ_TS);
+	tx->last_ll_ts_idx_read = idx;
+}
+
+/**
+ * ice_ptp_complete_tx_single_tstamp - Complete Tx timestamp for a port
+ * @tx: the PTP Tx timestamp tracker
+ */
+void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx)
+{
+	struct skb_shared_hwtstamps shhwtstamps = {};
+	u8 idx = tx->last_ll_ts_idx_read;
+	struct ice_ptp_port *ptp_port;
+	u64 raw_tstamp, tstamp;
+	bool drop_ts = false;
+	struct sk_buff *skb;
+	struct ice_pf *pf;
+	u32 val;
+
+	if (!tx->init || tx->last_ll_ts_idx_read < 0)
+		return;
+
+	ptp_port = container_of(tx, struct ice_ptp_port, tx);
+	pf = ptp_port_to_pf(ptp_port);
+
+	ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
+
+	val = rd32(&pf->hw, PF_SB_ATQBAL);
+
+	/* When the bit is cleared, the TS is ready in the register */
+	if (val & TS_LL_READ_TS) {
+		dev_err(ice_pf_to_dev(pf), "Failed to get the Tx tstamp - FW not ready");
+		return;
+	}
+
+	/* High 8 bit value of the TS is on the bits 16:23 */
+	raw_tstamp = FIELD_GET(TS_LL_READ_TS_HIGH, val);
+	raw_tstamp <<= 32;
+
+	/* Read the low 32 bit value */
+	raw_tstamp |= (u64)rd32(&pf->hw, PF_SB_ATQBAH);
+
+	/* For PHYs which don't implement a proper timestamp ready bitmap,
+	 * verify that the timestamp value is different from the last cached
+	 * timestamp. If it is not, skip this for now assuming it hasn't yet
+	 * been captured by hardware.
+	 */
+	if (!drop_ts && tx->verify_cached &&
+	    raw_tstamp == tx->tstamps[idx].cached_tstamp)
+		return;
+
+	if (tx->verify_cached && raw_tstamp)
+		tx->tstamps[idx].cached_tstamp = raw_tstamp;
+	clear_bit(idx, tx->in_use);
+	skb = tx->tstamps[idx].skb;
+	tx->tstamps[idx].skb = NULL;
+	if (test_and_clear_bit(idx, tx->stale))
+		drop_ts = true;
+
+	if (!skb)
+		return;
+
+	if (drop_ts) {
+		dev_kfree_skb_any(skb);
+		return;
+	}
+
+	/* Extend the timestamp using cached PHC time */
+	tstamp = ice_ptp_extend_40b_ts(pf, raw_tstamp);
+	if (tstamp) {
+		shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
+		ice_trace(tx_tstamp_complete, skb, idx);
+	}
+
+	skb_tstamp_tx(skb, &shhwtstamps);
+	dev_kfree_skb_any(skb);
+}
+
 /**
  * ice_ptp_process_tx_tstamp - Process Tx timestamps for a port
  * @tx: the PTP Tx timestamp tracker
@@ -575,6 +688,7 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
 static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 {
 	struct ice_ptp_port *ptp_port;
+	unsigned long flags;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	u64 tstamp_ready;
@@ -646,7 +760,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 			drop_ts = true;
 
 skip_ts_read:
-		spin_lock(&tx->lock);
+		spin_lock_irqsave(&tx->lock, flags);
 		if (tx->verify_cached && raw_tstamp)
 			tx->tstamps[idx].cached_tstamp = raw_tstamp;
 		clear_bit(idx, tx->in_use);
@@ -654,7 +768,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 		tx->tstamps[idx].skb = NULL;
 		if (test_and_clear_bit(idx, tx->stale))
 			drop_ts = true;
-		spin_unlock(&tx->lock);
+		spin_unlock_irqrestore(&tx->lock, flags);
 
 		/* It is unlikely but possible that the SKB will have been
 		 * flushed at this point due to link change or teardown.
@@ -724,6 +838,7 @@ static enum ice_tx_tstamp_work ice_ptp_tx_tstamp_owner(struct ice_pf *pf)
 static enum ice_tx_tstamp_work ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 {
 	bool more_timestamps;
+	unsigned long flags;
 
 	if (!tx->init)
 		return ICE_TX_TSTAMP_WORK_DONE;
@@ -732,9 +847,9 @@ static enum ice_tx_tstamp_work ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	ice_ptp_process_tx_tstamp(tx);
 
 	/* Check if there are outstanding Tx timestamps */
-	spin_lock(&tx->lock);
+	spin_lock_irqsave(&tx->lock, flags);
 	more_timestamps = tx->init && !bitmap_empty(tx->in_use, tx->len);
-	spin_unlock(&tx->lock);
+	spin_unlock_irqrestore(&tx->lock, flags);
 
 	if (more_timestamps)
 		return ICE_TX_TSTAMP_WORK_PENDING;
@@ -771,6 +886,7 @@ ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
 	tx->in_use = in_use;
 	tx->stale = stale;
 	tx->init = 1;
+	tx->last_ll_ts_idx_read = -1;
 
 	spin_lock_init(&tx->lock);
 
@@ -788,6 +904,7 @@ static void
 ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 {
 	struct ice_hw *hw = &pf->hw;
+	unsigned long flags;
 	u64 tstamp_ready;
 	int err;
 	u8 idx;
@@ -811,12 +928,12 @@ ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 		if (!hw->reset_ongoing && (tstamp_ready & BIT_ULL(phy_idx)))
 			ice_clear_phy_tstamp(hw, tx->block, phy_idx);
 
-		spin_lock(&tx->lock);
+		spin_lock_irqsave(&tx->lock, flags);
 		skb = tx->tstamps[idx].skb;
 		tx->tstamps[idx].skb = NULL;
 		clear_bit(idx, tx->in_use);
 		clear_bit(idx, tx->stale);
-		spin_unlock(&tx->lock);
+		spin_unlock_irqrestore(&tx->lock, flags);
 
 		/* Count the number of Tx timestamps flushed */
 		pf->ptp.tx_hwtstamp_flushed++;
@@ -840,9 +957,11 @@ ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 static void
 ice_ptp_mark_tx_tracker_stale(struct ice_ptp_tx *tx)
 {
-	spin_lock(&tx->lock);
+	unsigned long flags;
+
+	spin_lock_irqsave(&tx->lock, flags);
 	bitmap_or(tx->stale, tx->stale, tx->in_use, tx->len);
-	spin_unlock(&tx->lock);
+	spin_unlock_irqrestore(&tx->lock, flags);
 }
 
 /**
@@ -855,9 +974,11 @@ ice_ptp_mark_tx_tracker_stale(struct ice_ptp_tx *tx)
 static void
 ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 {
-	spin_lock(&tx->lock);
+	unsigned long flags;
+
+	spin_lock_irqsave(&tx->lock, flags);
 	tx->init = 0;
-	spin_unlock(&tx->lock);
+	spin_unlock_irqrestore(&tx->lock, flags);
 
 	/* wait for potentially outstanding interrupt to complete */
 	synchronize_irq(pf->oicr_irq.virq);
@@ -1257,6 +1378,7 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 	struct ice_pf *pf = ptp_port_to_pf(ptp_port);
 	u8 port = ptp_port->port_num;
 	struct ice_hw *hw = &pf->hw;
+	unsigned long flags;
 	int err;
 
 	if (ice_is_e810(hw))
@@ -1270,9 +1392,9 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 	kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
 
 	/* temporarily disable Tx timestamps while calibrating PHY offset */
-	spin_lock(&ptp_port->tx.lock);
+	spin_lock_irqsave(&ptp_port->tx.lock, flags);
 	ptp_port->tx.calibrating = true;
-	spin_unlock(&ptp_port->tx.lock);
+	spin_unlock_irqrestore(&ptp_port->tx.lock, flags);
 	ptp_port->tx_fifo_busy_cnt = 0;
 
 	/* Start the PHY timer in Vernier mode */
@@ -1281,9 +1403,9 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 		goto out_unlock;
 
 	/* Enable Tx timestamps right away */
-	spin_lock(&ptp_port->tx.lock);
+	spin_lock_irqsave(&ptp_port->tx.lock, flags);
 	ptp_port->tx.calibrating = false;
-	spin_unlock(&ptp_port->tx.lock);
+	spin_unlock_irqrestore(&ptp_port->tx.lock, flags);
 
 	kthread_queue_delayed_work(pf->ptp.kworker, &ptp_port->ov_work, 0);
 
@@ -2380,18 +2502,23 @@ static long ice_ptp_create_clock(struct ice_pf *pf)
  */
 s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 {
+	unsigned long flags;
 	u8 idx;
 
-	spin_lock(&tx->lock);
+	spin_lock_irqsave(&tx->lock, flags);
 
 	/* Check that this tracker is accepting new timestamp requests */
 	if (!ice_ptp_is_tx_tracker_up(tx)) {
-		spin_unlock(&tx->lock);
+		spin_unlock_irqrestore(&tx->lock, flags);
 		return -1;
 	}
 
 	/* Find and set the first available index */
-	idx = find_first_zero_bit(tx->in_use, tx->len);
+	idx = find_next_zero_bit(tx->in_use, tx->len,
+				 tx->last_ll_ts_idx_read + 1);
+	if (idx == tx->len)
+		idx = find_first_zero_bit(tx->in_use, tx->len);
+
 	if (idx < tx->len) {
 		/* We got a valid index that no other thread could have set. Store
 		 * a reference to the skb and the start time to allow discarding old
@@ -2405,7 +2532,7 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 		ice_trace(tx_tstamp_request, skb, idx);
 	}
 
-	spin_unlock(&tx->lock);
+		spin_unlock_irqrestore(&tx->lock, flags);
 
 	/* return the appropriate PHY timestamp register index, -1 if no
 	 * indexes were available.
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 06a330867fc9..fd5995b7ef54 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -131,6 +131,7 @@ enum ice_tx_tstamp_work {
  * @calibrating: if true, the PHY is calibrating the Tx offset. During this
  *               window, timestamps are temporarily disabled.
  * @verify_cached: if true, verify new timestamp differs from last read value
+ * @last_ll_ts_idx_read: index of the last LL TS read by the FW
  */
 struct ice_ptp_tx {
 	spinlock_t lock; /* lock protecting in_use bitmap */
@@ -143,6 +144,7 @@ struct ice_ptp_tx {
 	u8 init : 1;
 	u8 calibrating : 1;
 	u8 verify_cached : 1;
+	s8 last_ll_ts_idx_read;
 };
 
 /* Quad and port information for initializing timestamp blocks */
@@ -296,6 +298,8 @@ void ice_ptp_restore_timestamp_mode(struct ice_pf *pf);
 
 void ice_ptp_extts_event(struct ice_pf *pf);
 s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb);
+void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx);
+void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx);
 enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
 
 void
@@ -325,6 +329,11 @@ ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 	return -1;
 }
 
+static inline void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
+{ }
+
+static inline void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx) { }
+
 static inline bool ice_ptp_process_ts(struct ice_pf *pf)
 {
 	return true;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index cf76701566c7..01231049cb5b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -509,6 +509,7 @@ int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 #define TS_LL_READ_RETRIES		200
 #define TS_LL_READ_TS_HIGH		GENMASK(23, 16)
 #define TS_LL_READ_TS_IDX		GENMASK(29, 24)
+#define TS_LL_READ_TS_INTR		BIT(30)
 #define TS_LL_READ_TS			BIT(31)
 
 /* Internal PHY timestamp address */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 5a80158e49ed..3c759eb7f600 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -351,6 +351,7 @@ struct ice_ts_func_info {
 #define ICE_TS_TMR0_ENA_M		BIT(25)
 #define ICE_TS_TMR1_ENA_M		BIT(26)
 #define ICE_TS_LL_TX_TS_READ_M		BIT(28)
+#define ICE_TS_LL_TX_TS_INT_READ_M	BIT(29)
 
 struct ice_ts_dev_info {
 	/* Device specific info */
@@ -364,6 +365,7 @@ struct ice_ts_dev_info {
 	u8 tmr0_ena;
 	u8 tmr1_ena;
 	u8 ts_ll_read;
+	u8 ts_ll_int_read;
 };
 
 /* Function specific capabilities */
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

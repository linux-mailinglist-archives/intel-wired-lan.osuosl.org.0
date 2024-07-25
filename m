Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D7993BF34
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2024 11:40:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E411060851;
	Thu, 25 Jul 2024 09:40:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mdUnbBUW4HZK; Thu, 25 Jul 2024 09:40:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00E7160A67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721900408;
	bh=dX19l6evbt2YtfWdl35quIy/120yxfGSgOaQD+Ug5Ao=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hAPdgfCyPQK0+WFfDPO5oRKTq+cevZDVG73dyjiu1lZcI7ol6hqVBrFQkodv8DLjy
	 YAgLF+1QWOAPQFH0QIP95q7oWsFTCBdIcpyBpWep55KDKDRltGAo6q8Ful+QBBdqCk
	 VHUsD81/HDyjkXu+38TX9L+VX9yWFgWkqayoO0VL4HuAZybKF/brcHmlsGPa4jGsJW
	 QmAv+W+1tsISdkwDugvSbhezgU/vtvwXasq27AoP97jEb/yykxdZAbHm9sLxjaDGSQ
	 dbHcb/m0Rob12zQloIm/atqIO9lBv2zF4n083O+vOPAY9orT2G2o7rlDzAKTtVZUYJ
	 ueVpEgB+BuLyw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00E7160A67;
	Thu, 25 Jul 2024 09:40:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 922531BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 09:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C89CE40AF3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 09:40:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SheOiKEATGrE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 09:40:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9874540E50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9874540E50
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9874540E50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 09:40:03 +0000 (UTC)
X-CSE-ConnectionGUID: 89CJJYa8THS8Jl2JvWsSrw==
X-CSE-MsgGUID: bdFfKB09TyqQ+u2dOauS/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="12707098"
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="12707098"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 02:39:54 -0700
X-CSE-ConnectionGUID: rya+gMUDTkCH60HfBpGzww==
X-CSE-MsgGUID: 7WlCTfS/RJCO/pyWT39k6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="57170861"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by fmviesa005.fm.intel.com with ESMTP; 25 Jul 2024 02:39:53 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2024 11:34:49 +0200
Message-ID: <20240725093932.54856-8-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240725093932.54856-6-karol.kolacinski@intel.com>
References: <20240725093932.54856-6-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721900404; x=1753436404;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vEtxUxNrDFrFXruvf6U3L3yl4xhxxCkiTU9UfGmyTPY=;
 b=aYHIzApF6RxxRSKe4sMGt1EZW14UxG1p6XXvfizhvevJRy4oQZsb3RQR
 GlKnwIZAutIj37Kia3key9dBNXA3kFMzH7eBKY10w1NYEcnFyiibbs6mY
 dktrAyXNY4CPXjNyicJIog7zPBlj+95/kG2rVq3GsfpwzExk3p4koOMBb
 bW2dAaap+ZCdVh+p8idfBGX/mbcwZTm/YYHKaJswnCFnuLiErsNSPCPtr
 Zdn+ap5qOtgF2H7H6PlKe6Jqurox4iJ9Zp4F0DZvgYfbsY+vIxEB/R2Za
 dVjNHLr84EnrDCBTmyJJo/I8ib17qgLhYaPW8rAgACv/VSM2rD9Jlo3H6
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aYHIzApF
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 2/4] ice: Process TSYN IRQ in
 a separate function
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
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Simplify TSYN IRQ processing by moving it to a separate function and
having appropriate behavior per PHY model, instead of multiple
conditions not related to HW, but to specific timestamping modes.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 18 +------
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 60 +++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  6 +++
 3 files changed, 68 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ab675fe8eacd..753c942c64f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3275,22 +3275,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 	if (oicr & PFINT_OICR_TSYN_TX_M) {
 		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
-		if (ice_pf_state_is_nominal(pf) &&
-		    pf->hw.dev_caps.ts_dev_info.ts_ll_int_read) {
-			struct ice_ptp_tx *tx = &pf->ptp.port.tx;
-			unsigned long flags;
-			u8 idx;
-
-			spin_lock_irqsave(&tx->lock, flags);
-			idx = find_next_bit_wrap(tx->in_use, tx->len,
-						 tx->last_ll_ts_idx_read + 1);
-			if (idx != tx->len)
-				ice_ptp_req_tx_single_tstamp(tx, idx);
-			spin_unlock_irqrestore(&tx->lock, flags);
-		} else if (ice_ptp_pf_handles_tx_interrupt(pf)) {
-			set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
-			ret = IRQ_WAKE_THREAD;
-		}
+
+		ret = ice_ptp_ts_irq(pf);
 	}
 
 	if (oicr & PFINT_OICR_TSYN_EVNT_M) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 2c5397d7a686..19f6c2408ec2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2748,6 +2748,66 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf)
 	}
 }
 
+/**
+ * ice_ptp_ts_irq - Process the PTP Tx timestamps in IRQ context
+ * @pf: Board private structure
+ *
+ * Returns: IRQ_WAKE_THREAD if Tx timestamp read has to be handled in the bottom
+ * half of the interrupt and IRQ_HANDLED otherwise.
+ */
+irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
+{
+	struct ice_hw *hw = &pf->hw;
+
+	switch (hw->ptp.phy_model) {
+	case ICE_PHY_E810:
+		/* E810 capable of low latency timestamping with interrupt can
+		 * request a single timestamp in the top half and wait for
+		 * a second LL TS interrupt from the FW when it's ready.
+		 */
+		if (hw->dev_caps.ts_dev_info.ts_ll_int_read) {
+			struct ice_ptp_tx *tx = &pf->ptp.port.tx;
+			unsigned long flags;
+			u8 idx;
+
+			if (!ice_pf_state_is_nominal(pf))
+				return IRQ_HANDLED;
+
+			spin_lock_irqsave(&tx->lock, flags);
+			idx = find_next_bit_wrap(tx->in_use, tx->len,
+						 tx->last_ll_ts_idx_read + 1);
+			if (idx != tx->len)
+				ice_ptp_req_tx_single_tstamp(tx, idx);
+			spin_unlock_irqrestore(&tx->lock, flags);
+
+			return IRQ_HANDLED;
+		}
+		fallthrough; /* non-LL_TS E810 */
+	case ICE_PHY_E82X:
+	case ICE_PHY_ETH56G:
+		/* All other devices process timestamps in the bottom half due
+		 * to sleeping or polling.
+		 */
+		if (!ice_ptp_pf_handles_tx_interrupt(pf))
+			return IRQ_HANDLED;
+
+		set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
+		return IRQ_WAKE_THREAD;
+	case ICE_PHY_E830:
+		/* E830 can read timestamps in the top half using rd32() */
+		if (ice_ptp_process_ts(pf) == ICE_TX_TSTAMP_WORK_PENDING) {
+			/* Process outstanding Tx timestamps. If there
+			 * is more work, re-arm the interrupt to trigger again.
+			 */
+			wr32(hw, PFINT_OICR, PFINT_OICR_TSYN_TX_M);
+			ice_flush(hw);
+		}
+		return IRQ_HANDLED;
+	default:
+		return IRQ_HANDLED;
+	}
+}
+
 /**
  * ice_ptp_maybe_trigger_tx_interrupt - Trigger Tx timstamp interrupt
  * @pf: Board private structure
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index b8ab162a5538..5122b3a862fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -322,6 +322,7 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb);
 void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx);
 void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx);
 enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
+irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf);
 
 u64 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 			const struct ice_pkt_ctx *pkt_ctx);
@@ -360,6 +361,11 @@ static inline bool ice_ptp_process_ts(struct ice_pf *pf)
 	return true;
 }
 
+static inline irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
+{
+	return IRQ_HANDLED;
+}
+
 static inline u64
 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 		    const struct ice_pkt_ctx *pkt_ctx)
-- 
2.45.2


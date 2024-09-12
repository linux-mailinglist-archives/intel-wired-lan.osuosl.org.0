Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BED9765FD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2024 11:47:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8283381D70;
	Thu, 12 Sep 2024 09:47:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mJIMN8NOXq6B; Thu, 12 Sep 2024 09:47:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFD0881D4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726134458;
	bh=z/Z4JSj0vVJvREypXF2+rcUCbpFUuRLE56FlhNDPJvg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZVthMLnZL1RX53IA0WCOPCxbMWrqAEyi72yx7rI1KnFbGg1oOhOepuGTuGerHjzxD
	 rq0oRUfBbR0mJRwNpdo6GSaPsUHr17YznMmIIqHU4idUxv5mKxMC2lIV6NH8BdlTr9
	 lJe2t4dQcZd8+8dVh71qobVbaaPguBK4TeU/ykAvX/9p71bBRNSzMGG2UeuzBQqK6t
	 tDOkzsbu6Kk9iwIuJgEXR4oW4ckPbs19rb0uW23SO6JUlDbxiEkb7s2c93qIUyZQm1
	 M0gGPazZsS9UkDmCX53kcCkHGrZdmbTGk/tMMKzm2hXlcyKPQsMNOBvmwZThAz2INF
	 pyB1eufPyFPgw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFD0881D4D;
	Thu, 12 Sep 2024 09:47:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 555EB1BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 09:47:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37D568131E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 09:47:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rsct_yeBIXQv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2024 09:47:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CEF9281D11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEF9281D11
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CEF9281D11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 09:47:32 +0000 (UTC)
X-CSE-ConnectionGUID: J0gDZ8HVTqWAv+hw9PtqAg==
X-CSE-MsgGUID: gB/yQqQjSsmLPtE+muQp3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="36115382"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="36115382"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:47:33 -0700
X-CSE-ConnectionGUID: 8feWh0boQhuODmtlTjyfXA==
X-CSE-MsgGUID: eG4IcjU0Qc2Zq2MNPbN+sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72650684"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by orviesa004.jf.intel.com with ESMTP; 12 Sep 2024 02:47:31 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Sep 2024 11:41:49 +0200
Message-ID: <20240912094720.832348-13-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240912094720.832348-9-karol.kolacinski@intel.com>
References: <20240912094720.832348-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726134453; x=1757670453;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y8G303dUwM6cQDDBy5eMiCchu8s+IWB9UiNOECJ6FHw=;
 b=mUZ+2xmDxO/sWtt6KBYW+vroI1JbsY//j+lL00/MHOOGXDRKe42OAZ5E
 BxTmRM7YfwrYKkm+J4A6V17zawd1djSMLPLm0YSG3oo7XzeIbRHgRNOtN
 OcrP3iqOfI6TkADmRC+nlbXD7Sa54AftVOkRDMZ+K6lpIFYAdNQt0qarF
 DgSDdOsyVOWE4rzEPztCTGiiUkuzumLopCanaLrwy6HvnyTLWEHV+xc98
 NN39EzqOTPGqgggrHnfJT2rKuHTdCKOivbzh32R9Uz5U/VHY0HVJoocQ9
 Mb869lRgfgdhAmlKs4Ms9v/xByp3J8BDnDPB++VVJyliVBlIIupEXCSKU
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mUZ+2xmD
Subject: [Intel-wired-lan] [PATCH v10 iwl-next 4/7] ice: Process TSYN IRQ in
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

When PTP is not enabled in the kernel, don't process timestamps and
return IRQ_HANDLED.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V7 -> V8: Moved E830 timestamp handling to "ice: Implement PTP support for E830
          devices"

 drivers/net/ethernet/intel/ice/ice_main.c | 18 +--------
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 49 +++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  6 +++
 3 files changed, 57 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1b5120f888ba..48916a478632 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3288,22 +3288,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
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
index 46988640a6c6..4913f8f060f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2733,6 +2733,55 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf)
 	}
 }
 
+/**
+ * ice_ptp_ts_irq - Process the PTP Tx timestamps in IRQ context
+ * @pf: Board private structure
+ *
+ * Return: IRQ_WAKE_THREAD if Tx timestamp read has to be handled in the bottom
+ *         half of the interrupt and IRQ_HANDLED otherwise.
+ */
+irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
+{
+	struct ice_hw *hw = &pf->hw;
+
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
+		/* E810 capable of low latency timestamping with interrupt can
+		 * request a single timestamp in the top half and wait for
+		 * a second LL TS interrupt from the FW when it's ready.
+		 */
+		if (hw->dev_caps.ts_dev_info.ts_ll_int_read) {
+			struct ice_ptp_tx *tx = &pf->ptp.port.tx;
+			u8 idx;
+
+			if (!ice_pf_state_is_nominal(pf))
+				return IRQ_HANDLED;
+
+			spin_lock(&tx->lock);
+			idx = find_next_bit_wrap(tx->in_use, tx->len,
+						 tx->last_ll_ts_idx_read + 1);
+			if (idx != tx->len)
+				ice_ptp_req_tx_single_tstamp(tx, idx);
+			spin_unlock(&tx->lock);
+
+			return IRQ_HANDLED;
+		}
+		fallthrough; /* non-LL_TS E810 */
+	case ICE_MAC_GENERIC:
+	case ICE_MAC_GENERIC_3K_E825:
+		/* All other devices process timestamps in the bottom half due
+		 * to sleeping or polling.
+		 */
+		if (!ice_ptp_pf_handles_tx_interrupt(pf))
+			return IRQ_HANDLED;
+
+		set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
+		return IRQ_WAKE_THREAD;
+	default:
+		return IRQ_HANDLED;
+	}
+}
+
 /**
  * ice_ptp_maybe_trigger_tx_interrupt - Trigger Tx timstamp interrupt
  * @pf: Board private structure
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 824e73b677a4..acee46ad793a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -302,6 +302,7 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb);
 void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx);
 void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx);
 enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
+irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf);
 
 u64 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 			const struct ice_pkt_ctx *pkt_ctx);
@@ -340,6 +341,11 @@ static inline bool ice_ptp_process_ts(struct ice_pf *pf)
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
2.46.0


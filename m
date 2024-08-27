Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53447960B56
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 15:08:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E47240928;
	Tue, 27 Aug 2024 13:08:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rUqpSsBF-MGa; Tue, 27 Aug 2024 13:08:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2502140967
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724764127;
	bh=h2rpHZRmBUppuffgBwLF8jo9caiC0yUH/hKK8+RXzf0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qgp2V5aStAGY+VO3FqTIMFSt3GHY13qZUYU1jlwMKcnMZLDYc0ngYdyACUkVpNRGD
	 yIQcX3/8YrL2OdWXd8m+rdj6qz4FCIDM2Hz3Oe7NhLMwpwjEBSYBj8mVNnNS/EsZQU
	 Mb2VsIoSy5EvCDgWgFh9FMKl3ywVKvS3QFWSmvuCkBh/xMYFy09zA3vgyleO2bo/cV
	 JxtFMHhU1+nEZmeG3Q+iNNKpD2h2H8wo3WXWa4vHk951mjOV6W6y7TNghDfgekj7ZV
	 B+Z+Is5g39g+hMnt6mmf78wXKXnyKRsENQBOVijGEg4Z9e6CX17+UU1D4wCAmsJBPT
	 yGBA5/sIoWEeQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2502140967;
	Tue, 27 Aug 2024 13:08:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 592441BF21A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 13:08:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 45D2E80A54
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 13:08:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id htQZa4Z4PZ6F for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 13:08:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6B6B680B6F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B6B680B6F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B6B680B6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 13:08:41 +0000 (UTC)
X-CSE-ConnectionGUID: Sk+Na/UNRwyl48O/u9rDsg==
X-CSE-MsgGUID: 9RUZPYlSSLyJN6nmVyqbjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="40710300"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="40710300"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 06:08:41 -0700
X-CSE-ConnectionGUID: LZ99gvwFR0q7O872NQE4RA==
X-CSE-MsgGUID: JOM5gL4yS9KxoEquKTEaiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="93650103"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa001.fm.intel.com with ESMTP; 27 Aug 2024 06:08:39 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 27 Aug 2024 14:50:46 +0200
Message-ID: <20240827130814.732181-13-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240827130814.732181-9-karol.kolacinski@intel.com>
References: <20240827130814.732181-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724764122; x=1756300122;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hHcCRGipKxTlWwo6lquQqBeW7iVyo5pjKHDgTDHzF6M=;
 b=FCisdQ9efiofLrOam28nmxvc62Lrkv6oYN9N7pJyQSoEY+xNlt/Pk4+v
 U5fBDCsoLN2yZkbZOztclv5eEelNzdi7uqb/Ve2EbGK14jMF+MsnkW/+f
 3n5WIWzqyz9KQj75dcJAqwgBjD0MbfCpuUmfYzGQ/B/feSNyX+XukU4Ke
 fEfNyHiW15PHNMLOSK09noCA7hS1cLylPi+4zSzFTA1H+3VgznBdMhaeG
 us9qpavSXb4MukJ+qIJOtWv5tF++mGOc77jFF3sbbrXhzhjZ3ib6PcdMY
 Gmf/HRlzGQZ9WYmAefVbbUKd5UyU8AicPVWFic3oTXek4ioFAxYNgMa9p
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FCisdQ9e
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 4/7] ice: Process TSYN IRQ in
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
index c374a944af26..fbb2aa8d3188 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3276,22 +3276,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
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
index f7188867e937..059c3cf0a4b3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2756,6 +2756,55 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf)
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


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A37F951B74
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 15:09:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F2A480ADA;
	Wed, 14 Aug 2024 13:09:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OqXblm_jez0r; Wed, 14 Aug 2024 13:09:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AAF380B8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723640981;
	bh=ddLg4hri/fd1maFdsRP0GVmpi86DlEC2tb0IX8cEups=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VNicmnVS+dS3b7RFLqY8aDk0/7n4BINpJhmiMjcjgFh3iEtdudP4ZdK+ZCYBYzQxH
	 H3WriJQIZt8ZOj6pSpxFnkaoiHRRy4WhBbF1BN42UMVP5KrhGjFzL/xgrBgYbfToVg
	 QhduGZLLFQV2qf+gXqN3W3f5mOKy6uWXJxWbn3t+6FtGpqkbupQBdvtskZTELJCA9+
	 RJumYx8nEh9GRuOJpmjH0UPIJzD949gJDISIfn940gZ9f/wUXsDwPuG9K5/En9OTyW
	 Isd8/vsdnShmi2sf3CFK3UfJ1neu93PdQIvKYqX/pDK7KX3knUDoWJrKI/a/c183Pp
	 RJQXV/pNpfY8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AAF380B8E;
	Wed, 14 Aug 2024 13:09:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9559A1BF32E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 13:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7EF6040372
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 13:09:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fahc2NmXFzpr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 13:09:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A88C8403B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A88C8403B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A88C8403B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 13:09:31 +0000 (UTC)
X-CSE-ConnectionGUID: 7tAYsGo5R5CtX7XxPiKy9Q==
X-CSE-MsgGUID: fgea7ElGRbiGKVUZCp5oMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="25658799"
X-IronPort-AV: E=Sophos;i="6.10,145,1719903600"; d="scan'208";a="25658799"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 06:09:31 -0700
X-CSE-ConnectionGUID: 4KJ/oK+cSbSPaUJ/VOkLaQ==
X-CSE-MsgGUID: bQCyLfljQWq2MlNsKq7dqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,145,1719903600"; d="scan'208";a="59009694"
Received: from unknown (HELO kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa009.fm.intel.com with ESMTP; 14 Aug 2024 06:09:30 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 14 Aug 2024 15:05:42 +0200
Message-ID: <20240814130918.58444-12-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240814130918.58444-8-karol.kolacinski@intel.com>
References: <20240814130918.58444-8-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723640971; x=1755176971;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l5gzxvAHkcsYTsb/SkIt4xOj3KHwHOIMG4oNarMbwhk=;
 b=d0TwO46L9J301y5+5XUMl5PXxOzqCi23fgQzYC4av1Nei9flA0uOqAgT
 Ry7oOsYMfJXUjxpiv7quWH8sMexGmYdH3ZzXWQ2c8YySfKfk612MjqvY3
 2k4iSR9UEBXThzhV6Bzbtc0troxlVibbxeLIpBeoufSBibNLn3lk9fpf7
 jU55ej+30yyk4ux/nf9Jn1GrtKLPTIqszxYdWn/y7rRyiXXSteVjVvAWn
 5TidXQr3ILEc3yVFK+cnwn7u0sdmAr2URE59b/XUx2DpJ3EdcQaIckS7N
 QgXoHWH7Z7qVTb7sa8YnuIumEA4n/MttiJB5g25lwsT8e+itJp8wxBLYe
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d0TwO46L
Subject: [Intel-wired-lan] [PATCH v6 iwl-next 4/6] ice: Process TSYN IRQ in
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
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 59 +++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  6 +++
 3 files changed, 67 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6f3ce0893cd9..9108613dcac3 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3257,22 +3257,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
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
index cf3b02d14b19..861f6224540a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2760,6 +2760,65 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf)
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
+	case ICE_MAC_E830:
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
2.46.0


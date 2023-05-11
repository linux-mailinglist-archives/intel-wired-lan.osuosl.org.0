Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B13D6FFCF5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 01:08:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB493429B1;
	Thu, 11 May 2023 23:08:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB493429B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683846485;
	bh=/pgCdT4rYa+l7xANTXNxTiPgv1hNwcJqqOKHA8tPKAY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9kkWayskOfqMePzAt/imxRArMFYyXZIgui+wLgobOSkCbNK+yLWaGUdVQknIC3mlC
	 7M73qPg0TeCs3ybZ4EII7sLiWhLWyJkjkK+XB0y64/278G6np7cDGoxqQ5Z/Xv+ZT4
	 1ojtbcnSu4kvEY8tutpxH2gFGg8KLY96hiQnX7nreLZNvxZL89NmI+oy5p5o7/vjkr
	 gxRSM1IYumNsB7I6xP8H6StwadvpILRPVXVRutLl1rqd+KaMMCdkAL0qL06s25Fije
	 dtrszpGIFjSXBspi9aqsWEj//Snxz1GSltRU8fi2WlQRANvFQ6h1Vev6gU4+MIbgno
	 fWurw7rqxX5yQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xxiVZSagudEB; Thu, 11 May 2023 23:08:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3ED3415A0;
	Thu, 11 May 2023 23:08:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3ED3415A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3042D1BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:07:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 83CBC41593
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:07:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83CBC41593
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w7ZTBhdxALOp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 23:07:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 996DE41D75
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 996DE41D75
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:07:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="339959142"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="339959142"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:07:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="946374636"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="946374636"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.106])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:07:41 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 May 2023 16:07:31 -0700
Message-Id: <20230511230731.105152-5-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230511230731.105152-1-vinicius.gomes@intel.com>
References: <20230511230731.105152-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683846462; x=1715382462;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VBtLtF+BKqZOI5V2jL4M57M0r6TRTEghTJEbMYbc5mc=;
 b=JgEsbcU175RZ7WSeLvpjBUWDyMylbmozMfUpps3FLRGsPEyRRGDcT2ti
 Ikr4kzGDIpIJoLKtRsxa98Ul1LxlvUdzqA7OSggJqpebkSRG1Z5kzPw7c
 5gJdgeKwnaTgxThsmxMWDQ6HIV2LJ3icB/VlruTq0vokFj56qdwvUJJj+
 ilYex9DQmuvNjiuaRBDSTZTFeyqrmIi7HHOegD000gOA8mKhvmuf4r7mf
 X9rv2h/nbYR6jRVnZTI/FWjrKOBVaTLY3cWwoc998mjrk7d44Bmwh6hf0
 6VAM2YguCI4FrE096fLygmgJeMIQTcUCEW9P5RNLjw+26a1Ya5fFvcsMi
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JgEsbcU1
Subject: [Intel-wired-lan] [PATCH iwl-net v2 4/4] igc: Add workaround for
 missing timestamps
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There's an hardware issue that can cause missing timestamps. The bug
is that the interrupt is only cleared if the IGC_TXSTMPH_0 register is
read.

The bug can cause a race condition if a timestamp is captured at the
wrong time, and we will miss that timestamp. To reduce the time window
that the problem is able to happen, in case no timestamp was ready, we
read the "previous" value of the timestamp registers, and we compare
with the "current" one, if it didn't change we can reasonably sure
that no timestamp was captured. If they are different, we use the new
value as the captured timestamp.

This workaround has more impact when multiple timestamp registers are
used, and the IGC_TXSTMPH_0 register always need to be read, so the
interrupt is cleared.

Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 48 ++++++++++++++++++------
 1 file changed, 37 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 17e8970bd761..47a2140f9144 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -666,14 +666,49 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 	struct sk_buff *skb = adapter->ptp_tx_skb;
 	struct skb_shared_hwtstamps shhwtstamps;
 	struct igc_hw *hw = &adapter->hw;
+	u32 tsynctxctl;
 	int adjust = 0;
 	u64 regval;
 
 	if (WARN_ON_ONCE(!skb))
 		return;
 
-	regval = rd32(IGC_TXSTMPL);
-	regval |= (u64)rd32(IGC_TXSTMPH) << 32;
+	tsynctxctl = rd32(IGC_TSYNCTXCTL);
+	tsynctxctl &= IGC_TSYNCTXCTL_TXTT_0;
+	if (tsynctxctl) {
+		regval = rd32(IGC_TXSTMPL);
+		regval |= (u64)rd32(IGC_TXSTMPH) << 32;
+	} else {
+		/* There's a bug in the hardware that could cause
+		 * missing interrupts for TX timestamping. The issue
+		 * is that for new interrupts to be triggered, the
+		 * IGC_TXSTMPH_0 register must be read.
+		 *
+		 * To avoid discarding a valid timestamp that just
+		 * happened at the "wrong" time, we need to confirm
+		 * that there was no timestamp captured, we do that by
+		 * assuming that no two timestamps in sequence have
+		 * the same nanosecond value.
+		 *
+		 * So, we read the "low" register, read the "high"
+		 * register (to latch a new timestamp) and read the
+		 * "low" register again, if "old" and "new" versions
+		 * of the "low" register are different, a valid
+		 * timestamp was captured, we can read the "high"
+		 * register again.
+		 */
+		u32 txstmpl_old, txstmpl_new;
+
+		txstmpl_old = rd32(IGC_TXSTMPL);
+		rd32(IGC_TXSTMPH);
+		txstmpl_new = rd32(IGC_TXSTMPL);
+
+		if (txstmpl_old == txstmpl_new)
+			return;
+
+		regval = txstmpl_new;
+		regval |= (u64)rd32(IGC_TXSTMPH) << 32;
+	}
 	if (igc_ptp_systim_to_hwtstamp(adapter, &shhwtstamps, regval))
 		return;
 
@@ -711,22 +746,13 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
  */
 void igc_ptp_tx_work(struct igc_adapter *adapter)
 {
-	struct igc_hw *hw = &adapter->hw;
 	unsigned long flags;
-	u32 tsynctxctl;
 
 	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
 
 	if (!adapter->ptp_tx_skb)
 		goto unlock;
 
-	tsynctxctl = rd32(IGC_TSYNCTXCTL);
-	tsynctxctl &= IGC_TSYNCTXCTL_TXTT_0;
-	if (!tsynctxctl) {
-		WARN_ONCE(1, "Received a TSTAMP interrupt but no TSTAMP is ready.\n");
-		goto unlock;
-	}
-
 	igc_ptp_tx_hwtstamp(adapter);
 
 unlock:
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

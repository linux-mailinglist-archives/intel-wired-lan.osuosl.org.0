Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F197372348C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 03:33:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BE3781E44;
	Tue,  6 Jun 2023 01:33:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BE3781E44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686015229;
	bh=OSiyhz90oobUJpJO+xw0ekTbwjRrphxVmb3r/VZmXbw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wGxsGNvVoDRJQczT5OJR4Kt9+62Sc0Vza2yq3XdNx+IxzzRJNZF4DBwA9tsdxLbBs
	 yGsurJCrCx/PgqAEzrTBJUIvlmNitd4SZETgBWBc0oJ9yvzezE5Fr+LFtkYcK7qB28
	 hz02thu0FHlJ+ciZDrVU1LK2XEHrXTPujm+jZDNBo9+G5S9aNGnJERmeU0/CtCjiS7
	 qCHrfyxhgByfKovKckij/usp+/Bo1QHZQMkqL6S6y+HmagBKQpN+SHOWH6UYJE07eL
	 Gjr+F8AAOWdhBap9N4FNbD5cYS+cevlrWX1gofq78V3pOI1zanRFrWRdbdoW1kgCip
	 ZkJ7gY6SD3E0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gc9qMom5SPGQ; Tue,  6 Jun 2023 01:33:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F9D7817B0;
	Tue,  6 Jun 2023 01:33:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F9D7817B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BE561BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 01:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1186140881
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 01:33:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1186140881
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id isnM6Uv9JvQd for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 01:33:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4D9640864
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4D9640864
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 01:33:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336887996"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="336887996"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 18:33:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="833020991"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="833020991"
Received: from unknown (HELO vcostago-mobl3.jf.intel.com) ([10.24.14.106])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 18:33:31 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 18:33:25 -0700
Message-Id: <20230606013325.602823-5-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230606013325.602823-1-vinicius.gomes@intel.com>
References: <20230606013325.602823-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686015212; x=1717551212;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zVtwQK4ybfFyDVPQiSBUcJpy0OWRYVPsXviKNl1hrRw=;
 b=DkuylBpF2J/GlZZ7tM05fT6hRCx1rgkQxXjP+uIvBq3WIIPGDGImVEl4
 A+E5QAJsA4UecUBPtMJdx5KQAKkfTTS2QaN+AQijuXmhgW2eQFUY7LxXi
 iS3puMVyh7Yq8pUqD4AsDGnllJeMJa1gXLD6z1yTB3+yQjSJ6ONKAjogO
 oufQSoeiN5tnysAZ73ZTs0nk8V6VBhThSrUdD0Ib1GsSikc7ZJWVrAqT+
 dtJH+TsCUKQQ4sttGbANqIz2csrOt9EJCWd6T/eaupn8IROeXeryOMLKJ
 r5bip7eMCSBRpWKY1RnNRi0+tENiPvqRHEdnzXKE3QA8Q4Nb28J2xiD7J
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DkuylBpF
Subject: [Intel-wired-lan] [PATCH iwl-net v3 4/4] igc: Add workaround for
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
index cf963a12a92f..32ef112f8291 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -685,14 +685,49 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
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
 
@@ -730,22 +765,13 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
  */
 void igc_ptp_tx_tstamp_event(struct igc_adapter *adapter)
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

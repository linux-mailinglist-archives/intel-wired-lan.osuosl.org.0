Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 493A572708F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 23:32:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D585F41838;
	Wed,  7 Jun 2023 21:32:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D585F41838
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686173571;
	bh=iB65atiN3LkLwAHh1kO4lWD2OPEBbsFkSwRjlLLf5pU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9LRtlSR9eIUVzXcFTpfBy0HxWT7N1Ek/uavybPBObK+/EnyvwHQaM6H+9vmTrEOGR
	 hM3Aino2uqfhAw/4zTY2DEqFW2bTG7rxiWm4P7BhqqZUoRhOGasM/EET7IBuT4zXle
	 +4VygRBoH6wqpF3ebi6iGbnNeUBSSpfu6AMVY0jJhNLxjXRnoGTQGq+et4YbDz6CeM
	 y2mUyj3Wl8oNgnq5irFDJVW3DR8cXwKfb5pcnY1ItZ8fDwuum96pULRtBONAnlXoZl
	 fTf/za5gif5Dp3juqbmIWWhtGq6AgEUpyu9vqhiJc9Qjphm7Kqz59n13Q7yahbj0n8
	 dnBdG446JT7iw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DelTKD5264nX; Wed,  7 Jun 2023 21:32:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A955640FCC;
	Wed,  7 Jun 2023 21:32:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A955640FCC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 363041BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 21:32:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F68641736
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 21:32:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F68641736
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xGzj-Xtf4Omz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 21:32:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4ABD140FCC
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4ABD140FCC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 21:32:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="336741891"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="336741891"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 14:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="742853926"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="742853926"
Received: from adtotpal-mobl.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.21.176])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 14:32:39 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Jun 2023 14:32:32 -0700
Message-Id: <20230607213232.875138-5-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230607213232.875138-1-vinicius.gomes@intel.com>
References: <20230607213232.875138-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686173561; x=1717709561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FZvMxqgRIqKg5vBlNZ5LsJXYxFfoJF+3Ph7XMY9cb40=;
 b=NpZMPT03FUo6JyE9eFfH+XbovbCgb3V5wo+wxdx3MrsQVaOt6M+KGIsC
 SrvMjhjQJGs/UjS4TJsuZm6Fs2u71ys4DiU0XN896WA4/cYLHUmGEAs6I
 AvYYc6GXN88BiP9zo7m7Ex6yhHGQzNnnAooFglGKAcjegbO+cLwtBVm4V
 nCID6UhydlXh7F9YzMh03HkuFIOz+Y6+kfJBPHYh5k6Z2Uof+MO36LW0q
 xJD6BH9l5h7GEqb1VsAF4UWsoep1a6SThfbBpb6FXIcjh3qTZgEWEXYOV
 54gwjkOtSzzxiRzZtF5x9A08uP54Cf00PqaGJiekz6uqZtZzhSkYcah4C
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NpZMPT03
Subject: [Intel-wired-lan] [PATCH iwl-net v4 4/4] igc: Work around HW bug
 causing missing timestamps
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
with the "current" one, if it didn't change we can be reasonably sure
that no timestamp was captured. If they are different, we use the new
value as the captured timestamp.

The HW bug is not easy to reproduce, got to reproduce it when smashing
the NIC with timestamping requests from multiple applications (e.g.
multiple ntpperf instances + ptp4l), after 10s of minutes.

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

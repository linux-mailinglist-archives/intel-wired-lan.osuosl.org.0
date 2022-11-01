Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 074EA615550
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 23:53:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82986410A7;
	Tue,  1 Nov 2022 22:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82986410A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667343219;
	bh=BnwG+LFxzURox4Y1TFeeUn4udyaRtYzvLWJsaJC95PQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XSV+3qXAkELx2hI2AGv375xAqQ0KTcjF/oXGPoYH7IWCsI33tB46M36tv14l21mq9
	 AErCGbrKK+Fu5rtcvSRBHQa1vVsaGOwc/Q5cwt0A7Z1SNRhLqFM+nH1jckvQ73kWrm
	 g0OnNLVIe7LRS+n6ti7b0Ai7uTKrrhCQCaWIKXSjmhe9pSv9RAcAkvx2C71sP1ZzAz
	 l7Hc3F60bi04rGOeDRMOxFZtX66ZMg70uwtTw9BLZsNX8vjd9Du68KQIKlCdzOO7uc
	 aunyao4gyvr9WVDo80NWw3NqXw/+ErRmG8nZv52yBhFv4lLxJjQQeOhmRlVvLkNVwD
	 DY368YR3XZT0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0bXNKp0gNE49; Tue,  1 Nov 2022 22:53:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F35FA402BA;
	Tue,  1 Nov 2022 22:53:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F35FA402BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 32CE41BF95C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA6DE81490
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA6DE81490
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5CTY7qul_Wqu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29B1481AC1
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 29B1481AC1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="371348118"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="371348118"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="723324059"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="723324059"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:10 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue,  1 Nov 2022 15:52:38 -0700
Message-Id: <20221101225240.421525-14-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221101225240.421525-1-jacob.e.keller@intel.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667343192; x=1698879192;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gD/l9xFvFWWrx2e4Cj2pv1EG3cBcLTavNtQB7PuqCFE=;
 b=CpK1ljrNRC6xaTPQusguj9/YjqPfmEgxlJPDktmgzhaweb6ziJKkLtpB
 e/P55pbRujkxOrKYt3MQKhXrUSSQztNpTJFSz1S+k2Dh0sbo28LDypbsb
 pq+ArUYTKSW+C8hhqFE8C2F5DedMi8aEB3/Ty75TJyUvAOzuZaHXlOBDL
 cv/CXf45UWDN8x3bn1ga1Xe0r0ocBc/LF2me+MPNyt5bPHVpRXOG9hWUl
 XL4DO1FSptFXlkc3j99uvIi5xi+V/EFmyDrQmTs0WN3AkOFExERzeqJX/
 LgZQ9bEfqnWfNcH+4udM0JECZPeYVgg6uJRe2Rne6UUp0v+vO+TeZU6SL
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CpK1ljrN
Subject: [Intel-wired-lan] [PATCH net-next 13/15] ice: only check set bits
 in ice_ptp_flush_tx_tracker
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_ptp_flush_tx_tracker function is called to clear all outstanding Tx
timestamp requests when the port is being brought down. This function
iterates over the entire list, but this is unnecessary. We only need to
check the bits which are actually set in the ready bitmap.

Replace this logic with for_each_set_bit, and follow a similar flow as in
ice_ptp_tx_tstamp_cleanup. Note that it is safe to call dev_kfree_skb_any
on a NULL pointer as it will perform a no-op so we do not need to verify
that the skb is actually NULL.

The new implementation also avoids clearing (and thus reading!) the PHY
timestamp unless the index is marked as having a valid timestamp in the
timestamp status bitmap. This ensures that we properly clear the status
registers as appropriate.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 38 ++++++++++++++++++------
 1 file changed, 29 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ce37a01cefd9..619e91aaa7dd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -853,28 +853,48 @@ ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
  * ice_ptp_flush_tx_tracker - Flush any remaining timestamps from the tracker
  * @pf: Board private structure
  * @tx: the tracker to flush
+ *
+ * Called during teardown when a Tx tracker is being removed.
  */
 static void
 ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 {
+	struct ice_hw *hw = &pf->hw;
+	u64 tstamp_ready;
+	int err;
 	u8 idx;
 
-	for (idx = 0; idx < tx->len; idx++) {
+	err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
+	if (err) {
+		dev_dbg(ice_pf_to_dev(pf), "Failed to get the Tx tstamp ready bitmap for block %u, err %d\n",
+			tx->block, err);
+
+		/* If we fail to read the Tx timestamp ready bitmap just
+		 * skip clearing the PHY timestamps.
+		 */
+		tstamp_ready = 0;
+	}
+
+	for_each_set_bit(idx, tx->in_use, tx->len) {
 		u8 phy_idx = idx + tx->offset;
+		struct sk_buff *skb;
+
+		/* In case this timestamp is ready, we need to clear it. */
+		if (!hw->reset_ongoing && (tstamp_ready & BIT_ULL(phy_idx)))
+			ice_clear_phy_tstamp(hw, tx->block, phy_idx);
 
 		spin_lock(&tx->lock);
-		if (tx->tstamps[idx].skb) {
-			dev_kfree_skb_any(tx->tstamps[idx].skb);
-			tx->tstamps[idx].skb = NULL;
-			pf->ptp.tx_hwtstamp_flushed++;
-		}
+		skb = tx->tstamps[idx].skb;
+		tx->tstamps[idx].skb = NULL;
 		clear_bit(idx, tx->in_use);
 		clear_bit(idx, tx->stale);
 		spin_unlock(&tx->lock);
 
-		/* Clear any potential residual timestamp in the PHY block */
-		if (!pf->hw.reset_ongoing)
-			ice_clear_phy_tstamp(&pf->hw, tx->block, phy_idx);
+		/* Count the number of Tx timestamps flushed */
+		pf->ptp.tx_hwtstamp_flushed++;
+
+		/* Free the SKB after we've cleared the bit */
+		dev_kfree_skb_any(skb);
 	}
 }
 
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

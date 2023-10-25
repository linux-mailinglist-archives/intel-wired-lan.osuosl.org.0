Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E29347D6B00
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 14:16:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67F6B43638;
	Wed, 25 Oct 2023 12:16:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67F6B43638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698236184;
	bh=HXZ66m2w++tJISdjXunm+KnLLKR3IA/wKL9e77AOgMw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZRAOuerMFbR1tSVKIBz0g8diK6IAu2BgAP5LT6AWfQaiWHTD48EJlwQKc9En4m/vS
	 pbYKOinyR/ObdITtAngEwIcrk2RDTe9A3iGfFIPX//t+5J0KlGa8nZacrXDuAmrFIf
	 MRq6AmFaFWpnYOIvykS4eyZ+t9U2Iyx0wNpHG8yhiM1Hs3KjAhwImE8zrRPT/l0yQM
	 7c6qvp1XNuPc9tS9oClQONVOZdKdcig3wOA9/aKMGKqiyU+jyddamPSjN8oPDD82FD
	 ZhWVCfodZdjh5mh68pNRUn4dBMBgsJAhbHswO39OMEuRk83OnIXuLZgaE0cReaACUH
	 QkhpE/R7SgaZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uiQ2YhFrLLsx; Wed, 25 Oct 2023 12:16:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC0E3432F3;
	Wed, 25 Oct 2023 12:16:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC0E3432F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19F7E1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0014A84988
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0014A84988
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s4UNgg6xwX7Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 12:16:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B77B84CD1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 12:16:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B77B84CD1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="418414327"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="418414327"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:16:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="824627913"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="824627913"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga008.fm.intel.com with ESMTP; 25 Oct 2023 05:16:03 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 25 Oct 2023 14:13:23 +0200
Message-Id: <20231025121330.216300-4-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231025121330.216300-1-karol.kolacinski@intel.com>
References: <20231025121330.216300-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698236165; x=1729772165;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7lguhoxoA38lfvQiP/O+fXFIOKkN7Tl79gToacJf7C8=;
 b=gFh6YisIjvFLj51/MfKUBlmDAf9kQlW1jORxnXMMPqSgO2bhA7ORvCaF
 +1rw7jigDoXsu4aUuPMiGhDUwZfIOOzI88CTlLV7/3rsl3aHqR/2sbgq5
 pYBKMwcB0b1ec9QVmJQjD1PSaIcsevgodUyuVcZoyvn+aUsjPjjOWF3jI
 Czb64n31XKgRjCB4xRZacOwGzWovRCmltM9uofrJJQ6gwonnHoy3crh1T
 AzfSMsRvNT2H/8a6sp9sysHimcWNZOsSr01O+Lo0RYDP7dy5GM+XHlxJI
 7h6tZSQSV4vBGkMfEybZ9Rz/rBp+Y+IfdGnyRf3L8Pubm6OX8DYnczszF
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gFh6YisI
Subject: [Intel-wired-lan] [PATCH iwl-next 03/10] ice: rename verify_cached
 to has_ready_bitmap
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The tx->verify_cached flag is used to inform the Tx timestamp tracking
code whether it needs to verify the cached Tx timestamp value against
a previous captured value. This is necessary on E810 hardware which does
not have a Tx timestamp ready bitmap.

In addition, we currently rely on the fact that the
ice_get_phy_tx_tstamp_ready() function returns all 1s for E810 hardware.
Instead of introducing a brand new flag, rename and verify_cached to
has_ready_bitmap, inverting the relevant checks.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 19 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  8 +++++---
 2 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index e9aaa7f7948e..d06840fe50ff 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -566,9 +566,11 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
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
@@ -596,7 +598,8 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 		 * If we do not, the hardware logic for generating a new
 		 * interrupt can get stuck on some devices.
 		 */
-		if (!(tstamp_ready & BIT_ULL(phy_idx))) {
+		if (tx->has_ready_bitmap &&
+		    !(tstamp_ready & BIT_ULL(phy_idx))) {
 			if (drop_ts)
 				goto skip_ts_read;
 
@@ -616,7 +619,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 		 * from the last cached timestamp. If it is not, skip this for
 		 * now assuming it hasn't yet been captured by hardware.
 		 */
-		if (!drop_ts && tx->verify_cached &&
+		if (!drop_ts && !tx->has_ready_bitmap &&
 		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
 			continue;
 
@@ -626,7 +629,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 
 skip_ts_read:
 		spin_lock(&tx->lock);
-		if (tx->verify_cached && raw_tstamp)
+		if (!tx->has_ready_bitmap && raw_tstamp)
 			tx->tstamps[idx].cached_tstamp = raw_tstamp;
 		clear_bit(idx, tx->in_use);
 		skb = tx->tstamps[idx].skb;
@@ -872,7 +875,7 @@ ice_ptp_init_tx_e822(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
 	tx->block = port / ICE_PORTS_PER_QUAD;
 	tx->offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT_E822;
 	tx->len = INDEX_PER_PORT_E822;
-	tx->verify_cached = 0;
+	tx->has_ready_bitmap = 1;
 
 	return ice_ptp_alloc_tx_tracker(tx);
 }
@@ -895,7 +898,7 @@ ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	 * verify new timestamps against cached copy of the last read
 	 * timestamp.
 	 */
-	tx->verify_cached = 1;
+	tx->has_ready_bitmap = 0;
 
 	return ice_ptp_alloc_tx_tracker(tx);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 48c0d56c0568..f8fd8e00bbc8 100644
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
@@ -130,7 +130,9 @@ enum ice_tx_tstamp_work {
  * @init: if true, the tracker is initialized;
  * @calibrating: if true, the PHY is calibrating the Tx offset. During this
  *               window, timestamps are temporarily disabled.
- * @verify_cached: if true, verify new timestamp differs from last read value
+ * @has_ready_bitmap: if true, the hardware has a valid Tx timestamp ready
+ *                    bitmap register. If false, fall back to verifying new
+ *                    timestamp values against previously cached copy.
  */
 struct ice_ptp_tx {
 	spinlock_t lock; /* lock protecting in_use bitmap */
@@ -142,7 +144,7 @@ struct ice_ptp_tx {
 	u8 len;
 	u8 init : 1;
 	u8 calibrating : 1;
-	u8 verify_cached : 1;
+	u8 has_ready_bitmap : 1;
 };
 
 /* Quad and port information for initializing timestamp blocks */
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

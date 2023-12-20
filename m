Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03052819D37
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Dec 2023 11:43:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AE8581514;
	Wed, 20 Dec 2023 10:43:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AE8581514
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703069029;
	bh=WkvrdHig8+ouZrja1BdB9wEytyURQOv5Cj7IbqpEURs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5UbNOhJho4dNl9P1sKXOCG6an5d6WnPfDuRCmKJVPerBW70UZiFjkkfwHGAfh3Kri
	 cWg7VOGtML8CTKfnIwgYbyV9+UiIFY9fSsJdGvMxXwkhT8e9Cl5WHjDfGeWLY0hxyu
	 jASdpMsEJgFGL+AIwy3f4wrvtRK09b3QV1pO+javuPA65ClWfgtPX9jOhILRR2xQIb
	 xQIIhGIY0kNsN8JIIWoYDX/wddzuFxPjiu3tsQr3ONdGh7/NxDucaA7Et30+oyLZwN
	 X54JJetF9pvmflhdjY2hIiU69rzgXRXAU6F01FFACg0xnSSR9DfaKeJrjrNkvu8OrI
	 cjhz4j7PGB23g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cHFIlJlfp8Vb; Wed, 20 Dec 2023 10:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 302D281422;
	Wed, 20 Dec 2023 10:43:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 302D281422
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B30FF1BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 10:43:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B45C403C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 10:43:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B45C403C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NI29tpkMg_k9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Dec 2023 10:43:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 507DE400DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 10:43:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 507DE400DC
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="17350733"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="17350733"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:43:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="846673257"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="846673257"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga004.fm.intel.com with ESMTP; 20 Dec 2023 02:43:31 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 20 Dec 2023 11:43:20 +0100
Message-Id: <20231220104323.974456-4-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231220104323.974456-1-karol.kolacinski@intel.com>
References: <20231220104323.974456-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703069013; x=1734605013;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9R5nPLxojhM3LT/CnHxpRDNvpmL0Z3yd3wXXJvhHNEo=;
 b=DkLZmAhzO6ihsZI2rmtCjvgstnT4Bq1QGsYc98B6/pbDSrd5mmSfpPx6
 qS1IrhXocbplek9GpCkfAUmb0xsAnhfGypmW5A7hYIA3tvBoobBLjyPSm
 Q1bpvuJRec8scLU/GoDFRrxvZs8rn1r9UQjI+TDNSpUAIMK0Ffxesh296
 NHHAzlr5MuDOflYZOmypaMcxzJ8kfFIwuMmnzjUv/++jMp/Ry3fE60mPa
 XnBmdtvLciBHs9r0tzL2ezvMbxlSVJswyv02Naf0AASSrQ6sjf+kP+hEL
 b6YWPUwuVC8p+ncTjGvCjmKjms4oHAvek9gEusQRZxwqKOjXTAJw3JnhE
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DkLZmAhz
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 3/6] ice: rename verify_cached
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
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
 drivers/net/ethernet/intel/ice/ice_ptp.c | 31 ++++++++++++------------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  8 +++---
 2 files changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index c309d3fd5a4e..4b1b2c577df7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -601,17 +601,13 @@ void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx)
 	/* Read the low 32 bit value */
 	raw_tstamp |= (u64)rd32(&pf->hw, PF_SB_ATQBAH);
 
-	/* For PHYs which don't implement a proper timestamp ready bitmap,
-	 * verify that the timestamp value is different from the last cached
-	 * timestamp. If it is not, skip this for now assuming it hasn't yet
-	 * been captured by hardware.
+	/* Devices using this interface always verify the timestamp differs
+	 * relative to the last cached timestamp value.
 	 */
-	if (!drop_ts && tx->verify_cached &&
-	    raw_tstamp == tx->tstamps[idx].cached_tstamp)
+	if (raw_tstamp == tx->tstamps[idx].cached_tstamp)
 		return;
 
-	if (tx->verify_cached && raw_tstamp)
-		tx->tstamps[idx].cached_tstamp = raw_tstamp;
+	tx->tstamps[idx].cached_tstamp = raw_tstamp;
 	clear_bit(idx, tx->in_use);
 	skb = tx->tstamps[idx].skb;
 	tx->tstamps[idx].skb = NULL;
@@ -701,9 +697,11 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
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
@@ -731,7 +729,8 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 		 * If we do not, the hardware logic for generating a new
 		 * interrupt can get stuck on some devices.
 		 */
-		if (!(tstamp_ready & BIT_ULL(phy_idx))) {
+		if (tx->has_ready_bitmap &&
+		    !(tstamp_ready & BIT_ULL(phy_idx))) {
 			if (drop_ts)
 				goto skip_ts_read;
 
@@ -751,7 +750,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 		 * from the last cached timestamp. If it is not, skip this for
 		 * now assuming it hasn't yet been captured by hardware.
 		 */
-		if (!drop_ts && tx->verify_cached &&
+		if (!drop_ts && !tx->has_ready_bitmap &&
 		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
 			continue;
 
@@ -761,7 +760,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 
 skip_ts_read:
 		spin_lock_irqsave(&tx->lock, flags);
-		if (tx->verify_cached && raw_tstamp)
+		if (!tx->has_ready_bitmap && raw_tstamp)
 			tx->tstamps[idx].cached_tstamp = raw_tstamp;
 		clear_bit(idx, tx->in_use);
 		skb = tx->tstamps[idx].skb;
@@ -1014,7 +1013,7 @@ ice_ptp_init_tx_e82x(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
 	tx->block = port / ICE_PORTS_PER_QUAD;
 	tx->offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT_E82X;
 	tx->len = INDEX_PER_PORT_E82X;
-	tx->verify_cached = 0;
+	tx->has_ready_bitmap = 1;
 
 	return ice_ptp_alloc_tx_tracker(tx);
 }
@@ -1037,7 +1036,7 @@ ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	 * verify new timestamps against cached copy of the last read
 	 * timestamp.
 	 */
-	tx->verify_cached = 1;
+	tx->has_ready_bitmap = 0;
 
 	return ice_ptp_alloc_tx_tracker(tx);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 7b748f22e6f7..c8549508359a 100644
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
  * @last_ll_ts_idx_read: index of the last LL TS read by the FW
  */
 struct ice_ptp_tx {
@@ -143,7 +145,7 @@ struct ice_ptp_tx {
 	u8 len;
 	u8 init : 1;
 	u8 calibrating : 1;
-	u8 verify_cached : 1;
+	u8 has_ready_bitmap : 1;
 	s8 last_ll_ts_idx_read;
 };
 
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

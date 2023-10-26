Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BFD7D816A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 13:00:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 285534096D;
	Thu, 26 Oct 2023 11:00:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 285534096D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698318022;
	bh=wfC9zqDNR4WJT5fBmyDNgFyvgfDuvkQCG4cyhWZw5rE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Bdyf3KcT6fJ9nEu6wwvPqtoKFaX+ZtbDnrZH7NXqhEnPk5OqtgHrELanJHxf7puAe
	 vxU9hVxXAJgbCXCn0n1GRBxnezKkaFojeBQI6xY1SNW2uCeWYgB5LWaVQw9IyUf6lh
	 lZdebUeHspoAXxoj7V0Hs1qnhgbmk8wOKjyvrVSxXusKaH9RrL81a5rAcVlv/ZifgA
	 cn7nhyQNuIKFe/VKHLeG5bs1gAg7CNYp95xJw/0QxL7MfbdpPSUNQgMswFlJZuN+Zr
	 JAZQ37VwVo8OhJOvpCnnYZucecmqq9FPhvWk5f3fntT5RIfxWxyj3wNSaKHLoES0oh
	 WJpKyJJZfK2ZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BIlZyCQXgDG9; Thu, 26 Oct 2023 11:00:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CBDF415C7;
	Thu, 26 Oct 2023 11:00:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CBDF415C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4324D1BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 11:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A024612F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 11:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A024612F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wRIrKhAm0lQC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 11:00:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0833C612F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 11:00:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0833C612F0
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="453984857"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="453984857"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 04:00:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="875893385"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="875893385"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga002.fm.intel.com with ESMTP; 26 Oct 2023 03:59:58 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 26 Oct 2023 12:59:55 +0200
Message-Id: <20231026105955.282546-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698318013; x=1729854013;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Im/4q+MjL5eJ1DmWuxMDMpxzjfyAd0wAkQbj3DkAPJY=;
 b=TiuT3b+LGSqK/OBW9baJYY5YM6RUsAti1ImHnVScnKmVdctFjyrZX37F
 KEJbvlb9IGA4Vg/NzMoa6n/fIAy5rp60P6ULKtkL9j/wCijxcGWhVj3R/
 tHZoT5VC1HTWuNrzMtZXwUSGsTw0RvDxNSq2aDkalj7NdW4QC3Ezznt87
 xAobW1w377WtwKCaCxTpo0jTEkhjMTV+m/ln/t0HxyAah5OBQLKWYrBUL
 ryO3KprIVK6dZZJWcCcWLNE56tSVdFGFNpYwS+x1APdiL9sVfJqxbEX+Z
 nb4f9yS4lswftji4VjIVMlr5wyIWLY0XskSpikIMVG1K0ba6YyCkEiynv
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TiuT3b+L
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: remove unnecessary
 discarding of timestamps
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The ice driver currently discards any outstanding timestamps that are
happening very near to a .adjtime or .settime callback. This was
originally added by commit b1a582e64bf2 ("ice: introduce
ice_ptp_reset_cached_phctime function") and later extended by commit
d40fd6009332 ("ice: handle flushing stale Tx timestamps in
ice_ptp_tx_tstamp").

The original motivation for discarding timestamps was that extending an
old timestamp using the new cached value of PHC was a problem, as it
could produce incorrect results. The change did not describe what such
"incorrect results" were.

There are no such incorrect results. Extending the 32 bit timestamp with
the new time value just means that the timestamp is reported in terms of
the newly updated and adjusted system clock. This won't produce
incorrect results or problematic timestamps to applications. Either the
timestamp will be extended with the value of the PHC just prior to the
time adjustment (if the timestamp completes prior to the adjust
callback), or it will be extended using the new PHC value after the
adjustment. In either case, the resulting extended timestamp value makes
sense.

The timestamp extension logic is very similar to the logic found in
timecounter_cyc2time, the primary difference being that the ice hardware
maintains the full 64 bits of nanoseconds in the MAC rather than being
maintained purely by software as in the timecounter case.

Indeed, I couldn't find an example of a driver using
timecounter_cyc2time which does discard timestamps that occur nearby
a time adjustment. The ice driver behavior of discarding such timestamps
just results in failure to deliver a Tx timestamp to userspace,
resulting in applications such as ptp4l to timeout and enter a fault
state. Reporting the extended timestamp based on the updated PHC value
isn't producing "garbage" results, and doesn't lead to incorrect
behavior.

Remove the unnecessary stale timestamp logic.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 77 +++---------------------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  2 -
 2 files changed, 8 insertions(+), 71 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 5fb9dbbdfc16..bcc3bf105b71 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -534,9 +534,8 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
  * 2) check that a timestamp is ready and available in the PHY memory bank
  * 3) read and copy the timestamp out of the PHY register
  * 4) unlock the index by clearing the associated in_use bit
- * 5) check if the timestamp is stale, and discard if so
- * 6) extend the 40 bit timestamp value to get a 64 bit timestamp value
- * 7) send this 64 bit timestamp to the stack
+ * 5) extend the 40 bit timestamp value to get a 64 bit timestamp value
+ * 6) send this 64 bit timestamp to the stack
  *
  * Note that we do not hold the tracking lock while reading the Tx timestamp.
  * This is because reading the timestamp requires taking a mutex that might
@@ -556,12 +555,6 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
  * interrupt for that timestamp should re-trigger this function once
  * a timestamp is ready.
  *
- * In cases where the PTP hardware clock was directly adjusted, some
- * timestamps may not be able to safely use the timestamp extension math. In
- * this case, software will set the stale bit for any outstanding Tx
- * timestamps when the clock is adjusted. Then this function will discard
- * those captured timestamps instead of sending them to the stack.
- *
  * If a Tx packet has been waiting for more than 2 seconds, it is not possible
  * to correctly extend the timestamp using the cached PHC time. It is
  * extremely unlikely that a packet will ever take this long to timestamp. If
@@ -652,8 +645,6 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 		clear_bit(idx, tx->in_use);
 		skb = tx->tstamps[idx].skb;
 		tx->tstamps[idx].skb = NULL;
-		if (test_and_clear_bit(idx, tx->stale))
-			drop_ts = true;
 		spin_unlock(&tx->lock);
 
 		/* It is unlikely but possible that the SKB will have been
@@ -752,24 +743,21 @@ static enum ice_tx_tstamp_work ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 static int
 ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
 {
-	unsigned long *in_use, *stale;
 	struct ice_tx_tstamp *tstamps;
+	unsigned long *in_use;
 
 	tstamps = kcalloc(tx->len, sizeof(*tstamps), GFP_KERNEL);
 	in_use = bitmap_zalloc(tx->len, GFP_KERNEL);
-	stale = bitmap_zalloc(tx->len, GFP_KERNEL);
 
-	if (!tstamps || !in_use || !stale) {
+	if (!tstamps || !in_use) {
 		kfree(tstamps);
 		bitmap_free(in_use);
-		bitmap_free(stale);
 
 		return -ENOMEM;
 	}
 
 	tx->tstamps = tstamps;
 	tx->in_use = in_use;
-	tx->stale = stale;
 	tx->init = 1;
 
 	spin_lock_init(&tx->lock);
@@ -815,7 +803,6 @@ ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 		skb = tx->tstamps[idx].skb;
 		tx->tstamps[idx].skb = NULL;
 		clear_bit(idx, tx->in_use);
-		clear_bit(idx, tx->stale);
 		spin_unlock(&tx->lock);
 
 		/* Count the number of Tx timestamps flushed */
@@ -826,41 +813,6 @@ ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	}
 }
 
-/**
- * ice_ptp_mark_tx_tracker_stale - Mark unfinished timestamps as stale
- * @tx: the tracker to mark
- *
- * Mark currently outstanding Tx timestamps as stale. This prevents sending
- * their timestamp value to the stack. This is required to prevent extending
- * the 40bit hardware timestamp incorrectly.
- *
- * This should be called when the PTP clock is modified such as after a set
- * time request.
- */
-static void
-ice_ptp_mark_tx_tracker_stale(struct ice_ptp_tx *tx)
-{
-	spin_lock(&tx->lock);
-	bitmap_or(tx->stale, tx->stale, tx->in_use, tx->len);
-	spin_unlock(&tx->lock);
-}
-
-/**
- * ice_ptp_flush_all_tx_tracker - Flush all timestamp trackers on this clock
- * @pf: Board private structure
- *
- * Called by the clock owner to flush all the Tx timestamp trackers associated
- * with the clock.
- */
-static void
-ice_ptp_flush_all_tx_tracker(struct ice_pf *pf)
-{
-	struct ice_ptp_port *port;
-
-	list_for_each_entry(port, &pf->ptp.ports_owner.ports, list_member)
-		ice_ptp_flush_tx_tracker(ptp_port_to_pf(port), &port->tx);
-}
-
 /**
  * ice_ptp_release_tx_tracker - Release allocated memory for Tx tracker
  * @pf: Board private structure
@@ -886,9 +838,6 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	bitmap_free(tx->in_use);
 	tx->in_use = NULL;
 
-	bitmap_free(tx->stale);
-	tx->stale = NULL;
-
 	tx->len = 0;
 }
 
@@ -1006,14 +955,12 @@ static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
  * ice_ptp_reset_cached_phctime - Reset cached PHC time after an update
  * @pf: Board specific private structure
  *
- * This function must be called when the cached PHC time is no longer valid,
- * such as after a time adjustment. It marks any currently outstanding Tx
- * timestamps as stale and updates the cached PHC time for both the PF and Rx
- * rings.
+ * This function is called to immediately update the cached PHC time after
+ * a .settime or .adjtime call.
  *
  * If updating the PHC time cannot be done immediately, a warning message is
- * logged and the work item is scheduled immediately to minimize the window
- * with a wrong cached timestamp.
+ * logged and the work item is scheduled without delay to minimize the window
+ * where a timestamp is extended using the old cached value.
  */
 static void ice_ptp_reset_cached_phctime(struct ice_pf *pf)
 {
@@ -1036,13 +983,6 @@ static void ice_ptp_reset_cached_phctime(struct ice_pf *pf)
 		kthread_queue_delayed_work(pf->ptp.kworker, &pf->ptp.work,
 					   msecs_to_jiffies(10));
 	}
-
-	/* Mark any outstanding timestamps as stale, since they might have
-	 * been captured in hardware before the time update. This could lead
-	 * to us extending them with the wrong cached value resulting in
-	 * incorrect timestamp values.
-	 */
-	ice_ptp_mark_tx_tracker_stale(&pf->ptp.port.tx);
 }
 
 /**
@@ -2416,7 +2356,6 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 		 * requests.
 		 */
 		set_bit(idx, tx->in_use);
-		clear_bit(idx, tx->stale);
 		tx->tstamps[idx].start = jiffies;
 		tx->tstamps[idx].skb = skb_get(skb);
 		skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index c0c8ef4de70f..ed2d3517db04 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -123,7 +123,6 @@ enum ice_tx_tstamp_work {
  * @lock: lock to prevent concurrent access to fields of this struct
  * @tstamps: array of len to store outstanding requests
  * @in_use: bitmap of len to indicate which slots are in use
- * @stale: bitmap of len to indicate slots which have stale timestamps
  * @block: which memory block (quad or port) the timestamps are captured in
  * @offset: offset into timestamp block to get the real index
  * @len: length of the tstamps and in_use fields.
@@ -138,7 +137,6 @@ struct ice_ptp_tx {
 	spinlock_t lock; /* lock protecting in_use bitmap */
 	struct ice_tx_tstamp *tstamps;
 	unsigned long *in_use;
-	unsigned long *stale;
 	u8 block;
 	u8 offset;
 	u8 len;

base-commit: b57a67bab47efc24e7ea7bd626aa517ac76c4fc9
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

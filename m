Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7108C61554F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 23:53:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 046264055A;
	Tue,  1 Nov 2022 22:53:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 046264055A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667343214;
	bh=to64MvoRuGW1ORim4QVi/nng8znKhEEOB8q7OpX2Vh0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K2u3Cujaya2vT0I+k9XU980pDR3PtBS+85zMFFpfy+Ns3xTJ/T8TAGE6t1sZgL29I
	 MN+snMZEvkqrRphhORApTMuQQZMQ9wms9woNY9wJTlkXASMs3a1IItWsPzx/o0SDqk
	 91zmIIqHny/bObrVeXLSzXltcmE41YM+psyTCkx8fUklnQTqXWhqTIJLcCf8oU3gA2
	 TxhDeuX337LBh8ZkX8ZLemvNDOap4RyFIHdPQLaG22lWs+T7fW0sYnNaQZAsChajHc
	 YZCs9pfHB2JUko+p2QeRpx/xtEppg7w4r+Mxj1AAykIikSbTWCEhKW6h3wciC5rQxN
	 PM71DaIS/jD1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JJrF0xIQ-xAg; Tue,  1 Nov 2022 22:53:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C209E4011B;
	Tue,  1 Nov 2022 22:53:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C209E4011B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1811B1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD10340941
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD10340941
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iFVwp0aXR-15 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 935C84098D
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 935C84098D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="371348111"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="371348111"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="723324032"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="723324032"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue,  1 Nov 2022 15:52:31 -0700
Message-Id: <20221101225240.421525-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221101225240.421525-1-jacob.e.keller@intel.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667343191; x=1698879191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hp3vrQgGXOgBhnDe1ZbiFBrd/MtQPFAzeCZx0U8I6LY=;
 b=SjkNLPBdBsVDZq1QluTUeXuiRbQSnYYTW9jh3B8Ht0jQGeAmX7IaL23+
 u+8yFylYXuTNomAyGGNFlOYD6fNMVDOwTabbX2/Jzsz/Z4wMYrYv6BeCr
 bBqiJg6ChMdSpa3q32ZWrK3UgMcZ5zWjBf4AEbLNiJfwtYVHTtZv5+t+A
 hvO9i3NpmQSNquCj57eBzIy4rHbN/IuDjK7eui1U6wT008oiRI5XI49n8
 iTw082b9HiI3Xt2lZI52vvZLniL3go/voUTwCqg47MAGCCKEErKCMgcRg
 Le+vi/OauYvjTzNvWIocFvEZOg6wl1zXJVItb3yHAAZeCNOXP8okpHv1l
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SjkNLPBd
Subject: [Intel-wired-lan] [PATCH net-next 06/15] ice: handle discarding old
 Tx requests in ice_ptp_tx_tstamp
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

Currently the driver uses the PTP kthread to process handling and
discarding of stale Tx timestamp requests. The function
ice_ptp_tx_tstamp_cleanup is used for this.

A separate thread creates complications for the driver as we now have both
the main Tx timestamp processing IRQ checking timestamps as well as the
kthread.

Rather than using the kthread to handle this, simply check for stale
timestamps within the ice_ptp_tx_tstamp function. This function must
already process the timestamps anyways.

If a Tx timestamp has been waiting for 2 seconds we simply clear the bit
and discard the SKB. This avoids the complication of having separate
threads polling, reducing overall CPU work.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 106 ++++++++++-------------
 1 file changed, 45 insertions(+), 61 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 3b154cdb2a32..ebe910326963 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -623,15 +623,32 @@ static u64 ice_ptp_extend_40b_ts(struct ice_pf *pf, u64 in_tstamp)
  * Note that we only take the tracking lock when clearing the bit and when
  * checking if we need to re-queue this task. The only place where bits can be
  * set is the hard xmit routine where an SKB has a request flag set. The only
- * places where we clear bits are this work function, or the periodic cleanup
- * thread. If the cleanup thread clears a bit we're processing we catch it
- * when we lock to clear the bit and then grab the SKB pointer. If a Tx thread
- * starts a new timestamp, we might not begin processing it right away but we
- * will notice it at the end when we re-queue the task. If a Tx thread starts
- * a new timestamp just after this function exits without re-queuing,
- * the interrupt when the timestamp finishes should trigger. Avoiding holding
- * the lock for the entire function is important in order to ensure that Tx
- * threads do not get blocked while waiting for the lock.
+ * places where we clear bits are this work function, or when flushing the Tx
+ * timestamp tracker.
+ *
+ * If the Tx tracker gets flushed while we're processing a packet, we catch
+ * this because we grab the SKB pointer under lock. If the SKB is NULL we know
+ * that another thread already discarded the SKB and we can avoid passing it
+ * up to the stack.
+ *
+ * If a Tx thread starts a new timestamp, we might not begin processing it
+ * right away but we will notice it at the end when we re-queue the task.
+ *
+ * If a Tx thread starts a new timestamp just after this function exits, the
+ * interrupt for that timestamp should re-trigger this function once
+ * a timestamp is ready.
+ *
+ * Note that minimizing the time we hold the lock is important. If we held the
+ * lock for the entire function we would unnecessarily block the Tx hot path
+ * which needs to set the timestamp index. Limiting how long we hold the lock
+ * ensures we do not block Tx threads.
+ *
+ * If a Tx packet has been waiting for more than 2 seconds, it is not possible
+ * to correctly extend the timestamp using the cached PHC time. It is
+ * extremely unlikely that a packet will ever take this long to timestamp. If
+ * we detect a Tx timestamp request that has waited for this long we assume
+ * the packet will never be sent by hardware and discard it without reading
+ * the timestamp register.
  */
 static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 {
@@ -650,9 +667,20 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 		struct skb_shared_hwtstamps shhwtstamps = {};
 		u8 phy_idx = idx + tx->offset;
 		u64 raw_tstamp, tstamp;
+		bool drop_ts = false;
 		struct sk_buff *skb;
 		int err;
 
+		/* Drop packets which have waited for more than 2 seconds */
+		if (time_is_before_jiffies(tx->tstamps[idx].start + 2 * HZ)) {
+			drop_ts = true;
+
+			/* Count the number of Tx timestamps that timed out */
+			pf->ptp.tx_hwtstamp_timeouts++;
+
+			goto skip_ts_read;
+		}
+
 		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
 
 		err = ice_read_phy_tstamp(&pf->hw, tx->block, phy_idx,
@@ -667,9 +695,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
 			continue;
 
-		/* The timestamp is valid, so we'll go ahead and clear this
-		 * index and then send the timestamp up to the stack.
-		 */
+skip_ts_read:
 		spin_lock(&tx->lock);
 		tx->tstamps[idx].cached_tstamp = raw_tstamp;
 		clear_bit(idx, tx->in_use);
@@ -677,12 +703,17 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 		tx->tstamps[idx].skb = NULL;
 		spin_unlock(&tx->lock);
 
-		/* it's (unlikely but) possible we raced with the cleanup
-		 * thread for discarding old timestamp requests.
+		/* It is unlikely but possible that the SKB will have been
+		 * flushed at this point due to link change or teardown.
 		 */
 		if (!skb)
 			continue;
 
+		if (drop_ts) {
+			dev_kfree_skb_any(skb);
+			continue;
+		}
+
 		/* Extend the timestamp using cached PHC time */
 		tstamp = ice_ptp_extend_40b_ts(pf, raw_tstamp);
 		if (tstamp) {
@@ -823,51 +854,6 @@ ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	return ice_ptp_alloc_tx_tracker(tx);
 }
 
-/**
- * ice_ptp_tx_tstamp_cleanup - Cleanup old timestamp requests that got dropped
- * @pf: pointer to the PF struct
- * @tx: PTP Tx tracker to clean up
- *
- * Loop through the Tx timestamp requests and see if any of them have been
- * waiting for a long time. Discard any SKBs that have been waiting for more
- * than 2 seconds. This is long enough to be reasonably sure that the
- * timestamp will never be captured. This might happen if the packet gets
- * discarded before it reaches the PHY timestamping block.
- */
-static void ice_ptp_tx_tstamp_cleanup(struct ice_pf *pf, struct ice_ptp_tx *tx)
-{
-	struct ice_hw *hw = &pf->hw;
-	u8 idx;
-
-	if (!tx->init)
-		return;
-
-	for_each_set_bit(idx, tx->in_use, tx->len) {
-		struct sk_buff *skb;
-		u64 raw_tstamp;
-
-		/* Check if this SKB has been waiting for too long */
-		if (time_is_after_jiffies(tx->tstamps[idx].start + 2 * HZ))
-			continue;
-
-		/* Read tstamp to be able to use this register again */
-		ice_read_phy_tstamp(hw, tx->block, idx + tx->offset,
-				    &raw_tstamp);
-
-		spin_lock(&tx->lock);
-		skb = tx->tstamps[idx].skb;
-		tx->tstamps[idx].skb = NULL;
-		clear_bit(idx, tx->in_use);
-		spin_unlock(&tx->lock);
-
-		/* Count the number of Tx timestamps which have timed out */
-		pf->ptp.tx_hwtstamp_timeouts++;
-
-		/* Free the SKB after we've cleared the bit */
-		dev_kfree_skb_any(skb);
-	}
-}
-
 /**
  * ice_ptp_update_cached_phctime - Update the cached PHC time values
  * @pf: Board specific private structure
@@ -2404,8 +2390,6 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 
 	err = ice_ptp_update_cached_phctime(pf);
 
-	ice_ptp_tx_tstamp_cleanup(pf, &pf->ptp.port.tx);
-
 	/* Run twice a second or reschedule if phc update failed */
 	kthread_queue_delayed_work(ptp->kworker, &ptp->work,
 				   msecs_to_jiffies(err ? 10 : 500));
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

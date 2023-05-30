Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FE8716B75
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 19:46:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7819981F84;
	Tue, 30 May 2023 17:46:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7819981F84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685468795;
	bh=SPKaJDk+5yRoksmNmIH+qmZ0qWg96EHncmnqlWrFa4Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eZlbvmIB+zELQDKY29uDg3ENh6GBHx1A4RkHNY0fT/hm1KMj10Cd3TpTOSVvTEJIw
	 +ycMNmMF/eW+6AT+7jTQfd5DshAbBD50JcT8C8V9frdxjQN+ixhFYK0tLBcE4ffpA9
	 YH0GtBuACZXwq20Vu1VlG58jk65E+ygpZGH/+OooBeGD4r4HKmyEYcufdh57qzaL/s
	 QmxPe9tvSys8ulIGYTKsFy6n9YLbXsaRkISjGpjufeXHfTvdJFcAGxX1irk6EVDZYW
	 AzE8O8+1L5q59kvNHn2/41ANA7FmShHo9Ad4FAAudYVDtogt8F5zsD3ZLat5dVie5I
	 dxuGowyylyBJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rDSv1ld5b-rH; Tue, 30 May 2023 17:46:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BABC881F19;
	Tue, 30 May 2023 17:46:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BABC881F19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F24211BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 17:46:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D87DA4031F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 17:46:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D87DA4031F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SEvJdu4E215P for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 17:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBEAF40160
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBEAF40160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 17:46:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358253153"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="358253153"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 10:46:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="776430989"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="776430989"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 10:46:21 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Tue, 30 May 2023 10:46:03 -0700
Message-ID: <20230530174605.2772054-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
In-Reply-To: <20230530174605.2772054-1-jacob.e.keller@intel.com>
References: <20230530174605.2772054-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685468783; x=1717004783;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bog7D7mhnwX7f869lJR6CiMf6ijLk3Yv60gR4AKd99A=;
 b=HZA4O3CIvC7mrqGRxvw5uNt4FvYNjrMbzep0RUWlPGfLuGnnh6nEloU2
 R80R+/+O7L9Gpv0LaWMstTtHaMtYAhgMBsgH/eIoLnzEKNX4yeTjIBLsJ
 EUXxJRGxa0xssj06K6ZcKs8qYtjiExMZHjAu01ycsZk3XP+qsXcZ3c74M
 UFhwz6b9LA5olbSMRpa1zkbQjn66GVHQFydFT0ORRv99CsntUXUsljDRE
 vC2v+zIa49Sby+lnbMgXAQVaZvyiUwKhmAgYq82wgg4H89BrJkQXGJ1+8
 GoNkv0ivcJemQ8UE3FrR2fB5HR9kNxmIJoRt/qoY83VaWa5udJ0szlbv7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HZA4O3CI
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/5] ice: introduce
 ICE_TX_TSTAMP_WORK enumeration
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

The ice_ptp_process_ts() function and its various helper functions return a
boolean value indicating whether any work is remaining. This use of a
boolean has grown confusing as we have multiple helpers that pass status
between each other. Readers must be aware of what "true" and "false" mean,
and it is very easy to get their meaning inverted. The names of the
functions are not standard "yes/no" questions, which is the best practice
for boolean returns.

Replace this use of an enumeration with a custom type, enum
ice_tx_tstamp_work. This enumeration clearly indicates whether all work is
done, or if more work is pending.

To aid in readability, factor the actual list iteration and processing out
into ice_ptp_process_tx_tstamp(), making it void. Then call this in
ice_ptp_tx_tstamp() ensuring that we always check the Tracker list at the
end when determining the appropriate return value.

Now the return value is an explicit name instead of the true or false
value. This is easier to follow and makes reading the resulting callers
much simpler.

In addition, this paves the way for future work to allow E822 hardware to
process timestamps for all functions using a single interrupt on the clock
owning PF.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---

Changes since v1:
*  Remove unused more_timestamps variable from ice_ptp_process_tx_tstamp

 drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 50 ++++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp.h  | 12 +++++-
 3 files changed, 42 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8b59632ec6b1..481dccdb95cd 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3204,7 +3204,7 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 	}
 
 	if (pf->oicr_misc & PFINT_OICR_TSYN_TX_M) {
-		while (!ice_ptp_process_ts(pf))
+		while (ice_ptp_process_ts(pf) == ICE_TX_TSTAMP_WORK_PENDING)
 			usleep_range(50, 100);
 		pf->oicr_misc &= ~PFINT_OICR_TSYN_TX_M;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 6f51ebaf1d70..81d96a40d5a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -617,7 +617,7 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
 }
 
 /**
- * ice_ptp_tx_tstamp - Process Tx timestamps for a port
+ * ice_ptp_process_tx_tstamp - Process Tx timestamps for a port
  * @tx: the PTP Tx timestamp tracker
  *
  * Process timestamps captured by the PHY associated with this port. To do
@@ -633,15 +633,6 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
  * 6) extend the 40 bit timestamp value to get a 64 bit timestamp value
  * 7) send this 64 bit timestamp to the stack
  *
- * Returns true if all timestamps were handled, and false if any slots remain
- * without a timestamp.
- *
- * After looping, if we still have waiting SKBs, return false. This may cause
- * us effectively poll even when not strictly necessary. We do this because
- * it's possible a new timestamp was requested around the same time as the
- * interrupt. In some cases hardware might not interrupt us again when the
- * timestamp is captured.
- *
  * Note that we do not hold the tracking lock while reading the Tx timestamp.
  * This is because reading the timestamp requires taking a mutex that might
  * sleep.
@@ -673,10 +664,9 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
  * the packet will never be sent by hardware and discard it without reading
  * the timestamp register.
  */
-static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
+static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 {
 	struct ice_ptp_port *ptp_port;
-	bool more_timestamps;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	u64 tstamp_ready;
@@ -685,7 +675,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	u8 idx;
 
 	if (!tx->init)
-		return true;
+		return;
 
 	ptp_port = container_of(tx, struct ice_ptp_port, tx);
 	pf = ptp_port_to_pf(ptp_port);
@@ -694,7 +684,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	/* Read the Tx ready status first */
 	err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
 	if (err)
-		return false;
+		return;
 
 	/* Drop packets if the link went down */
 	link_up = ptp_port->link_up;
@@ -782,15 +772,34 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 		skb_tstamp_tx(skb, &shhwtstamps);
 		dev_kfree_skb_any(skb);
 	}
+}
 
-	/* Check if we still have work to do. If so, re-queue this task to
-	 * poll for remaining timestamps.
-	 */
+/**
+ * ice_ptp_tx_tstamp - Process Tx timestamps for this function.
+ * @tx: Tx tracking structure to initialize
+ *
+ * Returns: ICE_TX_TSTAMP_WORK_PENDING if there are any outstanding incomplete
+ * Tx timestamps, or ICE_TX_TSTAMP_WORK_DONE otherwise.
+ */
+static enum ice_tx_tstamp_work ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
+{
+	bool more_timestamps;
+
+	if (!tx->init)
+		return ICE_TX_TSTAMP_WORK_DONE;
+
+	/* Process the Tx timestamp tracker */
+	ice_ptp_process_tx_tstamp(tx);
+
+	/* Check if there are outstanding Tx timestamps */
 	spin_lock(&tx->lock);
 	more_timestamps = tx->init && !bitmap_empty(tx->in_use, tx->len);
 	spin_unlock(&tx->lock);
 
-	return !more_timestamps;
+	if (more_timestamps)
+		return ICE_TX_TSTAMP_WORK_PENDING;
+
+	return ICE_TX_TSTAMP_WORK_DONE;
 }
 
 /**
@@ -2426,9 +2435,10 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
  * ice_ptp_process_ts - Process the PTP Tx timestamps
  * @pf: Board private structure
  *
- * Returns true if timestamps are processed.
+ * Returns: ICE_TX_TSTAMP_WORK_PENDING if there are any outstanding Tx
+ * timestamps that need processing, and ICE_TX_TSTAMP_WORK_DONE otherwise.
  */
-bool ice_ptp_process_ts(struct ice_pf *pf)
+enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf)
 {
 	return ice_ptp_tx_tstamp(&pf->ptp.port.tx);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 9f8902c1e743..6c90775e1eb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -108,6 +108,16 @@ struct ice_tx_tstamp {
 	u64 cached_tstamp;
 };
 
+/**
+ * enum ice_tx_tstamp_work - Status of Tx timestamp work function
+ * @ICE_TX_TSTAMP_WORK_DONE - Tx timestamp processing is complete
+ * @ICE_TX_TSTAMP_WORK_PENDING - More Tx timestamps are pending
+ */
+enum ice_tx_tstamp_work {
+	ICE_TX_TSTAMP_WORK_DONE = 0,
+	ICE_TX_TSTAMP_WORK_PENDING,
+};
+
 /**
  * struct ice_ptp_tx - Tracking structure for all Tx timestamp requests on a port
  * @lock: lock to prevent concurrent access to fields of this struct
@@ -256,7 +266,7 @@ int ice_get_ptp_clock_index(struct ice_pf *pf);
 
 void ice_ptp_extts_event(struct ice_pf *pf);
 s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb);
-bool ice_ptp_process_ts(struct ice_pf *pf);
+enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
 
 void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
-- 
2.40.0.471.gbd7f14d9353b

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

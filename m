Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A52458358E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 01:16:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D67060AB2;
	Wed, 27 Jul 2022 23:16:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D67060AB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658963800;
	bh=wJEBevuDC2RBWB7jl5n/lbFAJLoMr8C0IWRDJXLM+Gg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zoM9vPPkmeqWcabeDJEqTAzis2HmUTBJd62KyFb8ci8IELEK1a3aIQmyWeh0YWQxx
	 mym8Dar29fkuoGYZTi29PM+vX3JUN51T3y9fOMONlby9cOv5fh150A3GnDNhbHVxfH
	 VTXUg10e7g5ROX9Kuuy27EZElO/ocnxhU4StcAcC5hG/xOYeHX8gsbYpbsm46zDJ58
	 PRLJeHsHxtSly69+9N9QyQ3voHWy53a8qwI2/QRsDt14Az9MJBwplrBPGJPvUKe5I/
	 R7ZSb+onRqGHm5GMf2qvNShFEn82wlmHA0wJk7+bhnPsYHkEpQ+Qf70AYRu+FCZERP
	 J4AmUA2mJSnRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QqiC59lLbe50; Wed, 27 Jul 2022 23:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 770E860B31;
	Wed, 27 Jul 2022 23:16:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 770E860B31
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C4111BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C571416ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C571416ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id srMGcXoPNchg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 23:16:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79E24416F3
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 79E24416F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="288382453"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="288382453"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:16:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="846448018"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:16:10 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 27 Jul 2022 16:16:01 -0700
Message-Id: <20220727231602.1625980-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.37.1.208.ge72d93e88cb2
In-Reply-To: <20220727231602.1625980-1-jacob.e.keller@intel.com>
References: <20220727231602.1625980-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658963780; x=1690499780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3sHzOCdqUYSMwEHDTZYV6QwePyjFlDVXUA0Ycnc0YDo=;
 b=BSe5aSUIoac1J/wWXzVmewAR3BKIZI36CkQ6qhT6uYpuqKAv3pU9ib/g
 cZUX3OtU+ZZ1oSIOUPIv2v1jN3DXLmdYKuCbzPqRc40JS2XV/JND6hV1/
 hMroVgusq6A6gtaxYgDSOvd7S64U2nuAj5zVb7MVXb+KgnaAPNeIDSXpQ
 AmmQ+6Bt6yErDFZkLAUaOtl6qA2vxvTKT7nQFuX7zICBU2uWLfos4zj9w
 1/CdsEs1gqJ5IhqY8lEf7TzEvopfRL38aB4XIMuoLu0afIJ0DJrcUwlOB
 MXwDoFEIr1RFZAWOQJBMqkBxNtScaFz8G9Iee+P9Ct90RjHSOoTX4ydy7
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BSe5aSUI
Subject: [Intel-wired-lan] [net-next v2 5/6] ice: re-arrange some static
 functions in ice_ptp.c
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

A following change is going to want to make use of ice_ptp_flush_tx_tracker
earlier in the ice_ptp.c file. To make this work, move the Tx timestamp
tracking functions higher up in the file, and pull the
ice_ptp_update_cached_timestamp function below them. This should have no
functional change.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 672 +++++++++++------------
 1 file changed, 336 insertions(+), 336 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 10352eca2ecd..f125b8135348 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -490,69 +490,6 @@ ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct ptp_system_timestamp *sts)
 	return ((u64)hi << 32) | lo;
 }
 
-/**
- * ice_ptp_update_cached_phctime - Update the cached PHC time values
- * @pf: Board specific private structure
- *
- * This function updates the system time values which are cached in the PF
- * structure and the Rx rings.
- *
- * This function must be called periodically to ensure that the cached value
- * is never more than 2 seconds old. It must also be called whenever the PHC
- * time has been changed.
- *
- * Return:
- * * 0 - OK, successfully updated
- * * -EAGAIN - PF was busy, need to reschedule the update
- */
-static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
-{
-	struct device *dev = ice_pf_to_dev(pf);
-	unsigned long update_before;
-	u64 systime;
-	int i;
-
-	if (test_and_set_bit(ICE_CFG_BUSY, pf->state))
-		return -EAGAIN;
-
-	update_before = pf->ptp.cached_phc_jiffies + msecs_to_jiffies(2000);
-	if (pf->ptp.cached_phc_time &&
-	    time_is_before_jiffies(update_before)) {
-		unsigned long time_taken = jiffies - pf->ptp.cached_phc_jiffies;
-
-		dev_warn(dev, "%u msecs passed between update to cached PHC time\n",
-			 jiffies_to_msecs(time_taken));
-		pf->ptp.late_cached_phc_updates++;
-	}
-
-	/* Read the current PHC time */
-	systime = ice_ptp_read_src_clk_reg(pf, NULL);
-
-	/* Update the cached PHC time stored in the PF structure */
-	WRITE_ONCE(pf->ptp.cached_phc_time, systime);
-	WRITE_ONCE(pf->ptp.cached_phc_jiffies, jiffies);
-
-	ice_for_each_vsi(pf, i) {
-		struct ice_vsi *vsi = pf->vsi[i];
-		int j;
-
-		if (!vsi)
-			continue;
-
-		if (vsi->type != ICE_VSI_PF)
-			continue;
-
-		ice_for_each_rxq(vsi, j) {
-			if (!vsi->rx_rings[j])
-				continue;
-			WRITE_ONCE(vsi->rx_rings[j]->cached_phctime, systime);
-		}
-	}
-	clear_bit(ICE_CFG_BUSY, pf->state);
-
-	return 0;
-}
-
 /**
  * ice_ptp_extend_32b_ts - Convert a 32b nanoseconds timestamp to 64b
  * @cached_phc_time: recently cached copy of PHC time
@@ -662,6 +599,342 @@ static u64 ice_ptp_extend_40b_ts(struct ice_pf *pf, u64 in_tstamp)
 				     (in_tstamp >> 8) & mask);
 }
 
+/**
+ * ice_ptp_tx_tstamp_work - Process Tx timestamps for a port
+ * @work: pointer to the kthread_work struct
+ *
+ * Process timestamps captured by the PHY associated with this port. To do
+ * this, loop over each index with a waiting skb.
+ *
+ * If a given index has a valid timestamp, perform the following steps:
+ *
+ * 1) copy the timestamp out of the PHY register
+ * 4) clear the timestamp valid bit in the PHY register
+ * 5) unlock the index by clearing the associated in_use bit.
+ * 2) extend the 40b timestamp value to get a 64bit timestamp
+ * 3) send that timestamp to the stack
+ *
+ * After looping, if we still have waiting SKBs, then re-queue the work. This
+ * may cause us effectively poll even when not strictly necessary. We do this
+ * because it's possible a new timestamp was requested around the same time as
+ * the interrupt. In some cases hardware might not interrupt us again when the
+ * timestamp is captured.
+ *
+ * Note that we only take the tracking lock when clearing the bit and when
+ * checking if we need to re-queue this task. The only place where bits can be
+ * set is the hard xmit routine where an SKB has a request flag set. The only
+ * places where we clear bits are this work function, or the periodic cleanup
+ * thread. If the cleanup thread clears a bit we're processing we catch it
+ * when we lock to clear the bit and then grab the SKB pointer. If a Tx thread
+ * starts a new timestamp, we might not begin processing it right away but we
+ * will notice it at the end when we re-queue the work item. If a Tx thread
+ * starts a new timestamp just after this function exits without re-queuing,
+ * the interrupt when the timestamp finishes should trigger. Avoiding holding
+ * the lock for the entire function is important in order to ensure that Tx
+ * threads do not get blocked while waiting for the lock.
+ */
+static void ice_ptp_tx_tstamp_work(struct kthread_work *work)
+{
+	struct ice_ptp_port *ptp_port;
+	struct ice_ptp_tx *tx;
+	struct ice_pf *pf;
+	struct ice_hw *hw;
+	u8 idx;
+
+	tx = container_of(work, struct ice_ptp_tx, work);
+	if (!tx->init)
+		return;
+
+	ptp_port = container_of(tx, struct ice_ptp_port, tx);
+	pf = ptp_port_to_pf(ptp_port);
+	hw = &pf->hw;
+
+	for_each_set_bit(idx, tx->in_use, tx->len) {
+		struct skb_shared_hwtstamps shhwtstamps = {};
+		u8 phy_idx = idx + tx->quad_offset;
+		u64 raw_tstamp, tstamp;
+		struct sk_buff *skb;
+		int err;
+
+		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
+
+		err = ice_read_phy_tstamp(hw, tx->quad, phy_idx,
+					  &raw_tstamp);
+		if (err)
+			continue;
+
+		ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
+
+		/* Check if the timestamp is invalid or stale */
+		if (!(raw_tstamp & ICE_PTP_TS_VALID) ||
+		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
+			continue;
+
+		/* The timestamp is valid, so we'll go ahead and clear this
+		 * index and then send the timestamp up to the stack.
+		 */
+		spin_lock(&tx->lock);
+		tx->tstamps[idx].cached_tstamp = raw_tstamp;
+		clear_bit(idx, tx->in_use);
+		skb = tx->tstamps[idx].skb;
+		tx->tstamps[idx].skb = NULL;
+		spin_unlock(&tx->lock);
+
+		/* it's (unlikely but) possible we raced with the cleanup
+		 * thread for discarding old timestamp requests.
+		 */
+		if (!skb)
+			continue;
+
+		/* Extend the timestamp using cached PHC time */
+		tstamp = ice_ptp_extend_40b_ts(pf, raw_tstamp);
+		if (tstamp) {
+			shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
+			ice_trace(tx_tstamp_complete, skb, idx);
+		}
+
+		skb_tstamp_tx(skb, &shhwtstamps);
+		dev_kfree_skb_any(skb);
+	}
+
+	/* Check if we still have work to do. If so, re-queue this task to
+	 * poll for remaining timestamps.
+	 */
+	spin_lock(&tx->lock);
+	if (!bitmap_empty(tx->in_use, tx->len))
+		kthread_queue_work(pf->ptp.kworker, &tx->work);
+	spin_unlock(&tx->lock);
+}
+
+/**
+ * ice_ptp_alloc_tx_tracker - Initialize tracking for Tx timestamps
+ * @tx: Tx tracking structure to initialize
+ *
+ * Assumes that the length has already been initialized. Do not call directly,
+ * use the ice_ptp_init_tx_e822 or ice_ptp_init_tx_e810 instead.
+ */
+static int
+ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
+{
+	tx->tstamps = kcalloc(tx->len, sizeof(*tx->tstamps), GFP_KERNEL);
+	if (!tx->tstamps)
+		return -ENOMEM;
+
+	tx->in_use = bitmap_zalloc(tx->len, GFP_KERNEL);
+	if (!tx->in_use) {
+		kfree(tx->tstamps);
+		tx->tstamps = NULL;
+		return -ENOMEM;
+	}
+
+	spin_lock_init(&tx->lock);
+	kthread_init_work(&tx->work, ice_ptp_tx_tstamp_work);
+
+	tx->init = 1;
+
+	return 0;
+}
+
+/**
+ * ice_ptp_flush_tx_tracker - Flush any remaining timestamps from the tracker
+ * @pf: Board private structure
+ * @tx: the tracker to flush
+ */
+static void
+ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
+{
+	u8 idx;
+
+	for (idx = 0; idx < tx->len; idx++) {
+		u8 phy_idx = idx + tx->quad_offset;
+
+		spin_lock(&tx->lock);
+		if (tx->tstamps[idx].skb) {
+			dev_kfree_skb_any(tx->tstamps[idx].skb);
+			tx->tstamps[idx].skb = NULL;
+			pf->ptp.tx_hwtstamp_flushed++;
+		}
+		clear_bit(idx, tx->in_use);
+		spin_unlock(&tx->lock);
+
+		/* Clear any potential residual timestamp in the PHY block */
+		if (!pf->hw.reset_ongoing)
+			ice_clear_phy_tstamp(&pf->hw, tx->quad, phy_idx);
+	}
+}
+
+/**
+ * ice_ptp_release_tx_tracker - Release allocated memory for Tx tracker
+ * @pf: Board private structure
+ * @tx: Tx tracking structure to release
+ *
+ * Free memory associated with the Tx timestamp tracker.
+ */
+static void
+ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
+{
+	tx->init = 0;
+
+	kthread_cancel_work_sync(&tx->work);
+
+	ice_ptp_flush_tx_tracker(pf, tx);
+
+	kfree(tx->tstamps);
+	tx->tstamps = NULL;
+
+	bitmap_free(tx->in_use);
+	tx->in_use = NULL;
+
+	tx->len = 0;
+}
+
+/**
+ * ice_ptp_init_tx_e822 - Initialize tracking for Tx timestamps
+ * @pf: Board private structure
+ * @tx: the Tx tracking structure to initialize
+ * @port: the port this structure tracks
+ *
+ * Initialize the Tx timestamp tracker for this port. For generic MAC devices,
+ * the timestamp block is shared for all ports in the same quad. To avoid
+ * ports using the same timestamp index, logically break the block of
+ * registers into chunks based on the port number.
+ */
+static int
+ice_ptp_init_tx_e822(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
+{
+	tx->quad = port / ICE_PORTS_PER_QUAD;
+	tx->quad_offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT;
+	tx->len = INDEX_PER_PORT;
+
+	return ice_ptp_alloc_tx_tracker(tx);
+}
+
+/**
+ * ice_ptp_init_tx_e810 - Initialize tracking for Tx timestamps
+ * @pf: Board private structure
+ * @tx: the Tx tracking structure to initialize
+ *
+ * Initialize the Tx timestamp tracker for this PF. For E810 devices, each
+ * port has its own block of timestamps, independent of the other ports.
+ */
+static int
+ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
+{
+	tx->quad = pf->hw.port_info->lport;
+	tx->quad_offset = 0;
+	tx->len = INDEX_PER_QUAD;
+
+	return ice_ptp_alloc_tx_tracker(tx);
+}
+
+/**
+ * ice_ptp_tx_tstamp_cleanup - Cleanup old timestamp requests that got dropped
+ * @pf: pointer to the PF struct
+ * @tx: PTP Tx tracker to clean up
+ *
+ * Loop through the Tx timestamp requests and see if any of them have been
+ * waiting for a long time. Discard any SKBs that have been waiting for more
+ * than 2 seconds. This is long enough to be reasonably sure that the
+ * timestamp will never be captured. This might happen if the packet gets
+ * discarded before it reaches the PHY timestamping block.
+ */
+static void ice_ptp_tx_tstamp_cleanup(struct ice_pf *pf, struct ice_ptp_tx *tx)
+{
+	struct ice_hw *hw = &pf->hw;
+	u8 idx;
+
+	if (!tx->init)
+		return;
+
+	for_each_set_bit(idx, tx->in_use, tx->len) {
+		struct sk_buff *skb;
+		u64 raw_tstamp;
+
+		/* Check if this SKB has been waiting for too long */
+		if (time_is_after_jiffies(tx->tstamps[idx].start + 2 * HZ))
+			continue;
+
+		/* Read tstamp to be able to use this register again */
+		ice_read_phy_tstamp(hw, tx->quad, idx + tx->quad_offset,
+				    &raw_tstamp);
+
+		spin_lock(&tx->lock);
+		skb = tx->tstamps[idx].skb;
+		tx->tstamps[idx].skb = NULL;
+		clear_bit(idx, tx->in_use);
+		spin_unlock(&tx->lock);
+
+		/* Count the number of Tx timestamps which have timed out */
+		pf->ptp.tx_hwtstamp_timeouts++;
+
+		/* Free the SKB after we've cleared the bit */
+		dev_kfree_skb_any(skb);
+	}
+}
+
+/**
+ * ice_ptp_update_cached_phctime - Update the cached PHC time values
+ * @pf: Board specific private structure
+ *
+ * This function updates the system time values which are cached in the PF
+ * structure and the Rx rings.
+ *
+ * This function must be called periodically to ensure that the cached value
+ * is never more than 2 seconds old. It must also be called whenever the PHC
+ * time has been changed.
+ *
+ * Return:
+ * * 0 - OK, successfully updated
+ * * -EAGAIN - PF was busy, need to reschedule the update
+ */
+static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	unsigned long update_before;
+	u64 systime;
+	int i;
+
+	if (test_and_set_bit(ICE_CFG_BUSY, pf->state))
+		return -EAGAIN;
+
+	update_before = pf->ptp.cached_phc_jiffies + msecs_to_jiffies(2000);
+	if (pf->ptp.cached_phc_time &&
+	    time_is_before_jiffies(update_before)) {
+		unsigned long time_taken = jiffies - pf->ptp.cached_phc_jiffies;
+
+		dev_warn(dev, "%u msecs passed between update to cached PHC time\n",
+			 jiffies_to_msecs(time_taken));
+		pf->ptp.late_cached_phc_updates++;
+	}
+
+	/* Read the current PHC time */
+	systime = ice_ptp_read_src_clk_reg(pf, NULL);
+
+	/* Update the cached PHC time stored in the PF structure */
+	WRITE_ONCE(pf->ptp.cached_phc_time, systime);
+	WRITE_ONCE(pf->ptp.cached_phc_jiffies, jiffies);
+
+	ice_for_each_vsi(pf, i) {
+		struct ice_vsi *vsi = pf->vsi[i];
+		int j;
+
+		if (!vsi)
+			continue;
+
+		if (vsi->type != ICE_VSI_PF)
+			continue;
+
+		ice_for_each_rxq(vsi, j) {
+			if (!vsi->rx_rings[j])
+				continue;
+			WRITE_ONCE(vsi->rx_rings[j]->cached_phctime, systime);
+		}
+	}
+	clear_bit(ICE_CFG_BUSY, pf->state);
+
+	return 0;
+}
+
 /**
  * ice_ptp_read_time - Read the time from the device
  * @pf: Board private structure
@@ -2036,113 +2309,6 @@ static long ice_ptp_create_clock(struct ice_pf *pf)
 	return 0;
 }
 
-/**
- * ice_ptp_tx_tstamp_work - Process Tx timestamps for a port
- * @work: pointer to the kthread_work struct
- *
- * Process timestamps captured by the PHY associated with this port. To do
- * this, loop over each index with a waiting skb.
- *
- * If a given index has a valid timestamp, perform the following steps:
- *
- * 1) copy the timestamp out of the PHY register
- * 4) clear the timestamp valid bit in the PHY register
- * 5) unlock the index by clearing the associated in_use bit.
- * 2) extend the 40b timestamp value to get a 64bit timestamp
- * 3) send that timestamp to the stack
- *
- * After looping, if we still have waiting SKBs, then re-queue the work. This
- * may cause us effectively poll even when not strictly necessary. We do this
- * because it's possible a new timestamp was requested around the same time as
- * the interrupt. In some cases hardware might not interrupt us again when the
- * timestamp is captured.
- *
- * Note that we only take the tracking lock when clearing the bit and when
- * checking if we need to re-queue this task. The only place where bits can be
- * set is the hard xmit routine where an SKB has a request flag set. The only
- * places where we clear bits are this work function, or the periodic cleanup
- * thread. If the cleanup thread clears a bit we're processing we catch it
- * when we lock to clear the bit and then grab the SKB pointer. If a Tx thread
- * starts a new timestamp, we might not begin processing it right away but we
- * will notice it at the end when we re-queue the work item. If a Tx thread
- * starts a new timestamp just after this function exits without re-queuing,
- * the interrupt when the timestamp finishes should trigger. Avoiding holding
- * the lock for the entire function is important in order to ensure that Tx
- * threads do not get blocked while waiting for the lock.
- */
-static void ice_ptp_tx_tstamp_work(struct kthread_work *work)
-{
-	struct ice_ptp_port *ptp_port;
-	struct ice_ptp_tx *tx;
-	struct ice_pf *pf;
-	struct ice_hw *hw;
-	u8 idx;
-
-	tx = container_of(work, struct ice_ptp_tx, work);
-	if (!tx->init)
-		return;
-
-	ptp_port = container_of(tx, struct ice_ptp_port, tx);
-	pf = ptp_port_to_pf(ptp_port);
-	hw = &pf->hw;
-
-	for_each_set_bit(idx, tx->in_use, tx->len) {
-		struct skb_shared_hwtstamps shhwtstamps = {};
-		u8 phy_idx = idx + tx->quad_offset;
-		u64 raw_tstamp, tstamp;
-		struct sk_buff *skb;
-		int err;
-
-		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
-
-		err = ice_read_phy_tstamp(hw, tx->quad, phy_idx,
-					  &raw_tstamp);
-		if (err)
-			continue;
-
-		ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
-
-		/* Check if the timestamp is invalid or stale */
-		if (!(raw_tstamp & ICE_PTP_TS_VALID) ||
-		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
-			continue;
-
-		/* The timestamp is valid, so we'll go ahead and clear this
-		 * index and then send the timestamp up to the stack.
-		 */
-		spin_lock(&tx->lock);
-		tx->tstamps[idx].cached_tstamp = raw_tstamp;
-		clear_bit(idx, tx->in_use);
-		skb = tx->tstamps[idx].skb;
-		tx->tstamps[idx].skb = NULL;
-		spin_unlock(&tx->lock);
-
-		/* it's (unlikely but) possible we raced with the cleanup
-		 * thread for discarding old timestamp requests.
-		 */
-		if (!skb)
-			continue;
-
-		/* Extend the timestamp using cached PHC time */
-		tstamp = ice_ptp_extend_40b_ts(pf, raw_tstamp);
-		if (tstamp) {
-			shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
-			ice_trace(tx_tstamp_complete, skb, idx);
-		}
-
-		skb_tstamp_tx(skb, &shhwtstamps);
-		dev_kfree_skb_any(skb);
-	}
-
-	/* Check if we still have work to do. If so, re-queue this task to
-	 * poll for remaining timestamps.
-	 */
-	spin_lock(&tx->lock);
-	if (!bitmap_empty(tx->in_use, tx->len))
-		kthread_queue_work(pf->ptp.kworker, &tx->work);
-	spin_unlock(&tx->lock);
-}
-
 /**
  * ice_ptp_request_ts - Request an available Tx timestamp index
  * @tx: the PTP Tx timestamp tracker to request from
@@ -2195,172 +2361,6 @@ void ice_ptp_process_ts(struct ice_pf *pf)
 		kthread_queue_work(pf->ptp.kworker, &pf->ptp.port.tx.work);
 }
 
-/**
- * ice_ptp_alloc_tx_tracker - Initialize tracking for Tx timestamps
- * @tx: Tx tracking structure to initialize
- *
- * Assumes that the length has already been initialized. Do not call directly,
- * use the ice_ptp_init_tx_e822 or ice_ptp_init_tx_e810 instead.
- */
-static int
-ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
-{
-	tx->tstamps = kcalloc(tx->len, sizeof(*tx->tstamps), GFP_KERNEL);
-	if (!tx->tstamps)
-		return -ENOMEM;
-
-	tx->in_use = bitmap_zalloc(tx->len, GFP_KERNEL);
-	if (!tx->in_use) {
-		kfree(tx->tstamps);
-		tx->tstamps = NULL;
-		return -ENOMEM;
-	}
-
-	spin_lock_init(&tx->lock);
-	kthread_init_work(&tx->work, ice_ptp_tx_tstamp_work);
-
-	tx->init = 1;
-
-	return 0;
-}
-
-/**
- * ice_ptp_flush_tx_tracker - Flush any remaining timestamps from the tracker
- * @pf: Board private structure
- * @tx: the tracker to flush
- */
-static void
-ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
-{
-	u8 idx;
-
-	for (idx = 0; idx < tx->len; idx++) {
-		u8 phy_idx = idx + tx->quad_offset;
-
-		spin_lock(&tx->lock);
-		if (tx->tstamps[idx].skb) {
-			dev_kfree_skb_any(tx->tstamps[idx].skb);
-			tx->tstamps[idx].skb = NULL;
-			pf->ptp.tx_hwtstamp_flushed++;
-		}
-		clear_bit(idx, tx->in_use);
-		spin_unlock(&tx->lock);
-
-		/* Clear any potential residual timestamp in the PHY block */
-		if (!pf->hw.reset_ongoing)
-			ice_clear_phy_tstamp(&pf->hw, tx->quad, phy_idx);
-	}
-}
-
-/**
- * ice_ptp_release_tx_tracker - Release allocated memory for Tx tracker
- * @pf: Board private structure
- * @tx: Tx tracking structure to release
- *
- * Free memory associated with the Tx timestamp tracker.
- */
-static void
-ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
-{
-	tx->init = 0;
-
-	kthread_cancel_work_sync(&tx->work);
-
-	ice_ptp_flush_tx_tracker(pf, tx);
-
-	kfree(tx->tstamps);
-	tx->tstamps = NULL;
-
-	bitmap_free(tx->in_use);
-	tx->in_use = NULL;
-
-	tx->len = 0;
-}
-
-/**
- * ice_ptp_init_tx_e822 - Initialize tracking for Tx timestamps
- * @pf: Board private structure
- * @tx: the Tx tracking structure to initialize
- * @port: the port this structure tracks
- *
- * Initialize the Tx timestamp tracker for this port. For generic MAC devices,
- * the timestamp block is shared for all ports in the same quad. To avoid
- * ports using the same timestamp index, logically break the block of
- * registers into chunks based on the port number.
- */
-static int
-ice_ptp_init_tx_e822(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
-{
-	tx->quad = port / ICE_PORTS_PER_QUAD;
-	tx->quad_offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT;
-	tx->len = INDEX_PER_PORT;
-
-	return ice_ptp_alloc_tx_tracker(tx);
-}
-
-/**
- * ice_ptp_init_tx_e810 - Initialize tracking for Tx timestamps
- * @pf: Board private structure
- * @tx: the Tx tracking structure to initialize
- *
- * Initialize the Tx timestamp tracker for this PF. For E810 devices, each
- * port has its own block of timestamps, independent of the other ports.
- */
-static int
-ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
-{
-	tx->quad = pf->hw.port_info->lport;
-	tx->quad_offset = 0;
-	tx->len = INDEX_PER_QUAD;
-
-	return ice_ptp_alloc_tx_tracker(tx);
-}
-
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
-		ice_read_phy_tstamp(hw, tx->quad, idx + tx->quad_offset,
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
 static void ice_ptp_periodic_work(struct kthread_work *work)
 {
 	struct ice_ptp *ptp = container_of(work, struct ice_ptp, work.work);
-- 
2.37.1.208.ge72d93e88cb2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

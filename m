Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A9E712FCA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 May 2023 00:15:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86BD784DBD;
	Fri, 26 May 2023 22:15:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86BD784DBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685139355;
	bh=kZDMSwNzg/kCh975AL6rm6hn/hjWolaKrdPAPez68p8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WcNb83LUUYFQaHe+ncCXoV4wHwuFjaWQxrrHwECfr96c2RsADooRKQkNBvB7fHLCi
	 d+2z/t+R3BhTVLQe09Vwmuq45MRuLpsKqxZUhD4bgokZPGWFvTsrfIBH5Bo5oaRsdt
	 H0grmVHIx5dV6TIlRm7Uubt30z2J2iypAbzS8XmdG0R8jW7yXHDgbvitB0m3Nm6NUB
	 dvtIXrRt3w1t2uj14OqXo/dC7B6WlDq17t2urmWOvn8o2AVnPkPHBsRzTl8ASjsZjS
	 jkGrqNznT39st2lJu++GyOP6tekcmadiL08M9smL8kxxsR2s+c8Dyde3QU0R/1ZERx
	 dxvrXak1L6abA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WbpOreucSWrK; Fri, 26 May 2023 22:15:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A93083BD9;
	Fri, 26 May 2023 22:15:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A93083BD9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FEA51BF33D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:15:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA0EB42A97
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:15:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA0EB42A97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0OkCc01BkG5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 22:15:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCB1E42A96
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BCB1E42A96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:15:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="351825141"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="351825141"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 15:15:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="699547754"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="699547754"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 15:15:45 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 26 May 2023 15:15:41 -0700
Message-ID: <20230526221541.2682533-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685139346; x=1716675346;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iInv8haCPe+8CylaJxMKG+H26gTS/fDNmMSkti7BC2w=;
 b=KPGBuhvOH4XRtJp5c+29K+u0dS5Wa2jeZqNoVuRYO6cVaIph2Z1eZLCK
 gXzqDS8ZVQ1+q6GSqB6qODKzGNtRd6x/W4o0Jjv2G7On8DOAA1BkDPAjQ
 f36VwIqy0BISg216bgolwxTJbrT0uAe6cl5eVn237X0xRYJySn3lcV40n
 4KAL6DNOHfBWgjWK3a2cIhEla+uCGSMb8VA+IXwRo0C1VLP+8nzpgyq10
 3WLXYWzTvQk+PS5egnT6fHmhY17eK5BC0AJmdroR7hBnSRLhrhVhcpqhB
 Rm/IY0DgDzjlcO8kKcmUHzRgBwQXi3UE3ZKFfzs24b4nZ/LJUzz13USog
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KPGBuhvO
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: use spin_lock_bh for Tx
 timestamp tracker lock
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The Tx timestamp tracker lock is acquired during ice_ptp_tx_tstamp
which is now called from the ice_misc_intr_thread_fn(). As far as I can
understand, this thread function is run in softirq context, so it is
possible for the thread to interrupt another thread that is currently in
the critical section of this lock when using only spin_lock. This would
result in a deadlock.

The use of spin_lock was historically from when Tx timestamps were
processed within a separate kthread run in process context, thus making
spin_lock safe. This was changed when we moved to the threaded IRQ in
commit 1229b33973c7 ("ice: Add low latency Tx timestamp read").

Fix the lock access to use spin_lock_bh() to disable softirq on the current
CPU during the critical sections.

Fixes: 1229b33973c7 ("ice: Add low latency Tx timestamp read")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 30 ++++++++++++------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ac6f06f9a2ed..0eaadc53daed 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -751,7 +751,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 			drop_ts = true;
 
 skip_ts_read:
-		spin_lock(&tx->lock);
+		spin_lock_bh(&tx->lock);
 		if (tx->verify_cached && raw_tstamp)
 			tx->tstamps[idx].cached_tstamp = raw_tstamp;
 		clear_bit(idx, tx->in_use);
@@ -759,7 +759,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 		tx->tstamps[idx].skb = NULL;
 		if (test_and_clear_bit(idx, tx->stale))
 			drop_ts = true;
-		spin_unlock(&tx->lock);
+		spin_unlock_bh(&tx->lock);
 
 		/* It is unlikely but possible that the SKB will have been
 		 * flushed at this point due to link change or teardown.
@@ -786,9 +786,9 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	/* Check if we still have work to do. If so, re-queue this task to
 	 * poll for remaining timestamps.
 	 */
-	spin_lock(&tx->lock);
+	spin_lock_bh(&tx->lock);
 	more_timestamps = tx->init && !bitmap_empty(tx->in_use, tx->len);
-	spin_unlock(&tx->lock);
+	spin_unlock_bh(&tx->lock);
 
 	return !more_timestamps;
 }
@@ -862,12 +862,12 @@ ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 		if (!hw->reset_ongoing && (tstamp_ready & BIT_ULL(phy_idx)))
 			ice_clear_phy_tstamp(hw, tx->block, phy_idx);
 
-		spin_lock(&tx->lock);
+		spin_lock_bh(&tx->lock);
 		skb = tx->tstamps[idx].skb;
 		tx->tstamps[idx].skb = NULL;
 		clear_bit(idx, tx->in_use);
 		clear_bit(idx, tx->stale);
-		spin_unlock(&tx->lock);
+		spin_unlock_bh(&tx->lock);
 
 		/* Count the number of Tx timestamps flushed */
 		pf->ptp.tx_hwtstamp_flushed++;
@@ -891,9 +891,9 @@ ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 static void
 ice_ptp_mark_tx_tracker_stale(struct ice_ptp_tx *tx)
 {
-	spin_lock(&tx->lock);
+	spin_lock_bh(&tx->lock);
 	bitmap_or(tx->stale, tx->stale, tx->in_use, tx->len);
-	spin_unlock(&tx->lock);
+	spin_unlock_bh(&tx->lock);
 }
 
 /**
@@ -906,9 +906,9 @@ ice_ptp_mark_tx_tracker_stale(struct ice_ptp_tx *tx)
 static void
 ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 {
-	spin_lock(&tx->lock);
+	spin_lock_bh(&tx->lock);
 	tx->init = 0;
-	spin_unlock(&tx->lock);
+	spin_unlock_bh(&tx->lock);
 
 	/* wait for potentially outstanding interrupt to complete */
 	synchronize_irq(pf->msix_entries[pf->oicr_idx].vector);
@@ -1321,7 +1321,7 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 	kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
 
 	/* temporarily disable Tx timestamps while calibrating PHY offset */
-	spin_lock(&ptp_port->tx.lock);
+	spin_lock_bh(&ptp_port->tx.lock);
 	ptp_port->tx.calibrating = true;
 	spin_unlock(&ptp_port->tx.lock);
 	ptp_port->tx_fifo_busy_cnt = 0;
@@ -1332,7 +1332,7 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 		goto out_unlock;
 
 	/* Enable Tx timestamps right away */
-	spin_lock(&ptp_port->tx.lock);
+	spin_lock_bh(&ptp_port->tx.lock);
 	ptp_port->tx.calibrating = false;
 	spin_unlock(&ptp_port->tx.lock);
 
@@ -2392,11 +2392,11 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 {
 	u8 idx;
 
-	spin_lock(&tx->lock);
+	spin_lock_bh(&tx->lock);
 
 	/* Check that this tracker is accepting new timestamp requests */
 	if (!ice_ptp_is_tx_tracker_up(tx)) {
-		spin_unlock(&tx->lock);
+		spin_unlock_bh(&tx->lock);
 		return -1;
 	}
 
@@ -2415,7 +2415,7 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 		ice_trace(tx_tstamp_request, skb, idx);
 	}
 
-	spin_unlock(&tx->lock);
+	spin_unlock_bh(&tx->lock);
 
 	/* return the appropriate PHY timestamp register index, -1 if no
 	 * indexes were available.

base-commit: 125f965c29f1ba72064f7f6e9c9aad3311bd2eb1
-- 
2.40.0.471.gbd7f14d9353b

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

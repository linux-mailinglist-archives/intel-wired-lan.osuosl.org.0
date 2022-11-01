Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09858615555
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 23:54:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C7D34070F;
	Tue,  1 Nov 2022 22:53:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C7D34070F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667343239;
	bh=/jPUyLyYhYfnzBrLeg2dqKiBKbic94Gp2bOMQ4TKCiY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QU6aXKk6aZBxGl+VJq6nFoCVqCJY7XEooriOIvbtFjExhrLgTTiyXHXaOFUoXmLPF
	 mBo7b0yj55PDS7eE94NS7v4vgkquaup06oj79zM9KnALdy2UkEff6OQdAxB+C9jmp4
	 +R2JVSOoF63jin/0/aS1VnPSlV+YrBhBZuEq8GYvFJu/ZvAUgxlx1dFCHN3rjFWQ0O
	 uF6Oi4XnNefCMgwi3I+lEHHgNTF1WJ8AzhPXSpXte3N0XM1hpoBmLJSA2tWNKVLQxr
	 YGxLKQMPWTrK2wFpCFVoka1jNSFxWZ9FaHM3MvsJ8KoEL3DizvDW6Zrz3x1g97devz
	 ykkT7LCpK0oCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hssm15kRF96y; Tue,  1 Nov 2022 22:53:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7016840141;
	Tue,  1 Nov 2022 22:53:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7016840141
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 44DF31BF95C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 182DB410A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 182DB410A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z4MYeh3Ik8Wh for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E237E4098F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E237E4098F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="371348114"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="371348114"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="723324041"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="723324041"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue,  1 Nov 2022 15:52:33 -0700
Message-Id: <20221101225240.421525-9-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221101225240.421525-1-jacob.e.keller@intel.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667343191; x=1698879191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LiarsbGWNmxaHBHHX4M5bYaW7cU6RsYt+mcRm2ky+SA=;
 b=C2W1NwkWoO20xK3j9ABsvK4oZJuRGys72eya6AAm42cPi7Q42Xm7Oycd
 ITNmH8otHo7zf1BFvj2LcAWmq3s65YPw5ch8ktzmPgrcW7UAielf20FxL
 S8mybGaCqw6JxVCXDkORU+CK2+nT3/GW2/pSbGC9J9YAJ+5JVMw3HBIef
 PGe1uKeK9aC7yPzZDBcwVWdiaB6QH8xGgAl6pL0Cb/i5BPx3YCv97j+ph
 /u3UK26r4LPvsUwrkqbNGLbOEd9Hf5rpjZwf8J/SK2NRIwUDEoD8E7gnk
 rQVEeGRY6+xejcGZBK+ff5Wpcd1fEnu0REu38SPLVN3O7rft5AYU05snN
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C2W1NwkW
Subject: [Intel-wired-lan] [PATCH net-next 08/15] ice: protect init and
 calibrating fields with spinlock
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

Ensure that the init and calibrating fields of the PTP Tx timestamp tracker
structure are only modified under the spin lock. This ensures that the
accesses are consistent and that new timestamp requests will either begin
completely or get ignored.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 57 +++++++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp.h |  2 +-
 2 files changed, 53 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 39c68a272c6a..e2c2b1e52346 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -599,6 +599,42 @@ static u64 ice_ptp_extend_40b_ts(struct ice_pf *pf, u64 in_tstamp)
 				     (in_tstamp >> 8) & mask);
 }
 
+/**
+ * ice_ptp_is_tx_tracker_init - Check if the Tx tracker is initialized
+ * @tx: the PTP Tx timestamp tracker to check
+ *
+ * Check that a given PTP Tx timestamp tracker is initialized. Acquires the
+ * tx->lock spinlock.
+ */
+static bool
+ice_ptp_is_tx_tracker_init(struct ice_ptp_tx *tx)
+{
+	bool init;
+
+	spin_lock(&tx->lock);
+	init = tx->init;
+	spin_unlock(&tx->lock);
+
+	return init;
+}
+
+/**
+ * ice_ptp_is_tx_tracker_up - Check if Tx tracker is ready for new timestamps
+ * @tx: the PTP Tx timestamp tracker to check
+ *
+ * Check that a given PTP Tx timestamp tracker is up, i.e. that it is ready
+ * to accept new timestamp requests.
+ *
+ * Assumes the tx->lock spinlock is already held.
+ */
+static bool
+ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
+{
+	lockdep_assert_held(&tx->lock);
+
+	return tx->init && !tx->calibrating;
+}
+
 /**
  * ice_ptp_tx_tstamp - Process Tx timestamps for a port
  * @tx: the PTP Tx timestamp tracker
@@ -660,7 +696,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	int err;
 	u8 idx;
 
-	if (!tx->init)
+	if (!ice_ptp_is_tx_tracker_init(tx))
 		return false;
 
 	ptp_port = container_of(tx, struct ice_ptp_port, tx);
@@ -788,7 +824,9 @@ ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
 
 	spin_lock_init(&tx->lock);
 
+	spin_lock(&tx->lock);
 	tx->init = 1;
+	spin_unlock(&tx->lock);
 
 	return 0;
 }
@@ -831,7 +869,9 @@ ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 static void
 ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 {
+	spin_lock(&tx->lock);
 	tx->init = 0;
+	spin_unlock(&tx->lock);
 
 	ice_ptp_flush_tx_tracker(pf, tx);
 
@@ -1296,7 +1336,9 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 	kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
 
 	/* temporarily disable Tx timestamps while calibrating PHY offset */
+	spin_lock(&ptp_port->tx.lock);
 	ptp_port->tx.calibrating = true;
+	spin_unlock(&ptp_port->tx.lock);
 	ptp_port->tx_fifo_busy_cnt = 0;
 
 	/* Start the PHY timer in Vernier mode */
@@ -1305,7 +1347,9 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 		goto out_unlock;
 
 	/* Enable Tx timestamps right away */
+	spin_lock(&ptp_port->tx.lock);
 	ptp_port->tx.calibrating = false;
+	spin_unlock(&ptp_port->tx.lock);
 
 	kthread_queue_delayed_work(pf->ptp.kworker, &ptp_port->ov_work, 0);
 
@@ -2364,11 +2408,14 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 {
 	u8 idx;
 
-	/* Check if this tracker is initialized */
-	if (!tx->init || tx->calibrating)
-		return -1;
-
 	spin_lock(&tx->lock);
+
+	/* Check that this tracker is accepting new timestamp requests */
+	if (!ice_ptp_is_tx_tracker_up(tx)) {
+		spin_unlock(&tx->lock);
+		return -1;
+	}
+
 	/* Find and set the first available index */
 	idx = find_first_zero_bit(tx->in_use, tx->len);
 	if (idx < tx->len) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 28b1dc901819..5c7442aa6d88 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -105,7 +105,7 @@ struct ice_tx_tstamp {
 
 /**
  * struct ice_ptp_tx - Tracking structure for all Tx timestamp requests on a port
- * @lock: lock to prevent concurrent write to in_use bitmap
+ * @lock: lock to prevent concurrent access to fields of this struct
  * @tstamps: array of len to store outstanding requests
  * @in_use: bitmap of len to indicate which slots are in use
  * @block: which memory block (quad or port) the timestamps are captured in
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

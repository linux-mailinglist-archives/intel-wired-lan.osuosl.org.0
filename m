Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 680AF6434E7
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 20:53:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 094ED40459;
	Mon,  5 Dec 2022 19:53:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 094ED40459
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670270034;
	bh=vDjXqrQRmHahvY/444aR0MGw/FcJywR4nZK0Dz42Tug=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ArC0HBEOUhYXKYSrVn4PyRpV5IzhhvDzT7AwNdf9dlkSVk08wiO6+FUtZQToGD0WD
	 TZTufyZ5RSaC+P36np1hVs2/lNEGU/vf/cdOZhiGfUrE7xQpDl3lr5TbHu8rFC3EHn
	 nsGpH5mZq5YQwrEFVfQkGkHePkrAgKTIOnoKawyGaXoEhp3ReAcoThysMje5gUbnpK
	 q0sWlYlB06CxdcF3T060V2btkS/KeM8Ve4w8Kaj1of/HxN6GKARsgdh27bqU+Ok7EV
	 ghct2SZ84P6rmGsmIaSv+EHb07rk4sS2ZBiqDsHEZ4iF+PmToQxhwXoB5//tCZ1Ygs
	 2KghjbM9AnoXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UNILGmaXPLnZ; Mon,  5 Dec 2022 19:53:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5D19405B8;
	Mon,  5 Dec 2022 19:53:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5D19405B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0EA2F1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2448160F56
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2448160F56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYlx4eT_C1JB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 19:53:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 327F660DF0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 327F660DF0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317592384"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="317592384"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="709379309"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="709379309"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  5 Dec 2022 11:52:47 -0800
Message-Id: <20221205195253.2475492-10-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20221205195253.2475492-1-jacob.e.keller@intel.com>
References: <20221205195253.2475492-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670269984; x=1701805984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZBovYRegfAwnVQ4yQhd4vB56IG7nomgaTDWjPY7ASjo=;
 b=fFH42Y0oMFY8QsydxO81Fei3BYb26p/egE4oM0JXCou+rIMnIPbb7NDL
 kn5/M1DineEYHFCrE15OkGs20dn5V1ivR2g3zzTOSPv48ZJ0R7I3TRO3X
 xav9u8C0jjUbEaleKGynVUt/gYKSR+F31bEf3ZvJzEYpT98eF1TzpDyb4
 Ti69dHINi/nEQd5AIGF+VyIK5x4SMpYWci3+zapTN4ABiVXWR4gpbM5A6
 rlqJntScs+oQxjB26REvBCTCQtrutJZl/DVJh6TED+BOzg+ZQWWS/NeVq
 c8FFI/AacpinYgFi+5QWjktlzvMHu9A+s4heqBMFwa7lUTEtpqhqrzfSB
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fFH42Y0o
Subject: [Intel-wired-lan] [PATCH net-next v3 09/15] ice: protect init and
 calibrating check in ice_ptp_request_ts
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

When requesting a new timestamp, the ice_ptp_request_ts function does not
hold the Tx tracker lock while checking init and calibrating. This means
that we might issue a new timestamp request just after the Tx timestamp
tracker starts being deinitialized. This could lead to incorrect access of
the timestamp structures. Correct this by moving the init and calibrating
checks under the lock, and updating the flows which modify these fields to
use the lock.

Note that we do not need to hold the lock while checking for tx->init in
ice_ptp_tstamp_tx. This is because the teardown function will use
synchronize_irq after clearing the flag to ensure that the threaded
interrupt completes. Either a) the tx->init flag will be cleared before the
ice_ptp_tx_tstamp function starts, thus it will exit immediately, or b) the
threaded interrupt will be executing and the synchronize_irq will wait
until the threaded interrupt has completed at which point we know the init
field has definitely been set and new interrupts will not execute the Tx
timestamp thread function.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v2:
* Leon pointed out that checking init under lock in ice_ptp_tx_tstamp made
  no sense. The helper function and change to the code there was removed.
  Note that the protection for that function is synchronize_irq now added to
  the series before this patch.
* Removed unnecessary lock in ice_ptp_alloc_tx_tracker: we're already
  initializing the spin lock here so its already expected that no thread
  could be trying to grab the lock right now anyways.
* Re-wrote commit message and tried to explain the reasoning better.

 drivers/net/ethernet/intel/ice/ice_ptp.c | 38 ++++++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp.h |  2 +-
 2 files changed, 33 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0282ccc55819..481492d84e0e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -599,6 +599,23 @@ static u64 ice_ptp_extend_40b_ts(struct ice_pf *pf, u64 in_tstamp)
 				     (in_tstamp >> 8) & mask);
 }
 
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
@@ -788,10 +805,10 @@ ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
 		return -ENOMEM;
 	}
 
-	spin_lock_init(&tx->lock);
-
 	tx->init = 1;
 
+	spin_lock_init(&tx->lock);
+
 	return 0;
 }
 
@@ -833,7 +850,9 @@ ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 static void
 ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 {
+	spin_lock(&tx->lock);
 	tx->init = 0;
+	spin_unlock(&tx->lock);
 
 	/* wait for potentially outstanding interrupt to complete */
 	synchronize_irq(pf->msix_entries[pf->oicr_idx].vector);
@@ -1327,7 +1346,9 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 	kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
 
 	/* temporarily disable Tx timestamps while calibrating PHY offset */
+	spin_lock(&ptp_port->tx.lock);
 	ptp_port->tx.calibrating = true;
+	spin_unlock(&ptp_port->tx.lock);
 	ptp_port->tx_fifo_busy_cnt = 0;
 
 	/* Start the PHY timer in Vernier mode */
@@ -1336,7 +1357,9 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 		goto out_unlock;
 
 	/* Enable Tx timestamps right away */
+	spin_lock(&ptp_port->tx.lock);
 	ptp_port->tx.calibrating = false;
+	spin_unlock(&ptp_port->tx.lock);
 
 	kthread_queue_delayed_work(pf->ptp.kworker, &ptp_port->ov_work, 0);
 
@@ -2330,11 +2353,14 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
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
index 5052fc41bed3..0bfafaaab6c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -110,7 +110,7 @@ struct ice_tx_tstamp {
 
 /**
  * struct ice_ptp_tx - Tracking structure for all Tx timestamp requests on a port
- * @lock: lock to prevent concurrent write to in_use bitmap
+ * @lock: lock to prevent concurrent access to fields of this struct
  * @tstamps: array of len to store outstanding requests
  * @in_use: bitmap of len to indicate which slots are in use
  * @block: which memory block (quad or port) the timestamps are captured in
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

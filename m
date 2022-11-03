Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A87618B0B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 23:02:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 372F04186A;
	Thu,  3 Nov 2022 22:02:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 372F04186A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667512956;
	bh=Ni3lbnKr7aVWqHdQRJmcbTKBd6sCa7wXcaCpi9iGoEo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zFjEr8k+PwXEwnX3nPviTZ53wC/viKp2uopdvDQAyJHa9uPM7jfnBNXFY3lTvWXnp
	 aR7K8yqJjodLaeZPWvDeGfkaHse6Sze8K68ZBWxgipYlVwHP2jG4mkCJJDwlIvxItM
	 3vEpIl+kkKyzxKL9jYKP/G7N4m3JPI05GgkViOxNbt7co+ig320SLv95+IuJWLRTaM
	 qLsxPu6/xlr1HgYaihBMlbdZOjWIrFBu93RPPAQFGmN0G2XIKke9hJ3aFOEs5WL8xT
	 EiwEvggBRx31ZkPSCdfsi9M3SXLTCYFJsJPzRVkHhgOmDOI8oYtK/hjihDQNrb74lu
	 xXDLgCs1gPOwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZpyH9nvpidzF; Thu,  3 Nov 2022 22:02:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3B2841857;
	Thu,  3 Nov 2022 22:02:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3B2841857
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 705701BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F0A4181F94
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0A4181F94
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZPGqKKIL9C3n for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B360681F59
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B360681F59
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:01:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="307436985"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="307436985"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:59 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="777480275"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="777480275"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:58 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  3 Nov 2022 15:01:38 -0700
Message-Id: <20221103220145.1851114-9-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221103220145.1851114-1-jacob.e.keller@intel.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667512919; x=1699048919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D/fa+5gs5v8PLrY3nmfXk+G9EQvVxkaQL462eqHTs1E=;
 b=JChpKHTKGtgURVFjufCgDDEqrq8waTKP+UbPyJQeMFM2upIoRJT1rO1l
 4jVVZzhCR+1oqHcx8LHy5401k3gRQNlldaK7hTJxFfjiSoid3+9BYBbE4
 oNW5a/B98N8AjIx3VCoFRLa9DZeNvK5D5PuKsjNPy413pN5vJFZ7+8Wny
 ZdlxZ77V7SnOifucsdyA0RaWycEepx0IIPdyxR8F5yxdiGNghjMTqENC+
 fve8t/DugRn8NEgYQcABeeKBV2sAB6eiYofUXf/9hUMbCbcPr/ZOgeOhH
 bY/QwQxyqFp+RmXJkberubdUNKjGSUSjWOe81xJbX2Xm+MiDTQsjhkDz0
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JChpKHTK
Subject: [Intel-wired-lan] [PATCH net-next v2 08/15] ice: protect init and
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
No changes since v1

 drivers/net/ethernet/intel/ice/ice_ptp.c | 57 +++++++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp.h |  2 +-
 2 files changed, 53 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 12180f0b98d1..dbd4aacfcb0f 100644
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
 
@@ -1302,7 +1342,9 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 	kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
 
 	/* temporarily disable Tx timestamps while calibrating PHY offset */
+	spin_lock(&ptp_port->tx.lock);
 	ptp_port->tx.calibrating = true;
+	spin_unlock(&ptp_port->tx.lock);
 	ptp_port->tx_fifo_busy_cnt = 0;
 
 	/* Start the PHY timer in Vernier mode */
@@ -1311,7 +1353,9 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 		goto out_unlock;
 
 	/* Enable Tx timestamps right away */
+	spin_lock(&ptp_port->tx.lock);
 	ptp_port->tx.calibrating = false;
+	spin_unlock(&ptp_port->tx.lock);
 
 	kthread_queue_delayed_work(pf->ptp.kworker, &ptp_port->ov_work, 0);
 
@@ -2370,11 +2414,14 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
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
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0ED583592
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 01:16:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 942B841705;
	Wed, 27 Jul 2022 23:16:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 942B841705
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658963813;
	bh=lY8qrLRMny8hhhUNyUNSBF0Yokfkfe12BULFe3FVHe8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PH5Jkx2Lgt+o2CoWav83/f3xTmwO3WQteHR+j3EFB4ElhdKtDaJut5zQy2mAgTQeX
	 MQtWLGfu8417j4kbacl6cV3oEa07VelDsTYDNsZZS0ybqJu9RedI+GOdSc8bRVtX4s
	 dg/pkmw7low0NoEgm9KKaKxoaIDUIxEb/WvpYfbwFfkjjhfULra6q7NApJZ7XlnnoJ
	 gCivlhWBmz3e2U7J8P/HOANWldRaAmUQ5+ptW01T2s7iJZlasth/o35o9eF5a8nFXJ
	 byd2tFR7CsUMR+UFJi+OBWd0vm8Uv9gSphGpqUWixIZD65o9frdRBgJ7OtfbmG0g9B
	 rItxpDaQ7YPBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UPFDFlOx4VTg; Wed, 27 Jul 2022 23:16:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBDB6416ED;
	Wed, 27 Jul 2022 23:16:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBDB6416ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E91BD1BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CFAF4416E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFAF4416E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mOW4DpClo-5J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 23:16:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 689EA415BF
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 689EA415BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="352365995"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="352365995"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:16:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="846448022"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:16:10 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 27 Jul 2022 16:16:02 -0700
Message-Id: <20220727231602.1625980-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.37.1.208.ge72d93e88cb2
In-Reply-To: <20220727231602.1625980-1-jacob.e.keller@intel.com>
References: <20220727231602.1625980-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658963794; x=1690499794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bQvz/EdIPECCJMzw21pkqR9Z8oogxDhZaAB9lKDbi1Y=;
 b=GDCrIrZHS+wU0YPrEnhUaXxjia0dGuJieoy+phButtP5lcTMd77ASy9D
 dhZLdeMDOUwSVxAOHkGdECMR6hMbbXMYLbtmUO43wEf8XKQ8dAIUKPEsD
 53g3SSlCkT0XRekMDQEd8T54BgxQBfkjsp5TqRsB0ylWC3OZwIa80anxw
 WeI6wp2aEOXNYlg+TUD1adpqdEvMS6DgPnlK/wYTS9qoqSiWdbnTaX+Cd
 8WwkGU4eFuiEjD455woLEjK7kOvo0TThRkNhwzmFYe15vpb6Hj4imzusX
 1rtKT/pDRUZgs9i0hcpIZZwL3yW7LY8FHYS5d6Le5eXXdUNVxQ9v4SDlT
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GDCrIrZH
Subject: [Intel-wired-lan] [net-next v2 6/6] ice: introduce
 ice_ptp_reset_cached_phctime function
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

If the PTP hardware clock is adjusted, the ice driver must update the
cached PHC timestamp. This is required in order to perform timestamp
extension on the shorter timestamps captured by the PHY.

Currently, we simply call ice_ptp_update_cached_phctime in the settime and
adjtime callbacks. This has a few issues:

1) if ICE_CFG_BUSY is set because another thread is updating the Rx rings,
   we will exit with an error. This is not checked, and the functions do
   not re-schedule the update. This could leave the cached timestamp
   incorrect until the next scheduled work item execution.

2) even if we did handle an update, any currently outstanding Tx timestamp
   would be extended using the wrong cached PHC time. This would produce
   incorrect results.

To fix these issues, introduce a new ice_ptp_reset_cached_phctime function.
This function calls the ice_ptp_update_cached_phctime, and discards
outstanding Tx timestamps.

If the ice_ptp_update_cached_phctime function fails because ICE_CFG_BUSY is
set, we log a warning and schedule the thread to execute soon. The update
function is modified so that it always updates the cached copy in the PF
regardless. This ensures we have the most up to date values possible and
minimizes the risk of a packet timestamp being extended with the wrong
value.

It would be nice if we could skip reporting Rx timestamps until the cached
values are up to date. However, we can't access the Rx rings while
ICE_CFG_BUSY is set because they are actively being updated by another
thread.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 99 ++++++++++++++++++------
 1 file changed, 76 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index f125b8135348..5a2fd4d690f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -880,8 +880,10 @@ static void ice_ptp_tx_tstamp_cleanup(struct ice_pf *pf, struct ice_ptp_tx *tx)
  * structure and the Rx rings.
  *
  * This function must be called periodically to ensure that the cached value
- * is never more than 2 seconds old. It must also be called whenever the PHC
- * time has been changed.
+ * is never more than 2 seconds old.
+ *
+ * Note that the cached copy in the PF PTP structure is always updated, even
+ * if we can't update the copy in the Rx rings.
  *
  * Return:
  * * 0 - OK, successfully updated
@@ -894,9 +896,6 @@ static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
 	u64 systime;
 	int i;
 
-	if (test_and_set_bit(ICE_CFG_BUSY, pf->state))
-		return -EAGAIN;
-
 	update_before = pf->ptp.cached_phc_jiffies + msecs_to_jiffies(2000);
 	if (pf->ptp.cached_phc_time &&
 	    time_is_before_jiffies(update_before)) {
@@ -914,6 +913,9 @@ static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
 	WRITE_ONCE(pf->ptp.cached_phc_time, systime);
 	WRITE_ONCE(pf->ptp.cached_phc_jiffies, jiffies);
 
+	if (test_and_set_bit(ICE_CFG_BUSY, pf->state))
+		return -EAGAIN;
+
 	ice_for_each_vsi(pf, i) {
 		struct ice_vsi *vsi = pf->vsi[i];
 		int j;
@@ -935,6 +937,52 @@ static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
 	return 0;
 }
 
+/**
+ * ice_ptp_reset_cached_phctime - Reset cached PHC time after an update
+ * @pf: Board specific private structure
+ *
+ * This function must be called when the cached PHC time is no longer valid,
+ * such as after a time adjustment. It discards any outstanding Tx timestamps,
+ * and updates the cached PHC time for both the PF and Rx rings. If updating
+ * the PHC time cannot be done immediately, a warning message is logged and
+ * the work item is scheduled.
+ *
+ * These steps are required in order to ensure that we do not accidentally
+ * report a timestamp extended by the wrong PHC cached copy. Note that we
+ * do not directly update the cached timestamp here because it is possible
+ * this might produce an error when ICE_CFG_BUSY is set. If this occurred, we
+ * would have to try again. During that time window, timestamps might be
+ * requested and returned with an invalid extension. Thus, on failure to
+ * immediately update the cached PHC time we would need to zero the value
+ * anyways. For this reason, we just zero the value immediately and queue the
+ * update work item.
+ */
+static void ice_ptp_reset_cached_phctime(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	int err;
+
+	/* Update the cached PHC time immediately if possible, otherwise
+	 * schedule the work item to execute soon.
+	 */
+	err = ice_ptp_update_cached_phctime(pf);
+	if (err) {
+		/* If another thread is updating the Rx rings, we won't
+		 * properly reset them here. This could lead to reporting of
+		 * invalid timestamps, but there isn't much we can do.
+		 */
+		dev_warn(dev, "%s: ICE_CFG_BUSY, unable to immediately update cached PHC time\n",
+			 __func__);
+
+		/* Queue the work item to update the Rx rings when possible */
+		kthread_queue_delayed_work(pf->ptp.kworker, &pf->ptp.work,
+					   msecs_to_jiffies(10));
+	}
+
+	/* Flush any outstanding Tx timestamps */
+	ice_ptp_flush_tx_tracker(pf, &pf->ptp.port.tx);
+}
+
 /**
  * ice_ptp_read_time - Read the time from the device
  * @pf: Board private structure
@@ -1803,7 +1851,7 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	ice_ptp_unlock(hw);
 
 	if (!err)
-		ice_ptp_update_cached_phctime(pf);
+		ice_ptp_reset_cached_phctime(pf);
 
 	/* Reenable periodic outputs */
 	ice_ptp_enable_all_clkout(pf);
@@ -1882,7 +1930,7 @@ static int ice_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
 		return err;
 	}
 
-	ice_ptp_update_cached_phctime(pf);
+	ice_ptp_reset_cached_phctime(pf);
 
 	return 0;
 }
@@ -2090,26 +2138,31 @@ void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb)
 {
+	struct skb_shared_hwtstamps *hwtstamps;
+	u64 ts_ns, cached_time;
 	u32 ts_high;
-	u64 ts_ns;
 
-	/* Populate timesync data into skb */
-	if (rx_desc->wb.time_stamp_low & ICE_PTP_TS_VALID) {
-		struct skb_shared_hwtstamps *hwtstamps;
+	if (!(rx_desc->wb.time_stamp_low & ICE_PTP_TS_VALID))
+		return;
 
-		/* Use ice_ptp_extend_32b_ts directly, using the ring-specific
-		 * cached PHC value, rather than accessing the PF. This also
-		 * allows us to simply pass the upper 32bits of nanoseconds
-		 * directly. Calling ice_ptp_extend_40b_ts is unnecessary as
-		 * it would just discard these bits itself.
-		 */
-		ts_high = le32_to_cpu(rx_desc->wb.flex_ts.ts_high);
-		ts_ns = ice_ptp_extend_32b_ts(rx_ring->cached_phctime, ts_high);
+	cached_time = READ_ONCE(rx_ring->cached_phctime);
 
-		hwtstamps = skb_hwtstamps(skb);
-		memset(hwtstamps, 0, sizeof(*hwtstamps));
-		hwtstamps->hwtstamp = ns_to_ktime(ts_ns);
-	}
+	/* Do not report a timestamp if we don't have a cached PHC time */
+	if (!cached_time)
+		return;
+
+	/* Use ice_ptp_extend_32b_ts directly, using the ring-specific cached
+	 * PHC value, rather than accessing the PF. This also allows us to
+	 * simply pass the upper 32bits of nanoseconds directly. Calling
+	 * ice_ptp_extend_40b_ts is unnecessary as it would just discard these
+	 * bits itself.
+	 */
+	ts_high = le32_to_cpu(rx_desc->wb.flex_ts.ts_high);
+	ts_ns = ice_ptp_extend_32b_ts(cached_time, ts_high);
+
+	hwtstamps = skb_hwtstamps(skb);
+	memset(hwtstamps, 0, sizeof(*hwtstamps));
+	hwtstamps->hwtstamp = ns_to_ktime(ts_ns);
 }
 
 /**
-- 
2.37.1.208.ge72d93e88cb2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

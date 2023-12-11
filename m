Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4099C80CEEA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 16:03:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD6DC613E7;
	Mon, 11 Dec 2023 15:03:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD6DC613E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702306984;
	bh=6TsDLqnsVOKisevJmlwuv7xJaEZOuO8whkJuBz3rGlc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aIGX8tQHwV2ECu3582pwwvMvyFv0JurjASGR8hlx4umgx+Jm3wXurLKdnRoiDDCzj
	 6SGGgAlRRm8OhDx8g8ovWaCbm0UgdluGkOZBemAxTBp7+C4TVLf/FGBczRnIuhdnjo
	 3QuMGfp2q9VTm1hzkTRAOgb/OzinISu8MN+JJ6QW+jH29CtJ7MsPe73FJQe2y0MvbX
	 MUxOhoXYWaZx1dnrbp7rcHD/Oy7HmIWU3iEcN1YdmHpk8I39nw8njwVYPV6WUDcozV
	 qEAZMpBQco6uEJt0olOHNX8EwUpUMMwLoUELT17A6gqX1UypWRqa/brNsLy0e2aVqS
	 61uj4XKA87ugg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xn44HdjP5V0w; Mon, 11 Dec 2023 15:03:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BCF460B77;
	Mon, 11 Dec 2023 15:03:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BCF460B77
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58B551BF860
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 15:02:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 31A6A81E5E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 15:02:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31A6A81E5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rYFPUlMDvfAF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 15:02:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5944981DF7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 15:02:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5944981DF7
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="393532323"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="393532323"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 07:02:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="773090878"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="773090878"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orsmga002.jf.intel.com with ESMTP; 11 Dec 2023 07:02:41 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 Dec 2023 16:02:25 +0100
Message-Id: <20231211150226.295090-6-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231211150226.295090-1-karol.kolacinski@intel.com>
References: <20231211150226.295090-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702306963; x=1733842963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VnwyVz/als6ND0e+M5LMpjpd2Guu+1/tbRYrhW2T/qs=;
 b=YIho58oDCTGBKqtWODBQ+WC7CxyfzcUd6b4J0BoSWL8yq8QdZD9GLulT
 lANuAxxv9I5ffBiWX3KZIu7WX4A3f5hW1a/FjchGTeDDMBxPq6Sot9m9Y
 CeJukVzZgEMP6oM+9GYXbiIqnIPaKY0tb9FF5GuQgvnFBbUkMgmJXjo5R
 cMCuR0d+OHMnViNrcJ0FHu/bquW8UqyQOO9QWK63SQhaKb5/H7wo49aoq
 7/gCP6eMa4y9LsEGrZu+F7dP6i8wIIM3IixYHvdBENZx/ctJX6f3IVz83
 F0Pi2WjnJNJrVfudmRsAk2drak7SLzRQQtBsj5iLUmcmTRLW5C3roRpBY
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YIho58oD
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 5/6] ice: factor out
 ice_ptp_rebuild_owner()
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

The ice_ptp_reset() function uses a goto to skip past clock owner
operations if performing a PF reset or if the device is not the clock
owner. This is a bit confusing. Factor this out into
ice_ptp_rebuild_owner() instead.

The ice_ptp_reset() function is called by ice_rebuild() to restore PTP
functionality after a device reset. Follow the convention set by the
ice_main.c file and rename this function to ice_ptp_rebuild(), in the
same way that we have ice_prepare_for_reset() and
ice_ptp_prepare_for_reset().

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 66 ++++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  6 +--
 3 files changed, 44 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3d2d8728d9e3..d1bc1cc855e8 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7497,7 +7497,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	 * fail.
 	 */
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
-		ice_ptp_reset(pf, reset_type);
+		ice_ptp_rebuild(pf, reset_type);
 
 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
 		ice_gnss_init(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d0d30723d6dd..2f862b2e1a90 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2671,11 +2671,13 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 }
 
 /**
- * ice_ptp_reset - Initialize PTP hardware clock support after reset
+ * ice_ptp_rebuild_owner - Initialize PTP clock owner after reset
  * @pf: Board private structure
- * @reset_type: the reset type being performed
+ *
+ * Companion function for ice_ptp_rebuild() which handles tasks that only the
+ * PTP clock owner instance should perform.
  */
-void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
+static int ice_ptp_rebuild_owner(struct ice_pf *pf)
 {
 	struct ice_ptp *ptp = &pf->ptp;
 	struct ice_hw *hw = &pf->hw;
@@ -2683,34 +2685,21 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	u64 time_diff;
 	int err;
 
-	if (ptp->state != ICE_PTP_RESETTING) {
-		if (ptp->state == ICE_PTP_READY) {
-			ice_ptp_prepare_for_reset(pf, reset_type);
-		} else {
-			err = -EINVAL;
-			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
-			goto err;
-		}
-	}
-
-	if (reset_type == ICE_RESET_PFR || !ice_pf_src_tmr_owned(pf))
-		goto pfr;
-
 	err = ice_ptp_init_phc(hw);
 	if (err)
-		goto err;
+		return err;
 
 	/* Acquire the global hardware lock */
 	if (!ice_ptp_lock(hw)) {
 		err = -EBUSY;
-		goto err;
+		return err;
 	}
 
 	/* Write the increment time value to PHY and LAN */
 	err = ice_ptp_write_incval(hw, ice_base_incval(pf));
 	if (err) {
 		ice_ptp_unlock(hw);
-		goto err;
+		return err;
 	}
 
 	/* Write the initial Time value to PHY and LAN using the cached PHC
@@ -2726,7 +2715,7 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	err = ice_ptp_write_init(pf, &ts);
 	if (err) {
 		ice_ptp_unlock(hw);
-		goto err;
+		return err;
 	}
 
 	/* Release the global hardware lock */
@@ -2735,11 +2724,41 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	if (!ice_is_e810(hw)) {
 		/* Enable quad interrupts */
 		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
+		if (err)
+			return err;
+
+		ice_ptp_restart_all_phy(pf);
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_rebuild - Initialize PTP hardware clock support after reset
+ * @pf: Board private structure
+ * @reset_type: the reset type being performed
+ */
+void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
+{
+	struct ice_ptp *ptp = &pf->ptp;
+	int err;
+
+	if (ptp->state != ICE_PTP_RESETTING) {
+		if (ptp->state == ICE_PTP_READY) {
+			ice_ptp_prepare_for_reset(pf, reset_type);
+		} else {
+			err = -EINVAL;
+			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
+			goto err;
+		}
+	}
+
+	if (ice_pf_src_tmr_owned(pf) && reset_type != ICE_RESET_PFR) {
+		err = ice_ptp_rebuild_owner(pf);
 		if (err)
 			goto err;
 	}
 
-pfr:
 	/* Init Tx structures */
 	if (ice_is_e810(&pf->hw)) {
 		err = ice_ptp_init_tx_e810(pf, &ptp->port.tx);
@@ -2754,11 +2773,6 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ptp->state = ICE_PTP_READY;
 
-	/* Restart the PHY timestamping block */
-	if (!test_bit(ICE_PFR_REQ, pf->state) &&
-	    ice_pf_src_tmr_owned(pf))
-		ice_ptp_restart_all_phy(pf);
-
 	/* Start periodic work going */
 	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 8bc352055ff1..f055f2a643da 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -317,7 +317,7 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
 void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb);
-void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type);
+void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type);
 void ice_ptp_prepare_for_reset(struct ice_pf *pf,
 			       enum ice_reset_req reset_type);
 void ice_ptp_init(struct ice_pf *pf);
@@ -354,8 +354,8 @@ static inline bool ice_ptp_process_ts(struct ice_pf *pf)
 static inline void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb) { }
-static inline void ice_ptp_reset(struct ice_pf *pf,
-				 enum ice_reset_req reset_type)
+static inline void ice_ptp_rebuild(struct ice_pf *pf,
+				   enum ice_reset_req reset_type)
 {
 }
 
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

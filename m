Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EE67840FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 14:41:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36B5F605EC;
	Tue, 22 Aug 2023 12:41:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36B5F605EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692708090;
	bh=mIBe7D5984ZvxyHHPXJXFk/FPBN35UA9FYuKedHNMfE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a/Dbwd7lZQ3h7vhxj9kafZ5+M47mxAVkOQv7pXWBt/bAodpM5uwuysLWKW5V1m7jO
	 GLWHAiOK0DOvY/r2RU9jqCGeZHiQYamLLe4BwTWgoUoW7jfd43/uY7hz9KFkUCchKM
	 MJevir/UDZ86bkxzqgGe6IBwtQSUq0YTg9aWTLBdCqMLrGvZBc6VFEhEh3OKeH5DsY
	 lfS+1CGiLkvGxUwv74RzRrqFokNkowVTLrSb2TUS7Z+oWFiT70S1wh2HqlLH7LT5/1
	 +aireJ7eoICHrGokZEUCP/I//GIb+sESLE/KrUnxev4NdNfeWtXW2Dt03WjBMie9sw
	 KXCjneMJzHGVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kdGpi_62BXKo; Tue, 22 Aug 2023 12:41:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4A22611C0;
	Tue, 22 Aug 2023 12:41:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4A22611C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C79D1BF296
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 12:41:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFC6B611C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 12:41:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFC6B611C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id scrNmY5hzY6h for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 12:41:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D8EC611CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 12:41:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D8EC611CF
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="376604623"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="376604623"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:41:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771342932"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="771342932"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orsmga001.jf.intel.com with ESMTP; 22 Aug 2023 05:41:06 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Aug 2023 14:40:40 +0200
Message-Id: <20230822124044.301654-6-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230822124044.301654-1-karol.kolacinski@intel.com>
References: <20230822124044.301654-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692708069; x=1724244069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6jGn2rHv15IvqP+2GjrvIDfvySDo4m9ZR/T81mbPz2M=;
 b=Q1NN9AbdvTIq/DFNGcAT/iJnwDQfa8x0/6LttC6kWd0jyzmu0wR/jMSt
 /u+vIiNIAWOL2ha+kcCnmVyjB0w/2oVM/G1Ab09nbeI72Say36zcKgUo6
 DtI/LER/VrJc6vGp7KjZjjAjjvJMLaOuSezklAkmDWHCp+IHMoK0/Chbe
 Vkur5Pbghnfwfoxs3zub/xd8bOQVWu00hIfWcCX2Gix3m+VVZ5b6nUGF8
 xJrjQiuCfayEqGA4/mMp7LLFvdzr2LmaCM78LPGJEbLEXx+AcXL9l2ME1
 lyGT185/GMOu1vis9QP6+IXw/wJozdnngjs4S4v9wKX9SbC0MczR7Itlx
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q1NN9Abd
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 5/9] ice: factor out
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
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
---
 drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 60 ++++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  6 +--
 3 files changed, 41 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ac6f241d0407..031f91fb2b0d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7356,7 +7356,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	 * fail.
 	 */
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
-		ice_ptp_reset(pf, reset_type);
+		ice_ptp_rebuild(pf, reset_type);
 
 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
 		ice_gnss_init(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 393156b9b426..5cc2d9c48a75 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2486,6 +2486,7 @@ ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	if (reset_type == ICE_RESET_PFR)
 		return;
 
+	kthread_cancel_delayed_work_sync(&pf->ptp.port.ov_work);
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
 	/* Disable periodic outputs */
@@ -2501,11 +2502,13 @@ ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
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
@@ -2513,34 +2516,21 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
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
@@ -2556,7 +2546,7 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	err = ice_ptp_write_init(pf, &ts);
 	if (err) {
 		ice_ptp_unlock(hw);
-		goto err;
+		return err;
 	}
 
 	/* Release the global hardware lock */
@@ -2566,13 +2556,37 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 		/* Enable quad interrupts */
 		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
 		if (err)
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
 			goto err;
+		}
 	}
 
-	/* Restart the PHY timestamping block */
-	ice_ptp_reset_phy_timestamping(pf);
+	if (ice_pf_src_tmr_owned(pf) && reset_type != ICE_RESET_PFR)
+		ice_ptp_rebuild_owner(pf);
 
-pfr:
 	/* Init Tx structures */
 	if (ice_is_e810(&pf->hw)) {
 		err = ice_ptp_init_tx_e810(pf, &ptp->port.tx);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 30ad714a2a21..210e2a1b35a5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -315,7 +315,7 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
 void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb);
-void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type);
+void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type);
 void ice_ptp_prepare_for_reset(struct ice_pf *pf,
 			       enum ice_reset_req reset_type);
 void ice_ptp_init(struct ice_pf *pf);
@@ -348,8 +348,8 @@ static inline bool ice_ptp_process_ts(struct ice_pf *pf)
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
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

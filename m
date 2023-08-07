Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4624A771E46
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 12:37:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D72660FCB;
	Mon,  7 Aug 2023 10:37:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D72660FCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691404668;
	bh=llLfRaUlAQnce4u9kTBxCpnb/mllgWrlpMHfcE8TCAk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YMz9cC3FayA3664hxTw8uYwaZqJQmf90dghjUxauBCTv4TCvwp1d70UQjXd/Svgh6
	 oCU3U89N0doveUi0jN7A7Bfhj3mu4s4YwZfkOiXyY6wjRYUNyp9JYpXsPGICPMWlhU
	 gpfH38G/bWN/4PfXuyYr2wJzlIEDu+K5cF12229bxcyaIzU4V5k6QIluRTJ7xHvFRN
	 tbJI9JBYBNTFtMiLtERdSt24QhDrSTOz+KAFewMp79HEO2+SKHTvK1/mD0BEsWqeZo
	 GvzosUIZ9ontiKROYGhRWgXDgp4W6Kuo81M/G5jm+02EWXwOyz0LujC82vAT7xW00A
	 peOAAg4b/atrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NHghWqBuLQjT; Mon,  7 Aug 2023 10:37:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA69B60DDF;
	Mon,  7 Aug 2023 10:37:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA69B60DDF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7AB691BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:37:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FCD9415E5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:36:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FCD9415E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SJNTwpNeGyXj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 10:36:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8102C4099A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:36:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8102C4099A
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="401482307"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="401482307"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 03:36:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="874262839"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2023 03:36:36 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Aug 2023 12:36:20 +0200
Message-Id: <20230807103624.468230-6-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230807103624.468230-1-karol.kolacinski@intel.com>
References: <20230807103624.468230-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691404596; x=1722940596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PHBTtydtLX/AJccgS3XLIjvT4nP9NlCuZ7GnkOMi6U0=;
 b=XdTjvmx/9RIgmFuPqXRsmpvB/qePjl6gcLG8h2aHbRCdA3x1Hu6l5B0z
 S1V/Pye2Re6H1mDlQjdh+RIgFuYqqA+Q9ojwi6nAjU8Ifkhqj1+1bqOsf
 IEcS6R2rTnoIQBh3eQYcTOl2Dtsn75y3YGLZoHDhuSUNylWSEsDBucOvy
 czk1JCaAv4IhokDRLgEJ8XuXXj72TnFc6tirom1Q1p0TnLnsvTwGjnceE
 tj6bPaVll9cqPy40cvd95gsGi4+s2+0l1TbmjwyH5SfBvryvBcAUFHW2C
 YVg86BEryUkBoDyHK04Knxtv8Nz+lkMtvrBqUjazIkYQo72mdkn4qXBym
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XdTjvmx/
Subject: [Intel-wired-lan] [PATCH 5/9] ice: factor out
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

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
index 47e598e1bc4d..bb3e908593d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7355,7 +7355,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	 * fail.
 	 */
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
-		ice_ptp_reset(pf, reset_type);
+		ice_ptp_rebuild(pf, reset_type);
 
 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
 		ice_gnss_init(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0c88a2efb38c..c2ced7df87ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2500,6 +2500,7 @@ ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	if (reset_type == ICE_RESET_PFR)
 		return;
 
+	kthread_cancel_delayed_work_sync(&pf->ptp.port.ov_work);
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
 	/* Disable periodic outputs */
@@ -2515,11 +2516,13 @@ ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
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
@@ -2527,34 +2530,21 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
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
@@ -2570,7 +2560,7 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	err = ice_ptp_write_init(pf, &ts);
 	if (err) {
 		ice_ptp_unlock(hw);
-		goto err;
+		return err;
 	}
 
 	/* Release the global hardware lock */
@@ -2585,13 +2575,37 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
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

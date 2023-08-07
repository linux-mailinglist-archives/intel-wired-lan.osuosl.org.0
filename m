Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B28771E44
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 12:37:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4955560F15;
	Mon,  7 Aug 2023 10:37:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4955560F15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691404659;
	bh=3XzEoobvyPRikIv0kH/ubtgH5Bpl6wsg5E93qHl/j9c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s5BiTMOaXzNqnefj7JKdOrx7LBfCbNIVUWFw8ETIdArTlngr74NcZsoEzvjd72xES
	 xa9lhwOklEPM9ZQpgkI3E1j/0xt/8uaI5jAatcC1/8EAB7pwNBSMIvgwvKRDNlhyiA
	 vD2xGrTxC8YfTlm8DLdM8Vn9Bng44SmsH02a/rxgqTgziD7oqNHhtE+Q/XpvwGFpK9
	 jFWrUEi5aE7hAmtvDRJoiFIE5SkjpjppR0xXoqsSx8WGslbEgrb4h008iyfRDgmqhZ
	 9LvvgbtiytOkxu3Cptxz6j6iFYdMmClBuZ9PcMdx71HqsmG4z6Tfm+I1NqYY3eZzg7
	 Dz1b2Az2M4Umg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WQSFZiccLn5n; Mon,  7 Aug 2023 10:37:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABD9560E79;
	Mon,  7 Aug 2023 10:37:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABD9560E79
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E5071BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:37:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F280F40939
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F280F40939
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lpa9iBVAKcul for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 10:36:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE0B84097D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:36:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE0B84097D
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="401482302"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="401482302"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 03:36:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="874262833"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2023 03:36:34 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Aug 2023 12:36:18 +0200
Message-Id: <20230807103624.468230-4-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230807103624.468230-1-karol.kolacinski@intel.com>
References: <20230807103624.468230-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691404592; x=1722940592;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GR0NfqnFV72yTB8k9tpvAM9ivJ5Bqq5ClfsByUf+Gmg=;
 b=mr84ObcMl4VgpIZ6tFSkwpxBwvqEmJiPPWYZ1ErI54hsemZyjXPuQp+u
 HKow3VC3H+13CGpvLhqJNp2SLzlVt7VpSdRFaVk421E4C1nwhukJ5lwRY
 v70jAoX++BkXIJvG22GJSSCAU2rb/TKDwxZ5C7x9QPmI10P4u6E6iFfNy
 KTmdNoIK/sFu2dSoJ9MkOlxK6y0UVLry8GsEqZ+SYbDVBNP5X2v59+rjU
 z63HtL+XtF4wH1oLtWleOJdABEa9DGKGBCXYXidKFy2MMeflIWTJi5VRx
 3w5538wf5vp82lpwSQfmmic9iVs1y+taChrN7bMfWKfaCN6PzkXLHkLdd
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mr84ObcM
Subject: [Intel-wired-lan] [PATCH 3/9] ice: pass reset type to PTP reset
 functions
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

The ice_ptp_prepare_for_reset() and ice_ptp_reset() functions currently
check the pf->flags ICE_FLAG_PFR_REQ bit to determine if the current
reset is a PF reset or not.

This is problematic, because it is possible that a PF reset and a higher
level reset (CORE reset, GLOBAL reset, EMP reset) are requested
simultaneously. In that case, the driver performs the highest level
reset requested. However, the ICE_FLAG_PFR_REQ flag will still be set.

The main driver reset functions take an enum ice_reset_req indicating
which reset is actually being performed. Pass this data into the PTP
functions and rely on this instead of relying on the driver flags.

This ensures that the PTP code performs the proper level of reset that
the driver is actually undergoing.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c |  4 ++--
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 17 ++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp.h  | 16 ++++++++++++----
 3 files changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1ac37a3f8de5..47e598e1bc4d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -611,7 +611,7 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	ice_pf_dis_all_vsi(pf, false);
 
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
-		ice_ptp_prepare_for_reset(pf);
+		ice_ptp_prepare_for_reset(pf, reset_type);
 
 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
 		ice_gnss_exit(pf);
@@ -7355,7 +7355,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	 * fail.
 	 */
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
-		ice_ptp_reset(pf);
+		ice_ptp_reset(pf, reset_type);
 
 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
 		ice_gnss_init(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index a6ea90b9461e..0ee971f8c2e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2460,8 +2460,10 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 /**
  * ice_ptp_prepare_for_reset - Prepare PTP for reset
  * @pf: Board private structure
+ * @reset_type: the reset type being performed
  */
-void ice_ptp_prepare_for_reset(struct ice_pf *pf)
+void
+ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 {
 	struct ice_ptp *ptp = &pf->ptp;
 	u8 src_tmr;
@@ -2476,7 +2478,7 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf)
 
 	kthread_cancel_delayed_work_sync(&ptp->work);
 
-	if (test_bit(ICE_PFR_REQ, pf->state))
+	if (reset_type == ICE_RESET_PFR)
 		return;
 
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
@@ -2496,8 +2498,9 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf)
 /**
  * ice_ptp_reset - Initialize PTP hardware clock support after reset
  * @pf: Board private structure
+ * @reset_type: the reset type being performed
  */
-void ice_ptp_reset(struct ice_pf *pf)
+void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 {
 	struct ice_ptp *ptp = &pf->ptp;
 	struct ice_hw *hw = &pf->hw;
@@ -2507,7 +2510,7 @@ void ice_ptp_reset(struct ice_pf *pf)
 
 	if (ptp->state != ICE_PTP_RESETTING) {
 		if (ptp->state == ICE_PTP_READY) {
-			ice_ptp_prepare_for_reset(pf);
+			ice_ptp_prepare_for_reset(pf, reset_type);
 		} else {
 			err = -EINVAL;
 			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
@@ -2515,12 +2518,9 @@ void ice_ptp_reset(struct ice_pf *pf)
 		}
 	}
 
-	if (test_bit(ICE_PFR_REQ, pf->state))
+	if (reset_type == ICE_RESET_PFR || !ice_pf_src_tmr_owned(pf))
 		goto pfr;
 
-	if (!ice_pf_src_tmr_owned(pf))
-		goto reset_ts;
-
 	err = ice_ptp_init_phc(hw);
 	if (err)
 		goto err;
@@ -2564,7 +2564,6 @@ void ice_ptp_reset(struct ice_pf *pf)
 			goto err;
 	}
 
-reset_ts:
 	/* Restart the PHY timestamping block */
 	ice_ptp_reset_phy_timestamping(pf);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 674a0abe3cdd..48c0d56c0568 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -311,8 +311,9 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
 void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb);
-void ice_ptp_reset(struct ice_pf *pf);
-void ice_ptp_prepare_for_reset(struct ice_pf *pf);
+void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type);
+void ice_ptp_prepare_for_reset(struct ice_pf *pf,
+			       enum ice_reset_req reset_type);
 void ice_ptp_init(struct ice_pf *pf);
 void ice_ptp_release(struct ice_pf *pf);
 void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup);
@@ -343,8 +344,15 @@ static inline bool ice_ptp_process_ts(struct ice_pf *pf)
 static inline void
 ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb) { }
-static inline void ice_ptp_reset(struct ice_pf *pf) { }
-static inline void ice_ptp_prepare_for_reset(struct ice_pf *pf) { }
+static inline void ice_ptp_reset(struct ice_pf *pf,
+				 enum ice_reset_req reset_type)
+{
+}
+
+static inline void ice_ptp_prepare_for_reset(struct ice_pf *pf,
+					     enum ice_reset_req reset_type)
+{
+}
 static inline void ice_ptp_init(struct ice_pf *pf) { }
 static inline void ice_ptp_release(struct ice_pf *pf) { }
 static inline void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

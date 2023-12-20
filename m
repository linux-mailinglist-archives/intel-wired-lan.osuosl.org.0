Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA01819D36
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Dec 2023 11:43:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 913AC81456;
	Wed, 20 Dec 2023 10:43:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 913AC81456
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703069024;
	bh=gtGc1K5kI6EB08yXxiDu6snHx6azV/2oMFgpU75HsEo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3s92lc2RorF6FrCo4B6XNLCpx+sQ1lA6Y3rC55II0tnPxj+V3DSqufKkgm7sNPotQ
	 SoZJV06vZ7LVu4Ffb2TXHaiG9kb2PqcFywvSz5ZdlSGJhHoDqpNWVUCUdhtwCoklo3
	 PZjGbRSvn5PwpXgl5kfYIEd4IeM3hr5qfCw3pQK1EuicH2lBbKKe3sXwHTu84Z85DB
	 UuBLlDF8knqVRgjtQ9qV5jiqOZXexpqnsxwvzdPsig7F7xMV9P7I/kYOJyOxln5IuV
	 imI4/xsadpSzi86ym8jEDoY78A77EPwOo1JK7uwJP6MpUIM6xA4uw0Abkzowz51TEw
	 KcAEOSSYi5hEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rz_vGpEuXPFN; Wed, 20 Dec 2023 10:43:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A6B6813D9;
	Wed, 20 Dec 2023 10:43:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A6B6813D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD6A71BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 10:43:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A2364403C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 10:43:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2364403C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HzXZOlp1FhGP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Dec 2023 10:43:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8B9D1400DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 10:43:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B9D1400DC
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="17350731"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="17350731"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:43:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="846673253"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="846673253"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga004.fm.intel.com with ESMTP; 20 Dec 2023 02:43:29 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 20 Dec 2023 11:43:19 +0100
Message-Id: <20231220104323.974456-3-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231220104323.974456-1-karol.kolacinski@intel.com>
References: <20231220104323.974456-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703069012; x=1734605012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KSB1tkRJ/7x42mc4q5SeMmf5aXXVo63G43rX4VHI/TY=;
 b=ZYZI21B5ZrA3nq2ha+lGNtwXSg+9MEXFIO3qh+UwLrLA8U9Jl8jMUtrx
 PjTmz3G8lf60lN+61Wa+83qOBV6NHJiSP2snqbTeLopfh7bHAfaPoJFkt
 52OmTL1M9a3hmxbPzNkYas+BjQ0I5/TNm3lkYthD1zH92KD2rrYlJ2l5G
 UbSN56VV8qX5QW2Tg4FfZYBdnUdkwges2R0kH8aPEc810VdYn7+CNNDE8
 EhTKzoFiEwG28gm4wNRtnD5PPWICK+H4zv5uKHnghuCSWaXS0/eo1lrPM
 V6/C/ppkPDtul/SJYvyLQ/b6lIsOkr9XUiq/RzYZ2dmIRzCX6F3cGYSt0
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZYZI21B5
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 2/6] ice: pass reset type to
 PTP reset functions
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
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c |  4 ++--
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 13 +++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h  | 19 +++++++++++++++++--
 3 files changed, 26 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 77ba737a50df..a14e8734cc27 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -613,7 +613,7 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	ice_pf_dis_all_vsi(pf, false);
 
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
-		ice_ptp_prepare_for_reset(pf);
+		ice_ptp_prepare_for_reset(pf, reset_type);
 
 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
 		ice_gnss_exit(pf);
@@ -7554,7 +7554,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	 * fail.
 	 */
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
-		ice_ptp_reset(pf);
+		ice_ptp_reset(pf, reset_type);
 
 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
 		ice_gnss_init(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d7de65f8dd53..c309d3fd5a4e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2631,8 +2631,9 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 /**
  * ice_ptp_prepare_for_reset - Prepare PTP for reset
  * @pf: Board private structure
+ * @reset_type: the reset type being performed
  */
-void ice_ptp_prepare_for_reset(struct ice_pf *pf)
+void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 {
 	struct ice_ptp *ptp = &pf->ptp;
 	u8 src_tmr;
@@ -2647,7 +2648,7 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf)
 
 	kthread_cancel_delayed_work_sync(&ptp->work);
 
-	if (test_bit(ICE_PFR_REQ, pf->state))
+	if (reset_type == ICE_RESET_PFR)
 		return;
 
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
@@ -2667,8 +2668,9 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf)
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
@@ -2678,7 +2680,7 @@ void ice_ptp_reset(struct ice_pf *pf)
 
 	if (ptp->state != ICE_PTP_RESETTING) {
 		if (ptp->state == ICE_PTP_READY) {
-			ice_ptp_prepare_for_reset(pf);
+			ice_ptp_prepare_for_reset(pf, reset_type);
 		} else {
 			err = -EINVAL;
 			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
@@ -2686,8 +2688,7 @@ void ice_ptp_reset(struct ice_pf *pf)
 		}
 	}
 
-	if (test_bit(ICE_PFR_REQ, pf->state) ||
-	    !ice_pf_src_tmr_owned(pf))
+	if (reset_type == ICE_RESET_PFR || !ice_pf_src_tmr_owned(pf))
 		goto pfr;
 
 	err = ice_ptp_init_phc(hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 2457380142e1..7b748f22e6f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -314,8 +314,8 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
 
 u64 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 			const struct ice_pkt_ctx *pkt_ctx);
-void ice_ptp_reset(struct ice_pf *pf);
-void ice_ptp_prepare_for_reset(struct ice_pf *pf);
+void ice_ptp_prepare_for_reset(struct ice_pf *pf,
+			       enum ice_reset_req reset_type);
 void ice_ptp_init(struct ice_pf *pf);
 void ice_ptp_release(struct ice_pf *pf);
 void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup);
@@ -347,6 +347,7 @@ static inline bool ice_ptp_process_ts(struct ice_pf *pf)
 {
 	return true;
 }
+<<<<<<< HEAD
 
 static inline u64
 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
@@ -357,6 +358,20 @@ ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 
 static inline void ice_ptp_reset(struct ice_pf *pf) { }
 static inline void ice_ptp_prepare_for_reset(struct ice_pf *pf) { }
+=======
+static inline void
+ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
+		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb) { }
+static inline void ice_ptp_reset(struct ice_pf *pf,
+				 enum ice_reset_req reset_type)
+{
+}
+
+static inline void ice_ptp_prepare_for_reset(struct ice_pf *pf,
+					     enum ice_reset_req reset_type)
+{
+}
+>>>>>>> 86982aff2a40 (ice: pass reset type to PTP reset functions)
 static inline void ice_ptp_init(struct ice_pf *pf) { }
 static inline void ice_ptp_release(struct ice_pf *pf) { }
 static inline void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

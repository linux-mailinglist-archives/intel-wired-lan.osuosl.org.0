Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E710D838C90
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 11:52:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BDFC418D3;
	Tue, 23 Jan 2024 10:52:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BDFC418D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706007131;
	bh=RMiyHVTcpN+ydyHPvn46y4Jrr/2rktrUEFoEgAvo+cM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1An1/uDw4oVAlxqmgIrWnIJ07vW+F5SboVlrtvCRJN/NOfc803zmUubVxHOMQZI5W
	 RV3zrxGXln/4mgKHKXXQSaD1Y+Bc3VVMpCRNhsGcy8ruaESXeSImcgkEw/+z6CLzp1
	 o87rKObG1CrY+UmgPVLJJL9LyP90mx6mjuy/5trcHxaS93AXZwO5dHzkuteBBxc4ZT
	 J5XjaxKqiWaEi4aDKzq3CEmuVn2HACVsX3JidlzbOx36f1PyrBiXNl0MSwI7PXcX1i
	 h0QC79RL/FFShUGabrRkjcp5IBx1oB9+RelELtJ1MZrb6fbzibc7sDux56Hbzge9Ql
	 PWs3HcoZBkHXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id th8ML3leF35O; Tue, 23 Jan 2024 10:52:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56F014174B;
	Tue, 23 Jan 2024 10:52:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56F014174B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED3E21BF299
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 10:51:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C630E8238A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 10:51:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C630E8238A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ahAE8MoBrhmP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 10:51:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1888582382
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 10:51:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1888582382
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="8877603"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; 
   d="scan'208";a="8877603"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 02:51:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="34365373"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa001.jf.intel.com with ESMTP; 23 Jan 2024 02:51:55 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jan 2024 11:51:26 +0100
Message-Id: <20240123105131.2842935-3-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240123105131.2842935-1-karol.kolacinski@intel.com>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706007117; x=1737543117;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j8Xd+TOavrLu6PYZ4rwAHQDDZSp05pTQvyxRfgGbYOo=;
 b=nh9BBFYJJB46manV007plo19z099Jk9+u+6ic2Io9atoPuOYtIMc/2Fd
 W4+5gUkEmFZDxiNcnZ8kbzENFuS0Ph2DPLXJPE0Llhp5kgC8IPXEXw+ZE
 JbiZO4HbcLVNs4lPieHlbyi7+MCSgeeNaL44B46uWWLfdzi3pnXbforc9
 N95UATfMygMUmdRzdGShRs7zgnIwVP3AanWB/funM0HBZFbaC3KKj0w2S
 Q+J3EH2zNvMVX0zKuKOjaMNLu05c42oTMkOelXMN1dttIP/W9LcrGpTTm
 mxn/lQQ5CVCzjKq94B3obvfKUoDT02BCxc0l3l9DEXHk1kYT6lR3fN+nZ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nh9BBFYJ
Subject: [Intel-wired-lan] [PATCH v7 iwl-next 2/7] ice: pass reset type to
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
V4 -> V5: added missing ice_ptp_reset() definition

 drivers/net/ethernet/intel/ice/ice_main.c |  4 ++--
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 13 +++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h  | 16 ++++++++++++----
 3 files changed, 21 insertions(+), 12 deletions(-)

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
index 8ed4af219f9b..96b5f992f127 100644
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
@@ -2677,15 +2679,14 @@ void ice_ptp_reset(struct ice_pf *pf)
 	u64 time_diff;
 
 	if (ptp->state == ICE_PTP_READY) {
-		ice_ptp_prepare_for_reset(pf);
+		ice_ptp_prepare_for_reset(pf, reset_type);
 	} else if (ptp->state != ICE_PTP_RESETTING) {
 		err = -EINVAL;
 		dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
 		goto err;
 	}
 
-	if (test_bit(ICE_PFR_REQ, pf->state) ||
-	    !ice_pf_src_tmr_owned(pf))
+	if (reset_type == ICE_RESET_PFR || !ice_pf_src_tmr_owned(pf))
 		goto pfr;
 
 	err = ice_ptp_init_phc(hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 2457380142e1..afe454abe997 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -314,8 +314,9 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
 
 u64 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 			const struct ice_pkt_ctx *pkt_ctx);
-void ice_ptp_reset(struct ice_pf *pf);
-void ice_ptp_prepare_for_reset(struct ice_pf *pf);
+void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type);
+void ice_ptp_prepare_for_reset(struct ice_pf *pf,
+			       enum ice_reset_req reset_type);
 void ice_ptp_init(struct ice_pf *pf);
 void ice_ptp_release(struct ice_pf *pf);
 void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup);
@@ -355,8 +356,15 @@ ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 	return 0;
 }
 
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
2.40.1


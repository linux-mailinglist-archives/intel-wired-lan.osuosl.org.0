Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6069E3B9876
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jul 2021 00:06:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1278460653;
	Thu,  1 Jul 2021 22:06:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6PQxZ2T6A_t3; Thu,  1 Jul 2021 22:06:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F047600B9;
	Thu,  1 Jul 2021 22:06:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A9A01BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 22:05:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 423264026F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 22:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C1Z7Ge0_fcWA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jul 2021 22:05:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C12D4018A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 22:05:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="272486380"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="272486380"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 15:05:11 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="626531432"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 15:05:11 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  1 Jul 2021 15:04:52 -0700
Message-Id: <20210701220456.3882767-10-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210701220456.3882767-1-jacob.e.keller@intel.com>
References: <20210701220456.3882767-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next v2 09/13] ice: convert clk_freq
 capability into time_ref
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

Convert the clk_freq value into the associated time_ref frequency value
for E822 devices. This simplifies determining the time reference value
for the clock.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 12 +++++++++++
 drivers/net/ethernet/intel/ice/ice_type.h   | 23 ++++++++++++++++++++-
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 2fb81e359cdf..f63912797548 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2129,6 +2129,18 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 	info->clk_freq = (number & ICE_TS_CLK_FREQ_M) >> ICE_TS_CLK_FREQ_S;
 	info->clk_src = ((number & ICE_TS_CLK_SRC_M) != 0);
 
+	if (info->clk_freq < NUM_ICE_TIME_REF_FREQ) {
+		info->time_ref = (enum ice_time_ref_freq)info->clk_freq;
+	} else {
+		/* Unknown clock frequency, so assume a (probably incorrect)
+		 * default to avoid out-of-bounds look ups of frequency
+		 * related information.
+		 */
+		ice_debug(hw, ICE_DBG_INIT, "1588 func caps: unknown clock frequency %u\n",
+			  info->clk_freq);
+		info->time_ref = ICE_TIME_REF_FREQ_25_000;
+	}
+
 	ice_debug(hw, ICE_DBG_INIT, "func caps: ieee_1588 = %u\n",
 		  func_p->common_cap.ieee_1588);
 	ice_debug(hw, ICE_DBG_INIT, "func caps: src_tmr_owned = %u\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index b59076f2dbde..fadc68f74d95 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -294,9 +294,30 @@ struct ice_hw_common_caps {
 #define ICE_TS_TMR_IDX_ASSOC_S		24
 #define ICE_TS_TMR_IDX_ASSOC_M		BIT(24)
 
+/* TIME_REF clock rate specification */
+enum ice_time_ref_freq {
+	ICE_TIME_REF_FREQ_25_000	= 0,
+	ICE_TIME_REF_FREQ_122_880	= 1,
+	ICE_TIME_REF_FREQ_125_000	= 2,
+	ICE_TIME_REF_FREQ_153_600	= 3,
+	ICE_TIME_REF_FREQ_156_250	= 4,
+	ICE_TIME_REF_FREQ_245_760	= 5,
+
+	NUM_ICE_TIME_REF_FREQ
+};
+
+/* Clock source specification */
+enum ice_clk_src {
+	ICE_CLK_SRC_TCX0	= 0, /* Temperature compensated oscillator  */
+	ICE_CLK_SRC_TIME_REF	= 1, /* Use TIME_REF reference clock */
+
+	NUM_ICE_CLK_SRC
+};
+
 struct ice_ts_func_info {
 	/* Function specific info */
-	u32 clk_freq;
+	enum ice_time_ref_freq time_ref;
+	u8 clk_freq;
 	u8 clk_src;
 	u8 tmr_index_assoc;
 	u8 ena;
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE43D3BF28A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jul 2021 01:41:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44C2240602;
	Wed,  7 Jul 2021 23:41:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m8X8c6EmWpa5; Wed,  7 Jul 2021 23:41:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EA9E405B0;
	Wed,  7 Jul 2021 23:41:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1AF9C1BF48C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 23:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E5CFF835F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 23:41:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5esiCzFozsj9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jul 2021 23:41:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A971832EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 23:41:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="273250408"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="273250408"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:41:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="411136319"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:41:13 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  7 Jul 2021 16:41:04 -0700
Message-Id: <20210707234108.4071506-10-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210707234108.4071506-1-jacob.e.keller@intel.com>
References: <20210707234108.4071506-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next v3 09/13] ice: convert clk_freq
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

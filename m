Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1FD3F53EF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 01:59:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EA9B6081C;
	Mon, 23 Aug 2021 23:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MEE9taC8VpPt; Mon, 23 Aug 2021 23:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81DCE6064F;
	Mon, 23 Aug 2021 23:59:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 627D51BF97E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C51A24051D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rkDb9-osorPh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Aug 2021 23:58:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 374F24051E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="302783974"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="302783974"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 16:58:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="493196617"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2021 16:58:28 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 23 Aug 2021 17:01:54 -0700
Message-Id: <20210824000158.1928482-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4 09/13] ice: convert clk_freq
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

From: Jacob Keller <jacob.e.keller@intel.com>

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
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

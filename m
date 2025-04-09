Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D2BA824B9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 14:28:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F175D41293;
	Wed,  9 Apr 2025 12:28:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8CipAUxn6lXL; Wed,  9 Apr 2025 12:28:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6112D4127E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744201732;
	bh=Vd9SyfNvFD/7dVQPdIbjQSk2YKrBEMTqMCfM5sc5QpI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FXhtLAZDA+kaCfQnSF0auYkl5g2Ujeka7/d6K93rAJKpU7MYrjuJE2pVwT3sMXnzi
	 w2POgHZQH3UJTMjqz+PYsuPO3la60lp7KuSkOiuyfU8FMJLgPhoFtU1icxAL9v67kw
	 liP0O8C1bt6p/+B08dWldKmRURzDeQEkpSeaxs0vLVdYlsvUYkS2fxCuiqC4cDfWNJ
	 wL5uW5Znyu9IYXkBzze7stKU+gTzygkcWO+Vi7MvI+nKnL2xvbh68SoJ2OmO+Hh63P
	 6hYrpc6fXbEI6CiuwAT+GtAhAVJv00gbBqPN4KN5VfHEdNjQA9ZeYzW0nVQgCXGYXB
	 kKP13dRmVSezA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6112D4127E;
	Wed,  9 Apr 2025 12:28:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 541161F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A39F608AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SeWjFfLBnvVy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 12:28:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8E45F607EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E45F607EC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E45F607EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:48 +0000 (UTC)
X-CSE-ConnectionGUID: w48W5WDjRtKjWRWPkq7HSw==
X-CSE-MsgGUID: KgIu90cbQRCljNAYXRzIHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56655686"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="56655686"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 05:28:48 -0700
X-CSE-ConnectionGUID: vaYpTT1SSv+rARbUZLSgXg==
X-CSE-MsgGUID: kTPb5kAqSdyIvMwLKllKnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133557200"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by orviesa004.jf.intel.com with ESMTP; 09 Apr 2025 05:28:47 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Wed,  9 Apr 2025 14:25:01 +0200
Message-ID: <20250409122830.1977644-16-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250409122830.1977644-12-karol.kolacinski@intel.com>
References: <20250409122830.1977644-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744201729; x=1775737729;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h9ngu/pgs2FQA0icCDpCrpOPPW337tz2Jm6rHZOLIAs=;
 b=TSQAYygSJ/tUacUX75wUO7uu/C0u2Ut1KyKqBOnkOSWyXacgNWTjJq+k
 TCXyyF6utb/cYVl9iikRe+W1k/hzuEGBQMxhTg/KOHylDc5U5xfWVYUDz
 3YBpacn4rgOH7ZqiL2tCUi1Gly5GvVfu8KkzFfYAvo7XJsfvfyzUXoY1s
 SiO5Ce6anuVDen49bPEorsYcUy/xyZsL3UHxuD5lc/0IOha/9h05xXIlr
 NzaLiWwkSqD/REBiUCUaqoC/Oz3HJNMRqUV27OsTilblFIIZNajGnHAJp
 Q81DR/TjNcNAFuvSr4wA62mQ5n7/wQCwNycuqEEqabePdMLn89p0xZLi1
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TSQAYygS
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 04/10] ice: add TSPLL log
 config helper
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a helper function to print new/current TSPLL config. This helps
avoid unnecessary casts from u8 to enums.

Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 54 ++++++++++++----------
 1 file changed, 30 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index d98bde911887..70ed0fc61892 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -86,6 +86,26 @@ static const char *ice_tspll_clk_src_str(enum ice_clk_src clk_src)
 	}
 }
 
+/**
+ * ice_tspll_log_cfg - Log current/new TSPLL configuration
+ * @hw: Pointer to the HW struct
+ * @enable: CGU enabled/disabled
+ * @clk_src: Current clock source
+ * @tspll_freq: Current clock frequency
+ * @lock: CGU lock status
+ * @new_cfg: true if this is a new config
+ */
+static void ice_tspll_log_cfg(struct ice_hw *hw, bool enable, u8 clk_src,
+			      u8 tspll_freq, bool lock, bool new_cfg)
+{
+	dev_dbg(ice_hw_to_dev(hw),
+		"%s TSPLL configuration -- %s, src %s, freq %s, PLL %s\n",
+		new_cfg ? "New" : "Current", enable ? "enabled" : "disabled",
+		ice_tspll_clk_src_str((enum ice_clk_src)clk_src),
+		ice_tspll_clk_freq_str((enum ice_tspll_freq)tspll_freq),
+		lock ? "locked" : "unlocked");
+}
+
 /**
  * ice_tspll_cfg_e82x - Configure the Clock Generation Unit TSPLL
  * @hw: Pointer to the HW struct
@@ -141,12 +161,9 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "Current TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.ts_pll_enable ? "enabled" : "disabled",
-		  ice_tspll_clk_src_str(dw24.time_ref_sel),
-		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
-		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
+	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, dw24.time_ref_sel,
+			  dw9.time_ref_freq_sel, bwm_lf.plllock_true_lock_cri,
+			  false);
 
 	/* Disable the PLL before changing the clock source or frequency */
 	if (dw24.ts_pll_enable) {
@@ -219,12 +236,8 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EBUSY;
 	}
 
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "New TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.ts_pll_enable ? "enabled" : "disabled",
-		  ice_tspll_clk_src_str(dw24.time_ref_sel),
-		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
-		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
+	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, clk_src, clk_freq, true,
+			  true);
 
 	return 0;
 }
@@ -318,12 +331,9 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "Current TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.ts_pll_enable ? "enabled" : "disabled",
-		  ice_tspll_clk_src_str(dw23.time_ref_sel),
-		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
-		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
+	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, dw23.time_ref_sel,
+			  dw9.time_ref_freq_sel,
+			  ro_lock.plllock_true_lock_cri, false);
 
 	/* Disable the PLL before changing the clock source or frequency */
 	if (dw23.ts_pll_enable) {
@@ -417,12 +427,8 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EBUSY;
 	}
 
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "New TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.ts_pll_enable ? "enabled" : "disabled",
-		  ice_tspll_clk_src_str(dw23.time_ref_sel),
-		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
-		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
+	ice_tspll_log_cfg(hw, dw23.ts_pll_enable, clk_src, clk_freq, true,
+			  true);
 
 	return 0;
 }
-- 
2.49.0


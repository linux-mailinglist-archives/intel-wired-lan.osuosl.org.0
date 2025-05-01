Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB82AA6674
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 00:54:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53CB46117D;
	Thu,  1 May 2025 22:54:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2jH__sGzXisv; Thu,  1 May 2025 22:54:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1ABB6115E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746140078;
	bh=Ye4m/ZdZZxRtJbopBIa/oPaPB4fnUhQFng1D+XqRHHQ=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yL0DeSUqGMYGag9Q9PTWhsbg5MOVuZ58PGW4Z/JG5Io5CaRkszffO6w3Z6Uz4AQev
	 DS33dbpES5jHgCW+bPTqExn3ju1Lnd8AkDoneZ/riwRKimF1KYfKH5E8TTVkNrDy0z
	 WgIbguNbcxEP181IvF+B46E/djO1KXUlq3arbgWmmh1VG7VA/t8R5lsH9m0BT7Ug9y
	 mOVpmyl58/eGOTjmbIeTrDtYZRU6xJ5WAlII76FwLQQbExY4pYdUNSiv4VnsyeR7zt
	 5LSIYcVQnBHPu/H1Jofl1IsEfUIEwZmt2mrX8nCHfZbU+LG86GzbKhgvJ6vNb73EM+
	 Xh27aWc0KNYVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1ABB6115E;
	Thu,  1 May 2025 22:54:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E9D0E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0A2B417BD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DRiDqVgfUdv5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 22:54:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 402D1417B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 402D1417B1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 402D1417B1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:34 +0000 (UTC)
X-CSE-ConnectionGUID: UZTVV351QE6JjTfohVzJvg==
X-CSE-MsgGUID: bMUsvG7cS22MSiKzHB2rEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="58811721"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="58811721"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:34 -0700
X-CSE-ConnectionGUID: jeTR6PGeTsqmAeYIeaCbKw==
X-CSE-MsgGUID: F3vUQKlaSu2dk8ruvKR55A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="138514287"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:33 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 01 May 2025 15:54:17 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250501-kk-tspll-improvements-alignment-v4-6-24c83d0ce7a8@intel.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Milena Olech <milena.olech@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746140075; x=1777676075;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=UrKKInting1us4tXjzoiD31K1N75PAD497MNonaoC6k=;
 b=HkP/IXzqT+jxabF63x46wxONMv09J3C7hT4JAm0ED++i7bk3zXJ0MhI9
 zdDEnJ3IyVgDrDRDeYWqBIQS2EiRNQYHMnKEgGmAhmWMiIJbD803YmUED
 k05Npu5t797VS2k/QuPEvYc1MOzyGHE/ly5AQLGMn2d5PWCmmJKXSummc
 P3FN/UGuOPNWhPuhqqtZZsUMDAHS/bi864AUrhsVJARC/yWRtuJ1vTn2u
 34KsWe0UHFF4MDWJVmI+nmyC2xowGP44DG5a8yxObpWLDU7DNnXuSDSzd
 hF3li7iRbzWMoTGNliZUnA+czOeGeBdiDzfK4HXFzYT5sypMZxHOONogP
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HkP/IXzq
Subject: [Intel-wired-lan] [PATCH v4 06/15] ice: add TSPLL log config helper
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

From: Karol Kolacinski <karol.kolacinski@intel.com>

Add a helper function to print new/current TSPLL config. This helps
avoid unnecessary casts from u8 to enums.

Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 54 +++++++++++++++++-------------
 1 file changed, 30 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index cf0e37296796c5bbda011d027dc8ef007b0e2021..08af4ced50eb877dce5944d87a90d0dcdb49ff2e 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -89,6 +89,26 @@ static const char *ice_tspll_clk_src_str(enum ice_clk_src clk_src)
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
+		new_cfg ? "New" : "Current", str_enabled_disabled(enable),
+		ice_tspll_clk_src_str((enum ice_clk_src)clk_src),
+		ice_tspll_clk_freq_str((enum ice_tspll_freq)tspll_freq),
+		lock ? "locked" : "unlocked");
+}
+
 /**
  * ice_tspll_cfg_e82x - Configure the Clock Generation Unit TSPLL
  * @hw: Pointer to the HW struct
@@ -144,12 +164,9 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "Current TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  str_enabled_disabled(dw24.ts_pll_enable),
-		  ice_tspll_clk_src_str(dw24.time_ref_sel),
-		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
-		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
+	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, dw24.time_ref_sel,
+			  dw9.time_ref_freq_sel, bwm_lf.plllock_true_lock_cri,
+			  false);
 
 	/* Disable the PLL before changing the clock source or frequency */
 	if (dw24.ts_pll_enable) {
@@ -222,12 +239,8 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EBUSY;
 	}
 
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "New TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  str_enabled_disabled(dw24.ts_pll_enable),
-		  ice_tspll_clk_src_str(dw24.time_ref_sel),
-		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
-		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
+	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, clk_src, clk_freq, true,
+			  true);
 
 	return 0;
 }
@@ -316,12 +329,9 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "Current TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  str_enabled_disabled(dw23.ts_pll_enable),
-		  ice_tspll_clk_src_str(dw23.time_ref_sel),
-		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
-		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
+	ice_tspll_log_cfg(hw, dw23.ts_pll_enable, dw23.time_ref_sel,
+			  dw9.time_ref_freq_sel,
+			  ro_lock.plllock_true_lock_cri, false);
 
 	/* Disable the PLL before changing the clock source or frequency */
 	if (dw23.ts_pll_enable) {
@@ -414,12 +424,8 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EBUSY;
 	}
 
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "New TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  str_enabled_disabled(dw23.ts_pll_enable),
-		  ice_tspll_clk_src_str(dw23.time_ref_sel),
-		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
-		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
+	ice_tspll_log_cfg(hw, dw23.ts_pll_enable, clk_src, clk_freq, true,
+			  true);
 
 	return 0;
 }

-- 
2.48.1.397.gec9d649cc640


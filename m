Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E411AA582B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 00:51:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 181D6600B6;
	Wed, 30 Apr 2025 22:51:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i46LAM1toMLy; Wed, 30 Apr 2025 22:51:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 606D3608C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746053505;
	bh=hA5qMHFg14Ry1VVH7yZ0Oq9ePGzwAtWAt0DI57knGjc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WE4XVzNZj/E6+tN398BuLgOXqqlAcLmlCiL9x2mVQG9v2DF31NQ/YFgSJYt5d5ppJ
	 Y1Z+GCn44g+lJQLjokshf7DbBqHyGAJ3jTtXkC+FzL4YtaV/qbzAYl45z+1t5QIWCR
	 YuR5TG0lkv4EVs5ccp2l487U0oITKsx4M0pAoqwBw0+63ahVfJPphxS/8qk3ACLypr
	 Jaw9ik8O8JyJW4lQCWr0qZz9NOosy8Xvkcy/qiG6gdLKcSN6LgV0LrSwcTB6y9dx1C
	 tpokh0gwSRZTzc6yXPSf858BHZvEsc+wo56p6r5OM9vYbxtFsFie9lR57Y1UrJ/3wD
	 sg5sLwXjbaeGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 606D3608C0;
	Wed, 30 Apr 2025 22:51:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 869CCE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 787434033A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RecTekI_Sk6P for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 22:51:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C5E9D401AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5E9D401AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5E9D401AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:41 +0000 (UTC)
X-CSE-ConnectionGUID: tAnk4nqmSneLrbSSQn4gww==
X-CSE-MsgGUID: lUxLDMXcR3qUWTjiaHCYsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="73120889"
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="73120889"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:40 -0700
X-CSE-ConnectionGUID: RUNZYDeDTjGDB3HAud0O1Q==
X-CSE-MsgGUID: 0UHFG4arSSSZmFwP4VOLoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="134145078"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 30 Apr 2025 15:51:35 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250430-kk-tspll-improvements-alignment-v3-4-ab8472e86204@intel.com>
References: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
In-Reply-To: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Milena Olech <milena.olech@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746053501; x=1777589501;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=zkBoce9KLjlkcY5umIvWMJyJKnRD9vYxTXkr4BHvTJs=;
 b=OQQ8p7hsfWNn0U9GHBbgMPaiP9v0F839vOKu3ZeGoJ+nZqYQwBYabpan
 AHbiikgNzfX0i5SCLwdCcaRnw6AClKIkxaRPvMJm/kzDrxEVDhUYdstcc
 fJRZnwG3tVdhYjOr8MujBkGd5UkW+3l4tAEnXd6lb2nFEWbTKhGxcSH4q
 mc3DQJ7WGwkWscEimdrtFuVmp6BYPAuYtx/Kr/KyartnRd3hlxDzM++44
 hHkIMjT6jyUMx2Jenq27lw/SODP60ieFdLfQAeTPTOSTGenHD/asAwNYZ
 xZXL6bcp7PPMBwL0cAA3dIvphX2NNkWjtbXCK2Zcsynnc2jQ3zgla/ccp
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OQQ8p7hs
Subject: [Intel-wired-lan] [PATCH v3 04/15] ice: remove
 ice_tspll_params_e825 definitions
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

Remove ice_tspll_params_e825 definitions as according to EDS (Electrical
Design Specification) doc, E825 devices support only 156.25 MHz TSPLL
frequency for both TCXO and TIME_REF clock source.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.h |  21 +-----
 drivers/net/ethernet/intel/ice/ice_tspll.c | 107 +++--------------------------
 2 files changed, 11 insertions(+), 117 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.h b/drivers/net/ethernet/intel/ice/ice_tspll.h
index 3dcc525bb8292b635b58fe8107af47b895d3c201..7aef430258e23e8e65cfc37ef8436ac158fa7ee5 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.h
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.h
@@ -21,24 +21,9 @@ struct ice_tspll_params_e82x {
 	u32 post_pll_div;
 };
 
-/**
- * struct ice_tspll_params_e825c - E825-C TSPLL parameters
- * @ck_refclkfreq: ck_refclkfreq selection
- * @ndivratio: ndiv ratio that goes directly to the PLL
- * @fbdiv_intgr: TSPLL integer feedback divisor
- * @fbdiv_frac: TSPLL fractional feedback divisor
- * @ref1588_ck_div: clock divisor for tspll ref
- *
- * Clock Generation Unit parameters used to program the PLL based on the
- * selected TIME_REF/TCXO frequency.
- */
-struct ice_tspll_params_e825c {
-	u32 ck_refclkfreq;
-	u32 ndivratio;
-	u32 fbdiv_intgr;
-	u32 fbdiv_frac;
-	u32 ref1588_ck_div;
-};
+#define ICE_TSPLL_CK_REFCLKFREQ_E825		0x1F
+#define ICE_TSPLL_NDIVRATIO_E825		5
+#define ICE_TSPLL_FBDIV_INTGR_E825		256
 
 int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable);
 int ice_tspll_init(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index c27f5cabfb1fe0f018b73c3c6b56d77f24db9165..e973e1db2b51c9741a71ff593361dfabc5e9f2df 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -80,93 +80,6 @@ ice_tspll_params_e82x e82x_tspll_params[NUM_ICE_TSPLL_FREQ] = {
 	},
 };
 
-static const struct
-ice_tspll_params_e825c e825c_tspll_params[NUM_ICE_TSPLL_FREQ] = {
-	/* ICE_TSPLL_FREQ_25_000 -> 25 MHz */
-	{
-		/* ck_refclkfreq */
-		0x19,
-		/* ndivratio */
-		1,
-		/* fbdiv_intgr */
-		320,
-		/* fbdiv_frac */
-		0,
-		/* ref1588_ck_div */
-		0,
-	},
-
-	/* ICE_TSPLL_FREQ_122_880 -> 122.88 MHz */
-	{
-		/* ck_refclkfreq */
-		0x29,
-		/* ndivratio */
-		3,
-		/* fbdiv_intgr */
-		195,
-		/* fbdiv_frac */
-		1342177280UL,
-		/* ref1588_ck_div */
-		0,
-	},
-
-	/* ICE_TSPLL_FREQ_125_000 -> 125 MHz */
-	{
-		/* ck_refclkfreq */
-		0x3E,
-		/* ndivratio */
-		2,
-		/* fbdiv_intgr */
-		128,
-		/* fbdiv_frac */
-		0,
-		/* ref1588_ck_div */
-		0,
-	},
-
-	/* ICE_TSPLL_FREQ_153_600 -> 153.6 MHz */
-	{
-		/* ck_refclkfreq */
-		0x33,
-		/* ndivratio */
-		3,
-		/* fbdiv_intgr */
-		156,
-		/* fbdiv_frac */
-		1073741824UL,
-		/* ref1588_ck_div */
-		0,
-	},
-
-	/* ICE_TSPLL_FREQ_156_250 -> 156.25 MHz */
-	{
-		/* ck_refclkfreq */
-		0x1F,
-		/* ndivratio */
-		5,
-		/* fbdiv_intgr */
-		256,
-		/* fbdiv_frac */
-		0,
-		/* ref1588_ck_div */
-		0,
-	},
-
-	/* ICE_TSPLL_FREQ_245_760 -> 245.76 MHz */
-	{
-		/* ck_refclkfreq */
-		0x52,
-		/* ndivratio */
-		3,
-		/* fbdiv_intgr */
-		97,
-		/* fbdiv_frac */
-		2818572288UL,
-		/* ref1588_ck_div */
-		0,
-	},
-};
-
 /**
  * ice_tspll_clk_freq_str - Convert time_ref_freq to string
  * @clk_freq: Clock frequency
@@ -402,7 +315,6 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	union ice_cgu_r16 dw16;
 	union ice_cgu_r23 dw23;
 	union ice_cgu_r22 dw22;
-	union ice_cgu_r24 dw24;
 	union ice_cgu_r9 dw9;
 	int err;
 
@@ -418,9 +330,8 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EINVAL;
 	}
 
-	if (clk_src == ICE_CLK_SRC_TCXO && clk_freq != ICE_TSPLL_FREQ_156_250) {
-		dev_warn(ice_hw_to_dev(hw),
-			 "TCXO only supports 156.25 MHz frequency\n");
+	if (clk_freq != ICE_TSPLL_FREQ_156_250) {
+		dev_warn(ice_hw_to_dev(hw), "Adapter only supports 156.25 MHz frequency\n");
 		return -EINVAL;
 	}
 
@@ -472,7 +383,7 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return err;
 
 	/* Choose the referenced frequency */
-	dw16.ck_refclkfreq = e825c_tspll_params[clk_freq].ck_refclkfreq;
+	dw16.ck_refclkfreq = ICE_TSPLL_CK_REFCLKFREQ_E825;
 	err = ice_write_cgu_reg(hw, ICE_CGU_R16, dw16.val);
 	if (err)
 		return err;
@@ -482,8 +393,8 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
-	dw19.tspll_fbdiv_intgr = e825c_tspll_params[clk_freq].fbdiv_intgr;
-	dw19.tspll_ndivratio = e825c_tspll_params[clk_freq].ndivratio;
+	dw19.tspll_fbdiv_intgr = ICE_TSPLL_FBDIV_INTGR_E825;
+	dw19.tspll_ndivratio = ICE_TSPLL_NDIVRATIO_E825;
 
 	err = ice_write_cgu_reg(hw, ICE_CGU_R19, dw19.val);
 	if (err)
@@ -507,17 +418,15 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
-	dw23.ref1588_ck_div = e825c_tspll_params[clk_freq].ref1588_ck_div;
+	dw23.ref1588_ck_div = 0;
 	dw23.time_ref_sel = clk_src;
 
 	err = ice_write_cgu_reg(hw, ICE_CGU_R23, dw23.val);
 	if (err)
 		return err;
 
-	dw24.val = 0;
-	dw24.fbdiv_frac = e825c_tspll_params[clk_freq].fbdiv_frac;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
+	/* Clear the R24 register. */
+	err = ice_write_cgu_reg(hw, ICE_CGU_R24, 0);
 	if (err)
 		return err;
 

-- 
2.48.1.397.gec9d649cc640


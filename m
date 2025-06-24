Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8241FAE588B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 02:30:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A688B4085D;
	Tue, 24 Jun 2025 00:30:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Va5XaBG81c0b; Tue, 24 Jun 2025 00:30:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BFCD40A01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750725011;
	bh=JIC3dXoJl4jYg/oomitiXRa6hi/diRKmmAvUar8MOO0=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H4W8zkBdzKJgO/TqlV0zr7tckZvxo1VEHP4Q1rX+M74ACgjYKR8l7hkFoatsKFj+7
	 PV0ILi+QvBlM9UtcZx7j6+kxKOzEJx+RJHnLjs0wK9GmYUHmtSbuM4ZezlCTtDrmgo
	 OLNykXNgVt8nJB1GFSr00s7W0lpUirPFBjq5tPURAooSdYiQiBl69m5nXRcKKEOgH1
	 CrKVeNRbEF0OfsWTJ5EG8va8Jw1RZG7nKvCfz9grnHNUBkE/y3OlOfSy3T8Q8nRLm+
	 quZaP1WKfc3XuhlsVz4W4Lq/aUeL3Ox7IcWJi7NVK7YouTsVWbxT0WqmbHo+TusqRy
	 KZLLjdq/NlOsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BFCD40A01;
	Tue, 24 Jun 2025 00:30:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B813154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5491F4072D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AFT0H1RWqYl5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 00:30:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B30EA40692
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B30EA40692
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B30EA40692
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:07 +0000 (UTC)
X-CSE-ConnectionGUID: MHYguKuEQgqzNA0zZLTz2A==
X-CSE-MsgGUID: sbl7LYbxRVudOepftdpSsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52067912"
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="52067912"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:06 -0700
X-CSE-ConnectionGUID: ffmBVAaDTXyI68ELtCYZFg==
X-CSE-MsgGUID: ebUURq9LQLWHsQ9ewLjkLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="157534038"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:05 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 23 Jun 2025 17:29:58 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-kk-tspll-improvements-alignment-v1-2-fe9a50620700@intel.com>
References: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
In-Reply-To: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750725008; x=1782261008;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=JQulblvZ9KguPREQqmiIHpNZ2kGo1SG8kyE41WYNtTw=;
 b=gbzzdegsh1BdW5j8yE/2ezLuOmSmfFtdiXNx6/Wr7v/MYJAOfCIp3kUS
 Fwcm1begXSKoV9Y4VRAchB7bFFZ66A10flYtjHxe70sooYCFbPRMMxg1r
 FQK34UlSPpiwzF22VReftw6mIY9fpRS7hUqOCvo2b8cssdA+bwY+0kpdI
 be67iFhOwFY6g3T/zNHZL+68vd8sjXTbDXzojqW5YNrdrtktKc1gHvU7h
 g8RtGDMHesNZPeKZDn6MurMC5V1cteUbD/E5CA9Dx0P2Aly8qbp1ETKDH
 HdniXqHlH0LEwp7pMnbgg5qMKKl3rpwVB0ERjPxe3yx+n7cX1Dub9Edhm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gbzzdegs
Subject: [Intel-wired-lan] [PATCH 2/8] ice: read TSPLL registers again
 before reporting status
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

After programming the TSPLL, re-read the registers before reporting status.
This ensures the debug log message will show what was actually programmed,
rather than relying on a cached value.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 5a2ddd3feba2f96d14c817a697423219cadc45e6..ce494fc2193ece9e64a6957bcaf18edd621992df 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -239,8 +239,11 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EBUSY;
 	}
 
-	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, clk_src, clk_freq, true,
-			  true);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &dw9.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &dw24.val);
+
+	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, dw24.time_ref_sel,
+			  dw9.time_ref_freq_sel, true, false);
 
 	return 0;
 }
@@ -433,8 +436,11 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EBUSY;
 	}
 
-	ice_tspll_log_cfg(hw, dw23.ts_pll_enable, clk_src, clk_freq, true,
-			  true);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &dw9.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &dw23.val);
+
+	ice_tspll_log_cfg(hw, dw23.ts_pll_enable, dw23.time_ref_sel,
+			  dw9.time_ref_freq_sel, true, true);
 
 	return 0;
 }

-- 
2.48.1.397.gec9d649cc640


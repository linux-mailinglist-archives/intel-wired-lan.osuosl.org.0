Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B87EAA5832
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 00:51:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C41E26101A;
	Wed, 30 Apr 2025 22:51:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 51JkD7gh4I5V; Wed, 30 Apr 2025 22:51:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 303E060FCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746053509;
	bh=9SJDXCu6Pf2WE4v7p3Gw/ERZ89vXElUVpGWb5iNvzn4=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lQjnVenAsL3zv7FXjk0ohirrO1LFfuulTcLCqsOkvoD0L2ebwXgAgxQYtn/QZ+8mc
	 72N2e9+Bitvw3u+RzwC0WSzjzgBMTrrUC7+rPS/e019llcWe1+TexUpRkTg0ssuIuz
	 nY1nhpWHCVXlHF6Qxkj0JpXFoj/oztw5YHZZTu6SSxxa4AI7Rju2ag3xg5FeCqUH4t
	 0a/ZSQNQfjBWot8YG7Vq9z5u1JjqaUjI20+2S0zErQ1cBs49zCLiJpujufQFSAHtOQ
	 x3/REJuhfxal/MEhI8+Q10Amq4lj1tTE6TgFxE26/zhvJn8nu93QXapev7lLOgBwi5
	 ytsiJRrqQaj2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 303E060FCC;
	Wed, 30 Apr 2025 22:51:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 40F23E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2FBC80A8F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G8cvSYArfR4W for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 22:51:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2773A80B70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2773A80B70
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2773A80B70
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:43 +0000 (UTC)
X-CSE-ConnectionGUID: HBx4f1F9RzOiYz9OiW21lg==
X-CSE-MsgGUID: iNYWMfLXR0S3EPqaZHKaCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="73120911"
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="73120911"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:41 -0700
X-CSE-ConnectionGUID: AbB+TaFSSv2CVu3NtC5iAg==
X-CSE-MsgGUID: lwWiY5HnTxWgmmwGAioB3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="134145113"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 30 Apr 2025 15:51:46 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250430-kk-tspll-improvements-alignment-v3-15-ab8472e86204@intel.com>
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
 t=1746053503; x=1777589503;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=VL7dxNtLUsOsauajRS7M6LwcerBRKBfspc0KClZyVfA=;
 b=oCVQ5WmEu3w9+OQufamFg9cz8WXZ1FcCO2rzwDSHO9aP3JMVSK5fTfdi
 BXpg9t7bsZzBiNC/Ywck91AbNCCBCVjYpBnEfENZxy6fLstMyDcVAptpc
 0PM9OHPBgD3NMGmrgzI4MxZjR6WWpslgtNJ039gQwk8vdxPOFvNFJpKom
 Lwhb8YFfKGtHmF50lPvDuUv/uZBlRu65Xmv3C3YPfW9vFyCdmjeuDV7wT
 R5PpZRX8LYW6AGatdl5plYz3RVVhrN0tvU2WLr+TzCuNOtlKv2SUlZWx4
 7e+ZOWCbl/9CciIJ5JQ2rKiPtHH2It2Bo0PXs3m5K8+IrGRdNeVoPIPqM
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oCVQ5WmE
Subject: [Intel-wired-lan] [PATCH v3 15/15] ice: change default clock source
 for E825-C
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

The driver currently defaults to the internal oscillator as the clock
source for E825-C hardware. While this clock source is labeled TCXO,
indicating a temperature compensated oscillator, this is only true for some
board designs. Many board designs have a less capable oscillator. The
E825-C hardware may also have its clock source set to the TIME_REF pin.
This pin is connected to the DPLL and is often a more stable clock source.
The choice of the internal oscillator is not suitable for all systems,
especially those which want to enable SyncE support.

There is currently no interface available for users to configure the clock
source. Other variants of the E82x board have the clock source configured
in the NVM, but E825-C lacks this capability, so different board designs
cannot select a different default clock via firmware.

In most setups, the TIME_REF is a suitable default clock source.
Additionally, we now fall back to the internal oscillator automatically if
the TIME_REF clock source cannot be locked.

Change the default clock source for E825-C to TIME_REF. Longer term, a
proper interface (perhaps through dpll subsystem?) to introspect and
configure the clock source should be designed.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index e5099a3ccb854424f98c5fb1524f49bde1ca4534..bfa3f58c1104def9954073501012bb58a13e8821 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2302,7 +2302,7 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 		info->clk_src = ((number & ICE_TS_CLK_SRC_M) != 0);
 	} else {
 		info->clk_freq = ICE_TSPLL_FREQ_156_250;
-		info->clk_src = ICE_CLK_SRC_TCXO;
+		info->clk_src = ICE_CLK_SRC_TIME_REF;
 	}
 
 	if (info->clk_freq < NUM_ICE_TSPLL_FREQ) {

-- 
2.48.1.397.gec9d649cc640


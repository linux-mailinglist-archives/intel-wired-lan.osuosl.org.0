Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F267A3F47F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 13:35:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19BC640C76;
	Fri, 21 Feb 2025 12:35:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZbSyp3MkJ50d; Fri, 21 Feb 2025 12:35:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FC2A40B4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740141307;
	bh=LxqumeDuhHvF+zRF1JvwO2fc5vx03A0X3t5k99v5TDw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SJfioED1DsO2uOQq8r/27zudE01QrPCN4ERU4J/fBRjXdM8Zle7ozCTffab31eTz1
	 1DJ2Q5g0oeeZg5UvpzwyoN3KiwpMfafa0kmM1vlQ1Vp2cIVzM3r6GUZutE4Rw2vS9/
	 sujlBkOTOgyszwoS03meLZmDhft83Gfec+DIbXAo4+9vjzYSZq9Sz8UszZeUMipyKh
	 CR/9+U5jp3saSTbCgERGIPjEmjIgB8UImM5EbOtdfeqGrvVT6jRYo2R5QNg3IAr7K8
	 4cMX0dZdMGuIZAh6ryXJ/0RdJsqqA6sYnfkGjtGAXNc5UnP5FeVRonRWqZDIpUhUDB
	 miM2bXMGlKWqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FC2A40B4C;
	Fri, 21 Feb 2025 12:35:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 43752194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:35:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28A4460A70
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:35:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vobx4si9RqTI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 12:35:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4FC3360715
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FC3360715
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4FC3360715
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:35:04 +0000 (UTC)
X-CSE-ConnectionGUID: 2/yrJr4mQN20+G1P6ziT+Q==
X-CSE-MsgGUID: aPzwssNsRVGyviytqp/FZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="66321393"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="66321393"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 04:35:04 -0800
X-CSE-ConnectionGUID: WRG5IlcUR5ea/qOPxAw4jw==
X-CSE-MsgGUID: p5nbd5RwQ4qRTvaUJ+i0PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115862562"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa007.jf.intel.com with ESMTP; 21 Feb 2025 04:35:03 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Feb 2025 13:31:21 +0100
Message-Id: <20250221123123.2833395-2-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250221123123.2833395-1-grzegorz.nitka@intel.com>
References: <20250221123123.2833395-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740141304; x=1771677304;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OokhZU0ucJA3wv81A0URemxNst8DeX54Kzy94AdQM0Y=;
 b=BbUJORKdmaTdsrBxWjuT8U1KzwdtA23i8AvctX2Vj4vJCtUSKM0+OLJR
 9MpKbLulVm8TGclvvMYmaUWmdwThy9VYH3P/exYdmLU4EO99Pf0J+PxF3
 a4VkAhJF+8pb0WkZDhiHBExEFBuI6Uq9HGKNhg4CVtp8emXRVZA72s5rd
 FCUPZ9Zglbi+gKh9SsN3JXxITmyB+f/ec9+cHnfQhwdMmlQKgEwNEolH1
 q3QyA5i5Q05RZNrsHml3Cc7PdX2IHe669xAqk3Ua7C7G8+RhEs/5/GXTr
 /lDtuLIXY887ddkIf8Y6TVdVP5EpwDuuh/tIjX9rcSpbOIrxjOez6ckwh
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BbUJORKd
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: remove SW side band
 access workaround for E825
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

Due to the bug in FW/NVM autoload mechanism (wrong default
SB_REM_DEV_CTL register settings), the access to peer PHY and CGU
clients was disabled by default.
As the workaround solution, the register value was overwritten by the
driver at the probe or reset handling.
Remove workaround as it's not needed anymore. The fix in autoload
procedure has been provided with NVM 3.80 version.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 23 ---------------------
 1 file changed, 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 89bb8461284a..a5df081ffc19 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2630,25 +2630,6 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
 	return 0;
 }
 
-/**
- * ice_sb_access_ena_eth56g - Enable SB devices (PHY and others) access
- * @hw: pointer to HW struct
- * @enable: Enable or disable access
- *
- * Enable sideband devices (PHY and others) access.
- */
-static void ice_sb_access_ena_eth56g(struct ice_hw *hw, bool enable)
-{
-	u32 val = rd32(hw, PF_SB_REM_DEV_CTL);
-
-	if (enable)
-		val |= BIT(eth56g_phy_0) | BIT(cgu) | BIT(eth56g_phy_1);
-	else
-		val &= ~(BIT(eth56g_phy_0) | BIT(cgu) | BIT(eth56g_phy_1));
-
-	wr32(hw, PF_SB_REM_DEV_CTL, val);
-}
-
 /**
  * ice_ptp_init_phc_e825 - Perform E825 specific PHC initialization
  * @hw: pointer to HW struct
@@ -2659,8 +2640,6 @@ static void ice_sb_access_ena_eth56g(struct ice_hw *hw, bool enable)
  */
 static int ice_ptp_init_phc_e825(struct ice_hw *hw)
 {
-	ice_sb_access_ena_eth56g(hw, true);
-
 	/* Initialize the Clock Generation Unit */
 	return ice_init_cgu_e82x(hw);
 }
@@ -2747,8 +2726,6 @@ static void ice_ptp_init_phy_e825(struct ice_hw *hw)
 	params->num_phys = 2;
 	ptp->ports_per_phy = 4;
 	ptp->num_lports = params->num_phys * ptp->ports_per_phy;
-
-	ice_sb_access_ena_eth56g(hw, true);
 }
 
 /* E822 family functions
-- 
2.39.3


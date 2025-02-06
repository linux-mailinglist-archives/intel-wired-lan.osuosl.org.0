Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE447A2A360
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 09:40:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DF8483B2C;
	Thu,  6 Feb 2025 08:40:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 024iwYjX_o4A; Thu,  6 Feb 2025 08:40:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C010A817A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738831232;
	bh=e4TX5fTEFtySvcyCvG3Ya1R3/esWS4unUsonviJ3TV4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xm5rBGXZbBWEINEjRBdYI5Bmj+7mb6D5kmrRP2zy/ybgb4UqcStIzjFzZmHW+RCWN
	 PfRdVxoio6ICmHSrj944q75pSZwXAQrIQwd75PKTfuz5H0MQCj1pLx9faLBlDr6MEl
	 t9LJhGiCgLTFs/W45XXyhtU0NDoQZLbWO3XPuwSb8EYjMy8o8t3cBBwL2OdTr0RvKY
	 QOZHFegwrTXJ+IoasX1OiWyde+r/1tZyOc8ORvmLaKSYPRAhruGw+Rt5d6gRBjYjT1
	 KsIg/EJzsLxCPDEI2eaGxGF7mbRPDyLFqm075mYNJZN1nZOEaw4HFNVVvjLv6TR43+
	 8PYpilswVthZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C010A817A5;
	Thu,  6 Feb 2025 08:40:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 86A4A12F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:40:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A59D8156A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:40:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z8XFv7kmlr33 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 08:40:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9143B814AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9143B814AB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9143B814AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 08:40:29 +0000 (UTC)
X-CSE-ConnectionGUID: fEhpI1g1RKCG7SDitftJTA==
X-CSE-MsgGUID: BaF0VlE6Q1Sr12SQX1GYDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49667823"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="49667823"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 00:40:29 -0800
X-CSE-ConnectionGUID: YKJysrYgQTCoAZUtI26INw==
X-CSE-MsgGUID: 07vMuCMeSJKAAIWU21kd7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="110979378"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by fmviesa006.fm.intel.com with ESMTP; 06 Feb 2025 00:40:27 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Feb 2025 09:36:53 +0100
Message-Id: <20250206083655.3005151-2-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
References: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738831230; x=1770367230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k1Ti7SgA70qAbXdLeZYBjcInqT9fi/BmVWI2W8IES6c=;
 b=kLWw4WEs9dPFS7d4O+lW++ZYMaKp21HOW0nWiQbuvNvS0H/H8VyfHppw
 PUmX+Sk1RyDKYWUh/zRZHErcptaKwfblrel3C7r3qHch9H1Tdres64qg7
 oDoVC6d+qHXpAmnQ6Tf91aOlDVSis8v9SlUKIjgETc0OlDg+ZvxY75zNA
 RRXfc/c7u5pcSDosqZftje928+DxhqaLz+bPK4KPtt2r+JBx7mfynTu40
 S9DW+U+OpGyN6JlH8Zt7Q47TirwmC5iGljfd146aL3G4Qh+V7QkQd2Mnt
 PMVIwG8oAy8ctGAvsK0dB/Z3UQUjakFfV0ZGinbkvw6UmtN2hDPi7Ri1b
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kLWw4WEs
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: Add sync delay for
 E825C
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
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

Implement setting GLTSYN_SYNC_DLAY for E825C products.
This is the execution delay compensation of SYNC command between
PHC and PHY.
Also, refactor the code by changing ice_ptp_init_phc_eth56g function
name to ice_ptp_init_phc_e825, to be consistent with the naming pattern
for other devices.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 14 +++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  3 +++
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3e824f7b30c0..c3dea6d61de4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2650,18 +2650,18 @@ static void ice_sb_access_ena_eth56g(struct ice_hw *hw, bool enable)
 }
 
 /**
- * ice_ptp_init_phc_eth56g - Perform E82X specific PHC initialization
+ * ice_ptp_init_phc_e825 - Perform E825 specific PHC initialization
  * @hw: pointer to HW struct
  *
- * Perform PHC initialization steps specific to E82X devices.
+ * Perform E825-specific PTP hardware clock initialization steps.
  *
- * Return:
- * * %0     - success
- * * %other - failed to initialize CGU
+ * Return: 0 on success, negative error code otherwise.
  */
-static int ice_ptp_init_phc_eth56g(struct ice_hw *hw)
+static int ice_ptp_init_phc_e825(struct ice_hw *hw)
 {
 	ice_sb_access_ena_eth56g(hw, true);
+	ice_ptp_cfg_sync_delay(hw, ICE_E825_SYNC_DELAY);
+
 	/* Initialize the Clock Generation Unit */
 	return ice_init_cgu_e82x(hw);
 }
@@ -6123,7 +6123,7 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	case ICE_MAC_GENERIC:
 		return ice_ptp_init_phc_e82x(hw);
 	case ICE_MAC_GENERIC_3K_E825:
-		return ice_ptp_init_phc_eth56g(hw);
+		return ice_ptp_init_phc_e825(hw);
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 8442d1d60351..10295fa9a383 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -324,7 +324,10 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
  */
 #define ICE_E810_PLL_FREQ		812500000
 #define ICE_PTP_NOMINAL_INCVAL_E810	0x13b13b13bULL
+
+/* PHC to PHY synchronization delay definitions */
 #define ICE_E810_E830_SYNC_DELAY	0
+#define ICE_E825_SYNC_DELAY		6
 
 /* Device agnostic functions */
 u8 ice_get_ptp_src_clock_index(struct ice_hw *hw);
-- 
2.39.3


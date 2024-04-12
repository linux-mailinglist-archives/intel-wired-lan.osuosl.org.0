Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 562C28A2F02
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 15:11:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEBFC608B2;
	Fri, 12 Apr 2024 13:11:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cxK_ZadQSuFw; Fri, 12 Apr 2024 13:11:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94AED60886
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712927495;
	bh=VcEkyQaVLyyBx1Xcx84dXqZY4QneoQTc5t51C+eTNWY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WhVERAN9Kg/bqAljimk6iO2blzpn9b3lLoZx1pKtdrnTv6VRbVnQHfHZtYN8eTLwE
	 fyKeTVvQgVPkftiETlPHcWfIV36Tn3yP73v8x/fZC30Yh5uwYO5gsXxvBL31WFGXBW
	 SqiDtZlcUgId8Xij2gBfJ1T+yoxIWR6ZmFTJLFe23q62zFzulzrBv77z5bPYyv7lf1
	 +xJn7ibJ+2TOtbviOk09E6hIdEhIHMGTwBYqhtkKOTMShFRDhaipYZmRQ/e2M2sJ2b
	 H36f0ZXklyQodbMhP/D/k0tM1lAtHYLsIcq60y/tHVnTH1ioxLU8GURWL0ZrgFzmbb
	 brVxRwEjApcpw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94AED60886;
	Fri, 12 Apr 2024 13:11:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2FA491BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0238C8228C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q9W07jEf5uqP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 13:11:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E68E782290
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E68E782290
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E68E782290
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 13:11:25 +0000 (UTC)
X-CSE-ConnectionGUID: GDGZQdYyTbigmPFaUalV+g==
X-CSE-MsgGUID: 9ueaJaEDSKGr6PJkeFaBCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12230967"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="12230967"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 06:11:18 -0700
X-CSE-ConnectionGUID: P9aeT+WgRl24NCMmHLTjew==
X-CSE-MsgGUID: bqqP+BDbRD+5/X2hCa5uHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="52384887"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa001.fm.intel.com with ESMTP; 12 Apr 2024 06:11:16 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Apr 2024 15:06:47 +0200
Message-ID: <20240412131104.322851-18-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240412131104.322851-14-karol.kolacinski@intel.com>
References: <20240412131104.322851-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712927486; x=1744463486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pjdW3rHfTH/ULFHjNp9yphnnD4pBVED7Ka/okI7hORI=;
 b=O486G61HiX2XNVS4+UG/0/ilI/TS0+DxgJD+pw/URyNEaMuE0inKZ6Hj
 ZrpK8CoBFrk66NlTccVlfGmtUnOOTSMHuXSJIl9kGAYuYPsBD4SPqiG3A
 zQE3J6/kdKicQdjo3ZB1YcQVF+Y+9CwpLUH0JUrgpoFjgDKZduOs3zjVw
 K13ZJ2Xhlmd4IC2EfZqWRKxE9ng3Xf7AH3bm75gj5CQgP35Kt2cCUw9Ix
 7ZseZApzR1YsBVdRLVSAUlBjfIlJlJp02yh8HmiPkw63xlhfYKr9KN5dT
 KTZg2W4PMte8S4K0PPAK0YYqrIqSaQB4UFTCyy9xCu8rNNr4SK4ntAso2
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O486G61H
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 04/12] ice: Add PHY
 OFFSET_READY register clearing
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a possibility to mark all transmitted/received timestamps as invalid
by clearing PHY OFFSET_READY registers.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 11 ++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 32 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
 3 files changed, 40 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 18d5dff6b872..6899b331f322 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1930,11 +1930,14 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	struct ice_hw *hw = &pf->hw;
 	int err;
 
-	/* For Vernier mode, we need to recalibrate after new settime
-	 * Start with disabling timestamp block
+	/* For Vernier mode on E82X, we need to recalibrate after new settime.
+	 * Start with marking timestamps as invalid.
 	 */
-	if (pf->ptp.port.link_up)
-		ice_ptp_port_phy_stop(&pf->ptp.port);
+	if (hw->ptp.phy_model == ICE_PHY_E82X) {
+		err = ice_ptp_clear_phy_offset_ready_e82x(hw);
+		if (err)
+			dev_warn(ice_pf_to_dev(pf), "Failed to mark timestamps as invalid before settime\n");
+	}
 
 	if (!ice_ptp_lock(hw)) {
 		err = -EBUSY;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index bd25ebd976bc..3c0efdd3cb8a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2405,6 +2405,38 @@ int ice_phy_cfg_rx_offset_e82x(struct ice_hw *hw, u8 port)
 	return 0;
 }
 
+/**
+ * ice_ptp_clear_phy_offset_ready_e82x - Clear PHY TX_/RX_OFFSET_READY registers
+ * @hw: pointer to the HW struct
+ *
+ * Clear PHY TX_/RX_OFFSET_READY registers, effectively marking all transmitted
+ * and received timestamps as invalid.
+ */
+int ice_ptp_clear_phy_offset_ready_e82x(struct ice_hw *hw)
+{
+	u8 port;
+
+	for (port = 0; port < hw->ptp.num_lports; port++) {
+		int err;
+
+		err = ice_write_phy_reg_e82x(hw, port, P_REG_TX_OR, 0);
+		if (err) {
+			dev_warn(ice_hw_to_dev(hw),
+				 "Failed to clear PHY TX_OFFSET_READY register\n");
+			return err;
+		}
+
+		err = ice_write_phy_reg_e82x(hw, port, P_REG_RX_OR, 0);
+		if (err) {
+			dev_warn(ice_hw_to_dev(hw),
+				 "Failed to clear PHY RX_OFFSET_READY register\n");
+			return err;
+		}
+	}
+
+	return 0;
+}
+
 /**
  * ice_read_phy_and_phc_time_e82x - Simultaneously capture PHC and PHY time
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 5645b20a9f87..5223e17d2806 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -208,6 +208,7 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time);
 int ice_ptp_write_incval(struct ice_hw *hw, u64 incval);
 int ice_ptp_write_incval_locked(struct ice_hw *hw, u64 incval);
 int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj);
+int ice_ptp_clear_phy_offset_ready_e82x(struct ice_hw *hw);
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp);
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx);
 void ice_ptp_reset_ts_memory(struct ice_hw *hw);
-- 
2.43.0


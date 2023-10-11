Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 052847C50C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 13:03:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9678F610C6;
	Wed, 11 Oct 2023 11:03:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9678F610C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697022193;
	bh=BXghXEJgOqXPH27fIKippPcYPs/zOojCBx4b7xCymrs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KLW1h0kfUJy74e/3JXEm9Tidb1p1NZyeGP0n7Sd63V/N18UOLJU7lJU42suunbrkd
	 PnVL3x+/3d7wgV+w2WgrkjpAYdoaOceTFHrc22YH3nJJv+tCtz8w8WOQU+OpY553qf
	 wB2s8/49+DFIJkNjO+uHTExKAB7LAKwWbx/xhGR9CxlKC9H3VJA68L1R6VaC6ncero
	 GDyw488Km/xlMWX8CFn6VgtkSLQcLXLgc44IJs5cStr9T76Zq6sdc1aXCFYVrohC/S
	 2K+SHksaZsigg9DrxLI5DlmYBE8JFxVTo7JGmStJW30cX5X3SpQ+XkmwxZDl2g15j8
	 PMhrP5dJ8VM8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gactVa9JcrHh; Wed, 11 Oct 2023 11:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32DCC60608;
	Wed, 11 Oct 2023 11:03:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32DCC60608
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB72F1BF855
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 11:03:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A13D882265
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 11:03:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A13D882265
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0fSwygwMityT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 11:03:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 895E6821FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 11:03:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 895E6821FE
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="363994300"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="363994300"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 04:03:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="824118617"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="824118617"
Received: from unknown (HELO kkolacin-DESK1.igk.intel.com) ([10.102.102.152])
 by fmsmga004.fm.intel.com with ESMTP; 11 Oct 2023 04:03:01 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Oct 2023 13:02:58 +0200
Message-Id: <20231011110258.203770-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697022185; x=1728558185;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uOgIJDf2zxElhMnLIZqfUjDA82fLs/iAmAArFSb3nqw=;
 b=RKo7iNEDatYtmkcw8b3vM810KNEym9ObsYSMRNoc68Epe0LoL1oQT7dq
 MIWAQKkfjLWYx/+2DHsNCEKNgZI6w1vNWwuuhT9JEKk+JikD0CmTNrscz
 WoMuDVxyRSMUvl7QGt0y0ZXiowoq7M1fMRumMSMSzT6vuy9bzy4cnHa1T
 R5tEq4EZBwFYXiqjHjPRO9IBoC1YStlADOnokKlIDXpEhrzf1cda1lFfd
 6He1P8lL/s+Q3IJUy2UPqynIxRZrzQFmQbUuKlhV+w6f5HD9N0OA0du65
 rXVDRwxN+7dCj33bdn7ldMPSaTSr92okT3oohKsLrjS7+hiqI2Q1oCnXH
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RKo7iNED
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Don't disable PHY before
 settime
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com, Larysa Zaremba <larysa.zaremba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When settime is called, the driver tries to disable the PHY to avoid
PHY clock running and giving incorrect timestamps during time change.
PHY stop procedure takes more HW writes than just marking timestamps as
invalid. After settime, the PHYs is recalibrated and timestamping is
reenabled.
Change disabling the PHY to marking timestamps as invalid.

Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  7 +--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 49 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
 3 files changed, 54 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 1eddcbe89b0c..50ee90fd77d6 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1796,10 +1796,11 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	int err;
 
 	/* For Vernier mode, we need to recalibrate after new settime
-	 * Start with disabling timestamp block
+	 * Start with marking timestamps as invalid.
 	 */
-	if (pf->ptp.port.link_up)
-		ice_ptp_port_phy_stop(&pf->ptp.port);
+	err = ice_ptp_clear_phy_offset_ready(hw);
+	if (err)
+		dev_warn(ice_pf_to_dev(pf), "Failed to mark timestamps as invalid before settime\n");
 
 	if (!ice_ptp_lock(hw)) {
 		err = -EBUSY;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 6d573908de7a..5984df8cb942 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2323,6 +2323,36 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
 	return 0;
 }
 
+/**
+ * ice_ptp_clear_phy_offset_ready_e822 - Clear PHY TX_/RX_OFFSET_READY registers
+ * @hw: pointer to the HW struct
+ *
+ * Clear PHY TX_/RX_OFFSET_READY registers, effectively marking all transmitted
+ * and received timestamps as invalid.
+ */
+static int ice_ptp_clear_phy_offset_ready_e822(struct ice_hw *hw)
+{
+	u8 port;
+
+	for (port = 0; port < hw->phy_ports; port++) {
+		int err;
+
+		err = ice_write_phy_reg_e822(hw, port, P_REG_TX_OR, 0);
+		if (err) {
+			ice_warn(hw, "Failed to clear PHY TX_OFFSET_READY register\n");
+			return err;
+		}
+
+		err = ice_write_phy_reg_e822(hw, port, P_REG_RX_OR, 0);
+		if (err) {
+			ice_warn(hw, "Failed to clear PHY RX_OFFSET_READY register\n");
+			return err;
+		}
+	}
+
+	return 0;
+}
+
 /**
  * ice_read_phy_and_phc_time_e822 - Simultaneously capture PHC and PHY time
  * @hw: pointer to the HW struct
@@ -3505,6 +3535,25 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	return ice_ptp_tmr_cmd(hw, ICE_PTP_ADJ_TIME);
 }
 
+/**
+ * ice_ptp_clear_phy_offset_ready - Clear PHY TX_/RX_OFFSET_READY registers
+ * @hw: pointer to the HW struct
+ *
+ * Clear PHY TX_/RX_OFFSET_READY registers, effectively marking all transmitted
+ * and received timestamps as invalid.
+ */
+int ice_ptp_clear_phy_offset_ready(struct ice_hw *hw)
+{
+	switch (hw->phy_model) {
+	case ICE_PHY_E810:
+		return 0;
+	case ICE_PHY_E822:
+		return ice_ptp_clear_phy_offset_ready_e822(hw);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 /**
  * ice_read_phy_tstamp - Read a PHY timestamp from the timestamo block
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 36aeeef99ec0..813ebc254135 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -208,6 +208,7 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time);
 int ice_ptp_write_incval(struct ice_hw *hw, u64 incval);
 int ice_ptp_write_incval_locked(struct ice_hw *hw, u64 incval);
 int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj);
+int ice_ptp_clear_phy_offset_ready(struct ice_hw *hw);
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp);
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx);
 void ice_ptp_reset_ts_memory(struct ice_hw *hw);

base-commit: 2318d58f358e7aef726c038aff87a68bec8f09e0
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

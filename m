Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B059763E69
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 20:28:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF94A83657;
	Wed, 26 Jul 2023 18:28:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF94A83657
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690396098;
	bh=IRhzPBQbOQa/e0Xx13U4fXYhnIbXq8a8STZzmiUvt88=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gFsqHes3ck8VpVXL/2FXyjTd2RjCO+/SF0TspUUQLLifWufWjzynWJWrtXzLlo/Bt
	 4jxTIbcmYGY/LBaNhrPt7InJ0szHt5DGMNt17cTsnmtykGPXTzy9YccgOXecF6HnXi
	 pMG96H/zCyQ+m2lQrpeBrbIUz7QYqDua6wwCm2an7gb2inGYDDRmRsNALeOMWbYh4F
	 RwOLSa06ordpyp3EocXCOCL61P2AG5FWrCe8xIXB+/4nhR2zGSmpwTNC0WZOLPNiL0
	 wP0KYaDGJjzDp7SS9jFkmpa/Vb9SP4TwWxd82sxny5ctVN3hW3Fx5qK0iGY7heCONL
	 ssMcvHp96rYsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UkHF6wXcWrcc; Wed, 26 Jul 2023 18:28:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60452833B7;
	Wed, 26 Jul 2023 18:28:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60452833B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CA061BF421
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 18:28:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3CB2B41E45
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 18:28:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CB2B41E45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5kTHj0pLqbh2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 18:27:57 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 708A541DC9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 18:27:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 708A541DC9
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="358096577"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="358096577"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 11:27:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="796684721"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="796684721"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 11:27:51 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 26 Jul 2023 11:27:43 -0700
Message-ID: <20230726182745.1326754-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230726182745.1326754-1-jacob.e.keller@intel.com>
References: <20230726182745.1326754-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690396077; x=1721932077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3Y+sHRl7MdcabKi/5q53RZcvfp3WCliaE169upMTMVU=;
 b=cntkcFcEiAGDr1GPAa7OIsWoeYFKfCsLe33UnuG0LvgNIV1tv+UxP9dU
 o1teFZvciwkxTBVrTgv3fDX6p3oUxePAHnPT5NF5DqgnRem/R7zorEgQt
 u0BESdGuvrRdKdO+4tjwnMsdxl/rF51cQIEtH+wHmoR1dz8gjTUbeq0na
 jzMu0WKavF6cMehrFEdUdnd65Zzu5swS3tMd/muluvXl08fCSg9nEVKx8
 kaNkndiOosfmVJJmFT/pw0DO8yPz+QWuwR1y00PIbyA6sILkSqDeMvzrd
 e59mwSF7exINZxFKwj8Pb1SQhzAmCjUWNSKyoUdB2DJWzHZY1CXMryeo3
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cntkcFcE
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: PTP: Clean up
 timestamp registers correctly
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

E822 PHY TS registers should not be written and the only way to clean up
them is to reset QUAD memory.

To ensure that the status bit for the timestamp index is cleared, ensure
that ice_clear_phy_tstamp implementations first read the timestamp out.
Implementations which can write the register continue to do so.

Add a note to indicate this function should only be called on timestamps
which have their valid bit set. Update the dynamic debug messages to
reflect the actual action taken.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 70 +++++++++++++--------
 1 file changed, 45 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index e501a2e0ed0f..584e63f6b617 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -628,29 +628,32 @@ ice_read_phy_tstamp_e822(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
  * @quad: the quad to read from
  * @idx: the timestamp index to reset
  *
- * Clear a timestamp, resetting its valid bit, from the PHY quad block that is
- * shared between the internal PHYs on the E822 devices.
+ * Read the timestamp out of the quad to clear its timestamp status bit from
+ * the PHY quad block that is shared between the internal PHYs of the E822
+ * devices.
+ *
+ * Note that unlike E810, software cannot directly write to the quad memory
+ * bank registers. E822 relies on the ice_get_phy_tx_tstamp_ready() function
+ * to determine which timestamps are valid. Reading a timestamp auto-clears
+ * the valid bit.
+ *
+ * To directly clear the contents of the timestamp block entirely, discarding
+ * all timestamp data at once, software should instead use
+ * ice_ptp_reset_ts_memory_quad_e822().
+ *
+ * This function should only be called on an idx whose bit is set according to
+ * ice_get_phy_tx_tstamp_ready().
  */
 static int
 ice_clear_phy_tstamp_e822(struct ice_hw *hw, u8 quad, u8 idx)
 {
-	u16 lo_addr, hi_addr;
+	u64 unused_tstamp;
 	int err;
 
-	lo_addr = (u16)TS_L(Q_REG_TX_MEMORY_BANK_START, idx);
-	hi_addr = (u16)TS_H(Q_REG_TX_MEMORY_BANK_START, idx);
-
-	err = ice_write_quad_reg_e822(hw, quad, lo_addr, 0);
+	err = ice_read_phy_tstamp_e822(hw, quad, idx, &unused_tstamp);
 	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to clear low PTP timestamp register, err %d\n",
-			  err);
-		return err;
-	}
-
-	err = ice_write_quad_reg_e822(hw, quad, hi_addr, 0);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to clear high PTP timestamp register, err %d\n",
-			  err);
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read the timestamp register for quad %u, idx %u, err %d\n",
+			  quad, idx, err);
 		return err;
 	}
 
@@ -2685,28 +2688,39 @@ ice_read_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx, u64 *tstamp)
  * @lport: the lport to read from
  * @idx: the timestamp index to reset
  *
- * Clear a timestamp, resetting its valid bit, from the timestamp block of the
- * external PHY on the E810 device.
+ * Read the timestamp and then forcibly overwrite its value to clear the valid
+ * bit from the timestamp block of the external PHY on the E810 device.
+ *
+ * This function should only be called on an idx whose bit is set according to
+ * ice_get_phy_tx_tstamp_ready().
  */
 static int ice_clear_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx)
 {
 	u32 lo_addr, hi_addr;
+	u64 unused_tstamp;
 	int err;
 
+	err = ice_read_phy_tstamp_e810(hw, lport, idx, &unused_tstamp);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read the timestamp register for lport %u, idx %u, err %d\n",
+			  lport, idx, err);
+		return err;
+	}
+
 	lo_addr = TS_EXT(LOW_TX_MEMORY_BANK_START, lport, idx);
 	hi_addr = TS_EXT(HIGH_TX_MEMORY_BANK_START, lport, idx);
 
 	err = ice_write_phy_reg_e810(hw, lo_addr, 0);
 	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to clear low PTP timestamp register, err %d\n",
-			  err);
+		ice_debug(hw, ICE_DBG_PTP, "Failed to clear low PTP timestamp register for lport %u, idx %u, err %d\n",
+			  lport, idx, err);
 		return err;
 	}
 
 	err = ice_write_phy_reg_e810(hw, hi_addr, 0);
 	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to clear high PTP timestamp register, err %d\n",
-			  err);
+		ice_debug(hw, ICE_DBG_PTP, "Failed to clear high PTP timestamp register for lport %u, idx %u, err %d\n",
+			  lport, idx, err);
 		return err;
 	}
 
@@ -3407,9 +3421,15 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
  * @block: the block to read from
  * @idx: the timestamp index to reset
  *
- * Clear a timestamp, resetting its valid bit, from the timestamp block. For
- * E822 devices, the block is the quad to clear from. For E810 devices, the
- * block is the logical port to clear from.
+ * Clear a timestamp from the timestamp block, discarding its value without
+ * returning it. This resets the memory status bit for the timestamp index
+ * allowing it to be reused for another timestamp in the future.
+ *
+ * For E822 devices, the block number is the PHY quad to clear from. For E810
+ * devices, the block number is the logical port to clear from.
+ *
+ * This function must only be called on a timestamp index whose valid bit is
+ * set according to ice_get_phy_tx_tstamp_ready().
  */
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 {
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

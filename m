Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C24E75A17C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 00:12:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 447A54063C;
	Wed, 19 Jul 2023 22:12:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 447A54063C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689804772;
	bh=tr2G2jkkqCD9MhkiF2ZGJI4yYbRGGnQEiRB2qfMn66c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FuGA7TPCVPuqTb+pEwWtD7B7EA3RN7lpdyiT29zJMRYEK61ArC9hbOkkzfvh9DOEV
	 gwmjF6ubGU+f0TUNhn5Rd5IubyPEyPFez/479YK7uRzo26pA7tDVgZ+28qhf4SWQT8
	 la277lbjE6UDRy2xWFTQXIkbcSVL3HwLXWZtM3fQhsxsjzebUp/zv5aG8q8n/YgD+i
	 gfftn2ta+VnlkIKNQ3n9rvSzddMewmHZgbc2i4p5X84027t29L/wqCLrdxpqOo5WvF
	 CxObC+fDBTfQVtWy5D+Hq4+LCuP33bS+aS0/c374X+qgL2as0y7Y9RzjE/xS0GelNn
	 JcgGMkxH0bAbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ZPjKed8Tkqn; Wed, 19 Jul 2023 22:12:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D301340B9D;
	Wed, 19 Jul 2023 22:12:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D301340B9D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CEEF1BF276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 22:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BDE4682035
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 22:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDE4682035
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12SFaH-90GEf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 22:12:40 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB1158209A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 22:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB1158209A
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="365460314"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="365460314"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 15:05:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="701411236"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="701411236"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 15:05:31 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 19 Jul 2023 15:05:22 -0700
Message-ID: <20230719220525.3153469-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689804759; x=1721340759;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5D7z8foyO0BOu8E1B8qqIdaqgKFFOjSkHJyNxqywxXM=;
 b=iziP8IWN64unF/Y3hOY5TILY2wB8g4QI685dDZqAj03LDOvS9+tV9m0a
 tbYWK/n/aLfbzrtmwoOj9pJQ9HvJ1kgOx0wTl1KEWcVGjp8/GSXODa42h
 0EHVvMe5OvE1ARyHvw9DW6/BSeJ0RkC2SZ4ttQWf6P7VcZNu66+beFr14
 s6Ty2zYzXgU1cvzq1Nc2iJ/w68QUyqKhQ3UPCsCuWt10V+TCvVX5psKlV
 3qw3h5eURuUL+adRsORwnPoBpJFl36ykPgP9/aFU8Qx14F5jvPFR3dLj3
 jbRaTzz6RfryQwwXSdaiAYz9Rt5gak71+FsY8bpVV+AbH3ZY+uTMDaFLD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iziP8IWN
Subject: [Intel-wired-lan] [PATCH iwl-next 1/4] ice: PTP: Cleanup timestamp
 registers correctly
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

E822 PHY TS registers should not be written and the only way to cleanup
them is to reset QUAD memory.

To ensure that the status bit for the timestamp index is cleared, ensure
that ice_clear_phy_tstamp implementations first read the timestamp out.
Implementations which can write the register continue to do so.

Add a note to indicate this function should only be called on timestamps
which have their valid bit set.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 66 ++++++++++++---------
 1 file changed, 39 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index f174bac58aba..6cab87595690 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -633,34 +633,31 @@ ice_read_phy_tstamp_e822(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
 }
 
 /**
- * ice_clear_phy_tstamp_e822 - Clear a timestamp from the quad block
+ * ice_clear_phy_tstamp_e822 - Drop a timestamp from the quad block
  * @hw: pointer to the HW struct
  * @quad: the quad to read from
  * @idx: the timestamp index to reset
  *
- * Clear a timestamp, resetting its valid bit, from the PHY quad block that is
- * shared between the internal PHYs on the E822 devices.
+ * Read the timetamp out of the quad to clear its timestamp status bit from
+ * the PHY quad block that is shared between the internal PHYs of the E822
+ * devices.
+ *
+ * Note that software cannot directly write the quad memory bank registers,
+ * and must use ice_ptp_reset_ts_memory_quad_e822 for that purpose.
+ *
+ * This function should only be called on an idx whose bit is set according to
+ * ice_get_phy_tx_tstamp_ready.
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
 
@@ -2657,28 +2654,39 @@ ice_read_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx, u64 *tstamp)
  * @lport: the lport to read from
  * @idx: the timestamp index to reset
  *
- * Clear a timestamp, resetting its valid bit, from the timestamp block of the
- * external PHY on the E810 device.
+ * Read the timestamp and then forcibly overwrite its value to clear the valid
+ * bit from the timestamp block of the external PHY on the E810 device.
+ *
+ * This function should only be called on an idx whose bit is set according to
+ * ice_get_phy_tx_tstamp_ready.
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
 
@@ -3326,14 +3334,18 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 }
 
 /**
- * ice_clear_phy_tstamp - Clear a timestamp from the timestamp block
+ * ice_clear_phy_tstamp - Drop a timestamp from the timestamp block
  * @hw: pointer to the HW struct
  * @block: the block to read from
  * @idx: the timestamp index to reset
  *
- * Clear a timestamp, resetting its valid bit, from the timestamp block. For
- * E822 devices, the block is the quad to clear from. For E810 devices, the
- * block is the logical port to clear from.
+ * Drop a timestamp from the timestamp block by reading it. This will reset
+ * the memory status bit allowing the timestamp index to be reused. For E822
+ * devices, the block is the quad to clear from. For E810 devices, the block
+ * is the logical port to clear from.
+ *
+ * This function should only be called on a timestamp index whose valid bit
+ * is set according to ice_get_phy_tx_tstamp_ready.
  */
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 {

base-commit: 751b10250f576db6fc2429132bccd453ee2e4a52
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

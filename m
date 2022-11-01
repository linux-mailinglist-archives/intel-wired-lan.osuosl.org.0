Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBA461554E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 23:53:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FC9D40544;
	Tue,  1 Nov 2022 22:53:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FC9D40544
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667343210;
	bh=a+06ob4WaaFZxs5RKVsCuQ3TnsWHeOB3tkC91y2JjnQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6MUSRpFongIVnSyDRpmtu7JI5fT1ZVGpm4OToUKCz+2Z6KMq11UQOYYbDTsHhWViz
	 bD3QcXdTth3+8f0jNDfXV4MRt3CFABLxJfdgLSPmgVRU7YCxpG3F21yEASECW3PGli
	 lxlbbsb+pKWqMZL3asQMp9bEwOZA2z51ggGahT0AMmZzQTnHXvBnKIvfP9hSvwS06H
	 SOf9VsWf/mhkqj0Ymch3vOI1+r/aWo4QXWESYh8YD1oL8/+iV6yT12HKI+Ppbw/PPZ
	 X0kz/bzIlFmK7ysm6y1rRMQZcjY3KTQBwZ5TCCghL/BpeMo9CNXv+h4jaY1BbTtOot
	 7UXUIkc8R5a/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NkUVDz2FpH2K; Tue,  1 Nov 2022 22:53:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76D1C408CC;
	Tue,  1 Nov 2022 22:53:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76D1C408CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA7C01BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79114410A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79114410A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nbqD7XDbJoGx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3786040941
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3786040941
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="371348107"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="371348107"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="723324021"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="723324021"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue,  1 Nov 2022 15:52:28 -0700
Message-Id: <20221101225240.421525-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221101225240.421525-1-jacob.e.keller@intel.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667343191; x=1698879191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e6NgTGDlz+8m8rR4hCfovxUCrY4iGXoUSBTrXDM81pk=;
 b=JtOWv8+4PGzaxBwgIO2HlWukwLygSdn3Wd9c6KMF3URobb1h9o6TNGjP
 z6jbLBlNzyH+712J0RDuFGmqd7bRbJSVyi2QoabrY31cVx2j3LtfX2GEB
 er3IjJCNG8rUFgCy395aeWdEmSc2BpCimbnM4CvkQkmAga+p0k2X/4cRY
 iAzDVOcqnmIxiIKLuFAZZ268AuGlkfUETlT0iU45OUIpHikrwkIGgR1r5
 Ciye/V/QQnoUVd9QC5igrSyH7hblOJMcFdeFHjjNgv1TmWTnsjuuidtyl
 KgFVQe/FvK41ZFZzTv7C74GiapPzbUOwutj2+LMxhUYwxkkEISLbdlOBI
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JtOWv8+4
Subject: [Intel-wired-lan] [PATCH net-next 03/15] ice: Reset TS memory for
 all quads
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

In E822 products, the owner PF should reset memory for all quads, not
only for the one where assigned lport is.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 29 ++--------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 38 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 ++
 3 files changed, 42 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 3c5965681f06..40606fa0c1d9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1036,19 +1036,6 @@ static u64 ice_base_incval(struct ice_pf *pf)
 	return incval;
 }
 
-/**
- * ice_ptp_reset_ts_memory_quad - Reset timestamp memory for one quad
- * @pf: The PF private data structure
- * @quad: The quad (0-4)
- */
-static void ice_ptp_reset_ts_memory_quad(struct ice_pf *pf, int quad)
-{
-	struct ice_hw *hw = &pf->hw;
-
-	ice_write_quad_reg_e822(hw, quad, Q_REG_TS_CTRL, Q_REG_TS_CTRL_M);
-	ice_write_quad_reg_e822(hw, quad, Q_REG_TS_CTRL, ~(u32)Q_REG_TS_CTRL_M);
-}
-
 /**
  * ice_ptp_check_tx_fifo - Check whether Tx FIFO is in an OK state
  * @port: PTP port for which Tx FIFO is checked
@@ -1101,7 +1088,7 @@ static int ice_ptp_check_tx_fifo(struct ice_ptp_port *port)
 		dev_dbg(ice_pf_to_dev(pf),
 			"Port %d Tx FIFO still not empty; resetting quad %d\n",
 			port->port_num, quad);
-		ice_ptp_reset_ts_memory_quad(pf, quad);
+		ice_ptp_reset_ts_memory_quad_e822(hw, quad);
 		port->tx_fifo_busy_cnt = FIFO_OK;
 		return 0;
 	}
@@ -1347,18 +1334,6 @@ int ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	return ice_ptp_port_phy_restart(ptp_port);
 }
 
-/**
- * ice_ptp_reset_ts_memory - Reset timestamp memory for all quads
- * @pf: The PF private data structure
- */
-static void ice_ptp_reset_ts_memory(struct ice_pf *pf)
-{
-	int quad;
-
-	quad = pf->hw.port_info->lport / ICE_PORTS_PER_QUAD;
-	ice_ptp_reset_ts_memory_quad(pf, quad);
-}
-
 /**
  * ice_ptp_tx_ena_intr - Enable or disable the Tx timestamp interrupt
  * @pf: PF private structure
@@ -1374,7 +1349,7 @@ static int ice_ptp_tx_ena_intr(struct ice_pf *pf, bool ena, u32 threshold)
 	int quad;
 	u32 val;
 
-	ice_ptp_reset_ts_memory(pf);
+	ice_ptp_reset_ts_memory(hw);
 
 	for (quad = 0; quad < ICE_MAX_QUAD; quad++) {
 		err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEM_GBL_CFG,
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 242c4db65171..6c149b88c235 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -655,6 +655,32 @@ ice_clear_phy_tstamp_e822(struct ice_hw *hw, u8 quad, u8 idx)
 	return 0;
 }
 
+/**
+ * ice_ptp_reset_ts_memory_quad_e822 - Clear all timestamps from the quad block
+ * @hw: pointer to the HW struct
+ * @quad: the quad to read from
+ *
+ * Clear all timestamps from the PHY quad block that is shared between the
+ * internal PHYs on the E822 devices.
+ */
+void ice_ptp_reset_ts_memory_quad_e822(struct ice_hw *hw, u8 quad)
+{
+	ice_write_quad_reg_e822(hw, quad, Q_REG_TS_CTRL, Q_REG_TS_CTRL_M);
+	ice_write_quad_reg_e822(hw, quad, Q_REG_TS_CTRL, ~(u32)Q_REG_TS_CTRL_M);
+}
+
+/**
+ * ice_ptp_reset_ts_memory_e822 - Clear all timestamps from all quad blocks
+ * @hw: pointer to the HW struct
+ */
+static void ice_ptp_reset_ts_memory_e822(struct ice_hw *hw)
+{
+	unsigned int quad;
+
+	for (quad = 0; quad < ICE_MAX_QUAD; quad++)
+		ice_ptp_reset_ts_memory_quad_e822(hw, quad);
+}
+
 /**
  * ice_read_cgu_reg_e822 - Read a CGU register
  * @hw: pointer to the HW struct
@@ -3247,6 +3273,18 @@ bool ice_is_pca9575_present(struct ice_hw *hw)
 	return !status && handle;
 }
 
+/**
+ * ice_ptp_reset_ts_memory - Reset timestamp memory for all blocks
+ * @hw: pointer to the HW struct
+ */
+void ice_ptp_reset_ts_memory(struct ice_hw *hw)
+{
+	if (ice_is_e810(hw))
+		return;
+
+	ice_ptp_reset_ts_memory_e822(hw);
+}
+
 /**
  * ice_ptp_init_phc - Initialize PTP hardware clock
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index db4f57cb9ec9..b0cd73aaac6b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -133,6 +133,7 @@ int ice_ptp_write_incval_locked(struct ice_hw *hw, u64 incval);
 int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj);
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp);
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx);
+void ice_ptp_reset_ts_memory(struct ice_hw *hw);
 int ice_ptp_init_phc(struct ice_hw *hw);
 
 /* E822 family functions */
@@ -141,6 +142,7 @@ int ice_write_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 val);
 int ice_read_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);
 int ice_write_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 val);
 int ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time);
+void ice_ptp_reset_ts_memory_quad_e822(struct ice_hw *hw, u8 quad);
 
 /**
  * ice_e822_time_ref - Get the current TIME_REF from capabilities
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

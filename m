Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F437624D5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 23:51:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2959C41930;
	Tue, 25 Jul 2023 21:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2959C41930
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690321874;
	bh=XajI9KcJFgsYM2A7MPv3yZl3WfFpdLSEW39SvTP5aFQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Upyzys3uOsUI8h9oR6cTEfwAejDK53XmywIGpHZJKE0ITIXNH9jpNoqt3XmNYFvIP
	 o6HSF/mC5zLLd/05GyUJoXirqOJocniVFrc69RB44Q51uZIulHAYhh7v6Bj/DpXCZ/
	 ZA9/OYVm+eirhweRr4q648mbj68ecvS6Oz//5Xl7PG+cdkCNpnSKiO8YpQ5AaaAycw
	 SmN+9FnhmRt89h/nudxtmeJhpmyk/xRPilon4QLTcMXNIsJoO2RXoCe0WmHMgxB+yI
	 nDPWzzojGl4yV0luPZcEilb9xwjpHc+dSLZrKuE/rM9+N9RvXxLvHs9pTe+HCyeEPd
	 HBieQK5BQeVxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7yOEB66HlEx; Tue, 25 Jul 2023 21:51:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40D1541833;
	Tue, 25 Jul 2023 21:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40D1541833
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1888A1BF47A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 21:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86C7341833
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 21:50:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86C7341833
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MGDC3_s8Blq8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 21:50:56 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E686A41895
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 21:50:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E686A41895
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="367879187"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="367879187"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:50:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="796290018"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="796290018"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:50:54 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 25 Jul 2023 14:50:46 -0700
Message-ID: <20230725215048.1311584-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230725215048.1311584-1-jacob.e.keller@intel.com>
References: <20230725215048.1311584-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690321855; x=1721857855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PuMOHvNTy807l+iJo3L+J4ItQRh+ncGeNbfs+6NyOeg=;
 b=QIFKPoAOPf7EhNOowj3CTwDtzOVH88BvnPUyzcDZWqVh9HMTZUpQ3iHs
 LpCJ6Vti4xoLb/5nu5RmbKJg6CeOXIZU/RtlEjSV1o/xN/qOjVlOARNS2
 4lsOCc2u7TDsqUknfOalAKJcEMVSLsosHRfftmtJVYegIcHqwN4g1vnfK
 Ij8ZjW/kba2bexiFK2pfBWjg81Mi5IEXRZcb7G1tJjZonLjOTGfpFUmQz
 o7tWAd8zCTvnT5xEMbLnx8UT8UNLlQAOB74uTdv9oJdbxANlqcgtz8cni
 hYeYaTCyNCqmAyIK1RMwWMyPNoqSsJ8R7j+SYMvO3tPYPM+Mix9W/WuZh
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QIFKPoAO
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: prefix clock timer
 command enumeration values with ICE_PTP
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

The ice driver has an enumeration for the various commands that can be
programmed to the MAC and PHY for setting up hardware clock operations.
Prefix these with ICE_PTP so that they are clearly namespaced to the ice
driver.

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 90 ++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 10 +--
 2 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index de1d83300481..8f86767adfdb 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -116,19 +116,19 @@ static void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	cmd_val = tmr_idx << SEL_CPK_SRC;
 
 	switch (cmd) {
-	case INIT_TIME:
+	case ICE_PTP_INIT_TIME:
 		cmd_val |= GLTSYN_CMD_INIT_TIME;
 		break;
-	case INIT_INCVAL:
+	case ICE_PTP_INIT_INCVAL:
 		cmd_val |= GLTSYN_CMD_INIT_INCVAL;
 		break;
-	case ADJ_TIME:
+	case ICE_PTP_ADJ_TIME:
 		cmd_val |= GLTSYN_CMD_ADJ_TIME;
 		break;
-	case ADJ_TIME_AT_TIME:
+	case ICE_PTP_ADJ_TIME_AT_TIME:
 		cmd_val |= GLTSYN_CMD_ADJ_INIT_TIME;
 		break;
-	case READ_TIME:
+	case ICE_PTP_READ_TIME:
 		cmd_val |= GLTSYN_CMD_READ_TIME;
 		break;
 	case ICE_PTP_NOP:
@@ -1025,7 +1025,7 @@ static int ice_ptp_init_phc_e822(struct ice_hw *hw)
  * @time: Time to initialize the PHY port clocks to
  *
  * Program the PHY port registers with a new initial time value. The port
- * clock will be initialized once the driver issues an INIT_TIME sync
+ * clock will be initialized once the driver issues an ICE_PTP_INIT_TIME sync
  * command. The time value is the upper 32 bits of the PHY timer, usually in
  * units of nominal nanoseconds.
  */
@@ -1074,7 +1074,7 @@ ice_ptp_prep_phy_time_e822(struct ice_hw *hw, u32 time)
  *
  * Program the port for an atomic adjustment by writing the Tx and Rx timer
  * registers. The atomic adjustment won't be completed until the driver issues
- * an ADJ_TIME command.
+ * an ICE_PTP_ADJ_TIME command.
  *
  * Note that time is not in units of nanoseconds. It is in clock time
  * including the lower sub-nanosecond portion of the port timer.
@@ -1127,7 +1127,7 @@ ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time)
  *
  * Prepare the PHY ports for an atomic time adjustment by programming the PHY
  * Tx and Rx port registers. The actual adjustment is completed by issuing an
- * ADJ_TIME or ADJ_TIME_AT_TIME sync command.
+ * ICE_PTP_ADJ_TIME or ICE_PTP_ADJ_TIME_AT_TIME sync command.
  */
 static int
 ice_ptp_prep_phy_adj_e822(struct ice_hw *hw, s32 adj)
@@ -1162,7 +1162,7 @@ ice_ptp_prep_phy_adj_e822(struct ice_hw *hw, s32 adj)
  *
  * Prepare each of the PHY ports for a new increment value by programming the
  * port's TIMETUS registers. The new increment value will be updated after
- * issuing an INIT_INCVAL command.
+ * issuing an ICE_PTP_INIT_INCVAL command.
  */
 static int
 ice_ptp_prep_phy_incval_e822(struct ice_hw *hw, u64 incval)
@@ -1248,19 +1248,19 @@ ice_ptp_write_port_cmd_e822(struct ice_hw *hw, u8 port, enum ice_ptp_tmr_cmd cmd
 	tmr_idx = ice_get_ptp_src_clock_index(hw);
 	cmd_val = tmr_idx << SEL_PHY_SRC;
 	switch (cmd) {
-	case INIT_TIME:
+	case ICE_PTP_INIT_TIME:
 		cmd_val |= PHY_CMD_INIT_TIME;
 		break;
-	case INIT_INCVAL:
+	case ICE_PTP_INIT_INCVAL:
 		cmd_val |= PHY_CMD_INIT_INCVAL;
 		break;
-	case ADJ_TIME:
+	case ICE_PTP_ADJ_TIME:
 		cmd_val |= PHY_CMD_ADJ_TIME;
 		break;
-	case READ_TIME:
+	case ICE_PTP_READ_TIME:
 		cmd_val |= PHY_CMD_READ_TIME;
 		break;
-	case ADJ_TIME_AT_TIME:
+	case ICE_PTP_ADJ_TIME_AT_TIME:
 		cmd_val |= PHY_CMD_ADJ_TIME_AT_TIME;
 		break;
 	case ICE_PTP_NOP:
@@ -2196,8 +2196,8 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
  * @phy_time: on return, the 64bit PHY timer value
  * @phc_time: on return, the lower 64bits of PHC time
  *
- * Issue a READ_TIME timer command to simultaneously capture the PHY and PHC
- * timer values.
+ * Issue a ICE_PTP_READ_TIME timer command to simultaneously capture the PHY
+ * and PHC timer values.
  */
 static int
 ice_read_phy_and_phc_time_e822(struct ice_hw *hw, u8 port, u64 *phy_time,
@@ -2210,15 +2210,14 @@ ice_read_phy_and_phc_time_e822(struct ice_hw *hw, u8 port, u64 *phy_time,
 
 	tmr_idx = ice_get_ptp_src_clock_index(hw);
 
-	/* Prepare the PHC timer for a READ_TIME capture command */
-	ice_ptp_src_cmd(hw, READ_TIME);
+	/* Prepare the PHC timer for a ICE_PTP_READ_TIME capture command */
+	ice_ptp_src_cmd(hw, ICE_PTP_READ_TIME);
 
-	/* Prepare the PHY timer for a READ_TIME capture command */
-	err = ice_ptp_one_port_cmd(hw, port, READ_TIME);
+	/* Prepare the PHY timer for a ICE_PTP_READ_TIME capture command */
+	err = ice_ptp_one_port_cmd(hw, port, ICE_PTP_READ_TIME);
 	if (err)
-		return err;
 
-	/* Issue the sync to start the READ_TIME capture */
+	/* Issue the sync to start the ICE_PTP_READ_TIME capture */
 	ice_ptp_exec_tmr_cmd(hw);
 
 	/* Read the captured PHC time from the shadow time registers */
@@ -2252,10 +2251,11 @@ ice_read_phy_and_phc_time_e822(struct ice_hw *hw, u8 port, u64 *phy_time,
  * @port: the PHY port to synchronize
  *
  * Perform an adjustment to ensure that the PHY and PHC timers are in sync.
- * This is done by issuing a READ_TIME command which triggers a simultaneous
- * read of the PHY timer and PHC timer. Then we use the difference to
- * calculate an appropriate 2s complement addition to add to the PHY timer in
- * order to ensure it reads the same value as the primary PHC timer.
+ * This is done by issuing a ICE_PTP_READ_TIME command which triggers a
+ * simultaneous read of the PHY timer and PHC timer. Then we use the
+ * difference to calculate an appropriate 2s complement addition to add
+ * to the PHY timer in order to ensure it reads the same value as the
+ * primary PHC timer.
  */
 static int ice_sync_phy_timer_e822(struct ice_hw *hw, u8 port)
 {
@@ -2285,7 +2285,7 @@ static int ice_sync_phy_timer_e822(struct ice_hw *hw, u8 port)
 	if (err)
 		goto err_unlock;
 
-	err = ice_ptp_one_port_cmd(hw, port, ADJ_TIME);
+	err = ice_ptp_one_port_cmd(hw, port, ICE_PTP_ADJ_TIME);
 	if (err)
 		goto err_unlock;
 
@@ -2408,7 +2408,7 @@ int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
 	if (err)
 		return err;
 
-	err = ice_ptp_one_port_cmd(hw, port, INIT_INCVAL);
+	err = ice_ptp_one_port_cmd(hw, port, ICE_PTP_INIT_INCVAL);
 	if (err)
 		return err;
 
@@ -2436,7 +2436,7 @@ int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
 	if (err)
 		return err;
 
-	err = ice_ptp_one_port_cmd(hw, port, INIT_INCVAL);
+	err = ice_ptp_one_port_cmd(hw, port, ICE_PTP_INIT_INCVAL);
 	if (err)
 		return err;
 
@@ -2757,7 +2757,7 @@ static int ice_ptp_init_phc_e810(struct ice_hw *hw)
  *
  * Program the PHY port ETH_GLTSYN_SHTIME registers in preparation setting the
  * initial clock time. The time will not actually be programmed until the
- * driver issues an INIT_TIME command.
+ * driver issues an ICE_PTP_INIT_TIME command.
  *
  * The time value is the upper 32 bits of the PHY timer, usually in units of
  * nominal nanoseconds.
@@ -2792,7 +2792,7 @@ static int ice_ptp_prep_phy_time_e810(struct ice_hw *hw, u32 time)
  *
  * Prepare the PHY port for an atomic adjustment by programming the PHY
  * ETH_GLTSYN_SHADJ_L and ETH_GLTSYN_SHADJ_H registers. The actual adjustment
- * is completed by issuing an ADJ_TIME sync command.
+ * is completed by issuing an ICE_PTP_ADJ_TIME sync command.
  *
  * The adjustment value only contains the portion used for the upper 32bits of
  * the PHY timer, usually in units of nominal nanoseconds. Negative
@@ -2832,7 +2832,7 @@ static int ice_ptp_prep_phy_adj_e810(struct ice_hw *hw, s32 adj)
  *
  * Prepare the PHY port for a new increment value by programming the PHY
  * ETH_GLTSYN_SHADJ_L and ETH_GLTSYN_SHADJ_H registers. The actual change is
- * completed by issuing an INIT_INCVAL command.
+ * completed by issuing an ICE_PTP_INIT_INCVAL command.
  */
 static int ice_ptp_prep_phy_incval_e810(struct ice_hw *hw, u64 incval)
 {
@@ -2875,19 +2875,19 @@ static int ice_ptp_port_cmd_e810(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	int err;
 
 	switch (cmd) {
-	case INIT_TIME:
+	case ICE_PTP_INIT_TIME:
 		cmd_val = GLTSYN_CMD_INIT_TIME;
 		break;
-	case INIT_INCVAL:
+	case ICE_PTP_INIT_INCVAL:
 		cmd_val = GLTSYN_CMD_INIT_INCVAL;
 		break;
-	case ADJ_TIME:
+	case ICE_PTP_ADJ_TIME:
 		cmd_val = GLTSYN_CMD_ADJ_TIME;
 		break;
-	case READ_TIME:
+	case ICE_PTP_READ_TIME:
 		cmd_val = GLTSYN_CMD_READ_TIME;
 		break;
-	case ADJ_TIME_AT_TIME:
+	case ICE_PTP_ADJ_TIME_AT_TIME:
 		cmd_val = GLTSYN_CMD_ADJ_INIT_TIME;
 		break;
 	case ICE_PTP_NOP:
@@ -3040,7 +3040,7 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 	if (err)
 		return err;
 
-	return ice_ptp_tmr_cmd(hw, INIT_TIME);
+	return ice_ptp_tmr_cmd(hw, ICE_PTP_INIT_TIME);
 }
 
 /**
@@ -3053,8 +3053,8 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
  *
  * 1) Write the increment value to the source timer shadow registers
  * 2) Write the increment value to the PHY timer shadow registers
- * 3) Issue an INIT_INCVAL timer command to synchronously switch both the
- *    source and port timers to the new increment value at the next clock
+ * 3) Issue an ICE_PTP_INIT_INCVAL timer command to synchronously switch both
+ *    the source and port timers to the new increment value at the next clock
  *    cycle.
  */
 int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
@@ -3075,7 +3075,7 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 	if (err)
 		return err;
 
-	return ice_ptp_tmr_cmd(hw, INIT_INCVAL);
+	return ice_ptp_tmr_cmd(hw, ICE_PTP_INIT_INCVAL);
 }
 
 /**
@@ -3109,8 +3109,8 @@ int ice_ptp_write_incval_locked(struct ice_hw *hw, u64 incval)
  *
  * 1) Write the adjustment to the source timer shadow registers
  * 2) Write the adjustment to the PHY timer shadow registers
- * 3) Issue an ADJ_TIME timer command to synchronously apply the adjustment to
- *    both the source and port timers at the next clock cycle.
+ * 3) Issue an ICE_PTP_ADJ_TIME timer command to synchronously apply the
+ *    adjustment to both the source and port timers at the next clock cycle.
  */
 int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 {
@@ -3120,7 +3120,7 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
 	/* Write the desired clock adjustment into the GLTSYN_SHADJ register.
-	 * For an ADJ_TIME command, this set of registers represents the value
+	 * For an ICE_PTP_ADJ_TIME command, this set of registers represents the value
 	 * to add to the clock time. It supports subtraction by interpreting
 	 * the value as a 2's complement integer.
 	 */
@@ -3134,7 +3134,7 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	if (err)
 		return err;
 
-	return ice_ptp_tmr_cmd(hw, ADJ_TIME);
+	return ice_ptp_tmr_cmd(hw, ICE_PTP_ADJ_TIME);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 096685237ca6..63e80c5c77a6 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -5,11 +5,11 @@
 #define _ICE_PTP_HW_H_
 
 enum ice_ptp_tmr_cmd {
-	INIT_TIME,
-	INIT_INCVAL,
-	ADJ_TIME,
-	ADJ_TIME_AT_TIME,
-	READ_TIME,
+	ICE_PTP_INIT_TIME,
+	ICE_PTP_INIT_INCVAL,
+	ICE_PTP_ADJ_TIME,
+	ICE_PTP_ADJ_TIME_AT_TIME,
+	ICE_PTP_READ_TIME,
 	ICE_PTP_NOP,
 };
 
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

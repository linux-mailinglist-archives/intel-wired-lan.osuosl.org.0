Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1CB3B8B38
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jul 2021 02:27:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D90E41620;
	Thu,  1 Jul 2021 00:27:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BiMau5rkEdf7; Thu,  1 Jul 2021 00:27:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9359F415FF;
	Thu,  1 Jul 2021 00:27:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E22611BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 00:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 665F483BF1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 00:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qqIW_fy0rprA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jul 2021 00:27:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 69FF983BF0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 00:27:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="208270039"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="208270039"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 17:27:20 -0700
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="457448731"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 17:27:20 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 30 Jun 2021 17:27:07 -0700
Message-Id: <20210701002713.3486336-8-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210701002713.3486336-1-jacob.e.keller@intel.com>
References: <20210701002713.3486336-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next 07/13] ice: use 'int err' instead of
 'int status'
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_ptp_hw.c file introduced a bunch of uses of "int status" instead
of the more traditional "int err" or "int ret". These are actually
traditional Linux error codes (as opposed to the ice_status enumeration
values), so lets convert them all now to use "int err" for clarity. This
is likely an artifact of refactoring this code to minimize the use of
ice_status enumeration in preparation for removing it. We want to avoid
adding any new usages of the status enum.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 206 ++++++++++----------
 1 file changed, 103 insertions(+), 103 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3eca0e4eab0b..5dbd4d91dba1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -68,18 +68,18 @@ u8 ice_get_ptp_src_clock_index(struct ice_hw *hw)
 static int ice_read_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 *val)
 {
 	struct ice_sbq_msg_input msg = {0};
-	int status;
+	int err;
 
 	msg.msg_addr_low = lower_16_bits(addr);
 	msg.msg_addr_high = upper_16_bits(addr);
 	msg.opcode = ice_sbq_msg_rd;
 	msg.dest_dev = rmn_0;
 
-	status = ice_sbq_rw_reg(hw, &msg);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, status %d\n",
-			  status);
-		return status;
+	err = ice_sbq_rw_reg(hw, &msg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
+			  err);
+		return err;
 	}
 
 	*val = msg.data;
@@ -98,7 +98,7 @@ static int ice_read_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 *val)
 static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
 {
 	struct ice_sbq_msg_input msg = {0};
-	int status;
+	int err;
 
 	msg.msg_addr_low = lower_16_bits(addr);
 	msg.msg_addr_high = upper_16_bits(addr);
@@ -106,11 +106,11 @@ static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
 	msg.dest_dev = rmn_0;
 	msg.data = val;
 
-	status = ice_sbq_rw_reg(hw, &msg);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, status %d\n",
-			  status);
-		return status;
+	err = ice_sbq_rw_reg(hw, &msg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
+			  err);
+		return err;
 	}
 
 	return 0;
@@ -130,23 +130,23 @@ static int
 ice_read_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx, u64 *tstamp)
 {
 	u32 lo_addr, hi_addr, lo, hi;
-	int status;
+	int err;
 
 	lo_addr = TS_EXT(LOW_TX_MEMORY_BANK_START, lport, idx);
 	hi_addr = TS_EXT(HIGH_TX_MEMORY_BANK_START, lport, idx);
 
-	status = ice_read_phy_reg_e810(hw, lo_addr, &lo);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read low PTP timestamp register, status %d\n",
-			  status);
-		return status;
+	err = ice_read_phy_reg_e810(hw, lo_addr, &lo);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read low PTP timestamp register, err %d\n",
+			  err);
+		return err;
 	}
 
-	status = ice_read_phy_reg_e810(hw, hi_addr, &hi);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read high PTP timestamp register, status %d\n",
-			  status);
-		return status;
+	err = ice_read_phy_reg_e810(hw, hi_addr, &hi);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read high PTP timestamp register, err %d\n",
+			  err);
+		return err;
 	}
 
 	/* For E810 devices, the timestamp is reported with the lower 32 bits
@@ -169,23 +169,23 @@ ice_read_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx, u64 *tstamp)
 static int ice_clear_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx)
 {
 	u32 lo_addr, hi_addr;
-	int status;
+	int err;
 
 	lo_addr = TS_EXT(LOW_TX_MEMORY_BANK_START, lport, idx);
 	hi_addr = TS_EXT(HIGH_TX_MEMORY_BANK_START, lport, idx);
 
-	status = ice_write_phy_reg_e810(hw, lo_addr, 0);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to clear low PTP timestamp register, status %d\n",
-			  status);
-		return status;
+	err = ice_write_phy_reg_e810(hw, lo_addr, 0);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to clear low PTP timestamp register, err %d\n",
+			  err);
+		return err;
 	}
 
-	status = ice_write_phy_reg_e810(hw, hi_addr, 0);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to clear high PTP timestamp register, status %d\n",
-			  status);
-		return status;
+	err = ice_write_phy_reg_e810(hw, hi_addr, 0);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to clear high PTP timestamp register, err %d\n",
+			  err);
+		return err;
 	}
 
 	return 0;
@@ -200,17 +200,17 @@ static int ice_clear_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx)
  */
 int ice_ptp_init_phy_e810(struct ice_hw *hw)
 {
-	int status;
 	u8 tmr_idx;
+	int err;
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
-	status = ice_write_phy_reg_e810(hw, ETH_GLTSYN_ENA(tmr_idx),
-					GLTSYN_ENA_TSYN_ENA_M);
-	if (status)
+	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_ENA(tmr_idx),
+				     GLTSYN_ENA_TSYN_ENA_M);
+	if (err)
 		ice_debug(hw, ICE_DBG_PTP, "PTP failed in ena_phy_time_syn %d\n",
-			  status);
+			  err);
 
-	return status;
+	return err;
 }
 
 /**
@@ -227,22 +227,22 @@ int ice_ptp_init_phy_e810(struct ice_hw *hw)
  */
 static int ice_ptp_prep_phy_time_e810(struct ice_hw *hw, u32 time)
 {
-	int status;
 	u8 tmr_idx;
+	int err;
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
-	status = ice_write_phy_reg_e810(hw, ETH_GLTSYN_SHTIME_0(tmr_idx), 0);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write SHTIME_0, status %d\n",
-			  status);
-		return status;
+	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_SHTIME_0(tmr_idx), 0);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write SHTIME_0, err %d\n",
+			  err);
+		return err;
 	}
 
-	status = ice_write_phy_reg_e810(hw, ETH_GLTSYN_SHTIME_L(tmr_idx), time);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write SHTIME_L, status %d\n",
-			  status);
-		return status;
+	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_SHTIME_L(tmr_idx), time);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write SHTIME_L, err %d\n",
+			  err);
+		return err;
 	}
 
 	return 0;
@@ -263,26 +263,26 @@ static int ice_ptp_prep_phy_time_e810(struct ice_hw *hw, u32 time)
  */
 static int ice_ptp_prep_phy_adj_e810(struct ice_hw *hw, s32 adj)
 {
-	int status;
 	u8 tmr_idx;
+	int err;
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
 	/* Adjustments are represented as signed 2's complement values in
 	 * nanoseconds. Sub-nanosecond adjustment is not supported.
 	 */
-	status = ice_write_phy_reg_e810(hw, ETH_GLTSYN_SHADJ_L(tmr_idx), 0);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write adj to PHY SHADJ_L, status %d\n",
-			  status);
-		return status;
+	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_SHADJ_L(tmr_idx), 0);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write adj to PHY SHADJ_L, err %d\n",
+			  err);
+		return err;
 	}
 
-	status = ice_write_phy_reg_e810(hw, ETH_GLTSYN_SHADJ_H(tmr_idx), adj);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write adj to PHY SHADJ_H, status %d\n",
-			  status);
-		return status;
+	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_SHADJ_H(tmr_idx), adj);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write adj to PHY SHADJ_H, err %d\n",
+			  err);
+		return err;
 	}
 
 	return 0;
@@ -300,25 +300,25 @@ static int ice_ptp_prep_phy_adj_e810(struct ice_hw *hw, s32 adj)
 static int ice_ptp_prep_phy_incval_e810(struct ice_hw *hw, u64 incval)
 {
 	u32 high, low;
-	int status;
 	u8 tmr_idx;
+	int err;
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 	low = lower_32_bits(incval);
 	high = upper_32_bits(incval);
 
-	status = ice_write_phy_reg_e810(hw, ETH_GLTSYN_SHADJ_L(tmr_idx), low);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write incval to PHY SHADJ_L, status %d\n",
-			  status);
-		return status;
+	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_SHADJ_L(tmr_idx), low);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write incval to PHY SHADJ_L, err %d\n",
+			  err);
+		return err;
 	}
 
-	status = ice_write_phy_reg_e810(hw, ETH_GLTSYN_SHADJ_H(tmr_idx), high);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write incval PHY SHADJ_H, status %d\n",
-			  status);
-		return status;
+	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_SHADJ_H(tmr_idx), high);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write incval PHY SHADJ_H, err %d\n",
+			  err);
+		return err;
 	}
 
 	return 0;
@@ -335,7 +335,7 @@ static int ice_ptp_prep_phy_incval_e810(struct ice_hw *hw, u64 incval)
 static int ice_ptp_port_cmd_e810(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 {
 	u32 cmd_val, val;
-	int status;
+	int err;
 
 	switch (cmd) {
 	case INIT_TIME:
@@ -356,20 +356,20 @@ static int ice_ptp_port_cmd_e810(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	}
 
 	/* Read, modify, write */
-	status = ice_read_phy_reg_e810(hw, ETH_GLTSYN_CMD, &val);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read GLTSYN_CMD, status %d\n", status);
-		return status;
+	err = ice_read_phy_reg_e810(hw, ETH_GLTSYN_CMD, &val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read GLTSYN_CMD, err %d\n", err);
+		return err;
 	}
 
 	/* Modify necessary bits only and perform write */
 	val &= ~TS_CMD_MASK_E810;
 	val |= cmd_val;
 
-	status = ice_write_phy_reg_e810(hw, ETH_GLTSYN_CMD, val);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write back GLTSYN_CMD, status %d\n", status);
-		return status;
+	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_CMD, val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write back GLTSYN_CMD, err %d\n", err);
+		return err;
 	}
 
 	return 0;
@@ -480,17 +480,17 @@ static void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
  */
 static int ice_ptp_tmr_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 {
-	int status;
+	int err;
 
 	/* First, prepare the source timer */
 	ice_ptp_src_cmd(hw, cmd);
 
 	/* Next, prepare the ports */
-	status = ice_ptp_port_cmd_e810(hw, cmd);
-	if (status) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY ports for timer command %u, status %d\n",
-			  cmd, status);
-		return status;
+	err = ice_ptp_port_cmd_e810(hw, cmd);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY ports for timer command %u, err %d\n",
+			  cmd, err);
+		return err;
 	}
 
 	/* Write the sync command register to drive both source and PHY timer commands
@@ -516,8 +516,8 @@ static int ice_ptp_tmr_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
  */
 int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 {
-	int status;
 	u8 tmr_idx;
+	int err;
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
@@ -528,9 +528,9 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 
 	/* PHY timers */
 	/* Fill Rx and Tx ports and send msg to PHY */
-	status = ice_ptp_prep_phy_time_e810(hw, time & 0xFFFFFFFF);
-	if (status)
-		return status;
+	err = ice_ptp_prep_phy_time_e810(hw, time & 0xFFFFFFFF);
+	if (err)
+		return err;
 
 	return ice_ptp_tmr_cmd(hw, INIT_TIME);
 }
@@ -551,8 +551,8 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
  */
 int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 {
-	int status;
 	u8 tmr_idx;
+	int err;
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
@@ -560,9 +560,9 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), lower_32_bits(incval));
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), upper_32_bits(incval));
 
-	status = ice_ptp_prep_phy_incval_e810(hw, incval);
-	if (status)
-		return status;
+	err = ice_ptp_prep_phy_incval_e810(hw, incval);
+	if (err)
+		return err;
 
 	return ice_ptp_tmr_cmd(hw, INIT_INCVAL);
 }
@@ -576,16 +576,16 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
  */
 int ice_ptp_write_incval_locked(struct ice_hw *hw, u64 incval)
 {
-	int status;
+	int err;
 
 	if (!ice_ptp_lock(hw))
 		return -EBUSY;
 
-	status = ice_ptp_write_incval(hw, incval);
+	err = ice_ptp_write_incval(hw, incval);
 
 	ice_ptp_unlock(hw);
 
-	return status;
+	return err;
 }
 
 /**
@@ -603,8 +603,8 @@ int ice_ptp_write_incval_locked(struct ice_hw *hw, u64 incval)
  */
 int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 {
-	int status;
 	u8 tmr_idx;
+	int err;
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
@@ -616,9 +616,9 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), 0);
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), adj);
 
-	status = ice_ptp_prep_phy_adj_e810(hw, adj);
-	if (status)
-		return status;
+	err = ice_ptp_prep_phy_adj_e810(hw, adj);
+	if (err)
+		return err;
 
 	return ice_ptp_tmr_cmd(hw, ADJ_TIME);
 }
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
